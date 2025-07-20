//#include "F28x_Project.h"     // DSP28x Headerfile

#include "PdStructDef.h"
#include "..\..\TiSoft\F2837xS_common\include\F28x_Project.h"     // DSP28x Headerfile
#include "..\Drivers\F2837x_YDCAN.h"

//#include "F2837x_YDCAN.h"



inline void SwControl54V(void);
inline void BuckControl12V(void);
inline void BuckControl24V(void);
void DealDynamixel24(void);
void DealDynamixel12(void);
void RtRecorder(short a) ;

#pragma FUNCTION_OPTIONS( FastIsrBody , "--opt_level=3")

void FastIsrBody(void)
{
    long t ;
    t = IsrTimerPD.FastUsecTimer ;
    IsrTimerPD.FastUsecTimer= ~CpuTimer1Regs.TIM.all ;
    t = __min (__max(IsrTimerPD.FastUsecTimer-t,0), 20000 ) ;
    IsrTimerPD.UsecTimerLL += (long long) t ;

    PieCtrlRegs.PIEACK.all = 4 ;
    EPwm1Regs.ETCLR.all = 1 ;
    IER |= 4 ;

    EALLOW ;
    SwControl54V() ;
    BuckControl12V() ;

    BuckControl24V() ;
    EDIS ;


    SpiHandleStrPD.CycleCntr+= 1 ;
    if ( SpiHandleStrPD.CycleCntr == SPI_CYC_IN_C)
    {
        if ( SpiHandleStrPD.IsrLock & 1 )
        {
            SpiHandleStrPD.CycleCntr -= 1 ;
        }
        else
        {
            SpiHandleStrPD.IsrLock = 1 ;
            SpiHandleStrPD.CycleCntr = 0 ;
            SpiHandleStrPD.MajorCFlag = 0 ;

            IsrTimerPD.UsecTimer = ~CpuTimer1Regs.TIM.all ;
            EINT ;
            RtCanHandler();
            DINT ;
            SpiHandleStrPD.IsrLock = 0 ;
        }
    }
    RtRecorder( SpiHandleStrPD.MajorCFlag) ;
    SpiHandleStrPD.MajorCFlag = 1 ;
}




