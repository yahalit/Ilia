#include "StructDef.h"

/*
 * RelativeCrabMachine.c
 *
 *  Created on: Nov 8, 2023
 *      Author: yahali
 */


/*
 * General explanation of coordinates:
 * Whatever the camera report style is, the communication driver goes to a robot-rel frame
 * - X  is target location projected on robot heading
 * - Y  is target location projected on robot right wheel (expect y>0 for right approach, y < 0 for left approach)
 * - Az is target azimuth (direction of shelf line. Always in +/-90, E.g. 110deg is take in -70 deg). This means that the robot must turn +Az to straight with the shelves
 */

#define ACTION_START_TIME_ALLOC 0.15f // Time enough to assure that an action command is accepted


float GetAzimuthFromQuatBuf(short unsigned *buf);
void UpdateCalibCorrectedPos(void);

/*
 * \brief Program a differential rotation motion of given, desired magnitude
 * \param dtht Rotation magnitude
 * Look at CrabProfiler.Done to detect action completion
 *
 */
void SetRotateInPlace(float dtht, float speed, float acceleration, float deceleration)
{
    short unsigned mask ;
    //ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed , AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration , 0.01f , EProfile_PerAxis  ) ;
    //nominal speed, acceleration, deceleration are: AutomaticRunPars.CrabSpeed , AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration
    ProgramProfiler( &CrabProfiler , speed , acceleration , deceleration , 0.01f , EProfile_PerAxis  ) ;
    ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
    if ( fabsf( dtht ) > 5e-3f  )
    {
        CrabProfiler.Done = 1;
    }
    CrabProfiler.PosMin = -1e6f ;
    CrabProfiler.PosMax =  1e6f ;
    mask = BlockInts();
    {
        CrabProfiler.Done = 0;
        CrabProfiler.PosTarget = dtht ;
        SysState.ManRouteState.DifferenceDrive = 1;
    }
    RestoreInts(mask);
    // Give time, assure that next time state machine visit is after command initiated
    SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , ACTION_START_TIME_ALLOC , &SysTimerStr );
}


/*
 * \brief Program a straight travel motion of given, desired magnitude
 * \param d : Distance to travel
 * Look at CrabProfiler.Done to detect action completion
 *
 */
void SetTravelFW( float d , float speed, float acceleration, float deceleration)
{
    short unsigned mask ;
    //nominal speed, acceleration, deceleration are: AutomaticRunPars.CrabSpeed , AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration
    ProgramProfiler( &CrabProfiler , speed , acceleration , deceleration , 0.01f , EProfile_PerAxis  ) ;
    //ProgramProfiler( &CrabProfiler , AutomaticRunPars.CrabSpeed , AutomaticRunPars.CrabAcceleration , AutomaticRunPars.CrabAcceleration , 0.01f , EProfile_PerAxis  ) ;
    ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
    mask = BlockInts();
    {
        CrabProfiler.Done = 0;
        CrabProfiler.PosTarget = d;
        SysState.ManRouteState.DifferenceDrive = E_DiffDriveRunProfileAnySteering;
        SysState.ManRouteState.Curvature = 0;
        ManRouteCmd.CurvatureCmd = 0;
        ManRouteCmd.dCurvatureCmd = 0 ;
    }
    RestoreInts(mask);
    // Give time, assure that next time state machine visit is after command initiated
    SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , ACTION_START_TIME_ALLOC , &SysTimerStr );
}

/*
 * \brief Initiate a crab motion
 * \param dir : Direction of later travel (1: right, 0: straight, -1: left)
  * Look at SysState.ManRouteState.NewCrabFlag==0 to detect action completion
 *
 */
void InitiateCrab(short dir)
{
    short unsigned mask ;
    SetSysTimerTargetSec(TIMER_CRAB_ACTION, 0.5f, &SysTimerStr);

    mask = BlockInts() ;
    {// Nothing more to test , simply turn the steering 90 degrees
        SysState.ManRouteState.NewCrabFlag = 1  ;
        KillSteeringConvergence();
        SysState.ShelfRun.CrabCrawl = dir ;
        ManRouteCmd.CrabCrawl = dir;
        ManRouteCmd.LineSpeedCmd = 0 ;
        ManRouteCmd.CurvatureCmd = 0 ;
        ManRouteCmd.dCurvatureCmd = 0 ;
        ChangeCrabSubState(EN_CommitCrab_WaitFinalFix) ;
        KillDifferenceDrive() ;
    }
    RestoreInts(mask) ;
    // Give time, assure that next time state machine visit is after command initiated
    SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , ACTION_START_TIME_ALLOC , &SysTimerStr );

}


/*
 * \brief In a crab position, travel a given distance sideways
 * \param godist: Distance to go
 * \param dir : Direction of later travel (1: forward, -1: reverse), forward and reverse are defined by crab direction
 * Look at CrabProfiler.Done to detect action completion
 *
 */
void SetTravel2Side( float godist , float dir)
{
    //float junk ;
    //short fail ;
    short unsigned mask ;
    //FindSplineRoute(0  , 0  , 1.570796326794897f * dir  , 0 , godist * dir  ,1.570796326794897f * dir, &junk ,&SysState.Spline, &fail);

    ManRouteCmd.LineSpeedCmd = 0 ;
    SysState.ManRouteState.LineSpeed = 0 ;

    ProgramProfiler(&CrabProfiler, Constraint.FunnelApproachSpeed ,
                    Constraint.FunnelApproachAcc ,Constraint.FunnelApproachAcc ,0.01f, EProfile_PerAxis);

    ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );

    mask = BlockInts();
    {
        CrabProfiler.Done = 0;
        CrabProfiler.PosTarget = godist * dir ; // SysState.ManRouteState.ProfileTravel ;
        // Clear the profile to go
        SysState.Spline.ManualCurvature = 0 ;
        SysState.ManRouteState.DifferenceDrive = 4;
    }
    RestoreInts(mask);

    // Give time, assure that next time state machine visit is after command initiated
    SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , ACTION_START_TIME_ALLOC , &SysTimerStr );
}


