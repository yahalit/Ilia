/*
 * MotionModes.c
 *
 *  Created on: May 4, 2024
 *      Author: yahali
 */
#include "StructDef.h"
short unsigned ManageMotorStart(void);
short ManShelf(float dT);
/*
 *
 * Set the motion mode and make the necessary book keeping
 */
void SetMotionMode(short  x, short unsigned y)
{
    short unsigned mask , cnt ;
    float NeckPos;

    if ( SysState.Debug.bManualBrakeControl )
    { //There is no return from the manual brake control mode
        x  = E_SysMotionModeMotorOff ;
    }

    //struct CCanAxis * pAxis ;
    if ( x != SysState.Mot.mode )
    { // On mode change , nothing can execute

        if ( SysState.Mot.mode == E_SysMotionModeHostSpeedControl)
        {
            SysState.Mot.BodyCmd.Dirty = 0 ; // Delete any previously given manual orders
            SysState.Mot.BodyCmd.Speed  = 0 ; // Shadows are used
            SysState.Mot.BodyCmd.Omega  = 0 ;
            KillDifferenceDrive()   ;
        }

        SysState.Mot.ExecutingQueue = 0 ;
        // if (SysState.Mot.mode >= E_SysMotionModeAutomaticIdle  )
        {
            SysState.Mot.MotLog2 = (SysState.Mot.MotLog2 & 0xffff) + ((long unsigned)((x&0xf)+ ((SysState.Mot.mode&0xf)<<4) + (((long unsigned)y & 63)<<8)) << 16)  ;
        }

        mask = BlockInts();

        // If transition to OFF modes, kill all the motors
        if ( x <= E_SysMotionModeMotorOff  )
        {
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
            {
                KillMotor(&SysState.CanAxis[cnt])  ; // Robot starts with its motors off
            }
        }
        else
        {
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
            {
                EnableMotor(&SysState.CanAxis[cnt])  ; // Robot starts with its motors off
            }
        }

        if ( x <= E_SysMotionModeManualTravel )
        {
            NeckPos = GetUserPosNeck() ; // SysState.CanAxis[LOGICAL_NECK].PositionAct * Geom.Calc.NeckEnc2Rad  ;
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK], NeckPos) ;
            SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd ;
        }

#ifdef DFT_AXES
        SysState.CanAxis[LOGICAL_RSTEER].DFT.PositionCmdQS        = SysState.CanAxis[LOGICAL_RSTEER].DFT.PositionAct ;
        SysState.CanAxis[LOGICAL_LSTEER].DFT.PositionCmdQS        = SysState.CanAxis[LOGICAL_LSTEER].DFT.PositionAct  ;
#endif
        if ( x != E_SysMotionModeTestPack )
        {
            SysState.Package.Mode = E_PackModeNone ;
        }

        if ( x == E_SysMotionModeHostFinePosition )
        {
            SysState.Mot.ModeBeforeFineMotion  = SysState.Mot.mode  ;
            SysState.Mot.ResetShelfBase = 1 ; // Shelf navigation need be reset after this mode
        }

        SysState.Mot.mode = x ;


        RestoreInts(mask) ;

        if ( (x == E_SysMotionModeAutomatic) && ( ImuStartMgr.Good  == 0 ))
        {
            LogException( OWN_EXP_ID , EXP_ABORT , exp_auto_motion_requires_gyro);
        }
    }
}

/*
 * If commanded to sleep, stop robot safely before sleeping
 */
inline void  StopTowardsSleep(void)
{
    float fac ;
   if ( SysState.Nav.WheelsStopped  )
   {
       SysState.SleepRequest |= 2 ;
   }

   StepTowards( &SysState.ManRouteState.LineSpeed , 0 , 1.0f * 8.192e-3f  );

   fac = WheelMeter2Mot()  ;
   SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_RW] , SysState.ManRouteState.LineSpeed , fac );
   SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_LW] , SysState.ManRouteState.LineSpeed , fac );
}

/*
 * \brief Reduce the absolute speed of the wheels towards zero
 */
short ManStopWheels(float dT )
{
    StepTowards( & SysState.ManRouteState.LineSpeed , 0 , ManRouteCmd.LineAcc * dT  );
    StepTowards( & SysState.ManRouteState.Curvature , 0 , ManRouteCmd.LineAcc * dT  );

    SetWheelGndSpeedCmd(SysState.ManRouteState.LineSpeed , SysState.ManRouteState.LineSpeed) ;
    return 0 ;
}


/*
 * Control the neck to a given position
 */
void  NeckPosControlBH(float target, float speedtarget)
{
    SysState.CanAxis[LOGICAL_NECK].BH.UserPosCmd = target ;
    SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd = speedtarget ;
    SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_NECK],E_PosModePTP) ;
    SysState.CanAxis[LOGICAL_NECK].BH.LoopClosureMode = E_LC_Dual_Pos_Mode ;
}

/*
 * Control the neck to a given position
 */
void  NeckGyroControlBH(float error, float speedtarget)
{
    SysState.CanAxis[LOGICAL_NECK].BH.UserExtPosError = error ;
    SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd = speedtarget ;
    //SysState.CanAxis[LOGICAL_NECK].BH.ReferenceMode = E_PosModePTP ;
    SysState.CanAxis[LOGICAL_NECK].BH.LoopClosureMode = E_LC_EXTDual_Pos_Mode ;
}


/*
 * Control the neck to a given position
 */
void  NeckControlBHPT(float target, float speedtarget)
{
    SysState.CanAxis[LOGICAL_NECK].BH.UserPosCmd = target ; ;
    SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd = speedtarget ;
    SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_NECK] ,E_PosModePTP) ;
    SysState.CanAxis[LOGICAL_NECK].BH.LoopClosureMode = E_LC_Dual_Pos_Mode ;
}



/*
 * Control the neck system
 */
