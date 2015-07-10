////////////////////////////////////////////////////////////////////////////////
// File   :	wl_node.h
// Authors:	Chris Hunter (chunter [at] mangocomm.com)
//			Patrick Murphy (murphpo [at] mangocomm.com)
// License:	Copyright 2013, Mango Communications. All rights reserved.
//			Distributed under the WARP license  (http://warpproject.org/license)
////////////////////////////////////////////////////////////////////////////////

#include "wl_common.h"

#ifndef WL_NODE_H_
#define WL_NODE_H_

#define NODE_GRP 0x00
#define TRANS_GRP 0x10
#define IFC_GRP 0x20
#define BB_GRP 0x30
#define TRIGMNGR_GRP 0x40
#define USER_GRP 0x50

#define NODE_INITIALIZE_CMDID 1
//TODO: Likely will be deprecated with generalized discovery addition
#define NODE_INFO 			2
#define NODE_IDENTIFY 		3
#define NODE_TEMPERATURE	4

#define NODE_CONFIG_SETUP       5
#define NODE_CONFIG_RESET       6

#define SYSMON_BASEADDR		XPAR_SYSMON_0_BASEADDR


int global_initialize();
int node_processCmd(const wl_cmdHdr* cmdHdr,const void* cmdArgs, wl_respHdr* respHdr,void* respArgs, void* pktSrc);
void node_rxFromTransport(wl_host_message* toNode, wl_host_message* fromNode, void* pktSrc);
void node_sendEarlyResp(wl_respHdr* respHdr, void* pktSrc);


#endif /* WL_NODE_H_ */
