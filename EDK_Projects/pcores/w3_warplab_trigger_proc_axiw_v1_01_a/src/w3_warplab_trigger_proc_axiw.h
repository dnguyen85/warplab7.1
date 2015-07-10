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

#ifndef __XL_W3_WARPLAB_TRIGGER_PROC_AXIW_H__
#define __XL_W3_WARPLAB_TRIGGER_PROC_AXIW_H__

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
    uint32_t CORE_INFO;
    uint32_t CORE_INFO_n_bits;
    uint32_t CORE_INFO_bin_pt;
    // uint32_t CORE_INFO_attr;
    uint32_t TRIG_OUT;
    uint32_t TRIG_OUT_n_bits;
    uint32_t TRIG_OUT_bin_pt;
    // uint32_t TRIG_OUT_attr;
    uint32_t RSSI_PKT_DET_CONFIG;
    uint32_t RSSI_PKT_DET_CONFIG_n_bits;
    uint32_t RSSI_PKT_DET_CONFIG_bin_pt;
    // uint32_t RSSI_PKT_DET_CONFIG_attr;
    uint32_t TRIG_CONF_OUT5;
    uint32_t TRIG_CONF_OUT5_n_bits;
    uint32_t TRIG_CONF_OUT5_bin_pt;
    // uint32_t TRIG_CONF_OUT5_attr;
    uint32_t TRIG_CONF_OUT4;
    uint32_t TRIG_CONF_OUT4_n_bits;
    uint32_t TRIG_CONF_OUT4_bin_pt;
    // uint32_t TRIG_CONF_OUT4_attr;
    uint32_t TRIG_CONF_OUT3;
    uint32_t TRIG_CONF_OUT3_n_bits;
    uint32_t TRIG_CONF_OUT3_bin_pt;
    // uint32_t TRIG_CONF_OUT3_attr;
    uint32_t TRIG_CONF_OUT2;
    uint32_t TRIG_CONF_OUT2_n_bits;
    uint32_t TRIG_CONF_OUT2_bin_pt;
    // uint32_t TRIG_CONF_OUT2_attr;
    uint32_t TRIG_CONF_OUT1;
    uint32_t TRIG_CONF_OUT1_n_bits;
    uint32_t TRIG_CONF_OUT1_bin_pt;
    // uint32_t TRIG_CONF_OUT1_attr;
    uint32_t TRIG_CONF_OUT0;
    uint32_t TRIG_CONF_OUT0_n_bits;
    uint32_t TRIG_CONF_OUT0_bin_pt;
    // uint32_t TRIG_CONF_OUT0_attr;
    uint32_t RSSI_PKT_DET_DURATIONS;
    uint32_t RSSI_PKT_DET_DURATIONS_n_bits;
    uint32_t RSSI_PKT_DET_DURATIONS_bin_pt;
    // uint32_t RSSI_PKT_DET_DURATIONS_attr;
    uint32_t RSSI_PKT_DET_THRESHOLDS;
    uint32_t RSSI_PKT_DET_THRESHOLDS_n_bits;
    uint32_t RSSI_PKT_DET_THRESHOLDS_bin_pt;
    // uint32_t RSSI_PKT_DET_THRESHOLDS_attr;
    uint32_t TRIG_CONF_INBANK0;
    uint32_t TRIG_CONF_INBANK0_n_bits;
    uint32_t TRIG_CONF_INBANK0_bin_pt;
    // uint32_t TRIG_CONF_INBANK0_attr;
    uint32_t TRIG_CONF_INBANK1;
    uint32_t TRIG_CONF_INBANK1_n_bits;
    uint32_t TRIG_CONF_INBANK1_bin_pt;
    // uint32_t TRIG_CONF_INBANK1_attr;
    uint32_t PktOps0;
    // uint32_t PktOps0_grant;
    // uint32_t PktOps0_req;
    uint32_t PktOps0_n_bits;
    uint32_t PktOps0_bin_pt;
    uint32_t PktOps0_depth;
    // uint32_t PktOps0_attr;
    uint32_t PktTemplate0;
    // uint32_t PktTemplate0_grant;
    // uint32_t PktTemplate0_req;
    uint32_t PktTemplate0_n_bits;
    uint32_t PktTemplate0_bin_pt;
    uint32_t PktTemplate0_depth;
    // uint32_t PktTemplate0_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} W3_WARPLAB_TRIGGER_PROC_AXIW_Config;

extern W3_WARPLAB_TRIGGER_PROC_AXIW_Config W3_WARPLAB_TRIGGER_PROC_AXIW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_w3_warplab_trigger_proc_axiw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_w3_warplab_trigger_proc_axiw_release(xc_iface_t **iface) ;
xc_status_t xc_w3_warplab_trigger_proc_axiw_open(xc_iface_t *iface);
xc_status_t xc_w3_warplab_trigger_proc_axiw_close(xc_iface_t *iface);
xc_status_t xc_w3_warplab_trigger_proc_axiw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_w3_warplab_trigger_proc_axiw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_w3_warplab_trigger_proc_axiw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

