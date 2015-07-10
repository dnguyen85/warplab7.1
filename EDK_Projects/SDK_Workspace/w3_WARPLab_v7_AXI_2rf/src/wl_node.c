////////////////////////////////////////////////////////////////////////////////
// File   :	wl_node.c
// Authors:	Chris Hunter (chunter [at] mangocomm.com)
//			Patrick Murphy (murphpo [at] mangocomm.com)
//          Erik Welsh (welsh [at] mangocomm.com)
// License:	Copyright 2013, Mango Communications. All rights reserved.
//			Distributed under the WARP license  (http://warpproject.org/license)
////////////////////////////////////////////////////////////////////////////////

#include "include/wl_node.h"
#include "include/wl_baseband.h"
#include "include/wl_interface.h"
#include "include/wl_transport.h"
#include "include/wl_common.h"
#include "include/wl_user.h"
#include "include/wl_trigger_manager.h"

#include <xparameters.h>
#include <stdlib.h>
#include <stdio.h>
#include <Xio.h>
#include <xtmrctr.h>

#ifdef WARP_HW_VER_v3
#include <w3_userio.h>
#include <w3_clock_controller.h>
#include <w3_iic_eeprom.h>
#include <xil_cache.h>
#include <xaxicdma.h>
#include "xsysmon_hw.h"

XAxiCdma cdma_inst;
#endif

#ifdef WARP_HW_VER_v2
#include "warp_v4_userio.h"
#endif

u16 node;
u8 hw_generation;
u8 numRadios;

#define DEBUG_LVL 0

void node_rxFromTransport(wl_host_message* toNode, wl_host_message* fromNode, void* pktSrc){
	unsigned char cmd_grp;

	unsigned int respSent;

	//Helper struct pointers to interpret the received packet contents
	wl_cmdHdr* cmdHdr;
	void * cmdArgs;

	//Helper struct pointers to form a response packet
	wl_respHdr* respHdr;
	void * respArgs;

	cmdHdr = (wl_cmdHdr*)(toNode->payload);
	cmdArgs = (toNode->payload) + sizeof(wl_cmdHdr);

	//Endian swap the command header (this is the first place we know what/where it is)
	cmdHdr->cmd = Xil_Ntohl(cmdHdr->cmd);
	cmdHdr->length = Xil_Ntohs(cmdHdr->length);
	cmdHdr->numArgs = Xil_Ntohs(cmdHdr->numArgs);

	//Outgoing response header must be endian swapped as it's filled in
	respHdr = (wl_respHdr*)(fromNode->payload);
	respArgs = (fromNode->payload) + sizeof(wl_cmdHdr);

	cmd_grp = WL_CMD_TO_GRP(cmdHdr->cmd);
	switch(cmd_grp){
		case NODE_GRP:
			respSent = node_processCmd(cmdHdr,cmdArgs,respHdr,respArgs, pktSrc);
		break;
		case TRANS_GRP:
			respSent = transport_processCmd(cmdHdr,cmdArgs,respHdr,respArgs, pktSrc);
		break;
		case IFC_GRP:
			respSent = ifc_processCmd(cmdHdr,cmdArgs,respHdr,respArgs, pktSrc);
		break;
		case BB_GRP:
			respSent = baseband_processCmd(cmdHdr,cmdArgs,respHdr,respArgs, pktSrc);
		break;
		case TRIGMNGR_GRP:
			respSent = trigmngr_processCmd(cmdHdr,cmdArgs,respHdr,respArgs, pktSrc);
		break;
		case USER_GRP:
			respSent = user_processCmd(cmdHdr,cmdArgs,respHdr,respArgs, pktSrc);
		break;
		default:
			xil_printf("Unknown command group\n");
		break;
	}

	if(respSent == NO_RESP_SENT)	fromNode->length += (respHdr->length + sizeof(wl_cmdHdr));


	//Endian swap the response header before returning
	// Do it here so the transport sender doesn't have to understand any payload contents
	respHdr->cmd = Xil_Ntohl(respHdr->cmd);
	respHdr->length = Xil_Ntohs(respHdr->length);
	respHdr->numArgs = Xil_Ntohs(respHdr->numArgs);

	return;
}