/*
 * \brief Median of 5 numbers
 * \param p : Vector of numbers to take median from
 */
float Median5( float p[5])
{
    float f,g, h ;
    f =__fmax(__fmin(p[0],p[1]),__fmin(p[2],p[3])); // discards lowest from first 4 (for sure not the lowest, and not the highest)
    g= __fmin(__fmax(p[0],p[1]),__fmax(p[2],p[3])); // discards biggest from first 4 (for sure not the lowest, and not the highest, not the same number as f!)

    //f & g are the two median numbers out of the 4. we need to find the median out of f, g, p[4]
    //We have 3 numbers left t =o find the median from: f, g, p[4].

    h = __fmin(p[4],__fmax(f,g)); //h is for sure not the highest number - one of the two lower ones. may be the lowest only if it is P[4].
    return __fmax( __fmin(f,g), h );// if P[4] is lowest than we get the median. if not than we get h - the median as well.
}


/*
 * \brief returns the report as average of 4 measurements after throwing out other eccentric 4 measurement
 * \param p : Vector of numbers to take median from
 */
float AverageOf4NonEccentric( float p[8])
{
    float f1,g1, f2, g2, h ;
    f1 =__fmax(__fmin(p[0],p[1]),__fmin(p[2],p[3])); // keeps 2nd result from bottom
    g1= __fmin(__fmax(p[0],p[1]),__fmax(p[2],p[3])); // keeps 2nd result from top

    f2 =__fmax(__fmin(p[4],p[5]),__fmin(p[6],p[7])); // discards lowest from 2nd 4 (for sure not the lowest, and not the highest)
    g2= __fmin(__fmax(p[4],p[5]),__fmax(p[6],p[7])); // discards biggest from 2nd 4 (for sure not the lowest, and not the highest, not the same number as f!)

    h = (f1 + f2 + g1 + g2)/4;

    return h;
}

/*
 * \brief returns the report as average of 4 measurements after throwing out other eccentric 4 measurement
 * \param p : Vector of numbers to take median from
 */
float AverageOf3CenteredResults( float p[5])
{
    float minValue,maxValue, average ;
    minValue =__fmin ( __fmin( __fmin(p[0],p[1]) , __fmin(p[2],p[3]) ), p[4] ); // lowest number
    maxValue= __fmax ( __fmax( __fmax(p[0],p[1]) , __fmax(p[2],p[3]) ), p[4] );  // highest number

    average = (p[0] + p[1] + p[2] + p[3] + p[4] - minValue - maxValue)/3;

    return average;
}


long SciSetRelativePositionReportBody(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci )
{
    long  age , delta;
    float  s ,c  , tht ,  xtag , ytag , az ,TerminalAprilTag2Tip;
    struct CRelPosReport * pPosReport ; // !< Position report from master
    short unsigned newIndex , maxindex ;
    (void) MessageTime ;

    pPosReport = & SysState.Mot.RelativePosReport ; // !< Position report from master

    //pPosReport->Side = buf[14] ; //OBB3: side is only 8 bit! we need to extract the lower 8 bits for side
    pPosReport->Side = buf[14] & 0xff ; //OBB3: side is only 8 bit! we need to extract the lower 8 bits for side

    pPosReport->TerminalType = (buf[14] >> 8) & 0xff ; //TODO: test

    if (ImuStartMgr.Good == 0)
    { //Can't have navigation data before gyro is calibrated
        return SetSpiInterpretErrorTx(SPI_ERR_GYRO_NOT_CALIB, txcntr, 0, IsSci);
    }

    if (IsWheelArmGoodToGo(0) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

//TODO: Find why message age sucked and set the protection again
#ifdef ARI_MUST_CORRECT_AGE
    age = MessageTime - GetUnalignedLong( & buf[15] );
    if ( age < 0  || age > BIGGEST_NAV_CORRECTION_AGE_USEC )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_NAV_RPT_TIME , txcntr, 0, IsSci  );
    }
#else
    age = 0  ;
#endif

    // Age of message on dispatch time
    pPosReport->RelevanceTime = HostTimer.uTimer.ull - HostTimer.DsysTime - age ; //estimation of when this message was sent from the server on local time

    // Count accepted messages for statistics
    pPosReport->MsgCntr += 1 ;
    SysState.Mot.TotalMsgCounter = (SysState.Mot.TotalMsgCounter & (~(0x3ffUL<<20))) + (((long unsigned)pPosReport->MsgCntr & 0x3ff) << 20  ) ;

    // Yaw remains same as robot is zero yaw when parallel to shelves
    // The minus sign is since the robot in the shelf system was decoded, but the coordinates are of the post in the robot frame
    // 0 yaw means the robot is facing away from the rack (robot X on terminal X).
    // pi/2 yaw means accurate left climb.
    // -pi/2 yaw means accurate right climb.
    tht = GetAzimuthFromQuatBuf(&buf[6]) ;

    xtag = GetUnalignedLong(&buf[0] ) * LONG_2_M_FAC ;
    ytag = GetUnalignedLong(&buf[2] ) * LONG_2_M_FAC ;

    pPosReport->xRaw = xtag ;
    pPosReport->yRaw = ytag ;

