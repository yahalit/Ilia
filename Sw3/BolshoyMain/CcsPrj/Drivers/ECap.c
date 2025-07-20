/*
 * ECap.c
 *
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

#include "..\Application\StructDef.h"

void InitEcap6AsUsecCounter (void)
{
    // 100 sys clocks
    EALLOW ;
    ECap6Regs.ECCTL1.all = (3U<<14) + (25U<<9) ;


    // Take INPUT5 for ECAP capture
    InputXbarRegs.INPUT5SELECT = 11 ;
    ECap6Regs.ECCTL0.bit.INPUTSEL  = 4 ;
    ECap6Regs.ECCTL2.bit.CTRFILTRESET = 1;
    ECap6Regs.ECCTL2.bit.TSCTRSTOP = 1 ; // Start
    ECap6Regs.ECCTL2.bit.STOP_WRAP = 0  ; // Single capture
    ECap6Regs.ECCTL2.bit.CONT_ONESHT = 1  ; // Single capture
    ECap6Regs.ECCTL1.bit.CAPLDEN = 1 ;
    ECap6Regs.ECCTL1.bit.CAP1POL = 1 ; // Falling edge

    ECap5Regs.ECCTL1.all = (3U<<14) + (25U<<9) ;
    ECap5Regs.ECCTL2.bit.CTRFILTRESET = 1;
    ECap5Regs.ECCTL2.bit.TSCTRSTOP = 1 ; // Start
    ECap5Regs.TSCTR  = 0 ;
}


void ResetHardwareSysTimer(void)
{
    ECap6Regs.TSCTR = 0 ;
}
