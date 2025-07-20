/*
 * PwmDrv.c
 *
 *  Created on: Jun 25, 2023
 *      Author: yahal
 */


#include "..\Application\StructDef.h"

//
void SetupPwmPacer(uint32_t base,unsigned short pwmPeriod_usec )
{
        HWREGH(base + EPWM_O_TBCTL) = 0xc00b ; // Stop, immediate period load

        // setup the Timer-Based Phase Register (TBPHS)
        EPWM_setPhaseShift(base, 0);

        // setup the Time-Base Counter Register (TBCTR)
        EPWM_setTimeBaseCounter(base, 0);

        // setup the Time-Base Period Register (TBPRD)
        EPWM_setTimeBasePeriod(base, (short unsigned) ( pwmPeriod_usec * CPU_CLK_MHZ - 1 ) );

        // setup the Counter-Compare Control Register (CMPCTL)
        HWREGH( base + EPWM_O_CMPCTL)  =  0x55 ; // Load A B immediate
        //HWREGH(base + EPWM_O_CMPA + 0x1U)  = CPU_CLK_MHZ * ADC_START_TIME_USEC ;
        HWREGH( base + EPWM_O_CMPCTL)  =  0x5 + (1<<4) + (1<<6) ; // Load A B immediate
        HWREGH( base + EPWM_O_CMPCTL2) =  0x55  ; // Immediate load for C and for D

        // setup the PWM-Chopper Control Register (PCCTL)
        EPWM_disableChopper(base);

        EALLOW ;
        HWREGH(base + EPWM_O_AQCTLA) = 0x1 ; // Zero on zero

        HWREGH(base + EPWM_O_AQCTL) = 0x0a ; // Load on either event , immediate action qualifier writes

        HWREGH(base + EPWM_O_DBCTL2) = 0x0 ; // Load DBCTL immediate
        HWREGH(EPWM2_BASE + EPWM_O_DBCTL ) = 0x2002 ;
        HWREGH(base + EPWM_O_DBCTL2) = 0x4 ; // Load DBCTL from shadow on counter = 0

        // setup the Trip Zone Select Register (TZSEL)
        HWREGH(base + EPWM_O_TZSEL) = 0 ;
        HWREGH(base + EPWM_O_AQSFRC) = 0x05   ; // Shadowed continuous software load, next counter = 0

        HWREGH(base + EPWM_O_SYNCOUTEN) = 2 ; // Sync out on zero

        HWREGH(base + EPWM_O_TBCTL) = 0x6008  ; // Up count, immediate period load, emulation stop at next frame start

         return;
}  // end of HAL_setupPWMs() function