void node_sendEarlyResp(wl_respHdr* respHdr, void* pktSrc){
	/* This function is used to send multiple command responses back to the host
	 * under the broader umbrella of a single command exchange. The best example
	 * of this functionality is a 'readIQ' command where a single packet from
	 * the host results in many response packets returning from the board.
	 *
	 * A key assumption in the use of this function is that the underlying command
	 * from the host does not raise the transport-level ACK flag in the transport
	 * header. Furthermore, this function exploits the fact that wl_node can determine
	 * the beginning of the overall send buffer from the location of the response to
	 * be sent.
	 */

	 wl_host_message nodeResp;

	 nodeResp.payload = (void*) respHdr;
	 nodeResp.buffer = (void*) respHdr - sizeof(wl_transport_header);
	 nodeResp.length = PAYLOAD_PAD_NBYTES + respHdr->length + sizeof(wl_cmdHdr); //Extra 2 bytes is for alignment

	//Endian swap the response header before before transport sends it
	// Do it here so the transport sender doesn't have to understand any payload contents
	respHdr->cmd = Xil_Ntohl(respHdr->cmd);
	respHdr->length = Xil_Ntohs(respHdr->length);
	respHdr->numArgs = Xil_Ntohs(respHdr->numArgs);

	// xil_printf("sendEarlyResp\n");
	// xil_printf("payloadAddr = 0x%x, bufferAddr = 0x%x, len = %d\n",nodeResp.payload,nodeResp.buffer,nodeResp.length);

	 transport_send(&nodeResp, pktSrc);

}

