/*
 * PwmDrive.c
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */
#include "..\Application\StructDef.h"
#include "LowLevel.h"

void ClearTrip(void)
{
    EALLOW ;

    // Clear comparator latches
    HWREGH(CMPSS_VBUS_BASE   + CMPSS_O_COMPSTSCLR ) = 0x2 + (2<<8) ;
    HWREGH(CMPSS_BUSCUR_BASE + CMPSS_O_COMPSTSCLR ) = 0x2 + (2<<8) ;

    // Next
    // CMPSS2.High: Mux 2.0
    // CMPSS2.Lo  : Mux 3.0
    // CMPSS3.High: Mux 4.0
    // EPWM XBAR must define trip 4/5
    EALLOW ;
    HWREG(EPWMXBAR_BASE + XBAR_O_TRIP4MUX0TO15CFG) = 0 ;
    HWREG(EPWMXBAR_BASE + XBAR_O_TRIP5MUX0TO15CFG) = 0 ;


    HWREGH(PWM_A_BASE + EPWM_O_TZOSTCLR) = 0xff ;
    HWREGH(PWM_A_BASE + EPWM_O_TZCBCCLR) = 0xff ;
    HWREGH(PWM_A_BASE + EPWM_O_TZCLR) = 0x7f ;
    HWREGH(PWM_B_BASE + EPWM_O_TZOSTCLR) = 0xff ;
    HWREGH(PWM_B_BASE + EPWM_O_TZCBCCLR) = 0xff ;
    HWREGH(PWM_B_BASE + EPWM_O_TZCLR) = 0x7f ;
    HWREGH(PWM_C_BASE + EPWM_O_TZOSTCLR) = 0xff ;
    HWREGH(PWM_C_BASE + EPWM_O_TZCBCCLR) = 0xff ;
    HWREGH(PWM_C_BASE + EPWM_O_TZCLR) = 0x7f ;
    EDIS ;
}


#pragma FUNCTION_OPTIONS ( setupPwmParams, "--opt_level=0" );

void setupPwmParams(void)
{
    SysState.Timing.PwmFrame = HWREGH(PWM_A_BASE + EPWM_O_TBPRD);

    ClaState.PwmMax = SysState.Timing.PwmFrame + 4 ; // if above the frame it will not switch, so the PWM will be identically zero, which is ok
    ClaState.PwmMin = 2; // Start immediately after PWM start
    ClaState.PwmMinB = __max( DEAD_TIME_USEC* CPU_CLK_MHZ  , CURSAMPWINDOW_TIME_USEC* CPU_CLK_MHZ)  ;
    ClaState.PwmFrame = SysState.Timing.PwmFrame;
    ClaState.InvPwmFrame = 1.0f / __fmax(ClaState.PwmFrame,1)  ;
    ClaMailIn.Ts = SysState.Timing.Ts ;

    ClaState.PwmFrame2 = ClaState.PwmFrame * 2.0f ;
    ClaState.MaxWB = ClaState.PwmFrame - ClaState.PwmMinB ;
    ClaState.MaxWA = ClaState.PwmFrame - ClaState.PwmMin  ;
    ClaState.PwmOffset = (float) ( (short unsigned )( ClaState.PwmFrame2 - ( ClaState.PwmMin + ClaState.PwmMinB) ) * 0.5f ) ;
}



void KillMotor(void)
{
    short unsigned mask ;
    mask = BlockInts() ;
    EALLOW ;
    HWREGH(PWM_A_BASE + EPWM_O_AQCSFRC) = 0x5  ; // Kill both
    HWREGH(PWM_A_BASE + EPWM_O_DBCTL) = 0x2002 ; // Set both output to B

    HWREGH(PWM_B_BASE + EPWM_O_AQCSFRC) = 0x5  ; // Kill both
    HWREGH(PWM_B_BASE + EPWM_O_DBCTL) = 0x2002 ; // Set both output to B

    HWREGH(PWM_C_BASE + EPWM_O_AQCSFRC) = 0x5  ; // Kill both
    HWREGH(PWM_C_BASE + EPWM_O_DBCTL) = 0x2002 ; // Set both output to B
    EDIS ;
    ClaState.MotorOnRequest = 0 ;
    RestoreInts(mask) ;
}

#ifdef SLAVE_DRIVER

void SetGateDriveEable(short in)
{
    if (in > 0 )
    {
        HWREGH( GPIODATA_BASE + GPIO_O_GPASET+1) = (1<<8) ;
    }
    else
    {
        HWREGH( GPIODATA_BASE + GPIO_O_GPACLEAR+1) = (1<<8) ;
    }
}

