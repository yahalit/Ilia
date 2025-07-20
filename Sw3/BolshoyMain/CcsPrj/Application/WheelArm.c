/*
 * WheelArm.c
 *
 *  Created on: Aug 24, 2022
 *      Author: yahal
 */


#include "StructDef.h"

float solveCosines( float  a, float b , float c )
{
    float d ;
    d =  ( a *a + b * b  - c* c ) / (2.0f*a*b);
    if ( fabsf(d) >= 1.0f  )
    {
        return Pi ;
    }
    return aYcos( d ) ;
}

/*
 * Solve track width M for given leg angle theta
 * L : Nominal shoulder line distance
 * r : Leg length
 * theta1: Angle between leg 1 and perpendicular to L
 * theta2: Angle between leg 2 and perpendicular to L
 */
float SolveActualTrackWidth( float L , float r , float theta1_in , float theta2_in  , float *tilt )
{
    float a , b , theta1 , theta2 , theta_3, theta_4 , TW , u , dir ;

    if ( theta1_in <= theta2_in )
    {
        theta1 = theta1_in ;
        theta2 = theta2_in ;
        dir = 1 ;
    }
    else
    {
        theta1 = theta2_in ;
        theta2 = theta1_in ;
        dir = -1 ;
    }

    a = L + r * (__sin(theta1) +  __sin(theta2));
    b = r * ( __cos(theta1) - __cos(theta2)) ;
    TW = __sqrt(a * a + b * b ) ;
    u = __sqrt( L*L+r*r+2*r*L*__sin(theta1) )  ; // sin(theta1) = -cos( pi/2+theta1)

    theta_3 = solveCosines(u,r,L) ;
    theta_4 = solveCosines(u,TW,r) ;

    *tilt = ( PiHalf - (theta_3 + theta_4 + theta1) ) * dir   ;
    return  TW ;
}

const enum E_WheelArmState WAStateTable[9] = {E_BothExtendActiveError,E_RExtendActive,E_BothExtendActiveError,
                                              E_LExtendActive,E_GroundGood2Go,E_LExtendGood2Go,
                                              E_BothExtendActiveError,E_RExtendGood2Go,E_BothExtendActiveError} ;


float GetTargetWidth(short Width)
{
    return ( (enum E_TrackWidthType)Width == E_TrackWidthExtend) ?  SysState.TrackWidthCtl.ExtendedWidth : SysState.TrackWidthCtl.RetractedWidth ;
}


short IsTrackWidthMisMatch(short Width)
{
    if ( SysState.TrackWidthCtl.WheelArmState == E_GroundGood2Go )
    {
        return (( (enum E_TrackWidthType) Width == E_TrackWidthExtend) ?  1 : 0 ) ;
    }
    else
    {
        return (( (enum E_TrackWidthType) Width == E_TrackWidthExtend) ?  0 : 1 ) ;
    }
}


void GetWheelEncoders(long encs[2])
{
    encs[0] = WheelEncR.Position ;
    encs[1] = WheelEncL.Position ;
}


void InitWheelArm(void)
{
    // Defaults
    SysState.TrackWidthCtl.TrackWidth = 2 * Geom.Center2WheelDist ; // Assumption, default, for now un-based
    SysState.TrackWidthCtl.RetractedWidth = SysState.TrackWidthCtl.TrackWidth ;
    SysState.TrackWidthCtl.ExtendedWidth =  SysState.TrackWidthCtl.TrackWidth ;
    SysState.TrackWidthCtl.LastPinState[LOGICAL_RW] = E_WAPinUndetermined ;
    SysState.TrackWidthCtl.LastPinState[LOGICAL_LW] = E_WAPinUndetermined ;
    SysState.TrackWidthCtl.TrackTilt = 0 ;

    if ( Config.WheelArmType == 0xffff )
    {
        LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_bad_wheelarm_type  )  ;
    }
    else if ( Config.WheelArmType > 0 )
    {
        SysState.TrackWidthCtl.RetractedWidth =
                SolveActualTrackWidth( Geom.WheelArmJointDist , Geom.WheelArmRodLength4Pin , Geom.WheelArmAngleRetract , Geom.WheelArmAngleRetract , &SysState.TrackWidthCtl.TrackTilt ) ;
        SysState.TrackWidthCtl.ExtendedWidth =
                SolveActualTrackWidth( Geom.WheelArmJointDist , Geom.WheelArmRodLength4Pin , Geom.WheelArmAngleRetract , Geom.WheelArmAngleExtend , &SysState.TrackWidthCtl.TrackTilt ) ;
    }

    CheckWheelArmPosition();
}





void GetWheelArmWidthIBIT(void)
{
    CheckWheelArmPositionBody(1) ;
}

void CheckWheelArmPosition(void)
{
    CheckWheelArmPositionBody(0) ;
}

void GetPinState( short unsigned KnowWhereAmI, enum E_LogicalAxe axis , short unsigned IsIbit )
{
    short pos , rawpinstate  ;
    short unsigned tind      ;
    float TravelLimit ;

    if ( axis == LOGICAL_RW )
    {
        pos  = S2M.Items.WheelArm.stat.RPinPos - SysState.WheelArm.WheelArmRZeroCnt ;
        tind = TIMER_R_WHEELARM_FILT ;
        TravelLimit = SysState.WheelArm.RWheelArmLatchTravel ;
    }
    else
    {
        pos = S2M.Items.WheelArm.stat.LPinPos - SysState.WheelArm.WheelArmLZeroCnt ;
        tind = TIMER_L_WHEELARM_FILT ;
        TravelLimit = SysState.WheelArm.LWheelArmLatchTravel ;
    }

    if (KnowWhereAmI )
    {
        rawpinstate = 0 ;
        if ( pos > TravelLimit )
        {
            rawpinstate = 1 ;
        }
        if ( pos < -TravelLimit )
        {
            rawpinstate = -1 ;
        }
        if ( rawpinstate != SysState.TrackWidthCtl.LastPinState[axis])
        {
            SysState.TrackWidthCtl.LastPinState[axis] = rawpinstate;
            SetSysTimerTargetSec(tind, 0.1f, &SysTimerStr);
        }

        if ( IsSysTimerElapse(tind, &SysTimerStr) )
        { // Enough time reading unchanged
            switch (SysState.TrackWidthCtl.LastPinState[axis] )
            {
            case -1:
                SysState.TrackWidthCtl.bPinState[axis] = E_WAPinDisengaged ;
                break ;
            case 1:
                SysState.TrackWidthCtl.bPinState[axis] = E_WAPinEngaged ;
                break ;
            default:
                if ( (SysState.TrackWidthCtl.bPinState[axis] == E_WAPinDisengaged ) || IsIbit )
                { // Can't be disengaged , so we are undetermined
                  // Otherwise motor position tells us nothing so we don't change
                    SysState.TrackWidthCtl.bPinState[axis] = E_WAPinUndetermined ;
                }
                break ;
            }
        }
    }
    else
    {
        SysState.TrackWidthCtl.bPinState[axis] = E_WAPinUndetermined ;
        SysState.TrackWidthCtl.LastPinState[axis] = E_WAPinUndetermined ;
        SetSysTimerTargetSec(tind, 0.1f, &SysTimerStr);
    }
}



