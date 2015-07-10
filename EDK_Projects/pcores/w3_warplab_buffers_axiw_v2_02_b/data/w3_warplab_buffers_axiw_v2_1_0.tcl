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
    puts "Generating Macros for w3_warplab_buffers_axiw driver access ... "

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
    sg_lappend config_table addr_config_table "C_MEMMAP_BUFF_SIZES"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BUFF_SIZES_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BUFF_SIZES_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_BUFF_SIZES_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_DESIGN_VER"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DESIGN_VER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DESIGN_VER_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_DESIGN_VER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_STATUS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_STATUS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_STATUS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_STATUS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFCD_AGCDONERSSI"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFCD_AGCDONERSSI_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFCD_AGCDONERSSI_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFCD_AGCDONERSSI_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFAB_AGCDONERSSI"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFAB_AGCDONERSSI_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFAB_AGCDONERSSI_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFAB_AGCDONERSSI_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AGCDONEADDR"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGCDONEADDR_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGCDONEADDR_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AGCDONEADDR_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXDELAY"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXDELAY_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXDELAY_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXDELAY_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_BUFF_EN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BUFF_EN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BUFF_EN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BUFF_EN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_CONFIG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CONFIG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CONFIG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_CONFIG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_BUFF_EN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_BUFF_EN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_BUFF_EN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_BUFF_EN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RXLENGTH"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RXLENGTH_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RXLENGTH_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RXLENGTH_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXLENGTH"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXLENGTH_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXLENGTH_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXLENGTH_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_TX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFD_RSSI_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFD_RSSI_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFD_RSSI_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_RSSI_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_RSSI_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_RSSI_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_RSSI_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFD_IQ_RX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_TX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFC_RSSI_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFC_RSSI_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFC_RSSI_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_RSSI_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_RSSI_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_RSSI_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_RSSI_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFC_IQ_RX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_TX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFB_RSSI_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFB_RSSI_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFB_RSSI_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_RSSI_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_RSSI_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_RSSI_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_RSSI_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFB_IQ_RX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_TX_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFA_RSSI_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFA_RSSI_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFA_RSSI_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_RSSI_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_RSSI_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_RSSI_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_RSSI_BUFFER_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RFA_IQ_RX_BUFFER_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "W3_WARPLAB_BUFFERS_AXIW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "W3_WARPLAB_BUFFERS_AXIW" ${addr_config_table}
    # generate w3_warplab_buffers_axiw_g.c
    eval xdefine_config_file $drv_handle "w3_warplab_buffers_axiw_g.c" "W3_WARPLAB_BUFFERS_AXIW" ${config_table}
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
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_w3_warplab_buffers_axiw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_w3_warplab_buffers_axiw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_w3_warplab_buffers_axiw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_w3_warplab_buffers_axiw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_w3_warplab_buffers_axiw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_w3_warplab_buffers_axiw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_w3_warplab_buffers_axiw_getshmem"

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
