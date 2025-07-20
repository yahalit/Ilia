/*
 * ShelfManagement.c
 *
 *  Created on: May 4, 2024
 *      Author: yahal
 */

#include "StructDef.h"


/*
 * \brief Test that encoder reference candidates dont correct too much
 */
short IsSwCorrectionAcceptable(long tol, short Leader )
{
    long le0; //, le1 ;
    le0 = labs(SysState.ManRouteState.WheelEncoderTarget[Leader] - SysState.ManRouteState.WheelEncoderTargetCand[Leader]);
    //le1 = labs(SysState.ManRouteState.WheelEncoderTarget[1] - SysState.ManRouteState.WheelEncoderTargetCand[1]);
    if ( le0 < tol ) //  __lmax(le0,le1) <  tol )
    {
        return 1 ;
    }
    else
    {
        return 0 ;
    }
}

//float Meter2WheelEncoder, WheelEncoder2Meter;
/*
\brief Recalculate the position targets based on switch encounter
*/
void CorrectVerticalTargetBySwitch(short Leader , short Follower , short godir)
{
    short NextAxis , upd ;
    float fdir ;

    // Problem: Direction here should identify with the switch traversing
    fdir = godir ; // SysState.ManRouteState.GoDirection ;
    upd = 0 ;

    if ((SysState.PoleRun.TargetArmDone & 2) == 0)
    {
        NextAxis = Leader;
        if (SysState.CanAxis[NextAxis].InductiveSensor)
        {
            // If leader found the switch, correct the position targets
            SysState.PoleRun.JuncDinCapture[NextAxis] = SysState.CanAxis[NextAxis].EncOnInductiveSensor;
            SysState.ManRouteState.WheelEncoderTargetCand[NextAxis] = SysState.CanAxis[NextAxis].EncOnInductiveSensor +
                (long)(fdir * Geom.LimitSwitchDistFromJuncPole * Geom.Calc.Meter2WheelEncoderShelfVert );
            SysState.PoleRun.TargetArmDone |= 2;
            upd = 2 ;
        }
    }
    if ((SysState.PoleRun.TargetArmDone & 4) == 0)
    {
        NextAxis = Follower;
        if (SysState.CanAxis[NextAxis].InductiveSensor)
        {
            // If Follower found the switch, correct the position targets
            SysState.PoleRun.JuncDinCapture[NextAxis] = SysState.CanAxis[NextAxis].EncOnInductiveSensor;
            SysState.ManRouteState.WheelEncoderTargetCand[NextAxis] = SysState.CanAxis[NextAxis].EncOnInductiveSensor +
                (long)(fdir * Geom.LimitSwitchDistFromJuncPole * Geom.Calc.Meter2WheelEncoderShelfVert);
            SysState.PoleRun.TargetArmDone |= 4;
            upd = 4 ;
        }
    }
    SysState.PoleRun.TargetArmDone &= SysState.PoleRun.TargetArmRequirement ;

    if ( (SysState.PoleRun.TargetArmDone == (SysState.PoleRun.TargetArmRequirement|1) ) && (SysState.PoleRun.TargetArmRequirement & upd) )
    {
        // Only the leader is tested for sanity as follower target may change by track width
        if (IsSwCorrectionAcceptable( (long)( Geom.Calc.Meter2WheelEncoderShelfVert * 0.06f) , Leader ) == 0 )
        {
            LogException(OWN_EXP_ID, (SysState.PoleRun.TargetArmDone == 7) ? EXP_ABORT : EXP_FATAL , exp_switch_corrects_target_too_much);
        }
        else
        {
            if  (SysState.PoleRun.TargetArmRequirement & 2 )
            {
                SysState.ManRouteState.WheelEncoderTarget[Leader] = SysState.ManRouteState.WheelEncoderTargetCand[Leader];
            }
            if  (SysState.PoleRun.TargetArmRequirement & 4 )
            {
                SysState.ManRouteState.WheelEncoderTarget[Follower] = SysState.ManRouteState.WheelEncoderTargetCand[Follower];
            }
        }
    }
}


/*
 * Test if pole travel got its target
 * \param Leader, Folower: The wheels selection
 * \param bIgnoreSwitch:  If true, never allow motion completion by switch detection
 * \returns DesiredSpeed -> Desired motion speed
 * \returns
 */
float CalcPoleTravelArrival(short unsigned Leader , short unsigned Follower , short bIgnoreSwitch , float *DesiredSpeed )
{

    float TotalError , t0 , a , SpeedLim , thold ;
    short bSwitchActive , stat  ; // ,match  , stat ;
    short unsigned CompleteArmDone ;
    // Recalculate error - target may have changed
    SysState.ManRouteState.errPos[Leader] = SysState.ManRouteState.WheelEncoderTarget[Leader] - SysState.ManRouteState.WheelEncoderNow[Leader];
    SysState.ManRouteState.LeaderError    = (SysState.ManRouteState.WheelEncoderTarget[Leader] - SysState.ManRouteState.WheelEncoderNow[Leader]) * Geom.Calc.WheelEncoder2MeterShelfVert;// / Geom.Calc.Meter2WheelEncoderShelf;
    TotalError =  SysState.ManRouteState.LeaderError * SysState.ManRouteState.GoDirection ;

    thold = Geom.Error4LeaderTwistPosControlM ;
    if ( bIgnoreSwitch)
    {
        CompleteArmDone = 0x7fff ; // Assure comparison fail
    }
    else
    {
        CompleteArmDone = ( SysState.PoleRun.TargetArmRequirement | 1 ) ;
        //TotalError = __fmax(TotalError , SysState.ManRouteState.FollowerError * SysState.ManRouteState.GoDirection ) ;

        // If a switch is active, do not fail by early arrival but continue to  evaluate switch
        bSwitchActive   = pSw[Leader]->PresentValue * pSw[Leader]->SwitchDetectMarker  +  pSw[Follower]->PresentValue * pSw[Follower]->SwitchDetectMarker ;
        if ( bSwitchActive)
        {
            thold =  Geom.Error4LeaderTwistPosControlM - Geom.LimitSwWidth ;
        }
    }


    if ( (TotalError <  thold ) || (SysState.PoleRun.TargetArmDone == CompleteArmDone ) )
    {
        SpeedLim = 0;
        *DesiredSpeed = 0 ;
        SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 2.5f, &SysTimerStr);

        if ( (enum E_TrackWidthType )ManRouteCmd.ShelfWidthTarget == E_TrackWidthExtend )
        {
            if ( SysState.PoleRun.TargetArmDone != CompleteArmDone )
            { // Must now activate wheel arm, but jnction has not been found
                LogException(OWN_EXP_ID, EXP_FATAL, exp_switch_absent_pre_wam);
                return  0 ;
            }
        }
        stat = InitTrackWidthAdjust(E_ShelfArc_SubMode_ClimbDone,(enum E_TrackWidthType )ManRouteCmd.ShelfWidthTarget, (enum E_LogicalAxe)Leader  ) ;
        if ( stat == 0 )
        {
            ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ShoulderAdjust; // All the encounters made, we are completely on pole!
        }
        else
        {
#ifdef WARM_PROG_STOP_USER
            if ( stat * SysState.Debug.bRecorder4ShelfRun > 0 )
            {
                RecordWheelArmVars() ; // So that 1st records takimg shall be meaningfull
                ActivateProgrammedRecorder() ;
            }
#endif
        }
    }
    else
    {
        // Not yet arrived
        *DesiredSpeed = AutomaticRunPars.PoleSpeed  * SysState.ManRouteState.GoDirection ;

        // Set the speed limit so that deceleration with no overshoot is possible
        t0 = 0.1f ; // Assumption for control delay
        a = AutomaticRunPars.PoleLineAcc ;
        if (SysState.ManRouteState.GoDirection  < 0 )
        {
            a = a * 0.3f ;
        }
        // The speed limit is absolute
        SpeedLim =  -(a * t0) + sqrtf((a * a * t0 * t0 + 2 * __fmax(TotalError -__fmin(thold,0),0) * a));
        SpeedLim = __fmax( SpeedLim , 0.01f ) ;
    }
    return SpeedLim ;
}



/*
\brief Solve the arc. SUBJECT TO THE ASSUMPTION that the robot shoulder is wider than the arc,
        so there is a situation where each wheel is at another side of the arc!
        The situation where two wheels are on the arc (trivial.... bwv=1) is not analyzed.
\param s: Distance traveled by the leader
\param zone-> case discrimination (0: Not entered , 1: Leader on arc, 2: Leader passed, follower not yet entered 3: Leader passed, Follower on 4: Both passed
\return bwv: Follower speed / leader speed
*/

#define DELTA 0.00390625f
#define INV_DELTA 256.0f