void CheckWheelArmPositionBody(short unsigned IsIbit)
{
    short unsigned lstate = 0 ;
    short unsigned rstate = 0 ;
    float rtht , ltht , current ;
    short unsigned ActiveMotor  ;
    enum  E_WheelArmPinDirection ActiveDir ;


    if ( Config.WheelArmType == 0 )
    {
        SysState.TrackWidthCtl.bPinState[LOGICAL_RW] = E_WAPinUndetermined ;
        SysState.TrackWidthCtl.bPinState[LOGICAL_LW] = E_WAPinUndetermined ;
        SysState.TrackWidthCtl.TrackWidth = 2 * Geom.Center2WheelDist ;
        SysState.TrackWidthCtl.TrackTilt = 0 ;
        M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd = 0 ;
        M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd = 0   ;
        M2S.Items.ActCmd.cmd.PinMotorCurrentAmp = 0 ;
        return ;
    }
    if (Config.WheelArmType == 0xffff )
    {
        LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_bad_wheelarm_type  )  ;
        return ;
    }

    if (  (SysState.Package.ManCBit3.Dyn12NetOn == 0) || (SysState.Package.ManCBit3.Dyn12InitDone == 0) )
    {
        SysState.TrackWidthCtl.bPinState[LOGICAL_LW] = E_WAPinUndetermined ;
        SysState.TrackWidthCtl.bPinState[LOGICAL_RW] = E_WAPinUndetermined ;
        if ( ( SysState.WakeupState == E_CAN_WAKEUP_OPERATIONAL ) && (SysState.Debug.bAllowMotionUndeterminedWheelArm == 0 ) )
        {
            LogException( OWN_EXP_ID,EXP_ABORT,exp_wheelarm_net_down  )  ;
        }
        return ;
    }

    GetPinState( S2M.Items.WheelArm.stat.LStatus.bit.KnowWhereAmI, LOGICAL_LW , IsIbit ) ;
    GetPinState( S2M.Items.WheelArm.stat.RStatus.bit.KnowWhereAmI, LOGICAL_RW , IsIbit ) ;

    ltht   = SysState.TrackWidthCtl.RodAngle[LOGICAL_LW] ;
    //if ( (M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd == (unsigned short) E_DoNothing ) &&
    //        (SysState.TrackWidthCtl.bPinState[LOGICAL_LW] == E_WAPinEngaged ) && ( S2M.Items.WheelArm.stat.LStatus.bit.MotorOn == 0 ) )
    if ( SysState.TrackWidthCtl.bPinState[LOGICAL_LW] == E_WAPinEngaged )
    {
        if ( fabsf( ltht  - Geom.WheelArmAngleExtend) <= Geom.WheelArmAngleTolerance )
        { // Within range
            lstate |= 2 ;
            ltht = Geom.WheelArmAngleExtend ;
        }
        else if ( fabsf( ltht  - Geom.WheelArmAngleRetract) <= Geom.WheelArmAngleTolerance )
        { // Within range
            lstate |= 1 ;
            ltht  = Geom.WheelArmAngleRetract ;
        }
    }

    rtht   = SysState.TrackWidthCtl.RodAngle[LOGICAL_RW] ;
    //if ((M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd == (unsigned short) E_DoNothing ) &&
    //        ( SysState.TrackWidthCtl.bPinState[LOGICAL_RW] == E_WAPinEngaged ) && ( S2M.Items.WheelArm.stat.LStatus.bit.MotorOn == 0 ) )
    if ( SysState.TrackWidthCtl.bPinState[LOGICAL_RW] == E_WAPinEngaged )
    {
        if ( fabsf( rtht  - Geom.WheelArmAngleExtend) <= Geom.WheelArmAngleTolerance )
        { // Within range
            rstate |= 2 ;
            rtht = Geom.WheelArmAngleExtend ;
        }
        else if ( fabsf( rtht  - Geom.WheelArmAngleRetract) <= Geom.WheelArmAngleTolerance)
        { // Within range
            rstate |= 1 ;
            rtht = Geom.WheelArmAngleRetract ;
        }
    }

    SysState.TrackWidthCtl.WheelArmState  = WAStateTable[lstate+3*rstate];

/*
    if ( SysState.Debug.bDebugWheelArm )
    { // In debug mode don't check width
        SysState.TrackWidthCtl.WheelArmState  = E_GroundGood2Go ;
    }
    else
    {
        SysState.TrackWidthCtl.WheelArmState  = WAStateTable[lstate+3*rstate];
    }
*/

    SysState.TrackWidthCtl.TrackWidth =
            SolveActualTrackWidth( Geom.WheelArmJointDist , Geom.WheelArmRodLength4Pin , rtht , ltht , &SysState.TrackWidthCtl.TrackTilt ) ;

    if ( SysState.Debug.bDebugWheelArm  )
    {
        ActiveMotor = SysState.Debug.ActivePinMotor & 3  ;
        ActiveDir   = SysState.Debug.ActivePinDirection  ;
        current     = SysState.Debug.PinMotorCurrentAmp  ;
    }
    else
    {
        if ( SysState.TrackWidthCtl.IBitState == 0 )
        {
            ActiveMotor = SysState.TrackWidthCtl.ActivePinMotor ;
            ActiveDir   = SysState.TrackWidthCtl.ActivePinDirection;
            current     = Geom.PinMotorCurrentAmp  ;
        }
        else
        {
            return ;
        }
    }
    // Prevent work on fault mode
    if (  SysState.Mot.mode < E_SysMotionModeMotorOff )
    {
        ActiveMotor = 0 ; current = 0 ;
    }

    switch ( ActiveMotor)
    {
    case LOGICAL_RW+1:
        M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd = 0 ;
        M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd = ActiveDir   ;
        M2S.Items.ActCmd.cmd.PinMotorCurrentAmp = current ;
        break ;
    case LOGICAL_LW+1:
        M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd = ActiveDir    ;
        M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd = 0  ;
        M2S.Items.ActCmd.cmd.PinMotorCurrentAmp = current ;
       break ;
    default:
        M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd = 0  ;
        M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd = 0  ;
        M2S.Items.ActCmd.cmd.PinMotorCurrentAmp = 0 ;
    }

}


short IsWheelArmActive(void)
{
    if (M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd  || M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd
        || S2M.Items.WheelArm.stat.RStatus.bit.MotorOn || S2M.Items.WheelArm.stat.LStatus.bit.MotorOn )
    {
        return 1 ;
    }
    return 0 ;
}


/*
 * Function InitTrackWidthAdjust:
 * Prepare track width adjustment, to the up direction
 * Arguments:
 * NextSubMode:  Sub mode to go after track width is adjusted
 * Target     :  enum E_TrackWidthType for retracted or extended desired result
 * Axis       : LOGICAL_RW or LOGICAL_LW
 */

enum E_LogicalAxe GetOtherAxis(enum E_LogicalAxe ax )
{
    return ( ax == LOGICAL_RW ) ? LOGICAL_LW : LOGICAL_RW ;
}

const short  WAStateGoodToGoTable[5] = {1,1,1,0,0} ;


short IsWheelArmGoodToGo(short IsShelf)
{
    (void) IsShelf ;
    /*
    if ( IsShelf == 0 )
    {
        return (SysState.TrackWidthCtl.WheelArmState  == E_GroundGood2Go) ? 1 : 0 ;
    }
    */
    if ( (short)SysState.TrackWidthCtl.WheelArmState < 0 || SysState.TrackWidthCtl.WheelArmState >= 5)
    {
        return 0 ;
    }

    return (short )WAStateGoodToGoTable[SysState.TrackWidthCtl.WheelArmState];
}


