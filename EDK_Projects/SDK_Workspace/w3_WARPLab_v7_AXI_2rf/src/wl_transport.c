////////////////////////////////////////////////////////////////////////////////
// File   :	wl_transport.c
// Authors:	Chris Hunter (chunter [at] mangocomm.com)
//			Patrick Murphy (murphpo [at] mangocomm.com)
//          Erik Welsh (welsh [at] mangocomm.com)
// License:	Copyright 2013, Mango Communications. All rights reserved.
//			Distributed under the WARP license  (http://warpproject.org/license)
////////////////////////////////////////////////////////////////////////////////

#include "include/wl_transport.h"
#include "include/wl_common.h"
#include "include/wl_trigger_manager.h"
#include "include/wl_node.h"

#include <xparameters.h>
#include <stdlib.h>
#include <stdio.h>
#include <xilnet_config.h>
#include <xilnet_xilsock.h>
#include <xilnet_mac.h>
#include <xilnet_udp.h>
#include <xtmrctr.h>

#ifdef WARP_HW_VER_v3
#include <xaxiethernet.h>	/* defines Axi Ethernet APIs */
#include <xllfifo.h>

#include <w3_iic_eeprom.h>
#include <w3_userio.h>

XAxiEthernet ETH_A_MAC_Instance;
XAxiEthernet_Config *ETH_A_MAC_CFG_ptr;
XLlFifo ETH_A_FIFO_Instance;

XAxiEthernet ETH_B_MAC_Instance;
XAxiEthernet_Config *ETH_B_MAC_CFG_ptr;

#define ETH_A_MAC_DEVICE_ID		XPAR_ETH_A_MAC_DEVICE_ID
#define ETH_A_FIFO_DEVICE_ID		XPAR_ETH_A_FIFO_DEVICE_ID

#define ETH_B_MAC_DEVICE_ID		XPAR_ETH_B_MAC_DEVICE_ID
#endif

#ifdef WARP_HW_VER_v2
#include <xlltemac.h>
#include <xllfifo.h>
#include "warp_v4_userio.h"
#include <xdmacentral.h>
#include <xdmacentral_l.h>

XLlTemac ETH_A_MAC_Instance;
XLlTemac_Config *ETH_A_MAC_CFG_ptr;
XLlFifo ETH_A_FIFO_Instance;

static XDmaCentral DmaCentralInst;
static XDmaCentral_Config *DMAConfigPtr;

#define ETH_A_MAC_DEVICE_ID		XPAR_LLTEMAC_0_DEVICE_ID
#define ETH_A_FIFO_DEVICE_ID	XPAR_ETH_FIFO_DEVICE_ID
#endif

extern u16 node;

unsigned int myPort;

int sock_msg = -1;	// UDP socket  
struct sockaddr_in addr_msg;

int sock_trig = -1;	// UDP socket  
struct sockaddr_in addr_trig;

unsigned int alen = 0;

//unsigned int sendBuffer[(BUFSIZE+3)/4];
//unsigned int * wlTxPayloadPtr32 = (unsigned int *)((unsigned char *) sendBuffer + sizeof(wl_transport_header));

//unsigned int temp[(BUFSIZE+3)/4];
extern unsigned char sendbuf[LINK_FRAME_LEN];
unsigned char * sendBuffer = (sendbuf+LINK_HDR_LEN+IP_HDR_LEN*4+UDP_HDR_LEN)+PAYLOAD_PAD_NBYTES;
unsigned int * wlTxPayloadPtr32;

unsigned int receiveBuffer[(BUFSIZE+3)/4];
//unsigned int * wlRxPayloadPtr32 = (unsigned int *)((unsigned char *) receiveBuffer + sizeof(wl_transport_header));

//wl_transport_header* wl_header_rx;
wl_transport_header* wl_header_tx;

wl_host_message toNode, fromNode;


//TODO: Wrap timer calls in a driver in wl_common
extern XTmrCtr TimerCounter;