float GetWheelVelocityRatio(float s , short * zone , float *tilt, float *dtilt )
{
    float R, ArcCurvature, theta, dtht, a, d, ks, kc, kc11, kc12, bwv, passdist, X1Cand, Ra;
    float aa, bb, cc, y2a , sq , dy , kc1 , tilt2 , p, b1, b2 , f1 , f2 , r , r2, d2, p2 , g ;
    if (s <= 0)
    {// Never entered
        *tilt    = 0 ;
        *zone = 0;
        return 1.0f;
    }


    R = Geom.ClimbArcRadi;
    ArcCurvature = 1.0f / R;
    theta = s * ArcCurvature;
    a = Geom.DistanceFromShoulderJoint2Slidewheel;
    d = 2 * Geom.Center2WheelDist  ;
    Ra = R - a;
    *tilt    = 0 ;
    *dtilt    = 0 ;


    if (theta <= 1.570796326794897f)
    { // Leader on the arc , other wheel on floor
        *zone = 1;
        ks = Ra * __sin(theta);
        kc = Ra * __cos(theta);
        kc1 = Ra * __cos(theta+DELTA);

        kc11 = kc - R + a + d;
        kc12 = kc11 - 2 * d;
        dtht = -0.5f*ks*(kc11 + kc12) / sqrtf(-kc11*kc12) + kc;
        bwv = dtht * ArcCurvature;
        dy = Ra - kc ;
        *tilt = aYsin ( dy / d ) ;
        tilt2 = aYsin ( (Ra-kc1)/d) ;
        *dtilt = (tilt2- *tilt)*INV_DELTA/R ;

        return bwv;
    }

    passdist = s - 1.570796326794897f * R;

    if (passdist >= d)
    { // Over the rainbow, just run straight and square
        *zone = 4;
        *tilt = 1.570796326794897f  ;
        return 1;
    }

    y2a = s - (1.570796326794897f - 1.0f) * R - a; // Difference of height between the shoulders
    sq = d*d - y2a * y2a;                           // Horizontal difference between shoulders

    if (sq > 0)
    {
        sq = sqrtf(sq); //  Horizontal difference between shoulders
        X1Cand = R - a - sq;
    }
    else
    {
        X1Cand = 1; // Stam, just need be > 0
    }

    if (X1Cand > 0)
    {
        *zone = 3;
        r = Ra ;
        r2 = r * r ;
        d2 = d * d ;

        p = passdist+DELTA ;
        p2 = p * p ;
        aa = 4*(p2 + r2) ;
        bb = 2*p*(-d2 + p2 + 2*r2) ;
        cc = d2*(d2 - 2*p2 - 4*r2) + p2*(p2 + 4*r2)  ;
        g  = (-bb + sqrtf(__fmax(bb*bb-aa*cc,0))) / aa;
        a = sqrtf(r2-g*g) ;
        b2 = r-a ;
        f2 = g+p ;

        p = passdist ;
        p2 = p * p ;
        aa = 4*(p2 + r2) ;
        bb = 2*p*(-d2 + p2 + 2*r2) ;
        cc = d2*(d2 - 2*p2 - 4*r2) + p2*(p2 + 4*r2)  ;
        g  = (-bb + sqrtf(__fmax(bb*bb-aa*cc,0))) / aa;
        a = sqrtf(r2-g*g) ;
        b1 = r-a ;
        f1 = g+p ;

        //bwv = sqrtf((f2+DELTA-f1)^2+(b2-b1)^2) * INV_DELTA;
        bwv =  HYpot(f2+DELTA-f1,b2-b1)  * INV_DELTA;

        *tilt = atan2f(f1,b1);
        *dtilt = ( atan2f(f2,b2) - *tilt) * INV_DELTA ;

/*
        // Second wheel is on the arc - left the ground already
        x0 = -passdist;
        aa = 2 * Ra * Ra; bb = 2 * x0 * Ra; bb2 = bb * bb;
        cc = d * d - x0 * x0 - aa;
        Delta = sqrtf(bb2 * (aa * aa + bb2 - cc * cc));
        theta = atan2f((-bb2 * cc - Delta*aa) / bb, -aa*cc + Delta);

        ks =  Ra *Ysin(theta); kc = Ra*Ycos(theta);
        kc11 = kc - R + a + d;
        kc12 = kc11 - 2 * d;
        dtht = -0.5f*ks*(kc11 + kc12) / sqrtf(-kc11*kc12) + kc;
        bwv = R / dtht;

        dy = passdist + ks ;
        *tilt = aYsin( dy / d ) ;
*/
    }
    else
    {
        *zone = 2;
        dy = Ra + passdist ;
        *tilt = aYsin ( dy / d ) ;
        *dtilt = 1/sqrt(d*d-dy*dy) ;
        bwv  = y2a / sq;
    }
    return bwv;
}



/*
 * \brief Get the follower distance-on-route given the leader distance-on-route
 * \param  leaderPos : Position of leader on the trace
 * \param zone-> 1 leader on arc , 2: leader after , follower before arc , 3: Follower on arc , 4: Past arc
 * \param armFollower-> 1 if follower may be safely armed
 * \return Follower position
 */
float GetFollowerByLeader(float leaderPos, short * zone , short *armFollower)
{
    float s , s1 ;
    float d , Ra ;
    float a , b, c , dd , FollowerPos , tht , dy ;

    // Geometry
    d  = SysState.TrackWidthCtl.RetractedWidth  ; // Because we always climb retracted
    Ra = Geom.ClimbArcRadi - Geom.DistanceFromShoulderJoint2Slidewheel;

    // find position to arm follower switch
    s = leaderPos - Geom.ClimbArcRadi * 1.570796326794897f ;
    s1 = sqrtf(d*d-Ra*Ra) - Ra  ;

    if ( s < 0 )
    { // Leader on the arc, follower is straight
        tht = leaderPos / Geom.ClimbArcRadi ;
        dy =  ( 1 - __cos(tht)) * Ra ;
        FollowerPos = Ra * __sin(tht) - sqrtf( __fmax ( d * d - dy * dy,0)  )    ;
        * zone = 1 ;
        *armFollower = 1 ;
    }
    else if ( s < s1 )
    { // Leader and follower on straight segments
        FollowerPos = Ra - sqrtf(d * d - ( s + Ra)*(s+Ra)) ;
        * zone = 2 ;
        *armFollower = 1 ;
    }
    else
    {  //Leader on the straight, follower on the arc
        if  ( s < d )
        {
            // The equation is a * sin(tht) + b * cos(tht) + c = 0 , with a > 0
            c = 2 * Ra * Ra + s * s - d  *d ;
            b = -2 * Ra * Ra  ;
            a = 2 * Ra * s ;
            dd = sqrtf (a * a + b * b - c * c ) ;
            tht =  1.570796326794897f - atan2f(-a*c-dd*b , -b * c + dd * a ) ;
            *armFollower = (tht < 0.7854f ) ? 1 : 0  ;

            FollowerPos = tht * Geom.ClimbArcRadi ;
            * zone = 3 ;
        }
        else
        {
             * zone = 4 ;
             * armFollower = 0 ;
             FollowerPos = leaderPos - d ;
        }
    }
    return FollowerPos ;
}






/*
 * \brief Robot-on-the-shelf state machine
 */