int node_processCmd(const wl_cmdHdr* cmdHdr,const void* cmdArgs, wl_respHdr* respHdr,void* respArgs, void* pktSrc){
	//IMPORTANT ENDIAN NOTES:
	// -cmdHdr is safe to access directly (pre-swapped if needed)
	// -cmdArgs is *not* pre-swapped, since the framework doesn't know what it is
	// -respHdr will be swapped by the framework; user code should fill it normally
	// -respArgs will *not* be swapped by the framework, since only user code knows what it is
	//    Any data added to respArgs by the code below must be endian-safe (swapped on AXI hardware)
	const u32 *cmdArgs32 = cmdArgs;
	u32 *respArgs32 = respArgs;

	unsigned int respIndex = 0;
	unsigned int respSent = NO_RESP_SENT;

	unsigned int cmdID;
	int status = 0;
	int numblinks;
	cmdID = WL_CMD_TO_CMDID(cmdHdr->cmd);
	extern u8 node_hw_addr[6];
	extern u8 node_ip_addr[4];
    
	respHdr->cmd = cmdHdr->cmd;
	respHdr->length = 0;
	respHdr->numArgs = 0;

	switch(cmdID){
		case NODE_INITIALIZE_CMDID:
		#ifdef WARP_HW_VER_v3
			userio_write_hexdisp_right(USERIO_BASEADDR, (userio_read_hexdisp_right( USERIO_BASEADDR ) | W3_USERIO_HEXDISP_DP ) );
		#endif
		//#ifdef WARP_HW_VER_v2
		//	WarpV4_UserIO_WriteNumber_MiddleHex(USERIO_BASEADDR, (node+1)%10, 0);
		//#endif

			status = global_initialize();
			if(status != 0) {
				xil_printf("Error initializing...\n");
				return respSent;
			}
		break;

		case NODE_INFO:

#ifdef WARP_HW_VER_v3
			respArgs32[respIndex++] = Xil_Htonl(w3_eeprom_readSerialNum(EEPROM_BASEADDR));
			respArgs32[respIndex++] = Xil_Htonl(userio_read_fpga_dna_msb(USERIO_BASEADDR));
			respArgs32[respIndex++] = Xil_Htonl(userio_read_fpga_dna_lsb(USERIO_BASEADDR));
#else
			respIndex = respIndex + 3;
#endif
			respArgs32[respIndex++] = Xil_Htonl( (node_hw_addr[0]<<8) | node_hw_addr[1] );
			respArgs32[respIndex++] = Xil_Htonl( (node_hw_addr[2]<<24) | (node_hw_addr[3]<<16) | (node_hw_addr[4]<<8) | node_hw_addr[5] );
			respArgs32[respIndex++] = Xil_Htonl((hw_generation<<24)|(WARPLAB_VER_MAJOR<<16)|(WARPLAB_VER_MINOR<<8)|(WARPLAB_VER_REV));
			respArgs32[respIndex++] = Xil_Htonl(warplab_buffers_ReadReg_BuffSizes());
			respArgs32[respIndex++] = Xil_Htonl(trigger_proc_CoreInfo_Read());
			respArgs32[respIndex++] = Xil_Htonl(1);//num_interfaceGroups

			#if WARPLAB_CONFIG_4RF
				respArgs32[respIndex++] = Xil_Htonl(4);//num_interfaces
			#else
				respArgs32[respIndex++] = Xil_Htonl(2);//num_interfaces
			#endif

			respHdr->length += (respIndex * sizeof(respArgs32));
			respHdr->numArgs = respIndex;

		break;

		case NODE_IDENTIFY:
			//Send the response early so that M-Code does not hang waiting for the node to stop blinking
			node_sendEarlyResp(respHdr, pktSrc);
			respSent = RESP_SENT;

#ifdef WARP_HW_VER_v3
			userio_write_leds_green(USERIO_BASEADDR,0x0);
			userio_write_leds_red(USERIO_BASEADDR,0xF);
			for(numblinks=0;numblinks<10;numblinks++){
				userio_toggle_leds_red(USERIO_BASEADDR,0xF);
				userio_toggle_leds_green(USERIO_BASEADDR,0xF);
				usleep(100000);
			}
			userio_write_leds_red(USERIO_BASEADDR,0x0);
			userio_write_leds_green(USERIO_BASEADDR,0x0);
#endif

#ifdef WARP_HW_VER_v2
			WarpV4_UserIO_Leds(USERIO_BASEADDR, 0xF0);
			for(numblinks=0;numblinks<10;numblinks+=2){
				WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x0F);
				usleep(100000);
				WarpV4_UserIO_Leds(USERIO_BASEADDR, 0xF0);
				usleep(100000);
			}
			WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x00);
#endif

		break;

		case NODE_TEMPERATURE:
#ifdef WARP_HW_VER_v3
			respArgs32[respIndex++] = Xil_Htonl(XSysMon_ReadReg(SYSMON_BASEADDR, XSM_TEMP_OFFSET));
			respArgs32[respIndex++] = Xil_Htonl(XSysMon_ReadReg(SYSMON_BASEADDR, XSM_MIN_TEMP_OFFSET));
			respArgs32[respIndex++] = Xil_Htonl(XSysMon_ReadReg(SYSMON_BASEADDR, XSM_MAX_TEMP_OFFSET));
#else
			respArgs32[respIndex++] = 0;
			respArgs32[respIndex++] = 0;
			respArgs32[respIndex++] = 0;
