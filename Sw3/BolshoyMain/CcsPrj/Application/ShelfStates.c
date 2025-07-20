#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"


#ifdef _LPSIM
#include <math.h>
#else
float fabsf( float );
#endif




/*
 * \brief Kill the difference drive on difference mode exit
 *
 */
void KillDifferenceDrive(void)
{
    short unsigned mask ;
    mask = BlockInts() ;
    ManRouteCmd.LineSpeedCmd = 0 ;
    SysState.ManRouteState.LineSpeed = 0 ;
    ManRouteCmd.CurvatureCmd = 0 ;
    ManRouteCmd.dCurvatureCmd = 0 ;
    SysState.ManRouteState.Curvature = 0 ;
    SysState.ManRouteState.DifferenceDrive = 0 ;
    SysState.Spline.ManualCurvature = 0 ;

    CrabProfiler.Done = 1;
    RestoreInts(mask) ;
}

#define DEFAULT_D_TIME 0.4f
void SetPosReportCatch ( void)
{
    float dTime = DEFAULT_D_TIME;
    SysState.ManRouteState.WaitPosTime = GetShortTimer( & SysTimerStr) + (long)(dTime*1000000)  ;// Additional DEFAULT_D_TIME sec for stop
    SysState.ManRouteState.WaitPosReport = 3 ; // Wait two consecutive reports
}

/*
 * Install wait for a position report. We shall only look for reports newer than the call to this routine
 */

void SetPosReportCatchReduced ( float dTime )
{
    if ( dTime <= 0 )
    {
        dTime = DEFAULT_D_TIME ;
    }
    SysState.ManRouteState.WaitPosTime = GetShortTimer( & SysTimerStr) + (long)(dTime*1000000)  ;// Additional DEFAULT_D_TIME sec for stop
    SysState.ManRouteState.WaitPosReport = 4 ; // One reading shall suffice
}

/*
 * \brief: Trap that a position report arrived , and if arrived, copy its contents
 *
 *
 */
short CatchPosReport( void )
{
    if (SysState.ManRouteState.WaitPosReport <= 0)
    {// Not expecting any catch
        return 0;
    }
    if (SysState.ManRouteState.WaitPosReport == 1)
    { // Catch done
        // Log NAV position
        SysState.ManRouteState.NavX = SysState.Mot.BgPosReport.X[0] * POS_UNIT_2_M;
        SysState.ManRouteState.NavY = SysState.Mot.BgPosReport.X[1] * POS_UNIT_2_M;
        SysState.ManRouteState.NavAz = mod2piS(AngletoF(SysState.Mot.BgPosReport.Azimuth));

        SysState.ManRouteState.WaitPosReport = 0; // Clear request
        return 0;
    }
    else
    {  // Wait
        return 1 ;
    }
}

/*
 * \brief Test id steering action is complete by now
 *          1: Complete and stable
 *          0: Otherwise
 *
 */
short IsSteerReady(void)
{

    if ( IsSysTimerElapse(TIMER_GEN_TIME_ACTION, &SysTimerStr) == 0 )
    {
        return 0 ;
    }

    if (  SysState.CanAxis[LOGICAL_RSTEER].PositionReached &&  SysState.CanAxis[LOGICAL_LSTEER].PositionReached &&
            // Removed in CSV mode SysState.CanAxis[LOGICAL_RW].StatusWord.TargetReached && SysState.CanAxis[LOGICAL_LW].StatusWord.TargetReached &&
            IsSpeedCmdZero(&SysState.CanAxis[LOGICAL_RW]) && IsSpeedCmdZero(&SysState.CanAxis[LOGICAL_LW]) &&
             ( ManRouteCmd.CurvatureCmd == SysState.ManRouteState.Curvature ) && (SysState.ManRouteState.NewCrabFlag == 0 ) )
    {
        return 1 ;
    }
    else
    {
        SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.8f , &SysTimerStr );
        return 0 ;
    }
}


