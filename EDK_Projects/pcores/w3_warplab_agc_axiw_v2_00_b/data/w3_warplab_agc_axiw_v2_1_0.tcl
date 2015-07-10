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
    puts "Generating Macros for w3_warplab_agc_axiw driver access ... "

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
    sg_lappend config_table addr_config_table "C_MEMMAP_GRF_D"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_D_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_D_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_D_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GRF_C"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_C_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_C_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_C_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GRF_B"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_B_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_B_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_B_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GRF_A"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_A_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_A_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_A_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_D"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_D_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_D_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_D_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_C"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_C_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_C_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_C_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_B"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_B_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_B_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_B_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_A"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_A_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_A_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_A_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_THRESHOLDS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_THRESHOLDS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_THRESHOLDS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_THRESHOLDS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_T_DB"
    sg_lappend config_table xparam_config_table "C_MEMMAP_T_DB_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_T_DB_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_T_DB_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_SRESET_IN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SRESET_IN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SRESET_IN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_SRESET_IN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AGC_EN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PACKET_IN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PACKET_IN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PACKET_IN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PACKET_IN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_MRESET_IN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_MRESET_IN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_MRESET_IN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_MRESET_IN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_INIT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_INIT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_INIT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_INIT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_DCO_TIMING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_TIMING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_TIMING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_TIMING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AVG_LEN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AVG_LEN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AVG_LEN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AVG_LEN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AGC_TRIGGER_DELAY"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_TRIGGER_DELAY_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_TRIGGER_DELAY_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_TRIGGER_DELAY_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AGC_EN_GLOBAL"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_GLOBAL_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_GLOBAL_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_GLOBAL_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_ADJ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_ADJ_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_ADJ_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_ADJ_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "W3_WARPLAB_AGC_AXIW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "W3_WARPLAB_AGC_AXIW" ${addr_config_table}
    # generate w3_warplab_agc_axiw_g.c
    eval xdefine_config_file $drv_handle "w3_warplab_agc_axiw_g.c" "W3_WARPLAB_AGC_AXIW" ${config_table}
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
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_w3_warplab_agc_axiw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_w3_warplab_agc_axiw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_w3_warplab_agc_axiw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_w3_warplab_agc_axiw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_w3_warplab_agc_axiw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_w3_warplab_agc_axiw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_w3_warplab_agc_axiw_getshmem"

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
