/*
 * PwmDrv.c
 *
 *  Created on: Aug 20, 2021
 *      Author: Yahali
 */

#include "..\Application\StructDef.h"
#define ADC_SAMP_TIME_USEC 16

void InitPwm4Pacer(void)
/**
 * @brief initialize the PWM just for debug pulse observation
 *
 */
{
    EALLOW;
// Basic frequency for CPU interrupt: 256usec
    // Set clock to freeze, divider to full frequency
    EPwm1Regs.TBCTL.bit.CTRMODE = 0x3;
    EPwm1Regs.TBCTL.bit.HSPCLKDIV = 0;
    EPwm1Regs.TBCTL.bit.CLKDIV = 6 ; // Divide clock by 64

    // Set frame to 0.512 m sec
    EPwm1Regs.TBPRD = PWM_CLK_MHZ * (FAST_TS_USEC / 64)  ;

    // Reset counter
    EPwm1Regs.TBCTR = 0;

    // clear status and trips
    EPwm1Regs.TBSTS.all = 0x6;
    EPwm1Regs.CMPB.bit.CMPB = EPwm1Regs.TBPRD / 2;

    // Disable all the shit - chopper, trips, dead band, ...
    EPwm1Regs.DBCTL.all = 0;
    EPwm1Regs.PCCTL.all = 0x0;

    // clear trip-zones latched status bits
    EPwm1Regs.TZCLR.all = 0x7F; // clear all events
    EPwm1Regs.TZSEL.all = 0;

    EPwm1Regs.EPWMSYNCINSEL.all  = 0 ;
    EPwm1Regs.EPWMSYNCOUTEN.bit.ZEROEN  = 1 ;

    EPwm1Regs.TBCTL.bit.PHSEN   = 0 ;
    EPwm1Regs.TBCTL.bit.CTRMODE = 0 ; // Up
    EPwm1Regs.TBCTL.bit.FREE_SOFT = 3; // go on while suspend

    EPwm1Regs.ETPS.bit.INTPRD = 1;

    // Epwm2 is the fast ADC synchronizer
    EPwm2Regs.TBCTL.bit.CTRMODE = 0x3;
    EPwm2Regs.TBCTL.bit.HSPCLKDIV = 0;

    // Set frame
    EPwm2Regs.TBPRD = PWM_CLK_MHZ * ADC_SAMP_TIME_USEC  ;

    // Reset counter
    EPwm2Regs.TBCTR = 0;

    // clear status and trips
    EPwm2Regs.TBSTS.all = 0x6;
    EPwm2Regs.CMPB.bit.CMPB = EPwm1Regs.TBPRD / 2;

    // Disable all the shit - chopper, trips, dead band, ...
    EPwm2Regs.DBCTL.all = 0;
    EPwm2Regs.PCCTL.all = 0x0;

    // clear trip-zones latched status bits
    EPwm2Regs.TZCLR.all = 0x7F; // clear all events
    EPwm2Regs.TZSEL.all = 0;

    EPwm2Regs.ETPS.bit.SOCAPRD = 1;
    EPwm2Regs.ETSEL.bit.SOCASEL = 1 ; // Zero
    EPwm2Regs.ETSEL.bit.SOCAEN  = 1 ;

    EPwm2Regs.EPWMSYNCINSEL.bit.SEL  = 1 ; // From PWM1
    EPwm2Regs.EPWMSYNCOUTEN.bit.ZEROEN  = 1 ;

    EPwm2Regs.TBCTL.bit.PHSEN   = 1 ;
    EPwm2Regs.TBCTL.bit.CTRMODE = 0 ; // Up
    EPwm2Regs.TBCTL.bit.FREE_SOFT = 3; // go on while suspend


}