#endif
			respHdr->length += (respIndex * sizeof(respArgs32));
			respHdr->numArgs = respIndex;

		break;

		case NODE_CONFIG_SETUP:
            // NODE_CONFIG_SETUP Packet Format:
            //   - Note:  All u32 parameters in cmdArgs32 are byte swapped so use Xil_Ntohl()
            //
            //   - cmdArgs32[0] - Serial Number
            //   - cmdArgs32[1] - Node ID
            //   - cmdArgs32[2] - IP Address
            // 
			#ifdef WARP_HW_VER_v3
            if ( node == 0xFFFF ) {
                // Only update the parameters if the serial numbers match
                if ( w3_eeprom_readSerialNum(EEPROM_BASEADDR) ==  Xil_Ntohl(cmdArgs32[0]) ) {

                    node = Xil_Ntohl(cmdArgs32[1]) & 0xFFFF;

                    xil_printf("  New Node ID   : %d \n", node);
                    userio_write_control( USERIO_BASEADDR, ( userio_read_control( USERIO_BASEADDR ) | ( W3_USERIO_HEXDISP_L_MAPMODE | W3_USERIO_HEXDISP_R_MAPMODE ) ) );
                    userio_write_hexdisp_left(USERIO_BASEADDR, (node / 10) );
		            userio_write_hexdisp_right(USERIO_BASEADDR, (node % 10) );
                    
                    // Grab IP ad
                    node_ip_addr[0] = (Xil_Ntohl(cmdArgs32[2])>>24)&0xFF;
                    node_ip_addr[1] = (Xil_Ntohl(cmdArgs32[2])>>16)&0xFF;
                    node_ip_addr[2] = (Xil_Ntohl(cmdArgs32[2])>>8)&0xFF;
                    node_ip_addr[3] = (Xil_Ntohl(cmdArgs32[2]))&0xFF;

                    xil_printf("  New IP Address: %d.%d.%d.%d \n", node_ip_addr[0], node_ip_addr[1],node_ip_addr[2],node_ip_addr[3]);

                    status = transport_config_sockets();

                    if(status != 0) {
        				xil_printf("Error binding transport...\n");
        			}

                } else {
                    xil_printf("NODE_IP_SETUP Packet with Serial Number %d ignored.  My serial number is %d \n", Xil_Ntohl(cmdArgs32[0]), w3_eeprom_readSerialNum(EEPROM_BASEADDR));            
                }
            }
			#endif
		break;

		case NODE_CONFIG_RESET:
            // NODE_CONFIG_RESET Packet Format:
            //   - Note:  All u32 parameters in cmdArgs32 are byte swapped so use Xil_Ntohl()
            //
            //   - cmdArgs32[0] - Serial Number
            // 
			#ifdef WARP_HW_VER_v3
            // Send the response early so that M-Code does not hang when IP address changes
			node_sendEarlyResp(respHdr, pktSrc);
			respSent = RESP_SENT;
            
            // Only update the parameters if the serial numbers match
            if ( w3_eeprom_readSerialNum(EEPROM_BASEADDR) ==  Xil_Ntohl(cmdArgs32[0]) ) {

                // Reset node to 0xFFFF
                node = 0xFFFF;

                xil_printf("\n!!! Reseting Network Configuration !!! \n\n");        
                
                // Reset transport;  This will update the IP Address back to default and rebind the sockets
                transport_config_info();
                transport_config_sockets();

                // Update User IO
                xil_printf("\n!!! Waiting for Network Configuration via Matlab !!! \n\n");        
        
                // Turn off hex mapping; set the center LED
                // NOTE:  hex mapping will be re-enabled when the bcast packet is processed to set the node ID
                userio_write_control( USERIO_BASEADDR, ( userio_read_control( USERIO_BASEADDR ) & ( ~( W3_USERIO_HEXDISP_L_MAPMODE | W3_USERIO_HEXDISP_R_MAPMODE ) ) ) );
		        userio_write_hexdisp_left(USERIO_BASEADDR, 0x40);
		        userio_write_hexdisp_right(USERIO_BASEADDR, 0x40);
            
            } else {
                xil_printf("NODE_IP_RESET Packet with Serial Number %d ignored.  My serial number is %d \n", Xil_Ntohl(cmdArgs32[0]), w3_eeprom_readSerialNum(EEPROM_BASEADDR));            
            }
			#endif

		break;

		default:
			xil_printf("Unknown node command: %d\n", cmdID);
		break;
	}

	return respSent;
}

