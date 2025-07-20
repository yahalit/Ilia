/*
 * ShelfStateNew.c
 *
 *  Created on: Sep 6, 2020
 *      Author: Yahali Theodor
 */
#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x);
#endif


// returns distance between robot center and terminal tooth base for start of crabbing.
float GetArcEntryLength()
{
    float TerminalLength, result, TerminalClimbClearance;
    if (SysState.Mot.UsePoleDocking == 0)
    {
        TerminalLength = GetArcEntryLength() ; //rigid long distance between robot center and terminal tooth base for start of crabbing.
        TerminalClimbClearance = 0.132; //Geom.ArcEntryLength was 0.82 = arc width (0.32) +robot/2 + wheel/2 (0.368) +entry unit (0.132)
    }
    else // if  (SysState.Mot.UsePoleDocking == 1)
    if ( (SysState.Mot.RelativePosReport.TerminalType >= 1) && (SysState.Mot.RelativePosReport.TerminalType <= NUMBER_OF_TERMINAL_TYPES) )
    {
        TerminalLength = TERMINAL_LENGTH_THEETH_BASE_2_TIP[SysState.Mot.RelativePosReport.TerminalType - 1];
        TerminalClimbClearance = Geom.TerminalClimbClearance;
    }
    else
    {
        LogException(OWN_EXP_ID, EXP_FATAL, exp_illeagal_terminal_type);
    }

    //result = TerminalLength + Geom.RobotCenter2WagonTip + TerminalClimbClearance;
    result = TerminalLength + Geom.HalfDistBetweenWheelAxes + Geom.DistWheelAxis2WagonTip  + TerminalClimbClearance;

    return result;
}

//#define MinimumTravel   0.005f
float GetMinimalArcTravel()
{
    float MinimumTravel ;
    MinimumTravel = 0.005f ;
    if( IsArcSegmentCompensation()  )
    {
        //MinimumTravel = Geom.ArcEntryLength + 0.02f ;
        MinimumTravel = GetArcEntryLength() + 0.02f;
    }
    return MinimumTravel ;
}

float PredictMiss( float x0, float y0 , float tht0  ,float x1, float y1 , float tht1 , float *godist )

{
    float s0 , s1 , c0 , c1 , delta;
    s0 = Ysin(tht0) ;
    c0 = Ycos(tht0) ;
    s1 = Ysin(tht1) ;
    c1 = Ycos(tht1) ;

    delta = c0*c1+s0*s1 ;
    if ( fabs(delta < 1e-3f) )
    {
        *godist = 1e-3 ; // Trigger an error
        return    0 ; // Very big miss
    }

    delta = 1.0f/delta ;
    *godist = ((-y0+y1)*c1+s1*(x0-x1))*delta ;
    return ((x0-x1)*c0+s0*(y0-y1))*delta ;

}


void ChangeCrabSubState(short newSub )
{
    MotionBreak.BreakNow = 1;
    MotionBreak.OldState = SysState.Mot.ChgMode.SubState ;
    MotionBreak.NextState = newSub ;
    SysState.Mot.ChgMode.SubState = newSub ;
}

/*
 * \brief Manage the state machine of climbing a pole, new state machine for close approach
 *
 *
 */