#ifndef DEBUG_CRAB_STATE_MACHINE
    if ( (pPosReport->TerminalType >= 1) && (pPosReport->TerminalType <= NUMBER_OF_TERMINAL_TYPES) )
    {
        TerminalAprilTag2Tip = TERMINAL_LENGTH_THEETH_BASE_2_TIP[pPosReport->TerminalType - 1]  - Geom.ArcEntryPoleHomingPlateDist;
    }
    else
    {
        LogException(OWN_EXP_ID, EXP_ABORT, exp_wrong_terminal_type);
    }
#else
    TerminalAprilTag2Tip = TERMINAL_LENGTH_THEETH_BASE_2_TIP[0]  - Geom.ArcEntryPoleHomingPlateDist;
#endif

    // The camera reports robot position in pole coordinates.
    // We transform here to get the pole in robot coordinates
    // Refer pole docking equations.docx
    switch ( pPosReport->Side )
    { //Since decided that tht (yaw) is 0 for both right and left climbs, then the rotated coordinates are different for left and right:

    case 1: // Left
        //in case of perfect aligning of the left camera to the terminal will be reported x0 y0 z0 w1 --> tht=pi/2, CCW to positive X (0 deg relative to the positive X)
        az =  tht - PiHalf ; //az = 0 for accurate left access. For positive az - the robot needs to rotate CCW.
        pPosReport->Azimuth = -az  ;  //For positive Azimuth - the robot needs to rotate CW.
        s = __sin(az) ;
        c = __cos(az) ;
        pPosReport->x =    -s * (xtag - TerminalAprilTag2Tip) - c * ytag  ;
        pPosReport->y =    -c * (xtag - TerminalAprilTag2Tip) + s * ytag  ;//pPosReport->y =     c * xtag - s * ytag  ; //TODO: Ari need to update camera place so xtag will be 4cm larger
        break ;
    case 2: // Right
        //in case of perfect aligning of the left camera to the terminal will be reported x0 y0 z1 w0 --> tht=-pi/2, CCW to positive (180 deg relative to the positive X)
        az = tht + PiHalf ; //az = 0 for accurate Right access. For positive az - the robot needs to rotate CCW.
        pPosReport->Azimuth = -az ; //For positive Azimuth - the robot needs to rotate CW.
        s = __sin(az) ;
        c = __cos(az) ;
        pPosReport->x =    s * (xtag - TerminalAprilTag2Tip) + c * ytag  ;
        pPosReport->y =   c * (xtag - TerminalAprilTag2Tip) - s * ytag  ;         //pPosReport->y =   -c * xtag + s * ytag  ;
        break ;
    default:
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_SIDE_RELPOS , txcntr, 0, IsSci  );
    }

    // Time to interpolate back
    // Depth in the past to look for target
    delta = __lmin( __lmax( IsrTimer.UsecTimerOnFork - SysState.Mot.BgRelativePosReport.RelevanceTime , 0 ) , 10000L ) ;

    // Indices for back interpolation - finding the report from T time ago...
    newIndex = (short) ( delta * (1.0f/CONTROL_TS_USEC) ) + 1 ; // +1 since buffer pointer is not the last update but the next empty space

    // The maximum stored interpolation backwards
    maxindex = ( SysState.Nav.NavBufferIndex - SysState.Nav.OldestNavUpdIndex ) & (NAV_HIST_BUF_LEN-1)  ;
    newIndex = __min( __max(newIndex,1) , maxindex ) ;

    // Point the navigation buffer records that bests fits the photo time
    pPosReport->pNavBufferOnRelMsg = &NavHistoryBuffer[(SysState.Nav.NavBufferIndex - newIndex) & (NAV_HIST_BUF_LEN-1) ] ;

    if ( SysState.Nav.IgnoreQrCodes == 0 )
    { // Do nothing if so instructed
        pPosReport->CmdCntr += 1 ;
    }

    AbortVelocityMode() ; // Kill any possible speed mode

    return SetSpiInterpretErrorTx( 0 , txcntr , 0 , IsSci  );
}



// Stacks for capturing photo results
static float CatchRelXStack[9] ;
static float CatchRelYStack[9] ;
static float CatchRelTStack[9] ;

/*
 * \brief Wait accumulation of 5 reports, then median them for final report
 * \returns:  1 : Waiting , 0: Idle or result is ready
 * You set externally SysState.RelCrabState.WaitPosReport to assert how many pictures you want to wait.
 * SysState.RelCrabState.WaitPosReport must be initially 5 or more (the design intent was to throw away the first x pictures).
 */

