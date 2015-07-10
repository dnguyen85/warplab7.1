///////////////////////////////////////////////////////////////-*-C-*-
//
// Copyright (c) 2011 Xilinx, Inc.  All rights reserved.
//
// Xilinx, Inc.  XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
// "AS IS" AS  A COURTESY TO YOU.  BY PROVIDING  THIS DESIGN, CODE, OR
// INFORMATION  AS  ONE   POSSIBLE  IMPLEMENTATION  OF  THIS  FEATURE,
// APPLICATION OR  STANDARD, XILINX  IS MAKING NO  REPRESENTATION THAT
// THIS IMPLEMENTATION  IS FREE FROM  ANY CLAIMS OF  INFRINGEMENT, AND
// YOU ARE  RESPONSIBLE FOR OBTAINING  ANY RIGHTS YOU MAY  REQUIRE FOR
// YOUR  IMPLEMENTATION.   XILINX  EXPRESSLY  DISCLAIMS  ANY  WARRANTY
// WHATSOEVER  WITH RESPECT  TO  THE ADEQUACY  OF THE  IMPLEMENTATION,
// INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR REPRESENTATIONS THAT
// THIS IMPLEMENTATION  IS FREE  FROM CLAIMS OF  INFRINGEMENT, IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
// 
//////////////////////////////////////////////////////////////////////

#ifndef __XL_W3_WARPLAB_BUFFERS_AXIW_H__
#define __XL_W3_WARPLAB_BUFFERS_AXIW_H__

#include "xbasic_types.h"
#include "xstatus.h"
#include "xcope.h"