void nullCallback(void* param){};
void (*usr_receiveCallback) ();

void transport_close() {
	xilsock_close(sock_msg);
}

int transport_processCmd(const wl_cmdHdr* cmdHdr,const void* cmdArgs, wl_respHdr* respHdr,void* respArgs, void* pktSrc){
	//IMPORTANT ENDIAN NOTES:
	// -cmdHdr is safe to access directly (pre-swapped if needed)
	// -cmdArgs is *not* pre-swapped, since the framework doesn't know what it is
	// -respHdr will be swapped by the framework; user code should fill it normally
	// -respArgs will *not* be swapped by the framework, since only user code knows what it is
	//    Any data added to respArgs by the code below must be endian-safe (swapped on AXI hardware)

	unsigned int respSent = NO_RESP_SENT;
	const u32 *cmdArgs32 = cmdArgs;
	u32 *respArgs32 = respArgs;
	unsigned int cmdID;
	cmdID = WL_CMD_TO_CMDID(cmdHdr->cmd);

	respHdr->cmd = cmdHdr->cmd;
	respHdr->length = 0;
	respHdr->numArgs = 0;

	switch(cmdID){
			case TRANS_PING_CMDID:
				//Nothing actually needs to be done when receiving the ping command. The framework is going
				//to respond regardless, which is all the host wants.
			break;
			case TRANS_IP_CMDID:
				//TODO: Only necessary for generalized discovery process
			break;
			case TRANS_PORT_CMDID:
				//TODO: Only necessary for generalized discovery process
			break;
			case TRANS_PAYLOADSIZETEST_CMDID:
				respArgs32[0] = Xil_Ntohl(Xil_Htonl(cmdArgs32[0])-PAYLOAD_PAD_NBYTES);
				respHdr->length += (1 * sizeof(respArgs32));
				respHdr->numArgs = 1;
			break;
	}
	return respSent;
}



int transport_config_info() {

#ifdef WARP_HW_VER_v3
	u8 eeprom_mac_addr[6];
	u32 sn2;

	//Read ETH_A MAC addr from the EEPROM
	w3_eeprom_readEthAddr(EEPROM_BASEADDR, 0, eeprom_mac_addr);

	//Check if the EEPROM MAC addr is valid
	if((eeprom_mac_addr[0] == 0x40) && (eeprom_mac_addr[0] == 0xD8) && (eeprom_mac_addr[0] == 0x55)){
		//MAC address is stored 0:5=MSB:LSB
		node_hw_addr[0] = eeprom_mac_addr[0];
		node_hw_addr[1] = eeprom_mac_addr[1];
		node_hw_addr[2] = eeprom_mac_addr[2];
		node_hw_addr[3] = eeprom_mac_addr[3];
		node_hw_addr[4] = eeprom_mac_addr[4];
		node_hw_addr[5] = eeprom_mac_addr[5];

		xil_printf("  Set ETH_A MAC Address via EEPROM: %02x:%02x:%02x:%02x:%02x:%02x\n",
				node_hw_addr[0], node_hw_addr[1], node_hw_addr[2], node_hw_addr[3], node_hw_addr[4], node_hw_addr[5]);
	} else {
		//EEPROM didn't have valid address (probably a WARP v3 kit s/n < 110)
		// Use MAC addr = 40-D8-55-04-20-00 + (serial number)*2
		sn2 = w3_eeprom_readSerialNum(EEPROM_BASEADDR) << 1;
		//MAC address is stored 0:5=MSB:LSB
		node_hw_addr[0] = 0x40;
		node_hw_addr[1] = 0xD8;
		node_hw_addr[2] = 0x55;
		node_hw_addr[3] = 0x04;
		node_hw_addr[4] = 0x20 + ((sn2>>8)&0x0F);
		node_hw_addr[5] = 0x00 + ((sn2)&0xFF);

		xil_printf("  Set ETH_A MAC Address via SN: %02x:%02x:%02x:%02x:%02x:%02x\n",
				node_hw_addr[0], node_hw_addr[1], node_hw_addr[2], node_hw_addr[3], node_hw_addr[4], node_hw_addr[5]);
	}
#endif

#ifdef WARP_HW_VER_v2
	//Use the Rice WARP range of MAC addresses for v2 boards
	node_hw_addr[0] = 0x00;
	node_hw_addr[1] = 0x50;
	node_hw_addr[2] = 0xC2;
	node_hw_addr[3] = 0x63;
	node_hw_addr[4] = 0x30;
	node_hw_addr[5] = node;
#endif

	node_ip_addr[0] = (NODE_IP_ADDR_BASE>>24)&0xFF;
	node_ip_addr[1] = (NODE_IP_ADDR_BASE>>16)&0xFF;
	node_ip_addr[2] = (NODE_IP_ADDR_BASE>>8)&0xFF;
	node_ip_addr[3] = node+1;

	xil_printf("  IP Address: %d.%d.%d.%d \n", node_ip_addr[0], node_ip_addr[1],node_ip_addr[2],node_ip_addr[3]);
	//Define the last octet of the IP address used for SYNC packets. The first three will be the node_ip_addr.
	//sync_IP_octet = 255;

    return 0;
}