short InitTrackWidthAdjust(short unsigned NextSubMode, enum E_TrackWidthType Target, enum E_LogicalAxe LeaderAxis  )
{
    long WheelEncoderNow[2] ;
    GetWheelEncoders(WheelEncoderNow) ;

    // Verify we are good to go; if the demand is trivial (already there) just exit the mode for the next
    if ( Config.WheelArmType == 0 )
    {
        if ( Target != E_TrackWidthRetract)
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_supported  )  ;
            return -1; // Error
        }
        return 0; //OK, nothing to do
    }

    //if ( Direction > 0 )
    //{
        SysState.TrackWidthCtl.Axis      = LeaderAxis ;
        SysState.TrackWidthCtl.OtherAxis = GetOtherAxis(LeaderAxis) ;
    //}
    //else
    //{
    //    SysState.TrackWidthCtl.Axis      = GetOtherAxis(LeaderAxis)  ;
    //    SysState.TrackWidthCtl.OtherAxis = LeaderAxis ;
    //}

    switch ( SysState.TrackWidthCtl.WheelArmState )
    {
    case E_GroundGood2Go:
        if ( Target == E_TrackWidthRetract)
        {
            return 0; //OK, nothing to do
        }
        break ;


    case E_RExtendGood2Go:
        if ( SysState.TrackWidthCtl.Axis != LOGICAL_RW)
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_ready1  )  ;
            return -1;
        }
        if ( Target == E_TrackWidthExtend)
        {
            return 0; //OK ,thing to do
        }
        break ;

    case E_LExtendGood2Go:
        if ( SysState.TrackWidthCtl.Axis != LOGICAL_LW)
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_ready2  )  ;
            return -1;
        }
        if ( Target == E_TrackWidthExtend)
        {
            return 0; //ok
        }
        break ;
    default:
        if   ( S2M.Items.WheelArm.stat.LStatus.bit.KnowWhereAmI &&  S2M.Items.WheelArm.stat.RStatus.bit.KnowWhereAmI)
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_ready3  )  ;
        }
        else
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_ready6  )  ;
        }

        return -1;
    }

    if ( SysState.Debug.bAllowManualWheelArm == 0 )
    {
        if ( ManRouteCmd.ShelfMode != E_ShelfArc)
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_ready4  )  ;
            return -1 ;
        }

        if ( (ManRouteCmd.ShelfSubMode != E_ShelfArc_SubMode_PoleCruise)&&(ManRouteCmd.ShelfSubMode != E_ShelfArc_SubMode_InterPoleCruise)
                && (ManRouteCmd.ShelfSubMode != E_ShelfArc_SubMode_UnclimbWaitSwitch) )
        {
            LogException( OWN_EXP_ID,EXP_SAFE_FATAL,exp_wheelarm_not_ready5  )  ;
            return -1 ;
        }
    }

    SysState.TrackWidthCtl.StartWheelPosition[0] = WheelEncoderNow[0] ;
    SysState.TrackWidthCtl.StartWheelPosition[1] = WheelEncoderNow[1] ;
    SysState.TrackWidthCtl.NextMode = NextSubMode ;
    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_TrackWidthAdjust; // Must adjust the robot width before entering shelf
    SysState.TrackWidthCtl.Target = Target ;

    SetWheelArmPinState( SysState.TrackWidthCtl.Axis , E_ReleasePin ) ;
    SysState.TrackWidthCtl.IsReleased = 0 ;
    ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_StartPinMotor;

    // Spare enough time for dynamixel to start
    SysState.TrackWidthCtl.tOutCnt = (long) (1.7f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));

     //SysState.TrackWidthCtl.RockingBias = ControlPars.WheelArmPinReleaseRockingBias ;
    if (SysState.Debug.bRecorder4WheelArm & 0x2 )
    {
        ActivateProgrammedRecorder() ;
    }

    SysState.TrackWidthCtl.bActive = 1 ;

    return 1 ;

 }




// Set active wheel arm motor
// ActiveMotor : 0: None 1: Right 2: Left
void SetWheelArmPinState( enum E_LogicalAxe Axis , enum  E_WheelArmPinDirection Direction  )
{
    if ( Direction == E_DoNothing )
    {
        SysState.TrackWidthCtl.ActivePinMotor     = 0  ;  ;
        SysState.TrackWidthCtl.ActivePinDirection = Direction ;
        return ;
    }

    SysState.TrackWidthCtl.ActivePinMotor     = (short unsigned)Axis + 1 ;  ;
    SysState.TrackWidthCtl.ActivePinDirection = Direction ;
}

/*
 * Completion indication of wheel arm sequence:
 * Either control is inactive, or mode is set to to fault
 */
short IsWheelArmDone()
{
    if ( (SysState.Mot.mode <= E_SysMotionModeFault) || (SysState.TrackWidthCtl.bActive==0))
    {
        return 1 ;
    }
    return 0 ;
}

#pragma FUNCTION_OPTIONS ( GetWArmModes, "--opt_level=3" );
long unsigned GetWArmModes()
{
    return( ( SysState.TrackWidthCtl.bPinState[LOGICAL_RW] & 3) + (( SysState.TrackWidthCtl.bPinState[LOGICAL_LW] & 3) <<2)+
            ((SysState.TrackWidthCtl.WheelArmState & 0xf) << 4) + ((SysState.TrackWidthCtl.Axis & 3 ) << 8 )
            + ((SysState.TrackWidthCtl.OtherAxis & 3 ) <<10 ) + ( (ManRouteCmd.ShelfSubSubMode & 0xf) << 12 )
            + (((long unsigned)SysState.TrackWidthCtl.tOutCnt & 0x7ff ) << 16 ) + (( (long unsigned)SysState.PoleRun.TargetArmDone & 7 ) << 28 )
            + (((long unsigned)SysState.TrackWidthCtl.bActive & 1 ) << 31)) ;
}

void RecordWheelArmVars(void)
{
    long WheelEncoderNow[2] ;
    if ( SysState.Debug.bRecorder4WheelArm & 0x1 )
    {
        GetWheelEncoders(WheelEncoderNow) ;

        SysState.fDebug[0] = SysState.TrackWidthCtl.RodAngle[0] ;
        SysState.fDebug[1] = SysState.TrackWidthCtl.RodAngle[1] ;
        SysState.fDebug[2] = SysState.TrackWidthCtl.TrackWidth ;
        SysState.fDebug[3] = SysState.CanAxis[SysState.TrackWidthCtl.Axis].BH.UserSpeedCmd ;
        SysState.fDebug[4] = SysState.TrackWidthCtl.TrackTilt ;
        lDebug[0] = GetWArmModes() ;
        lDebug[1] = SysState.TrackWidthCtl.LeaderTarget ;
        //lDebug[2] = ( ((long)(S2M.Items.WheelArm.stat.RPinPos - SysState.WheelArm.WheelArmRZeroCnt)+65536L)) & 0x3ff ) +
        // + (( ((long)(S2M.Items.WheelArm.stat.RPinPos - SysState.WheelArm.WheelArmRZeroCnt)+65536L)) & 0x3ff ) << 10 );

        if ( SysState.TrackWidthCtl.Axis == 0 )
        {
            lDebug[2] = SysState.ManRouteState.errPos[0] ;
            lDebug[3] = WheelEncoderNow[0];
            lDebug[4] = S2M.Items.WheelArm.stat.RPinPos - SysState.WheelArm.WheelArmRZeroCnt ;
        }
        else
        {
            lDebug[2] = SysState.ManRouteState.errPos[1] ;
            lDebug[3] = WheelEncoderNow[1];
            lDebug[4] = S2M.Items.WheelArm.stat.LPinPos - SysState.WheelArm.WheelArmLZeroCnt ;
        }
    }
}


void PoleTrackWidthAdjustFailure( short unsigned exp)
{
    ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_Failure ;
    SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 1.9f, &SysTimerStr);
    SetWheelArmPinState( SysState.TrackWidthCtl.Axis , E_DoNothing ) ;
    SetWheelArmPinState( SysState.TrackWidthCtl.OtherAxis , E_DoNothing ) ;
    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_ClimbError ;
    ManRouteCmd.ShelfSubSubMode = 0 ;
    LogException(OWN_EXP_ID, EXP_SAFE_FATAL, exp);
}


