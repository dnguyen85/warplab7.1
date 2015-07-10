////////////////////////////////////////////////////////////////////////////////
// File   :	wl_baseband.h
// Authors:	Chris Hunter (chunter [at] mangocomm.com)
//			Patrick Murphy (murphpo [at] mangocomm.com)
// License:	Copyright 2013, Mango Communications. All rights reserved.
//			Distributed under the WARP license  (http://warpproject.org/license)
////////////////////////////////////////////////////////////////////////////////

#include "wl_common.h"
#include <xparameters.h>

#ifndef WL_BASEBAND_H_
#define WL_BASEBAND_H_

//Command IDs (must match the CMD_ properties in wl_baseband_buffers.m)
#define BB_AGC_STATE		30
#define BB_AGC_THRESH		31
#define BB_AGC_TARGET		32
#define BB_AGC_NOISE_EST	33
#define BB_AGC_DCO_EN_DIS	34
#define BB_AGC_TRIG_DELAY	35
#define BB_AGC_RESET		36
#define BB_AGC_DONE_ADDR	37
#define BB_TX_DELAY			1
#define BB_TX_LENGTH		2
#define BB_TX_MODE			3
#define BB_TX_BUFF_EN		4
#define BB_RX_BUFF_EN		5
#define BB_TXRX_BUFF_DIS	6
#define BB_WRITE_IQ			7
#define BB_READ_IQ			8
#define BB_READ_RSSI		9
#define BB_RX_LENGTH		10

#define BB_A 0x1
#define BB_B 0x2
#define BB_C 0x4
#define BB_D 0x8

#define BYTES_PER_SAMP 4

typedef u32 wl_samp;

//5: [cmdID,len,buffSel,pktIndex,startOffset]
//#define wl_getNumSamps(x) (x>>2)-5

#define SAMPHDR_FLAG_CHKSUMRESET	0x1

typedef struct{
	u16 buffSel;
	u8  flags;
	u8  reserved;
	u32 startSamp;
	u32 numSamp;
} wl_bb_sampHdr;

//defines for sample buffer addresses- renamed from XPAR* here for easier maintanecnce
#define WARPLAB_IQ_TX_BUFFA XPAR_WARPLAB_BUFFERS_MEMMAP_RFA_IQ_TX_BUFFER
#define WARPLAB_IQ_TX_BUFFB XPAR_WARPLAB_BUFFERS_MEMMAP_RFB_IQ_TX_BUFFER
#define WARPLAB_IQ_TX_BUFFC XPAR_WARPLAB_BUFFERS_MEMMAP_RFC_IQ_TX_BUFFER
#define WARPLAB_IQ_TX_BUFFD XPAR_WARPLAB_BUFFERS_MEMMAP_RFD_IQ_TX_BUFFER

#define WARPLAB_IQ_RX_BUFFA XPAR_WARPLAB_BUFFERS_MEMMAP_RFA_IQ_RX_BUFFER
#define WARPLAB_IQ_RX_BUFFB XPAR_WARPLAB_BUFFERS_MEMMAP_RFB_IQ_RX_BUFFER
#define WARPLAB_IQ_RX_BUFFC XPAR_WARPLAB_BUFFERS_MEMMAP_RFC_IQ_RX_BUFFER
#define WARPLAB_IQ_RX_BUFFD XPAR_WARPLAB_BUFFERS_MEMMAP_RFD_IQ_RX_BUFFER


#define WARPLAB_RSSI_BUFFA XPAR_WARPLAB_BUFFERS_MEMMAP_RFA_RSSI_BUFFER
#define WARPLAB_RSSI_BUFFB XPAR_WARPLAB_BUFFERS_MEMMAP_RFB_RSSI_BUFFER
#define WARPLAB_RSSI_BUFFC XPAR_WARPLAB_BUFFERS_MEMMAP_RFC_RSSI_BUFFER
#define WARPLAB_RSSI_BUFFD XPAR_WARPLAB_BUFFERS_MEMMAP_RFD_RSSI_BUFFER

#define warplab_buffers_WriteReg_TxDelay(data) XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_TXDELAY, data)
#define warplab_buffers_WriteReg_TxEn(rfSel) (XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_TX_BUFF_EN, \
											 (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_TX_BUFF_EN)&(~rfSel)) | \
											 (rfSel)))