float TestSpline( struct CSpline *pS , float x , float acc , float v , short crawl  )
{
float t , dt, tv , pv , tb[5] , pb[4] , vb[4] , ab[4]   , dy , junk , d1 , d2 , dmax ;
float C  , a , eta , fTemp  , gTemp , RSteer, LSteer ,RSteerOld, LSteerOld , tseg , p ;
int cnt, seg  ;
    // Get the time
    tv = v / acc ;
    pv = 0.5f * acc * tv * tv ;
    tb[0] = 0 ;
    if( pv * 2 < x)
    {
        tb[1] = tv ;
        tb[2] = tv + ( x - 2 * pv ) / v ;
        tb[3] = tb[2] + tv ;
    }
    else
    {
        tv = sqrtf( x / acc ) ;
        v = tv * acc ;
        tb[1] =tv ;
        tb[2] = tv ;
        tb[3] = tb[2] + tv ;
    }
    tb[4] = tb[3] * 2  ; // Just in case of numerical error

    pb[0] = 0 ; pb[1] = 0.5f * acc * tv * tv ;  pb[2] = x - pb[1] ; pb[3] = x  ;
    vb[0] = 0 ; vb[1] = v ;  vb[2] = v ; vb[3] = 0 ;
    ab[0] = acc ; ab[1] = 0 ; ab[2] = -acc ; ab[3] = 0 ;

    a = Geom.Center2WheelDist ;
    eta = ( ( crawl > 0 ) ? -PiHalf : PiHalf ) ;

    seg = 0 ;

    dy   = pS->c   ;
    junk = ( 1 + dy * dy );
    C = (2 * pS->b )/ (junk * sqrtf(junk)) ;

    fTemp =  a * C * Ycos(eta) ;
    gTemp =  a * C * Ysin(eta) ;

    RSteerOld = -eta - atan2f(gTemp, 1 - fTemp) ;
    LSteerOld = -eta + atan2f(gTemp, 1 + fTemp) ;


    dt  = tb[3] / 100 ;
    dmax = 0 ;
    for ( cnt = 1 ; cnt <= 100 ; cnt++)
    {
        t = dt * cnt ;
        while ( t > tb[seg+1] )
        {
            seg+= 1 ;
        }
        tseg = t - tb[seg] ;
        p = pb[seg] + ( vb[seg] + 0.5f * ab[seg] * tseg ) * tseg ;
        dy   =  ( 3 * pS->a * p + 2 * pS->b ) * p + pS->c   ;
        junk = ( 1 + dy * dy );
        C = ( 6.0f * pS->a * p + 2 * pS->b )/ (junk * sqrtf(junk)) ;

        fTemp =  a * C * Ycos(eta) ;
        gTemp =  a * C * Ysin(eta) ;

        RSteer = -eta - atan2f(gTemp, 1 - fTemp) ;
        LSteer = -eta + atan2f(gTemp, 1 + fTemp) ;

        d1 = fabsf( RSteer - RSteerOld ) ;
        d2 = fabsf( LSteer - LSteerOld ) ;
        if ( d1 < d2 ) d1 = d2 ;
        if ( d1 > dmax ) dmax = d1 ;
        RSteerOld = RSteer ;
        LSteerOld = LSteer ;
    }
    return dmax / dt ;
}






/*
 * \brief Manage the state machine of un-climbing a pole
 * This is made of the following:
 * - Take snapshot of position , decide the needed Y motion
 * - Travel on Y
 * - Uncrab
 * - Correct azimuth by differential drive
 */

