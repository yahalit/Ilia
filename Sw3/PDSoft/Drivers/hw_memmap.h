//###########################################################################
//
// FILE:    hw_memmap.h
//
// TITLE:   Macros defining the memory map of the C28x.
//
//###########################################################################
// $TI Release: F2837xS Support Library v191 $
// $Release Date: Fri Mar 11 15:58:35 CST 2016 $
// $Copyright: Copyright (C) 2014-2016 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

#ifndef __HW_MEMMAP_H__
#define __HW_MEMMAP_H__

//*****************************************************************************
//
// The following are defines for the base address of the memories and
// peripherals.
//
//*****************************************************************************

#define USB0_BASE               0x00040000U  // USB 0 Controller

#define ADCA_RESULT_BASE        0x00000B00U   // ADC-A Result
#define ADCB_RESULT_BASE        0x00000B20U   // ADC-B Result
#define ADCC_RESULT_BASE        0x00000B40U   // ADC-C Result
#define ADCD_RESULT_BASE        0x00000B60U   // ADC-D Result

#define ADCA_BASE               0x00007400U   // ADC-A
#define ADCB_BASE               0x00007480U   // ADC-B
#define ADCC_BASE               0x00007500U   // ADC-C
#define ADCD_BASE               0x00007580U   // ADC-D

#define CMPSS1_BASE             0x00005C80U   // CMPSS-1
#define CMPSS2_BASE             0x00005CA0U   // CMPSS-2
#define CMPSS3_BASE             0x00005CC0U   // CMPSS-3
#define CMPSS4_BASE             0x00005CE0U   // CMPSS-4
#define CMPSS5_BASE             0x00005D00U   // CMPSS-5
#define CMPSS6_BASE             0x00005D20U   // CMPSS-6
#define CMPSS7_BASE             0x00005D40U   // CMPSS-7
#define CMPSS8_BASE             0x00005D60U   // CMPSS-8

#define I2CA_BASE               0x00007300U   // I2C-A
#define I2CB_BASE               0x00007340U   // I2C-B

#define UARTA_BASE              0x00007200U   // SCI-A
#define UARTB_BASE              0x00007210U   // SCI-B
#define UARTC_BASE              0x00007220U   // SCI-C
#define UARTD_BASE              0x00007230U   // SCI-D

#define EQEP1_BASE              0x00005100U   // Enhanced EQEP-1
#define EQEP2_BASE              0x00005140U   // Enhanced EQEP-2
#define EQEP3_BASE              0x00005180U   // Enhanced EQEP-3

#define SPIA_BASE               0x00006100U   // SPI-A
#define SPIB_BASE               0x00006110U   // SPI-B
#define SPIC_BASE               0x00006120U   // SPI-C

#define CANA_BASE               0x00048000U   // CAN-A
#define CANB_BASE               0x0004A000U   // CAN-B
#define CANA_MSG_RAM            0x00049000U
#define CANB_MSG_RAM            0x0004B000U

#endif // __HW_MEMMAP_H__