void setupSync(uint32_t base,unsigned short pwmPeriod_usec )
{
    short unsigned prd ;
    EALLOW ;
    HWREGH(base + EPWM_O_TBCTL) = 0xc00b ; // Stop, immediate period load

    // setup the Timer-Based Phase Register (TBPHS)
    EPWM_setPhaseShift(base, 0);

    // setup the Time-Base Counter Register (TBCTR)
    EPWM_setTimeBaseCounter(base, 0);

    // setup the Time-Base Period Register (TBPRD)
    prd = (short unsigned)(pwmPeriod_usec * CPU_CLK_MHZ - 1) ;
    EPWM_setTimeBasePeriod(base, prd);

    EALLOW ;
    // setup the Counter-Compare Control Register (CMPCTL)
    HWREGH( base + EPWM_O_CMPCTL)  =  0x55 ; // Load A B immediate
    HWREGH( base + EPWM_O_CMPA + 0x1U)  = prd >> 1 ; // Set 50% Duty
    HWREGH( base + EPWM_O_CMPCTL)  =  0x5 ; // Load A B as shadows at period
    HWREGH( base + EPWM_O_CMPA + 0x1U)  = prd >> 1 ; // Set 50% Duty
    HWREGH( base + EPWM_O_CMPCTL2) =  0x55  ; // Immediate load for C and for D

    // setup the PWM-Chopper Control Register (PCCTL)
    EPWM_disableChopper(base);

    EALLOW ;
    HWREGH(base + EPWM_O_AQCTLA) = 0x12 ; // High on zero, low on CMPA

    HWREGH(base + EPWM_O_AQCTL) = 0x0a ; // Load on either event , immediate action qualifier writes

    HWREGH(base + EPWM_O_DBCTL2) = 0x0 ; // Load DBCTL immediate
    HWREGH(EPWM2_BASE + EPWM_O_DBCTL ) = 0x0 ; // full bypass

    // setup the Trip Zone Select Register (TZSEL)
    HWREGH(base + EPWM_O_TZSEL) = 0 ;

    // Set that continuous setting will be synchronized
    HWREGH(base + EPWM_O_AQSFRC) = 0 ;

    HWREGH(base + EPWM_O_SYNCINSEL) = PWM_SYNCSEL    ; // PWM1 sync IN as 1
    HWREGH(base + EPWM_O_TBCTL) = 0x600c  ; // Up count, immediate period load, emulation stop at next frame start , phase enable

    HWREGH(base + EPWM_O_AQSFRC) = 0  ; // Shadowed continuous software load
    HWREGH(base + EPWM_O_AQCSFRC) = 0  ; // Work as PWM

    //HWREGH(base + EPWM_O_SYNCOUTEN) = 2 ; // Sync out on zero

    return;
}
#else
    void SetGateDriveEable(short in)
    {
        (void) in ;
    }
#endif

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
        HWREGH(base + EPWM_O_CMPA + 0x1U)  = (HWREGH( base + EPWM_O_TBPRD)>>1);
        HWREGH( base + EPWM_O_CMPCTL)  =  0x5 ; // Load A B as shadows at period
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

#ifdef SLAVE_DRIVER
// If this is steering
        if ( SysState.AxisSelector != FSI_TAG_FOR_WHEEL)
        {
            // Synch the pacer from INPUT 6
            HWREGH(base + EPWM_O_SYNCINSEL) = 0x19  ; // Input XBAR input 6
            XBAR_setInputPin(INPUTXBAR_BASE, XBAR_INPUT3, 18);
            XBAR_setInputPin(INPUTXBAR_BASE, XBAR_INPUT6, 18);
            HWREGH(base + EPWM_O_TBCTL) = 0x600c  ; // Up count, immediate period load, emulation stop at next frame start , phase enable
        }
        else
        {
            //HWREGH(base + EPWM_O_SYNCINSEL) =  PWM_SYNCSEL ;
            HWREGH(base + EPWM_O_TBCTL) = 0x6008  ; // Up count, immediate period load, emulation stop at next frame start
            setupSync(EPWM6_BASE,pwmPeriod_usec);
        }
#endif
        HWREGH(base + EPWM_O_AQSFRC) = 0x05   ; // Shadowed continuous software load, next counter = 0

        HWREGH(base + EPWM_O_SYNCOUTEN) = 2 ; // Sync out on zero

        return;
}  // end of HAL_setupPWMs() function