short CommitUnCrabStateMachine( void )
{
    short unsigned mask ;
    float  xc , yc , d , tht , dtht , YTravelAcc  ;

    YTravelAcc = AutomaticRunPars.CrabAcceleration * 0.2f ;

    xc = 0 ; yc = 0 ; // Just avoid compiler warning
    if (SysState.Mot.ChgMode.SubState == E_CommitCrab_Init)
    { // If just entered mode, kill everything while waiting QR code reports
        ManRouteCmd.CurvatureCmd = 0;
        ManRouteCmd.dCurvatureCmd = 0 ;
        ManRouteCmd.LineSpeedCmd = 0;
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
    case E_CommitCrab_Init: // First start the position
        //SetPosReportCatchReduced(0); // Sept 2019 Learn the position
        ChangeCrabSubState(E_CommitUnCrab_CommitBackToY) ;
        break;

    case E_CommitUnCrab_CommitBackToY:
        //FindProximalPoint(SysState.ManRouteState.NavX, SysState.ManRouteState.NavY,
        //  SysState.ManRouteState.NomRouteLocation[0], SysState.ManRouteState.NomRouteLocation[1],
        //  SysState.ManRouteState.NomRouteTangent, &xc, &yc);

        /*
        xc = SysState.ManRouteState.NomRouteLocation[0] ;
        yc = SysState.ManRouteState.NomRouteLocation[1] ;
        d = HYpot( xc - SysState.ManRouteState.NavX , yc - SysState.ManRouteState.NavY );


        if (
            (
                (yc - SysState.ManRouteState.NavY) * Ycos(SysState.ManRouteState.NavAz) -
                (xc - SysState.ManRouteState.NavX) * Ysin(SysState.ManRouteState.NavAz)
            )  * ManRouteCmd.CrabCrawl > 0)
        {
            d = -d;
        }
        */
        // Sept 2019
        d = SysState.ManRouteState.UnfoldTravel ;
        if (fabsf(d) > 1.0)
        {// Error too large.
            LogException(OWN_EXP_ID, EXP_ABORT, exp_distance_correction_too_large);
            break;
        }

        // Program profile to there
        if (fabsf(d) > 0.005f)
        {
            ProgramProfiler(&CrabProfiler, 0.3f , //  AutomaticRunPars.CrabSpeed,
                            YTravelAcc, YTravelAcc,
                0.01f, EProfile_PerAxis);
            ResetProfiler(&CrabProfiler, 0, 0, 1);
            mask = BlockInts();
            {
                CrabProfiler.Done = 0;
                CrabProfiler.PosTarget = -d;
                SysState.ManRouteState.DifferenceDrive = 3;
                SysState.ManRouteState.Curvature = 0;
                ManRouteCmd.CurvatureCmd = 0;
                ManRouteCmd.dCurvatureCmd = 0 ;
            }
            RestoreInts(mask);
            SetSysTimerTargetSec(TIMER_GEN_TIME_ACTION, 0.3f, &SysTimerStr);
        }
        else
        {
            KillDifferenceDrive() ;
            //CrabProfiler.Done = 1;
        }
        ChangeCrabSubState(E_CommitUnCrab_WaitFirstFix) ;
        break;

    case E_CommitUnCrab_WaitFirstFix:
        // Wait for arc - route segment to complete , than initiate position measurement
        //if (CrabProfiler.Done): It is done as entry condition to the routine
        {
            SetPosReportCatchReduced(0);
            ChangeCrabSubState(E_CommitUnCrab_CommitPerpendicularCorrect ) ; // Sept 2019 E_CommitUnCrab_CommitSteer;
        }
        break ;

    case E_CommitUnCrab_CommitPerpendicularCorrect:
        xc = SysState.ManRouteState.NomRouteLocation[0] ;
        yc = SysState.ManRouteState.NomRouteLocation[1] ;

        d = HYpot( xc - SysState.ManRouteState.NavX , yc - SysState.ManRouteState.NavY );

        if (
            (
                (yc - SysState.ManRouteState.NavY) * Ycos(SysState.ManRouteState.NavAz) -
                (xc - SysState.ManRouteState.NavX) * Ysin(SysState.ManRouteState.NavAz)
            )  * ManRouteCmd.CrabCrawl > 0)
        {
            d = -d;
        }

        // Program profile to there
        if (fabsf(d) > 0.005f)
        {
            ProgramProfiler(&CrabProfiler, 0.3f , //  AutomaticRunPars.CrabSpeed,
                            YTravelAcc, YTravelAcc,
                0.01f, EProfile_PerAxis);
            ResetProfiler(&CrabProfiler, 0, 0, 1);
            mask = BlockInts();
            {
                CrabProfiler.Done = 0;
                CrabProfiler.PosTarget = -d;
                SysState.ManRouteState.DifferenceDrive = 3;
                SysState.ManRouteState.Curvature = 0;
                ManRouteCmd.CurvatureCmd = 0;
                ManRouteCmd.dCurvatureCmd = 0 ;
            }
            RestoreInts(mask);
            SetSysTimerTargetSec(TIMER_GEN_TIME_ACTION, 0.3f, &SysTimerStr);
        }
        else
        {
            KillDifferenceDrive() ;
        }
        ChangeCrabSubState( E_CommitUnCrab_CommitSteer ) ;

        break ;

    case E_CommitUnCrab_CommitSteer:
        // With the on-route position report, un-crab
        mask = BlockInts() ;
        {// Nothing more to test , simply turn the steering 90 degrees
            ManRouteCmd.ShelfMode = 0; // Terminate any shelf run mode
            SysState.ManRouteState.NewCrabFlag = 1  ;
            SysState.ShelfRun.CrabCrawl = 0; //  SysState.ManRouteState.PendingCrab;
            ManRouteCmd.CrabCrawl = 0 ;
            KillDifferenceDrive() ;
        }
        RestoreInts(mask) ;
        ChangeCrabSubState(E_CommitUnCrab_WaitUncrab) ;
        break;

    case E_CommitUnCrab_WaitUncrab:
        if (IsSteerReady())// Wait for un-crab to complete, then take another fix
        {
            SetPosReportCatchReduced(0);
            ChangeCrabSubState(E_CommitUnCrab_WaitSecondFix) ;
        }
        break;
    case E_CommitUnCrab_WaitSecondFix:
        // Calculate the angle correction
        tht = SysState.ManRouteState.NomRouteTangent; // - SysState.ManRouteState.PendingCrab * (pi * 0.5f ) ;
        SysState.ManRouteState.NavAz = mod2piS(AngletoF(SysState.Mot.BgPosReport.Azimuth));

        dtht = mod2piS( tht - SysState.ManRouteState.NavAz) ;

        if (fabsf(dtht) > 0.2)
        {// Error too large.
            LogException(OWN_EXP_ID, EXP_ABORT, exp_azimuth_correction_too_large);
            break;
        }

        if (fabsf(dtht) > 5e-3f)
        { // Significant angle deviation
            CrabProfiler.PosMin = -1e6f;
            CrabProfiler.PosMax = 1e6f;
            ProgramProfiler(&CrabProfiler, AutomaticRunPars.CrabSpeed,
                            AutomaticRunPars.CrabAcceleration, AutomaticRunPars.CrabAcceleration,
                0.01f, EProfile_PerAxis);
            ResetProfiler(&CrabProfiler, 0, 0, 1);
            mask = BlockInts();
            {
                CrabProfiler.Done = 0;
                CrabProfiler.PosTarget = dtht;
                SysState.ManRouteState.DifferenceDrive = 1;
            }
            RestoreInts(mask);
        }
        else
        {
            CrabProfiler.Done = 1;
        }
        ChangeCrabSubState(E_CommitUnCrab_WaitFinalFix)  ;
        break;

    case E_CommitUnCrab_WaitFinalFix:
        SetPosReportCatch();
        ChangeCrabSubState(E_CommitUnCrab_WaitComplete) ;
        break ;

    case E_CommitUnCrab_WaitComplete:
        //if (CrabProfiler.Done): It is done as entry condition to the routine
        {
            SetPosReportCatchReduced(0) ; // Sept 2019 KillDifferenceDrive();
            //SysState.ManRouteState.DifferenceDrive = 0;
            return 1 ;
        }
        //break ;
    }
    return 0 ;
}

