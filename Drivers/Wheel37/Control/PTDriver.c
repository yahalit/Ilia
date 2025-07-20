/*
 * PVDriver.c
 *
 *  Created on: May 13, 2023
 *      Author: yahal
 */

// Take commands accepted on the CAN by inaccurate times and turn them into position trajectory
#include "..\Application\StructDef.h"



#ifdef PVTEnabled

void InitPVT(void)
{
    SysState.PVT.VrFac = 1 ;
    SysState.PVT.x0 = 0.5f ;
    SysState.PVT.vFixed = 1 ;
    SysState.PVT.bFixedSpeed = 1;
    SysState.PVT.Init = 0 ;
}

void PVResetTraj(void)
{
    SysState.PVT.bFixedSpeed = 1;
    SysState.PVT.vFixed = ClaState.Encoder1.UserSpeed ;
    SysState.PVT.x0 = 0 ;
    SysState.PVT.a = 0 ;
    SysState.PVT.vout = ClaState.Encoder1.UserSpeed ;
    SysState.PVT.pout = SysState.PosControl.PosFeedBack ;
    SysState.PVT.dv = 0 ;
    SysState.PVT.dp = SysState.PVT.dv * SysState.Timing.TsTraj ;
    SysState.PVT.Init = 0 ;
    SysState.PVT.NewMsgReady = 0 ;
}

/*
 * Position interpolation driver.
 * Note:
 * - Time (speed) units are normalized to the communication interval
 * - reference is by interpolation, not extrapolation. This introduces one communication cycle delay in the trajectory response
 */
void PVNewMessageDriver( float PosRef  )
{   // The toutUsec is the end of the (before) previous segment, which is one Ts before now as we accept the new message
    SysState.PVT.ReadyMsgUsec   = SysState.MCanSupport.Usec4ThisMessage ;
    SysState.PVT.ReadyMsgPosRef = PosRef ;
    SysState.PVT.NewMsgReady = 1 ;
}



inline
void PVNewMessageExec(  long tUsec )
{
    // Prepare commands for next go
    float  aa , bb , cc , delta    ;
    float  vnew , pfin , tsfac ;

    tsfac =  SysState.Timing.TsTraj * SysState.MCanSupport.OneOverActMessageTime;
    SysState.PVT.tInterpStartUsec = tUsec - SysState.Timing.TsTraj * SEC_2_USEC ; // SysState.MCanSupport.Usec4ThisMessage - SysState.Timing.TsTraj * SEC_2_USEC ;

    vnew = SysState.PVT.ReadyMsgPosRef - // SysState.PVT.pout ;
    ( SysState.PVT.pout + SysState.PVT.vout * tsfac) ;
    SysState.PVT.dv = (vnew - SysState.PVT.vout);

    // Position deviation from fixed speed motion
    pfin = SysState.PVT.ReadyMsgPosRef - vnew * tsfac ;
    SysState.PVT.dp = pfin -  SysState.PVT.pout - SysState.PVT.vout  ;

    aa  = 2*SysState.PVT.dv ;

    if ( fabsf(aa) < 1e-5f  )
    { // Fixed speed case
        if (fabsf(SysState.PVT.dp) < 1e-3f)
        {
            SysState.PVT.bFixedSpeed = 1;
            SysState.PVT.vFixed = (pfin - SysState.PVT.pout);
            SysState.PVT.x0 = 0 ; SysState.PVT.a = 0 ;
        }
        else
        {
            // Speed remains but there is SysState.PVT.dp to close
            SysState.PVT.bFixedSpeed = 0;
            SysState.PVT.x0 = 0.5f;
            SysState.PVT.a = SysState.PVT.dp;
        }
    }
    else
    {
        SysState.PVT.bFixedSpeed = 0 ;
        bb  = (4*SysState.PVT.dp - 4*SysState.PVT.dv) ;
        cc  = -2*SysState.PVT.dp + SysState.PVT.dv ;
        // Delta > 0 since delta = 2 * SysState.PVT.dp^2 + 2 * ( SysState.PVT.dp-SysState.PVT.dv)^2
        delta = __sqrt(__fmax(0,bb*bb-4*aa*cc))*0.5f/aa ;
        bb = -0.5f * bb / aa ;

        // This is a quadratic equation, only one solution lies in 0...1
        // Take the in-interval solution
        SysState.PVT.x0 = bb + delta ;
        if ( SysState.PVT.x0 < -0.0001f || SysState.PVT.x0 > 1.001f )
        {
            SysState.PVT.x0 = bb - delta ;
        }

        SysState.PVT.x0 = __fmax( __fmin( SysState.PVT.x0,1) , 0 ) ;
        SysState.PVT.a = (2 * SysState.PVT.x0 - 3 ) * SysState.PVT.dv  + 4 * SysState.PVT.dp ;
    }

    SysState.PVT.vp0 = SysState.PVT.vout ;
    SysState.PVT.pp0 = SysState.PVT.pout ;

    SysState.PVT.vp1 = SysState.PVT.vp0 + SysState.PVT.a * SysState.PVT.x0 ;
    SysState.PVT.pp1 = SysState.PVT.pp0 + 0.5f * SysState.PVT.x0 * ( SysState.PVT.vp1 + SysState.PVT.vp0 ) ;
    SysState.PVT.vp2 = SysState.PVT.vp1 - SysState.PVT.a * ( 1.0 - SysState.PVT.x0) ;
    SysState.PVT.pp2 = SysState.PVT.pp1 + 0.5f * ( 1 - SysState.PVT.x0) * ( SysState.PVT.vp1 + SysState.PVT.vp2 ) ;
}