inline void NeckControl(void)
{
    float  posTarget    ;
    float  speedTarget  ;
    short InPack;//, InPackDelayed ;
    short nMode   ;
    // Auto neck stabilization, if applicable
    if (SysState.Mot.mode >= E_SysMotionModePerAxis || ( SysState.Debug.ForceNeckControlByCore2 && (SysState.Mot.mode >= E_SysMotionModeStay) ) )
    {
        //NeckPos = GetUserPosNeck() ;
        InPack = IsInPack() ;
        /*
        if ( InPack )
        { // Keep the in pack indication one second more, to slow down neck action
            //InPackDelayed = 1 ;
            SetSysTimerTargetSec (TIMER_IN_PACK_EXIT, 1.8f, &SysTimerStr ) ;
        }
        else
        {
            InPackDelayed = ( IsSysTimerElapse( TIMER_IN_PACK_EXIT  ,&SysTimerStr ) ? 0 : 1 ) ;
        }
         */

        nMode = SysState.Mot.NeckControl.NeckMode;

        // Get addRoll : Roll addition for adjusting the package to the shelf on put/get actions
        if  ( ( InPack  || SysState.Debug.ForceNeckControlByCore2) && M2S.Items.ActCmd.cmd.bGrantNeckControl)
        {
/*
            SysState.AddRoll = fSat(SysState.Package.IncidenceAngle, Geom.MaxIncidence4Package ) *
                    ((SysState.Package.Side == PICKDIR_RIGHT) ? 1 : -1) *
                     ( SysState.Package.Get ? 1 : -1 ) - SysState.Package.ImuRoll ;
*/
            nMode = E_RemoteControlCore2 ;
        }

        // compensation for wheel arm asymmetry
        // If robot opened wheel-arm for track width adjustment, it becomes tilted and that need be compensated
        SysState.AddRoll = SysState.TrackWidthCtl.TrackTilt * ManRouteCmd.CrabCrawl ;

        if ( (ManRouteCmd.ShelfMode == E_ShelfArc) && (InPack == 0 )  )
        {
            nMode = E_NeckModeCompRailAngle;
        }

        //NeckPosGainCalib = ControlPars.NeckAccSlaveGain ; // (Calib.NeckGainAddFac+1.0f) * ControlPars.NeckPosGain ;
        switch (nMode)
        {

        case E_RemoteControlCore2: // For a simulated package handling, can be anywhere

            if ( S2M.Items.RobotControl.RemoteCommand.NeckCommandValid && M2S.Items.ActCmd.cmd.bGrantNeckControl )
            {
                posTarget =  S2M.Items.RobotControl.RemoteCommand.NeckCommandRad ;
                if ( S2M.Items.RobotControl.RemoteCommand.AutoCompensateLevel )
                {
                    posTarget = posTarget + SysState.AddRoll +
                        + ( (SysState.ManRouteState.OldCrabValue > 0) ? 1.570796326794897f : -1.570796326794897f );
                }
            }
            else
            { // Remotely controlled and invalid: just stay in place
                posTarget = SysState.CanAxis[LOGICAL_NECK].BH.UserPosCmd ;
            }
            NeckPosControlBH(posTarget, 0) ;
            break ;
        case E_NeckShelfAuto: // Normal in-task package handling
            switch (ManRouteCmd.ShelfMode)
            {
            case E_Shelf_Nothing:
                posTarget = SysState.AddRoll;
                break;
            case E_DealPack:
            //case E_ShelfRun:
            case E_ShelfRun_Rescue:
            case E_ShelfRun_Auto: // Taking package from horizontal shelf
                posTarget = SysState.AddRoll + ( (SysState.ManRouteState.OldCrabValue > 0) ? 1.570796326794897f : -1.570796326794897f ) ;
                break;
            case E_ShelfArc: // Taking package from a vertical pole
                posTarget = SysState.AddRoll + ( (ManRouteCmd.CrabCrawl > 0) ? 1.570796326794897f : -1.570796326794897f ) ;
                break;
            case E_ShelfFailure:
                // Do not change
                break;
            default:
                posTarget = (SysState.ManRouteState.OldCrabValue > 0) ? 1.570796326794897f : -1.570796326794897f;
                break;
            }
            NeckPosControlBH(posTarget, 0) ;
            break ;

        case E_NeckModeEncCmd:
            NeckPosControlBH(SysState.CanAxis[LOGICAL_NECK].BH.UserPosCmd, 0) ;
            break;

        case E_NeckModeStabilize:
            // Keep the neck stabilized. In this motion mode we inform IMU angle and roll rate as PDO2
            SysState.StabilizationPosError = (SysState.AddRoll - QuattoRoll(GyroInt.BodyQuat ));
            //speedTarget = SysState.CanAxis[LOGICAL_NECK].BH.AvgIntervalSpeed - GyroInt.Wbody[0] ;
            speedTarget =  GyroInt.Wbody[0] ;
            NeckGyroControlBH(SysState.StabilizationPosError , speedTarget) ;
            /*
            maxv = ControlPars.NeckAccSlaveGain *  (SysState.AddRoll - SysState.Nav.Imu.HeadRollFilt);
            if ( InPackDelayed )
            {
                maxv = fSat(maxv, ControlPars.NeckSpeedMaxNoStab) ;
            }
            SysState.CanAxis[LOGICAL_NECK].BH.BhCw.bit.ReferenceMode = E_RefModeSpeed ;
            SysState.CanAxis[LOGICAL_NECK].BH.BhCw.bit.LoopClosure = E_LC_Speed_Mode ;
            SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd = 0;//Vandal ;
            */
            //SysState.CanAxis[LOGICAL_NECK].SpeedTarget = maxv ;
            //SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK], NeckPos) ; // For later safe return from mode
            break;
        case E_NeckModeCompRailAngle:
            posTarget = SysState.ManRouteState.ArcTilt + SysState.TrackWidthCtl.TrackTilt ;
            NeckControlBHPT(posTarget, 0) ;
            //SysState.CanAxis[LOGICAL_NECK].SpeedTarget = maxv ;
            break;

        case E_TestPT:
            if ( SysState.Debug.PTTest.Init == 0 )
            {
                SysState.Debug.PTTest.Init = 1 ;
                SysState.Debug.PTTest.P0 = SysState.CanAxis[LOGICAL_NECK].BH.UserPos ;
                SysState.Debug.PTTest.Phase = 0  ;
            }
            SysState.Debug.PTTest.dPhase  = SysState.Debug.PTTest.F * Pi2 * CONTROL_TS_F   ;
            SysState.Debug.PTTest.Phase += SysState.Debug.PTTest.dPhase ;
            if ( SysState.Debug.PTTest.Phase >= Pi2)
            {
                SysState.Debug.PTTest.Phase -= Pi2 ;
            }
            posTarget   = SysState.Debug.PTTest.A * __sin(SysState.Debug.PTTest.Phase) ;
            speedTarget = SysState.Debug.PTTest.A * __cos(SysState.Debug.PTTest.Phase) *
                    SysState.Debug.PTTest.F * Pi2 ;
            NeckControlBHPT(posTarget, speedTarget) ;
            break ;
        }
    }
    else
    {
        SysState.CanAxis[LOGICAL_NECK].BH.BhCw.bit.ReferenceMode = E_PosModeStayInPlace ;
        SysState.CanAxis[LOGICAL_NECK].BH.BhCw.bit.LoopClosure = E_LC_Speed_Mode ;
        SysState.CanAxis[LOGICAL_NECK].BH.UserSpeedCmd = 0 ;
    }
}