/*
 * \brief Manage the state machine of climbing a pole
 *
 *
 */
short CommitCrabStateMachine( void )
{
    float curv , d , x2 , y2 , xgo , ygo  ,thtgo ;
    float accsamp , speedsamp , maxsteerspeed , calcsteerspeed , speedfac;
    short unsigned mask ;
    short Fail ;

    x2 = 0 ; y2 = 0; // Just to avoid compiler warning

    if (SysState.Mot.ChgMode.SubState == E_CommitCrab_Init)
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
    case E_CommitCrab_FinalArc:
         // Here we finished the into-crab
         // Calculate the spline required for funnel access. The initial curvature is non-zero
         // After we have the spline parameters, we trigger an in-place curvature command
         // and wait it's completion before the drive.

         //SysState.fDebug[5] = SysState.ManRouteState.NavAz ;
         //SysState.fDebug[6] = SysState.ManRouteState.NavX ;
         //SysState.fDebug[7] = SysState.ManRouteState.NavY ;

         xgo = SysState.ManRouteState.NomRouteLocation[0];
         ygo = SysState.ManRouteState.NomRouteLocation[1] ;
         thtgo = SysState.ManRouteState.NomRouteTangent + (float)ManRouteCmd.CrabCrawl * 1.570796326794897f ;
         if (IsArcSegmentCompensation())
         {
             xgo -= __cos(thtgo) *  Geom.ArcEntryLength ;
             ygo -= __sin(thtgo) *  Geom.ArcEntryLength ;
         }

         curv = FindSplineRoute(SysState.ManRouteState.NavX  , SysState.ManRouteState.NavY ,
                                SysState.ManRouteState.NavAz + (float)ManRouteCmd.CrabCrawl * 1.570796326794897f ,
                                xgo , ygo ,thtgo,
                                &SysState.ManRouteState.ProfileTravel, &SysState.Spline , &Fail);

         if (Fail)
         {
             LogException(OWN_EXP_ID, EXP_ABORT, exp_funell_miss_angle_too_large);
             break;
         }
         if (SysState.ManRouteState.ProfileTravel > 1.0f )
         {
             LogException(OWN_EXP_ID, EXP_ABORT, exp_funell_miss_distance_too_large);
             break;
         }
         if ( fabsf(curv) > 3.0f)
         {
             LogException(OWN_EXP_ID, EXP_ABORT, exp_spline_curvature_too_large);
             break;
         }
         ManRouteCmd.LineSpeedCmd = 0 ;
         SysState.ManRouteState.LineSpeed = 0 ;
         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.1f , &SysTimerStr );
         if (SysState.ManRouteState.ProfileTravel < 0.005)
         { // corrective movement too small , skip this stage
             LogException(OWN_EXP_ID, EXP_ABORT, exp_spline_distance_too_short);
             break ;
         }
         else
         {
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
             ChangeCrabSubState( E_CommitCrab_WaitSteerCorrect ) ;
         }
         break;

     case E_CommitCrab_WaitSteerCorrect:
         // Do steering completely before starting the drive, so that the robot
         // shall travel a neat arc
         if ( IsSteerReady( ) )
         {
             ChangeCrabSubState(E_CommitCrab_WaitSteerCorrectFix ) ;
             //SetPosReportCatch() ; // 09-2019 Thats an accurate, the only critical catch before final spine?
         }
         break ;

     case  E_CommitCrab_WaitSteerCorrectFix:
         // Recalculate spline
         ChangeCrabSubState( E_CommitCrab_WaitSteerCorrect2 ) ;
         break;

     case  E_CommitCrab_WaitSteerCorrect2:
         if ( IsSteerReady( ) )
         {
             accsamp   = 0.2f ;
             speedsamp = 0.15f ;
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
                 CrabProfiler.PosTarget = SysState.ManRouteState.ProfileTravel ;
                 // Clear the profile to go
                 SysState.Spline.ManualCurvature = 0 ;
                 SysState.ManRouteState.DifferenceDrive = 4;
             }
             RestoreInts(mask);

             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.15f , &SysTimerStr );
             ChangeCrabSubState(E_CommitCrab_WaitFunellTravel) ;
         }
         break ;

     case E_CommitCrab_WaitFunellTravel:
         //if (CrabProfiler.Done): It is done as entry condition to the routine
         {
             ManRouteCmd.LineSpeedCmd = 0 ;
             ManRouteCmd.CurvatureCmd = 0 ; // Bring command to standard closure
             ManRouteCmd.dCurvatureCmd = 0 ;

             SysState.ManRouteState.DifferenceDrive = 0 ;
             SetSysTimerTargetSec(TIMER_GEN_TIME_ACTION, 0.5f, &SysTimerStr);
             ChangeCrabSubState(E_CommitCrab_WaitReady4Funnel) ;
         }
         break;

     case E_CommitCrab_WaitReady4Funnel:
         if ( IsSteerReady( ) )
         {
             KillDifferenceDrive() ;
             //SysState.ManRouteState.DifferenceDrive = 0;
             ChangeCrabSubState(E_CommitCrab_WaitFinalFunnelFix) ;
            // Sept 2019 SetPosReportCatchReduced(0) ;
            return 1; // Sept 2019
          }
         break ;
    case E_CommitCrab_WaitFinalFunnelFix :
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
    }
    return 0 ;
}