int transport_config_sockets() {
	int status = 0;
	int tempStatus = 0;

    if ( node == 0xFFFF ) {
	    myPort = NODE_UDP_UNICAST_PORT_BASE;
    } else {
	    myPort = NODE_UDP_UNICAST_PORT_BASE + node;
    }
    
    // Release sockets if they are already bound
    if ( sock_msg  != -1 ) { xilsock_close( sock_msg  ); }
    if ( sock_trig != -1 ) { xilsock_close( sock_trig ); }   
    
    // Create new sockets and bind them
	sock_msg = xilsock_socket(AF_INET, SOCK_DGRAM, 0);	// Create UDP socket with domain Internet and UDP connection.
	if (sock_msg == -1) {
		xil_printf("Error in creating sock_msg\n");
		status = -1;
		return status;
	}

	sock_trig = xilsock_socket(AF_INET, SOCK_DGRAM, 0);	// Create UDP socket with domain Internet and UDP connection.
	if (sock_trig == -1) {
		xil_printf("Error in creating sock_msg\n");
		status = -1;
		return status;
	}

	addr_msg.sin_family = AF_INET;
	addr_msg.sin_port = myPort;
	addr_msg.sin_addr.s_addr = INADDR_ANY;			// Create the input socket with any incoming address. (0x00000000)

	addr_trig.sin_family = AF_INET;
	addr_trig.sin_port = 10000;
	addr_trig.sin_addr.s_addr = INADDR_ANY;			// Create the input socket with any incoming address. (0x00000000)

	tempStatus = xilsock_bind(sock_msg, (struct sockaddr *)&addr_msg, sizeof(struct sockaddr),(void *)transport_receiveCallback);
	if (tempStatus != 1) {
		xil_printf("Unable to bind sock_msg\n");
		status = -1;
		return status;
	}

	tempStatus = xilsock_bind(sock_trig, (struct sockaddr *)&addr_trig, sizeof(struct sockaddr),(void *)transport_receiveCallback);
	if (tempStatus != 1) {
		xil_printf("Unable to bind sock_trig\n");
		status = -1;
		return status;
	}

	alen = sizeof(struct sockaddr);
	xil_printf("  Listening on UDP ports %d (unicast) and %d (broadcast)\n", myPort, NODE_UDP_MCAST_BASE);

	return status;
}