short ManShelf(float dT)
{
    short unsigned Leader, Follower , SteerLeader, SteerFollower , PosControlFlag , TargetDetect , LManipLockRequest  ; //, EndMode ;
    short ClimbDirection ;
    short ShoulderCorrection ; // 1 to control wheels mutually so as to balance torques
    short zone , InPack , IgnoreSwitch ; // , NextAxis ;
    long  delta , deltamax , deltaf , lTemp ;
    float SpeedLim , TorqueCorrection  ;
    float DesiredSpeed , starget,  followerRat , leaderRat  ;
    short fatality , ClimbZone , armFollower;
    short unsigned SwDetect ;
    float bwv, R , leaderscale , followerscale , Ls2Pos, Ls2PosDn , ArcCorrect , a   , deltaf_m ;
    float deltamaxMeter   , postol , maxerr;
    float m1  ;
    float  ArcDistanceCand, BaseYewLeader, BaseYewFollower , OffsetYew ; // , OffsetYewLeader;
    //float NeckDiffSetPointAct ,
    //float NeckGain ;
    float eNext, UpSpeedSat , DnSpeedSat , SpeedCmdMsec ;
    struct CPdCmd2 *pPdCmd2 ;
    //float YewCmd ;
    float t0 = 0.12f ;
    struct CCanAxis * pLeader;
    struct CCanAxis * pFollower ;

    if ( SysState.Debug.bWaitUser & 2 ) // See SetUserWait
    {
        StopWheels() ;
        return 0 ;
    }

    // On failure do nothing
    if ( ManRouteCmd.ShelfMode == E_ShelfFailure )
    {
        StopWheels() ;
        SysState.EmcyStopCsp = 1 ;
        return -1 ;
    }

    switch ( ManRouteCmd.CrabCrawl )
    {
    case 1:
        Leader   = LOGICAL_RW ;
        Follower = LOGICAL_LW ;
        SteerLeader = LOGICAL_RSTEER ;
        SteerFollower = LOGICAL_LSTEER ;
        SysState.ManRouteState.LeaderSpeedWhCntSec = SysState.CanAxis[LOGICAL_RW].BH.UserSpeed ; // ClaState.WheelEncR.Speed ;
        SysState.ManRouteState.FollowerSpeedWhCntSec = SysState.CanAxis[LOGICAL_LW].BH.UserSpeed ; // ClaState.WheelEncL.Speed ;
        break ;
    case -1:
        Leader   = LOGICAL_LW ;
        Follower = LOGICAL_RW ;
        SteerLeader = LOGICAL_LSTEER ;
        SteerFollower = LOGICAL_RSTEER ;
        SysState.ManRouteState.LeaderSpeedWhCntSec = SysState.CanAxis[LOGICAL_LW].BH.UserSpeed  ; // ClaState.WheelEncL.Speed ;
        SysState.ManRouteState.FollowerSpeedWhCntSec = SysState.CanAxis[LOGICAL_RW].BH.UserSpeed ; // ClaState.WheelEncR.Speed ;
        break ;
    default:
        if ( ( ManRouteCmd.ShelfMode == E_ShelfArc) && ( SysState.CBit.bit.OnRescueMission == 0 )  )
        {// Clearly illegal
            LogException( OWN_EXP_ID , EXP_WARN , exp_wrong_crab_mode_on_shelf_climb );
            return -1  ;
        }
        if ( SysState.ManRouteState.OldCrabValue > 0 )
        {
            Leader   = LOGICAL_RW ;
            Follower = LOGICAL_LW ;
            SteerLeader = LOGICAL_RSTEER ;
            SteerFollower = LOGICAL_LSTEER ;
            SysState.ManRouteState.LeaderSpeedWhCntSec = SysState.CanAxis[LOGICAL_RW].BH.UserSpeed ; // ClaState.WheelEncR.Speed ;
            SysState.ManRouteState.FollowerSpeedWhCntSec = SysState.CanAxis[LOGICAL_LW].BH.UserSpeed ; // ClaState.WheelEncL.Speed ;
        }
        else
        {
            Leader   = LOGICAL_LW ;
            Follower = LOGICAL_RW ;
            SteerLeader = LOGICAL_LSTEER ;
            SteerFollower = LOGICAL_RSTEER ;
            SysState.ManRouteState.LeaderSpeedWhCntSec = SysState.CanAxis[LOGICAL_LW].BH.UserSpeed ; // ClaState.WheelEncL.Speed ;
            SysState.ManRouteState.FollowerSpeedWhCntSec = SysState.CanAxis[LOGICAL_RW].BH.UserSpeed ; //ClaState.WheelEncR.Speed ;
        }
        break ;
    }
    pLeader = &SysState.CanAxis[Leader];
    pFollower = &SysState.CanAxis[Follower] ;

    //SysState.ManRouteState.LeaderSpeed *= Geom.Calc.WheelEncoder2MeterShelf ;

    lTemp = WheelEncR.Position;
    SysState.ManRouteState.WheelEncoderLastCycleDist[0] = lTemp - SysState.ManRouteState.WheelEncoderNow[0]   ;
    SysState.ManRouteState.WheelEncoderNow[0] = lTemp ;

    lTemp = WheelEncL.Position ;
    SysState.ManRouteState.WheelEncoderLastCycleDist[1] = lTemp - SysState.ManRouteState.WheelEncoderNow[1]   ;
    SysState.ManRouteState.WheelEncoderNow[1] = lTemp ;


    PosControlFlag = 0 ;

    SpeedLim = (float) fabs(ManRouteCmd.ShelfRunPars.ArcSpeed ); // default

    if ( ImuStartMgr.Good  == 0 )
    {
        SpeedLim = 0 ;
        // LogException( OWN_EXP_ID , EXP_ABORT , exp_auto_motion_requires_gyro);
    }


    // Arc total travel - arc vertical climb
    ArcCorrect = Geom.ClimbArcRadi * 0.570796326794897f - Geom.ClimbArcOverFloor  ;

    // Arc travel expected on limit switch hit
    Ls2Pos = Geom.LimitSw2DistPosOnArc + Geom.ClimbArcRadi * 1.570796326794897f;
    Ls2PosDn = Geom.LimitSw2DistPosOnArcDn + Geom.ClimbArcRadi * 1.570796326794897f;

    // If package is now, do nothing
    InPack = IsInPack() ;
    if (InPack || (SysState.CBit.bit.OnRescueMission==0 &&
            ( SysState.Mot.ExecutingQueue == 0 || SysState.CBit.bit.QueueAborted ) ) )
    {
        SysState.ManRouteState.LineSpeed = 0 ;
        ManRouteCmd.LineSpeedCmd = 0 ;
        StopWheels();
    }

    LManipLockRequest = 0 ;
    switch ( ManRouteCmd.ShelfMode )
    {
    case E_ShelfArc:
        SysState.ManRouteState.bTargetWidthMismatch = IsTrackWidthMisMatch(ManRouteCmd.ShelfWidthTarget) ;
        if ( ManRouteCmd.ShelfSubMode == 0 )
        { // Arc climb initialization
            SetSysTimerTargetSec ( TIMER_GYRO_SWITCH , 0.6f, &SysTimerStr  );
            SetSysTimerTargetSec ( TIMER_STOPPY_GEN , 0.5f , &SysTimerStr  );

            SysState.ManRouteState.DifferenceDrive = 0 ;
            SysState.ManRouteState.LineSpeed = 0 ;

            if ( ManRouteCmd.ShelfRunPars.ArcSpeed == 0 )
            {
                StopWheels();
                return 0;
            }

            SysState.ManRouteState.WheelEncoderCapture[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
            SysState.ManRouteState.WheelEncoderCapture[1] = SysState.ManRouteState.WheelEncoderNow[1] ;

            SysState.PoleRun.TargetArmDone = 0 ;
            ManRouteCmd.ShelfSubSubMode = 0 ;

            if ( ManRouteCmd.ShelfRunPars.ArcSpeed >= 0 )
            { // Climb
                // Initialization: Capture arc start position
                SysState.ManRouteState.ShoulderRollInit = SysState.ShoulderRoll ;
                ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_Wait_gyro_rail_detection; // E_ShelfArc_SubMode_Wait_1st_Sensor ; //
                ArmLimitSw(&SysState.CanAxis[LOGICAL_LW],1  ) ;
                ArmLimitSw(&SysState.CanAxis[LOGICAL_RW],1) ;
                SysState.ManRouteState.ArcDistance[0] = UNDEFINED_ARC_DISTANCE;
                SysState.ManRouteState.ArcDistance[1] = UNDEFINED_ARC_DISTANCE;
                SysState.ManRouteState.GoDirection = 1 ;
            }
            else
            { // un-climb
                ManRouteCmd.ShelfSubMode  = E_ShelfArc_SubMode_UnclimbWaitSwitch ;
                ManRouteCmd.ShelfSubSubMode = 0 ;
                //SysState.Sim.Capture = SysState.ManRouteState.WheelEncoderNow[Leader];

                // Start descent armed , the local junction switches should just be invisible in the descent
                SysState.PoleRun.EncOnModeStart[LOGICAL_RW] = SysState.ManRouteState.WheelEncoderNow[LOGICAL_RW];
                SysState.PoleRun.EncOnModeStart[LOGICAL_LW] = SysState.ManRouteState.WheelEncoderNow[LOGICAL_LW];

                SysState.PoleRun.ArcDistanceOnModeStart[LOGICAL_RW] = SysState.ManRouteState.ArcDistance[LOGICAL_RW];
                SysState.PoleRun.ArcDistanceOnModeStart[LOGICAL_LW] = SysState.ManRouteState.ArcDistance[LOGICAL_LW];

                // Start unarmed
                ArmLimitSw(&SysState.CanAxis[LOGICAL_LW],0) ;
                ArmLimitSw(&SysState.CanAxis[LOGICAL_RW],0) ;

                SysState.ManRouteState.GoDirection = -1 ;
                // No need to initialize the climb distance
                //SysState.ManRouteState.ArcDistance[Leader]   = ;
                //SysState.ManRouteState.ArcDistance[Follower] = ;
            }

            SysState.ManRouteState.SwCounter[0] = 0 ;
            SysState.ManRouteState.SwCounter[1] = 0 ;

            SysState.ManRouteState.InterPoleTravel = 0 ;

        }

        // Set steering for vertical climb
        if (  ManRouteCmd.CrabCrawl)
        {
            // Yew, nominal: if to keep wheels as straight as possible
            BaseYewLeader     = -ManRouteCmd.CrabCrawl *  PiHalf;
            BaseYewFollower   =  ReflectSteering(BaseYewLeader) ;

            OffsetYew = -ManRouteCmd.CrabCrawl *  ControlPars.PoleYewOffset ;


            if ( SysState.ManRouteState.GoDirection < 0 )
            {
                SetCanAxisPosTarget( &SysState.CanAxis[SteerLeader], BaseYewLeader + OffsetYew)  ;
                SetCanAxisPosTarget( &SysState.CanAxis[SteerFollower], BaseYewFollower + OffsetYew) ;
            }
            else
            {
                if (SysState.ManRouteState.ArcDistance[Follower] < -0.11 )
                {
                    SetCanAxisPosTarget( &SysState.CanAxis[SteerLeader], BaseYewLeader +
                            ManRouteCmd.CrabCrawl * ControlPars.PreArcLeaderYewOffset ) ;

                    SetCanAxisPosTarget( &SysState.CanAxis[SteerFollower], BaseYewFollower +
                            ManRouteCmd.CrabCrawl *  ControlPars.PreArcFollowerYewOffset) ;
                }
                else
                {
                    if (( SysState.ManRouteState.SwCounter[Leader] == 2) && (SysState.ManRouteState.ArcDistance[Follower] > 0.18f))
                    { // Offset yew applies to leader on the up way only after arc exit
                        SetCanAxisPosTarget ( &SysState.CanAxis[SteerLeader], BaseYewLeader + OffsetYew ) ;
                    }
                    else
                    {
                        SetCanAxisPosTarget( &SysState.CanAxis[SteerLeader], BaseYewLeader) ;
                    }

                    if ( SysState.ManRouteState.SwCounter[Follower] == 2  )
                    {   // Offset yew applies to follower on the up way only after arc exit
                        SetCanAxisPosTarget( &SysState.CanAxis[SteerFollower], BaseYewFollower + OffsetYew ) ;
                    }
                    else
                    {
                        SetCanAxisPosTarget( &SysState.CanAxis[SteerFollower], BaseYewFollower)  ;
                    }
                }
            }

        }
        else
        {
            ///For the right steering must be -1.5 deg and for the left 1.5 deg (+)
            SetCanAxisPosTarget( &SysState.CanAxis[SteerLeader], SysState.ManRouteState.YewCommand) ;
            SetCanAxisPosTarget( &SysState.CanAxis[SteerFollower], SysState.ManRouteState.YewCommand);
        }


        DesiredSpeed = 0;
        ClimbDirection  = 1;
        switch ( ManRouteCmd.ShelfSubMode )
        {
        // Climb cases
        case E_ShelfArc_SubMode_Wait_gyro_rail_detection:
            LManipLockRequest= 1 ;
            // Wait the arrival of the zero micro-switch.
            // This will be the curve entry

            // encoder counts since capture
            delta    = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.WheelEncoderCapture[Leader] ;

            // Distance (m) since leader encountered when motion started towards pole
            SysState.ManRouteState.DeltaM = (SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.WheelEncoderInitCapture[Leader]) * Geom.Calc.WheelEncoder2MeterShelfVert  ;

            // Maximum distance since start of travel, until leader is expected to find first switch
            deltamax = (long) ( Geom.LeaderMeetsZeroSwitchM * Geom.Calc.Meter2WheelEncoderShelfVert ) ;

            if ( SysState.Mot.mode == E_SysMotionModeAutomatic)
            {  // Not finding the first switch on expected travel distance is only a problem in automatic mode (manual can start from any distance)
                fatality = EXP_SAFE_FATAL;
            }
            else
            {// Allow extra distance in manual mode
                deltamax += (long) (0.35f * Geom.Calc.Meter2WheelEncoderShelfVert )  ;
                fatality = EXP_WARN ;
            }

            if ( delta > deltamax )
            { // Distance exhausted and first switch not found - exception
                SpeedLim = 0 ;
                LogException( OWN_EXP_ID , fatality , exp_cant_find_leader_sw_climb );
            }

            SysState.ManRouteState.TotalRollByArc = -(SysState.ShoulderRoll- SysState.ManRouteState.ShoulderRollInit) * ManRouteCmd.CrabCrawl ;
            SysState.ManRouteState.ArcCoverAngleEst    = aYcos(1- SysState.TrackWidthCtl.RetractedWidth *__sin(SysState.ManRouteState.TotalRollByArc)
                /(Geom.ClimbArcRadi-Geom.DistanceFromShoulderJoint2Slidewheel) ) ;
            SysState.ManRouteState.GyroSwCapture =
                    SysState.ManRouteState.WheelEncoderNow[Leader] -
                    SysState.ManRouteState.ArcCoverAngleEst * Geom.ClimbArcRadi * Geom.Calc.Meter2WheelEncoderShelfVert ;

            // Gyro - we dont look for a switch
            if ( SysState.ManRouteState.TotalRollByArc  < ControlPars.Tilt4ArcEntry )
            {
                SetSysTimerTargetSec ( TIMER_GYRO_SWITCH , 0.32f, &SysTimerStr  );
            }
            if ( IsSysTimerElapse(TIMER_GYRO_SWITCH, &SysTimerStr)  )
            {
                SysState.ManRouteState.DinCapture[Leader] =  SysState.ManRouteState.GyroSwCapture ;
                SwDetect = 1 ;
            }
            else
            {
                SwDetect = 0 ;
            }


            if ( SwDetect )
            {
                // First wheel hits the switch, so we are really in the arc now
                ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_Wait_2nd_Sensor; //

                ManRouteCmd.ShelfSubSubMode = 0 ;

                delta = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];

                // Now position is switch position + distance covered since switch
                SysState.ManRouteState.ArcDistance[Leader] = delta * Geom.Calc.WheelEncoder2MeterShelfVert ;

                // Mark the finding
                SysState.ManRouteState.SwCounter[Leader] = 1 ;
            }

            DesiredSpeed = AutomaticRunPars.ArcSpeed;
            break ;

        case E_ShelfArc_SubMode_Wait_2nd_Sensor: // Look for 2nd occurrence - magnetic sensor for leader

            LManipLockRequest = 1 ;

            // Distance of leader since already found first switch
            SysState.ManRouteState.TotalRollByArc = -(SysState.ShoulderRoll- SysState.ManRouteState.ShoulderRollInit) * ManRouteCmd.CrabCrawl ;
            SysState.ManRouteState.ArcCoverAngleEst    = aYcos(1-SysState.TrackWidthCtl.RetractedWidth*__sin(SysState.ManRouteState.TotalRollByArc)
                /(Geom.ClimbArcRadi-Geom.DistanceFromShoulderJoint2Slidewheel) ) ;
            SysState.ManRouteState.GyroSwCapture =
                    SysState.ManRouteState.WheelEncoderNow[Leader] -
                    SysState.ManRouteState.ArcCoverAngleEst * Geom.ClimbArcRadi * Geom.Calc.Meter2WheelEncoderShelfVert ;
            SysState.ManRouteState.TotalRollByArc = -(SysState.ShoulderRoll- SysState.ManRouteState.ShoulderRollInit) * ManRouteCmd.CrabCrawl ;

            if (   SysState.ManRouteState.ArcDistance[Leader] < Geom.ClimbArcRadi * 1.3f )
            { // Gyro - constantly re-estimate entry switch position by gyro readout. Only makes sense before the leader leaves the arc
                SysState.ManRouteState.DinCapture[Leader] = SysState.ManRouteState.DinCapture[Leader] + (SysState.ManRouteState.GyroSwCapture - SysState.ManRouteState.DinCapture[Leader]) * 0.05f ;

            }

            delta    = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader]  ;
            SysState.ManRouteState.DeltaM = delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            // Calculate the arc distance, starting from the last seen switch
            SysState.ManRouteState.ArcDistance[Leader] = delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            // Maximum go before 2nd switch is surely expected = r * (pi / 2 = 90deg) + 17cm
            deltamaxMeter =  Geom.ClimbArcRadi * 1.571f + 0.17f ;

            if ( SysState.ManRouteState.ArcDistance[Leader] > deltamaxMeter )
            { // Test exception: too much time and the leader wheel never reached arc end
                SpeedLim = 0 ;
                LogException( OWN_EXP_ID , EXP_SAFE_FATAL  , exp_leader_cant_find_exit_sw );
                ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbError ;
                break ;
            }


            if ( SysState.ManRouteState.ArcDistance[Leader] < Geom.ClimbArcRadi * 0.7853981635f )
            { // First wheel is before middle of arc - try to arm leader limit switch
                ArmLimitSw( &SysState.CanAxis[Leader] , 1 ) ;
            }
            else
            {
                 if (SysState.CanAxis[Leader].InductiveSensor )
                 {   // Leader met the exit switch (follower still not on the arc)
                     SysState.ManRouteState.SwCounter[Leader]   = 2 ;

                     // Capture = switch position
                     SysState.ManRouteState.DinCapture[Leader] = SysState.CanAxis[Leader].EncOnInductiveSensor ; //SysState.ManRouteState.WheelEncoderNow[Follower] ;

                     // Must update delta (distance from switch capture) because capture changed
                     delta = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];

                     // Distance traveled since now by leader
                     SysState.ManRouteState.ArcDistance[Leader] = Ls2Pos + delta * Geom.Calc.WheelEncoder2MeterShelfVert ;

                     // The total expected pole travel of the leader, always expected to reach the top rail
                     starget = ManRouteCmd.ShelfRunPars.CenterProjHeight + ArcCorrect - Geom.Center2WheelDist ;
                            // - SysState.ManRouteState.bTargetWidthMismatch * SysState.TrackWidthCtl.PreStopDistance ;

                     // Folower should just run one shelf width below the leader
                     SysState.ManRouteState.WheelEncoderTarget[Follower] = SysState.ManRouteState.WheelEncoderTarget[Follower]
                                                                   +  (long) ( (starget - SysState.ManRouteState.ArcDistance[Follower] ) * Geom.Calc.Meter2WheelEncoderShelfVert ) ;

                     starget += GetTargetWidth(ManRouteCmd.ShelfWidthTarget)  ;

                     // Add the remaining distance to get the final target
                     SysState.ManRouteState.WheelEncoderTarget[Leader]  = SysState.ManRouteState.WheelEncoderNow[Leader]
                                                                   +  (long) ( (starget - SysState.ManRouteState.ArcDistance[Leader] ) * Geom.Calc.Meter2WheelEncoderShelfVert ) ;


                     ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_PoleCruise ;
                     SysState.PoleRun.TargetArmDone = 0 ;
                 }
            }
            // Synthetic follower
            SysState.ManRouteState.SwCounter[Follower] = 1 ;
            SysState.ManRouteState.ArcDistance[Follower] =
                    GetFollowerByLeader(SysState.ManRouteState.ArcDistance[Leader], &ClimbZone , &armFollower );

            DesiredSpeed = AutomaticRunPars.ArcSpeed;
            break;

        case E_ShelfArc_SubMode_PoleCruise      : // Leader found the exit switch , till shoulder adjust

            if ( SysState.Debug.bRecorder4GyroClimb )
            {
                lDebug[3] = 0 ;
                SysState.fDebug[0] = 0 ;
                SysState.fDebug[1] = 0 ;
            }
            delta   = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];

            SysState.ManRouteState.DeltaM = delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            SysState.ManRouteState.ArcDistance[Leader] = Ls2Pos + SysState.ManRouteState.DeltaM;

            // Distance remaining to go till shelf
            SysState.ManRouteState.LeaderError = (SysState.ManRouteState.WheelEncoderTarget[Leader] - SysState.ManRouteState.WheelEncoderNow[Leader]) * Geom.Calc.WheelEncoder2MeterShelfVert;// / Geom.Calc.Meter2WheelEncoderShelf;


            IgnoreSwitch = ( ManRouteCmd.JunctionMode == EJM_JunctionIgnoreSwitch ) ? 1 : 0 ;

            if (SysState.ManRouteState.SwCounter[Follower] < 2  )
            { // Follower not yet met the exit switch

                LManipLockRequest = 1 ;

                SpeedLim = __fmin( AutomaticRunPars.ArcSpeed, SpeedLim ) ;

                // Get the arc distance of the follower, based on the leader
                SysState.ManRouteState.SwCounter[Follower] = 1 ;
                SysState.ManRouteState.ArcDistance[Follower] =
                        GetFollowerByLeader(SysState.ManRouteState.ArcDistance[Leader], &ClimbZone , & armFollower );

                if ( SysState.ManRouteState.ArcDistance[Follower] - Ls2Pos >  0.05f )
                {// Verify follower encounter switch on time
                    SpeedLim = 0 ;
                    LogException( OWN_EXP_ID , EXP_SAFE_FATAL  , exp_follower_cant_find_exit_sw );
                    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbError ;
                    break ;
                }

                if ( armFollower  )
                {   // Either arm switch
                    ArmLimitSw( &SysState.CanAxis[Follower] , 1  ) ;
                }
                else
                {   // Or try catch the armed switch
                    if ( SysState.CanAxis[Follower].InductiveSensor )
                    {
                        // Encoder position of the follower over the switch
                        SysState.ManRouteState.DinCapture[Follower] = SysState.CanAxis[Follower].EncOnInductiveSensor ; //SysState.ManRouteState.WheelEncoderNow[Follower] ;

                        // Follower travel since switch
                        deltaf = SysState.ManRouteState.WheelEncoderNow[Follower] - SysState.ManRouteState.DinCapture[Follower];

                        // Traveled till now by the follower
                        SysState.ManRouteState.ArcDistance[Follower] = Ls2Pos + deltaf * Geom.Calc.WheelEncoder2MeterShelfVert ;

                        // Follower final expected position. Note that the robot width is still retracted. Therefore, if the shelf distance is extended,
                        // the follower target is only useful after arm extension
                        starget = ManRouteCmd.ShelfRunPars.CenterProjHeight + ArcCorrect - Geom.Center2WheelDist ;
                                // - SysState.ManRouteState.bTargetWidthMismatch * SysState.TrackWidthCtl.PreStopDistance ;

                        //WTF SysState.ManRouteState.WheelEncoderTarget[Follower]  = SysState.ManRouteState.DinCapture[Follower]
                        // Final target: The present position + newly estimated remains
                        SysState.ManRouteState.WheelEncoderTarget[Follower]  = SysState.ManRouteState.WheelEncoderNow[Follower]
                                                                        +  (long) ( (starget - SysState.ManRouteState.ArcDistance[Follower] ) * Geom.Calc.Meter2WheelEncoderShelfVert ) ;

                        SysState.ManRouteState.SwCounter[Follower] = 2 ;

                        // Signal that switch arming towards final target not yet begun
                        SysState.PoleRun.TargetArmDone = 0 ;

                        SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto;
                    }
                }
//#ifdef WTF
                if ( fabsf( GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK]) ) >  1.4835f )
                {
                    DesiredSpeed = AutomaticRunPars.PoleSpeed ;
                }
                else
