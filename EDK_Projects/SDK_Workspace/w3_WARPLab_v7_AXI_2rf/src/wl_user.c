////////////////////////////////////////////////////////////////////////////////
// File   :	wl_user.c
// Authors:	Chris Hunter (chunter [at] mangocomm.com)
//			Patrick Murphy (murphpo [at] mangocomm.com)
// License:	Copyright 2013, Mango Communications. All rights reserved.
//			Distributed under the WARP license  (http://warpproject.org/license)
////////////////////////////////////////////////////////////////////////////////

#include "include/wl_user.h"
#include "include/wl_common.h"
#include <xparameters.h>
#include <stdlib.h>
#include <stdio.h>
#include <Xio.h>
#include <xil_io.h>
#include <string.h>
#include <xil_types.h>

#ifdef WARP_HW_VER_v3
#include <w3_iic_eeprom.h>
#endif


int user_processCmd(const wl_cmdHdr* cmdHdr,const void* cmdArgs, wl_respHdr* respHdr, void* respArgs, void* pktSrc) {
	//IMPORTANT ENDIAN NOTES:
	// -cmdHdr is safe to access directly (pre-swapped if needed)
	// -cmdArgs is *not* pre-swapped, since the framework doesn't know what it is
	// -respHdr will be swapped by the framework; user code should fill it normally
	// -respArgs will *not* be swapped by the framework, since only user code knows what it is
	//    Any data added to respArgs by the code below must be endian-safe (swapped on AXI hardware)

	u32 cmdID;

	//Cast argument buffers into arrays for easy accessing
	const u32 *cmdArgs32 = cmdArgs;
	u32 *respArgs32 = respArgs;

/* Example variables for processing user commands
	const u32 *cmdArgs32 = cmdArgs;
	u32 *respArgs32 = respArgs;

	int respIndex = 0;

	u32 arg0, arg1, result;
*/
	unsigned int respSent = NO_RESP_SENT;

	cmdID = WL_CMD_TO_CMDID(cmdHdr->cmd);

	respHdr->cmd = cmdHdr->cmd;
	respHdr->length = 0;
	respHdr->numArgs = 0;

#ifdef WARP_HW_VER_v3
	u32 stringBuffer32[10];
	u8 *stringBuffer8 = (u8*)stringBuffer32;
	int k;
	u32 readLength;
	u32 eepromAddrOffset;
#endif

	switch(cmdID) {

	/* Example user command
		case SOME_CMD_ID:
			arg0 = Xil_Ntohl(cmdArgs[0]);
			arg1 = Xil_Ntohl(cmdArgs[1]);
			result = do_something_with_args(arg0, arg1);

			respArgs32[respIndex++] = Xil_Htonl(result);
			respHdr->length += (respIndex * sizeof(respArgs32));
			respHdr->numArgs = respIndex;
		break;
*/
#ifdef WARP_HW_VER_v3
		case USER_EEPROM_WRITE_STRING:
			eepromAddrOffset = Xil_Ntohl(cmdArgs32[0]);

			for( k=0; k<((cmdHdr->length)/sizeof(u32)); k++ ){
				stringBuffer32[k] = Xil_Ntohl(cmdArgs32[k+1]);
			}

			for( k=0; k<(cmdHdr->length); k++ ){
				iic_eeprom_writeByte(EEPROM_BASEADDR,k+eepromAddrOffset,stringBuffer8[k]);
			}

			xil_printf("Wrote '%s' to EEPROM\n",stringBuffer8);
		break;
		case USER_EEPROM_READ_STRING:
			eepromAddrOffset = Xil_Ntohl(cmdArgs32[0]);
			readLength = Xil_Ntohl(cmdArgs32[1]);

			for( k=0; k<readLength; k++ ){
				stringBuffer8[k] = iic_eeprom_readByte(EEPROM_BASEADDR,k+eepromAddrOffset);
			}

			xil_printf("Read '%s' from EEPROM\n",stringBuffer8);

			for( k=0; k<((readLength)/sizeof(u32)); k++ ){
				respArgs32[k] = Xil_Htonl(stringBuffer32[k]);
			}
			respHdr->length += ((k) * sizeof(respArgs32));
			respHdr->numArgs = (k);

		break;
#endif

		default:
			xil_printf("Unknown user command ID: %d\n", cmdID);
		break;
	}
	return respSent;
}


int user_init(){
	int status = 0;

	//User initialization goes here
	// Framework calls user_init when node is initialized
	//  (on boot and when node 'initialize' command is received)

	return status;
}