void  ShelfPlayEndGame(void)
{
    //float Dist2End[2]  ;
    float eNext , maxerr , SpeedCmd , SpeedCmdNoOvershoot  ;
    float a =  WheelProfiler[0].dec ;
    float vmax = WheelProfiler[0].vmax ;
    float t0 = 0.02f ;

    Dist2End[0] = (float)(  SysState.ShelfRun.EncoderPosTarget[0]-SysState.ManRouteState.WheelEncoderNow[0])* Geom.Calc.WheelEncoder2MeterShelfHoriz;
    Dist2End[1] = (float)(  SysState.ShelfRun.EncoderPosTarget[1]-SysState.ManRouteState.WheelEncoderNow[1])* Geom.Calc.WheelEncoder2MeterShelfHoriz;

    ManRouteCmd.LineSpeedCmd = 0 ;
    SysState.ManRouteState.LineSpeed = 0 ;

    eNext = Dist2End[LOGICAL_RW] ;
    SpeedCmd    =  ControlPars.WheelPosOnRailGain * eNext ;
    SpeedCmdNoOvershoot =  __fmin( -(a * t0) + sqrtf(a * a * t0 * t0 + 2 * fabsf(eNext) * a) , vmax ) ;

    maxerr = fabsf(eNext) ;
    if ( eNext > 0 )
    {
        SpeedCmd = __fmin(SpeedCmd, SpeedCmdNoOvershoot) ;
    }
    else
    {
        SpeedCmd = __fmax(SpeedCmd, -SpeedCmdNoOvershoot) ;
    }

    SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_RW] , SpeedCmd , Geom.Calc.Meter2MotEncoderShelf );
    //SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd = (long)( SpeedCmd * Geom.Calc.Meter2MotEncoderShelf  ) ;


    eNext = Dist2End[LOGICAL_LW] ;
    SpeedCmd    =  ControlPars.WheelPosOnRailGain * eNext ;
    SpeedCmdNoOvershoot =  __fmin( -(a * t0) + sqrtf(a * a * t0 * t0 + 2 * fabsf(eNext) * a) , vmax ) ;
    maxerr = __fmax( fabsf(eNext) , maxerr)  ;
    if ( eNext > 0 )
    {
        SpeedCmd = __fmin(SpeedCmd, SpeedCmdNoOvershoot) ;
    }
    else
    {
        SpeedCmd = __fmax(SpeedCmd, -SpeedCmdNoOvershoot) ;
    }

    SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_LW] , SpeedCmd , Geom.Calc.Meter2MotEncoderShelf );
    //SysState.CanAxis[LOGICAL_LW].DFT.SpeedCmd = (long)( SpeedCmd * Geom.Calc.Meter2MotEncoderShelf  ) ;


    // Check convergence, if both the axes converged
    if ( maxerr > 0.003f)
    {
        SetSysTimerTargetSec( TIMER_POS_STABILIZATION_POLE , 0.5f , &SysTimerStr) ;
    }
    if ( IsSysTimerElapse(TIMER_POS_STABILIZATION_POLE, &SysTimerStr) )
    {
        WheelProfiler[LOGICAL_RW].Done = 1;
        WheelProfiler[LOGICAL_LW].Done = 1;
   }
    else
    {
        WheelProfiler[LOGICAL_RW].Done = 0;
        WheelProfiler[LOGICAL_LW].Done = 0;
   }
}