#pragma FUNCTION_OPTIONS( SwControl54V , "--opt_level=3")
inline void SwControl54V(void)
{
    float  vb54 , cur , delta , vservo  ;
    // float VRatioNow ,VRatioTarget , maxratio ;
    //VRatioNow = ClaState.V54NowRatio ;
    vb54  = ClaState.Filt.VBat54[0] ;
    vservo = ClaState.Filt.VServo ;
    cur   = ClaState.Filt.CurServo ;
    //VRatioTarget = 1.0f ;
    //maxratio     = 1.0f ;

    if ( Sw54Control.IoutMax < cur)
    {
        Sw54Control.CurrentAtExp = cur ;
        Sw54Control.Exception = 3 ;
        EPwm8Regs.TZFRC.bit.OST = 1 ;
    }
    else
    {
        if (  vb54  > Sw54Control.VinMax)
        {
            Sw54Control.Exception = 1 ;
            Sw54Control.VoltageInputExp = vb54 ;
            EPwm8Regs.TZFRC.bit.OST = 1 ;
        }
        else if ( vb54 < Sw54Control.VinMin )
        {
            Sw54Control.Exception = 1 ;
            Sw54Control.VoltageInputExp = vb54 ;
        }
    }

    if ( Sw54Control.Exception == 0 )
    {
        if ( Sw54Control.MotorOn  )
        {
            if ( Sw54Control.Ready == 0 )
            {
                Sw54Control.StartingCtr += 1 ;
                if ( Sw54Control.StartingCtr >= 60000 )
                {
                    Sw54Control.MotorOn = 0 ;
                }
            }

            EPwm8Regs.TZCLR.bit.OST = 1 ; // Clear any trip catch

            // First stage - just 2usec for all
            if ( vservo < 12.0f )
            {
                Sw54Control.pwm = Sw54Control.pwmFrame - Sw54Control.StartPwm ;
                Sw54Control.Ready = 0 ;
                Sw54Control.ValOut   = Sw54Control.StartVout ;
            }

            else
            {
                delta  = 32e-6f ; //  __fmin ( __fmax( VRatioTarget - Sw54Control.ValOut , -0.015f) ,32e-6f ) ;

                Sw54Control.ValOut = Sw54Control.ValOut + delta ; // __fmin( Sw54Control.ValOut + delta __fmin( Sw54Control.ValOut + delta  , __fmin( VRatioNow + 0.125f,maxratio ) )   ;
                if (  cur > 30  )
                {
                    Sw54Control.ValOut = 0 ; // Vandal
                }

                // dI = t * ( Vin - Vservo ) / 5e-6 < 20
                //deltav = vb54 - vservo ;
                //if ( deltav > 1 )
                //{
                //    Sw54Control.ValOut = __fmin( Sw54Control.ValOut  ,( 20.0f * 5e-6f ) / ( deltav * Sw54Control.Tpwm ) ) ;
                //}
                Sw54Control.pwm = (short) ( Sw54Control.Val2PWM * ( 1.0f - Sw54Control.ValOut)  );
            }


            if ( Sw54Control.pwm <= 1  )
            { // Done : continuous duty
                Sw54Control.ValOut  = 1   ;
                EPwm8Regs.AQCSFRC.all = 8 ;
                Sw54Control.Ready  = 1 ;
                Sw54Control.pwm = EPwm8Regs.TBPRD + 100 ; // Never to happen
            }
            else
            {
                EPwm8Regs.AQCSFRC.all = 0 ;
                Sw54Control.Ready  = 0 ;
            }
        }
        else
        {   // Not motor on
            Sw54Control.ValOut = 0 ; // Vandal
            EPwm8Regs.AQCSFRC.all = 4 ;
            Sw54Control.Ready  = 0 ;
            Sw54Control.pwm = EPwm8Regs.TBPRD + 100 ; // Never to happen
            Sw54Control.StartingCtr = 0  ;
            // set the current limit in DAC
        }
    }
    else
    { // Exception
        EPwm8Regs.AQCSFRC.all = 4 ;
        Sw54Control.MotorOn = 0  ;
        //EPwm8Regs.TZFRC.bit.OST = 1 ;
        Sw54Control.ValOut = 0 ; // VRatioNow  ;
        Sw54Control.Ready = 0 ;
        Sw54Control.pwm = EPwm8Regs.TBPRD + 100 ; // Never to happen
        Sw54Control.StartingCtr = 0;

    }
    EPwm8Regs.CMPB.bit.CMPB = Sw54Control.pwm ;
}

