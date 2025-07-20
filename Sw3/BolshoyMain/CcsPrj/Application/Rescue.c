/*
 * Rescue.c
 *
 *  Created on: Sep 14, 2022
 *      Author: yahal
 */

#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x) ;
#endif

void EnterRescueCommand(struct CMotionItem * pItem)
{
    short unsigned mask ;
    float Height , acc ;

    switch ( pItem->y  )
    {
    case 1:
        Height = -pItem->z_or_lModeData * LONG_2_M_FAC ;

        SetSysTimerTargetSec( TIMER_STABILIZE_FOR_TWIST , 1.0f , &SysTimerStr) ; // Minimal mode life

        if ( RestartShelfRescueNavigation(Height,1) == 0 )
        { // That's shelf

            mask = BlockInts();
            {
                SysState.ShelfRun.bProfileStart = 2;
                ManRouteCmd.ShelfMode = E_ShelfRun_Rescue;
                ManRouteCmd.CrabCrawl = 0 ;
            }
            RestoreInts(mask);
            ResetProfiler ( &WheelProfiler[0] , 0 , 0 , 1 );
            ResetProfiler ( &WheelProfiler[1] , 0 , 0 , 1 );

            ManRouteCmd.ShelfRunPars.ShelfSpeed = ControlPars.ShelfRescueSpeed;

            acc = ControlPars.ShelfAcceleration;

            ProgramProfiler(&WheelProfiler[0], ManRouteCmd.ShelfRunPars.ShelfSpeed ,
                acc,acc,0.01f, EProfile_PerAxis);
            ProgramProfiler(&WheelProfiler[1], ManRouteCmd.ShelfRunPars.ShelfSpeed ,
                acc,acc,0.01f, EProfile_PerAxis);

            SysState.ShelfRun.RunDirection = ( pItem->x > 0 )  ? 1 : -1 ;
            WheelProfiler[0].PosTarget = SysState.ShelfRun.RunDirection * 100.f  ; // Just infinity
            WheelProfiler[0].Done = 0 ;
            WheelProfiler[1].PosTarget = SysState.ShelfRun.RunDirection * 100.f  ; // Just infinity
            WheelProfiler[1].Done = 0 ;

            ManRouteCmd.ShelfSubMode = 0;
            SysState.ShelfRun.ShelfSubMode = 0;
            SysState.Mot.ChgMode.State = E_ChgmodeState_WaitShelfTravel;

            // Test if the next station is a pole run
            SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 0.5f, &SysTimerStr);

            // Initiate motion profile
            SysState.ShelfRun.bProfileStart = 1;
        }
        else
        {
            LogException(OWN_EXP_ID , EXP_ABORT , exp_bad_height_pos_for_shelf_rescue) ;
        }
        break ;
    case 2: // Pole go down
        Height = -pItem->z_or_lModeData * LONG_2_M_FAC ;

        SetSysTimerTargetSec( TIMER_STABILIZE_FOR_TWIST , 1.0f , &SysTimerStr) ; // Minimal mode life

        if ( RestartShelfRescueNavigation(Height,0)  )
        {
            LogException(OWN_EXP_ID , EXP_ABORT , exp_bad_height_pos_for_shelf_rescue) ;
        }
        else
        {
            mask = BlockInts();
            {
                ManRouteCmd.CrabCrawl = SysState.ManRouteState.OldCrabValue ;
                ManRouteCmd.ShelfMode = E_ShelfArc;
                ManRouteCmd.ShelfSubMode = 0;
                SysState.ShelfRun.ShelfSubMode = 0;
            }
            RestoreInts(mask);
            AdvanceMotionQueue() ;
        }
        break;
    case 3: // Pole down , starting with junction rotate
        Height = -pItem->z_or_lModeData * LONG_2_M_FAC ;

        SetSysTimerTargetSec( TIMER_STABILIZE_FOR_TWIST , 1.0f , &SysTimerStr) ; // Minimal mode life

        if ( RestartShelfRescueNavigation(Height,1)  )
        {
            LogException(OWN_EXP_ID , EXP_ABORT , exp_bad_height_pos_for_shelf_rescue) ;
        }
        else
        {
            mask = BlockInts();
            {
                ManRouteCmd.ShelfMode = E_ShelfRun_Rescue;
                ManRouteCmd.ShelfSubMode = 0;
                SysState.ShelfRun.ShelfSubMode = 0;
                SysState.PoleRun.TargetArmRequirement = 7 ;
                SysState.PoleRun.TargetArmDone = 7 ;
                ManRouteCmd.CrabCrawl = 0 ;
                SysState.ManRouteState.WheelEncoderNow[0] = WheelEncR.Position ;
                SysState.ManRouteState.WheelEncoderNow[1] = WheelEncL.Position ;
                SysState.ShelfRun.JuncWheelEncoderCapture[0] = SysState.ManRouteState.WheelEncoderNow[0];
                SysState.ShelfRun.JuncWheelEncoderCapture[1] = SysState.ManRouteState.WheelEncoderNow[1];
            }
            RestoreInts(mask);

            AdvanceMotionQueue() ;
        }
        break;

    default:
        LogException(OWN_EXP_ID , EXP_ABORT , exp_bad_special_action) ;
    }

}


