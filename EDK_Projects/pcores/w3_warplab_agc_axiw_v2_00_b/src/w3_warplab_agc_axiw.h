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

#ifndef __XL_W3_WARPLAB_AGC_AXIW_H__
#define __XL_W3_WARPLAB_AGC_AXIW_H__

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
    uint32_t GRF_D;
    uint32_t GRF_D_n_bits;
    uint32_t GRF_D_bin_pt;
    // uint32_t GRF_D_attr;
    uint32_t GRF_C;
    uint32_t GRF_C_n_bits;
    uint32_t GRF_C_bin_pt;
    // uint32_t GRF_C_attr;
    uint32_t GRF_B;
    uint32_t GRF_B_n_bits;
    uint32_t GRF_B_bin_pt;
    // uint32_t GRF_B_attr;
    uint32_t GRF_A;
    uint32_t GRF_A_n_bits;
    uint32_t GRF_A_bin_pt;
    // uint32_t GRF_A_attr;
    uint32_t GBB_D;
    uint32_t GBB_D_n_bits;
    uint32_t GBB_D_bin_pt;
    // uint32_t GBB_D_attr;
    uint32_t GBB_C;
    uint32_t GBB_C_n_bits;
    uint32_t GBB_C_bin_pt;
    // uint32_t GBB_C_attr;
    uint32_t GBB_B;
    uint32_t GBB_B_n_bits;
    uint32_t GBB_B_bin_pt;
    // uint32_t GBB_B_attr;
    uint32_t GBB_A;
    uint32_t GBB_A_n_bits;
    uint32_t GBB_A_bin_pt;
    // uint32_t GBB_A_attr;
    uint32_t Timing;
    uint32_t Timing_n_bits;
    uint32_t Timing_bin_pt;
    // uint32_t Timing_attr;
    uint32_t Thresholds;
    uint32_t Thresholds_n_bits;
    uint32_t Thresholds_bin_pt;
    // uint32_t Thresholds_attr;
    uint32_t T_dB;
    uint32_t T_dB_n_bits;
    uint32_t T_dB_bin_pt;
    // uint32_t T_dB_attr;
    uint32_t SRESET_IN;
    uint32_t SRESET_IN_n_bits;
    uint32_t SRESET_IN_bin_pt;
    // uint32_t SRESET_IN_attr;
    uint32_t AGC_EN;
    uint32_t AGC_EN_n_bits;
    uint32_t AGC_EN_bin_pt;
    // uint32_t AGC_EN_attr;
    uint32_t PACKET_IN;
    uint32_t PACKET_IN_n_bits;
    uint32_t PACKET_IN_bin_pt;
    // uint32_t PACKET_IN_attr;
    uint32_t MRESET_IN;
    uint32_t MRESET_IN_n_bits;
    uint32_t MRESET_IN_bin_pt;
    // uint32_t MRESET_IN_attr;
    uint32_t GBB_Init;
    uint32_t GBB_Init_n_bits;
    uint32_t GBB_Init_bin_pt;
    // uint32_t GBB_Init_attr;
    uint32_t DCO_Timing;
    uint32_t DCO_Timing_n_bits;
    uint32_t DCO_Timing_bin_pt;
    // uint32_t DCO_Timing_attr;
    uint32_t Bits;
    uint32_t Bits_n_bits;
    uint32_t Bits_bin_pt;
    // uint32_t Bits_attr;
    uint32_t AVG_LEN;
    uint32_t AVG_LEN_n_bits;
    uint32_t AVG_LEN_bin_pt;
    // uint32_t AVG_LEN_attr;
    uint32_t AGC_TRIGGER_DELAY;
    uint32_t AGC_TRIGGER_DELAY_n_bits;
    uint32_t AGC_TRIGGER_DELAY_bin_pt;
    // uint32_t AGC_TRIGGER_DELAY_attr;
    uint32_t AGC_EN_GLOBAL;
    uint32_t AGC_EN_GLOBAL_n_bits;
    uint32_t AGC_EN_GLOBAL_bin_pt;
    // uint32_t AGC_EN_GLOBAL_attr;
    uint32_t ADJ;
    uint32_t ADJ_n_bits;
    uint32_t ADJ_bin_pt;
    // uint32_t ADJ_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} W3_WARPLAB_AGC_AXIW_Config;

extern W3_WARPLAB_AGC_AXIW_Config W3_WARPLAB_AGC_AXIW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_w3_warplab_agc_axiw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_w3_warplab_agc_axiw_release(xc_iface_t **iface) ;
xc_status_t xc_w3_warplab_agc_axiw_open(xc_iface_t *iface);
xc_status_t xc_w3_warplab_agc_axiw_close(xc_iface_t *iface);
xc_status_t xc_w3_warplab_agc_axiw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_w3_warplab_agc_axiw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_w3_warplab_agc_axiw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

