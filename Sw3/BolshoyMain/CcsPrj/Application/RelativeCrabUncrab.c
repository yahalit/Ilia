/*
 * RelativeCrabUncrab.c
 *
 *  Created on: Apr 28, 2023
 *      Author: yahal
 */
#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"




/*
 * Get the speed command from position error and required terminal speed
 */
void TravelPosControl( float Travel, float vmax , float amax , float gain , float vt , float dT , float *Vref  )
{
    float dV ;
    float t0 = 0.1f ;
    float  SpeedSatMeterSec ;
    if ( Travel * vmax > 0  )
    {
        t0 = __fmin(t0,Travel/ __fmax(vmax,1e-6f) ) ;
    }
    else
    {
        t0 = 0 ;
    }

    SpeedSatMeterSec =  __fmin( -(amax * t0) + __sqrt(amax * amax * t0 * t0 + 2 * fabsf(Travel * amax)+vt*vt), fabsf(vmax) ) ;

    dV = amax * dT ;
    if ( Travel >= 0 )
    {
        *Vref =   __fmin( __fmin(gain * Travel, SpeedSatMeterSec) , *Vref + dV ) ;
    }
    else
    {
        *Vref =  __fmax( __fmax(gain * Travel, -SpeedSatMeterSec) , *Vref - dV );
    }
}

/*
 * Drive each wheel separately by its own position reference
 */
void DiffModeIndependentWheelTravel(void )
{
    float el , er , vr , vl ;
    float dT = CONTROL_TS_F ;
    float gain = 50 ;
    er = ( DiffDrive.RWheelPosTarget - WheelEncR.Position ) * Geom.Calc.WheelEncoder2MeterGnd ;
    el = ( DiffDrive.LWheelPosTarget - WheelEncL.Position ) * Geom.Calc.WheelEncoder2MeterGnd ;

    TravelPosControl( er , DiffDrive.MaxSpeed ,DiffDrive.MaxAcc , gain , 0 ,  dT , &vr   ) ;
    TravelPosControl( el , DiffDrive.MaxSpeed ,DiffDrive.MaxAcc , gain , 0 ,  dT , &vl   ) ;

    SetWheelGndSpeedCmd(vr,vl);

    if ( __fmax ( fabsf(er) , fabsf(er)  )  > 3e-3f )
    {
        SetSysTimerTargetSec ( TIMER_DIFFMODE_DIRECT , 0.5f ,&SysTimerStr );
    }
}





#define S_TH1 0.7f
#define S_TH2 0.5f
/*
 * Do correction for pole travel readiness
 * Try to set the angle correctly, and also being just against the pole; distance to pole is not managed.
 */
short    PoleCorrection(float angleReported , float xreport   )
{
    float WD  , S , cS , KTheta   ;
    short unsigned mask ;
    float dwheel ,sumwheel ;


    // Cosine of steering angles
    S = (SysState.Nav.Robot.RSteer - SysState.Nav.Robot.LSteer) * 0.5 ;
    cS = __cos( S )  ;

    // Distance from shoulder center to a wheel
    WD      = SysState.Nav.Robot.WheelTouchDist  ;

    if ( cS > 0.5 )
    {
        KTheta  = WD * S_TH2 / cS ;
        if ( cS < S_TH1 )
        {
            KTheta *= KTheta * ( S_TH1 - cS ) / (S_TH1 - S_TH2) ;
        }
    }
    else
    {
        KTheta = 0;
    }

    dwheel   =  -KTheta * angleReported ;
    sumwheel =   KTheta * xreport ;

    mask = BlockInts() ;

    DiffDrive.RWheelPosTarget = SysState.Nav.Robot.RWheelEnc + ( -dwheel + sumwheel) * Geom.Calc.Meter2WheelEncoderGnd;
    DiffDrive.LWheelPosTarget = SysState.Nav.Robot.LWheelEnc + (  dwheel + sumwheel) * Geom.Calc.Meter2WheelEncoderGnd;

    RestoreInts(mask) ;
    return 0   ;
}



/*
 * \brief Manage the state machine of climbing a pole - old routine
 *
 *
 */