short CommitCrabStateMachineNew( void )
{
    float tht, curv , d, dtht , x2 , y2 , miss , thtmiss , godist   ;
    float accsamp , speedsamp , maxsteerspeed , calcsteerspeed , speedfac;
    float c1 , s1 , xgo , ygo , thtgo ;
    //float m1, m2;
    short unsigned mask ;
    short Fail ;

    if ( MotionBreak.BreakCrab  &&  MotionBreak.BreakNow)
    {
        return 0;
    }


    if ( SysState.Mot.ChgMode.SubState  > E_CommitCrab_AllocStateOffset)
    {//  Doing a spline (normally not required anymore) ...
        return (CommitCrabStateMachine() ) ;
    }


    x2 = 0 ; y2 = 0; // Just to avoid compiler warning

    if (SysState.Mot.ChgMode.SubState == EN_CommitCrab_Init)
    { // If just entered mode, kill everything while waiting QR code reports
        ManRouteCmd.CurvatureCmd = 0;
        ManRouteCmd.LineSpeedCmd = 0;
        ManRouteCmd.dCurvatureCmd = 0 ;
        CrabProfiler.Done = 1;
    }

   // If awaiting position report or timer, just wait
    if ( CatchPosReport()  )
    {
        return 0 ;
    }
    SysState.ManRouteState.WaitPosReport = -1; // If catch done, expect no more

    if ( CrabProfiler.Done == 0 || SysState.ManRouteState.NewCrabFlag || ( IsSysTimerElapse(TIMER_GEN_TIME_ACTION, &SysTimerStr) == 0 ) )
    { // Waiting completion of profiler or timing
        return 0 ;
    }

    switch ( SysState.Mot.ChgMode.SubState )
    {
     case EN_CommitCrab_Init: // Wait arrival of interpreted Q code for present position

         // Calculate the angle correction
         KillDifferenceDrive() ;
         //SysState.ManRouteState.DifferenceDrive = 0;

         tht  = SysState.ManRouteState.NomRouteTangent ; // - SysState.ManRouteState.PendingCrab * (pi * 0.5f ) ;
         SysState.ManRouteState.NavAz = mod2piS ( AngletoF(SysState.Mot.BgPosReport.Azimuth ) ) ;

         dtht = mod2piS( tht - SysState.ManRouteState.NavAz)  ;

         if (fabsf(dtht) > 0.2f)
         {// Error too large.
             LogException(OWN_EXP_ID, EXP_ABORT, exp_azimuth_correction_too_large);
             break;
         }

         CrabProfiler.PosMin = -1e6f ;
         CrabProfiler.PosMax =  1e6f ;
         if ( fabsf( dtht ) > 5e-3f  )
         { // Significant angle deviation
             ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed ,
                              AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration ,
                                   0.01f , EProfile_PerAxis  ) ;
             ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
             mask = BlockInts();
             {
                 CrabProfiler.Done = 0;
                 CrabProfiler.PosTarget = dtht ;
                 SysState.ManRouteState.DifferenceDrive = 1;
             }
             RestoreInts(mask);
         }
         else
         {
             // Profiler has to be initialized anyway, just mark it done
             ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed ,
                              AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration ,
                                   0.01f , EProfile_PerAxis  ) ;
             ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
             CrabProfiler.Done = 1;
         }
         ChangeCrabSubState(EN_CommitCrab_PreAdjustDirection)  ;
         break;

     case EN_CommitCrab_PreAdjustDirection: // Apply for position report after angular correction
         //if (CrabProfiler.Done): It is done as entry condition to the routine
         {
             //Yahali Sept 2019 SetPosReportCatchReduced(0);
             SysState.ManRouteState.NavAz  = SysState.ManRouteState.NomRouteTangent ; //Just assume convergence
             ChangeCrabSubState( EN_CommitCrab_AdjustDirection) ;
         }
         break;

     case EN_CommitCrab_AdjustDirection:
        // Adjusted direction, get now where
        // We are now on the line b = cos(SysState.Mot.BgPosReport.Azimuth) , a = -sin(SysState.Mot.BgPosReport.Azimuth),
        //   c = a * pos[0] + b * pos[1]
        // the position we wish is of the closest proximity to the target (x0,y0)

         d = FindProximalPoint( SysState.ManRouteState.NomRouteLocation[0] , SysState.ManRouteState.NomRouteLocation[1] ,
                                SysState.ManRouteState.NavX , SysState.ManRouteState.NavY ,
                                SysState.ManRouteState.NavAz , &x2 , &y2 , IsArcSegmentCompensation() ) ;

         d = d + DebugAddRoute ;

         if (fabsf(d) > 1.0)
         {// Error too large.
             LogException(OWN_EXP_ID, EXP_ABORT, exp_distance_correction_too_large);
             break;
         }

         if ( fabsf(d) > 0.004f )
         {/*
         Just run straight for the given compensation distance
         */
             ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed ,
                              AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration ,
                                   0.01f , EProfile_PerAxis  ) ;
             ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
             mask = BlockInts();
             {
                 CrabProfiler.Done = 0;
                 CrabProfiler.PosTarget = d;
                 SysState.ManRouteState.DifferenceDrive = 2;
                 SysState.ManRouteState.Curvature = 0;
                 ManRouteCmd.CurvatureCmd = 0;
                 ManRouteCmd.dCurvatureCmd = 0 ;
             }
             RestoreInts(mask);
         }
         else
         {
             KillDifferenceDrive() ; // Will set the CrabProfiler to Done
             //SysState.ManRouteState.DifferenceDrive = 0;
             //CrabProfiler.Done = 1;
         }
         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.15f  , &SysTimerStr); // Was 0.3sec delay
         ChangeCrabSubState(EN_CommitCrab_CommitYew ) ;
         break ;

     case EN_CommitCrab_CommitYew:
         // Enters only when the CrabProfiler is done
        SetSysTimerTargetSec(TIMER_CRAB_ACTION, 0.5f, &SysTimerStr);


        mask = BlockInts() ;
        {// Nothing more to test , simply turn the steering 90 degrees
            SysState.ManRouteState.NewCrabFlag = 1  ;
            SysState.ShelfRun.CrabCrawl = SysState.ManRouteState.PendingCrab ;
            ManRouteCmd.CrabCrawl = SysState.ManRouteState.PendingCrab ;
            ManRouteCmd.LineSpeedCmd = 0 ;
            ManRouteCmd.CurvatureCmd = 0 ;
            ManRouteCmd.dCurvatureCmd = 0 ;
            ChangeCrabSubState(EN_CommitCrab_WaitFinalFix) ;
            KillDifferenceDrive() ;
        }
        RestoreInts(mask) ;
        SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.3f , &SysTimerStr );
        break ;

     case EN_CommitCrab_WaitFinalFix:
         // Commit yew - wait crab crawl completes
         SetPosReportCatchReduced(0) ;
         ChangeCrabSubState(EN_CommitCrab_DecideFinalGo) ;
         break  ;

     case EN_CommitCrab_DecideFinalGo:
         ClimbMgr.tht90 = mod2piS(SysState.ManRouteState.NavAz +(float)ManRouteCmd.CrabCrawl * 1.570796326794897f);
         ClimbMgr.tht90nom = mod2piS(SysState.ManRouteState.NomRouteTangent +(float)ManRouteCmd.CrabCrawl * 1.570796326794897f);
         ClimbMgr.tht90targ = mod2piS( ClimbMgr.tht90 + mod2piS(ClimbMgr.tht90nom-ClimbMgr.tht90) * 0.5f ) ;

         thtmiss = mod2piS(SysState.ManRouteState.NavAz-SysState.ManRouteState.NomRouteTangent);

         xgo = SysState.ManRouteState.NomRouteLocation[0];
         ygo = SysState.ManRouteState.NomRouteLocation[1] ;
         thtgo = SysState.ManRouteState.NomRouteTangent + (float)ManRouteCmd.CrabCrawl * 1.570796326794897f ;
         if (IsArcSegmentCompensation())
         {
             xgo -= __cos(thtgo) *  GetArcEntryLength() ; //replace Geom.ArcEntryLength
             ygo -= __sin(thtgo) *  GetArcEntryLength() ;
         }


         miss = PredictMiss (SysState.ManRouteState.NavX  , SysState.ManRouteState.NavY ,
                                    SysState.ManRouteState.NavAz ,
                                    xgo , ygo,
                                    SysState.ManRouteState.NomRouteTangent , & godist );

         if (fabsf( godist)  < 0.005f  )  // GetMinimalArcTravel() )
         { // corrective movement too small , skip this stage
             LogException(OWN_EXP_ID, EXP_ABORT, exp_spline_distance_too_short);
             break ;
         }
         if (fabsf( godist)  > Constraint.FunnelSplineMinDist )
         { // corrective movement too small , skip this stage
             // This is an invitation for full spline algorithm
             ChangeCrabSubState(E_CommitCrab_FinalArc) ;
             break ;
         }



         if ( (fabsf( miss) < Constraint.FunnelLateralTol) && (fabsf(thtmiss) < Constraint.FunnelAngularTol))
         {
             // Take a spline-less spline ....
             c1 = Ycos(ClimbMgr.tht90 ) ;
             s1 = Ysin(ClimbMgr.tht90) ;

             FindSplineRoute(SysState.ManRouteState.NavX  , SysState.ManRouteState.NavY ,
                                    ClimbMgr.tht90,
                                    SysState.ManRouteState.NavX + c1 * godist ,
                                    SysState.ManRouteState.NavY + s1 * godist ,
                                    ClimbMgr.tht90 ,
                                    &SysState.ManRouteState.ProfileTravel, &SysState.Spline , &Fail);
             //curv = 0;

             ManRouteCmd.LineSpeedCmd = 0 ;
             SysState.ManRouteState.LineSpeed = 0 ;

             ProgramProfiler(&CrabProfiler, Constraint.FunnelApproachSpeed ,
                             Constraint.FunnelApproachAcc ,Constraint.FunnelApproachAcc ,0.01f, EProfile_PerAxis);

             ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );

             mask = BlockInts();
             {
                 CrabProfiler.Done = 0;
                 CrabProfiler.PosTarget = SysState.ManRouteState.ProfileTravel ;
                 // Clear the profile to go
                 SysState.Spline.ManualCurvature = 0 ;
                 SysState.ManRouteState.DifferenceDrive = 4;
             }
             RestoreInts(mask);

             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.15f , &SysTimerStr );
             ChangeCrabSubState(EN_CommitCrab_WaitGoAhead) ;
         }
         else
         {
             // Un-crab back
             SetSysTimerTargetSec(TIMER_CRAB_ACTION, 0.5f, &SysTimerStr);


             mask = BlockInts() ;
             {// Nothing more to test , simply turn the steering 90 degrees
                 SysState.ManRouteState.NewCrabFlag = 1  ;
                 SysState.ShelfRun.CrabCrawl = 0 ;
                 ManRouteCmd.CrabCrawl = 0  ;
                 ManRouteCmd.LineSpeedCmd = 0 ;
                 ManRouteCmd.CurvatureCmd = 0 ;
                 ManRouteCmd.dCurvatureCmd = 0 ;
                 ChangeCrabSubState(EN_CommitCrab_WaitRecrab) ;
                 KillDifferenceDrive() ;
             }
             RestoreInts(mask) ;
             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.3f , &SysTimerStr );
         }
         break ;

     case EN_CommitCrab_WaitRecrab:
         // Commit yew - wait crab crawl completes
         SetPosReportCatchReduced(0) ;
         ChangeCrabSubState(EN_CommitCrab_Init) ;
         break  ;

     case EN_CommitCrab_WaitSteerCorrect:
         // Do steering completely before starting the drive, so that the robot
         // shall travel a neat arc
         if ( IsSteerReady( ) )
         {
             ChangeCrabSubState(EN_CommitCrab_WaitFunellTravel) ;
             accsamp   = Constraint.FunnelApproachAcc   ;
             speedsamp = Constraint.FunnelApproachSpeed ;
             maxsteerspeed = 0.3f ;
             calcsteerspeed  = TestSpline( &SysState.Spline , SysState.ManRouteState.ProfileTravel , accsamp , speedsamp , ManRouteCmd.CrabCrawl  );
             if ( calcsteerspeed < maxsteerspeed)
             {
                 speedfac = 1 ;
             }
             else
             {
                 speedfac = maxsteerspeed / calcsteerspeed ;
             }
             ProgramProfiler(&CrabProfiler, speedsamp *  speedfac ,
                             accsamp * speedfac ,accsamp * speedfac ,0.01f, EProfile_PerAxis);

             ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
             mask = BlockInts();
             {
                 CrabProfiler.Done = 0;
                 CrabProfiler.PosTarget = -SysState.ManRouteState.ProfileTravel ;
                 // Clear the profile to go
                 SysState.Spline.ManualCurvature = 0 ;
                 SysState.ManRouteState.DifferenceDrive = 4;
             }
             RestoreInts(mask);

             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.15f , &SysTimerStr );
             ChangeCrabSubState(EN_CommitCrab_WaitFunellTravel) ;
         }
         break ;

     case EN_CommitCrab_WaitFunellTravel:
         //if (CrabProfiler.Done): It is done as entry condition to the routine
         {
             ManRouteCmd.LineSpeedCmd = 0 ;
             ManRouteCmd.CurvatureCmd = 0 ; // Bring command to standard closure
             ManRouteCmd.dCurvatureCmd = 0 ;

             SysState.ManRouteState.DifferenceDrive = 0 ;
             SetSysTimerTargetSec(TIMER_GEN_TIME_ACTION, 0.5f, &SysTimerStr);
             if (  ClimbMgr.BackDir )
             {
                 ChangeCrabSubState(EN_CommitCrab_WaitFinalFix);
             }
             else
             {
                 ChangeCrabSubState(EN_CommitCrab_WaitReady4Funnel);
             }
         }
         break;

     case EN_CommitCrab_WaitReady4Funnel:
         if ( IsSteerReady( ) )
         {
             KillDifferenceDrive() ;

             curv = FindSplineRoute(ClimbMgr.xout,ClimbMgr.yout ,
                                    ClimbMgr.tht90targ , SysState.ManRouteState.NomRouteLocation[0] , SysState.ManRouteState.NomRouteLocation[1] ,
                                    ClimbMgr.tht90nom ,
                                    &SysState.ManRouteState.ProfileTravel, &SysState.Spline , &Fail);

             ManRouteCmd.LineSpeedCmd = 0 ;
             SysState.ManRouteState.LineSpeed = 0 ;
             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.1f , &SysTimerStr );
             mask = BlockInts() ;
             {
                 SysState.CanAxis[LOGICAL_RSTEER].ConvergenceCnt = 0 ;
                 SysState.CanAxis[LOGICAL_LSTEER].ConvergenceCnt = 0 ;
                 SysState.Spline.ManualCurvature = 1 ; // Command curvature set only
                 SysState.ManRouteState.DifferenceDrive = 4;
                 ManRouteCmd.CurvatureCmd = curv;
                 ManRouteCmd.dCurvatureCmd = 0 ; // Not used anyway in spline mode

             }
             RestoreInts( mask) ;
             ClimbMgr.BackDir = 1;

             ChangeCrabSubState(EN_CommitCrab_WaitSteerCorrect);
             break;
          }
         break ;
    case EN_CommitCrab_WaitFinalFunnelFix :
        // Return the start point



        // Verify that the last fix is in the tolerance before attempting climb
        //SysState.fDebug[11] = SysState.ManRouteState.NavAz ;
        //SysState.fDebug[12] = SysState.ManRouteState.NavX ;
        //SysState.fDebug[13] = SysState.ManRouteState.NavY ;


        d = FindProximalPoint( SysState.ManRouteState.NomRouteLocation[0] , SysState.ManRouteState.NomRouteLocation[1] ,
                               SysState.ManRouteState.NavX , SysState.ManRouteState.NavY ,
                               SysState.ManRouteState.NavAz , &x2 , &y2,IsArcSegmentCompensation()) ;

        if (fabsf(d /*- SysState.ManRouteState.NavAz * Geom.Center2WheelDist*/) > ControlPars.LateralPoleAccessTol )
        {// Error too large. Vandal: Need to consider angular error
            LogException(OWN_EXP_ID, EXP_ABORT, exp_funell_miss_lateral_fin_too_large);
            break;
        }

        if ( fabsf(mod2piS( SysState.ManRouteState.NavAz -  SysState.ManRouteState.NomRouteTangent )) >  ControlPars.AngularPoleAccessTol )
        {
            LogException(OWN_EXP_ID, EXP_ABORT, exp_funell_miss_angular_fin_too_large);
            break;
        }

        //LogException(OWN_EXP_ID, EXP_ABORT, exp_you_cant_climb_anyway);
        //break ;

        return 1 ;
    case EN_CommitCrab_WaitGoAhead:
        //if (CrabProfiler.Done): It is done as entry condition to the routine
        {
            mask = BlockInts() ;
            {
                ManRouteCmd.LineSpeedCmd = 0 ;
                ManRouteCmd.CurvatureCmd = 0 ; // Bring command to standard closure
                ManRouteCmd.dCurvatureCmd = 0 ;

                SysState.ManRouteState.DifferenceDrive = 0 ;
                SetSysTimerTargetSec(TIMER_GEN_TIME_ACTION, 0.5f, &SysTimerStr);
            }
            RestoreInts( mask) ;
            return 1 ;
        }
        //break ;
    }
    return 0 ;
}