/*
Get where the tail should be if it would track the nominal advance line
pHead: Descriptor of the head location (input)
pTail: Descriptor of the tail location (output)
*/
void GetTailNominalCoords(struct CYawHistoryItem *pHead, float *tangent )
{

    float d, d1 , rho ;
    short next, prev, stopnext , cnt ;
    (void) pHead ;
    // Assure that the tail pointer is enough far in the past
    if (((YawHistory.PutPtr - YawHistory.RobotTailPtr) & (N_YAWHIST_ITEM - 1) ) < 12)
    {
        YawHistory.RobotTailPtr = (YawHistory.PutPtr - 12) & (N_YAWHIST_ITEM - 1);
    }

    // Go back in buffer until distance is enough or end of buffer
    next = YawHistory.RobotTailPtr ;
    YawHistory.PutPtr &= (N_YAWHIST_ITEM - 1); // Just for compiler not to yell
    while (1)
    {
        d = LONG_2_M_FAC * HYpot((float)(YawHistory.Item[YawHistory.PutPtr].x - YawHistory.Item[next].x),
            (float)(YawHistory.Item[YawHistory.PutPtr].y - YawHistory.Item[next].y));
        if (d >= Geom.WheelBase)
        {
            YawHistory.RobotTailPtr = next ;
            break;
        }
        next = (next - 1)& (N_YAWHIST_ITEM-1);
        if (next == YawHistory.PutPtr)
        { // Arrived to end
            YawHistory.RobotTailPtr = (YawHistory.PutPtr + 2) & (N_YAWHIST_ITEM - 1);
            *tangent = AngletoF(YawHistory.Item[YawHistory.RobotTailPtr].Tangent);
            return;
        }
    }

    // Make no sense that the counter advances more
    stopnext = ( YawHistory.PutPtr - 10 ) & (N_YAWHIST_ITEM - 1);
    prev =     YawHistory.RobotTailPtr;
    next     = ( YawHistory.RobotTailPtr + 1 ) & (N_YAWHIST_ITEM - 1) ;
    d1 = d;
    // Otherwise step forward till too close
    for (cnt = 0; cnt < 5; cnt++)
    {
        if (stopnext == next )
        {// Reached too far ahead
            *tangent = AngletoF(YawHistory.Item[YawHistory.RobotTailPtr].Tangent) ;
            return;
        }

        d = LONG_2_M_FAC * HYpot((float)(YawHistory.Item[YawHistory.PutPtr].x - YawHistory.Item[next].x),
            (float)(YawHistory.Item[YawHistory.PutPtr].y - YawHistory.Item[next].y));

        if (d < Geom.WheelBase)
        {
    // Finally interpolate
            rho = (d1-Geom.WheelBase) / __fmax(d1 - d  , 0.005f ); // rho = 0 if the older (bigger) is true, 1 if the younger (smaller) is true
            *tangent = mod2piS(AngletoF(YawHistory.Item[prev].Tangent) + rho * mod2piS(AngletoF(YawHistory.Item[next].Tangent - YawHistory.Item[prev].Tangent)) ) ;
            return;
        }
        d1 = d;
        YawHistory.RobotTailPtr = next;
        prev = next;
        next = (next + 1) &  (N_YAWHIST_ITEM - 1);
    }

    // desperate action, NFG
    *tangent = mod2piS(AngletoF(YawHistory.Item[prev].Tangent));
}