#ifdef WARP_HW_VER_v3
int node_init(){
	int status = 0;
	u8 CMswitch;
	u32 RegValue;

	microblaze_enable_exceptions();
	Xil_DCacheDisable();
	Xil_ICacheDisable();

	wl_timer_initialize();
	wl_gpio_debug_initialize();

	//Initialize the system monitor
	/*
	 * Reset the device.
	 */
	XSysMon_WriteReg(SYSMON_BASEADDR, XSM_SRR_OFFSET, XSM_SRR_IPRST_MASK);

	/*
	 * Disable the Channel Sequencer before configuring the Sequence
	 * registers.
	 */
	RegValue = XSysMon_ReadReg(SYSMON_BASEADDR, XSM_CFR1_OFFSET) &
			(~ XSM_CFR1_SEQ_VALID_MASK);
	XSysMon_WriteReg(SYSMON_BASEADDR, XSM_CFR1_OFFSET,	RegValue |
				XSM_CFR1_SEQ_SINGCHAN_MASK);
	/*
	 * Setup the Averaging to be done for the channels in the
	 * Configuration 0 register as 16 samples:
	 */
	RegValue = XSysMon_ReadReg(SYSMON_BASEADDR,
				XSM_CFR0_OFFSET) & (~XSM_CFR0_AVG_VALID_MASK);
	XSysMon_WriteReg(SYSMON_BASEADDR, XSM_CFR0_OFFSET,
				RegValue | XSM_CFR0_AVG16_MASK);
	/*
	 * Enable the averaging on the following channels in the Sequencer
	 * registers:
	 * 	- On-chip Temperature
	 * 	- On-chip VCCAUX supply sensor
	 */
	XSysMon_WriteReg(SYSMON_BASEADDR,XSM_SEQ02_OFFSET,
				XSM_SEQ_CH_TEMP | XSM_SEQ_CH_VCCAUX);

	/*
	 * Enable the following channels in the Sequencer registers:
	 * 	- On-chip Temperature
	 * 	- On-chip VCCAUX supply sensor
	 */
	XSysMon_WriteReg(SYSMON_BASEADDR, XSM_SEQ00_OFFSET,
				XSM_SEQ_CH_TEMP | XSM_SEQ_CH_VCCAUX);

	/*
	 * Set the ADCCLK frequency equal to 1/32 of System clock for the System
	 * Monitor/ADC in the Configuration Register 2.
	 */
	XSysMon_WriteReg(SYSMON_BASEADDR, XSM_CFR2_OFFSET, 32 <<
					XSM_CFR2_CD_SHIFT);
	/*
	 * Enable the Channel Sequencer in continuous sequencer cycling mode.
	 */
	RegValue = XSysMon_ReadReg(SYSMON_BASEADDR, XSM_CFR1_OFFSET) &
			(~ XSM_CFR1_SEQ_VALID_MASK);
	XSysMon_WriteReg(SYSMON_BASEADDR, XSM_CFR1_OFFSET,	RegValue |
				XSM_CFR1_SEQ_CONTINPASS_MASK);


	/*
	 * Wait till the End of Sequence occurs
	 */
	XSysMon_ReadReg(SYSMON_BASEADDR, XSM_SR_OFFSET); /* Clear the old status */
	while (((XSysMon_ReadReg(SYSMON_BASEADDR, XSM_SR_OFFSET)) &
			XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK);

	//Initialize the central DMA (CDMA) driver
	XAxiCdma_Config *cdma_cfg_ptr;
	cdma_cfg_ptr = XAxiCdma_LookupConfig(XPAR_AXI_CDMA_0_DEVICE_ID);
	status = XAxiCdma_CfgInitialize(&cdma_inst, cdma_cfg_ptr, cdma_cfg_ptr->BaseAddress);
	if (status != XST_SUCCESS) {
		xil_printf("Error initializing CDMA: %d\n", status);
		return 1;
	}
	XAxiCdma_IntrDisable(&cdma_inst, XAXICDMA_XR_IRQ_ALL_MASK);

	//Initialize the AD9512 clock buffers (RF reference and sampling clocks)
	CMswitch = clk_config_read_clkmod_status(CLK_BASEADDR);
	status = clk_init(CLK_BASEADDR, 2);
	if(status != 0) {
		xil_printf("node_init: Error in clk_init (%d)\n", status);
		return 1;
	}

	//Set divider to 2 (for 40MHz clock) to RF A/B AD9963's
	clk_config_dividers(CLK_BASEADDR, 2, (CLK_SAMP_OUTSEL_AD_RFA | CLK_SAMP_OUTSEL_AD_RFB));

	//Configure this node's clock inputs and outputs, based on the state of the CM-MMCX switch
	// If no CM-MMCX is present, CMswitch will read as 0x3 (on-board clock sources, off-board outputs disabled)
	switch(CMswitch){
				  // RF 		|	 Sample			|	Outputs
		case 0x0: // Off-Board	| 	 Off-Board		|	Off
			clk_config_outputs(CLK_BASEADDR, CLK_OUTPUT_OFF, (CLK_SAMP_OUTSEL_CLKMODHDR | CLK_RFREF_OUTSEL_CLKMODHDR));
			clk_config_input_rf_ref(CLK_BASEADDR, CLK_INSEL_CLKMOD);
			xil_printf("\nClock config %d:\n  RF: Off-board\n  Samp: Off-board\n  Off-board Outputs: Disabled\n\n", CMswitch);
		break;
		case 0x1: // Off-Board	| 	 On-Board		|	Off
			clk_config_outputs(CLK_BASEADDR, CLK_OUTPUT_OFF, (CLK_SAMP_OUTSEL_CLKMODHDR | CLK_RFREF_OUTSEL_CLKMODHDR));
			clk_config_input_rf_ref(CLK_BASEADDR, CLK_INSEL_CLKMOD);
			xil_printf("\nClock config %d:\n  RF: Off-board\n  Samp: On-board\n  Off-board Outputs: Disabled\n\n", CMswitch);
		break;
		case 0x2: // On-Board	| 	 On-Board		|	On
			clk_config_outputs(CLK_BASEADDR, CLK_OUTPUT_ON, (CLK_SAMP_OUTSEL_CLKMODHDR | CLK_RFREF_OUTSEL_CLKMODHDR));
			clk_config_dividers(CLK_BASEADDR, 1, CLK_SAMP_OUTSEL_CLKMODHDR | CLK_RFREF_OUTSEL_CLKMODHDR);
			clk_config_input_rf_ref(CLK_BASEADDR, CLK_INSEL_ONBOARD);
			xil_printf("\nClock config %d:\n  RF: On-board\n  Samp: On-board\n  Off-board Outputs: Enabled\n\n", CMswitch);
		break;
		case 0x3: // On-Board	| 	 On-Board		|	Off
			clk_config_outputs(CLK_BASEADDR, CLK_OUTPUT_OFF, (CLK_SAMP_OUTSEL_CLKMODHDR | CLK_RFREF_OUTSEL_CLKMODHDR));
			clk_config_input_rf_ref(CLK_BASEADDR, CLK_INSEL_ONBOARD);
			xil_printf("\nClock config %d:\n  RF: On-board\n  Samp: On-board\n  Off-board Outputs: Disabled\n\n", CMswitch);
		break;
	}

#if WARPLAB_CONFIG_4RF
	//Turn on clocks to FMC
	clk_config_outputs(CLK_BASEADDR, CLK_OUTPUT_ON, (CLK_SAMP_OUTSEL_FMC | CLK_RFREF_OUTSEL_FMC));

	//FMC samp clock divider = 2 (40MHz sampling reference, same as on-board AD9963 ref clk)
	clk_config_dividers(CLK_BASEADDR, 2, CLK_SAMP_OUTSEL_FMC);

	//FMC RF ref clock divider = 2 (40MHz RF reference, same as on-board MAX2829 ref clk)
	clk_config_dividers(CLK_BASEADDR, 2, CLK_RFREF_OUTSEL_FMC);
#endif

	//Initialize the EEPROM read/write core
	iic_eeprom_init(EEPROM_BASEADDR, 0x64);
	if(status != XST_SUCCESS) {
		xil_printf("w3_node_init: Error in IIC_EEPROM_init (%d)\n", status);
		return 1;
	}

	node = userio_read_inputs(USERIO_BASEADDR)&W3_USERIO_DIPSW;
        
    // If the node has dip switch value of 0xF, then set the node to 0xFFFF, ie -1
    if ( node == 0xF ) {
        node = 0xFFFF;
    } else {
        userio_write_hexdisp_left(USERIO_BASEADDR, ((node+1)/10) );
        userio_write_hexdisp_right(USERIO_BASEADDR, (node+1)%10);
    }
        
	hw_generation = 3;

	if(warplab_buffers_ReadReg_DesignVer() != REQ_HW_VER){
		xil_printf("w3_node_init: HW/SW Version Mismatch! Expected HW Ver: 0x%x -- Actual HW Ver: 0x%x\n\n",REQ_HW_VER,warplab_buffers_ReadReg_DesignVer());
		return 1;
	}

	return status; //Should be 0 if it gets here
}
#endif

#ifdef WARP_HW_VER_v2
int node_init(){
	int status = 0;

	wl_timer_initialize();
	wl_gpio_debug_initialize();

	WarpV4_UserIO_NumberMode_LeftHex(USERIO_BASEADDR);
	WarpV4_UserIO_NumberMode_MiddleHex(USERIO_BASEADDR);
	WarpV4_UserIO_NumberMode_RightHex(USERIO_BASEADDR);

	node = WarpV4_UserIO_DipSw(USERIO_BASEADDR);
	WarpV4_UserIO_WriteNumber_MiddleHex(USERIO_BASEADDR, (node+1)/10, 0);
	WarpV4_UserIO_WriteNumber_RightHex(USERIO_BASEADDR, (node+1)%10, 0);

	hw_generation = 2;

	if(warplab_buffers_ReadReg_DesignVer() != REQ_HW_VER){
		xil_printf("node_init: HW/SW Version Mismatch! Expected HW Ver: 0x%x -- Actual HW Ver: 0x%x\n\n",REQ_HW_VER,warplab_buffers_ReadReg_DesignVer());
		return 1;
	}

	return status; //Should be 0 if it gets here
}
#endif


int global_initialize(){
	//global_initialize is the subset of initialization commands that are safe
	//to execute multiple times when a user simply wants to reset stats on the board
	int status = 0;

	status = ifc_init();
	if(status != 0) {
		xil_printf("Error in ifc_init()! Exiting\n");
		return -1;
	}

	status = baseband_init();
	if(status != 0) {
		xil_printf("Error in baseband_init()! Exiting\n");
		return -1;
	}

	status = user_init();
	if(status != 0) {
		xil_printf("Error in user_init()! Exiting\n");
		return -1;
	}

	status = trigmngr_init();
	if(status != 0) {
		xil_printf("Error in trigmngr_init()! Exiting\n");
		return -1;
	}
	return status;
}

int main() {
	int status = 0;

	xil_printf("\fWARPLab v%d.%d.%d (compiled %s %s)\n", WARPLAB_VER_MAJOR, WARPLAB_VER_MINOR, WARPLAB_VER_REV, __DATE__, __TIME__);

	if(WARPLAB_CONFIG_4RF) {
#ifdef WARP_HW_VER_v3
		xil_printf("Configured for 4 RF Interfaces - FMC-RF-2X245 FMC module must be installed\n");
#endif
#ifdef WARP_HW_VER_v2
		xil_printf("Configured for 4 RF Interfaces - Radio Boards must be installed in all 4 daughtercard slots\n");
#endif
	} else {
#ifdef WARP_HW_VER_v3
		xil_printf("Configured for 2 RF Interfaces - Using WARP v3 on-board RF interfaces\n");
#endif
#ifdef WARP_HW_VER_v2
		xil_printf("Configured for 2 RF Interfaces - Radio Boards must be installed daughtercard slots 2 and 3\n");
#endif
	}

	status = node_init();
	if(status != 0) {
		xil_printf("Error in node_init()! Exiting\n");
		return -1;
	}

	status = global_initialize();
	if(status != 0) {
		xil_printf("Error initializing... quitting...\n");
#ifdef WARP_HW_VER_v3
		userio_write_leds_red(USERIO_BASEADDR,0x5);
		userio_write_hexdisp_left(USERIO_BASEADDR, 0xE);
		userio_write_hexdisp_right(USERIO_BASEADDR, status);

		while(1){
			userio_toggle_leds_red(USERIO_BASEADDR,0xF);
			usleep(250000);
		}
#endif

#ifdef WARP_HW_VER_v2
		WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x05);
		WarpV4_UserIO_WriteNumber_LeftHex(USERIO_BASEADDR, 0xE, 0);
		WarpV4_UserIO_WriteNumber_MiddleHex(USERIO_BASEADDR, status, 0);

		while(1){
			WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x0A);
			usleep(250000);
			WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x05);
			usleep(250000);
		}