short CatchRelPosReport()
{
    float yew , x , y ;
    //if ( SysState.ManRouteState.WaitRelativePosReport > 0 ) //new camera report waiting
    if ( SysState.RelCrabState.WaitPosReport > 0) //waiting for a new camera report
    {
        if (IsSysTimerElapse(TIMER_GET_NEW_CAMERA_REPORT_MEDIAN_TOUT, &SysTimerStr) && (SysState.RelCrabState.WaitPosReport > 0) && (!SysState.RelCrabState.CamDelayRegistered))
        {
#ifdef DEBUG_CAMERA_DELAY
            SysState.RelCrabState.CameraDelayCounter++;
            SysState.RelCrabState.CamDelayRegistered = 1;
#endif
#ifndef DEBUG_CRAB_STATE_MACHINE //currently has to be defined since there is a 10sec gap
            LogException(OWN_EXP_ID, EXP_ABORT, exp_camera_report_median_too_long);
            return 1 ;
#endif
        }

        if ( SysState.ManRouteState.WaitRelativePosReport > 0 ) //new camera report waiting
        {
            SysState.ManRouteState.WaitRelativePosReport = 0  ;
        }
        else
        { //waiting for a new report but no report ready
            return 1 ;
        }

        SysState.RelCrabState.WaitPosReport -= 1 ;
        if ( SysState.RelCrabState.WaitPosReport <= (REQUIRED_REL_POS_MEASUREMENTS-1) ) //since SysState.RelCrabState.WaitPosReport set for 5, always true
        {
            CatchRelXStack[SysState.RelCrabState.WaitPosReport] = SysState.Mot.BgRelativePosReport.x ;
            CatchRelYStack[SysState.RelCrabState.WaitPosReport] = SysState.Mot.BgRelativePosReport.y ;
            CatchRelTStack[SysState.RelCrabState.WaitPosReport] = SysState.Mot.BgRelativePosReport.Azimuth ;
            if ( SysState.RelCrabState.WaitPosReport == 0)
            { // Take the report as average of 5 measurements after throwing out the most eccentric 2 of each side // Take the report as median of 5
                SysState.RelCrabState.PosReport.x = AverageOf3CenteredResults(CatchRelXStack) ;
                SysState.RelCrabState.PosReport.y = AverageOf3CenteredResults(CatchRelYStack) ;
                SysState.RelCrabState.PosReport.Azimuth = AverageOf3CenteredResults(CatchRelTStack) ;

                // Force the report on the navigation
                // SysState.ManRouteState.NomRouteTangent is angle of shelves line in absolute space
                // SysState.ManRouteState.NomRouteLocation is position of pole in absolute space
                yew = mod2piS (SysState.ManRouteState.NomRouteTangent - SysState.RelCrabState.PosReport.Azimuth) ;
                x   = SysState.ManRouteState.NomRouteLocation[0]
                       -SysState.RelCrabState.PosReport.x * __cos(yew) + SysState.RelCrabState.PosReport.y * __sin(yew) ;
                y   = SysState.ManRouteState.NomRouteLocation[1]
                      - SysState.RelCrabState.PosReport.x * __sin(yew) - SysState.RelCrabState.PosReport.y * __cos(yew) ;

                SysState.RelCrabState.TerminalType = SysState.Mot.BgRelativePosReport.TerminalType; //take last report terminal type

                // SysState.Nav.Robot.xc[2]  is the Z coordinate of the robot; on the ground it is zero
                ForcePosReport(  x ,  y , SysState.Nav.Robot.xc[2] , yew );
                UpdateCalibCorrectedPos();
                return 0 ;
            }
        }
        //either need more reports for median OR WaitPosReport > 4 (also waiting)
        return 1 ;
    }
    else
    { //not requested new median
        return 0 ; //why proceed if there is no position report ready (also if waiting for one?)
    }
}

/*
 * \brief Initiate the position report catch
 */
inline
void ProgramReportCatch()
{
    SysState.RelCrabState.WaitPosReport = REQUIRED_REL_POS_MEASUREMENTS ;
    SetSysTimerTargetSec (TIMER_GET_NEW_CAMERA_REPORT_MEDIAN_TOUT , 4.0f  , &SysTimerStr); //allowed time for obtaining 5 reports. //OBB: not tested
#ifdef DEBUG_CAMERA_DELAY
    SysState.RelCrabState.CamDelayRegistered = 0;
#endif
}


/*
 * Just a concentrated way so transit the state machine
 */
void ChangeCrabSubStateRel(enum EN_CrabRelStates x )
{
    SysState.Mot.ChgMode.SubState  = (short) x ;
}

void UpdateCalibCorrectedPos(void)
{
    SysState.RelCrabState.CalibCorrectedPosX = SysState.RelCrabState.PosReport.x + SysState.RelCrabState.CalibCorrectionX;
    SysState.RelCrabState.CalibCorrectedPosY = SysState.RelCrabState.PosReport.y + SysState.RelCrabState.CalibCorrectionY;
    SysState.RelCrabState.CalibCorrectedPosAz = SysState.RelCrabState.PosReport.Azimuth + SysState.RelCrabState.CalibCorrectionAz;
}



void RotateWheels2Azimuth (float RotationAzimuth)
{
    SetCanAxisPosTarget(&SysState.CanAxis[LOGICAL_RSTEER], RotationAzimuth);
    SetCanAxisPosTarget(&SysState.CanAxis[LOGICAL_LSTEER], RotationAzimuth);
    SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
}


short unsigned IsAxisConverged(struct CCanAxis *pAxis)
{
    return pAxis->BH.AxisCbit.bit.ProfileConverged ;//* pAxis->BH.AxisCbit.bit.MotionConverged ; //OBB3: motion not converged!
}