/**
\brief Manual drive of robot via joy stick
*/
short ManualRot( void   )
{
    float dT , WSR , WSL , eta , YewCmd , absYewCmd , CurveTarget , acc ;
    float L, C, ctheta, theta, a, fTemp, gTemp, RSteer, LSteer, h12 ;//, eTempL, eTempR , dC;
    float x , dp , d2p , junk , sqjunk , cra , yewabs , CurveTheta , RlC , RrC , Rh , f1 ,d ;
    float dxr, dyr, Ctangent, Stangent, dxHead, dyHead, h1, h2, dEtadS,  spd ;

    //long unsigned mask ;
    short leader , follower , waiting , InPack;
    struct CMotSegment *pSeg;
    struct CYawHistoryItem HeadDesc;
    float TailTangent;
    struct CYawHistoryItem *pRecentDesc;
    struct CYawHistoryItem *ppRecentDesc;
    struct CYawHistoryItem *pCurrentDesc;

    dT = SysState.Mot.DeltaT ;
    if ( dT > (2*CONTROL_TS_F) )
    {
        dT = CONTROL_TS_F ; // Time does make no sense
    }

    if ( SysState.Mot.QuickStop  )
    { // Waiting mode transition, nothing to do, just bring the wheel speed to zero
        return ManStopWheels( dT) ;
    }

    if ( ManRouteCmd.CrabCrawl  )
    {
        leader = ( ManRouteCmd.CrabCrawl > 0 ) ? LOGICAL_RW : LOGICAL_LW;
        yewabs =  PiHalf ;
        YewCmd = ( ( ManRouteCmd.CrabCrawl > 0 ) ? -yewabs : yewabs ) ;
    }
    else
    {
        YewCmd = 0;
        leader = 0 ; // Dont care in this case
        if ( ( ManRouteCmd.ShelfMode ==  E_TwistToShelf )  || ( ManRouteCmd.ShelfMode ==  E_ShelfRun_Auto ) || ( ManRouteCmd.ShelfMode ==  E_ShelfRun_Rescue ))
        {
            yewabs =  ControlPars.HorizontalRailYewOffset ;
            YewCmd = ( ( SysState.ManRouteState.OldCrabValue > 0 ) ? -yewabs : yewabs ) ;
        }
    }
    follower = LOGICAL_LW - leader ;

    SysState.ManRouteState.YewCommand = YewCmd;

    // In package simulation mode you care for nothing. Just stay ...
    InPack = IsInPack() ;

    if ( (SysState.Mot.mode == E_SysMotionModeTestPack) || InPack )
    {
        if ( (SysState.Package.Mode == E_PackModeAlignOnShelf) && (SysState.ShelfRun.PitchAlignState==0) )
        {
            spd = __fmax(__fmin(SysState.Nav.pitch,0.05f) , -0.05f) * SysState.ShelfRun.PitchAlignDirection  * 0.3f ;
            SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_RW] ,  spd , Geom.Calc.Meter2MotEncoderShelf );
            SetWheelSpeedCmd( &SysState.CanAxis[LOGICAL_LW] , -spd , Geom.Calc.Meter2MotEncoderShelf );


            //SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd = (long) (__fmax(__fmin(SysState.Nav.pitch,0.05f) , -0.05f) * SysState.ShelfRun.PitchAlignDirection  * 0.3f * Geom.Calc.Meter2MotEncoderShelf) ;
            //SysState.CanAxis[LOGICAL_LW].DFT.SpeedCmd = -SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd ;
        }
        else
        {
            StopWheels();
        }
        return 0;
    }

    if ( SysState.Mot.mode == E_SysMotionModeHostFinePosition )
    { // On fine motion
        GoManualShelf(dT); // Produce profiled position motion on both wheels

        if ( WheelProfiler[0].Done && WheelProfiler[1].Done )
        {
            //  Return to old mode
            SetMotionMode(SysState.Mot.ModeBeforeFineMotion,38)   ;
         }
        return 0 ;
    }

    if (SysState.ManRouteState.NewCrabFlag)
    { // Change the crab mode - set the speed to zero, and the yew to the correct place
        if ( ManRouteCmd.CrabCrawl == 0 )
        { // If target is zero , set the added wheel speed to normal
            InvertSpeed4Shelf( ManRouteCmd.CrabCrawl) ;
        }

        // Remove any residual speed or curvature
        StepTowards(&SysState.ManRouteState.LineSpeed, 0, ManRouteCmd.LineAcc * dT);
        StepTowards(&SysState.ManRouteState.Curvature, 0, ManRouteCmd.LineAcc * dT);

        if (ManRouteCmd.ShelfMode == E_TwistToShelf || ManRouteCmd.ShelfMode == E_TwistFromShelf)
        { // Controlled steer with retarded axis, with speed limits. Acceleration limits are at final PDO driver
            leader = SysState.ManRouteState.ClimbLeader ;
            follower = 1 - leader ;
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER+leader],YewCmd) ;
            if (IsSysTimerElapse(TIMER_BRAKE_DELAY_4_SHELF, &SysTimerStr))
            {
                SetCanAxisPosTarget ( &SysState.CanAxis[LOGICAL_RSTEER + follower], ReverseSteering(YewCmd,ManRouteCmd.CrabCrawl)) ;
            }
        }
        else
        {

            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER+leader], YewCmd) ;
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER+follower], ReverseSteering(YewCmd,ManRouteCmd.CrabCrawl));
        }


        //WSR = 1.0f ;
        //WSL = 1.0f ;
        // Timer for crab

        // Target reached - may exit the crab transition
        absYewCmd = fabsf(YewCmd) ;
        if (IsCrabConverged(absYewCmd)  )
        {
            if (IsSysTimerElapse(TIMER_CRAB_ACTION, &SysTimerStr))
            {

                InvertSpeed4Shelf( ManRouteCmd.CrabCrawl) ;

                SysState.ManRouteState.NewCrabFlag = 0;
            }
        }
        else
        {
            SetSysTimerTargetSec(TIMER_CRAB_ACTION, 0.3f, &SysTimerStr); // 09-2019 Yahali changed to 0.3f, was 0.6F
        }

        if (ManRouteCmd.ShelfMode == E_TwistToShelf || ManRouteCmd.ShelfMode == E_TwistFromShelf)
        { // Here the essence of the mode is crab motion, so doing the crab motion does not prevent modal action
            return ManShelf(dT);
        }
        if ( ( ManRouteCmd.ShelfMode > 0) && (SysState.Mot.mode == E_SysMotionModeAutomatic) && (SysState.CBit.bit.OnRescueMission == 0 ) )
        {
            LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_wrong_crab_transition_on_shelf_climb);
            return -1;
        }
        WSR = SysState.ManRouteState.LineSpeed;
        WSL = WSR;

    } // End New crab flag
    else
    { // Standard motion
        //SysState.Mot.bCrabZeroStabilize = 0;
        // Test wait mode
        if ( SysState.Mot.mode == E_SysMotionModeAutomatic)
        {
            waiting = SysState.Mot.AutoInWait ; // | SysState.Mot.bPauseFlag ;

            pSeg =  &SegQ[0].seg[SegRun.SegIndex];
            if ( ManRouteCmd.ShelfMode == E_Shelf_Nothing )
            {
                if ( (SysState.ManRouteState.DifferenceDrive == 0) && (pSeg->Type == SegType_Differential ) )
                {
                    waiting = 1 ;
                }
                if (ManRouteCmd.CrabCrawl == 0)
                {
                    if ( (SysState.Mot.InGroundNav || (SysState.ManRouteState.DifferenceDrive == 0)  ) && ( SegRun.SegIndex >= SegQ[0].nPut ))
                    { // Complete ground route, just wait
                        waiting = 1 ;
                    }
                }
            }
            if ( waiting)
            {
                GetWheelGndSpeedCmd(&WSR,&WSL);

                acc = ManRouteCmd.LineAcc * 1.5f ;
                StepTowards(&WSR, 0, acc * dT);
                StepTowards(&WSL, 0, acc * dT);

                SetWheelGndSpeedCmd(WSR,WSL);
                return 0 ;
            }
        }
        else
        {
            SysState.Mot.bPauseFlag &= (~1) ;
        }

        if (ManRouteCmd.ShelfMode == E_ShelfArc && (ManRouteCmd.CrabCrawl == 0) && ( SysState.CBit.bit.OnRescueMission == 0) )
        {
            LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_wrong_crab_mode_on_shelf_climb);
            return -1;
        }

        if (ManRouteCmd.ShelfMode)
        {   // On need, go to shelf mode handler
            //SysState.ManRouteState.YewCommand = 0;
            return ManShelf(dT);
        }

        CurveTheta = 0; // Don't care, just keep it initialized if not used
        SysState.ManRouteState.ArcTilt = 0 ; // No on arc
        SysState.ManRouteState.dArcTilt = 0  ;

        // Test profiled wheel motion modes.
        if (SysState.ManRouteState.DifferenceDrive)
        { // Profiled wheel run

            if (( SysState.ManRouteState.DifferenceDrive !=E_DiffDriveSplineInCrab ) && ( SysState.ManRouteState.DifferenceDrive !=E_DiffDriveHostDirectSpeedControl ))
            {
                if ( SysState.Mot.bPauseFlag )
                {
                    PauseProfiler(&CrabProfiler, dT);
                }
                else
                {
                    AdvanceProfiler(&CrabProfiler, dT);
                }

                ManRouteCmd.LineSpeedCmd = CrabProfiler.ProfileSpeed ; // Avoid the "StepToward" acceleration limit
                SysState.ManRouteState.LineSpeed = ManRouteCmd.LineSpeedCmd;
            }
            ManRouteCmd.dCurvatureCmd = 0 ;

            switch( SysState.ManRouteState.DifferenceDrive)
            {
            case E_DiffDriveRunProfileRotateInPlace:
                // Rotate in place
                //lfac = (long) ( SysState.ManRouteState.LineSpeed * Geom.Center2WheelDist4Diff * Geom.Calc.Meter2MotEncoderGnd) ;
                spd  = SysState.ManRouteState.LineSpeed * Geom.Center2WheelDist4Diff ;
                SetWheelGndSpeedCmd(-spd,spd);

                //SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd = -lfac;
                //SysState.CanAxis[LOGICAL_LW].DFT.SpeedCmd = lfac ;
                ManRouteCmd.CurvatureCmd = 0;
                SysState.ManRouteState.YewCommand = 0;
                SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER], 0);
                SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], 0);
                return 0;

            case E_DiffDriveRunProfileStraightWheels:
                // Straight run on a profile
                //lfac = (long)(SysState.ManRouteState.LineSpeed * Geom.Calc.Meter2MotEncoderGnd);
                //SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd = lfac;
                //SysState.CanAxis[LOGICAL_LW].DFT.SpeedCmd = lfac;
                spd  = SysState.ManRouteState.LineSpeed  ;
                SetWheelGndSpeedCmd(spd,spd);

                ManRouteCmd.CurvatureCmd = 0;
                SysState.ManRouteState.YewCommand = 0;
                SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER], 0) ;
                SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], 0) ;
                return 0;
            case E_DiffDriveForceCurvature:
                // Just a profiled move by said curvature
                //dC = SysState.ManRouteState.Curvature;
                CurveTarget = ManRouteCmd.CurvatureCmd;
                break ;
            case E_DiffDriveSplineInCrab:
                // Go a spline in a crab state
                // The spline goes about a parameter line which includes the start and the end points
                // The start position and the orientation of the parameter line is don't care in real time
                // because only line speed and curvature matter
                x = CrabProfiler.ProfilePos ;

                if ( SysState.Spline.ManualCurvature == 0  )
                {
                    AdvanceProfiler(&CrabProfiler, dT);

                    dp = (3*SysState.Spline.a*x +2*SysState.Spline.b)*x+SysState.Spline.c ;
                    d2p = 6*SysState.Spline.a*x+2*SysState.Spline.b ;
                    junk = ( 1 + dp * dp );
                    sqjunk = sqrtf(junk) ;

                    ManRouteCmd.LineSpeedCmd = CrabProfiler.ProfileSpeed * sqjunk ;
                    SysState.ManRouteState.LineSpeed = ManRouteCmd.LineSpeedCmd;

                    SysState.ManRouteState.Curvature = d2p / ( junk * sqjunk ) ;
                    ManRouteCmd.CurvatureCmd = SysState.ManRouteState.Curvature ;
                }
                else
                {
                    // Manual curvature: Just curvature setting, no line speed
                    ManRouteCmd.LineSpeedCmd = 0 ;
                    SysState.ManRouteState.LineSpeed = 0 ;
                    StepTowards(&SysState.ManRouteState.Curvature, ManRouteCmd.CurvatureCmd, ManRouteCmd.CurvatureAcc * dT);
                }

                // Line speed need be corrected, because the profile is for the straight parameter line,
                // not for the actual spline curve

                // Next we deliver wheel commands, taking into account the SteerColumn2WheelDist

                C = SysState.ManRouteState.Curvature; //
                a = Geom.Center2WheelDist ;

                SysState.ManRouteState.YewCommand = YewCmd ;

                cra = C * a ;
                theta = atan2f (cra ,1.0f ) ;