#endif
}


	status = transport_init();
	if(status != 0) {
		xil_printf("Error in transport_init()! Exiting\n");
		return -1;
	}

	xil_printf("\nWaiting for Ethernet link...\n");
	while(transport_linkStatus() != 0) {
#ifdef WARP_HW_VER_v3
		userio_toggle_leds_green(USERIO_BASEADDR,0x1);
#endif

#ifdef WARP_HW_VER_v2
		WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x01);
		usleep(100000);
		WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x00);
#endif
		usleep(100000);
	}

	xil_printf("\nInitialiation Successful - Waiting for Commands from MATLAB\n");

	//Assign the new packet callback
	// IMPORTANT: must be called after transport_init()
	transport_setReceiveCallback((void *)node_rxFromTransport);

#ifdef WARP_HW_VER_v3
	userio_write_leds_green(USERIO_BASEADDR,0x5);
	int numblinks;
	for(numblinks=0;numblinks<10;numblinks++){
		userio_toggle_leds_green(USERIO_BASEADDR,0xF);
		usleep(100000);
	}
	userio_write_leds_red(USERIO_BASEADDR,0x0);
	userio_write_leds_green(USERIO_BASEADDR,0x0);
	// If you are in configure over network mode, then indicate that to the user
	if ( node == 0xFFFF ) {
		xil_printf("\n!!! Waiting for Network Configuration via Matlab !!! \n\n");

		// Turn off hex mapping; set the center LED
		// NOTE:  hex mapping will be re-enabled when the bcast packet is processed to set the node ID
		userio_write_control( USERIO_BASEADDR, ( userio_read_control( USERIO_BASEADDR ) & ( ~( W3_USERIO_HEXDISP_L_MAPMODE | W3_USERIO_HEXDISP_R_MAPMODE ) ) ) );
		userio_write_hexdisp_left(USERIO_BASEADDR, 0x40);
		userio_write_hexdisp_right(USERIO_BASEADDR, 0x40);
	}

#endif

#ifdef WARP_HW_VER_v2
	WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x05);
	int numblinks;
	for(numblinks=0;numblinks<10;numblinks+=2){
		WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x0A);
		usleep(100000);
		WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x05);
		usleep(100000);
	}
	WarpV4_UserIO_Leds(USERIO_BASEADDR, 0x00);
#endif


	while(1){
		transport_poll();
		//baseband_poll();
	}

	return 0;
}