int transport_init(){
	int status = 0;

	xil_printf("Configuring transport...\n");

	wlTxPayloadPtr32 = (unsigned int *)((unsigned char *) sendBuffer + sizeof(wl_transport_header));

	usr_receiveCallback = nullCallback;

    transport_config_info();

	xilnet_eth_init_hw_addr_tbl();

	/*******************Ethernet**********************************/
#ifdef WARP_HW_VER_v3
	ETH_A_MAC_CFG_ptr = XAxiEthernet_LookupConfig(ETH_A_MAC_DEVICE_ID);
	status = XAxiEthernet_CfgInitialize(&ETH_A_MAC_Instance, ETH_A_MAC_CFG_ptr, ETH_A_MAC_CFG_ptr->BaseAddress);
	XLlFifo_Initialize(&ETH_A_FIFO_Instance, ETH_A_MAC_CFG_ptr->AxiDevBaseAddress);
	if (status != XST_SUCCESS)
		xil_printf("*** EMAC init error\n");

	status  = XAxiEthernet_ClearOptions(&ETH_A_MAC_Instance, XAE_LENTYPE_ERR_OPTION | XAE_FLOW_CONTROL_OPTION | XAE_FCS_STRIP_OPTION);// | XTE_MULTICAST_OPTION);
	status |= XAxiEthernet_SetOptions(&ETH_A_MAC_Instance, XAE_PROMISC_OPTION | XAE_MULTICAST_OPTION | XAE_BROADCAST_OPTION | XAE_RECEIVER_ENABLE_OPTION | XAE_TRANSMITTER_ENABLE_OPTION | XAE_JUMBO_OPTION);
	if (status != XST_SUCCESS)
		xil_printf("*** Error setting EMAC options\n, code %d", status);

	XAxiEthernet_SetOperatingSpeed(&ETH_A_MAC_Instance, 1000);
	usleep(1 * 10000);

	XAxiEthernet_Start(&ETH_A_MAC_Instance);


	ETH_B_MAC_CFG_ptr = XAxiEthernet_LookupConfig(ETH_B_MAC_DEVICE_ID);
	status = XAxiEthernet_CfgInitialize(&ETH_B_MAC_Instance, ETH_B_MAC_CFG_ptr, ETH_B_MAC_CFG_ptr->BaseAddress);
	if (status != XST_SUCCESS)
		xil_printf("*** EMAC init error\n");

	status  = XAxiEthernet_ClearOptions(&ETH_B_MAC_Instance, XAE_LENTYPE_ERR_OPTION | XAE_FLOW_CONTROL_OPTION | XAE_FCS_STRIP_OPTION);// | XTE_MULTICAST_OPTION);
	status |= XAxiEthernet_SetOptions(&ETH_B_MAC_Instance, XAE_PROMISC_OPTION | XAE_MULTICAST_OPTION | XAE_BROADCAST_OPTION | XAE_RECEIVER_ENABLE_OPTION | XAE_TRANSMITTER_ENABLE_OPTION | XAE_JUMBO_OPTION);
	if (status != XST_SUCCESS)
		xil_printf("*** Error setting EMAC options\n, code %d", status);

	XAxiEthernet_SetOperatingSpeed(&ETH_B_MAC_Instance, 1000);
	usleep(1 * 10000);

	XAxiEthernet_Start(&ETH_B_MAC_Instance);

	xilnet_mac_init((void *)&ETH_A_FIFO_Instance, (void *)NULL);
#endif
#ifdef WARP_HW_VER_v2
	//Lookup the DMA configuration information
	DMAConfigPtr = XDmaCentral_LookupConfig(XPAR_XPS_CENTRAL_DMA_0_DEVICE_ID);

	//Initialize the config struct
	status = XDmaCentral_CfgInitialize(&DmaCentralInst, DMAConfigPtr, DMAConfigPtr->BaseAddress);
	if (status != XST_SUCCESS){
		xil_printf("... ... DMA CfgInitialize failed!\n");
		return -1;
	}

	//Disable Interrupts
	XDmaCentral_InterruptEnableSet(&DmaCentralInst, 0);

	ETH_A_MAC_CFG_ptr = XLlTemac_LookupConfig(ETH_A_MAC_DEVICE_ID);
	status = XLlTemac_CfgInitialize(&ETH_A_MAC_Instance, ETH_A_MAC_CFG_ptr, ETH_A_MAC_CFG_ptr->BaseAddress);
	XLlFifo_Initialize(&ETH_A_FIFO_Instance, XLlTemac_LlDevBaseAddress(&ETH_A_MAC_Instance));
	if (status != XST_SUCCESS)
		xil_printf("*** EMAC init error\n");

	status  = XLlTemac_ClearOptions(&ETH_A_MAC_Instance, XTE_LENTYPE_ERR_OPTION | XTE_FLOW_CONTROL_OPTION | XTE_FCS_STRIP_OPTION);// | XTE_MULTICAST_OPTION);
	status |= XLlTemac_SetOptions(&ETH_A_MAC_Instance, XTE_PROMISC_OPTION | XTE_MULTICAST_OPTION | XTE_BROADCAST_OPTION | XTE_RECEIVER_ENABLE_OPTION | XTE_TRANSMITTER_ENABLE_OPTION | XTE_JUMBO_OPTION);
	if (status != XST_SUCCESS)
		xil_printf("*** Error setting EMAC options\n, code %d", status);

	XLlTemac_SetOperatingSpeed(&ETH_A_MAC_Instance, 1000);
	usleep(1 * 10000);

	XLlTemac_Start(&ETH_A_MAC_Instance);

	xilnet_mac_init((void *)&ETH_A_FIFO_Instance, (void *)&DmaCentralInst);
#endif

	status = transport_config_sockets();

	//wl_header_rx = (wl_transport_header*)receiveBuffer;
	wl_header_tx = (wl_transport_header*)sendBuffer;
	wl_header_tx->srcID = node;

	return status;
}

