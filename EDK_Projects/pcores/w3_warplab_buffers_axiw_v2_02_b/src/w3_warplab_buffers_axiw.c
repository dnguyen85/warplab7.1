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

#include "w3_warplab_buffers_axiw.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xcope.h"

inline xc_status_t xc_w3_warplab_buffers_axiw_create(xc_iface_t **iface, void *config_table)
{
    // set up iface
    *iface = (xc_iface_t *) config_table;

#ifdef XC_DEBUG
    W3_WARPLAB_BUFFERS_AXIW_Config *_config_table = config_table;

    if (_config_table->xc_create == NULL) {
        print("config_table.xc_create == NULL\r\n");
        exit(1);
    }
#endif

    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_w3_warplab_buffers_axiw_release(xc_iface_t **iface) 
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_w3_warplab_buffers_axiw_open(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_w3_warplab_buffers_axiw_close(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_w3_warplab_buffers_axiw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value)
{
    *value = Xil_In32((uint32_t *) addr);
    return XC_SUCCESS;
}

inline xc_status_t xc_w3_warplab_buffers_axiw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value)
{
    Xil_Out32((uint32_t *) addr, value);
    return XC_SUCCESS;
}

xc_status_t xc_w3_warplab_buffers_axiw_getshmem(xc_iface_t *iface, const char *name, void **shmem)
{
    W3_WARPLAB_BUFFERS_AXIW_Config *_config_table = (W3_WARPLAB_BUFFERS_AXIW_Config *) iface;

    if (strcmp("BUFF_SIZES", name) == 0) {
        *shmem = (void *) & _config_table->BUFF_SIZES;
    } else if (strcmp("DESIGN_VER", name) == 0) {
        *shmem = (void *) & _config_table->DESIGN_VER;
    } else if (strcmp("STATUS", name) == 0) {
        *shmem = (void *) & _config_table->STATUS;
    } else if (strcmp("RFCD_AGCDoneRSSI", name) == 0) {
        *shmem = (void *) & _config_table->RFCD_AGCDoneRSSI;
    } else if (strcmp("RFAB_AGCDoneRSSI", name) == 0) {
        *shmem = (void *) & _config_table->RFAB_AGCDoneRSSI;
    } else if (strcmp("AGCDoneAddr", name) == 0) {
        *shmem = (void *) & _config_table->AGCDoneAddr;
    } else if (strcmp("TxDelay", name) == 0) {
        *shmem = (void *) & _config_table->TxDelay;
    } else if (strcmp("RX_BUFF_EN", name) == 0) {
        *shmem = (void *) & _config_table->RX_BUFF_EN;
    } else if (strcmp("CONFIG", name) == 0) {
        *shmem = (void *) & _config_table->CONFIG;
    } else if (strcmp("TX_BUFF_EN", name) == 0) {
        *shmem = (void *) & _config_table->TX_BUFF_EN;
    } else if (strcmp("RxLength", name) == 0) {
        *shmem = (void *) & _config_table->RxLength;
    } else if (strcmp("TxLength", name) == 0) {
        *shmem = (void *) & _config_table->TxLength;
    } else if (strcmp("RFD_IQ_Tx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFD_IQ_Tx_Buffer;
    } else if (strcmp("RFD_RSSI_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFD_RSSI_Buffer;
    } else if (strcmp("RFD_IQ_Rx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFD_IQ_Rx_Buffer;
    } else if (strcmp("RFC_IQ_Tx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFC_IQ_Tx_Buffer;
    } else if (strcmp("RFC_RSSI_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFC_RSSI_Buffer;
    } else if (strcmp("RFC_IQ_Rx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFC_IQ_Rx_Buffer;
    } else if (strcmp("RFB_IQ_Tx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFB_IQ_Tx_Buffer;
    } else if (strcmp("RFB_RSSI_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFB_RSSI_Buffer;
    } else if (strcmp("RFB_IQ_Rx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFB_IQ_Rx_Buffer;
    } else if (strcmp("RFA_IQ_Tx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFA_IQ_Tx_Buffer;
    } else if (strcmp("RFA_RSSI_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFA_RSSI_Buffer;
    } else if (strcmp("RFA_IQ_Rx_Buffer", name) == 0) {
        *shmem = (void *) & _config_table->RFA_IQ_Rx_Buffer;
    }
    else { *shmem = NULL; return XC_FAILURE; }

    return XC_SUCCESS;
}