static short PoleTrackWidthReleasePin(float dT)
{
    short unsigned Leader   = SysState.TrackWidthCtl.Axis ;
     short unsigned Follower = SysState.TrackWidthCtl.OtherAxis ;
     short RetVal ;
     long WheelEncoderNow[2] ;
     union UWheelArmStat PinStatus ;
     struct CCanAxis * pLeader = &SysState.CanAxis[Leader];
     struct CCanAxis * pFollower = &SysState.CanAxis[Follower] ;
     (void) dT ;
     //(void) dT ;
     RetVal = 0 ;

     GetWheelEncoders(WheelEncoderNow) ;
     //SysState.ManRouteState.ArcDistance[Leader]   += ( SysState.ManRouteState.WheelEncoderLastCycleDist[Leader] * Geom.Calc.WheelEncoder2MeterShelf ) ;
     //SysState.ManRouteState.ArcDistance[Follower] += ( SysState.ManRouteState.WheelEncoderLastCycleDist[Follower] * Geom.Calc.WheelEncoder2MeterShelf ) ;

     PinStatus = ( SysState.TrackWidthCtl.Axis == LOGICAL_RW) ? S2M.Items.WheelArm.stat.RStatus : S2M.Items.WheelArm.stat.LStatus ;

     if ( PinStatus.bit.MotorFault )
     {
         PoleTrackWidthAdjustFailure(  exp_exp_in_wheelarm_pin);
         return -1;
     }

     SetWheelSpeedCmd(pFollower , 0, 0 );
     //SysState.CanAxis[Follower].DFT.SpeedCmd = 0 ;
     SysState.Mot.bBrakeWheel[Follower] =  1 ;
 #ifdef WARM_WAIT_USER_RELEASE
     if ( SysState.Debug.bWaitUser )
     {
         SetWheelSpeedCmd(pLeader , 0, 0 );
         return ;
     }
 #endif


/*
 * Preliminary game - wait latch motor start
 */
     if (ManRouteCmd.ShelfSubSubMode==E_SubMode_TrackWidthAdjust_StartPinMotor)
     {
         if ( PinStatus.bit.MotorOn )
         {

             ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_OpenPin_Stretch;

             // The rocking amplitude in radians must be multiplied by the arm length, 0.25 to 0.4
             // so 0.01rad is equivalent to 0.0025 (2.5mm) of release motion
             // 20mrad is 5mm each direction which should suffice

             //SysState.TrackWidthCtl.RockingAmplitude = ControlPars.WheelArmPinReleaseRockingAmplitude;
             //SysState.TrackWidthCtl.RockingPhase = 0 ;
             SysState.TrackWidthCtl.FollowerEncoderOnSubSubStart = WheelEncoderNow[Follower] ;
             SysState.TrackWidthCtl.tOutCnt = (long) (10.0f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
             //SysState.TrackWidthCtl.tOutCnt2 = (long) (1.0f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
    #ifdef WARM_WAIT_USER_RELEASE
             {
                 SysState.Debug.bWaitUser = 1 ;
             }
    #endif
         }
         if ( SysState.TrackWidthCtl.tOutCnt )
         {
             SysState.TrackWidthCtl.tOutCnt -= 1 ;
         }
         else
         {
             PoleTrackWidthAdjustFailure(  exp_cant_motoron_wheelarm_pin);
             RetVal = (-1);
         }
         SetWheelSpeedCmd(pLeader , 0, 0 );
         return RetVal;
     }

     // Test robot falls - follower moved significantly since mode start
     if ( fabsf(( WheelEncoderNow[Follower] - SysState.TrackWidthCtl.FollowerEncoderOnSubSubStart ) * Geom.Calc.WheelEncoder2MeterShelfVert) > 0.05f )
     {
         PoleTrackWidthAdjustFailure(  exp_wheelarm_pin_hold_loss);
         return -1;
     }

     switch (ManRouteCmd.ShelfSubSubMode)
     {

     case E_SubMode_TrackWidthAdjust_OpenPin_Stretch:
         // rock until release
         if ( SysState.TrackWidthCtl.tOutCnt  )
         {

             SysState.TrackWidthCtl.tOutCnt -= 1 ;
             // It is possible that the wheel motor just cannot create the tension
             // If the wheel cannot move up: go down on the double
             //SysState.TrackWidthCtl.tOutCnt2 -= 1 ;
             //if ( WheelEncoderNow[Leader] > SysState.TrackWidthCtl.EncoderOnSubSubStart + 0.002f * Geom.Calc.Meter2WheelEncoderShelf ) ??
             //{
             //    SysState.TrackWidthCtl.EncoderOnSubSubStart = WheelEncoderNow[Leader] ;
             //    SysState.TrackWidthCtl.tOutCnt2 = (long) (1.0f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
             //}
         }
         else
         {
             PoleTrackWidthAdjustFailure(  exp_cant_rock_wheel_arm_pin_out_up);
             return -1;
         }

         if ( SysState.TrackWidthCtl.bPinState[Leader] == E_WAPinDisengaged )
         { // Finished - pin is released
             //SysState.TrackWidthCtl.LeaderTarget  = SysState.TrackWidthCtl.StartWheelPosition[Leader] ; //
             //SysState.TrackWidthCtl.LeaderTarget  = SysState.TrackWidthCtl.StartWheelPosition[Leader]  -
             //        (long)( (SysState.TrackWidthCtl.ExtendedWidth - SysState.TrackWidthCtl.RetractedWidth - SysState.TrackWidthCtl.GlideDistance ) *  Geom.Calc.Meter2WheelEncoderShelf)  ;

             SysState.TrackWidthCtl.tOutCnt = (long) ( 2.5f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
             SysState.TrackWidthCtl.LineSpeed = 0 ;
             ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLeader_Release;
             SetWheelSpeedCmd(pLeader , 0, 0 );
             RetVal = 1 ;
 #ifdef WARM_WAIT_USER_RELEASE
             {
                 SysState.Debug.bWaitUser = 1 ;
             }
 #endif
         }
         else
         {
             // Play by rubber tension
             if  ( pLeader->BH.TorqueFilt < ControlPars.WheelArmPinReleaseCurrentTarget+1.0f ) // (SysState.NeckDiff) < 0 && (SysState.TrackWidthCtl.tOutCnt2 > 0)
             {
                 SetWheelSpeedCmd(pLeader , ControlPars.WheelArmPinReleaseRockingSpeed, Geom.Calc.Meter2MotEncoderShelf );
             }
             else
             {
                 SysState.TrackWidthCtl.tOutCnt = (long) (5.0f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
                 SysState.TrackWidthCtl.StuckTime = 0 ;
                 SysState.TrackWidthCtl.StuckPosSet = 0 ;
                 SysState.TrackWidthCtl.StuckPos  = WheelEncoderNow[Follower]  ;
                 ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_OpenPin_Compress;
                 SetWheelSpeedCmd(pLeader , 0, 0 );
             }
          }

         break ;

     case E_SubMode_TrackWidthAdjust_OpenPin_Compress:
         // rock until release
         if ( SysState.TrackWidthCtl.tOutCnt  ) // (SysState.NeckDiff > -ControlPars.WheelArmPinReleaseRockingStretch) )
         {
             SysState.TrackWidthCtl.tOutCnt -= 1 ;
         }
         else
         {
             PoleTrackWidthAdjustFailure(  exp_cant_rock_wheelarm_pin_out_dn);
             return -1;
         }

         if ( SysState.TrackWidthCtl.bPinState[Leader] == E_WAPinDisengaged )
         { // Finished - pin is released
             //SysState.TrackWidthCtl.LeaderTarget  = SysState.TrackWidthCtl.StartWheelPosition[Leader] ; //
             //SysState.TrackWidthCtl.LeaderTarget  = SysState.TrackWidthCtl.StartWheelPosition[Leader]  -
             //        (long)( (SysState.TrackWidthCtl.ExtendedWidth - SysState.TrackWidthCtl.RetractedWidth - SysState.TrackWidthCtl.GlideDistance ) *  Geom.Calc.Meter2WheelEncoderShelf)  ;

             SysState.TrackWidthCtl.tOutCnt = (long) ( 2.5f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
             SysState.TrackWidthCtl.LineSpeed = 0 ;
             ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLeader_Release;
             SetWheelSpeedCmd(pLeader , 0, 0 );
             RetVal = 1 ;

 #ifdef WARM_WAIT_USER_RELEASE
             {
                 SysState.Debug.bWaitUser = 1 ;
             }
 #endif
         }
         else
         {
             if ( SysState.TrackWidthCtl.StuckPosSet ==  0)
             {
                 if ( fabsf ( SysState.TrackWidthCtl.StuckPos  - WheelEncoderNow[Leader]  ) * Geom.Calc.WheelEncoder2MeterShelfVert < 0.003f )
                 {
                     SysState.TrackWidthCtl.StuckTime += 1 ;
                 }
                 else
                 {
                     // Was motion , start the stuck time count
                     SysState.TrackWidthCtl.StuckTime = 0  ;
                     SysState.TrackWidthCtl.StuckPos  =  WheelEncoderNow[Leader] ;
                 }

                 if (pLeader->BH.TorqueFilt > ControlPars.WheelArmPinReleaseCurrentTarget )
                 {
                     SetWheelSpeedCmd(pLeader , -ControlPars.WheelArmPinReleaseRockingSpeed, Geom.Calc.Meter2MotEncoderShelf  );
                     SysState.TrackWidthCtl.StuckTime = __lmax(SysState.TrackWidthCtl.StuckTime,3) - 3 ;
                 }
                 else
                 {

                     SetWheelSpeedCmd(pLeader , 0, 0 ); // Don't let the torque become negative, over-stressing the other wheel
                     if ( SysState.TrackWidthCtl.StuckTime > 72 )
                     {
                         SysState.TrackWidthCtl.StuckPosSet = 1 ;
                     }
                 }
             }
             else
             {
                 if ( (SysState.TrackWidthCtl.StuckPos  - WheelEncoderNow[Leader]  ) * Geom.Calc.WheelEncoder2MeterShelfVert < 0.01 )
                 {
                     SetWheelSpeedCmd(pLeader , -ControlPars.WheelArmPinReleaseRockingSpeed, Geom.Calc.Meter2MotEncoderShelf );
                 }
                 else
                 {
                     SetWheelSpeedCmd(pLeader , 0, 0 );// Don't let the torque become negative, over-stressing the other wheel
                 }
             }

         }

         break ;
     }
     return RetVal  ;
}


static void PoleTrackWidthRetract(float dT)
{
    short unsigned Leader   = SysState.TrackWidthCtl.Axis ;
    short unsigned Follower = SysState.TrackWidthCtl.OtherAxis ;
    float errm ,t0 , a, SpeedSat , vt ;
    long WheelEncoderNow[2] ;
    union UWheelArmStat PinStatus ;
    struct CCanAxis * pLeader = &SysState.CanAxis[Leader];
    struct CCanAxis * pFollower = &SysState.CanAxis[Follower] ;
    //(void) dT ;

    GetWheelEncoders(WheelEncoderNow) ;

    PinStatus = ( SysState.TrackWidthCtl.Axis == LOGICAL_RW) ? S2M.Items.WheelArm.stat.RStatus : S2M.Items.WheelArm.stat.LStatus ;


#ifdef WARM_WAIT_USER_RETRACT
     if (SysState.Debug.bWaitUser )
     {
         StopWheels() ;
         return ;
     }
#endif

    if ( PinStatus.bit.MotorFault )
    {
        PoleTrackWidthAdjustFailure(  exp_exp_in_wheelarm_pin);
        return ;
    }

    SetWheelSpeedCmd(pFollower , 0, 0 );

    if ( SysState.TrackWidthCtl.IsReleased == 0 )
    {
        SysState.TrackWidthCtl.IsReleased = PoleTrackWidthReleasePin(dT);
        if ( SysState.TrackWidthCtl.IsReleased > 0 )
        {
            SysState.TrackWidthCtl.LeaderTarget  = SysState.TrackWidthCtl.StartWheelPosition[Leader]  -
                    (long)( (SysState.TrackWidthCtl.ExtendedWidth - SysState.TrackWidthCtl.RetractedWidth - SysState.TrackWidthCtl.GlideDistance ) *  Geom.Calc.Meter2WheelEncoderShelfVert)  ;
        }
        return ;
    }


    // With the pin released, move the leader down till pin catches.
    // Follower must stay brake-locked
    SysState.Mot.bBrakeWheel[Follower] =  1 ;

    switch (ManRouteCmd.ShelfSubSubMode)
    {
    case E_SubMode_TrackWidthAdjust_TravelLeader_Release:
        // Travel leader to place
        SysState.ManRouteState.errPos[Leader]  = SysState.TrackWidthCtl.LeaderTarget - WheelEncoderNow[Leader];

        a = AutomaticRunPars.PoleLineAcc * 0.3f ;
        t0 = 0.1f ; // Assumption for control delay
        vt = SysState.TrackWidthCtl.GlideSpeed ;

        errm  = SysState.ManRouteState.errPos[Leader]  * Geom.Calc.WheelEncoder2MeterShelfVert ;
        SpeedSat =  __fmin( -(a * t0) + sqrtf(a * a * t0 * t0 + 2 * fabsf(errm * a)+vt*vt), 0.15f ) * Geom.Calc.Meter2WheelEncoderShelfVert;
        SysState.TrackWidthCtl.LineSpeed = __fmin(SysState.TrackWidthCtl.LineSpeed+a*dT,SpeedSat ) ;

        SetWheelSpeedCmd(pLeader , SysState.TrackWidthCtl.LineSpeed  *  ( errm > 0 ? 1 : -1 ) , Geom.Calc.Meter2MotEncoderShelf );
        //SysState.CanAxis[Leader].DFT.SpeedCmd   = (long) ( SysState.TrackWidthCtl.LineSpeed  * Geom.Calc.Meter2MotEncoderShelf ) * ( errm > 0 ? 1 : -1 ) ;
        SysState.TrackWidthCtl.tOutCnt = __lmax( SysState.TrackWidthCtl.tOutCnt - 1 , 0 ) ;

        // Test convergence of position errors
        if ( fabsf( SysState.ManRouteState.errPos[Leader] *  Geom.Calc.WheelEncoder2MeterShelfVert )< 0.0025f)
        {
            // SysState.TrackWidthCtl.tOutCnt = (long) (0.4f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
            SysState.TrackWidthCtl.tOutCnt = (long) (10.0f / ( (float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
           SetWheelArmPinState( SysState.TrackWidthCtl.Axis , E_EngagePin ) ;
            SysState.TrackWidthCtl.LeaderTarget = SysState.TrackWidthCtl.LeaderTarget -
                    (SysState.TrackWidthCtl.GlideDistance + SysState.TrackWidthCtl.GlideMaxOverShoot) * Geom.Calc.Meter2WheelEncoderShelfVert  ;
#ifdef WARM_WAIT_USER_RETRACT
            {
                SysState.Debug.bWaitUser = 2 ;
            }
#endif
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLeader_Final;
        }

        if (SysState.TrackWidthCtl.tOutCnt == 0  )
        {
            PoleTrackWidthAdjustFailure(  exp_cant_set_wheelarm_2_lockpos);
            return ;
        }
        break ;

    case E_SubMode_TrackWidthAdjust_TravelLeader_Final:

         // Time out
        SysState.ManRouteState.errPos[Leader]  = SysState.TrackWidthCtl.LeaderTarget - WheelEncoderNow[Leader];
        if ( SysState.TrackWidthCtl.tOutCnt && (SysState.ManRouteState.errPos[Leader] <  0 ))
        {
            SysState.TrackWidthCtl.tOutCnt -= 1 ;
        }
        else
        {
            PoleTrackWidthAdjustFailure(  exp_cant_rock_wheelarm_pin_in);
            return ;
        }

        if (  SysState.TrackWidthCtl.bPinState[Leader] == E_WAPinEngaged )
        {
            //SysState.CanAxis[Leader].DFT.SpeedCmd = 0 ;
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLatchFix ;
            // Make sure that switch is caught tight by traveling a little more
            SysState.TrackWidthCtl.tOutCnt = (long) ( SysState.TrackWidthCtl.ExtraGlide4Latch / ( __fmax(SysState.TrackWidthCtl.GlideSpeed,0.005)*(float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f));
            SysState.TrackWidthCtl.WheelEncoderOnLatch = WheelEncoderNow[Leader] ;
#ifdef WARM_WAIT_USER_RETRACT
            {
                SysState.Debug.bWaitUser = 4 ;
            }
#endif
        }
        //else
        {
            SetWheelSpeedCmd(pLeader ,-SysState.TrackWidthCtl.GlideSpeed,Geom.Calc.Meter2MotEncoderShelf) ;
            //SysState.CanAxis[Leader].DFT.SpeedCmd   = -(long) ( SysState.TrackWidthCtl.GlideSpeed  * Geom.Calc.Meter2MotEncoderShelf )   ;
        }
        break ;
    case E_SubMode_TrackWidthAdjust_TravelLatchFix:
        // Just travel a little bit more to fix the latch
        SetWheelSpeedCmd(pLeader , -SysState.TrackWidthCtl.GlideSpeed, Geom.Calc.Meter2MotEncoderShelf );

        //SysState.CanAxis[Leader].DFT.SpeedCmd = -(long) ( SysState.TrackWidthCtl.GlideSpeed  * Geom.Calc.Meter2MotEncoderShelf )   ;
//        if ( SysState.TrackWidthCtl.tOutCnt && (SysState.NeckDiff > -ControlPars.WheelArmPinReleaseRockingStretch) )
        if ( SysState.TrackWidthCtl.tOutCnt && (fabsf(SysState.TrackWidthCtl.WheelEncoderOnLatch = WheelEncoderNow[Leader] )< ControlPars.WheelArmPinLockPosStretch))
        {
            SysState.TrackWidthCtl.tOutCnt -= 1 ;
        }
        else
        {
            SysState.TrackWidthCtl.tOutCnt = (long) (0.3f /(float)(SPI_CYC_IN_C * FAST_TS_USEC*2)*1e-6f);
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_AlmostDone ;
        }
        break ;

    case E_SubMode_TrackWidthAdjust_AlmostDone:
        // Final stop
        SetWheelSpeedCmd(pLeader , 0, 0 );
        if ( SysState.TrackWidthCtl.tOutCnt )
        {
            SysState.TrackWidthCtl.tOutCnt -= 1 ;
        }
        else
        {
            SetWheelArmPinState( SysState.TrackWidthCtl.Axis , E_DoNothing ) ;
            SetWheelArmPinState( SysState.TrackWidthCtl.OtherAxis , E_DoNothing ) ;
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_Done ;
            SysState.Mot.bBrakeWheel[Follower] =  0  ;
        }

    case E_SubMode_TrackWidthAdjust_Done:
        SetWheelSpeedCmd(pLeader , 0, 0 );
        SysState.TrackWidthCtl.bActive = 0 ;
        SysState.Mot.bBrakeWheel[Follower] =  0  ;
        break;

    case E_SubMode_TrackWidthAdjust_Failure:
        SetWheelSpeedCmd(pLeader , 0, 0 );
        SysState.TrackWidthCtl.bActive = 0 ;
        SysState.Mot.bBrakeWheel[Follower] =  0  ;
        break;
    }
}

/*
 * Get the speed command from position error and required terminal speed
 */
void GetSpeedCmdForPerr( float ErrorShelfMeters, float vmax , float vt , float dT , float *SpeeCmdMotEncSec  )
{
    float dVMotEncSec ;
    float a = AutomaticRunPars.PoleLineAcc * 0.3f ;
    float t0 = 0.1f ;
    float  SpeedSatMeterSec ;
    if ( ErrorShelfMeters * vmax > 0  )
    {
        t0 = __fmin(t0,ErrorShelfMeters/ __fmax(vmax,1e-6f) ) ;
    }
    else
    {
        t0 = 0 ;
    }

    SpeedSatMeterSec =  __fmin( -(a * t0) + __sqrt(a * a * t0 * t0 + 2 * fabsf(ErrorShelfMeters * a)+vt*vt), fabsf(vmax) ) ;

    dVMotEncSec = a * dT * Geom.Calc.Meter2MotEncoderShelf;
    if ( ErrorShelfMeters >= 0 )
    {
        *SpeeCmdMotEncSec =   __fmin(
                __fmin(ControlPars.WheelPosOnPoleGain * ErrorShelfMeters, SpeedSatMeterSec) * Geom.Calc.Meter2MotEncoderShelf  ,
                *SpeeCmdMotEncSec + dVMotEncSec )  ;
    }
    else
    {
        *SpeeCmdMotEncSec =   __fmax(
                __fmax(ControlPars.WheelPosOnPoleGain * ErrorShelfMeters, -SpeedSatMeterSec) * Geom.Calc.Meter2MotEncoderShelf  ,
                *SpeeCmdMotEncSec - dVMotEncSec )  ;
    }
}

/*
 * Manage the wheel arm extension state machine
 * After release of pin, follower travels down, till pin catches
 */
static void PoleTrackWidthExtend(float dT)
{
    short unsigned Leader   = SysState.TrackWidthCtl.Axis ;
    short unsigned Follower = SysState.TrackWidthCtl.OtherAxis ;
    float  deltaArc , FollowerError;
    long WheelEncoderNow[2] , GlidePoint  , LatchOpenPoint  ;
    union UWheelArmStat PinStatus ;

    GetWheelEncoders(WheelEncoderNow) ;


    PinStatus = ( SysState.TrackWidthCtl.Axis == LOGICAL_RW) ? S2M.Items.WheelArm.stat.RStatus : S2M.Items.WheelArm.stat.LStatus ;


    if ( PinStatus.bit.MotorFault )
    {
        PoleTrackWidthAdjustFailure(  exp_exp_in_wheelarm_pin);
        return ;
    }

#ifdef WARM_WAIT_USER_EXETEND
     if ( SysState.Debug.bWaitUser )
     {
         StopWheels();
         return ;
     }
#endif

    if ( SysState.TrackWidthCtl.IsReleased <= 0 )
    { // First stage - releasing a locked pin
        SysState.TrackWidthCtl.IsReleased = PoleTrackWidthReleasePin(dT);
        //if ( SysState.TrackWidthCtl.IsReleased > 0 )
        //{ // If released - next leader target is towards the junction center
          // SysState.ManRouteState.WheelEncoderTarget[Leader] is still valid from the preceding start point access
            //SysState.TrackWidthCtl.LeaderTarget  = SysState.TrackWidthCtl.StartWheelPosition[LeaderTarget] ;
        //}
         SysState.TrackWidthCtl.tOutCnt = (long) (3.0e6f /(float)(SPI_CYC_IN_C * FAST_TS_USEC*2));

        if ( SysState.TrackWidthCtl.IsReleased  > 0  )
        {
            SetSysTimerTargetSec ( TIMER_WHARM_STAB , 0.1f , &SysTimerStr ) ;
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLeader_Release ;
#ifdef WARM_WAIT_USER_EXETEND
             //SysState.Debug.bWaitUser  = 1  ;
#endif
        }
        return ;
    }

    // Leader movement to junction fix , very near where mode started ,can be up or down motion (normally up)
    if ( ManRouteCmd.ShelfSubSubMode == E_SubMode_TrackWidthAdjust_TravelLeader_Release )
    {
        SysState.TrackWidthCtl.tOutCnt = __lmax( SysState.TrackWidthCtl.tOutCnt - 1 , 0 ) ;
        if ( SysState.TrackWidthCtl.tOutCnt == 0 )
        {
            PoleTrackWidthAdjustFailure(  exp_exp_cant_set_leader_junc);
            return ;
        }

        SysState.Mot.bBrakeWheel[Follower] =  1  ; // Do not over strain motor
        SysState.Mot.bBrakeWheel[Leader] =  0   ;

        // Adjust the leader
        SetWheelSpeedCmd( &SysState.CanAxis[Follower] , 0 , 0 );
        //SysState.CanAxis[Follower].DFT.SpeedCmd = 0 ;
        SysState.ManRouteState.errPos[Leader]  = SysState.ManRouteState.WheelEncoderTarget[Leader] - WheelEncoderNow[Leader];
        SysState.ManRouteState.LeaderError = SysState.ManRouteState.errPos[Leader] * Geom.Calc.WheelEncoder2MeterShelfVert ;

        if ( fabsf(SysState.ManRouteState.LeaderError) > 0.0025f )
        {
            SetSysTimerTargetSec ( TIMER_WHARM_STAB , 0.1f , &SysTimerStr ) ;
        }
        else
        {
            if ( IsSysTimerElapse(TIMER_WHARM_STAB, &SysTimerStr))
            {
                ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelFollwer2Place ;
                SysState.Mot.bBrakeWheel[Follower] =  0  ; // Release follower to the down
                SysState.Mot.bBrakeWheel[Leader] =  1  ; // Assure leader stays in place
                SysState.ManRouteState.LeaderError = 0 ; // Force zero speed command

                // Allocate time for follower movement
                SysState.TrackWidthCtl.tOutCnt = (long) (6.15e6f / (float)(SPI_CYC_IN_C * FAST_TS_USEC*2));

                // Time for brake to engage / release
                SetSysTimerTargetSec ( TIMER_WHARM_STAB , 0.1f , &SysTimerStr ) ;

                // Estimate the final position for the follower
                deltaArc = (SysState.ManRouteState.ArcDistance[Leader] - SysState.TrackWidthCtl.ExtendedWidth ) - SysState.ManRouteState.ArcDistance[Follower]  ;
                SysState.ManRouteState.WheelEncoderTarget[Follower] =  WheelEncoderNow[Follower]  + deltaArc *  Geom.Calc.Meter2WheelEncoderShelfVert ;
                SysState.TrackWidthCtl.ExtremePoint = SysState.ManRouteState.WheelEncoderTarget[Follower] - SysState.TrackWidthCtl.GlideMaxOverShoot * Geom.Calc.Meter2WheelEncoderShelfVert ;

                //arm the follower arm for the down direction
                SysState.PoleRun.TargetArmDone = 1 ;
                SysState.PoleRun.TargetArmRequirement = 5 ;
                // Arm follower for junction find
                ArmLimitSw(&SysState.CanAxis[Leader], 0   ) ;
                ArmLimitSw(&SysState.CanAxis[Follower], -1  ) ;
#ifdef WARM_WAIT_USER_EXETEND
            //SysState.Debug.bWaitUser  = 2  ;
#endif
            }
        }
        GetSpeedCmdForPerr(SysState.ManRouteState.LeaderError,0.2f,0,dT,&SysState.CanAxis[Leader].BH.UserSpeedCmd ) ;
        return ;
    }

    // Robot body goes down
    //SysState.CanAxis[Leader].DFT.SpeedCmd = 0 ;
    SetWheelSpeedCmd( &SysState.CanAxis[Leader] , 0 , 0 );
    SysState.Mot.bBrakeWheel[Follower] =  0  ;

    // Update time out
    SysState.TrackWidthCtl.tOutCnt = __lmax( SysState.TrackWidthCtl.tOutCnt - 1 , 0 ) ;

    // Continuously go on switch seeking
    CorrectVerticalTargetBySwitch(Leader, Follower,-1);

    // Test for neck stretch
    /*
    if ( fabsf(SysState.NeckDiff) > Geom.AlarmWheelUnbalance )
    {
        PoleTrackWidthAdjustFailure(  exp_exp_in_wheelarm_neckstretch );
    }
    */

    switch (ManRouteCmd.ShelfSubSubMode)
    {
    case E_SubMode_TrackWidthAdjust_TravelFollwer2Place:

        if ( IsSysTimerElapse(TIMER_WHARM_STAB, &SysTimerStr) )
        {
            // Find the start of glide point
            GlidePoint = SysState.ManRouteState.WheelEncoderTarget[Follower] + SysState.TrackWidthCtl.GlideDistance * Geom.Calc.Meter2WheelEncoderShelfVert ;
            LatchOpenPoint = SysState.ManRouteState.WheelEncoderTarget[Follower] + 0.075f * Geom.Calc.Meter2WheelEncoderShelfVert ;

            if ( (WheelEncoderNow[Follower] - LatchOpenPoint) > 0 )
            {
                SetWheelArmPinState( SysState.TrackWidthCtl.Axis , E_EngagePin ) ;
            }

            if ( (WheelEncoderNow[Follower] - GlidePoint) > 0)
            {
                //Travel follower to "GlideDistance" above its final target
                GetSpeedCmdForPerr( (GlidePoint - WheelEncoderNow[Follower] )* Geom.Calc.WheelEncoder2MeterShelfVert ,
                                    0.2f,SysState.TrackWidthCtl.GlideSpeed,dT,&SysState.CanAxis[Follower].BH.UserSpeedCmd) ;

            }
            else
            { //Travel follower at glide speed to maximum travel
                //Travel follower to "ExtremePoint" below its final target, trying to engage pin
                GetSpeedCmdForPerr( (SysState.TrackWidthCtl.ExtremePoint - WheelEncoderNow[Follower] )* Geom.Calc.WheelEncoder2MeterShelfVert ,
                                    SysState.TrackWidthCtl.GlideSpeed,0,dT,&SysState.CanAxis[Follower].BH.UserSpeedCmd) ;

            }

            // Test for pin lock
            if (  SysState.TrackWidthCtl.bPinState[Leader] == E_WAPinEngaged )
            {
                SysState.TrackWidthCtl.ExtremePoint = WheelEncoderNow[Follower] - SysState.TrackWidthCtl.ExtraGlide4Latch * Geom.Calc.WheelEncoder2MeterShelfVert ;
                ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLatchFix;
                // Time for final catch
                SetSysTimerTargetSec ( TIMER_WHARM_STAB , 0.2f , &SysTimerStr ) ;
#ifdef WARM_WAIT_USER_EXETEND
//                SysState.Debug.bWaitUser  = 4  ;
#endif
            }

            if (SysState.TrackWidthCtl.tOutCnt == 0  )
            {
                PoleTrackWidthAdjustFailure(  exp_cant_rock_wheelarm_pin_in);
                return ;
            }
        }

        break ;

    case E_SubMode_TrackWidthAdjust_TravelLatchFix:
        // Just travel a little bit more to fix the latch
        GetSpeedCmdForPerr( (SysState.TrackWidthCtl.ExtremePoint - WheelEncoderNow[Follower] )* Geom.Calc.WheelEncoder2MeterShelfVert ,
                            SysState.TrackWidthCtl.GlideSpeed,0,dT,&SysState.CanAxis[Follower].BH.UserSpeedCmd) ;
        if ( IsSysTimerElapse(TIMER_WHARM_STAB, &SysTimerStr) )
        { // Mode done
            SysState.TrackWidthCtl.tOutCnt = (long) (2.0e6f /(float)(SPI_CYC_IN_C * FAST_TS_USEC*2));
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_TravelLeader_Final ;
#ifdef WARM_WAIT_USER_EXETEND
//            SysState.Debug.bWaitUser  = 8  ;
#endif
        }
        break ;


    case E_SubMode_TrackWidthAdjust_TravelLeader_Final:
        // Here the pin is latched to extended, time to search for junction
        FollowerError = (SysState.ManRouteState.WheelEncoderTarget[Follower] - WheelEncoderNow[Follower] )* Geom.Calc.WheelEncoder2MeterShelfVert ;

        if (  SysState.PoleRun.TargetArmRequirement == (SysState.PoleRun.TargetArmRequirement&SysState.PoleRun.TargetArmDone) )
        { // Follower error is valid to final position
            if (   fabsf(FollowerError) < 0.0025f )
            {  // Reached
                FollowerError = 0 ; // Force stop
                SetSysTimerTargetSec ( TIMER_WHARM_STAB , 0.15f , &SysTimerStr ) ;
                ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_AlmostDone;
#ifdef WARM_WAIT_USER_EXETEND
//                SysState.Debug.bWaitUser  = 16  ;
#endif
            }

        }
        else
        {
            if ( pSw[Follower]->PresentValue * pSw[Follower]->SwitchDetectMarker)
            { // If switch is active do not stop now
                 if ( FollowerError > 0 )
                 {
                     FollowerError = __fmax(FollowerError,Geom.LimitSwWidth );
                 }
                 else
                 {
                     FollowerError = __fmin(FollowerError,-Geom.LimitSwWidth );
                 }
            }
        }

        GetSpeedCmdForPerr( FollowerError , 0.1f,0,dT,&SysState.CanAxis[Follower].BH.UserSpeedCmd) ;
        if ( SysState.TrackWidthCtl.tOutCnt == 0 )
        {
            PoleTrackWidthAdjustFailure(  exp_exp_cant_find_follower_junc);
            return ;
        }
        break ;

    case E_SubMode_TrackWidthAdjust_AlmostDone:
        // Wait for final stabilization
        SetWheelSpeedCmd( &SysState.CanAxis[Follower] , 0 , 0 );

        //SysState.CanAxis[Follower].DFT.SpeedCmd = 0 ;
        if ( IsSysTimerElapse(TIMER_WHARM_STAB, &SysTimerStr) )
        {
            SetWheelArmPinState( SysState.TrackWidthCtl.Axis , E_DoNothing ) ;
            SetWheelArmPinState( SysState.TrackWidthCtl.OtherAxis , E_DoNothing ) ;
            ManRouteCmd.ShelfSubSubMode = E_SubMode_TrackWidthAdjust_Done ;
            SysState.Mot.bBrakeWheel[Leader] =  0  ; // Release leader to go
#ifdef WARM_WAIT_USER_EXETEND
//             SysState.Debug.bWaitUser  = 32  ;
#endif
        }
        break ;

    case E_SubMode_TrackWidthAdjust_Done:
        SysState.PoleRun.TargetArmDone = 7 ; // Cheat to signal the junction rotation that both junctions are found
        SetWheelSpeedCmd( &SysState.CanAxis[Follower] , 0 , 0 );

        //SysState.CanAxis[Follower].DFT.SpeedCmd = 0 ;
        SysState.TrackWidthCtl.bActive = 0 ;
        break;

    case E_SubMode_TrackWidthAdjust_Failure:
        ArmLimitSw(&SysState.CanAxis[Follower] , 0  ) ;
        SetWheelSpeedCmd( &SysState.CanAxis[Follower] , 0 , 0 );
        //SysState.CanAxis[Follower].DFT.SpeedCmd = 0 ;
        SysState.TrackWidthCtl.bActive = 0 ;
        break;
    }
}

void PoleTrackWidthAdjust(float dT )
{
    SysState.ManRouteState.ArcDistance[0]   += ( SysState.ManRouteState.WheelEncoderLastCycleDist[0] * Geom.Calc.WheelEncoder2MeterShelfVert ) ;
    SysState.ManRouteState.ArcDistance[1]   += ( SysState.ManRouteState.WheelEncoderLastCycleDist[1] * Geom.Calc.WheelEncoder2MeterShelfVert ) ;

    if ( SysState.Debug.bWaitUser & 1 )
    {
        StopWheels() ; 
        return ;
    }

    if (SysState.TrackWidthCtl.Target == E_TrackWidthExtend  )
    {
        PoleTrackWidthExtend(dT) ;
    }
    else
    {
        PoleTrackWidthRetract(dT) ;
    }
}



void ConfigWheelArm( )
{
    switch ( Config.WheelArmType ) //1:28,  2:24, 3: 30 , 4: 32 0: rigid
    {
    case 1:
        Geom.WheelArmAngleExtend = Geom.WheelArmAngleExtend28 ;
        break ;
    case 2:
        Geom.WheelArmAngleExtend = Geom.WheelArmAngleExtend24 ;
        break ;
    case 3:
        Geom.WheelArmAngleExtend = Geom.WheelArmAngleExtend30 ;
        break ;
    case 4:
        Geom.WheelArmAngleExtend = Geom.WheelArmAngleExtend32 ;
        break ;
    case 0:
        Geom.WheelArmAngleExtend = Geom.WheelArmAngleRetract ;
        break;
    default: // Ilegal value
        Geom.WheelArmAngleExtend = Geom.WheelArmAngleRetract ;
        Config.WheelArmType = 0xffff ;
        break ;
    }

    InitWheelArm() ;
}

/*
 * Manage the IBIT of the Wheelarm - reaction of motors
 * Returns: 0 if not complete, 1 on success completion
 */
short ManageWheelArmIBit(void)
{
    short done ;
    done = 0 ;
    switch ( SysState.TrackWidthCtl.IBitState )
    {
    case 1:
        if ( SysState.Package.ManCBit3.Dyn12NetOn && SysState.Package.ManCBit3.Dyn12InitDone &&
                S2M.Items.WheelArm.stat.LStatus.bit.KnowWhereAmI && S2M.Items.WheelArm.stat.RStatus.bit.KnowWhereAmI )
        {
            SysState.TrackWidthCtl.IBitState = 2 ;
        }
        break ;
    case 2:
        M2S.Items.ActCmd.cmd.ModeWord.bit.RightPinCmd = 1   ;
        M2S.Items.ActCmd.cmd.ModeWord.bit.LeftPinCmd = 1   ;
        M2S.Items.ActCmd.cmd.PinMotorCurrentAmp = Geom.PinMotorCurrentAmpIbit ;
        SysState.TrackWidthCtl.IBitState = 3 ;
        SetSysTimerTargetSec (TIMER_GP_2 , 0.7f  , &SysTimerStr);
        break ;
    case 3:
        if ( (S2M.Items.WheelArm.stat.LStatus.bit.MotorOn == 0) || (S2M.Items.WheelArm.stat.RStatus.bit.MotorOn == 0 ) )
        {
            SetSysTimerTargetSec (TIMER_GP_2 , 0.7f  , &SysTimerStr);
        }

        if ( IsSysTimerElapse( TIMER_GP_2  , &SysTimerStr) )
        {
            GetWheelArmWidthIBIT() ;
            SysState.TrackWidthCtl.IBitState = 0 ;
            done = 1 ;
        }
        break;
    }
    return done ;
}