//#endif
                {
                    DesiredSpeed = AutomaticRunPars.ArcSpeed ;
                }

            } // End not all switches found
            else
            {
                // Already found the arc exit at the follower wheel
                deltaf = SysState.ManRouteState.WheelEncoderNow[Follower] - SysState.ManRouteState.DinCapture[Follower];
                deltaf_m = deltaf * Geom.Calc.WheelEncoder2MeterShelfVert ;
                SysState.ManRouteState.ArcDistance[Follower] = Ls2Pos + deltaf_m ;

                if ( SysState.PoleRun.TargetArmDone == 0)
                {
                    if ( (deltaf_m > 0.02f) && ( (float) fabs(SysState.ManRouteState.LeaderError) <  Geom.Center2WheelDist ) && ( IgnoreSwitch == 0 ) )
                    {// If passed significantly the switch, and near eough the targt, arm the switch catchers, both wheels
                        SysState.PoleRun.TargetArmDone  = 1 ;
                        ArmLimitSw(&SysState.CanAxis[Leader] , 1  ) ;

                        if ( SysState.ManRouteState.bTargetWidthMismatch )
                        { // Only required to find leader switch
                            SysState.PoleRun.TargetArmRequirement = 3 ;
                            ArmLimitSw(&SysState.CanAxis[Follower] , 0 )  ;
                        }
                        else
                        {
                            // Find leader and follower switches
                            SysState.PoleRun.TargetArmRequirement = 7 ;
                            ArmLimitSw(&SysState.CanAxis[Follower] ,  1  ) ;
                        }
                    }
                }
                else
                {
                    CorrectVerticalTargetBySwitch(Leader, Follower,SysState.ManRouteState.GoDirection);
                }

                // Recalculate error - speed desired value, and limit. This routine may also change the submode
                SpeedLim = __fmin( CalcPoleTravelArrival(Leader ,  Follower , IgnoreSwitch , &DesiredSpeed ) , SpeedLim ) ;
//#ifndef WTF
                if ( SysState.ManRouteState.ArcDistance[Follower] < 1.0f + ArcCorrect )
                {
                    SpeedLim = __fmin(SpeedLim , AutomaticRunPars.ArcSpeed) ;
                }
//#endif
                DetectFallByShoulderRollChange();
            }


            if ( ManRouteCmd.ShelfSubMode != E_ShelfArc_SubMode_PoleCruise )
            { // Changed mode, check follower switch detection
                // Assure exiting arc before making a stop
                if (SysState.ManRouteState.SwCounter[Follower] != 2)
                { // Final approach while switches not yet detected
                    LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_follower_cant_find_exit_modesw);
                    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbError ;
                    break ;
                }// Climb control gone awry
            }
            break;

        case     E_ShelfArc_SubMode_WaitStam:
            StopWheels();
            return 0 ;

        case E_ShelfArc_SubMode_TrackWidthAdjust:

            PoleTrackWidthAdjust(dT) ;
            // Just for debug
            // RecordWheelArmVars() ;

            if ( SysState.TrackWidthCtl.bActive == 0 )
            { // Done with state machine
                if ( ManRouteCmd.ShelfSubSubMode == E_SubMode_TrackWidthAdjust_Done)
                { // All done correctly
#ifdef  WARM_PROG_STOP_USER
                    SetUserWait( 112, 2) ;
#endif
                    ManRouteCmd.ShelfSubMode = SysState.TrackWidthCtl.NextMode ; // E_ShelfArc_SubMode_ShoulderAdjust; // All the encounters made, we are completely on pole!
                    ManRouteCmd.ShelfSubSubMode = 0 ;
                }
                else
                {
                    if ( ManRouteCmd.ShelfSubSubMode != E_SubMode_TrackWidthAdjust_Failure )
                    { // Should be failed by now
                        PoleTrackWidthAdjustFailure( exp_wheelarm_action_failed ) ;
                    }
                }
            }
            // Wheel arm adjustment has its own wheel speed control so we are done here
            return 0 ;

        case E_ShelfArc_SubMode_PreInterPoleCruise      : // Intermediate pole travel
            // Log fictitious encoder capture at the switch (which is still registered at the height of Ls2Pos)
            delta = (long) (  (SysState.ManRouteState.ArcDistance[Follower] - Ls2Pos) * Geom.Calc.Meter2WheelEncoderShelfVert ) ;
            SysState.ManRouteState.DinCapture[Follower] = SysState.ManRouteState.WheelEncoderNow[Follower] - delta ;

            SysState.ManRouteState.DeltaM = SysState.ManRouteState.ArcDistance[Leader] - Ls2Pos;
            delta = (long) ( SysState.ManRouteState.DeltaM  * Geom.Calc.Meter2WheelEncoderShelfVert ) ;
            SysState.ManRouteState.DinCapture[Leader] = SysState.ManRouteState.WheelEncoderNow[Leader] - delta ;

            SysState.ManRouteState.SwCounter[Leader] = 2 ; // Both switches encountered
            SysState.ManRouteState.SwCounter[Follower] = 2 ;

            SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto;


            // Unarm any existing switch catch
            ArmLimitSw(&SysState.CanAxis[LOGICAL_LW], 0  ) ;
            ArmLimitSw(&SysState.CanAxis[LOGICAL_RW], 0 ) ;
            SysState.PoleRun.TargetArmDone = 0 ;

            // Calculate the targets
            // Follower arc distance target (final target, if extension is required to be used only after extension)
            starget = (ManRouteCmd.ShelfRunPars.CenterProjHeight- Geom.Center2WheelDist) + ArcCorrect ;

            // Add target distance to follower
            SysState.ManRouteState.WheelEncoderTarget[Follower] = SysState.ManRouteState.WheelEncoderNow[Follower] +
                    (long) ( (starget-SysState.ManRouteState.ArcDistance[Follower]) * Geom.Calc.Meter2WheelEncoderShelfVert) ;

            // Leader arc distance target
            starget += GetTargetWidth(ManRouteCmd.ShelfWidthTarget)  ;
            SysState.ManRouteState.LeaderError = starget - SysState.ManRouteState.ArcDistance[Leader] ;

            // Add target distance to leader
            SysState.ManRouteState.WheelEncoderTarget[Leader] = SysState.ManRouteState.WheelEncoderNow[Leader] +
                    (long) ( SysState.ManRouteState.LeaderError * Geom.Calc.Meter2WheelEncoderShelfVert) ;

            SpeedLim = 0 ;
            DesiredSpeed = 0 ;

            // Log the direction
            if ( SysState.ManRouteState.LeaderError >= 0 )
            {
                SysState.ManRouteState.GoDirection = 1 ;
            }
            else
            {
                SysState.ManRouteState.GoDirection = -1;
            }
            SysState.ManRouteState.InterPoleTravel = 1 ;
            ManRouteCmd.ShelfRunPars.ArcSpeed = AutomaticRunPars.PoleSpeed * SysState.ManRouteState.GoDirection ;

            ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_InterPoleCruise ;
            break ;

        case E_ShelfArc_SubMode_InterPoleCruise      : // Intermediate pole travel

            delta   = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];

            SysState.ManRouteState.DeltaM = delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            SysState.ManRouteState.ArcDistance[Leader] = Ls2Pos + SysState.ManRouteState.DeltaM;

            // Distance remaining to go till shelf
            SysState.ManRouteState.LeaderError = (SysState.ManRouteState.WheelEncoderTarget[Leader] - SysState.ManRouteState.WheelEncoderNow[Leader]) * Geom.Calc.WheelEncoder2MeterShelfVert;// / Geom.Calc.Meter2WheelEncoderShelf;

            IgnoreSwitch = ( ManRouteCmd.JunctionMode == EJM_JunctionIgnoreSwitch )  ? 1 : 0 ;

            // Follower arc distance: Already found the arc exit at the follower wheel
            deltaf = SysState.ManRouteState.WheelEncoderNow[Follower] - SysState.ManRouteState.DinCapture[Follower];
            deltaf_m = deltaf * Geom.Calc.WheelEncoder2MeterShelfVert ;
            SysState.ManRouteState.ArcDistance[Follower] = Ls2Pos + deltaf_m ;

            if ( SysState.PoleRun.TargetArmDone == 0)
            {
                if ( (deltaf_m > 0.02f) && (SysState.ManRouteState.LeaderError * SysState.ManRouteState.GoDirection  < Geom.Center2WheelDist ) && ( IgnoreSwitch == 0 ))
                {// If passed significantly the switch, and near eough the targt, arm the switch catchers, both wheels
                    SysState.PoleRun.TargetArmDone  = 1 ;
                    ArmLimitSw(&SysState.CanAxis[Leader], SysState.ManRouteState.GoDirection ) ;
                    if ( SysState.ManRouteState.bTargetWidthMismatch )
                    { // Going to retract; only leader arms to find target
                        SysState.PoleRun.TargetArmRequirement = 3 ;
                        ArmLimitSw(&SysState.CanAxis[Follower], 0  ) ;
                    }
                    else
                    {
                        SysState.PoleRun.TargetArmRequirement = 7 ;
                        ArmLimitSw( &SysState.CanAxis[Follower],  SysState.ManRouteState.GoDirection ) ;
                    }
                }
            }
            else
            {
                CorrectVerticalTargetBySwitch(Leader, Follower,SysState.ManRouteState.GoDirection);
            }

            // Calculate new speed limits, this can also lead to a mode change
            SpeedLim = CalcPoleTravelArrival(Leader ,  Follower , IgnoreSwitch ,&DesiredSpeed ) ;

            DetectFallByShoulderRollChange();
            break;

        case E_ShelfArc_SubMode_ShoulderAdjust  : // Final approach of leading wheel
        case E_ShelfArc_SubMode_ClimbDone:
            // Possibly till here switches did not register so give it more try...
            CorrectVerticalTargetBySwitch(Leader, Follower,SysState.ManRouteState.GoDirection);


            delta  = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];
            SysState.ManRouteState.ArcDistance[Leader] = Ls2Pos + delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            deltaf = SysState.ManRouteState.WheelEncoderNow[Follower] - SysState.ManRouteState.DinCapture[Follower];
            SysState.ManRouteState.ArcDistance[Follower] = Ls2Pos + deltaf * Geom.Calc.WheelEncoder2MeterShelfVert;

            SysState.ManRouteState.DeltaM = delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            SysState.ManRouteState.errPos[Leader]   = (SysState.ManRouteState.WheelEncoderTarget[Leader] - SysState.ManRouteState.WheelEncoderNow[Leader]);
            SysState.ManRouteState.errPos[Follower] = (SysState.ManRouteState.WheelEncoderTarget[Follower] - SysState.ManRouteState.WheelEncoderNow[Follower]);

            SysState.ManRouteState.LeaderError = SysState.ManRouteState.errPos[Leader] * Geom.Calc.WheelEncoder2MeterShelfVert ;// / Geom.Calc.Meter2WheelEncoderShelf;
            SpeedLim = sqrtf( 2.0f * ManRouteCmd.LineAcc * (float) fabs(  SysState.ManRouteState.LeaderError ) )  ;

            if ( SysState.ManRouteState.LeaderError * SysState.ManRouteState.GoDirection  < -0.05f )
            { // Climb control gone awry
                SpeedLim = 0 ;
                LogException( OWN_EXP_ID , EXP_WARN  , exp_error_negative_must_be_wrong_setup );
                ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbError ;
                break ;
            }

            if (ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_ShoulderAdjust)
            {
                // TargetDetect: 0 none, 1: leader detected , 2: follower detected, 3: both detected
                TargetDetect = ( SysState.PoleRun.TargetArmDone & 1 ) ?  (( SysState.PoleRun.TargetArmDone & 7) >> 1 ) : 0  ;

                if ( TargetDetect & 1 )
                {  // At least leader switch is found
                   // Ask if follower at least started detection ....
                   if ( ( TargetDetect == 1) && ( pSw[Follower]->PresentValue == 0 ))
                   { // Follower never started detection ... both wheels still go by the leader
                        PosControlFlag = 2;
                   }
                   else
                   {
                       if ( TargetDetect == 1 )
                       { // Must establish a false target

                           //  Predicted junction position by switch-start-only detection
                           SysState.ManRouteState.WheelEncoderTargetCand[Follower] = SysState.ManRouteState.WheelEncoderNow[Follower]  + //   pSw[Follower]->CaptEncoderH +
                              SysState.ManRouteState.GoDirection * (long) ( (Geom.LimitSwitchDistFromJuncPole+
                                      __fmax(Geom.LimitSwWidth * 0.5f - SysState.CanAxis[Follower].BH.LimitSw.DistIntoWidth*SysState.ManRouteState.GoDirection, 0) ) * Geom.Calc.Meter2WheelEncoderShelfVert) ;

                           //SysState.ManRouteState.WheelEncoderTargetCand[Follower] = pSw[Follower]->CaptEncoderH +
                           //   SysState.ManRouteState.GoDirection * (long) (0.5f / Geom.InvLimitSwWidthWhEncoderJunc +  Geom.LimitSwitchDistFromJuncPole * Geom.Calc.Meter2WheelEncoderShelf) ;

                           if (IsSwCorrectionAcceptable( (long) ( Geom.Calc.Meter2WheelEncoderShelfVert * 0.05f)  , Leader ) == 0 )
                           {
                               LogException(OWN_EXP_ID, EXP_WARN, exp_switch_corrects_follower_target_too_much);
                               PosControlFlag = 2; // Stray detection
                           }
                           else
                           {
                               SysState.ManRouteState.errPos[Leader]
                                         = (SysState.ManRouteState.WheelEncoderTargetCand[Leader] - SysState.ManRouteState.WheelEncoderNow[Leader]);
                               SysState.ManRouteState.errPos[Follower]
                                         = (SysState.ManRouteState.WheelEncoderTargetCand[Follower] - SysState.ManRouteState.WheelEncoderNow[Follower]);
                               PosControlFlag = 1; // Follower will do position control on the candidate
                           }
                       }
                       else
                       {
                           // All position targets are well defined
                           PosControlFlag = 1;
                       }
                   }
                }
                else
                {  // Leader only position control: if position is not detected
                    PosControlFlag = 2;
                }

                // Allow pre-defined time for adjustment
                if (IsSysTimerElapse(TIMER_STABILIZE_FOR_TWIST, &SysTimerStr))
                {
                    if (TargetDetect != 3)
                    {
                        LogException(OWN_EXP_ID, EXP_WARN, exp_pole_travel_never_reached_target);
                    }

                    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbDone; // Enough time stabilized
                    SetUserWait( 115,2) ;
                }
            } // end if ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_ShoulderAdjust
            else
            { // Climb done
                PosControlFlag = 0 ;
                SpeedLim = 0 ;
                DesiredSpeed = 0 ;
                SysState.ManRouteState.LineSpeed = 0 ;
            }
            break;

        case E_ShelfArc_SubMode_ClimbError:
            DesiredSpeed = 0;
            SpeedLim = 0 ;
            break ;

        // Un-climb cases
        case E_ShelfArc_SubMode_UnclimbWaitSwitch:

            if  ( SysState.TrackWidthCtl.WheelArmState != E_GroundGood2Go )
            {
                InitTrackWidthAdjust(E_ShelfArc_SubMode_UnclimbWaitSwitch,E_TrackWidthRetract,(enum E_LogicalAxe ) Leader) ;
                SpeedLim = 0;
                break ;
            }


            // Wait follower meeting the top switch
            ClimbDirection = -1;

            // Dead reconing the arc position by wheel encoder
            SysState.ManRouteState.ArcDistance[LOGICAL_RW] = SysState.PoleRun.ArcDistanceOnModeStart[LOGICAL_RW] +
                (SysState.ManRouteState.WheelEncoderNow[LOGICAL_RW] - SysState.PoleRun.EncOnModeStart[LOGICAL_RW]) * Geom.Calc.WheelEncoder2MeterShelfVert;
            SysState.ManRouteState.ArcDistance[LOGICAL_LW] = SysState.PoleRun.ArcDistanceOnModeStart[LOGICAL_LW] +
                (SysState.ManRouteState.WheelEncoderNow[LOGICAL_LW] - SysState.PoleRun.EncOnModeStart[LOGICAL_LW]) * Geom.Calc.WheelEncoder2MeterShelfVert;

            if ( SysState.ManRouteState.ArcDistance[Follower] < ( Ls2Pos + Geom.Center2WheelDist * 0.5f + ControlPars.DownTolForArcSwitchLoc ) )
            {  // Anticipating the follower to reach the switch ....
                if ( (SysState.PoleRun.TargetArmDone &4) == 0  )
                {
                    ArmLimitSw( &SysState.CanAxis[Follower],-1) ;
                    SysState.PoleRun.TargetArmDone |= 4 ;
                }
            }
            else
            {
                SysState.CanAxis[Follower].InductiveSensor = 0 ;
            }

            if (SysState.PoleRun.TargetArmDone & 4)
            {
                // Test meeting the first switch on time
                if ( SysState.ManRouteState.ArcDistance[Follower] < (Ls2Pos - ControlPars.DownTolForArcSwitchLoc) )
                {
                    LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_pole_down_arc_follower_sw_not_found);
                }

                if ( SysState.CanAxis[Follower].InductiveSensor)
                {// Follower inductive switch is met first
                    SysState.Mot.NeckControl.NeckMode = E_NeckModeStabilize; // Set neck to stabilized mode before arc entry
                    SysState.ManRouteState.DinCapture[Follower] = SysState.CanAxis[Follower].EncOnInductiveSensor;
                    deltaf = SysState.ManRouteState.WheelEncoderNow[Follower] - SysState.ManRouteState.DinCapture[Follower];

                    ArcDistanceCand = Ls2Pos + deltaf * Geom.Calc.WheelEncoder2MeterShelfVert;

                    if ((float)fabs(ArcDistanceCand - SysState.ManRouteState.ArcDistance[Follower]) > ControlPars.DownTolForArcSwitchLoc)
                    {
                        LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_pole_down_arc_follower_sw_toobig_correction);
                    }
                    ArcDistanceCand = Ls2PosDn + deltaf * Geom.Calc.WheelEncoder2MeterShelfVert;


                    SysState.ManRouteState.ArcDistance[Follower] = ArcDistanceCand;
                    // Create virtual switch for the leader wheel
                    // Add neck contraction correction Delta_dist = d0 * delta(angle) / (2*sqrt(3))
                    SysState.ManRouteState.ArcDistance[Leader] = SysState.ManRouteState.ArcDistance[Follower]
                        + 2 * Geom.Center2WheelDist ; // * (1.0f + SysState.NeckDiff *  0.288675134594813f );
                    SysState.ManRouteState.DinCapture[Leader] = SysState.ManRouteState.WheelEncoderNow[Leader] +
                        (long) ( (Ls2PosDn- SysState.ManRouteState.ArcDistance[Leader] ) * Geom.Calc.Meter2WheelEncoderShelfVert) ;

                    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_UnclimbWaitSwitch2 ; //

                    SysState.ManRouteState.SwCounter[Follower] = 1 ;
                }
            }

            if ( SysState.Mot.mode == E_SysMotionModeAutomatic)
            {
                DesiredSpeed = -AutomaticRunPars.PoleSpeed;
            }
            else
            {
                DesiredSpeed = ManRouteCmd.ShelfRunPars.ArcSpeed;
            }

            DetectFallByShoulderRollChange();
            break;

        case E_ShelfArc_SubMode_UnclimbWaitSwitch2:
            LManipLockRequest = 1 ;

            // Wait leader meet the top switch
            ClimbDirection = -1;

            if (SysState.ManRouteState.ArcDistance[Leader] < (Ls2PosDn + Geom.Center2WheelDist) )
            {
                if  ( (SysState.PoleRun.TargetArmDone &2) == 0 )
                {
                    ArmLimitSw(&SysState.CanAxis[Leader],-1 ) ;
                    SysState.PoleRun.TargetArmDone |= 2 ;
                }
            }
            else
            {
                SysState.CanAxis[Leader].InductiveSensor = 0 ;
            }


            // Get leader position
            delta  = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];
            SysState.ManRouteState.ArcDistance[Leader] = Ls2PosDn + delta * Geom.Calc.WheelEncoder2MeterShelfVert;

            // Get follower position
            SysState.ManRouteState.ArcDistance[Follower] =
                            GetFollowerByLeader(SysState.ManRouteState.ArcDistance[Leader], &ClimbZone , & armFollower );

            // Capture 2nd switch for leader, to increase its accuracy
            if ((SysState.PoleRun.TargetArmDone & 2) && SysState.CanAxis[Leader].InductiveSensor )
            { // When the leader is back to the switch, we are nearly done, the follower wheel now leaves the toothed
              // pole and begins to travel ground
                ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_UnclimbFinalApproach ; //
                SysState.ManRouteState.DinCapture[Leader] = SysState.CanAxis[Leader].EncOnInductiveSensor ; //SysState.ManRouteState.WheelEncoderNow[Leader] ;
                delta = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];
                ArcDistanceCand = Ls2PosDn + delta * Geom.Calc.WheelEncoder2MeterShelfVert;
                if ((float)fabs(ArcDistanceCand - SysState.ManRouteState.ArcDistance[Leader]) > 0.085f )
                {
                    LogException(OWN_EXP_ID, EXP_ABORT, exp_pole_down_arc_leader_sw_toobig_correction);
                }

                SysState.ManRouteState.ArcDistance[Leader] = ArcDistanceCand;
                SysState.ManRouteState.SwCounter[Leader] = 1 ;
            }

            // Protect from leader sensor not encountered on time
            if ( (SysState.ManRouteState.SwCounter[Leader]==0) && ( SysState.ManRouteState.ArcDistance[Leader] < (Ls2PosDn-0.12f) ) )
            {
                // Only a warning, since we have an estimate of the leader anyway
                LogException(OWN_EXP_ID, EXP_WARN, exp_cant_find_leader_sw_unclimb);
                ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbError ;
            }


            if ( SysState.Mot.mode == E_SysMotionModeAutomatic)
            {
                DesiredSpeed = -AutomaticRunPars.ArcSpeed;
            }
            else
            {
                DesiredSpeed = ManRouteCmd.ShelfRunPars.ArcSpeed;
            }
            break;

        case E_ShelfArc_SubMode_UnclimbFinalApproach:
            LManipLockRequest = 1 ;
            // All switches are met, now wait till passing the arc region, then halt
            ClimbDirection = -1;
            //deltaf = SysState.ManRouteState.WheelEncoderNow[Follower] - SysState.ManRouteState.DinCapture[Follower];
            //SysState.ManRouteState.ArcDistance[Follower] = Ls2PosDn + deltaf * Geom.Calc.WheelEncoder2MeterShelf;
            deltaf = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];
            SysState.ManRouteState.ArcDistance[Leader] = Ls2PosDn + deltaf * Geom.Calc.WheelEncoder2MeterShelfVert;

            SysState.ManRouteState.DeltaM = -SysState.ManRouteState.ArcDistance[Leader];

            if ( SysState.ManRouteState.ArcDistance[Leader] <  -Geom.StopAfterLeaderEncountersSwM )
            {
                SpeedLim = 0 ;
                if ( fabs(SysState.ManRouteState.LineSpeed) <= 1e-3 )
                {
                    if (SysState.CBit.bit.OnRescueMission )
                    {
                        ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_RescueDone ;
                        ManRouteCmd.CrabCrawl = 0 ;
                        SysState.ManRouteState.NewCrabFlag  = 1 ;
                    }
                    else
                    {
                        SetSysTimerTargetSec( TIMER_STABILIZE_FOR_TWIST , 0.6f , &SysTimerStr) ; // Sept 2019
                        ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_UnclimbFinalWait ;
                    }
                }
            }

            // The follower is down , we calculate the follower by leader position
            SysState.ManRouteState.ArcDistance[Follower] =
                    GetFollowerByLeader(SysState.ManRouteState.ArcDistance[Leader], &ClimbZone , & armFollower );

            DesiredSpeed = -AutomaticRunPars.ArcSpeed;


            break ;
        case E_ShelfArc_SubMode_RescueDone:

            //ManRouteCmd.CrabCrawl = 0 ;
            ClimbDirection = -1;
            DesiredSpeed = 0;
            SpeedLim = 0 ;
            SetCanAxisPosTarget ( &SysState.CanAxis[LOGICAL_NECK],0)  ;
            SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd;

            // Shut lights
            pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
            pPdCmd2->ChakalakaOn = 0 ;
            pPdCmd2->FrontCamLightOn = 0 ;
            pPdCmd2->RearCamLightOn = 0 ;


            break ;

        case E_ShelfArc_SubMode_UnclimbFinalWait:

            LManipLockRequest = 1 ;

            ClimbDirection = -1;
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK], 0 );
            SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd;

            deltaf = SysState.ManRouteState.WheelEncoderNow[Leader] - SysState.ManRouteState.DinCapture[Leader];
            SysState.ManRouteState.ArcDistance[Leader] = Ls2PosDn + deltaf * Geom.Calc.WheelEncoder2MeterShelfVert;

            // The follower is down , we calculate the follower by leader position
            SysState.ManRouteState.ArcDistance[Follower] =
                    GetFollowerByLeader(SysState.ManRouteState.ArcDistance[Leader], &ClimbZone , & armFollower );

            SysState.ManRouteState.DeltaM = -SysState.ManRouteState.ArcDistance[Leader];
            DesiredSpeed = 0;
            SpeedLim = 0 ;
            break;
        }

        ManRouteCmd.ManipLockRequest = LManipLockRequest ;