void transport_receiveCallback(unsigned char* buff, unsigned int len, void* pktSrc){

	u32 trigID;

	unsigned char* buffPtr = buff + PAYLOAD_PAD_NBYTES;

	toNode.buffer = buffPtr;
	toNode.payload = (unsigned int *)((unsigned char *) buffPtr + sizeof(wl_transport_header));
	toNode.length = len;

	fromNode.buffer = sendBuffer;
	fromNode.payload = wlTxPayloadPtr32;
	fromNode.length = PAYLOAD_PAD_NBYTES;

	wl_transport_header* wl_header_rx = (wl_transport_header*)buffPtr;

	//Endian swap the received transport header (this is the first place we know what/where it is)
	wl_header_rx->destID = Xil_Ntohs(wl_header_rx->destID);
	wl_header_rx->srcID = Xil_Ntohs(wl_header_rx->srcID);
	wl_header_rx->length = Xil_Ntohs(wl_header_rx->length);
	wl_header_rx->seqNum = Xil_Ntohs(wl_header_rx->seqNum);
	wl_header_rx->flags = Xil_Ntohs(wl_header_rx->flags);

	switch(wl_header_rx->pktType){
		case PKTTYPE_TRIGGER:
			trigID = Xil_Ntohl(*(u32*)(toNode.payload));
			trigmngr_triggerIn(trigID);
		break;

		case PKTTYPE_HTON_MSG:
			if(wl_header_rx->destID != node && wl_header_rx->destID != 255) return;

			//Form outgoing WARPLab header in case robust mode is on
			// Note- the u16/u32 fields here will be endian swapped in transport_send
			wl_header_tx->destID = wl_header_rx->srcID;
			wl_header_tx->seqNum = wl_header_rx->seqNum;
			wl_header_tx->srcID = node; //TODO: delete
			wl_header_tx->pktType = PKTTYPE_NTOH_MSG;

			///// In the case of a transport TRANS_PAYLOADSIZETEST_CMDID, we need to
			///// overwrite the cmd with some extra transport information
			wl_cmdHdr* cmdHdr;
			u32 * cmdArgs32;

			cmdHdr = (wl_cmdHdr*)(toNode.payload);
			cmdArgs32 = (toNode.payload) + sizeof(wl_cmdHdr);

			if(( WL_CMD_TO_GRP(Xil_Ntohl(cmdHdr->cmd))==TRANS_GRP) && (WL_CMD_TO_CMDID(Xil_Ntohl(cmdHdr->cmd))==TRANS_PAYLOADSIZETEST_CMDID)){
				cmdArgs32[0] = Xil_Htonl(len);
			}


			/////

			usr_receiveCallback(&toNode, &fromNode, pktSrc);

			if( ((wl_header_rx->flags) & TRANSPORT_ROBUST_MASK) && fromNode.length > PAYLOAD_PAD_NBYTES) {
				transport_send(&fromNode, pktSrc);
			}

			fromNode.length = 0;
		break;
		default:
			xil_printf("Got packet with unknown type: %d\n", wl_header_rx->pktType);
			break;
	}

}