#ifdef DIFFERENTIAL_CRAB
                ctheta =  0 ; // As both wheels are aligned on the same line
                switch (ManRouteCmd.CrabCrawl)
                {
                case 0:
                    RSteer = 0  ;
                    LSteer = 0   ;
                    break  ;
                default:
                    RSteer =  PiHalf + ManRouteCmd.CrabCrawl * theta    ;
                    LSteer = -PiHalf - ManRouteCmd.CrabCrawl * theta    ;
                    break ;
                }

#else
                ctheta =  C * Geom.SteerColumn2WheelDist   ; // cos( theta );Ycos( theta );
                RSteer = ManRouteCmd.CrabCrawl * ( PiHalf + theta )   ;
                LSteer = ManRouteCmd.CrabCrawl * ( PiHalf - theta )   ;
#endif

                SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER], -RSteer) ;
                SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], -LSteer) ;

                sqjunk = sqrtf(1+cra*cra) ;
                WSR = ManRouteCmd.LineSpeedCmd * ( sqjunk - ManRouteCmd.CrabCrawl * ctheta  ) ;
                WSL = ManRouteCmd.LineSpeedCmd * ( sqjunk + ManRouteCmd.CrabCrawl * ctheta  ) ;

                SetWheelGndSpeedCmd(WSR,WSL);

                return 0 ;

            case E_DiffDriveHostDirectSpeedControl:
                // Run body -referred host command in difference mode for obstacle avoidance
                d = Geom.Center2WheelDist4Diff ;
                StepTowards(&SysState.ManRouteState.LineSpeed, SysState.Mot.BodyCmd.Speed   , ManRouteCmdImage.LineAcc * dT);
                StepTowards(&SysState.ManRouteState.AngularSpeed, SysState.Mot.BodyCmd.Omega, ManRouteCmdImage.LineAcc  * dT / d );
                WSR = SysState.ManRouteState.LineSpeed + SysState.ManRouteState.AngularSpeed * d  ;
                WSL = SysState.ManRouteState.LineSpeed - SysState.ManRouteState.AngularSpeed * d  ;
                SetWheelGndSpeedCmd(WSR,WSL);
                return 0 ;

            case E_DiffDriveDifferentialTarget:
                DiffModeIndependentWheelTravel();
                return 0 ;

            case E_DiffDriveRunProfileAnySteering:
                spd  = SysState.ManRouteState.LineSpeed  ;
                SetWheelGndSpeedCmd(spd,spd);
                ManRouteCmd.CurvatureCmd = 0;
               return 0;

            default:
                SysState.ManRouteState.DifferenceDrive = 0 ;
                LogException(OWN_EXP_ID, EXP_ABORT, exp_unknown_gnd_profiled_mode);
                return 0 ;
            }
        } // End difference drive
        else
        { // Get the line speed and the curvature from external commands
            if ( SysState.Mot.bPauseFlag )
            {// Encountered an emergency stop - slow down
                StepTowards2Sided(&SysState.ManRouteState.LineSpeed, 0,
                                  ControlPars.PauseDeceleration * dT , ControlPars.PauseDeceleration * dT   );
            }
            else
            { // Normal
                StepTowards2Sided(&SysState.ManRouteState.LineSpeed, ManRouteCmd.LineSpeedCmd,
                    ManRouteCmd.LineAcc * dT , ManRouteCmd.LineAcc * dT * 1.6f );
            }
            //dC = SysState.ManRouteState.Curvature;

            CurveTarget = ManRouteCmd.CurvatureCmd;


            if ((SysState.Mot.mode == E_SysMotionModeAutomatic) && SysState.Mot.InGroundNav)
            {// On automatic ground navigation, enter corrections derived from the robot's deviation from its desired course
                //CurveTarget += SysState.Nav.Robot.CurveCorrection * ControlPars.CurvatureCorrectGain;
                SysState.Nav.Robot.CurveCorrectionF = SysState.Nav.Robot.CurveCorrectionF +
                        ( __fmax( __fmin( SysState.Nav.Robot.CurveCorrection , 0.8f ) , -0.8f) -  SysState.Nav.Robot.CurveCorrectionF) * 0.08f ;
                pSeg =  &SegQ[0].seg[SegRun.SegIndex];   // &SegQ[1 - SysState.Mot.BgSegQueue].seg[SegRun.SegIndex];
                switch (pSeg->Type)
                {
                case SegType_Straight:
                    SysState.Nav.Robot.CurveCorrectionF = __fmax( __fmin( SysState.Nav.Robot.CurveCorrectionF , 0.55f ) , -0.55f) ;
                    CurveTarget += SysState.Nav.Robot.CurveCorrectionF * ControlPars.CurvatureCorrectGain;
                    break;
                case SegType_Circular:
                case SegType_Clothoid:
                    CurveTarget += SysState.Nav.Robot.CurveCorrectionF * ControlPars.CurvatureCorrectGain;
                }
                CurveTheta = ManRouteCmd.TangentDir;
            }
            else
            {
                SysState.Nav.Robot.CurveCorrectionF = 0 ; // SysState.Nav.Robot.CurveCorrection ;
            }
        }

        StepTowards(&SysState.ManRouteState.Curvature, CurveTarget, ManRouteCmd.CurvatureAcc * dT);

        //dC = ManRouteCmd.dCurvatureCmd; //( SysState.ManRouteState.Curvature - dC ) / dT ;

        // If line speed command is zero, then don't change the yaw on steer change
        // Also on manual modes, the curvature rate is not controlled so we remove the correction
        //if ( ((float) fabs( SysState.ManRouteState.LineSpeed) < 0.005 ) || (SysState.Mot.mode != E_SysMotionModeAutomatic ) )
        //{
        //    dC = 0 ;
        //}

        L = Geom.WheelBase ;
        C = SysState.ManRouteState.Curvature; //
        a = Geom.Center2WheelDist ;

        if ( ManRouteCmd.CrabCrawl )
        {
            eta = YewCmd ;
            dEtadS = 0 ;
        }
        else
        { // Automatic yew control
            if (SysState.Mot.mode == E_SysMotionModeAutomatic)
            {
                // Get the current X and Y
                pCurrentDesc = &YawHistory.Item[YawHistory.PutPtr];
                pRecentDesc  = & YawHistory.Item[(YawHistory.PutPtr - 1)&(N_YAWHIST_ITEM - 1)];
                dxr = SysState.ManRouteState.LineSpeed * dT;
                dyr = SysState.ManRouteState.LineSpeed * dT * 0.5f * C  ;
                Ctangent = Ycos(CurveTheta);
                Stangent = Ysin(CurveTheta);
                dxHead = dxr * Ctangent - dyr * Stangent;
                dyHead = dxr * Stangent + dyr * Ctangent;
                HeadDesc.x = pCurrentDesc->x + (short)(M_2_LONG_FAC * dxHead);
                HeadDesc.y = pCurrentDesc->y + (short)(M_2_LONG_FAC * dyHead);
                HeadDesc.Tangent = FtoAngle ( CurveTheta);

                // Get the tail nominal coordinates
                GetTailNominalCoords(&HeadDesc, & TailTangent);

                eta = mod2piS(TailTangent - CurveTheta)  * 0.5f ;

                HeadDesc.yaw = FtoAngle(eta);

                // Get the cone angle derivatives
                ppRecentDesc = & YawHistory.Item[(YawHistory.PutPtr - 2)&(N_YAWHIST_ITEM - 2)];

                h1 = HYpot(dxHead, dyHead);
                h12 = LONG_2_M_FAC * HYpot((float)(pRecentDesc->x - pCurrentDesc->x), (float)(pRecentDesc->y - pCurrentDesc->y));
                h2 = LONG_2_M_FAC * HYpot((float)(pRecentDesc->x - ppRecentDesc->x), (float)(pRecentDesc->y - ppRecentDesc->y));
                dEtadS = mod2piS(eta - AngletoF(ppRecentDesc->yaw)) / __fmax(h1+h12+h2,0.005f);


                // Push head descriptor to buffer
                YawHistory.Item[YawHistory.PutPtr] = HeadDesc;
                if ((h1+h12) > Geom.WheelBase * 0.05f )
                {
                    YawHistory.PutPtr = (YawHistory.PutPtr + 1)&(N_YAWHIST_ITEM - 1);
                    YawHistory.Item[YawHistory.PutPtr] = HeadDesc; // Again, as zero distance over the previous ...
                }

            }
            else
            {
                eta = -atan2f(L * C / 2, 1);
                dEtadS = 0; //  2 * L / (L*L * C*C + 4);
            }
        }
        SysState.ManRouteState.YewCommand = eta ;

        f1 = Ycos(eta);
        fTemp =  a * C * f1 ;
        gTemp =  a * C * Ysin(eta) ;
        RSteer = -eta - atan2f(gTemp, 1 - fTemp) ;
        LSteer = -eta + atan2f(gTemp, 1 + fTemp) ;

        Rh = Geom.SteerColumn2WheelDist  ;
        RlC = __fmax( sqrtf(C * C * a *a + 2 * fTemp + 1) + C * Rh , 0.01f ) ; // R * ( d alpha / d eta )
        RrC = __fmax( sqrtf(C * C * a *a - 2 * fTemp + 1) - C * Rh , 0.01f ) ; // R * ( d alpha / d eta )

        WSL = SysState.ManRouteState.LineSpeed * (RlC + (a*C + f1)*a * dEtadS / RlC);
        WSR = SysState.ManRouteState.LineSpeed * (RrC + (a*C - f1)*a * dEtadS / RrC);

        //eTemp = GetDrDtheta(C, dC);
        //eTemp = dC * C * a * 0; //  1.5;
        //eTempL = (a*C + Ycos(eta))*a / (C * C * a *a + 2 * a*C*Ycos(eta) + 1); // R * ( d alpha / d eta )
        //eTempR = (a*C - Ycos(eta))*a / (C * C * a *a - 2 * a*C*Ycos(eta) + 1); // R * ( -d beta / d eta )


        //WSR = sqrtf( 1 + a*a * C*C - 2 * fTemp  ) * SysState.ManRouteState.LineSpeed - eTempR * DetaDc * dC ;
        //WSL = sqrtf( 1 + a*a * C*C + 2 * fTemp  ) * SysState.ManRouteState.LineSpeed - eTempL * DetaDc * dC;
        //WSR = ( sqrtf(1 + a*a * C*C - 2 * fTemp) + eTempR * dEtadS) * SysState.ManRouteState.LineSpeed ;
        //WSL = ( sqrtf(1 + a*a * C*C + 2 * fTemp) + eTempL * dEtadS) * SysState.ManRouteState.LineSpeed ;

        if (SlaveDirectionTab[LOGICAL_RW]==SysState.CanAxis[LOGICAL_RW].BH.BHAxisDirection  )
        {
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER], -RSteer) ;
        }
        else
        {
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER],  ReflectSteering(-RSteer)) ;
        }

        if (SlaveDirectionTab[LOGICAL_LW]==SysState.CanAxis[LOGICAL_LW].BH.BHAxisDirection  )
        {
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], -LSteer) ;
        }
        else
        {
            SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER], ReflectSteering(-LSteer)) ;
        }

        //WSR *= RDir ;
        //WSL *= LDir ;
    }


    if ( (fabs( WSR)  > 3.0f) || isNan(&WSR))
    {
        WSR = 0 ;
    }
    SetWheelGndSpeedCmd(WSR,WSL);
    return 0;
}