void  GoManualShelf( float dT  )
{
    float LeaderLeadDist , faccorrect , facdrive  , spd ;
    // Profiled wheel run
    GetWheelEncoders(SysState.ManRouteState.WheelEncoderNow);

    if ( SysState.ShelfRun.bProfileStart )
    { // Record where profile started, for comparing reached position
        WheelProfiler[0].Done = 0;
        WheelProfiler[1].Done = 0;

        if ( SysState.ShelfRun.bProfileStart == 2 )
        { //Mode just started , waiting more commands to move
            ManRouteCmd.LineSpeedCmd = 0 ;
            SysState.ManRouteState.LineSpeed = 0 ;
            StopWheels(); 
            return  ;
        }

        SysState.ShelfRun.bProfileStart = 0 ;

    }

    if (ManRouteCmd.ShelfMode == 0  )
    {
        faccorrect = Geom.Calc.WheelEncoder2MeterGnd ;
        facdrive   = Geom.Calc.Meter2MotEncoderGnd   ;
    }
    else
    {
        faccorrect   = Geom.Calc.WheelEncoder2MeterShelfHoriz ;
        facdrive     = Geom.Calc.Meter2MotEncoderShelf ;
    }

    DistFromStart[0] = (float)(SysState.ManRouteState.WheelEncoderNow[0] - SysState.ManRouteState.WheelEncoderCapture[0])* faccorrect  ;
    DistFromStart[1] = (float)(SysState.ManRouteState.WheelEncoderNow[1] - SysState.ManRouteState.WheelEncoderCapture[1])* faccorrect  ;
    Dist2End[0] = WheelProfiler[0].PosTarget - DistFromStart[0] ;
    Dist2End[1] = WheelProfiler[1].PosTarget - DistFromStart[1] ;


    // Run the profiler and derive the speed command from the profiler
    // If not in end game
    ReposLinProfilerAbsolute ( &WheelProfiler[0] , WheelProfiler[0].PosTarget - Dist2End[0] , 0.01f  , 0.3f ) ;
    ReposLinProfilerAbsolute ( &WheelProfiler[1] , WheelProfiler[1].PosTarget - Dist2End[1] , 0.01f  , 0.3f ) ;

    AdvanceProfiler(&WheelProfiler[0], dT);
    AdvanceProfiler(&WheelProfiler[1], dT);

    ManRouteCmd.LineSpeedCmd = (WheelProfiler[0].ProfileSpeed + WheelProfiler[1].ProfileSpeed) * 0.5f  ;
    SysState.ManRouteState.LineSpeed = ManRouteCmd.LineSpeedCmd;

    LeaderLeadDist = DistFromStart[0] - DistFromStart[1] ;
    SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_RW] , SysState.ManRouteState.LineSpeed , facdrive );

    spd = SysState.ManRouteState.LineSpeed  + (LeaderLeadDist - ControlPars.DeltaWheelPos4ShelfRun) * ControlPars.WheelPosOnRailGain ;

    SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_LW] , spd , facdrive );
}

//#define SHELF_PAUSE_DISABLE

