/*
 * Copyright (c) 2020 Texas Instruments Incorporated - http://www.ti.com
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#ifndef BOARD_H
#define BOARD_H

//
// Included Files
//

//#include "driverlib.h"
#include "device.h"

#define GPIO_PIN_EQEP1_A 35
#define GPIO_PIN_EQEP1_B 37
#define GPIO_PIN_EQEP2_A 18
#define GPIO_PIN_EQEP2_B 33
#define GPIO_PIN_FSIRXA_D0 3
#define GPIO_PIN_FSIRXA_CLK 4
#define GPIO_PIN_FSITXA_D0 6
#define GPIO_PIN_FSITXA_CLK 7
#define GPIO_PIN_LINA_RX 29
#define GPIO_PIN_LINB_TX 24
#define GPIO_PIN_MCAN_RX 0
#define GPIO_PIN_MCAN_TX 1
#define GPIO_PIN_GPIO19 19

#define myTILE1_BASE CLB1_BASE

#define myCPUTIMER0_BASE CPUTIMER0_BASE
#define myCPUTIMER1_BASE CPUTIMER1_BASE
#define myCPUTIMER2_BASE CPUTIMER2_BASE

#define myDAC0_BASE DACA_BASE
#define myDAC1_BASE DACB_BASE

#define myEQEP0_BASE EQEP1_BASE
#define myEQEP1_BASE EQEP2_BASE

#define myFSIRX0_BASE FSIRXA_BASE

// Rx Defines
// Pointer to be declared in example code before use
#define myFSIRX0_nWords 8


#define myFSITX0_BASE FSITXA_BASE

// Tx Defines
// Pointer to be declared in example code before use
#define myFSITX0_PRESCALER_VAL 4
#define myFSITX0_nWords 8

#define myGPIO0 28
#define myGPIO1 16


// Interrupt Settings for INT_myCPUTIMER0
#define INT_myCPUTIMER0 INT_TIMER0
#define INT_myCPUTIMER0_INTERRUPT_ACK_GROUP INTERRUPT_ACK_GROUP1
extern __interrupt void Timer0Interrupt(void);


#define myLIN0_BASE LINA_BASE
#define myLIN1_BASE LINB_BASE

#define MCAN_BASE MCAN_MSG_RAM_BASE
#define myMCAN0_BASE MCAN_BASE
//
// Defines
//
#define myMCAN0_MCAN_STD_ID_FILT_START_ADDR     (0)
#define myMCAN0_MCAN_STD_ID_FILTER_NUM          (1)
#define myMCAN0_MCAN_EXT_ID_FILT_START_ADDR     (48)
#define myMCAN0_MCAN_EXT_ID_FILTER_NUM          (1)
#define myMCAN0_MCAN_TX_BUFF_START_ADDR         (148)
#define myMCAN0_MCAN_TX_BUFF_SIZE               (10)
#define myMCAN0_MCAN_FIFO_1_START_ADDR          (748)
#define myMCAN0_MCAN_FIFO_1_NUM                 (10)
#define myMCAN0_MCAN_TX_EVENT_START_ADDR        (255)
#define myMCAN0_MCAN_TX_EVENT_SIZE              (10)
#define myMCAN0_MCAN_RX_BUFF_START_ADDR         (948)
#define myMCAN0_MCAN_FIFO_0_START_ADDR          (548)
#define myMCAN0_MCAN_FIFO_0_NUM                 (10)



void	Board_init();
void	ASYSCTL_init();
void	CLB_init();
void	CLB_INPUTXBAR_init();
void	CLBXBAR_init();
void	CPUTIMER_init();
void	DAC_init();
void	EQEP_init();
void	FSIRX_init();
void	FSITX_init();
void	GPIO_init();
void	INPUTXBAR_init();
void	INTERRUPT_init();
void	LIN_init();
void	MCAN_SYSCFG_init();
void	OTHER_init();
void	PinMux_init();

#endif  // end of BOARD_H definition