/*
 * Initialize the navigation for the task of shelf rescue
 * Arguments:
 * Height: Initial height
 * IsShelf: 1 if on shelf
 */
short RestartShelfRescueNavigation(float Height, short IsShelf )
{
short InPack, OldCrab , Leader , Follower ;
float LeaderArc , FollowerArc ,NeckPos ;
//short zone , armFollower;
short unsigned mask ;

        // Test not in auto mode
        if ( SysState.Mot.mode != E_SysMotionModeAutomatic )
        {
            LogException(OWN_EXP_ID, EXP_ABORT, exp_auto_in_rescue);
            return -1;
        }

        // Test no package at handling
        InPack = IsInPack() ;
        if ( InPack)
        {
            LogException(OWN_EXP_ID, EXP_ABORT, exp_kill_pack_mode_before_rescue);
            return -1;
        }

        // Test that the neck angle complies , select leader and follower
        NeckPos = GetUserPosNeck() ; // SysState.CanAxis[LOGICAL_NECK].PositionAct * Geom.Calc.NeckEnc2Rad ;
        OldCrab = 0 ;
        if ( ( NeckPos + 0.3 >= PiHalf ) && ( NeckPos -0.3 <= PiHalf) )
        {
            Leader = LOGICAL_RW ;
            Follower = LOGICAL_LW ;
            OldCrab = 1;
        }
        if ( ( NeckPos + 0.3 >= -PiHalf) && ( NeckPos -0.3 <= -PiHalf) )
        {
            Leader = LOGICAL_LW ;
            Follower = LOGICAL_RW ;
            OldCrab = -1;
        }

        if ( OldCrab == 0  )
        {
            LogException(OWN_EXP_ID, EXP_ABORT, exp_wrong_neck_pos_for_rescue) ;
            return -1;
        }

        if ( Height < Geom.ClimbArcRadi + Geom.DistanceFromShoulderJoint2Slidewheel + Geom.Center2WheelDist + Geom.LimitSw2DistPosOnArc + 0.05f )
        {
            LogException(OWN_EXP_ID, EXP_ABORT, exp_bad_height_pos_for_shelf_rescue) ;
            return -1 ;
        }

        if ( IsShelf )
        {
            if ( (float) fabs( SysState.CanAxis[LOGICAL_RSTEER].OuterPos) > 0.1f ||
                    (( float) fabs( SysState.CanAxis[LOGICAL_LSTEER].OuterPos-SysState.CanAxis[LOGICAL_RSTEER].OuterPos) > 0.1f ))
            {
                LogException(OWN_EXP_ID, EXP_ABORT, exp_bad_steer_pos_for_shelf_rescue) ;
                return -1 ;
            }
        }
        else
        {
#ifdef DIFFERENTIAL_CRAB
            if ( IsSteerTargetDirection(PiHalf,-PiHalf,0.1f) == 0 )
#else
            if ( (float) fabs( -SysState.CanAxis[LOGICAL_RSTEER].OuterPosFilt -  PiHalf *OldCrab ) > 0.1f ||
                    (( float) fabs(SysState.CanAxis[LOGICAL_LSTEER].OuterPosFilt-SysState.CanAxis[LOGICAL_RSTEER].OuterPosFilt) > 0.1f ))
#endif
            {
                LogException(OWN_EXP_ID, EXP_ABORT, exp_bad_steer_pos_for_pole_rescue) ;
                return -1 ;
            }
        }

        SysState.ManRouteState.OldCrabValue = OldCrab ;
        SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto ;

        FollowerArc = Height + (Geom.ClimbArcRadi * 0.570796326794897f - Geom.ClimbArcOverFloor) - Geom.Center2WheelDist ;
        LeaderArc   = FollowerArc + SysState.TrackWidthCtl.TrackWidth;

//        LeaderArc = Height + Geom.ClimbArcRadi * 0.5708f + Geom.Center2WheelDist ;
//        FollowerArc = GetFollowerByLeader(LeaderArc, &zone, &armFollower)  ;

        mask = BlockInts();
        {
            SysState.ManRouteState.ArcDistance[Leader] = LeaderArc ;
            SysState.ManRouteState.ArcDistance[Follower] = FollowerArc ;
            SysState.ManRouteState.NomRouteTangent = 0 ;
            ManRouteCmd.ShelfRunPars.CenterProjHeight = Height ;
            ManRouteCmd.ShelfRunPars.Xbase = 0 ;
            ManRouteCmd.ShelfRunPars.Ybase = 0 ;

            SysState.ManRouteState.Destination[0] = ManRouteCmd.ShelfRunPars.Xbase ;
            SysState.ManRouteState.Destination[1] = ManRouteCmd.ShelfRunPars.Ybase ;
            SysState.ManRouteState.Destination[2] = -ManRouteCmd.ShelfRunPars.CenterProjHeight ;

            SysState.Nav.Robot.xc[0] = ManRouteCmd.ShelfRunPars.Xbase   ;
            SysState.Nav.Robot.xc[1] = ManRouteCmd.ShelfRunPars.Ybase  ;
            SysState.Nav.Robot.xc[2] = -ManRouteCmd.ShelfRunPars.CenterProjHeight ;
            SysState.Nav.iPos[0] = (long)(SysState.Nav.Robot.xc[0] * M_2_LONG_FAC);
            SysState.Nav.iPos[1] = (long)(SysState.Nav.Robot.xc[1] * M_2_LONG_FAC);
            SysState.Nav.iPos[2] = (long)(SysState.Nav.Robot.xc[2] * M_2_LONG_FAC);
            Euler2Quat(0, SysState.Nav.pitch ,SysState.Nav.roll, GyroInt.BodyQuat);
        }
        RestoreInts(mask) ;

        KillDifferenceDrive() ;
        CaptureLastPosition(  &SysState.Mot.LastPositionItem) ;
        SysState.CBit.bit.NavInitialized = 1 ;
        SysState.CBit.bit.OnRescueMission = 1;

        return 0 ;
}