/*
 * \brief Manage the state machine of climbing a pole, new state machine for close approach
 * px: Towards the pole
 * py: lateral, parallel to the shelf (right: against robot, x: with robot)
 * paz:
 * - Get picture
 * - Get direction and distance towards start point
 * - Go to start point
 * lOOP START:
 * - If needed, correct till shoulder center intersects x
 * - Straighten robot angle  till azimuth ok
 * - Crab
 * - Test
 * - If fail:
 * -    Go to loop start
 *
 */
static long RelVisitUsec  ;
short CommitCrabStateMachineRelative( void )
{
    float angleReported ,  xreported , yreported, Travel , d ;
#ifdef DYN_HOMING
    float  , DR , DL , WD , ca , sa ;
#endif
    long  unsigned now ,dT ;

    //float m1, m2;
    short  stat  ;
    short unsigned mask ;

    now = IsrTimer.UsecTimerOnFork ;
    dT = __fmin(__fmax((now-RelVisitUsec)*1e-6f,1e-4f),0.1f);
    RelVisitUsec = now  ;

    // If awaiting position report or timer, just wait
    if ( (SysState.ManRouteState.WaitRelPosReport  < 0 ) || ( MotionBreak.BreakCrab  &&  MotionBreak.BreakNow) )
    { // Just on hold don't burn timer
        if ( SysState.Mot.ChgMode.SubState > ER_CommitCrab_Init )
        {
            IncrementSysTimerTargetSec ( TIMER_POLE_HOMING , dT  , &SysTimerStr  );
        }
        return 0;
    }


    if (SysState.Mot.ChgMode.SubState == ER_CommitCrab_Init)
    { // If just entered mode, kill everything while waiting QR code reports
        KillDifferenceDrive();
    }

#ifdef DYN_HOMING
    DR = ( WheelEncR.Position - SysState.Mot.BgRelativePosReport.pNavBufferOnRelMsg->Renc ) * Geom.Calc.WheelEncoder2MeterGnd ;
    DL = ( WheelEncL.Position - SysState.Mot.BgRelativePosReport.pNavBufferOnRelMsg->Lenc ) * Geom.Calc.WheelEncoder2MeterGnd;
    WD = __fmax( SysState.Nav.Robot.WheelTouchDist , 0.01f );
#endif

#ifdef DYN_HOMING
    ca   = __cos(SysState.Mot.BgRelativePosReport.Azimuth) ;
    sa   = __sin(SysState.Mot.BgRelativePosReport.Azimuth) ;
    angleReported =  mod2piS (SysState.Mot.BgRelativePosReport.Azimuth + (DL-DR) / WD)   ;
    yreported     =  SysState.Mot.BgRelativePosReport.y - sa * (DL+DR) * 0.5f ; // Lateral deviation
    xreported     =  SysState.Mot.BgRelativePosReport.x - ca * (DL+DR) * 0.5f ; // Lateral deviation
#else
    angleReported =  mod2piS (SysState.Mot.BgRelativePosReport.Azimuth  )   ;
    yreported     =  SysState.Mot.BgRelativePosReport.y   ; // Lateral deviation
    xreported     =  SysState.Mot.BgRelativePosReport.x   ; // Lateral deviation
#endif

    SysState.ManRouteState.RelNavAz =  angleReported   ;

    if ( SysState.Mot.ChgMode.SubState == ER_CommitCrab_Init)
    {
        // Calculate the angle correction
        DiffDrive.MaxSpeed = 1.0f ;
        DiffDrive.MaxAcc   = 1.0f ;

        SetSysTimerTargetSec ( TIMER_DIFFMODE_DIRECT , 0.4f ,&SysTimerStr );
        SetSysTimerTargetSec ( TIMER_GEN_TIME_ACTION , 0.4f ,&SysTimerStr );

        SetCanAxisPosTarget(&SysState.CanAxis[LOGICAL_RSTEER],0) ;
        SetCanAxisPosTarget(&SysState.CanAxis[LOGICAL_LSTEER],0) ;

        ManRouteCmd.CrabCrawl = 0 ;
        SysState.ShelfRun.CrabCrawl = 0 ;
        InvertSpeed4Shelf( ManRouteCmd.CrabCrawl)  ; // Return to default

        // Wait a picture to start going
        SysState.ManRouteState.WaitRelPosReport = -2 ;
        ChangeCrabSubState(ER_CommitCrab_PreAdjustDirection)  ;

        return 0  ;
    }


    switch ( SysState.Mot.ChgMode.SubState )
    {
      case ER_CommitCrab_PreAdjustDirection:

          stat  = PoleCorrection(angleReported ,  xreported) ;
          if ( stat < 0  )
          {
              LogException(OWN_EXP_ID, EXP_ABORT, exp_azimuth_correction_too_large);
              break;
          }
          SysState.ManRouteState.DifferenceDrive = E_DiffDriveDifferentialTarget;

         // Set the direction of the robot together with lateral position along the pole
         // The distance to the pole is don't care
         stat  = PoleCorrection(angleReported ,  xreported) ;
         if ( stat < 0  )
         {
             LogException(OWN_EXP_ID, EXP_ABORT, exp_azimuth_correction_too_large);
             break;
         }

         if ( IsSysTimerElapse(TIMER_POLE_HOMING, &SysTimerStr) && IsSteerReady()  )
         {
             SetSysTimerTargetSec ( TIMER_DIFFMODE_DIRECT , 0.4f ,&SysTimerStr );
             SetSysTimerTargetSec ( TIMER_GEN_TIME_ACTION , 0.4f ,&SysTimerStr );

             SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER], PiHalf ) ;
             SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER] , -PiHalf)  ;

             ChangeCrabSubState(ER_CommitCrab_CommitYew)  ;
         }
         break;

     case ER_CommitCrab_CommitYew:
         // Enters only when the CrabProfiler is done

         PoleCorrection(angleReported ,  xreported  ) ;
         if ( IsSysTimerElapse(TIMER_POLE_HOMING, &SysTimerStr) && IsSteerReady()  )
         { // Done with it , time to crawl , but first take a picture
             ChangeCrabSubState( ER_CommitCrab_WaitSteerCorrect) ;
             SysState.ManRouteState.WaitRelPosReport = -2 ;
         }

         break ;

     case ER_CommitCrab_WaitSteerCorrect:
         if ( yreported < 0 )
         { // Left go
             Travel = -yreported - GetArcEntryLength()  ;
         }
         else
         {
             Travel =  yreported - GetArcEntryLength()  ;
         }
         mask = BlockInts() ;
         DiffDrive.RWheelPosTarget = SysState.Nav.Robot.RWheelEnc +  Travel * Geom.Calc.Meter2WheelEncoderGnd;
         DiffDrive.LWheelPosTarget = SysState.Nav.Robot.LWheelEnc -  Travel * Geom.Calc.Meter2WheelEncoderGnd;
         RestoreInts( mask) ;
         SetSysTimerTargetSec(TIMER_DIFFMODE_DIRECT, 0.3f , &SysTimerStr);
         SysState.ManRouteState.WaitRelPosReport = -2 ;
         ChangeCrabSubState(ER_CommitCrab_WaitFunellTravel) ;

     case ER_CommitCrab_WaitFunellTravel:

         if ( IsSysTimerElapse(TIMER_DIFFMODE_DIRECT, &SysTimerStr) )
         {
             if ( fabsf(angleReported ) > ControlPars.AngularPoleAccessTol )
             {
                 LogException(OWN_EXP_ID, EXP_WARN, exp_funell_miss_angular_fin_too_large);
                 ChangeCrabSubState(ER_CommitCrab_WaitRecrab) ;
                 SetCanAxisPosTarget( & SysState.CanAxis[LOGICAL_RSTEER], 0)  ;
                 SetCanAxisPosTarget( & SysState.CanAxis[LOGICAL_LSTEER], 0)  ;
             }
             if ( yreported < 0 )
             { // Left go
                 d = xreported - (-yreported - (GetArcEntryLength()  + Geom.ClimbArcRadi)  ) * angleReported ;
             }
             else
             {// Right go
                 d = xreported + (yreported - (GetArcEntryLength()  + Geom.ClimbArcRadi)  )  * angleReported ;
             }
             if (fabsf(d) > ControlPars.LateralPoleAccessTol )
             {// Error too large.
                 LogException(OWN_EXP_ID, EXP_WARN, exp_funell_miss_lateral_fin_too_large);
                 SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER],  0)  ;
                 SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER],  0)  ;
                 ChangeCrabSubState(ER_CommitCrab_WaitRecrab) ;
                 break;
             }

             // Kill difference drive and go crabbed at last
             KillDifferenceDrive();
             SysState.ShelfRun.CrabCrawl = SysState.ManRouteState.PendingCrab ;
             ManRouteCmd.CrabCrawl = SysState.ManRouteState.PendingCrab ;
             ChangeCrabSubState(ER_CommitCrab_WaitGoAhead) ;
         }
         break  ;

    case ER_CommitCrab_WaitRecrab:
        if ( IsSteerReady()  )
        {
            ChangeCrabSubState(ER_CommitCrab_Init) ;
        }
         break ;

    case ER_CommitCrab_WaitGoAhead:
        //if (CrabProfiler.Done): It is done as entry condition to the routine
            return 1 ;
    }
    return 0 ;
}




