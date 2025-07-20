/*
 * AdcIsr.c
 *
 *  Created on: May 14, 2023
 *      Author: Gal Lior
 */
#include "BootStructDef.h"





__interrupt void AdcIsr(void)
{

#ifdef SLAVE_DRIVER
    // Acknowledge interrupt
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP1 ;
    //HWREGH( GPIODATA_BASE + GPIO_O_GPASET+1) = (1<<8) ; // Toggle GPIO
    FsiRtService() ;
#else
    union
    {
        long unsigned ul ;
        short unsigned us[2] ;
        short unsigned s[2] ;
        float f;
    } u ;


    // Acknowledge interrupt
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP1 ;

    // Take time
    u.ul = HWREGH(PWM_A_BASE+EPWM_O_TBCTR) ;
    SysState.Timing.UsecTimer = ~HWREG( CPUTIMER1_BASE+CPUTIMER_O_TIM) - ( long) ( u.ul * INV_CPU_CLK_MHZ) ;

    //SysState.Timing.UsecTimer = -HWREG(CPUTIMER1_BASE + CPUTIMER_O_TIM);
    SysState.Timing.IntCntr   += 1 ;

#endif

    // Doing the flash , all services cut
    if ( SysState.Mot.DisablePeriodicService )
    {
        return ;
    }


    // RT CAN server
    RtCanService() ;

    SysState.Timing.InterruptTime = ~HWREG( CPUTIMER1_BASE+CPUTIMER_O_TIM) - SysState.Timing.UsecTimer ;

}


