////////////////////////////////////////////////////////////////////////////////
// File   :	wl_transport.h
// Authors:	Chris Hunter (chunter [at] mangocomm.com)
//			Patrick Murphy (murphpo [at] mangocomm.com)
// License:	Copyright 2013, Mango Communications. All rights reserved.
//			Distributed under the WARP license  (http://warpproject.org/license)
////////////////////////////////////////////////////////////////////////////////

#include "wl_common.h"
#include <xilnet_udp.h>

#ifndef WL_TRANSPORT_H_
#define WL_TRANSPORT_H_

#define TRANS_PING_CMDID 			1
#define TRANS_IP_CMDID 				2
#define TRANS_PORT_CMDID 			3
#define TRANS_PAYLOADSIZETEST_CMDID 4


#define TRANSPORT_ROBUST_MASK 0x1

#define TEMAC_DEVICE_ID		XPAR_LLTEMAC_0_DEVICE_ID
#define FIFO_DEVICE_ID		XPAR_LLFIFO_0_DEVICE_ID

#ifdef WARP_HW_VER_v3
#define ETHA_MDIO_PHYADDR 0x6
#endif

#ifdef WARP_HW_VER_v2
#define ETHA_MDIO_PHYADDR 0x0
#endif


#define ETHPHYREG_17_0_LINKUP 0x0400

#define ENET_LINK_SPEED		1000
#define BUFSIZE LINK_FRAME_LEN

#define WAITDURATION_SEC 2

typedef struct {
	u16 destID;
	u16 srcID;
	u8 reserved;
	u8 pktType;
	u16 length;
	u16 seqNum;
	u16 flags;
} wl_transport_header;

//Over-the-wire structs
//Ethernet: 14 bytes
typedef struct{
	u8 dst_addr[6];
	u8 src_addr[6];
	u16 ethertype;
} ethernet_header;

//IPv4: 20 bytes
typedef struct{
	u8 ver_ihl; // Version (4 bits) + Internet header length (4 bits)
	u8 tos; // Type of service
	u16 tlen; // Total length
	u16 identification; // Identification
	u16 flags_fo; // Flags (3 bits) + Fragment offset (13 bits)
    u8 ttl; // Time to live
    u8 proto; // Protocol
    u16 checksum; // Header checksum
    u32 src_addr; // Source address
    u32 dst_addr; // Destination address
} ipv4_header;

//UDP: 4 bytes
typedef struct {
	u16 src_port;          // Source port
	u16 dst_port;          // Destination port
	u16 len;            // Datagram length
	u16 checksum;            // Checksum
} udp_header;

#define ETHERTYPE_IP 0x0800
#define IPPROTO_UDP 0x11

#define PKTTYPE_TRIGGER 0
#define PKTTYPE_HTON_MSG 1
#define PKTTYPE_NTOH_MSG 2

int transport_processCmd(const wl_cmdHdr* cmdHdr,const void* cmdArgs, wl_respHdr* respHdr,void* respArgs, void* pktSrc);
int transport_init();
int transport_config_info();     // MODIFIED BY EJW
int transport_config_sockets();  // MODIFIED BY EJW
void transport_receiveCallback(unsigned char* buff, unsigned int len, void* pktSrc);
int transport_setReceiveCallback(void(*handler));
void transport_poll();
void transport_send(wl_host_message* currMsg, pktSrcInfo* pktSrc);

int transport_linkStatus();

#endif /* WL_TRANSPORT_H_ */