typedef struct {
    uint32_t version;
    // Pointers to low-level functions
    xc_status_t (*xc_create)(xc_iface_t **, void *);
    xc_status_t (*xc_release)(xc_iface_t **);
    xc_status_t (*xc_open)(xc_iface_t *);
    xc_status_t (*xc_close)(xc_iface_t *);
    xc_status_t (*xc_read)(xc_iface_t *, xc_r_addr_t, uint32_t *);
    xc_status_t (*xc_write)(xc_iface_t *, xc_w_addr_t, const uint32_t);
    xc_status_t (*xc_get_shmem)(xc_iface_t *, const char *, void **shmem);
    // Optional parameters
    // (empty)
    // Memory map information
    uint32_t BUFF_SIZES;
    uint32_t BUFF_SIZES_n_bits;
    uint32_t BUFF_SIZES_bin_pt;
    // uint32_t BUFF_SIZES_attr;
    uint32_t DESIGN_VER;
    uint32_t DESIGN_VER_n_bits;
    uint32_t DESIGN_VER_bin_pt;
    // uint32_t DESIGN_VER_attr;
    uint32_t STATUS;
    uint32_t STATUS_n_bits;
    uint32_t STATUS_bin_pt;
    // uint32_t STATUS_attr;
    uint32_t RFCD_AGCDoneRSSI;
    uint32_t RFCD_AGCDoneRSSI_n_bits;
    uint32_t RFCD_AGCDoneRSSI_bin_pt;
    // uint32_t RFCD_AGCDoneRSSI_attr;
    uint32_t RFAB_AGCDoneRSSI;
    uint32_t RFAB_AGCDoneRSSI_n_bits;
    uint32_t RFAB_AGCDoneRSSI_bin_pt;
    // uint32_t RFAB_AGCDoneRSSI_attr;
    uint32_t AGCDoneAddr;
    uint32_t AGCDoneAddr_n_bits;
    uint32_t AGCDoneAddr_bin_pt;
    // uint32_t AGCDoneAddr_attr;
    uint32_t TxDelay;
    uint32_t TxDelay_n_bits;
    uint32_t TxDelay_bin_pt;
    // uint32_t TxDelay_attr;
    uint32_t RX_BUFF_EN;
    uint32_t RX_BUFF_EN_n_bits;
    uint32_t RX_BUFF_EN_bin_pt;
    // uint32_t RX_BUFF_EN_attr;
    uint32_t CONFIG;
    uint32_t CONFIG_n_bits;
    uint32_t CONFIG_bin_pt;
    // uint32_t CONFIG_attr;
    uint32_t TX_BUFF_EN;
    uint32_t TX_BUFF_EN_n_bits;
    uint32_t TX_BUFF_EN_bin_pt;
    // uint32_t TX_BUFF_EN_attr;
    uint32_t RxLength;
    uint32_t RxLength_n_bits;
    uint32_t RxLength_bin_pt;
    // uint32_t RxLength_attr;
    uint32_t TxLength;
    uint32_t TxLength_n_bits;
    uint32_t TxLength_bin_pt;
    // uint32_t TxLength_attr;
    uint32_t RFD_IQ_Tx_Buffer;
    // uint32_t RFD_IQ_Tx_Buffer_grant;
    // uint32_t RFD_IQ_Tx_Buffer_req;
    uint32_t RFD_IQ_Tx_Buffer_n_bits;
    uint32_t RFD_IQ_Tx_Buffer_bin_pt;
    uint32_t RFD_IQ_Tx_Buffer_depth;
    // uint32_t RFD_IQ_Tx_Buffer_attr;
    uint32_t RFD_RSSI_Buffer;
    // uint32_t RFD_RSSI_Buffer_grant;
    // uint32_t RFD_RSSI_Buffer_req;
    uint32_t RFD_RSSI_Buffer_n_bits;
    uint32_t RFD_RSSI_Buffer_bin_pt;
    uint32_t RFD_RSSI_Buffer_depth;
    // uint32_t RFD_RSSI_Buffer_attr;
    uint32_t RFD_IQ_Rx_Buffer;
    // uint32_t RFD_IQ_Rx_Buffer_grant;
    // uint32_t RFD_IQ_Rx_Buffer_req;
    uint32_t RFD_IQ_Rx_Buffer_n_bits;
    uint32_t RFD_IQ_Rx_Buffer_bin_pt;
    uint32_t RFD_IQ_Rx_Buffer_depth;
    // uint32_t RFD_IQ_Rx_Buffer_attr;
    uint32_t RFC_IQ_Tx_Buffer;
    // uint32_t RFC_IQ_Tx_Buffer_grant;
    // uint32_t RFC_IQ_Tx_Buffer_req;
    uint32_t RFC_IQ_Tx_Buffer_n_bits;
    uint32_t RFC_IQ_Tx_Buffer_bin_pt;
    uint32_t RFC_IQ_Tx_Buffer_depth;
    // uint32_t RFC_IQ_Tx_Buffer_attr;
    uint32_t RFC_RSSI_Buffer;
    // uint32_t RFC_RSSI_Buffer_grant;
    // uint32_t RFC_RSSI_Buffer_req;
    uint32_t RFC_RSSI_Buffer_n_bits;
    uint32_t RFC_RSSI_Buffer_bin_pt;
    uint32_t RFC_RSSI_Buffer_depth;
    // uint32_t RFC_RSSI_Buffer_attr;
    uint32_t RFC_IQ_Rx_Buffer;
    // uint32_t RFC_IQ_Rx_Buffer_grant;
    // uint32_t RFC_IQ_Rx_Buffer_req;
    uint32_t RFC_IQ_Rx_Buffer_n_bits;
    uint32_t RFC_IQ_Rx_Buffer_bin_pt;
    uint32_t RFC_IQ_Rx_Buffer_depth;
    // uint32_t RFC_IQ_Rx_Buffer_attr;
    uint32_t RFB_IQ_Tx_Buffer;
    // uint32_t RFB_IQ_Tx_Buffer_grant;
    // uint32_t RFB_IQ_Tx_Buffer_req;
    uint32_t RFB_IQ_Tx_Buffer_n_bits;
    uint32_t RFB_IQ_Tx_Buffer_bin_pt;
    uint32_t RFB_IQ_Tx_Buffer_depth;
    // uint32_t RFB_IQ_Tx_Buffer_attr;
    uint32_t RFB_RSSI_Buffer;
    // uint32_t RFB_RSSI_Buffer_grant;
    // uint32_t RFB_RSSI_Buffer_req;
    uint32_t RFB_RSSI_Buffer_n_bits;
    uint32_t RFB_RSSI_Buffer_bin_pt;
    uint32_t RFB_RSSI_Buffer_depth;
    // uint32_t RFB_RSSI_Buffer_attr;
    uint32_t RFB_IQ_Rx_Buffer;
    // uint32_t RFB_IQ_Rx_Buffer_grant;
    // uint32_t RFB_IQ_Rx_Buffer_req;
    uint32_t RFB_IQ_Rx_Buffer_n_bits;
    uint32_t RFB_IQ_Rx_Buffer_bin_pt;
    uint32_t RFB_IQ_Rx_Buffer_depth;
    // uint32_t RFB_IQ_Rx_Buffer_attr;
    uint32_t RFA_IQ_Tx_Buffer;
    // uint32_t RFA_IQ_Tx_Buffer_grant;
    // uint32_t RFA_IQ_Tx_Buffer_req;
    uint32_t RFA_IQ_Tx_Buffer_n_bits;
    uint32_t RFA_IQ_Tx_Buffer_bin_pt;
    uint32_t RFA_IQ_Tx_Buffer_depth;
    // uint32_t RFA_IQ_Tx_Buffer_attr;
    uint32_t RFA_RSSI_Buffer;
    // uint32_t RFA_RSSI_Buffer_grant;
    // uint32_t RFA_RSSI_Buffer_req;
    uint32_t RFA_RSSI_Buffer_n_bits;
    uint32_t RFA_RSSI_Buffer_bin_pt;
    uint32_t RFA_RSSI_Buffer_depth;
    // uint32_t RFA_RSSI_Buffer_attr;
    uint32_t RFA_IQ_Rx_Buffer;
    // uint32_t RFA_IQ_Rx_Buffer_grant;
    // uint32_t RFA_IQ_Rx_Buffer_req;
    uint32_t RFA_IQ_Rx_Buffer_n_bits;
    uint32_t RFA_IQ_Rx_Buffer_bin_pt;
    uint32_t RFA_IQ_Rx_Buffer_depth;
    // uint32_t RFA_IQ_Rx_Buffer_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} W3_WARPLAB_BUFFERS_AXIW_Config;

extern W3_WARPLAB_BUFFERS_AXIW_Config W3_WARPLAB_BUFFERS_AXIW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_w3_warplab_buffers_axiw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_w3_warplab_buffers_axiw_release(xc_iface_t **iface) ;
xc_status_t xc_w3_warplab_buffers_axiw_open(xc_iface_t *iface);
xc_status_t xc_w3_warplab_buffers_axiw_close(xc_iface_t *iface);
xc_status_t xc_w3_warplab_buffers_axiw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_w3_warplab_buffers_axiw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_w3_warplab_buffers_axiw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