void  RunAutoShelf( short unsigned Leader , short unsigned Follower , float dT  )
{
    float s,c,dx   ;
    float LeaderLeadDist , DeltaSpeed ;
    // Profiled wheel run



    if ( SysState.ShelfRun.bProfileStart )
    { // Record where profile started, for comparing reached position
        SysState.ShelfRun.bEndGame = 0 ;
        WheelProfiler[0].Done = 0;
        WheelProfiler[1].Done = 0;

        //dx = ( SysState.ManRouteState.WheelEncoderNow[0] - SysState.ShelfRun.EncOnProfileStart[0] ) * Geom.Calc.WheelEncoder2MeterShelf;
        //dy = ( SysState.ManRouteState.WheelEncoderNow[1] - SysState.ShelfRun.EncOnProfileStart[1] ) * Geom.Calc.WheelEncoder2MeterShelf;

        c   = Ycos(SysState.ManRouteState.NomRouteTangent);
        s   = Ysin(SysState.ManRouteState.NomRouteTangent);
        dx  = ( SysState.Nav.Robot.xc[0] - ManRouteCmd.ShelfRunPars.Xbase ) * c +
              ( SysState.Nav.Robot.xc[1] - ManRouteCmd.ShelfRunPars.Ybase ) * s ;

        SysState.ShelfRun.EncOnProfileStart[0] = SysState.ManRouteState.WheelEncoderNow[0] - (long) ( dx * Geom.Calc.Meter2WheelEncoderShelfHoriz) ;
        SysState.ShelfRun.EncOnProfileStart[1] = SysState.ManRouteState.WheelEncoderNow[1] - (long) ( dx * Geom.Calc.Meter2WheelEncoderShelfHoriz) ;

        SysState.Nav.Robot.xc[0] = ManRouteCmd.ShelfRunPars.Xbase + dx * c ;
        SysState.Nav.Robot.xc[1] = ManRouteCmd.ShelfRunPars.Ybase + dx * s ;

        // Initially , un-arm the limit switches
        ArmLimitSw(&SysState.CanAxis[Leader] , 0   );
        ArmLimitSw(&SysState.CanAxis[Follower], 0  );
        SysState.PoleRun.TargetArmDone  = 0 ;

        if ( SysState.ShelfRun.bProfileStart == 2 )
        { //Mode just started , waiting more commands to move
            ManRouteCmd.LineSpeedCmd = 0 ;
            SysState.ManRouteState.LineSpeed = 0 ;
            StopWheels()  ;
            return  ;
        }

        SysState.ShelfRun.bProfileStart = 0 ;

    }

    DistFromStart[0] = (float)(SysState.ManRouteState.WheelEncoderNow[0] - SysState.ManRouteState.WheelEncoderCapture[0])* Geom.Calc.WheelEncoder2MeterShelfHoriz ;
    DistFromStart[1] = (float)(SysState.ManRouteState.WheelEncoderNow[1] - SysState.ManRouteState.WheelEncoderCapture[1])* Geom.Calc.WheelEncoder2MeterShelfHoriz ;
    Dist2End[0] = WheelProfiler[0].PosTarget - DistFromStart[0] ;
    Dist2End[1] = WheelProfiler[1].PosTarget - DistFromStart[1] ;


    if ( SysState.ShelfRun.bEndGame == 0  )
    {
        // Run the profiler and derive the speed command from the profiler
        // If not in end game
        ReposLinProfilerAbsolute ( &WheelProfiler[0] , WheelProfiler[0].PosTarget - Dist2End[0] , 0.05f  , 0.3f ) ;
        ReposLinProfilerAbsolute ( &WheelProfiler[1] , WheelProfiler[1].PosTarget - Dist2End[1] , 0.05f  , 0.3f ) ;

#ifndef SHELF_PAUSE_DISABLE
        // Disabled fearing that a pause will cause a miss of junction rotation
        if ( SysState.Mot.bPauseFlag )
        {
            PauseProfiler(&WheelProfiler[0], dT);
            PauseProfiler(&WheelProfiler[1], dT);
        }

        else
#endif
         {
        //ReposProfiler ( &WheelProfiler[0] , WheelProfiler[0].PosTarget - Dist2End[0] ) ;
        //ReposProfiler ( &WheelProfiler[1] , WheelProfiler[1].PosTarget - Dist2End[1] ) ;

            AdvanceProfiler(&WheelProfiler[0], dT);
            AdvanceProfiler(&WheelProfiler[1], dT);
        }



        ManRouteCmd.LineSpeedCmd = (WheelProfiler[0].ProfileSpeed + WheelProfiler[1].ProfileSpeed) * 0.5f  ;
        SysState.ManRouteState.LineSpeed = ManRouteCmd.LineSpeedCmd;

        if ( SysState.ShelfRun.NextStationIsPole )
        { // Next station is a pole, so we look for a limit switch
            if ( SysState.ShelfRun.NextStationIsPole && (SysState.PoleRun.TargetArmDone==0) )
            {
                if  ( ( fabs( WheelProfiler[0].ProfilePos - WheelProfiler[0].PosTarget ) < Geom.Center2WheelDist ) ||
                        ( fabs( WheelProfiler[1].ProfilePos - WheelProfiler[1].PosTarget ) < Geom.Center2WheelDist ) )
                {
                    SysState.PoleRun.TargetArmDone  = 1 ;
                    SysState.PoleRun.TargetArmRequirement = 7 ;
                    ArmLimitSw( &SysState.CanAxis[Leader], SysState.ShelfRun.RunDirection  );
                    ArmLimitSw( &SysState.CanAxis[Follower], SysState.ShelfRun.RunDirection  );
                }
            }

            if ( SysState.PoleRun.TargetArmDone )
            {
                if ( SysState.CanAxis[Leader].InductiveSensor && ( (SysState.PoleRun.TargetArmDone & 2 ) == 0 ) )
                {
                    SysState.ShelfRun.EncoderPosTarget[Leader] = SysState.CanAxis[Leader].EncOnInductiveSensor
                            + SysState.ShelfRun.RunDirection * (long) ( Geom.LimitSwitchDistFromJuncShelf * Geom.Calc.Meter2WheelEncoderShelfHoriz );
                    SysState.PoleRun.TargetArmDone |= 2 ;
                }
                if ( SysState.CanAxis[Follower].InductiveSensor && ( (SysState.PoleRun.TargetArmDone & 4 ) == 0 ) )
                {
                    SysState.ShelfRun.EncoderPosTarget[Follower] = SysState.CanAxis[Follower].EncOnInductiveSensor
                            + SysState.ShelfRun.RunDirection * (long) ( Geom.LimitSwitchDistFromJuncShelf * Geom.Calc.Meter2WheelEncoderShelfHoriz );
                    SysState.PoleRun.TargetArmDone |= 4 ;
                }
                if ( SysState.PoleRun.TargetArmDone == 7 )
                { // Both switches found
                    SetSysTimerTargetSec( TIMER_POS_STABILIZATION_POLE , 0.3f , &SysTimerStr) ;
                    SysState.ShelfRun.bEndGame = 1  ;
                }
            }

            if ( WheelProfiler[0].Done && WheelProfiler[1].Done )
            { // Profile is done before switch sense is complete
                LogException( OWN_EXP_ID , EXP_ABORT , exp_shelf_travel_never_reached_target);
            }
        }
        else
        { // If close enough to target, do the end game
            if ( WheelProfiler[0].Done && WheelProfiler[1].Done )
            {
                WheelProfiler[0].Done = 0 ;
                WheelProfiler[1].Done = 0 ;
                SysState.ShelfRun.EncoderPosTarget[Leader] = (long)( WheelProfiler[Leader].PosTarget * Geom.Calc.Meter2WheelEncoderShelfHoriz +  SysState.PoleRun.EncOnModeStart[Leader] );
                SysState.ShelfRun.EncoderPosTarget[Follower] = (long)(WheelProfiler[Follower].PosTarget * Geom.Calc.Meter2WheelEncoderShelfHoriz +  SysState.PoleRun.EncOnModeStart[Follower] );
                SetSysTimerTargetSec( TIMER_POS_STABILIZATION_POLE , 0.3f , &SysTimerStr) ;
                SysState.ShelfRun.bEndGame = 1  ;
            }
        }
    }

    if ( SysState.ShelfRun.bEndGame )
    {
        ShelfPlayEndGame() ;
    }
    else
    {
        // Standard shelf run (not end game)

        LeaderLeadDist = DistFromStart[Leader] - DistFromStart[Follower] ;
        DeltaSpeed    = ((LeaderLeadDist - ControlPars.DeltaWheelPos4ShelfRun) * ControlPars.WheelPosOnRailGain) * 0.5f ;

        SetWheelSpeedCmd( &SysState.CanAxis[Leader]   , SysState.ManRouteState.LineSpeed - DeltaSpeed , Geom.Calc.Meter2MotEncoderShelf );
        SetWheelSpeedCmd( &SysState.CanAxis[Follower] , SysState.ManRouteState.LineSpeed + DeltaSpeed , Geom.Calc.Meter2MotEncoderShelf );
    }

    if ( SysState.Debug.bRecorder4ShelfRun  )
    {
        SysState.fDebug[0] = Dist2End[0] ;
        SysState.fDebug[1] = Dist2End[1] ;
        SysState.fDebug[2] = DistFromStart[0] ;
        SysState.fDebug[3] = DistFromStart[1] ;
        SysState.fDebug[4] = WheelProfiler[0].PosTarget ;
        SysState.fDebug[5] = WheelProfiler[1].PosTarget ;

        RecordShelfDebugVars() ;
    }

}


void RecordShelfDebugVars(void)
{
        lDebug[0] =  1 + (SysState.ShelfRun.bEndGame ? 2 : 0) +  (WheelProfiler[0].Done ? 4 : 0 ) +
                    (WheelProfiler[1].Done ? 8 : 0 ) + (( SysState.PoleRun.TargetArmDone & 0x7 ) << 4 ) +
                    (( SysState.ShelfRun.RunDirection & 3 ) << 10 ) + (( SysState.ShelfRun.bProfileStart & 3 ) << 12) + (((unsigned long)ManRouteCmd.ShelfMode & 0xf) << 16)  +
                    ( SysState.ShelfRun.NextStationIsPole ? 0x100000L : 0 ) + (((long unsigned) SysState.Mot.ChgMode.State & 0x7f ) << 21 ) ;

}


