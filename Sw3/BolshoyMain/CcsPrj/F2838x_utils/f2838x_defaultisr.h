//###########################################################################
//
// FILE:   f2838x_defaultisr.h
//
// TITLE:  F2838x Device Default Interrupt Service Routines Definitions
//
//###########################################################################
// $TI Release: F2838x Support Library v2.01.00.00 $
// $Release Date: Mon Dec 23 17:43:44 IST 2019 $
// $Copyright:
// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
//
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions 
// are met:
// 
//   Redistributions of source code must retain the above copyright 
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the 
//   documentation and/or other materials provided with the   
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//###########################################################################

#ifndef F2838x_DEFAULT_ISR_H
#define F2838x_DEFAULT_ISR_H
#ifdef __cplusplus
extern "C" {
#endif

//
// Default Interrupt Service Routine Declarations:
// The following function prototypes are for the
// default ISR routines used with the default PIE vector table.
// This default vector table is found in the F28X7X_pievect.h
// file.
//
interrupt void TIMER1_ISR(void);                     // CPU Timer 1 Interrupt
interrupt void TIMER2_ISR(void);                     // CPU Timer 2 Interrupt
interrupt void DATALOG_ISR(void);                    // Datalogging Interrupt
interrupt void RTOS_ISR(void);                       // RTOS Interrupt
interrupt void EMU_ISR(void);                        // Emulation Interrupt
interrupt void NMI_ISR(void);                        // Non-Maskable Interrupt
interrupt void ILLEGAL_ISR(void);                    // Illegal Operation Trap
interrupt void USER1_ISR(void);                      // User Defined Trap 1
interrupt void USER2_ISR(void);                      // User Defined Trap 2
interrupt void USER3_ISR(void);                      // User Defined Trap 3
interrupt void USER4_ISR(void);                      // User Defined Trap 4
interrupt void USER5_ISR(void);                      // User Defined Trap 5
interrupt void USER6_ISR(void);                      // User Defined Trap 6
interrupt void USER7_ISR(void);                      // User Defined Trap 7
interrupt void USER8_ISR(void);                      // User Defined Trap 8
interrupt void USER9_ISR(void);                      // User Defined Trap 9
interrupt void USER10_ISR(void);                     // User Defined Trap 10
interrupt void USER11_ISR(void);                     // User Defined Trap 11
interrupt void USER12_ISR(void);                     // User Defined Trap 12
interrupt void ADCA1_ISR(void);                      // 1.1 - ADCA Interrupt 1
interrupt void ADCB1_ISR(void);                      // 1.2 - ADCB Interrupt 1
interrupt void ADCC1_ISR(void);                      // 1.3 - ADCC Interrupt 1
interrupt void XINT1_ISR(void);                      // 1.4 - XINT1 Interrupt
interrupt void XINT2_ISR(void);                      // 1.5 - XINT2 Interrupt
interrupt void ADCD1_ISR(void);                      // 1.6 - ADCD Interrupt 1
interrupt void TIMER0_ISR(void);                     // 1.7 - Timer 0 Interrupt
interrupt void WAKE_ISR(void);                       // 1.8 - Standby and Halt Wakeup Interrupt
interrupt void EPWM1_TZ_ISR(void);                   // 2.1 - ePWM1 Trip Zone Interrupt
interrupt void EPWM2_TZ_ISR(void);                   // 2.2 - ePWM2 Trip Zone Interrupt
interrupt void EPWM3_TZ_ISR(void);                   // 2.3 - ePWM3 Trip Zone Interrupt
interrupt void EPWM4_TZ_ISR(void);                   // 2.4 - ePWM4 Trip Zone Interrupt
interrupt void EPWM5_TZ_ISR(void);                   // 2.5 - ePWM5 Trip Zone Interrupt
interrupt void EPWM6_TZ_ISR(void);                   // 2.6 - ePWM6 Trip Zone Interrupt
interrupt void EPWM7_TZ_ISR(void);                   // 2.7 - ePWM7 Trip Zone Interrupt
interrupt void EPWM8_TZ_ISR(void);                   // 2.8 - ePWM8 Trip Zone Interrupt
interrupt void EPWM1_ISR(void);                      // 3.1 - ePWM1 Interrupt
interrupt void EPWM2_ISR(void);                      // 3.2 - ePWM2 Interrupt
interrupt void EPWM3_ISR(void);                      // 3.3 - ePWM3 Interrupt
interrupt void EPWM4_ISR(void);                      // 3.4 - ePWM4 Interrupt
interrupt void EPWM5_ISR(void);                      // 3.5 - ePWM5 Interrupt
interrupt void EPWM6_ISR(void);                      // 3.6 - ePWM6 Interrupt
interrupt void EPWM7_ISR(void);                      // 3.7 - ePWM7 Interrupt
interrupt void EPWM8_ISR(void);                      // 3.8 - ePWM8 Interrupt
interrupt void ECAP1_ISR(void);                      // 4.1 - eCAP1 Interrupt
interrupt void ECAP2_ISR(void);                      // 4.2 - eCAP2 Interrupt
interrupt void ECAP3_ISR(void);                      // 4.3 - eCAP3 Interrupt
interrupt void ECAP4_ISR(void);                      // 4.4 - eCAP4 Interrupt
interrupt void ECAP5_ISR(void);                      // 4.5 - eCAP5 Interrupt
interrupt void ECAP6_ISR(void);                      // 4.6 - eCAP6 Interrupt
interrupt void ECAP7_ISR(void);                      // 4.7 - eCAP7 Interrupt
interrupt void EQEP1_ISR(void);                      // 5.1 - eQEP1 Interrupt
interrupt void EQEP2_ISR(void);                      // 5.2 - eQEP2 Interrupt
interrupt void EQEP3_ISR(void);                      // 5.3 - eQEP3 Interrupt
interrupt void CLB1_ISR(void);                       // 5.5 - CLB1 (Reconfigurable Logic) Interrupt
interrupt void CLB2_ISR(void);                       // 5.6 - CLB2 (Reconfigurable Logic) Interrupt
interrupt void CLB3_ISR(void);                       // 5.7 - CLB3 (Reconfigurable Logic) Interrupt
interrupt void CLB4_ISR(void);                       // 5.8 - CLB4 (Reconfigurable Logic) Interrupt
interrupt void SPIA_RX_ISR(void);                    // 6.1 - SPIA Receive Interrupt
interrupt void SPIA_TX_ISR(void);                    // 6.2 - SPIA Transmit Interrupt
interrupt void SPIB_RX_ISR(void);                    // 6.3 - SPIB Receive Interrupt
interrupt void SPIB_TX_ISR(void);                    // 6.4 - SPIB Transmit Interrupt
interrupt void MCBSPA_RX_ISR(void);                  // 6.5 - McBSPA Receive Interrupt
interrupt void MCBSPA_TX_ISR(void);                  // 6.6 - McBSPA Transmit Interrupt
interrupt void MCBSPB_RX_ISR(void);                  // 6.7 - McBSPB Receive Interrupt
interrupt void MCBSPB_TX_ISR(void);                  // 6.8 - McBSPB Transmit Interrupt
interrupt void DMA_CH1_ISR(void);                    // 7.1 - DMA Channel 1 Interrupt
interrupt void DMA_CH2_ISR(void);                    // 7.2 - DMA Channel 2 Interrupt
interrupt void DMA_CH3_ISR(void);                    // 7.3 - DMA Channel 3 Interrupt
interrupt void DMA_CH4_ISR(void);                    // 7.4 - DMA Channel 4 Interrupt
interrupt void DMA_CH5_ISR(void);                    // 7.5 - DMA Channel 5 Interrupt
interrupt void DMA_CH6_ISR(void);                    // 7.6 - DMA Channel 6 Interrupt
interrupt void I2CA_ISR(void);                       // 8.1 - I2CA Interrupt 1
interrupt void I2CA_FIFO_ISR(void);                  // 8.2 - I2CA Interrupt 2
interrupt void I2CB_ISR(void);                       // 8.3 - I2CB Interrupt 1
interrupt void I2CB_FIFO_ISR(void);                  // 8.4 - I2CB Interrupt 2
interrupt void SCIC_RX_ISR(void);                    // 8.5 - SCIC Receive Interrupt
interrupt void SCIC_TX_ISR(void);                    // 8.6 - SCIC Transmit Interrupt
interrupt void SCID_RX_ISR(void);                    // 8.7 - SCID Receive Interrupt
interrupt void SCID_TX_ISR(void);                    // 8.8 - SCID Transmit Interrupt
interrupt void SCIA_RX_ISR(void);                    // 9.1 - SCIA Receive Interrupt
interrupt void SCIA_TX_ISR(void);                    // 9.2 - SCIA Transmit Interrupt
interrupt void SCIB_RX_ISR(void);                    // 9.3 - SCIB Receive Interrupt
interrupt void SCIB_TX_ISR(void);                    // 9.4 - SCIB Transmit Interrupt
interrupt void CANA0_ISR(void);                      // 9.5 - CANA Interrupt 0
interrupt void CANA1_ISR(void);                      // 9.6 - CANA Interrupt 1
interrupt void CANB0_ISR(void);                      // 9.7 - CANB Interrupt 0
interrupt void CANB1_ISR(void);                      // 9.8 - CANB Interrupt 1
interrupt void ADCA_EVT_ISR(void);                   // 10.1 - ADCA Event Interrupt
interrupt void ADCA2_ISR(void);                      // 10.2 - ADCA Interrupt 2
interrupt void ADCA3_ISR(void);                      // 10.3 - ADCA Interrupt 3
interrupt void ADCA4_ISR(void);                      // 10.4 - ADCA Interrupt 4
interrupt void ADCB_EVT_ISR(void);                   // 10.5 - ADCB Event Interrupt
interrupt void ADCB2_ISR(void);                      // 10.6 - ADCB Interrupt 2
interrupt void ADCB3_ISR(void);                      // 10.7 - ADCB Interrupt 3
interrupt void ADCB4_ISR(void);                      // 10.8 - ADCB Interrupt 4
interrupt void CLA1_1_ISR(void);                     // 11.1 - CLA1 Interrupt 1
interrupt void CLA1_2_ISR(void);                     // 11.2 - CLA1 Interrupt 2
interrupt void CLA1_3_ISR(void);                     // 11.3 - CLA1 Interrupt 3
interrupt void CLA1_4_ISR(void);                     // 11.4 - CLA1 Interrupt 4
interrupt void CLA1_5_ISR(void);                     // 11.5 - CLA1 Interrupt 5
interrupt void CLA1_6_ISR(void);                     // 11.6 - CLA1 Interrupt 6
interrupt void CLA1_7_ISR(void);                     // 11.7 - CLA1 Interrupt 7
interrupt void CLA1_8_ISR(void);                     // 11.8 - CLA1 Interrupt 8
interrupt void XINT3_ISR(void);                      // 12.1 - XINT3 Interrupt
interrupt void XINT4_ISR(void);                      // 12.2 - XINT4 Interrupt
interrupt void XINT5_ISR(void);                      // 12.3 - XINT5 Interrupt
interrupt void PBIST_ISR(void);                      // 12.4 - PBIST Interrupt
interrupt void FMC_ISR(void);                        // 12.5 - Flash Wrapper Operation Done Interrupt
interrupt void FPU_OFLOW_ISR(void);                  // 12.7 - FPU Overflow Interrupt
interrupt void FPU_UFLOW_ISR(void);                  // 12.8 - FPU Underflow Interrupt
interrupt void I2CA_HIGH_ISR(void);                  // 1.9 - I2CA Interrupt
interrupt void SYS_ERR_ISR(void);                    // 1.10 - System error interrupt
interrupt void ECATSYNC0_ISR(void);                  // 1.11 - ETHERCAT SYNC0 interrupt
interrupt void ECAT_ISR(void);                       // 1.12 - ETHERCAT main interrupt
interrupt void CIPC0_ISR(void);                      // 1.13 - IPC Interrupt 0
interrupt void CIPC1_ISR(void);                      // 1.14 - IPC Interrupt 1
interrupt void CIPC2_ISR(void);                      // 1.15 - IPC Interrupt 2
interrupt void CIPC3_ISR(void);                      // 1.16 - IPC Interrupt 3
interrupt void EPWM9_TZ_ISR(void);                   // 2.9 - ePWM9 Trip Zone Interrupt
interrupt void EPWM10_TZ_ISR(void);                  // 2.10 - ePWM10 Trip Zone Interrupt
interrupt void EPWM11_TZ_ISR(void);                  // 2.11 - ePWM11 Trip Zone Interrupt
interrupt void EPWM12_TZ_ISR(void);                  // 2.12 - ePWM12 Trip Zone Interrupt
interrupt void EPWM13_TZ_ISR(void);                  // 2.13 - ePWM13 Trip Zone Interrupt
interrupt void EPWM14_TZ_ISR(void);                  // 2.14 - ePWM14 Trip Zone Interrupt
interrupt void EPWM15_TZ_ISR(void);                  // 2.15 - ePWM15 Trip Zone Interrupt
interrupt void EPWM16_TZ_ISR(void);                  // 2.16 - ePWM16 Trip Zone Interrupt
interrupt void EPWM9_ISR(void);                      // 3.9 - ePWM9 Interrupt
interrupt void EPWM10_ISR(void);                     // 3.10 - ePWM10 Interrupt
interrupt void EPWM11_ISR(void);                     // 3.11 - ePWM11 Interrupt
interrupt void EPWM12_ISR(void);                     // 3.12 - ePWM12 Interrupt
interrupt void EPWM13_ISR(void);                     // 3.13 - ePWM13 Interrupt
interrupt void EPWM14_ISR(void);                     // 3.14 - ePWM14 Interrupt
interrupt void EPWM15_ISR(void);                     // 3.15 - ePWM15 Interrupt
interrupt void EPWM16_ISR(void);                     // 3.16 - ePWM16 Interrupt
interrupt void FSITXA1_ISR(void);                    // 4.9 - FSIA Transmit interrupt 1
interrupt void FSITXA2_ISR(void);                    // 4.10 - FSIA Transmit interrupt 2
interrupt void FSITXB1_ISR(void);                    // 4.11 - FSIB Transmit interrupt 1
interrupt void FSITXB2_ISR(void);                    // 4.12 - FSIB Transmit interrupt 2
interrupt void FSIRXA1_ISR(void);                    // 4.13 - FSIA Receive interrupt 1
interrupt void FSIRXA2_ISR(void);                    // 4.14 - FSIA Receive interrupt 2
interrupt void FSIRXB1_ISR(void);                    // 4.15 - FSIB Receive interrupt 1
interrupt void FSIRXB2_ISR(void);                    // 4.16 - FSIB Receive interrupt 2
interrupt void SDFM1_ISR(void);                      // 5.9 - SD1 Interrupt
interrupt void SDFM2_ISR(void);                      // 5.10 - SD2 Interrupt
interrupt void ECATRSTINTN_ISR(void);                // 5.11 - ETHERCAT RESET OUTinterrupt
interrupt void ECATSYNC1_ISR(void);                  // 5.12 - ETHERCAT SYNC1 interrupt
interrupt void SDFM1DR1_ISR(void);                   // 5.13 - SD1DR1 Interrupt
interrupt void SDFM1DR2_ISR(void);                   // 5.14 - SD1DR2 Interrupt
interrupt void SDFM1DR3_ISR(void);                   // 5.15 - SD1DR3 Interrupt
interrupt void SDFM1DR4_ISR(void);                   // 5.16 - SD1DR4 Interrupt
interrupt void SPIC_RX_ISR(void);                    // 6.9 - SPIC Receive Interrupt
interrupt void SPIC_TX_ISR(void);                    // 6.10 - SPIC Transmit Interrupt
interrupt void SDFM2DR1_ISR(void);                   // 6.13 - SD2DR1 Interrupt
interrupt void SDFM2DR2_ISR(void);                   // 6.14 - SD2DR2 Interrupt
interrupt void SDFM2DR3_ISR(void);                   // 6.15 - SD2DR3 Interrupt
interrupt void SDFM2DR4_ISR(void);                   // 6.16 - SD2DR4 Interrupt
interrupt void FSIRXC1_ISR(void);                    // 7.9 - FSIRXA_INT1 Interrupt
interrupt void FSIRXC2_ISR(void);                    // 7.10 - FSIRXA_INT2 Interrupt
interrupt void FSIRXD1_ISR(void);                    // 7.11 - FSITXA_INT1 Interrupt
interrupt void FSIRXD2_ISR(void);                    // 7.12 - FSITXA_INT2 Interrupt
interrupt void FSIRXE1_ISR(void);                    // 7.13 - FSIRXA_INT1 Interrupt
interrupt void FSIRXE2_ISR(void);                    // 7.14 - FSIRXA_INT2 Interrupt
interrupt void FSIRXF1_ISR(void);                    // 7.15 - FSIF Receive interrupt 1
interrupt void FSIRXF2_ISR(void);                    // 7.16 - FSIF Receive interrupt 2
interrupt void FSIRXG1_ISR(void);                    // 8.9 - FSIG Receive interrupt 1
interrupt void FSIRXG2_ISR(void);                    // 8.10 - FSIG Receive interrupt 2
interrupt void FSIRXH1_ISR(void);                    // 8.11 - FSIH Receive interrupt 1
interrupt void FSIRXH2_ISR(void);                    // 8.12 - FSIH Receive interrupt 2
interrupt void MCANSS0_ISR(void);                    // 9.9 - MCAN Sub-System Interrupt 0
interrupt void MCANSS1_ISR(void);                    // 9.10 - MCAN Sub-System Interrupt 1
interrupt void PMBUSA_ISR(void);                     // 9.13 - PMBUSA Interrupt
interrupt void CM_STATUS_ISR(void);                  // 9.14 - CM Reset Status Interrupt
interrupt void USBA_ISR(void);                       // 9.15 - USBA Interrupt
interrupt void ADCC_EVT_ISR(void);                   // 10.9 - ADCC Event Interrupt
interrupt void ADCC2_ISR(void);                      // 10.10 - ADCC Interrupt 2
interrupt void ADCC3_ISR(void);                      // 10.11 - ADCC Interrupt 3
interrupt void ADCC4_ISR(void);                      // 10.12 - ADCC Interrupt 4
interrupt void ADCD_EVT_ISR(void);                   // 10.13 - ADCD Event Interrupt
interrupt void ADCD2_ISR(void);                      // 10.14 - ADCD Interrupt 2
interrupt void ADCD3_ISR(void);                      // 10.15 - ADCD Interrupt 3
interrupt void ADCD4_ISR(void);                      // 10.16 - ADCD Interrupt 4
interrupt void CMTOCPUXIPC0_ISR(void);               // 11.9 - CM to CPU IPC Interrupt 0
interrupt void CMTOCPUXIPC1_ISR(void);               // 11.10 - CM to CPU IPC Interrupt 1
interrupt void CMTOCPUXIPC2_ISR(void);               // 11.11 - CM to CPU IPC Interrupt 2
interrupt void CMTOCPUXIPC3_ISR(void);               // 11.12 - CM to CPU IPC Interrupt 3
interrupt void CMTOCPUXIPC4_ISR(void);               // 11.13 - CM to CPU IPC Interrupt 4
interrupt void CMTOCPUXIPC5_ISR(void);               // 11.14 - CM to CPU IPC Interrupt 5
interrupt void CMTOCPUXIPC6_ISR(void);               // 11.15 - CM to CPU IPC Interrupt 6
interrupt void CMTOCPUXIPC7_ISR(void);               // 11.16 - CM to CPU IPC Interrupt 7
interrupt void ECAP6_2_ISR(void);                    // 12.10 - eCAP6_2 Interrupt
interrupt void ECAP7_2_ISR(void);                    // 12.11 - eCAP7_2 Interrupt
interrupt void CPUCRC_INT_ISR(void);                 // 12.13 - CPU BGCRC module interrupt
interrupt void CLA1CRC_INT_ISR(void);                // 12.14 - CLA1 BGCRC module interrupt
interrupt void CLA_OVERFLOW_ISR(void);               // 12.15 - CLA Overflow
                                                     //         Interrupt
interrupt void CLA_UNDERFLOW_ISR(void);              // 12.16 - CLA Underflow
                                                     //         Interrupt


interrupt void MCANSS_ECC_CORR_PLS_ISR(void);
interrupt void MCANSS_WAKE_AND_TS_PLS_ISR(void);

interrupt void SPID_RX_ISR(void);
interrupt void SPID_TX_ISR(void);

interrupt void CLA1CRC_INT_ISR(void);
//
// Catch-all for PIE Reserved Locations for testing purposes:
//
interrupt void PIE_RESERVED_ISR(void);              // Reserved ISR
interrupt void EMPTY_ISR(void);                     // Only does a return
interrupt void NOTUSED_ISR(void);                   // Unused ISR
#ifdef __cplusplus
}
#endif  /* extern "C" */

#endif   // end of F2838x_PIEVECT_H definition

//
// End of file
//