/*
 * \brief Manage the state machine of climbing a pole, new state machine for close approach
 * The relative target coordinates are w.r.t robot position
 * x is toward robot head
 * y is towards robot right
 * z is down
 * Azimuth is the x axis of the target with respect to the robot x, so to straighten with the target the robot need to rotate exactly this az
 *
 * Known from previous analysis:
 * SysState.ManRouteState.NomRouteTangent       // The tangent to the shelves
 * SysState.ManRouteState.NomRouteLocation[0] ; // Location of the pole
 * SysState.ManRouteState.NomRouteLocation[1] ;
 *
 *
 * SysState.ManRouteState.PendingCrab           - The direction of crab expected for the approach
 *
 *
 * Algorithm:
 * 0.0 Crab error (Az,x) = 0
 *
 * LOOP1:
 * 1.0 Measure
 * 1.1 Rotate azimuth for parallel - null az error,
 *
 * 2.0 Measure
 * 2.1 Travel to x = 0 - crab x error
 *
 * 3.0 Measure
 * 3.1 If out of tolerance, go to LOOP1
 * 3.2 crab
 *
 * 4.0 Measure
 * 4.1 If out of tolerance,
 *      4.1.1 Record crabbing error
 *      4.1.2 Uncrab
 *      4.1.3 Go to LOOP1
 * 4.2 Go Y to target
 *
 * 5.0 Measure
*  5.1 If out of tolerance,
 *      5.1.1 Uncrab
 *      5.1.2 Go to LOOP1
 *      5.1.3 End
 *
 *
 */
short CommitCrabStateMachineRel2Robot( void )
{
    float YTravel, XTravel, ExtraXTravel, ExtraYTravel, DistRobotCenter2WagonTip , RotationAzimuth;

    if (SysState.Mot.ChgMode.SubState == EN_CommitCrab_Init)
    { // If just entered mode, kill everything while waiting QR code reports
        ManRouteCmd.CurvatureCmd = 0;
        ManRouteCmd.LineSpeedCmd = 0;
        ManRouteCmd.dCurvatureCmd = 0 ;
        SysState.RelCrabState.AzError = 0 ;
        SysState.RelCrabState.XError = 0 ;
        SysState.RelCrabState.LoopCnt = 0 ;
        SysState.CorrectedAfterCrab = 0;
        CrabProfiler.Done = 1;
        SysState.RelCrabState.WaitPosReport = 0 ; // Kill catch temporarily so we get to state machine at all
        // Distance from target (terminal tip) to place the robot (center) for initiating the climb state machine
        //SysState.RelCrabState.yTarget = Geom.RobotCenter2WagonTip + Geom.TerminalClimbClearance ;
        SysState.RelCrabState.yTarget = Geom.HalfDistBetweenWheelAxes + Geom.DistWheelAxis2WagonTip + Geom.TerminalClimbClearance;
    }

   // If awaiting position report or timer, just wait
    if ( CatchRelPosReport()  )
    {
        return 0 ;
    }

    //CrabProfiler.Done == 0 - waiting for a new RotateInPlace to take place.
    //SysState.ManRouteState.NewCrabFlag == 1 - waiting for a new crab motion to take place
    if ( CrabProfiler.Done == 0 || SysState.ManRouteState.NewCrabFlag || ( IsSysTimerElapse(TIMER_GEN_TIME_ACTION, &SysTimerStr) == 0 ) ||
            (!IsAxisConverged(&SysState.CanAxis[LOGICAL_RSTEER])) || (!IsAxisConverged(&SysState.CanAxis[LOGICAL_LSTEER])) )
    { // Waiting completion of profiler or timing
        return 0 ;
    }

    //Not waiting for either crab rotate/ motion to take place, minimal timer elapsed.

    switch ( SysState.Mot.ChgMode.SubState )
    {
     case ENR_CommitCrab_Init:

         // Calculate the angle correction
         KillDifferenceDrive() ;
         //ProgramReportCatch() ;
         ChangeCrabSubStateRel(ENR_CommitCrab_1p0 )  ;
         //SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         break ;

     case ENR_CommitCrab_1p0: //start another iteration of docking to terminal

         // Test not too many iterations
         if ( SysState.RelCrabState.LoopCnt > SysState.RelCrabState.LoopCntMax )
         {
             LogException(OWN_EXP_ID, EXP_ABORT, exp_too_many_pole_approach_its);
             return 0 ;
         }

         ProgramReportCatch() ; // Initiate measure
         //SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         ChangeCrabSubStateRel(ENR_CommitCrab_1p1 )  ;
         break ;
     case ENR_CommitCrab_1p1: //Sets the correct camera calibration based on the initial measurement.
          // Test not too many iterations
         SysState.RelCrabState.Direction = SysState.RelCrabState.PosReport.y > 0 ? 1 : -1 ; //1 - right, -1 - left
         SysState.RelCrabState.CalibCorrectionAz = SysState.RelCrabState.Direction == 1  ? CalibProg.Calib.AzCalibShiftR : CalibProg.Calib.AzCalibShiftL ;
         SysState.RelCrabState.CalibCorrectionX = SysState.RelCrabState.Direction == 1  ? CalibProg.Calib.XCalibShiftR : CalibProg.Calib.XCalibShiftL ;
         SysState.RelCrabState.CalibCorrectionY = SysState.RelCrabState.Direction == 1  ? CalibProg.Calib.YCalibShiftR : CalibProg.Calib.YCalibShiftL ;
         UpdateCalibCorrectedPos(); //any other time it is done inside CatchRelPosReport(), only now we needed to wait for the first measurement to verify direction.

         ChangeCrabSubStateRel(ENR_CommitCrab_1p2 )  ;
        break ;
     case ENR_CommitCrab_1p2:    //have new camera report median, drive with azimuth towards terminal tip (with clearance) - no heading rotation before drive

        if ( SysState.ManRouteState.PendingCrab != SysState.RelCrabState.Direction)
        {
            LogException(OWN_EXP_ID, EXP_FATAL, exp_y_dir_dont_match_crab);
            return 0 ;
        }

        if ( ( fabsf(-GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER]) ) > STEER_ON_TARGET_TOL  ) ||
             ( fabsf(-GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER]) ) > STEER_ON_TARGET_TOL  ) )
        {
            LogException(OWN_EXP_ID, EXP_FATAL, exp_illeagal_crab_cmd_steer_not_at_zero_pos );
        }

        // Verify y in range
        if ( ( ( fabsf( SysState.RelCrabState.CalibCorrectedPosY) - SysState.RelCrabState.MinY ) < 0 ) ||
           ( ( fabsf( SysState.RelCrabState.CalibCorrectedPosY) - SysState.RelCrabState.MaxY ) > 0 ) )
        {
            LogException(OWN_EXP_ID, EXP_FATAL, exp_dist_pole_out_range );
            return 0 ;
        }

        DistRobotCenter2WagonTip = Geom.HalfDistBetweenWheelAxes + Geom.DistWheelAxis2WagonTip;
        ExtraXTravel = SysState.RelCrabState.Direction == 1 ? DistRobotCenter2WagonTip*__sin(SysState.RelCrabState.CalibCorrectedPosAz) : -DistRobotCenter2WagonTip*__sin(SysState.RelCrabState.CalibCorrectedPosAz); //// 1: right climb ;  -1: left climb
        ExtraYTravel = -DistRobotCenter2WagonTip* (1-__cos(SysState.RelCrabState.CalibCorrectedPosAz));
        XTravel = SysState.RelCrabState.CalibCorrectedPosX + ExtraXTravel;
        YTravel = SysState.RelCrabState.CalibCorrectedPosY - SysState.RelCrabState.yTarget *  SysState.RelCrabState.Direction + ExtraYTravel;
        //YTravel = SysState.RelCrabState.CalibCorrectedPosY;

        if (YTravel > MIN_Y_FOR_AZIMUTH_DRIVE)
        {
            if ( fabsf(SysState.RelCrabState.CalibCorrectedPosX) > MIN_X_FOR_ANGLE_APPROACH ) //TODO: check if in place, maybe no need to move in Azimuth at all
            {
                SysState.RelCrabState.DriveDirection = 1;
                RotationAzimuth = __atan2(-YTravel, XTravel); //calibrated corrected Azimuth, positive CW both for right and left climb (for left climb, positive Azimuth is towards the termianl).
                SysState.RelCrabState.ForwardDriveLength = XTravel / __cos(RotationAzimuth);
                RotationAzimuth = RotationAzimuth > Pi ?  RotationAzimuth - 2*Pi : RotationAzimuth; //now -pi < RotationAzimuth < pi.
                if (RotationAzimuth > (PiHalf))
                { // RotationAzimuth > pi/2, will rotate -180 deg and change drive direction.
                    RotationAzimuth = RotationAzimuth - Pi ;
                    SysState.RelCrabState.DriveDirection = -1;
                }
                else if (RotationAzimuth < (-PiHalf))
                    { // RotationAzimuth > pi/2, will rotate -180 deg and change drive direction.
                        RotationAzimuth = RotationAzimuth + Pi ;
                        SysState.RelCrabState.DriveDirection = -1;
                    }
            }
            else
            { //// 1: right climb ;  -1: left climb
                RotationAzimuth = SysState.RelCrabState.Direction == 1 ? -PiHalf : PiHalf;
                SysState.RelCrabState.DriveDirection = 1;
                SysState.RelCrabState.ForwardDriveLength = YTravel;
            }
            RotateWheels2Azimuth (RotationAzimuth);
            ChangeCrabSubStateRel(ENR_CommitCrab_1p3 )  ;
        }
        else
        {
            ChangeCrabSubStateRel(ENR_CommitCrab_2p0 )  ;
        }

        break ;

     case ENR_CommitCrab_1p3: //go forward at calculated azimuth to terminal tip
         SetTravelFW( SysState.RelCrabState.DriveDirection * SysState.RelCrabState.ForwardDriveLength , WHEELS_DRIVE_FW_VMAX, WHEELS_REDUCED_ACC, WHEELS_REDUCED_ACC) ;
         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         ChangeCrabSubStateRel(ENR_CommitCrab_1p4 )  ;
         break ;

     case ENR_CommitCrab_1p4:    //have new camera report median, drive with azimuth towards terminal tip (with clearance) - no heading rotation before drive
         RotateWheels2Azimuth (0);

         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         ChangeCrabSubStateRel(ENR_CommitCrab_2p0 )  ;
         break ;

     case ENR_CommitCrab_2p0:
//         SetCanAxisWheelTracksSteering(&SysState.CanAxis[LOGICAL_RSTEER], 0);
//         SetCanAxisWheelTracksSteering(&SysState.CanAxis[LOGICAL_LSTEER], 0);

         ProgramReportCatch(); // Initiate measure
         ChangeCrabSubStateRel(ENR_CommitCrab_2p1 )  ;
         break ;

     case ENR_CommitCrab_2p1: //Heading Azimuth fix
         SetRotateInPlace( SysState.RelCrabState.CalibCorrectedPosAz, WHEELS_ROTATE_IN_PLACE_VMAX, WHEELS_REDUCED_ACC, WHEELS_REDUCED_ACC) ; //SetRotateInPlace rotates CCW for positive angle.
         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         ChangeCrabSubStateRel(ENR_CommitCrab_3p0 )  ;
         break ;

     case ENR_CommitCrab_3p0:
         ProgramReportCatch(); // Initiate measure
         ChangeCrabSubStateRel(ENR_CommitCrab_3p1 )  ;
         break ;

     case ENR_CommitCrab_3p1: //Travel at X

         // Test rotation convergence
         if ( fabsf( SysState.RelCrabState.CalibCorrectedPosAz + SysState.RelCrabState.AzError) > SysState.RelCrabState.AzTolFinal  )
         {
             ChangeCrabSubStateRel(ENR_CommitCrab_2p0 )  ;
             // Don count an angle correction as iteration
             SysState.RelCrabState.AzError = 0;
             //SysState.RelCrabState.LoopCnt = __max( SysState.RelCrabState.LoopCnt -1 , 0 ) ;
             ProgramReportCatch() ; // Initiate measure
             break ;
         }

         SetTravelFW( SysState.RelCrabState.CalibCorrectedPosX + SysState.RelCrabState.XError ,WHEELS_DRIVE_FW_VMAX,  WHEELS_REDUCED_ACC, WHEELS_REDUCED_ACC) ;
         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         ChangeCrabSubStateRel(ENR_CommitCrab_4p0 )  ;
         break ;

     case ENR_CommitCrab_4p0:
              ProgramReportCatch(); // Initiate measure
              ChangeCrabSubStateRel(ENR_CommitCrab_4p1 )  ;
              break ;

     case ENR_CommitCrab_4p1: //Crab

         // Test rotation convergence. Test here again because if X deviates it influences azimuth accuracy
         if ( fabsf( SysState.RelCrabState.CalibCorrectedPosAz + SysState.RelCrabState.AzError) > SysState.RelCrabState.AzTolShortDist )
         {
             ChangeCrabSubStateRel(ENR_CommitCrab_2p0 )  ;
             break ;
         }

         // Test linear travel convergence
         if ( fabsf( SysState.RelCrabState.CalibCorrectedPosX + SysState.RelCrabState.XError) > SysState.RelCrabState.XTolShortDist )
         {
             ChangeCrabSubStateRel(ENR_CommitCrab_3p0 )  ;
             break ;
         }

         SysState.RelCrabState.CalibCorrectedPosXBeforeCrab = SysState.RelCrabState.CalibCorrectedPosX;