short PVTRunTimeDriver(long unsigned tUsec)
{
    float tNorm , dt     ;
    short CalcSpeed = 1 ;

    if ( SysState.PVT.NewMsgReady )
    {
        if ( SysState.PVT.Init == 0  )
        {
            SysState.PVT.bFixedSpeed = 1;
            SysState.PVT.vFixed = SysState.SpeedControl.SpeedReference ;
            SysState.PVT.x0 = 0 ;
            SysState.PVT.a = 0 ;
            SysState.PVT.pout = SysState.PVT.ReadyMsgPosRef  ;
            SysState.PVT.pp0 = SysState.PVT.ReadyMsgPosRef  - SysState.PVT.vFixed ;
            SysState.PVT.pp1 = SysState.PVT.pp0 ;
            SysState.PVT.pp2 = SysState.PVT.pp0 ;

            SysState.PVT.vout = SysState.PVT.vFixed ;
            SysState.PVT.vp0 = SysState.PVT.vFixed ;
            SysState.PVT.vp1 = SysState.PVT.vFixed ;
            SysState.PVT.vp2 = SysState.PVT.vFixed ;

            SysState.PVT.tInterpStartUsec = tUsec - (long) ( SysState.MCanSupport.NomInterMessageTime * SEC_2_USEC) ;
            CalcSpeed = 0 ;
            SysState.PVT.Init = 1 ;
         }
        else
        {
            PVNewMessageExec(tUsec) ;
        }

        SysState.PVT.NewMsgReady = 0 ;
    }
    else
    {
        if( SysState.PVT.Init == 0 )
        {
            SetReferenceMode ( E_PosModeStayInPlace ) ;
            return  0;
        }
    }

    // Normalized time inside message
    tNorm  = (tUsec - SysState.PVT.tInterpStartUsec) * USEC_2_SEC * SysState.MCanSupport.OneOverActMessageTime  ;

    if ( tNorm > 4   )
    {
        // New messages fail to arrive; Just stay in place
        PVResetTraj();
        SetReferenceMode ( E_PosModeStayInPlace ) ;
        return 0;
    }


    if ( SysState.PVT.bFixedSpeed )
    {
        SysState.PVT.pout = SysState.PVT.pp0 + SysState.PVT.vFixed * tNorm ;
        SysState.PVT.vout = SysState.PVT.vFixed ;
    }
    else
    {
        if (tNorm <= SysState.PVT.x0 )
        {
            SysState.PVT.vout = SysState.PVT.vp0 + SysState.PVT.a * tNorm   ;
            SysState.PVT.pout = SysState.PVT.pp0 + tNorm * (SysState.PVT.vp0 +  SysState.PVT.vout ) * 0.5f ;
        }
        else
        {
            if (tNorm <= 1 )
            {
                dt = tNorm -SysState.PVT.x0 ;
                SysState.PVT.vout = SysState.PVT.vp1 - SysState.PVT.a * dt ;
                SysState.PVT.pout = SysState.PVT.pp1 + dt * (SysState.PVT.vout + SysState.PVT.vp1) * 0.5f  ;
            }
            else
            {
                SysState.PVT.vout = SysState.PVT.vp2 ;
                SysState.PVT.pout = SysState.PVT.vp2 * (tNorm - 1) + SysState.PVT.pp2  ;
            }
        }
    }

    // Do it with numerical derivative, as considering Tmessage/Ts fractions shall be complicated
    if ( CalcSpeed )
    {
        SysState.SpeedControl.SpeedReference =
            fSat ( (SysState.PVT.pout  - SysState.PosControl.PosReference) * SysState.Timing.OneOverTsTraj , ControlPars.MaxSpeedCmd ) ;
    }
    SysState.PosControl.PosReference = SysState.PVT.pout ;

    return 1 ;
}
#endif