short CommitUnCrabStateMachineRelative(void)
{
    float angleReported ,  xreported , yreported , DR, DL , WD , ca, sa , tht , xs , ys, xr, yr , az ; //  , yreported  ;
    short unsigned mask ;
    long  unsigned now ;
    long dp[3] ;

    //float m1, m2;
    short  stat  ;

    now = IsrTimer.UsecTimerOnFork ;

    if ( (SysState.ManRouteState.WaitRelPosReport  < 0 ) || ( MotionBreak.BreakCrab  &&  MotionBreak.BreakNow) )
    { // Just on hold don't burn timer
        if ( SysState.Mot.ChgMode.SubState > ER_CommitCrab_Init )
        {
            IncrementSysTimerTargetSec ( TIMER_POLE_HOMING , __fmin(__fmax((IsrTimer.UsecTimerOnFork-RelVisitUsec)*1e-6f,0),0.1f)  , &SysTimerStr  );
            RelVisitUsec = now  ;
        }
        return 0;
    }
    RelVisitUsec = now  ;

    // If awaiting position report or timer, just wait
     if (SysState.ManRouteState.WaitRelPosReport < 0)
     {// Not expecting any catch
         return 0;
     }

     DR = ( WheelEncR.Position - SysState.Mot.BgRelativePosReport.pNavBufferOnRelMsg->Renc ) * Geom.Calc.WheelEncoder2MeterGnd ;
     DL = ( WheelEncL.Position - SysState.Mot.BgRelativePosReport.pNavBufferOnRelMsg->Lenc ) * Geom.Calc.WheelEncoder2MeterGnd;
     WD = __fmax( SysState.Nav.Robot.WheelTouchDist , 0.01f );
     ca   = __cos(SysState.Mot.BgRelativePosReport.Azimuth) ;
     sa   = __sin(SysState.Mot.BgRelativePosReport.Azimuth) ;

     angleReported =  mod2piS (SysState.Mot.BgRelativePosReport.Azimuth + (DL-DR) / WD)   ;
     yreported     =  SysState.Mot.BgRelativePosReport.y - sa * (DL+DR) * 0.5f ; // Lateral deviation
     xreported     =  SysState.Mot.BgRelativePosReport.x - ca * (DL+DR) * 0.5f ; // Lateral deviation

     SysState.ManRouteState.RelNavAz =  angleReported   ;

    if (SysState.Mot.ChgMode.SubState == ER_CommitCrab_Init)
    { // If just entered mode, kill everything while waiting QR code reports
        ChangeCrabSubState(E_CommitUnCrab_CommitBackToY) ;
        KillDifferenceDrive() ;
        DiffDrive.MaxSpeed = 1.0f ;
        DiffDrive.MaxAcc   = 1.0f ;

        SetSysTimerTargetSec ( TIMER_DIFFMODE_DIRECT , 0.4f ,&SysTimerStr );
        SetSysTimerTargetSec ( TIMER_GEN_TIME_ACTION , 0.4f ,&SysTimerStr );
        SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER], 0) ;
        SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], 0) ;

        SysState.ManRouteState.PendingCrab = ManRouteCmd.CrabCrawl ;
        ManRouteCmd.CrabCrawl = 0 ;
        SysState.ShelfRun.CrabCrawl = 0 ;
        InvertSpeed4Shelf( ManRouteCmd.CrabCrawl)  ; // Return to default

        // Wait a picture to start going
        SysState.ManRouteState.WaitRelPosReport = -2 ;
        ChangeCrabSubState(ER_CommitCrab_PrepUnfold)  ;
        return 0 ;
    }

    // If awaiting position report or timer, just wait
    if (SysState.ManRouteState.WaitRelPosReport < 0)
    {// Not expecting any catch
        return 0;
    }

    switch ( SysState.Mot.ChgMode.SubState )
    {

    case ER_CommitCrab_PrepUnfold:

        mask = BlockInts() ;
        DiffDrive.RWheelPosTarget = SysState.Nav.Robot.RWheelEnc - SysState.ManRouteState.PendingCrab *  SysState.ManRouteState.UnfoldTravel * Geom.Calc.Meter2WheelEncoderGnd;
        DiffDrive.LWheelPosTarget = SysState.Nav.Robot.LWheelEnc + SysState.ManRouteState.PendingCrab *  SysState.ManRouteState.UnfoldTravel * Geom.Calc.Meter2WheelEncoderGnd;
        SysState.ManRouteState.DifferenceDrive = E_DiffDriveDifferentialTarget;
        RestoreInts( mask) ;


       // Set the direction of the robot together with lateral position along the pole
       // The distance to the pole is don't care
       stat  = PoleCorrection(angleReported ,  xreported) ;
       if ( stat < 0  )
       {
           LogException(OWN_EXP_ID, EXP_ABORT, exp_azimuth_correction_too_large);
           break;
       }

       if ( IsSysTimerElapse(TIMER_POLE_HOMING, &SysTimerStr) && IsSteerReady()  )
       {
           SetSysTimerTargetSec ( TIMER_DIFFMODE_DIRECT , 0.4f ,&SysTimerStr );
           SetSysTimerTargetSec ( TIMER_GEN_TIME_ACTION , 0.4f ,&SysTimerStr );

           ChangeCrabSubState(ER_CommitCrab_Unfold)  ;
       }
       break;

    case ER_CommitCrab_Unfold:
        if ( IsSysTimerElapse(TIMER_DIFFMODE_DIRECT, &SysTimerStr) )
        {  // Folded
            SysState.ManRouteState.WaitRelPosReport = -2 ;
            mask = BlockInts() ;
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER] , 0) ;
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER] , 0) ;
            RestoreInts( mask) ;
            ChangeCrabSubState(ER_CommitCrab_Uncrab)  ;
        }
        break ;
    case ER_CommitCrab_Uncrab:
        PoleCorrection(angleReported ,  xreported  ) ;
        if ( IsSysTimerElapse(TIMER_POLE_HOMING, &SysTimerStr) && IsSteerReady()  )
        {
            SysState.ManRouteState.WaitRelPosReport = -1 ;
            ChangeCrabSubState(ER_CommitCrab_UncrabDone)  ;
        }
        break ;

    case ER_CommitCrab_UncrabDone:
        // Take absolute position before departing

        tht = SysState.ManRouteState.NomRouteTangent ;
        // xs - ys are the robot coordinates at the pole system
        xs  = xreported * ca - yreported * sa ;
        ys  = xreported * sa + yreported * ca ;

        // robot coordinates at the global
        ca  = __cos(tht) ;
        sa  = __sin(tht) ;
        xr  = SysState.ManRouteState.NomRouteLocation[0] + ca * xs - sa * ys ;
        yr  = SysState.ManRouteState.NomRouteLocation[1] + sa * xs + ca * ys ;

        mask = BlockInts() ;
        dp[0] = (long)(xr*M_2_LONG_FAC) - SysState.Nav.iPos[0];
        dp[1] = (long)(yr*M_2_LONG_FAC) - SysState.Nav.iPos[1];
        dp[2] = 0  - SysState.Nav.iPos[2];
        RestoreInts(mask) ;

        UpdateDeltaPos( dp );

        az = mod2piS (SysState.Mot.BgRelativePosReport.Azimuth + tht )   ;

        mask = BlockInts() ;

        GyroInt.BodyQuat[0] = __cos( az / 2 ) ;
        GyroInt.BodyQuat[1] = 0 ;
        GyroInt.BodyQuat[2] = 0 ;
        GyroInt.BodyQuat[3] = __sin( az / 2 ) ;

        CaptureLastPosition(  &SysState.Mot.LastPositionItem) ;
        //SysState.Mot.GndNavInitialized = 1 ;
        UpdateRobotPos();
        RestoreInts(mask) ;
        return 1 ;
    }
    return 0 ;
}