//         SysState.CanAxis[LOGICAL_RW].BH.UserProfileAcc = WHEELS_DEFAULT_ACC;
//         SysState.CanAxis[LOGICAL_LW].BH.UserProfileAcc = WHEELS_DEFAULT_ACC;
//         SysState.CanAxis[LOGICAL_RW].BH.UserProfileSpeed = WHEELS_DEFAULT_VMAX;
//         SysState.CanAxis[LOGICAL_LW].BH.UserProfileSpeed = WHEELS_DEFAULT_VMAX;

         InitiateCrab(SysState.RelCrabState.Direction ) ;
         SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
         ChangeCrabSubStateRel(ENR_CommitCrab_5p0 )  ;
         break ;

     case ENR_CommitCrab_5p0:
         ProgramReportCatch() ; // Initiate measure
         ChangeCrabSubStateRel(ENR_CommitCrab_5p1 )  ;
         break ;

     case ENR_CommitCrab_5p1: //If out of tolerance return, otherwise proceed towards the terminal

         SysState.RelCrabState.CalibCorrectedPosXAfterCrab = SysState.RelCrabState.CalibCorrectedPosX;

         if ( ( fabsf( SysState.RelCrabState.CalibCorrectedPosX      ) >= SysState.RelCrabState.XTolFinal  ) ||
              ( fabsf( SysState.RelCrabState.CalibCorrectedPosAz) >= SysState.RelCrabState.AzTolFinal ) )
         {
#ifndef CANCEL_REL_CRAB_ERROR_CORRECTION
             SysState.RelCrabState.AzError = SysState.CorrectedAfterCrab ? fSat ( SysState.RelCrabState.AzError + SysState.RelCrabState.CalibCorrectedPosAz * CONVERGENCE_FACTOR , 0.01f ) : 0;
             SysState.RelCrabState.XError = SysState.CorrectedAfterCrab ? fSat ( SysState.RelCrabState.XError + SysState.RelCrabState.CalibCorrectedPosX * CONVERGENCE_FACTOR , 0.01f ) : 0;
#endif
             InitiateCrab(0) ;
             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
             SysState.RelCrabState.LoopCnt += 1 ;
             ChangeCrabSubStateRel(ENR_CommitCrab_1p0 )  ;
         }
         else
         { // No x or azimuth too high error, Travel sideways
             SysState.RelCrabState.Travel2SideDirection = ( (SysState.RelCrabState.CalibCorrectedPosY - SysState.RelCrabState.yTarget *  SysState.RelCrabState.Direction) * SysState.RelCrabState.Direction ) > 0 ? 1 : -1;
             if ( fabsf( SysState.RelCrabState.CalibCorrectedPosY - SysState.RelCrabState.yTarget *  SysState.RelCrabState.Direction) > TERMINAL_CLIMB_Y_TOL_FINAL )
             {
                 SetTravel2Side( fabsf( SysState.RelCrabState.CalibCorrectedPosY - SysState.RelCrabState.yTarget *  SysState.RelCrabState.Direction), SysState.RelCrabState.Travel2SideDirection ) ; //TODO: when Yahali fix the crab direction bug, remove the minus sign.
                 SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
             }
             ChangeCrabSubStateRel(ENR_CommitCrab_6p0 )  ;
         }
         break ;

     case ENR_CommitCrab_6p0:
         ProgramReportCatch() ; // Initiate measure
         ChangeCrabSubStateRel(ENR_CommitCrab_6p1 )  ;
         break ;

     case ENR_CommitCrab_6p1:
         if ( ( fabsf( SysState.RelCrabState.CalibCorrectedPosX     )  >= SysState.RelCrabState.XTolFinal) ||
              ( fabsf(SysState.RelCrabState.CalibCorrectedPosAz)  >= SysState.RelCrabState.AzTolFinal ))
         {
#ifndef CANCEL_REL_CRAB_ERROR_CORRECTION
             SysState.RelCrabState.AzError = SysState.CorrectedAfterCrab ? fSat ( SysState.RelCrabState.AzError + SysState.RelCrabState.CalibCorrectedPosAz * CONVERGENCE_FACTOR , 0.01f ) : 0;
             SysState.RelCrabState.XError = SysState.CorrectedAfterCrab ? fSat ( SysState.RelCrabState.XError + SysState.RelCrabState.CalibCorrectedPosX * CONVERGENCE_FACTOR , 0.01f ) : 0;
#endif
             InitiateCrab(0) ;
             SetSysTimerTargetSec (TIMER_GEN_TIME_ACTION , 0.4f  , &SysTimerStr); // Was 0.4sec delay
             SysState.CorrectedAfterCrab = 1;
             SysState.RelCrabState.LoopCnt += 1 ;
             ChangeCrabSubStateRel(ENR_CommitCrab_2p0 )  ;
         }
         else
         {
             return 1 ;
         }
         break;
     }
     //break ;
 return 0 ;

}