#define warplab_buffers_WriteReg_RxEn(rfSel) (XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_RX_BUFF_EN, \
											 (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RX_BUFF_EN)&(~rfSel)) | \
											 (rfSel)))
#define warplab_buffers_WriteReg_TxRxDis(rfSel) (XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_RX_BUFF_EN, \
											 (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RX_BUFF_EN)&(~rfSel))))

#define warplab_buffers_WriteReg_TxLength(data) XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_TXLENGTH, data)
#define warplab_buffers_WriteReg_RxLength(data) XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_RXLENGTH, data)

//Masks for CONFIG register
#define WL_BUFFERS_CFG_REG_SW_TRIG		0x001
//#define WL_BUFFERS_CFG_REG_HW_TRIG_EN	0x002
#define WL_BUFFERS_CFG_REG_CONT_TX		0x004
#define WL_BUFFERS_CFG_REG_STOP_TX		0x008
#define WL_BUFFERS_CFG_REG_AGC_IQ_SEL	0x010
#define WL_BUFFERS_CFG_REG_AGC_TRIG_EN	0x020
#define WL_BUFFERS_CFG_REG_BYTE_ORDER	0x040
#define WL_BUFFERS_CFG_REG_RSSI_CLK_SEL	0x180

#define warplab_buffers_ConfigReg_Set(mask) XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG, (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG) | (mask)))
#define warplab_buffers_ConfigReg_SetRSSIClk(val) XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG, ((XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG) & (~(WL_BUFFERS_CFG_REG_RSSI_CLK_SEL))) | ((val<<7)&WL_BUFFERS_CFG_REG_RSSI_CLK_SEL)))
#define warplab_buffers_ConfigReg_Clear(mask) XIo_Out32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG, (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG) & (~(mask))))
#define warplab_buffers_ReadReg_Config() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_CONFIG)

#define WL_BUFFERS_STATUS_REG_TX_RUNNING	0x1
#define WL_BUFFERS_STATUS_REG_RX_RUNNING	0x2

#define warplab_buffers_ReadReg_Status() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_STATUS)

#define warplab_buffers_ReadReg_TxDelay() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_TXDELAY)
#define warplab_buffers_ReadReg_CaptOffset() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_CAPTOFFSET)
#define warplab_buffers_ReadReg_CaptureDone() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_CAPTUREDONE)
#define warplab_buffers_ReadReg_TransMode() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_TRANSMODE)
#define warplab_buffers_ReadReg_TxLength() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_TXLENGTH)
#define warplab_buffers_ReadReg_RxLength() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RXLENGTH)
#define warplab_buffers_ReadReg_MGC_AGC_SEL() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_MGC_AGC_SEL)
#define warplab_buffers_ReadReg_DCO_EN_SEL() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_DCO_EN_SEL)
#define warplab_buffers_ReadReg_AGCDoneAddr() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_AGCDONEADDR)
#define warplab_buffers_ReadReg_BuffSizes() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_BUFF_SIZES)
#define warplab_buffers_ReadReg_DesignVer() XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_DESIGN_VER)

#define warplab_buffers_ReadReg_RFA_AGCDoneRSSI() (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RFAB_AGCDONERSSI) & 0x3FF)
#define warplab_buffers_ReadReg_RFB_AGCDoneRSSI() ((XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RFAB_AGCDONERSSI) & 0x3FF0000)>>16)
#define warplab_buffers_ReadReg_RFC_AGCDoneRSSI() (XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RFCD_AGCDONERSSI) & 0x3FF)
#define warplab_buffers_ReadReg_RFD_AGCDoneRSSI() ((XIo_In32(XPAR_WARPLAB_BUFFERS_MEMMAP_RFCD_AGCDONERSSI) & 0x3FF0000)>>16)


int baseband_processCmd(const wl_cmdHdr* cmdHdr,const void* cmdArgs, wl_respHdr* respHdr,void* respArgs, void* pktSrc);
int baseband_init();
unsigned int baseband_updateChecksum(unsigned short int currCheck, unsigned char reset );

void warplab_agc_init();
void warplab_agc_setDCO(unsigned int AGCstate);
void warplab_agc_reset();
inline void warplab_agc_setNoiseEstimate(short int noiseEst);



#endif /* WL_BASEBAND_H_ */