void   ManageSpecialModeShelfAlign(void)
{
    short unsigned stat ;
    stat = AlignPitchOnShelf( 1 ) ;
    if ( stat )
    {
        if ( stat != 1)
        {
            LogException(OWN_EXP_ID , EXP_ABORT , (long unsigned) stat ) ;
        }

        SetMotionMode(E_SysMotionModePerAxis,26)  ;


        // Reset any abort error in effect (Olivier request)
        if ( (SysState.Mot.mode == E_SysMotionModeAutomatic) && SysState.CBit.bit.QueueAborted)
        {
            LogException(OWN_EXP_ID , EXP_RESET ,exp_reset_after_pack_success ) ;
        }
    }

}


short unsigned  AlignPitchOnShelf( short mode  )
{
// Test case:
    short unsigned RetVal ;
    float  pit ;
    if ( IsSteerTargetDirection( 0 , 0 , 0.1f ) == 0 )
    {
        return exp_setpitch_bad_steering ;
    }
    if ( fabsf( SysState.CanAxis[LOGICAL_NECK].OuterPos - PiHalf ) < 0.1f )
    {
        SysState.ShelfRun.PitchAlignDirection = 1 ;
    }
    else if ( fabsf( SysState.CanAxis[LOGICAL_NECK].OuterPos + PiHalf ) < 0.1f )
    {
        SysState.ShelfRun.PitchAlignDirection = -1 ;
    }
    else
    {
        SysState.ShelfRun.PitchAlignDirection = 0  ;
        return exp_setpitch_bad_neck ;
    }
    if ( mode == 0)
    {   SysState.ShelfRun.PitchAlignState = 0;
        return 0 ;
    }
    RetVal = 0 ;
    pit = SysState.Nav.pitch ;

    if ( SysState.ShelfRun.PitchAlignState  == 0 )
    {
        if ( fabs(pit) > 0.01f )
        {
            SetSysTimerTargetSec (TIMER_SHELF_ALIGN , 1.0f  , &SysTimerStr);
        }
        if ( IsSysTimerElapse( TIMER_SHELF_ALIGN  , &SysTimerStr) )
        {
            SetSysTimerTargetSec (TIMER_SHELF_ALIGN , 1.0f  , &SysTimerStr);
            SysState.ShelfRun.PitchAlignState  = 1 ;
        }
    }
    else
    {
        if ( IsSysTimerElapse( TIMER_SHELF_ALIGN  , &SysTimerStr) )
        {
            RetVal = 1  ;
        }
    }
    return RetVal ;
}