int transport_setReceiveCallback(void(*handler)){
	usr_receiveCallback = handler;
	return 0;
}

void transport_poll(){

	xilnet_eth_recv_frame((unsigned char *)receiveBuffer, BUFSIZE);

	return;
}

void transport_send(wl_host_message* currMsg, pktSrcInfo* pktSrc){

	int len_to_send;
	len_to_send = currMsg->length + sizeof(wl_transport_header);

	wl_transport_header tmp_hdr;
	memcpy(&tmp_hdr, wl_header_tx, sizeof(wl_transport_header));

	//Update length field in outgoing transport header
	//FIXME: why do this subtraction?
	wl_header_tx->length = currMsg->length - sizeof(wl_transport_header);

	//Make the outgoing transport header endian safe
	wl_header_tx->destID = Xil_Htons(wl_header_tx->destID);
	wl_header_tx->srcID = Xil_Htons(wl_header_tx->srcID);
	wl_header_tx->length = Xil_Htons(wl_header_tx->length);
	wl_header_tx->seqNum = Xil_Htons(wl_header_tx->seqNum);
	wl_header_tx->flags = Xil_Htons(wl_header_tx->flags);

	struct sockaddr_in sendAddr;

	sendAddr.sin_addr.s_addr = pktSrc->srcIPAddr;
	sendAddr.sin_family = AF_INET;
//	sendAddr.sin_port = pktSrc->srcPort;
	sendAddr.sin_port = pktSrc->destPort;

	/*
	xil_printf("sendAddr.sin_addr.s_addr = %d.%d.%d.%d\n",(sendAddr.sin_addr.s_addr>>24)&0xFF,(sendAddr.sin_addr.s_addr>>16)&0xFF,(sendAddr.sin_addr.s_addr>>8)&0xFF,(sendAddr.sin_addr.s_addr)&0xFF);
	xil_printf("sendAddr.sin_family = %d\n",sendAddr.sin_family);
	xil_printf("sendAddr.sin_port = %d\n",sendAddr.sin_port);
	 */
	xilsock_sendto(sock_msg, (unsigned char *)sendbuf, len_to_send, (struct sockaddr *)&sendAddr, alen);

	//Restore wl_header_tx
	memcpy(wl_header_tx, &tmp_hdr, sizeof(wl_transport_header));

}

int transport_linkStatus() {

	u16 regA;
//Check if the Ethernet PHY reports a valid link
#ifdef WARP_HW_VER_v3
	XAxiEthernet_PhyRead(&ETH_A_MAC_Instance, ETHA_MDIO_PHYADDR, 17, &regA);
#endif
#ifdef WARP_HW_VER_v2
	XLlTemac_PhyRead(&ETH_A_MAC_Instance, ETHA_MDIO_PHYADDR, 17, &regA);
#endif
	if(regA & ETHPHYREG_17_0_LINKUP) {
		return 0;
	} else {
		return -1;
	}

}