#pragma FUNCTION_OPTIONS( BuckControl12V , "--opt_level=3")
inline void BuckControl12V(void)
{
    float VRatioNow , vb, vout , cur ,VRatioTarget, maxratio , delta  ;
    volatile struct EPWM_REGS * pPwm ;
    VRatioNow = ClaState.V12NowRatio ;
    VRatioTarget = ClaState.V12FinalRatio ;
    vb        = ClaState.Filt.V36    ;
    vout      = ClaState.Filt.Volts12[0]    ;
    cur       = ClaState.Filt.Cur12         ;
    pPwm      = &EPwm6Regs ;
    maxratio  = 0.5f ;


    if ( Buck12Control.IoutMax < cur )
    {
        Buck12Control.Exception = 3 ;
        Buck12Control.CurrentAtExp = cur ;
    }
    else
    {
        if ( __fmin(__fmax( vb   ,  Buck12Control.VinMin ) , Buck12Control.VinMax)  != vb )
        {  // Voltage out of range
            Buck12Control.Exception = 1 ;
            Buck12Control.VoltageInputExp = vb ;
        }
        else
        {
             if ( vout >  Buck12Control.VoutMax)
             {
                 Buck12Control.Exception = 2 ;
                 Buck12Control.VoltageOutputExp = vout ;
             }
        }
    }
    if ( Buck12Control.Exception == 0 )
    {
        if ( Buck12Control.MotorOn  )
        {
            pPwm->TZCLR.bit.OST = 1 ;
            // Vandal pPwm->TZFRC.bit.OST   = 1 ;

            delta  = __fmin ( __fmax( VRatioTarget - Buck12Control.ValOut , -0.015f) ,64e-6f ) ;

            Buck12Control.ValOut = __fmin( Buck12Control.ValOut + delta  , __fmin( VRatioNow + 0.15f,maxratio ) )   ;

            pPwm->DBCTL.all   = 0xb ;
            pPwm->AQCSFRC.all = 0   ;

            if ( vout < 8.0f )
            {
                Buck24Control.Exception |= 4 ;      // No ready, cannot work the 24V controls
            }

            Buck12Control.Ready = ( (vout > 10.5) ? 1 : 0 );

            /*
            else
            {
                if ( vout >= 10.f )
                {
                    Buck24Control.Exception &= ~4 ;      // No ready, cannot work the 24V controls
                }
            }
            */
        }
    }
    else
    {
        pPwm->TZFRC.bit.OST   = 1 ;
        Buck12Control.MotorOn = 0 ;
    }

    if ( Buck12Control.MotorOn == 0 )
    {
        pPwm->AQCSFRC.all     = 5 ;
        pPwm->DBCTL.all       = 0 ;
        Buck12Control.MotorOn = 0  ;
        Buck12Control.ValOut = VRatioNow  ;
        Buck24Control.Exception |= 4 ;      // If off, cannot work the 24V controls
        Buck12Control.MotorOn = 0 ;
    }
    Buck12Control.pwm = (short unsigned) ( Buck12Control.Val2PWM * ( 1.0f - Buck12Control.ValOut) ) ;
    pPwm->CMPA.bit.CMPA = Buck12Control.pwm ;
}


#pragma FUNCTION_OPTIONS( BuckControl24V , "--opt_level=3")
inline void BuckControl24V(void)
{
    float VRatioNow , vout , cur ,VRatioTarget, maxratio , delta  ;
    volatile struct EPWM_REGS * pPwm ;
    VRatioNow = ClaState.V24NowRatio ;
    VRatioTarget = ClaState.V24FinalRatio ;
    vout      = ClaState.Filt.Volts24    ;
    cur       = ClaState.Filt.Cur24         ;
    pPwm      = &EPwm2Regs ;
    maxratio  = 0.85f ;

    if ( Buck24Control.IoutMax < cur )
    {
        Buck24Control.Exception = 3 ;
        Buck24Control.CurrentAtExp = cur ;
    }
    else
    {
         if (  vout  >  Buck24Control.VoutMax  )
         {
             Buck24Control.Exception = 2 ;
             Buck24Control.VoltageOutputExp = vout ;
         }
    }
    if ( Buck24Control.Exception  == 0 )
    {
        if ( Buck24Control.MotorOn  )
        {
            pPwm->TZCLR.bit.OST = 1 ;

            delta  = __fmin( __fmax( VRatioTarget - Buck24Control.ValOut , -0.015f) ,64e-6f ) ;

            Buck24Control.ValOut = __fmin( Buck24Control.ValOut + delta  , __fmin( VRatioNow + 0.15f,maxratio ) )   ;

            pPwm->DBCTL.all       = 0xb ;
            pPwm->AQCSFRC.all = 0 ;
            Buck24Control.Ready = ( (vout > 22) ? 1 : 0 );

        }
    }
    else
    {
        pPwm->TZFRC.bit.OST = 1 ;
        Buck24Control.MotorOn = 0 ;
    }

    if ( Buck24Control.MotorOn == 0 )
    {
        pPwm->AQCSFRC.all     = 5 ;
        pPwm->DBCTL.all       = 0 ;
        Buck24Control.MotorOn = 0  ;
        Buck24Control.ValOut = VRatioNow  ;
        Buck24Control.Ready   = 0;
     }
    Buck24Control.pwm =  (short unsigned) ( Buck24Control.Val2PWM * ( 1.0 - Buck24Control.ValOut) ) ;
     pPwm->CMPA.bit.CMPA = Buck24Control.pwm ;
}