void  ManageStartStop ()
{
    if ( (ManRouteCmd.ShelfMode == E_ShelfArc) || ( SysState.ManRouteState.NewCrabFlag ) )
    {
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_RW] ,1 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_LW] ,1 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_RSTEER] ,1 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_LSTEER] ,1 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_NECK] ,1 )        ;
    }
    else
    {
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_RW] ,0 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_LW] ,0 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_RSTEER] ,0 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_LSTEER] ,0 )        ;
        SetCanAxisDisableAutoBrake ( &SysState.CanAxis[LOGICAL_NECK] ,0 )        ;
    }
}



/*
 * \brief The motion control function
 * following acceptance of all the feedbacks, it calculates the speed/position references
 * to the servo axes
 */
short MotionController()
{
    short unsigned segtype , next , ustat  ;
    short stat ;
    long unsigned lusec , ldelta ;
    struct CSegQueue *pQ;
    struct CRouteLogItem * pBuf;
    short unsigned allInstall ;
    struct CCanAxis * pLeader;
    struct CCanAxis * pFollower ;
    float TorqueCorrection ;

    // Take time difference between consecutive calls
    lusec  = IsrTimer.UsecTimer ;
    ldelta =  IsrTimer.UsecTimer - SysState.Mot.LastCallTime   ;
    if ( ldelta > 20000 )ldelta = 20000;
    SysState.Mot.LastCallTime = lusec ;
    SysState.Mot.DeltaT = ldelta * 1e-6F  ;


    SysState.Nav.Robot.RouteValid = 0 ; // The default

    allInstall = ManageMotorStart() ;

    NeckControl() ; // Control neck angle

    SysState.ShoulderRollBuff4FallDetect[SysState.ShoulderRollBufCnt] = SysState.ShoulderRoll ;
    SysState.ShoulderRollBufCnt = ( SysState.ShoulderRollBufCnt + 1 ) & 31 ;


    if ( IsSpeedCmdZero( &SysState.CanAxis[LOGICAL_RW]) * IsSpeedCmdZero( &SysState.CanAxis[LOGICAL_LW])  )
        //SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd || SysState.CanAxis[LOGICAL_LW].DFT.SpeedCmd )
    {
        SetSysTimerTargetSec( TIMER_WHEELS_MOVING , 1.0 , &SysTimerStr) ;
    }
    SysState.Nav.WheelsStopped = IsSysTimerElapse(TIMER_WHEELS_MOVING, &SysTimerStr) ;


    if ( SysState.Mot.mode <= E_SysMotionModePerAxis )
    {
        SysState.ManRouteState.LineSpeed = 0 ;
        SysState.ManRouteState.PendingCrab = 0 ;
        SysState.ManRouteState.DifferenceDrive = 0 ;
        SysState.Mot.bPauseFlag &= (~1);

        if ( SysState.Nav.WheelsStopped  && ( SysState.SleepRequest & 0x1 ) )
        {
            SysState.SleepRequest |= 2 ;
        }

        if ( (SysState.Mot.mode == E_SysMotionModePerAxis ) &&( ManRouteCmd.CrabCrawl != 0 ) )
        {
            if ( SysState.Debug.bBalanceWheelLoadsOnManual )
            {


                if ( ManRouteCmd.CrabCrawl > 0  )
                {
                    pLeader = &SysState.CanAxis[LOGICAL_RW];
                    pFollower = &SysState.CanAxis[LOGICAL_LW];
                }
                else
                {
                    pLeader = &SysState.CanAxis[LOGICAL_LW];
                    pFollower = &SysState.CanAxis[LOGICAL_RW];
                }
                TorqueCorrection = (pLeader->BH.Torque - pFollower->BH.Torque ) *  ControlPars.TorqueGainPoleManual ;

                StepTowards( &(pLeader->BH.UserSpeedCmd)  , pLeader->BH.UserManualSpeedTarget , ManRouteCmd.LineAcc * CONTROL_TS_F  );
                if( pLeader->BH.UserSpeedCmd < 0 )
                {
                    //TorqueCorrection *= ControlPars.NeckGainReductionFacOnDown ;
                    TorqueCorrection = -TorqueCorrection ;
                }
                SysState.TorqueCorrection = __fmax( __fmin(TorqueCorrection,  2.5f  ), -0.8f)  ;

                SetWheelSpeedCmd( pFollower , pLeader->BH.UserSpeedCmd ,(1.0f + SysState.TorqueCorrection ));
            }
            else
            {
                StepTowards( &SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd  , SysState.CanAxis[LOGICAL_RW].BH.UserManualSpeedTarget , ManRouteCmd.LineAcc * CONTROL_TS_F  );
                StepTowards( &SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd  , SysState.CanAxis[LOGICAL_LW].BH.UserManualSpeedTarget , ManRouteCmd.LineAcc * CONTROL_TS_F  );
            }
        }
        else
        {
            SysState.Debug.bBalanceWheelLoadsOnManual = 0 ;
        }
        //ClearMemRpt ( (short unsigned *) & SysState.ManRouteState , sizeof( SysState.ManRouteState ) ) ;
        return 0 ; //If not automatic, nothing more to do
    }
    else
    {
        SysState.Debug.bBalanceWheelLoadsOnManual = 0 ;
    }

    // Auto modes require presence of all the axes
    if ( allInstall == 0 )
    {
        LogException ( OWN_EXP_ID , EXP_SAFE_FATAL , exp_auto_requires_all_installed ) ;
        return -1 ;
    }


    // Manage start stop behavior
    ManageStartStop() ;


    if ( SysState.SleepRequest && (SysState.ManRouteState.NewCrabFlag==0))
    {
        StopTowardsSleep() ;

        stat = 0;

    }
    else
    {
        switch ( SysState.Mot.mode)
        {
        case E_SysMotionModeManualTravel:
            SysState.Nav.Robot.CurveCorrection = 0; // Kill navigation curve correction
            break;
        case E_SysMotionModeTestPack:
            SysState.Nav.Robot.CurveCorrection = 0; // Kill navigation curve correction
            break;

        case E_SysMotionModeHostFinePosition:
            SysState.Nav.Robot.CurveCorrection = 0; // Kill navigation curve correction
            break;

       case E_SysMotionModeHostSpeedControl:
            SysState.Nav.Robot.CurveCorrection = 0; // Kill navigation curve correction

            // Speed and angular speed control from host, "dumb" mode
            if ( IsSysTimerElapse ( TIMER_OBSTACLE_AVOIDANCE_CMD, &SysTimerStr ) )
            { // Just slow down to zero
                SysState.Mot.BodyCmd.Speed = 0 ;
                SysState.Mot.BodyCmd.Omega = 0 ;
            }
            SysState.ManRouteState.DifferenceDrive = E_DiffDriveHostDirectSpeedControl ;
            break ;

        case E_SysMotionModeAutomatic :
        // Auto mode - run motion planner
            if (SysState.Mot.InGroundNav)
            {
                //stat = GoMotionQueue(&SegQ[1 - SysState.Mot.BgSegQueue], &SegRun, SysState.Mot.DeltaT, &SysState.Mot.RunType);
                ustat = GoMotionQueue(&SegQ[0], &SegRun, SysState.Mot.DeltaT, &SysState.Mot.RunType);
                if (ustat)
                { // Motion queue termination
                    SysState.Mot.InGroundNav = 0;
                    SysState.Nav.Robot.CurveCorrection = 0;
                    SysState.ManRouteState.LineSpeed = 0;
                    ManRouteCmd.LineSpeedCmd = 0;
                    SysState.ManRouteState.Curvature = 0 ;
                    ManRouteCmd.CurvatureCmd = 0 ;
                    ManRouteCmd.dCurvatureCmd = 0 ;

                    if (ustat == 1)
                    {
                        //                  SetMotionMode(E_SysMotionModeStay,40) ;
                    }
                    else
                    {
                        LogException(OWN_EXP_ID, EXP_SAFE_FATAL, ustat);
                    }
                    SysState.Mot.SegmentType = SegType_Straight ; // 01-Nov-2021
                }
                else
                {  // Normal drive
                    // Find own place
                    //pQ = &SegQ[1 - SysState.Mot.BgSegQueue];
                    pQ = &SegQ[0];
                    segtype = pQ->seg[SegRun.SegIndex].Type;
                    SysState.Mot.SegmentType = segtype ; // 01-Nov-2021
                    if (segtype  != SegType_Differential)
                    { // Don't estimate route position when differential
                        stat = WhereAmI(pQ, &SegRun, &SysState.Nav.Robot.RawSEst, &SysState.Nav.Robot.RouteTangent,
                            &SysState.Nav.Robot.RouteLocation[0], &SysState.Nav.Robot.RouteLocation[1], &SysState.Nav.Robot.pSeg);
                        if (stat && (ControlPars.CurvatureCorrectGain != 0))
                        {
                            SetMotionMode(E_SysMotionModeStay,41);
                            LogException(OWN_EXP_ID, EXP_ABORT, exp_last_route_loc_error + (long)stat); // Because stat is negative
                        }

                        SysState.Nav.Robot.RouteValid = 1; // Validate a motion segment is now on the run
                        SysState.Nav.Robot.RouteType  = segtype ;

                        if ( SysState.Nav.IgnoreWhereAmI == 0 )
                        {
                            SegRun.s = SegRun.s + SysPars.Nav.SegPosCorrectionFac * (SysState.Nav.Robot.RawSEst - SegRun.s); // Set the route position to the estimate
                        }

                        SysState.Nav.Robot.CurveCorrection = CurveCorrection(ControlPars.RouteLookAheadDist); // Do the curvature correction

                    }
                    else
                    {
                        SysState.Nav.Robot.CurveCorrection = 0;
                    }
                }
            }
            break;

        default:
            LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp_unknown_motion_mode );
            break;
        }

        // Log history route info, 2.048 seconds back for navigation, resolution = 32msec (64 samples)

        SysState.Nav.RouteLog.InterLogCounter += 1;
        if (SysState.Nav.RouteLog.InterLogCounter >= 4)
        {
            SysState.Nav.RouteLog.InterLogCounter = 0 ;
            next = ( SysState.Nav.RouteLog.PutCounter + 1 ) & (N_LOG_BUFFER_SIZE - 1);
            if (next == SysState.Nav.RouteLog.FetchCounter)
            {
                SysState.Nav.RouteLog.FetchCounter = (SysState.Nav.RouteLog.FetchCounter + 1) & (N_LOG_BUFFER_SIZE - 1) ;
            }
            pBuf = & SysState.Nav.RouteLog.Buf[SysState.Nav.RouteLog.PutCounter] ;
            pBuf->RouteLocation[0] = SysState.Nav.Robot.RouteLocation[0];
            pBuf->RouteLocation[1] = SysState.Nav.Robot.RouteLocation[1];
            pBuf->RouteTangent = SysState.Nav.Robot.RouteTangent;
            pBuf->RouteTime = lusec;
            pBuf->RouteType = SysState.Nav.Robot.RouteType ;
            pBuf->RouteValid = SysState.Nav.Robot.RouteValid;
            SysState.Nav.RouteLog.PutCounter = next;
        }

        if ( SysState.Mot.mode > E_SysMotionModeMotorOff)
        {
            stat = ManualRot( ) ; // Same maneuvering logics as in manual modes
        }
    }


    return stat ;
}