void  RunRescueShelf( short unsigned Leader , short unsigned Follower , float dT  )
{
    float LeaderLeadDist , DeltaSpeed ;
    struct CCanAxis *pLeader = &SysState.CanAxis[Leader] ;
    struct CCanAxis *pFollower = &SysState.CanAxis[Follower] ;

    // Profiled wheel run
    if ( SysState.ShelfRun.bProfileStart == 2 )
    { //Mode just started , waiting more commands to move
        ManRouteCmd.LineSpeedCmd = 0 ;
        SysState.ManRouteState.LineSpeed = 0 ;
        StopWheels() ; 
        return  ;
    }

    if ( SysState.ShelfRun.bProfileStart )
    { // Record where profile started, for comparing reached position
        SysState.ShelfRun.bEndGame = 0 ;
        WheelProfiler[0].Done = 0;
        WheelProfiler[1].Done = 0;
        SysState.ShelfRun.EncOnProfileStart[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
        SysState.ShelfRun.EncOnProfileStart[1] = SysState.ManRouteState.WheelEncoderNow[1] ;
        // Initially , un-arm the limit switches
        ArmLimitSw(pLeader, SysState.ShelfRun.RunDirection  );
        ArmLimitSw(pFollower, SysState.ShelfRun.RunDirection   );
        SysState.PoleRun.TargetArmDone  = 1 ;
        SysState.PoleRun.TargetArmRequirement = 7 ;

        SysState.ShelfRun.bProfileStart = 0 ;
    }
    //Dist[0] = (float)(SysState.ManRouteState.WheelEncoderNow[0] - SysState.ShelfRun.EncOnProfileStart[0]);
    //Dist[1] = (float)(SysState.ManRouteState.WheelEncoderNow[1] - SysState.ShelfRun.EncOnProfileStart[1]);
    DistFromStart[0] = (float)(SysState.ManRouteState.WheelEncoderNow[0] - SysState.ShelfRun.EncOnProfileStart[0])* Geom.Calc.WheelEncoder2MeterShelfHoriz ;
    DistFromStart[1] = (float)(SysState.ManRouteState.WheelEncoderNow[1] - SysState.ShelfRun.EncOnProfileStart[1])* Geom.Calc.WheelEncoder2MeterShelfHoriz ;

    if ( SysState.ShelfRun.bEndGame == 0  )
    {
        // Run the profiler and derive the speed command from the profiler
        // If not in end game
//?? No compensation
        AdvanceProfiler(&WheelProfiler[0], dT);
        AdvanceProfiler(&WheelProfiler[1], dT);
        ManRouteCmd.LineSpeedCmd = ( WheelProfiler[0].ProfileSpeed + WheelProfiler[1].ProfileSpeed ) * 0.5f ;
        SysState.ManRouteState.LineSpeed = ManRouteCmd.LineSpeedCmd;

        if ( pLeader->InductiveSensor && ( (SysState.PoleRun.TargetArmDone & 2 ) == 0 ) )
        {
            SysState.ShelfRun.EncoderPosAtSw[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
            SysState.ShelfRun.EncoderPosAtSw[1] = SysState.ManRouteState.WheelEncoderNow[1] ;
            SysState.ShelfRun.EncoderPosTarget[Leader] = pLeader->EncOnInductiveSensor
                    + SysState.ShelfRun.RunDirection * (long) ( Geom.LimitSwitchDistFromJuncShelf * Geom.Calc.Meter2WheelEncoderShelfHoriz );
            SysState.PoleRun.TargetArmDone |= 2 ;
        }
        if ( pFollower->InductiveSensor && ( (SysState.PoleRun.TargetArmDone & 4 ) == 0 ) )
        {
            SysState.ShelfRun.EncoderPosAtSw[0] = SysState.ManRouteState.WheelEncoderNow[0] ;
            SysState.ShelfRun.EncoderPosAtSw[1] = SysState.ManRouteState.WheelEncoderNow[1] ;
            SysState.ShelfRun.EncoderPosTarget[Follower] = pFollower->EncOnInductiveSensor
                    + SysState.ShelfRun.RunDirection * (long) ( Geom.LimitSwitchDistFromJuncShelf * Geom.Calc.Meter2WheelEncoderShelfHoriz );
            SysState.PoleRun.TargetArmDone |= 4 ;
        }
        if ( SysState.PoleRun.TargetArmDone == 7 )
        { // Both switches found
            SetSysTimerTargetSec( TIMER_POS_STABILIZATION_POLE , 0.3f , &SysTimerStr) ;
            SysState.ShelfRun.bEndGame = 1  ;
        }

        if ( SysState.PoleRun.TargetArmDone & 0x6 )
        { // Seen something
            if (( labs( SysState.ManRouteState.WheelEncoderNow[0] - SysState.ShelfRun.EncoderPosAtSw[0] ) * Geom.Calc.WheelEncoder2MeterShelfHoriz > Geom.LimitSwitchDistFromJuncShelf*0.5f ) ||
                    ( labs( SysState.ManRouteState.WheelEncoderNow[1] - SysState.ShelfRun.EncoderPosAtSw[1] ) * Geom.Calc.WheelEncoder2MeterShelfHoriz > Geom.LimitSwitchDistFromJuncShelf*0.5f  )   )
            {
                LogException( OWN_EXP_ID , EXP_ABORT , exp_rescue_travel_found_sw1_only);
            }
        }
        if ( WheelProfiler[0].Done && WheelProfiler[1].Done )
        { // Profile is done before switch sense is complete
            LogException( OWN_EXP_ID , EXP_ABORT , exp_shelf_travel_never_reached_target);
        }

    }

    if ( SysState.ShelfRun.bEndGame )
    {
        ShelfPlayEndGame() ;
    }
    else
    {
        LeaderLeadDist = DistFromStart[Leader] - DistFromStart[Follower] ;
        DeltaSpeed    =  LeaderLeadDist * ControlPars.WheelPosOnRailGain * 0.5f ;
        SetWheelSpeedCmd(pLeader,SysState.ManRouteState.LineSpeed - DeltaSpeed ,Geom.Calc.Meter2MotEncoderShelf ) ;
        SetWheelSpeedCmd(pFollower,SysState.ManRouteState.LineSpeed  + DeltaSpeed ,Geom.Calc.Meter2MotEncoderShelf ) ;
    }

    SysState.ShelfRun.NextStationIsPole = 1 ; // Rescue always looks a pole
    RecordShelfDebugVars() ;
}