/*
 * \brief Manage the state machine of un-climbing a pole
 * Pre calculated:
 * - SysState.ManRouteState.UnfoldTravel
 * This is made of the following:
 * - 1.0: Measure
 * - 1.1: Decide Y travel and go to the side
 * - 2.0: Un crab
 * - 3.0: Measure
 * - 3.1: Set azimuth correction
 * - 4.0 Measure
 * - 4.1 Correct lateral distance
 * - 5.0 Measure
 * - 5.1 Done
 */

short CommitUnCrabStateMachineRel2Robot( void )
{
    short RetVal ;
    float d ;

    if (SysState.Mot.ChgMode.SubState == ENR_CommitUnCrab_Init)
    { // If just entered mode, kill everything while waiting QR code reports
        ManRouteCmd.CurvatureCmd = 0;
        ManRouteCmd.dCurvatureCmd = 0 ;
        ManRouteCmd.LineSpeedCmd = 0;
        CrabProfiler.Done = 1;
    }


    // If awaiting position report or timer, just wait
     if ( CatchRelPosReport()  )
     {
         return 0 ;
     }
    //SysState.ManRouteState.WaitPosReport = -1; // If catch done, expect no more

    if ( CrabProfiler.Done == 0 || SysState.ManRouteState.NewCrabFlag || ( IsSysTimerElapse(TIMER_GEN_TIME_ACTION, &SysTimerStr) == 0 ) )
    { // Waiting completion of profiler or timing
        return 0 ;
    }

    RetVal = 0 ;
    switch ( SysState.Mot.ChgMode.SubState )
    {
    case ENR_CommitUnCrab_Init: // First start the position
        //SetPosReportCatchReduced(0); // Sept 2019 Learn the position
        ProgramReportCatch() ; // Initiate measure
        ChangeCrabSubState(ENR_CommitUnCrab_1p0) ;
        break;

    case ENR_CommitUnCrab_1p0:
        d = fabsf(SysState.RelCrabState.PosReport.y) - (SysState.ManRouteState.UnfoldTravel + (GetArcEntryLength()   - Geom.ArcEntryPoleHomingPlateDist ))  ;
        d = -d * ManRouteCmd.CrabCrawl ; // Because we have to return it
        if (fabsf(d) > 1.0)
        {// Error too large.
            LogException(OWN_EXP_ID, EXP_ABORT, exp_distance_correction_too_large);
            break;
        }
        SetTravel2Side( d , ManRouteCmd.CrabCrawl);
        ChangeCrabSubState(ENR_CommitUnCrab_2p0) ;
        break;

    case ENR_CommitUnCrab_2p0:
        InitiateCrab(SysState.RelCrabState.Direction ) ;
        ChangeCrabSubState(ENR_CommitUnCrab_3p0) ;
        break ;

    case ENR_CommitUnCrab_3p0:
        ChangeCrabSubState(ENR_CommitUnCrab_3p1) ;
        ProgramReportCatch() ; // Initiate measure
        break ;

    case ENR_CommitUnCrab_3p1:
        SetRotateInPlace( SysState.RelCrabState.PosReport.Azimuth , WHEELS_ROTATE_IN_PLACE_VMAX, WHEELS_REDUCED_ACC, WHEELS_REDUCED_ACC) ;
        ChangeCrabSubState(ENR_CommitUnCrab_4p0) ;
        break ;

    case ENR_CommitUnCrab_4p0:
        ProgramReportCatch() ; // Initiate measure
        break ;

    case ENR_CommitUnCrab_4p1:
        SetTravelFW( SysState.RelCrabState.PosReport.x  , WHEELS_DRIVE_FW_VMAX, WHEELS_REDUCED_ACC, WHEELS_REDUCED_ACC) ;
        ChangeCrabSubState(ENR_CommitUnCrab_5p0) ;
        break ;

    case ENR_CommitUnCrab_5p0:
        ProgramReportCatch() ; // Initiate measure
        break ;

    case ENR_CommitUnCrab_5p1:
        RetVal = 1 ;
        break ;
    }
    return RetVal ;
}