#define POS_TOL_TO_TWIST_M 0.004f
       if ( PosControlFlag )
        {
            SysState.TorqueCorrection = 0 ;
            // WTF SysState.ManRouteState.ArcTilt = 0;
            // Position mode is always applied when the robot body is vertical
            SysState.ManRouteState.ArcTilt =  PiHalf * ManRouteCmd.CrabCrawl  ;
            SysState.ManRouteState.dArcTilt = 0 ;
            SysState.ManRouteState.LineSpeed = 0 ;


            // Tolerances and parameters
            postol = POS_TOL_TO_TWIST_M ;
            UpSpeedSat = (float) fabs( ManRouteCmd.ShelfRunPars.ArcSpeed ) ;
            a = AutomaticRunPars.PoleLineAcc * 0.3f ;

            eNext = SysState.ManRouteState.errPos[Leader] * Geom.Calc.WheelEncoder2MeterShelfVert; // In meters
            maxerr = fabsf(eNext);

            if ( eNext > 0 )
            {
                SpeedCmdMsec = __fmin(__fmax(ControlPars.WheelPosOnPoleGain * eNext,0.02f), UpSpeedSat)  ;
            }
            else
            {
                DnSpeedSat   =  -__fmin( -(a * t0) + sqrtf(a * a * t0 * t0 - 2 * eNext * a), UpSpeedSat )  ;
                SpeedCmdMsec =   __fmax(ControlPars.WheelPosOnPoleGain * eNext, DnSpeedSat)  ;
            }
            SetWheelSpeedCmd( pLeader , SpeedCmdMsec , Geom.Calc.Meter2WheelEncoderShelfVert * Geom.Calc.WheelEncoder2MotEncoder );


            if (PosControlFlag == 2  )
            {
                // This is position control with motor torque balancing
                TorqueCorrection =
                        (SysState.CanAxis[Leader].BH.Torque - SysState.CanAxis[Follower].BH.Torque ) *  ControlPars.TorqueGainPole *
                        (SpeedCmdMsec >=0 ? 1 : -1 ) ;
                TorqueCorrection = __fmax( __fmin(TorqueCorrection,-0.7f),3.0f) ;
                SetWheelSpeedCmd( pFollower , SpeedCmdMsec*(1.0f+TorqueCorrection) , Geom.Calc.Meter2MotEncoderShelf );
//                SetWheelSpeedCmd( pFollower , SpeedCmdMsec*(1.0f+(SysState.NeckDiff - ControlPars.NeckDiffSetPoint) * ControlPars.NeckStretchGain) ,
//                                  Geom.Calc.Meter2WheelEncoderShelfVert * Geom.Calc.WheelEncoder2MotEncoder );

       //SysState.CanAxis[Follower].DFT.SpeedCmd = SysState.CanAxis[Leader].DFT.SpeedCmd + (long) ( labs(SysState.CanAxis[Leader].DFT.SpeedCmd) *
                //          (SysState.NeckDiff - ControlPars.NeckDiffSetPoint) * ControlPars.NeckStretchGain );
//                postol = ( POS_TOL_TO_TWIST_M * 1.0f)  ;
            }
            else
            {
                eNext = SysState.ManRouteState.errPos[Follower] * Geom.Calc.WheelEncoder2MeterShelfVert; // In meters
                maxerr = __fmax(maxerr, fabsf(eNext));
                if ( eNext > 0 )
                {
                    SpeedCmdMsec = __fmin(__fmax(ControlPars.WheelPosOnPoleGain * eNext,0.02f), UpSpeedSat)  ;
                }
                else
                {
                    DnSpeedSat   =  -__fmin( -(a * t0) + sqrtf(a * a * t0 * t0 - 2 * eNext * a), UpSpeedSat )  ;
                    SpeedCmdMsec =   __fmax(ControlPars.WheelPosOnPoleGain * eNext, DnSpeedSat)  ;
                }
                SetWheelSpeedCmd( pFollower , SpeedCmdMsec , Geom.Calc.Meter2WheelEncoderShelfVert * Geom.Calc.WheelEncoder2MotEncoder);

                //SysState.CanAxis[Follower].DFT.SpeedCmd = (long) ( fSat(ControlPars.WheelPosOnPoleGain * SysState.ManRouteState.errPos[Follower], SpeedSat)  * Geom.Calc.WheelEncoder2MotEncoder  ) ;
                //maxerr = __fmax( maxerr , (float)fabs(SysState.ManRouteState.errPos[Follower]) ) ;
            }

            // Detect convergence
            if ( maxerr > postol )
            {
                SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 1.25f, &SysTimerStr);
            }
            else
            {
                LimitSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 1.25f, &SysTimerStr);
            }
        } // end PosControlFlag
        else
        { // In speed, anti shiver mode
            if ( SysState.Mot.bPauseFlag + SysState.Debug.bWaitUser )
            {
                SpeedLim = 0 ;
            }

            // Accelerate if possible
            StepTowards( & SysState.ManRouteState.LineSpeed , fSat(DesiredSpeed, SpeedLim ) , ManRouteCmd.LineAcc * dT  );
            //SysState.ManRouteState.ClimbDir = ManRouteCmd.ShelfRunPars.ArcSpeed > 0 ? 1 : -1 ;

            R = Geom.ClimbArcRadi;
            // Default options
            bwv = 1.0f;  // Before applying correction, the speed ratio between the wheels is 1 (same speed)
            ShoulderCorrection = 1; // Default: load balancing
            followerscale = Geom.Calc.Meter2MotEncoderShelf;
            leaderscale   = Geom.Calc.Meter2MotEncoderShelf;

            zone = 7; // Undefined



            if ( SysState.ManRouteState.InterPoleTravel )
            {
                SysState.ManRouteState.ArcTilt = PiHalf  * ManRouteCmd.CrabCrawl ;
                ClimbDirection = SysState.ManRouteState.GoDirection ;
            }
            else
            {
                // Default setting: On un-climb start, we are vertical, otherwise default is zero
                if (ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_UnclimbWaitSwitch)
                {
                    SysState.ManRouteState.ArcTilt = PiHalf  * ManRouteCmd.CrabCrawl;
                }
                else
                {
                    SysState.ManRouteState.ArcTilt = 0;
                }
            }

            if ((SysState.Mot.mode == E_SysMotionModeAutomatic) || (ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_UnclimbFinalApproach)
                || (ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_UnclimbWaitSwitch2))
            {
                switch (ClimbDirection )
                {
                case 1: // Climbing
                    if (ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_Wait_gyro_rail_detection )
                    { // If no switch yet encountered, we don't know where we are, just go up with no correction
                        bwv = ControlPars.InitClimbFollowerOverLeader  ;
                        zone = 0;
                        // Motion starts with the leader stopped, so it will bend down for terminal devouring
                        if  ( IsSysTimerElapse(TIMER_STOPPY_GEN, &SysTimerStr) )
                        {
                            leaderscale = Geom.Calc.Meter2MotEncoderGnd;
                        }
                        else
                        {
                            leaderscale = 0 ;
                        }
                        SysState.ManRouteState.dArcTilt = 0 ;
                        followerscale = Geom.Calc.Meter2MotEncoderGnd   ;
                        ShoulderCorrection = 0;
                    }
                    else
                    {
                        bwv = GetWheelVelocityRatio(SysState.ManRouteState.ArcDistance[Leader], &zone , & SysState.ManRouteState.ArcTilt , &SysState.ManRouteState.dArcTilt);
                        SysState.ManRouteState.ArcTilt  = SysState.ManRouteState.ArcTilt * ManRouteCmd.CrabCrawl;
                        SysState.ManRouteState.dArcTilt = SysState.ManRouteState.dArcTilt * ManRouteCmd.CrabCrawl * SysState.ManRouteState.LeaderSpeedWhCntSec * Geom.Calc.WheelEncoder2MeterShelfVert ;

                        if ( ManRouteCmd.ShelfSubMode <= E_ShelfArc_SubMode_PoleCruise )
                        { // Do not start load corrections until engaged
                            if ( SysState.ManRouteState.ArcDistance[Follower] <  (-ControlPars.FollowerStoppyBeforeArcDistance) )
                            {  // Lower than -0.24: Follower completely on ground, push
                                followerscale = Geom.Calc.Meter2MotEncoderGnd * 1.2   ;
                                ShoulderCorrection = 0 ;
                            }
                            else if ( SysState.ManRouteState.ArcDistance[Follower] < -0.162f )
                            { // Till -0.17: Stopy for climb
                                followerscale = Geom.Calc.Meter2MotEncoderGnd * 0.5f  ;
                                ShoulderCorrection = 0 ;
                            }
                            else if ( SysState.ManRouteState.ArcDistance[Follower] < -0.07f )
                            { // Till -0.07: Passage from ground to shelf, do shoulder correction, still ground speed
                                followerscale = Geom.Calc.Meter2MotEncoderShelf  ;
                            }
                        }
                    }


                    // Shoulder correction stops and follower goes to ground scale when leader is on the arc

                    break;
                case -1:


                    if ( ( ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_UnclimbWaitSwitch) || SysState.ManRouteState.InterPoleTravel)
                    { // If no switch yet encountered, we don't know where we are, just go down with no correction
                        bwv = 1; zone = 0;
                        SysState.ManRouteState.dArcTilt = 0 ;
                    }
                    else
                    {
                        bwv = GetWheelVelocityRatio(R * 1.570796326794897f - SysState.ManRouteState.ArcDistance[Follower], &zone, &SysState.ManRouteState.ArcTilt , & SysState.ManRouteState.dArcTilt);
                        SysState.ManRouteState.ArcTilt = (1.570796326794897f - SysState.ManRouteState.ArcTilt) * ManRouteCmd.CrabCrawl;
                        SysState.ManRouteState.dArcTilt = 0 ; // SysState.ManRouteState.dArcTilt * ManRouteCmd.CrabCrawl  * SysState.ManRouteState.FollowerSpeed; // * LeaderSpeed ;
                    }

                    bwv = 1.0f / bwv;

                    // Shoulder correction stops and follower goes to ground scale when leader is on the arc
                    if ( SysState.ManRouteState.ArcDistance[Follower] < -0.20f ) //
                    {
                        followerscale = Geom.Calc.Meter2MotEncoderGnd   ;
                        ShoulderCorrection = 0;
                    }
                    else
                    {
                        ShoulderCorrection = 1;
                    }

                    // Both on ground, leader also gets ground scale
                    if ( SysState.ManRouteState.ArcDistance[Leader] < -0.15f )
                    {
                        leaderscale = Geom.Calc.Meter2MotEncoderGnd;
                    }
                    break;
                }
            }
            else
            {
                SysState.ManRouteState.dArcTilt = 0 ;
            }


            //if ( bwv > 3.0f ) bwv = 3.0f ;
            //if ( bwv < 0.3f ) bwv = 0.3f ;
            bwv = __fmax( __fmin( bwv, 3.0f) , 0.3f ) ;
            //bwv = 1 ; // Vandal

           //bwv = 1.0f; // Vandal
            //ShoulderCorrection = 1; // Vandal
            //followerscale = Geom.Calc.Meter2MotEncoderShelf; // Vandal
            //leaderscale   = Geom.Calc.Meter2MotEncoderShelf; // Vandal
            //zone = 7;  // Vandal
            // Records for debug
            ClimbLog.LeaderScale = leaderscale;
            ClimbLog.FollowerScale = followerscale;
            ClimbLog.SpeedRatio  = bwv;
            ClimbLog.ClimbStatus = ShoulderCorrection + ((ClimbDirection == 1) ? 4 : 0) + ((zone & 0xf) << 4);

            leaderRat   = __fmin( 1.0f , 1/sqrtf(bwv)) ;

            SetWheelSpeedCmd( pLeader , SysState.ManRouteState.LineSpeed *  leaderRat ,leaderscale );

            // SysState.CanAxis[Leader].DFT.SpeedCmd = (long)(SysState.ManRouteState.LineSpeed * leaderscale *  leaderRat)  ;
            //if ( SysState.CanAxis[Leader].DFT.SpeedCmd)
            //{
            followerRat = leaderRat * bwv ;//* __fmax( __fmin( SysState.ManRouteState.LeaderSpeedWhCntSec * Geom.Calc.WheelEncoder2MotEncoder/ SysState.CanAxis[Leader].DFT.SpeedCmd ,1.0)  , 0.0) ;
            //}
            //else
            //{
            //    followerRat = 0 ;
            //}

            if (ShoulderCorrection)
            {
                //TODO Don't understand that choice!!!
                //NeckGain = (SysState.Mot.NeckControl.NeckMode == E_NeckShelfAuto ) ? ControlPars.NeckStretchGainPole : ControlPars.NeckStretchGain ;
                //NeckGain =  NeckGain ;
                //NeckDiffSetPointAct = ( ClimbDirection > 0 ) ? ControlPars.NeckDiffSetPoint : ControlPars.NeckDiffSetPointDown;

                // The gain of the neck, about 10, was to create 0.5 ratio at about 0.05 radian, so this is equivalent to unbalance
                // of say 15Amp, thus the gain should be about 0.5/15 = 0.033
                TorqueCorrection = (SysState.CanAxis[Leader].BH.Torque - SysState.CanAxis[Follower].BH.Torque ) *  ControlPars.TorqueGainPole ;

                if ( SysState.ManRouteState.LineSpeed < 0 )
                {
                    //NeckDiffSetPointAct =  ControlPars.NeckDiffSetPoint  ;
                     // If the follower have higher torque than the leader, it should slow down
                //}
                //else
                //{
                    //NeckDiffSetPointAct =  ControlPars.NeckDiffSetPointDown;
                    //NeckGain = NeckGain * ControlPars.NeckGainReductionFacOnDown ;
                    TorqueCorrection *= ControlPars.NeckGainReductionFacOnDown ;
                    TorqueCorrection  = -TorqueCorrection ;
                }
                SysState.TorqueCorrection = __fmax( __fmin(TorqueCorrection ,  2.0f  ), -0.8f)  ;

                //SetWheelSpeedCmd( pFollower , SysState.ManRouteState.LineSpeed * followerRat * (1.0f + (ClimbDirection
                //                      * (SysState.NeckDiff - NeckDiffSetPointAct) * NeckGain) + SysState.TorqueCorrection ),followerscale);
                SetWheelSpeedCmd( pFollower , SysState.ManRouteState.LineSpeed * followerRat * (1.0f + SysState.TorqueCorrection ),followerscale);

            }
            else
            {
                SysState.TorqueCorrection = 0 ;
                SetWheelSpeedCmd( pFollower , SysState.ManRouteState.LineSpeed * followerRat , followerscale );
            }
        } // End speed control mode
        break;

    case E_TwistToShelf:

        // Wheels shall stop, steering action is managed by the crab state control out of this routine
        StopWheels() ;

        switch ( ManRouteCmd.ShelfSubMode )
        {
        case 0:
            // Capture wheel position on mode start
            SysState.ManRouteState.WheelEncoderCapture[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
            SysState.ManRouteState.WheelEncoderCapture[1] = SysState.ManRouteState.WheelEncoderNow[1] ;

            SysState.ShelfRun.JuncWheelEncoderCapture[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
            SysState.ShelfRun.JuncWheelEncoderCapture[1] = SysState.ManRouteState.WheelEncoderNow[1] ;

            SysState.ManRouteState.DifferenceDrive = 0 ;
            ManRouteCmd.ShelfSubMode = 1 ; //
            break ;
        case 1:

            // Check that wheels dont rotate - on the twist they should be completely stopped
            m1  = __fmax( (float)fabs( SysState.ManRouteState.WheelEncoderOnTwistStart[LOGICAL_RW] - GetRWheelEncoder() ) * Geom.Calc.WheelEncoder2MeterShelfVert ,
                (float)fabs( SysState.ManRouteState.WheelEncoderOnTwistStart[LOGICAL_LW] - GetLWheelEncoder() ) * Geom.Calc.WheelEncoder2MeterShelfVert ) ;
#ifdef DFT_AXES
            m2 = __fmax((float)fabs(MotorWheelDifference(SysState.ManRouteState.MotEncoderOnTwistStart[LOGICAL_RW],SysState.CanAxis[LOGICAL_RW].DFT.PositionAct))*Geom.Calc.MotEncoder2MeterShelf,
                (float)fabs(MotorWheelDifference(SysState.ManRouteState.MotEncoderOnTwistStart[LOGICAL_LW],SysState.CanAxis[LOGICAL_LW].DFT.PositionAct))*Geom.Calc.MotEncoder2MeterShelf) ;
            m1 = __fmax(m1,m2);
#endif

            if ( m1 > Constraint.MaxWheelDevInTwist  )
            {
                   LogException(OWN_EXP_ID,EXP_SAFE_FATAL,exp_big_deviation_in_twist_into) ;
            }

            break ;
        }
        break;

    case E_TwistFromShelf:
        // Nothing to do
        StopWheels() ;

        switch ( ManRouteCmd.ShelfSubMode )
        {
        case 0:
            // Capture wheel position on mode start
            SysState.ManRouteState.WheelEncoderCapture[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
            SysState.ManRouteState.WheelEncoderCapture[1] = SysState.ManRouteState.WheelEncoderNow[1] ;
            SysState.ManRouteState.DifferenceDrive = 0 ;
            ManRouteCmd.ShelfSubMode = 1 ; //
            break ;
        case 1:
            m1  = __fmax((float)fabs( SysState.ManRouteState.WheelEncoderOnTwistStart[LOGICAL_RW] - GetRWheelEncoder() ) * Geom.Calc.WheelEncoder2MeterShelfVert ,
                (float)fabs( SysState.ManRouteState.WheelEncoderOnTwistStart[LOGICAL_LW] - GetLWheelEncoder() ) * Geom.Calc.WheelEncoder2MeterShelfVert ) ;
#ifdef DFT_AXES
            m2 = __fmax((float)fabs(MotorWheelDifference(SysState.ManRouteState.MotEncoderOnTwistStart[LOGICAL_RW],SysState.CanAxis[LOGICAL_RW].DFT.PositionAct))*Geom.Calc.MotEncoder2MeterShelf,
                (float)fabs(MotorWheelDifference(SysState.ManRouteState.MotEncoderOnTwistStart[LOGICAL_LW],SysState.CanAxis[LOGICAL_LW].DFT.PositionAct))*Geom.Calc.MotEncoder2MeterShelf) ;
            m1 = __fmax(m1,m2);
#endif
            if (m1 > Constraint.MaxWheelDevInTwist  )
            {
                   LogException(OWN_EXP_ID,EXP_SAFE_FATAL,exp_big_deviation_in_twist_from) ;
            }
            break ;
        }
        break;

    case E_ShelfRun_Auto:
        RunAutoShelf(  Leader ,  Follower, dT ) ;
        break;

    case E_ShelfRun_Rescue:
        RunRescueShelf(  Leader ,  Follower, dT ) ;
        break;
    }


    return 0 ;
}