//
void SetupPWM(uint32_t base,unsigned short pwmPeriod_usec )
{
    short unsigned Halfprd ;
        HWREGH(base + EPWM_O_TBCTL) = 0xc00b ; // Stop, immediate period load

        // setup the Timer-Based Phase Register (TBPHS)
        EPWM_setPhaseShift(base, 0);

        // setup the Time-Base Counter Register (TBCTR)
        EPWM_setTimeBaseCounter(base, 0);

        // setup the Time-Base Period Register (TBPRD)
        // set to zero initially
        Halfprd  = (short unsigned) ( 0.5f * pwmPeriod_usec * CPU_CLK_MHZ ) ;
        EPWM_setTimeBasePeriod(base, Halfprd);

        // setup the Counter-Compare Control Register (CMPCTL)
        HWREGH( base + EPWM_O_CMPCTL)  =  0x55 ; // Load A B immediate
        HWREGH(base + EPWM_O_CMPA + 0x1U)  = ( Halfprd >> 1 ) ;
        HWREGH( base + EPWM_O_CMPCTL)  =  0x5 ; // Load A B as shadows at period
        HWREGH( base + EPWM_O_CMPCTL2) =  0x55  ; // Immediate load for C and for D


        /* setup the Action-Qualifier Output A Register (AQCTLA)
        EPWM_setActionQualifierAction(base,
                                      EPWM_AQ_OUTPUT_A,
                                      EPWM_AQ_OUTPUT_HIGH,
                                      EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);

        EPWM_setActionQualifierAction(base,
                                      EPWM_AQ_OUTPUT_A,
                                      EPWM_AQ_OUTPUT_LOW,
                                      EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);

        EPWM_setActionQualifierAction(base,
                                      EPWM_AQ_OUTPUT_A,
                                      EPWM_AQ_OUTPUT_LOW,
                                      EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);
                                      */

        // setup the Dead-Band Rising Edge Delay Register (DBRED)
        EPWM_setRisingEdgeDelayCount(base, (short unsigned) ( DEAD_TIME_USEC * CPU_CLK_MHZ ) );

        // setup the Dead-Band Falling Edge Delay Register (DBFED)
        EPWM_setFallingEdgeDelayCount(base, (short unsigned) ( DEAD_TIME_USEC * CPU_CLK_MHZ ));

        // setup the PWM-Chopper Control Register (PCCTL)
        EPWM_disableChopper(base);

        EALLOW ;
        HWREGH(base + EPWM_O_AQCTLA) = 0x421 ; // Zero on zero and B down, rise on A up

        HWREGH(base + EPWM_O_AQCTL) = 0x0a ; // Load on either event , immediate action qualifier writes

        HWREGH(base + EPWM_O_DBCTL2) = 0x0 ; // Load DBCTL immediate
        HWREGH(EPWM2_BASE + EPWM_O_DBCTL ) = 0x2002 ;

        HWREGH(base + EPWM_O_DBCTL2) = 0x4 ; // Load DBCTL from shadow on counter = 0

        // setup the Trip Zone Select Register (TZSEL)
        HWREGH(base + EPWM_O_TZSEL) = 0xc000 ; // One shot disablers, events A1 and B1

        HWREGH(base + EPWM_O_TZDCSEL) = (2<<6)+2 ; // Consider only AH1, B1H

        HWREGH(base + EPWM_O_TZCTLDCB) = 2 + (2<<3) + (2<<6) + (2<<9)  ; // Trip actions will force all to LO

        HWREGH(base + EPWM_O_TZCTLDCA) = 2 + (2<<3) + (2<<6) + (2<<9)  ; // Trip actions will force all to LO

        HWREGH(base + EPWM_O_DCTRIPSEL) = 3 + (3<<4) + (4<<8) + (4<<12) ; // DCA H/L are trip 4 , DCB H/L are trip 5
        //DCAHTRIPSEL = (1<<3) ;
        //DCALTRIPSEL = (1<<3) ;
        //DCBHTRIPSEL = (1<<4) ;
        //DCBLTRIPSEL = (1<<4) ;
        HWREGH(base + EPWM_O_TZCTL) = (2<<4) + (2<<8) ; // Legacy, force A and B to low by compare events

        HWREGH(base + EPWM_O_TBCTL) = 0x600e ; // Up down, phase enable , immediate period load, emulation stop at next frame start

        HWREGH(base + EPWM_O_AQSFRC) = 0x0   ; // Shadowed continuous software load, next counter = 0

        // Set PWM synchronization scheme all to PWM2
        HWREGH(base + EPWM_O_SYNCINSEL) = PWM_SYNCSEL ;
        return;
}  // end of HAL_setupPWMs() function
