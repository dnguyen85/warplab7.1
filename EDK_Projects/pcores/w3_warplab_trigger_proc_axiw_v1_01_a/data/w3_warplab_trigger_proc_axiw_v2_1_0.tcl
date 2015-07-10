##############################################################################
##
## ***************************************************************************
## **                                                                       **
## ** Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.            **
## **                                                                       **
## ** You may copy and modify these files for your own internal use solely  **
## ** with Xilinx programmable logic devices and Xilinx EDK system or       **
## ** create IP modules solely for Xilinx programmable logic devices and    **
## ** Xilinx EDK system. No rights are granted to distribute any files      **
## ** unless they are distributed in Xilinx programmable logic devices.     **
## **                                                                       **
## ***************************************************************************
##
##############################################################################

proc generate {drv_handle} {
    puts "Generating Macros for w3_warplab_trigger_proc_axiw driver access ... "

    # initialize
    lappend config_table
    lappend addr_config_table
    lappend xparam_config_table

    # hardware version
    lappend config_table "C_XC_VERSION"
    # Low-level function names
    lappend config_table "C_XC_CREATE" "C_XC_RELEASE" "C_XC_OPEN" "C_XC_CLOSE" "C_XC_READ" "C_XC_WRITE" "C_XC_GET_SHMEM"
    # Optional parameters
    # (empty)

    # Memory map information
    sg_lappend config_table addr_config_table "C_MEMMAP_CORE_INFO"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CORE_INFO_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CORE_INFO_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_CORE_INFO_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_OUT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_OUT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_OUT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_OUT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RSSI_PKT_DET_CONFIG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_CONFIG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_CONFIG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_CONFIG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_OUT5"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT5_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT5_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT5_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_OUT4"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT4_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT4_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT4_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_OUT3"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT3_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT3_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT3_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_OUT2"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT2_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT2_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT2_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_OUT1"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT1_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT1_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT1_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_OUT0"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT0_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_OUT0_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RSSI_PKT_DET_DURATIONS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_DURATIONS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_DURATIONS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_DURATIONS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RSSI_PKT_DET_THRESHOLDS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_THRESHOLDS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_THRESHOLDS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RSSI_PKT_DET_THRESHOLDS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_INBANK0"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_INBANK0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_INBANK0_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_INBANK0_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TRIG_CONF_INBANK1"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_INBANK1_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_INBANK1_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TRIG_CONF_INBANK1_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTOPS0"
    # sg_lappend config_table addr_config_table "C_MEMMAP_PKTOPS0_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_PKTOPS0_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTOPS0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTOPS0_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTOPS0_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTOPS0_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTTEMPLATE0"
    # sg_lappend config_table addr_config_table "C_MEMMAP_PKTTEMPLATE0_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_PKTTEMPLATE0_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTTEMPLATE0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTTEMPLATE0_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTTEMPLATE0_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTTEMPLATE0_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "W3_WARPLAB_TRIGGER_PROC_AXIW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "W3_WARPLAB_TRIGGER_PROC_AXIW" ${addr_config_table}
    # generate w3_warplab_trigger_proc_axiw_g.c
    eval xdefine_config_file $drv_handle "w3_warplab_trigger_proc_axiw_g.c" "W3_WARPLAB_TRIGGER_PROC_AXIW" ${config_table}
}

proc sg_xdefine_include_file {drv_handle file_name drv_string args} {
    # Open include file
    set file_handle [xopen_include_file $file_name]

    # Get all peripherals connected to this driver
    set periphs [xget_periphs $drv_handle] 

    # Print all parameters for all peripherals
    set device_id 0
    foreach periph ${periphs} {
        # base_addr of the peripheral
        set base_addr [xget_param_value ${periph} "C_BASEADDR"]

        puts ${file_handle} ""
        puts ${file_handle} "/* Definitions (address parameters) for peripheral [string toupper [xget_hw_name $periph]] */"
        foreach arg ${args} {
            set value [xget_param_value ${periph} ${arg}]
            if {[llength ${value}] == 0} {
                set value 0
            }
            set value [expr ${base_addr} + ${value}]
            set value_str [xformat_address_string ${value}]
            puts ${file_handle} "#define [xget_name ${periph} ${arg}] ${value_str}"
        }

        puts $file_handle "/* software driver settings for peripheral [string toupper [xget_hw_name $periph]] */"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_VERSION   1"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_w3_warplab_trigger_proc_axiw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_w3_warplab_trigger_proc_axiw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_w3_warplab_trigger_proc_axiw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_w3_warplab_trigger_proc_axiw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_w3_warplab_trigger_proc_axiw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_w3_warplab_trigger_proc_axiw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_w3_warplab_trigger_proc_axiw_getshmem"

        puts $file_handle ""
    }		
    puts $file_handle "\n/******************************************************************/\n"
    close $file_handle
}

proc sg_lappend {required_config_table {extra_config_table ""} args} {
    upvar ${required_config_table} config_table_1
    if {[string length ${extra_config_table}] != 0} {
        upvar ${extra_config_table} config_table_2
    }

    foreach value ${args} {
        eval [list lappend config_table_1 ${value}]
        if {[string length ${extra_config_table}] != 0} {
            lappend config_table_2 ${value}
        }
    }
}
