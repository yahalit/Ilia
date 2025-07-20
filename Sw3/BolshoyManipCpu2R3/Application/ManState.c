


#include "StructDef2.h"


void CalcAutoManipulatorState( float dT , short unsigned updAxis   );
//float CalcManipulatorPos (void );
//void CalcManualManipulatorState( float dT   );
short unsigned CartesianSetManAxisCmds( float dt , short unsigned updAxis );

short unsigned GetManipulatorState(void);
void SetManipulatorState(short unsigned mode);
void LogManUnreachable(float XTarget, float YTarget, float ThetaTarget, short GetSide, short code );


//long GetTmr1_4Kaka(void) ;

void ManHandlePackage(float dT , short unsigned updAxis );

short unsigned CartesianSetManAxisCmdsNew( float dt , short unsigned updAxis);
short ProgramToolTipMotionNew ( float TargetX , float TargetY , float LineSpeed  );
short PlanXYTraj(float x1 , float y1 , float tht1 , float x2 , float y2 , float LineSpeed );

#define MAN_PI_F 3.141592653589793F
#define MAN_2PI_F 6.283185307179586f



void GetManipMotionStatusDbg()
{
    float BigErr ,BigfErr ;
    short unsigned BigErrAx ,BigfErrAx, stoperr ;
    BigErr = ManCmd.Ctl24[MAN_AXIS_SHOULDER].PosErr  ;
    BigErrAx = 0 ;
    if ( fabs(ManCmd.Ctl24[MAN_AXIS_ELBOW].PosErr) > fabs(BigErr))
    {
        BigErr = ManCmd.Ctl24[MAN_AXIS_ELBOW].PosErr  ;
        BigErrAx = 1 ;
    }
    if ( fabs(ManCmd.Ctl24[MAN_AXIS_WRIST].PosErr) > fabs(BigErr))
    {
        BigErr = ManCmd.Ctl24[MAN_AXIS_WRIST].PosErr  ;
        BigErrAx = 2 ;
    }

    BigfErr = ManCmd.Ctl24[MAN_AXIS_SHOULDER].OverErrorBit.State  ;
    BigfErrAx = 0 ;
    if ( fabs(ManCmd.Ctl24[MAN_AXIS_ELBOW].OverErrorBit.State) > fabs(BigfErr))
    {
        BigfErr = ManCmd.Ctl24[MAN_AXIS_ELBOW].OverErrorBit.State  ;
        BigfErrAx = 1 ;
    }
    if ( fabs(ManCmd.Ctl24[MAN_AXIS_WRIST].OverErrorBit.State) > fabs(BigfErr))
    {
        BigfErr = ManCmd.Ctl24[MAN_AXIS_WRIST].OverErrorBit.State ;
        BigfErrAx = 2 ;
    }

    stoperr = 0 ;
    if ( ManCmd.StopError )
    {
        stoperr = ManCmd.StopError - 0x2000 ;
    }

    StructManipDbg.stat =
            ( ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.ProfilerMode & 1 ) + (( ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.ProfilerMode & 1 ) << 1 ) + ( (ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.ProfilerMode & 1 ) << 2 ) +
            ( (ManCmd.Recovery24.RecoveryState ? 1 : 0 )  << 3 ) + ( (BigErrAx & 7) << 4 ) + ((stoperr&63)<<7)
            + (((long unsigned)ManCmd.StopErrorSrc&15)<<13) + (((long unsigned)ManCmd.State&31)<<17) + (((long unsigned)BigfErrAx&7)<<22) ;
    StructManipDbg.BigErr = BigErr ;
    StructManipDbg.BigfErr = BigfErr ;
}


#ifdef MANIP_RECOVERT_MANAGEMENT
/*
 * Manage a recovery process by trying reduced speed if to big tracking error evolves
 */
void  RecoveryManagement(struct LinkControl24 *pCtl)
 {
    short unsigned cnt ;
    struct LinkControl24 *pNext ;
     switch ( ManCmd.Recovery24.RecoveryState )
     {
     case 0: // Nothing
         break ;

     case 1: // Just commanded recovery
         pCtl->SpeedCmd = 0 ;
         pCtl->Profiler.ProfilePos = pCtl->Pos  ;
         ManCmd.Recovery24.SpeedFac *= 0.5 ;
         ManCmd.Recovery24.RecoveryState = 2 ;
         break ;

     case 2:
         // Wait recovery

         pCtl->SpeedCmd = 0 ;
         pCtl->Profiler.ProfilePos = pCtl->Pos  ;

         if ( IsSysTimerElapse(TIMER_MAN_RECOVERY,&SysTimerStr)  )
         {
             if ( ManCmd.Cartesian && ( ManipulatorType == SCARA_Manipulator) )
             {
                 // Re-program sync motion to target
                 if ( ProgramToolTipMotionNew ( ManCmd.Recovery24.TargetX , ManCmd.Recovery24.TargetY , ManCmd.Recovery24.LineSpeed * ManCmd.Recovery24.SpeedFac  ) < 0 )
                 {
                     SetManError(exp_man_servo_cartese_recover_calc , pCtl->AxisId )  ;
                 }
             }
             else
             { // Recalculate linear
                 for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
                 {
                     pNext = &ManCmd.Ctl24[cnt];
                     ManCmd.Recovery24.PosTarget[cnt] = pNext->Profiler.PosTarget ;
                     ProgramProfiler(&pNext->Profiler , ManGeo.BaseSpeed[cnt] * ManCmd.Recovery24.SpeedFac , ManGeo.BaseAcc[cnt] * ManCmd.Recovery24.SpeedFac ,
                                     ManGeo.BaseAcc[cnt] * ManCmd.Recovery24.SpeedFac ,  ManGeo.BaseTau[cnt] , EProfile_PerAxis );
                     ResetProfiler( &pNext->Profiler , pNext->Profiler.ProfilePos  , 0  , 1  ) ;
                     ResetProfiler( &pNext->Profiler , ManCmd.Recovery24.PosTarget[cnt] , 0  , 0  ) ;
                 }
              }
             ManCmd.Recovery24.RecoveryState = 0; // Attempts  back to normal
         }
         break;
     }
 }
#endif

/**
* \brief Position control algorithm
* - Advance profiler if in profiled mode
* - Apply motion control algorithm fofr commanded motion speed
*
*/
void ApplyPosControl(short unsigned  updAxis  )
{
    float err , abserr , ErrRate  ;
    float ProfPosForFb  ;
    short unsigned done   ;
    struct CProfiler * pProf ;
    struct LinkControl *pCtl;

    pCtl = &ManCmd.Ctl24[updAxis] ;

    pProf = & pCtl->Profiler ;

    if ( pProf->ProfilerMode == EProfile_ToolTip)
    {   // In this mode, the position and speed commands are accepted as is, the profiler simply initializes
        // to reflect externally generated commands
        ResetProfiler ( pProf , pProf->PosTarget , pProf->ProfileSpeed , 1 );
    }

    done = 0; 
    if ( pCtl->MotorOn && (pCtl->MotorOnRequest ) )
    {// Already in control
#ifdef MANIP_RECOVERT_MANAGEMENT
        RecoveryManagement(pCtl) ;
#endif

        ProfPosForFb = pCtl->Profiler.ProfilePos ;

        if ( pProf->ProfilerMode == EProfile_PerAxis )
        { // Advance the profiler only in "per axis" mode
            done = AdvanceProfiler( &pCtl->Profiler , pCtl->dT )    ;
        }

        if ( pProf->ProfilerMode == EProfile_DirectSpeed)
        {
            ResetCbitIntegrator( &pCtl->OverErrorBit ,&SysTimerStr) ;
            ResetProfiler ( pProf , pCtl->Pos , 0 ,1 );
            pCtl->IsPosDone = 0 ;
        }
        else
        {
            ErrRate = pCtl->PosErr ;
            pCtl->PosErr = ProfPosForFb  - pCtl->Pos;
            ErrRate -= pCtl->PosErr ;  // ErrRate =  New pos error - Old pos error

            err = fSat ( pCtl->PosErr , 0.15f) ; // Limit the error

            // Test for convergence
            // If the position error is non-decreasing and big for a long time, its very bad ...
            if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual == 0 )
            {
                if  ( CbitIntegratorUpdate ( pCtl->PosErr , & pCtl->OverErrorBit , &SysTimerStr ) )
                { // Thats an exception
                    pCtl->SpeedCmd = 0 ; // Stop right where you are

                    SetManError(exp_man_servo_over_err , pCtl->AxisId )  ;

    #ifdef MANIP_RECOVERT_MANAGEMENT
                    // If not doing auto motion ... or too much recovery failures ... stop here
                    if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual || (  ManCmd.ControlWord.Automatic != 1 ) || ( ManCmd.Recovery24.RecoveryAttemptCounter >= 2 ) || ( pCtl->IsPosDone ))
                    {
                        SetManError(exp_man_servo_over_err , pCtl->AxisId )  ;
                    }
                    else
                    {
                        ManCmd.Recovery24.RecoveryAttemptCounter += 1 ;
                        ManCmd.Recovery24.RecoveryState = 1 ;
                        SetSysTimerTargetSec ( TIMER_MAN_RECOVERY , 1.0f , &SysTimerStr );
                    }
    #endif
                }
            }

            abserr = Yfabs( err ) ;

            //if in stop window and not manual
            if ( pCtl->IsStopped && (abserr < pCtl->StopWindow) && done )
            {
                pCtl->SpeedCmd = 0 ;
                pCtl->IsPosDone = 1;
            }
            else
            {
                pCtl->SpeedCmd = fSat ( err * pCtl->L24.Kp + pCtl->Profiler.ProfileSpeed  , pCtl->MaxSpeedCmd );
                pCtl->IsPosDone = 0;
            }
        }

    } // End motor on
    else
    { // Motor off actions
        ResetCbitIntegrator( &pCtl->OverErrorBit ,&SysTimerStr) ;
        ResetProfiler ( pProf , pCtl->Pos , 0 ,1 );
        pCtl->SpeedCmd = 0 ;
        pCtl->IsPosDone = 0 ;
//        SetManipulatorMotionException(exp_unexpected_motor_off , pCtl->AxisId )  ;
    }
}






/**
\brief Alarm function for the arm motor group
*/
void ArmAlarm( short error , short unsigned id )
{
    ManCmd.ArmError = error ;
    ManCmd.ArmErrorSrc = id ;
}



/*
 * Are doors converged? No manipulator, so no convergence
 */
short NoneIsShelfConverged(void)
{
   return 0 ;
}



/*
 * Are doors converged? Scara manipulator has two doors
 */
short ScaraIsShelfConverged(void)
{
    if ( ( fabs( DynStat12[0].PositionActual -  ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget) > 0.15f )
        || (fabs( DynStat12[1].PositionActual -  ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget) > 0.15f ))
    {
        return 0 ;
    }
    return 1;
}

/**
* \brief Initialize the manipulator database
* This function is called once on system boot
*/


void InitManipulator( void )
{
    short unsigned cnt ;
    struct LinkControl  *pNext24 ;
    struct LinkControl  *pNext12 ;
    float speedmax[DEF_NUM_MAX_24V_AXES] ;


    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        ClearMemRpt ( (short unsigned *) &IndividualAxCtl24[cnt] , (short unsigned) sizeof( struct CIndividualAxCtl  ) )  ;
        speedmax[cnt] = MAN_DEFAULT_MAX_SPEED_CMD ;
    }
    for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL  ; cnt++ )
    {
        ClearMemRpt ( (short unsigned *) &IndividualAxCtl12[cnt] , (short unsigned) sizeof( struct CIndividualAxCtl  ) )  ;
    }

    switch(ManipulatorType)
    {
    case None_Manipulator:
        break ;
    case SCARA_Manipulator:
        speedmax[0] = ManGeo.ShoulderMaxSpeed ;
        speedmax[1] = ManGeo.ElbowMaxSpeed ;
        speedmax[2] = ManGeo.WristMaxSpeed ;
        break ;
    case Flex_Manipulator:
        speedmax[0] = ManGeo.FlexMaxSpeed ;
        break;
    default:
        SevereBugUnknownManipualtor() ;
    }

    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++)
    {
        pNext24 = &ManCmd.Ctl24[cnt];
        //pNext->Profiler.PosMax = 0 ;
        //pNext->Profiler.PosMin = 0 ;
        pNext24->StopDec      = 1 ;
        pNext24->StopWindow   = 0.01F ;
        pNext24->StopWindowTimeUsec   = (long unsigned) (0.15F * 1e6F )  ;
        pNext24->StabilizationTime    = 0.6f ;
        pNext24->StopSpeedThold = 0.08F ;
        pNext24->TimerID = TMR_24V_AXIS_MNG + 3 * cnt ;
        SetSysTimerTarget( pNext24->TimerID , pNext24->StopWindowTimeUsec,&SysTimerStr ) ;
        pNext24->AxisId = cnt ;
        pNext24->Error = MAN_AX_ERROR_NO_COMM ;
        pNext24->LastError = MAN_AX_ERROR_NO_COMM ;
        pNext24->ErrorTimeUsec = (long unsigned) (0.1F * 1e6F ) ;
        SetSysTimerTarget ( pNext24->TimerID+1 , pNext24->StopWindowTimeUsec  , &SysTimerStr);
        pNext24->FeedFwdCommand = 0;

        ManGeo.BaseTau[cnt] = ManGeo.DecelerationDelayTau ;
        pNext24->tau  = ManGeo.BaseTau[cnt];
        ProgramProfiler(  &pNext24->Profiler , speedmax[cnt] , speedmax[cnt]/MAN_DEFAULT_ACC_TIME , speedmax[cnt]/MAN_DEFAULT_ACC_TIME , pNext24->tau , EProfile_PerAxis );

        pNext24->IsPos = 0;

        ManGeo.BaseAcc[cnt] = speedmax[cnt] / ManGeo.ManipulatorAccTime;
        ManGeo.BaseSpeed[cnt] = speedmax[cnt];

        pNext24->Profiler.accel = ManGeo.BaseAcc[cnt] ;
        pNext24->Profiler.vmax = ManGeo.BaseSpeed[cnt];
        //pNext24->Profiler.tau  = ManGeo.BaseTau[cnt];
    }
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++)
    {
        pNext12 = &ManCmd.Ctl12[cnt];
        //pNext->Profiler.PosMax = 0 ;
        //pNext->Profiler.PosMin = 0 ;
        pNext12->StopWindow   = 0.01F ;
        pNext12->StopWindowTimeUsec   = (long unsigned) (0.15F * 1e6F )  ;
        pNext24->StabilizationTime    = 0.6f ;
        pNext12->TimerID = TMR_12V_AXIS_MNG + 3 * cnt ;
        SetSysTimerTarget( pNext12->TimerID , pNext12->StopWindowTimeUsec,&SysTimerStr ) ;
        pNext12->AxisId = cnt ;
        pNext12->Error = MAN_AX_ERROR_NO_COMM ;
        pNext12->LastError = MAN_AX_ERROR_NO_COMM ;
        pNext12->ErrorTimeUsec = (long unsigned) (0.1F * 1e6F ) ;
        SetSysTimerTarget ( pNext12->TimerID+1 , pNext12->StopWindowTimeUsec  , &SysTimerStr);
//      pNext->SetAlarm  = ( cnt < NUM_12V_AXES ) ? ArmAlarm : StopAlarm;
        pNext12->FeedFwdCommand = 0;
        pNext12->tau   = 0.1f ;
    }
    for ( cnt = 0 ; cnt < NUM_12V_WHEELARM_AXES+NUM_12V_MANIP_AXES ; cnt++)
    {
        pNext12 = &ManCmd.Ctl12[cnt];
        //pNext->Profiler.PosMax = 0 ;
        //pNext->Profiler.PosMin = 0 ;
        pNext12->StopWindow   = 0.01F ;
        pNext12->StopWindowTimeUsec   = (long unsigned) (0.15F * 1e6F )  ;
        pNext12->TimerID = TMR_12V_AXIS_MNG + 3 * cnt ;
        SetSysTimerTarget( pNext12->TimerID , pNext12->StopWindowTimeUsec,&SysTimerStr ) ;
        pNext12->AxisId = cnt ;
        pNext12->Error = MAN_AX_ERROR_NO_COMM ;
        pNext12->LastError = MAN_AX_ERROR_NO_COMM ;
        pNext12->ErrorTimeUsec = (long unsigned) (0.1F * 1e6F ) ;
        SetSysTimerTarget ( pNext12->TimerID+1 , pNext12->StopWindowTimeUsec  , &SysTimerStr);
//      pNext->SetAlarm  = ( cnt < NUM_12V_AXES ) ? ArmAlarm : StopAlarm;
        pNext12->FeedFwdCommand = 0;
        pNext12->tau   = 0.1f ;
    }
    if ( ManipulatorType == Flex_Manipulator)
    {
        ManCmd.Ctl24[0].StopWindow = 0.002f ;
        //ManCmd.YOrigin = 0.2F ; //GEOMETRY update value - FlexYDistWheel2PackageAtSpacer0Ext0 used instead
    }
    else
    { //SCARA_Manipulator
        ManCmd.YOrigin = -0.2F ;
    }

    ManGeo.PiHalf = 1.570796326794897F ;    // !< Pi/2
    ManCmd.MotorOffRequestMan   = 1  ; // !< Motor off request for all the 3 manipulator motors
    ManCmd.MotorOffRequestStop  = 1  ; // !< Motor off request for the stop motors

    //ManCmd.LineAcc = 0.3 ;
    //ManCmd.LineKp = 10 ;
    //ManCmd.MaxLineSpeed = 0.12F ;
    ManCmd.DFinalApproach = 0.10F ;

    // Standby positions
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
        switch(ManipulatorType)
        {
        case None_Manipulator:
            break ;
        case SCARA_Manipulator:
            ManCmd.Ctl12[cnt].StandByPosition  =  ManGeo.SideShelfUpPos ;
            break ;
        case Flex_Manipulator:
            ManCmd.Ctl12[cnt].StandByPosition  =  ManGeo.FlexDoorPosUp ;
            break;
        default:
            SevereBugUnknownManipualtor() ;
        }
    }
}




void IsAxisStopped24( struct LinkControl  * pCtl , float dT  )
{
    pCtl->dT = dT ;

    // Update position and speed , motor on state, NextError = error state

    // Error tracking
    CbitCounterUpdate ( pCtl->LastError , &ManControlCbitCntr[pCtl->AxisId]  );

    // Test if axis is stopped
    if  ( Yfabs( pCtl->Pos - pCtl->L24.StopPos ) > pCtl->StopWindow || Yfabs(pCtl->Speed) > pCtl->StopSpeedThold)
    {
        SetSysTimerTarget ( pCtl->TimerID , pCtl->StopWindowTimeUsec ,&SysTimerStr );
        pCtl->L24.StopPos = 0.5F *( pCtl->Pos + pCtl->L24.StopPos) ;
        pCtl->IsStopped = 0 ;
    }
    else
    {
        if ( IsSysTimerElapse ( pCtl->TimerID  , &SysTimerStr) )
            pCtl->IsStopped = 1 ;
        else
            pCtl->IsStopped = 0 ;
    }
}


/**
* \brief Stop a link using StopDec
* \return 1: Stopped already, else 0
*/
short StopLink( struct LinkControl  * pCtl )
{
    float ds  ;

    ds = pCtl->StopDec * pCtl->dT ;

    if ( fabsf(pCtl->SpeedCmd) <= ds )
    {
        pCtl->SpeedCmd = 0 ;
        return 1 ;
    }
    pCtl->SpeedCmd -= ( ds * ( pCtl->SpeedCmd > 0 ? 1 : -1 ) ) ;
    return 0;
}


/**
* \brief Get the angle between triangle sides of length a and b , while the 3rd angle is c
* \param a and b : Two adjacent edges
* \param c       : Remote edge
*/
float GetTipAngle(float a , float b , float c )
{
    return aYcos ( ( a*a + b * b - c * c ) / ( 2.0F * a * b ) ) ;
}

/**
* \brief Get the target position based on link angles (direct kynematics)
*/
void ScaraGetTargetRobotCoord ( float *x , float *y  , float dist )
{
    //each value is negated as manipulator 0 angle points towards the robot tail
    float thtend = ManCmd.Ctl24[MAN_AXIS_SHOULDER].Pos + ManCmd.Ctl24[MAN_AXIS_ELBOW].Pos + ManCmd.Ctl24[MAN_AXIS_WRIST].Pos ;
    *x = ManCmd.Ex - ( ManGeo.LHand + dist ) * Ycos( thtend) ;
    *y = ManCmd.Ey - (ManGeo.LHand  + dist ) * Ysin( thtend) ;
}


/**
* \brief Get the gripper position based on link angles (direct kynematics)
* w.r.t. robot axes
* \param s: shoulder angle
* \param e: Elbow angle
* \param w: Wrist angle
* \param theta: angle of gripper relative to x pointing forward (theta 0 = forward, right = pi/2)
* wx and wy are the coordinates of the wrist joint, x and y are the gripper position
*/
void ScaraGetGripperRobotCoordBody ( float *x , float *y , float * wx , float *wy , float *theta , float s , float e , float w )
{
    //each value is negated as manipulator 0 angle points towards the robot tail
    * wx = -( ManGeo.LHumerus * Ycos(s) + ManGeo.LRadius * Ycos( s + e  ) ) ;
    *x = *wx - ManGeo.LHand * Ycos( s + e + w ) ;
    * wy = - (ManGeo.LHumerus * Ysin(s) + ManGeo.LRadius * Ysin( s + e  ) ) ;
    *y = *wy - ManGeo.LHand * Ysin( s + e + w ) ;
    *theta = mod2piS(s + e + w + MAN_PI_F) ;
//  *theta = s + e + w;
}

void ScaraGetGripperRobotCoord ( float *x , float *y  , float *theta )
{
    ScaraGetGripperRobotCoordBody ( x , y  , &ManCmd.Ex , &ManCmd.Ey , theta ,ManCmd.Ctl24[MAN_AXIS_SHOULDER].Pos , ManCmd.Ctl24[MAN_AXIS_ELBOW].Pos , ManCmd.Ctl24[MAN_AXIS_WRIST].Pos ) ;
}



/**
* \brief Get the link angles based on position (inverse kinematics)
* \param x: x coord
* \param y: y coord
* \param theta: LOS angle
* \param vec  : Link angles, shoulder to wrist

* \return 1 ok, -1 out of gripper range
*/
short InverseKyn( float xin , float yin , float theta_in , float vec[3] , short dir_in)//, short upToHandTip)
{
    float wristX,wristY, t2 , t3 , alpha ,  x , y , theta  ;
    float r; //distance from shoulder to wrist
    short dir ;

    //translation to manipulator axis
    x = -xin ; y = -yin ; dir = -dir_in ;
    theta = mod2piS(theta_in + MAN_PI_F) ;

    wristX = x - ManGeo.LHand * Ycos( theta ) ;
    wristY = y - ManGeo.LHand * Ysin( theta ) ;
    //r -1e-5 because of floating point precision that makes the calculation fail
    r = Ysqrt ( wristX* wristX + wristY * wristY )  ;

    if ( r >= (ManGeo.LHumerus + ManGeo.LRadius - 0.012f ) || r < 1e-3  )
    {
        vec[MAN_AXIS_SHOULDER] = 0;
        vec[MAN_AXIS_ELBOW] = 0;
        vec[MAN_AXIS_WRIST] = 0 ;
        return -1 ;
    }

    //opening between humerus and radius (= PI - abs(elbow))
    t2 = GetTipAngle(ManGeo.LHumerus , ManGeo.LRadius , r );
    t3 = Yatan2( wristY, wristX );

    alpha = aYsin( Ysin(t2) *  ManGeo.LRadius / r );

    if ( dir > 0 )
    {
        vec[MAN_AXIS_SHOULDER] = t3 - alpha ;
        vec[MAN_AXIS_ELBOW] = 2.0f * ManGeo.PiHalf - t2 ;
    }
    else
    {
        vec[MAN_AXIS_SHOULDER] = t3 + alpha ;
        vec[MAN_AXIS_ELBOW] = t2 - 2.0f * ManGeo.PiHalf ;
    }

    vec[MAN_AXIS_WRIST] = theta - vec[1] - vec[0] ; // ManCmd.Ctl24[MAN_AXIS_SHOULDER].Pos - ManCmd.Ctl24[MAN_AXIS_ELBOW].Pos;

    return 1  ;
}


/**
* \brief Assure that an amplitude resides in a given interval
* \param val : amplitude to limit
* \param absmin : Min absolute value
* \param absmax : Max absolute value
*
* \return Constrained amplitude
*/
float YfabsSat ( float val , float absmin , float absmax )
{
    float absval ;
    absval = __fmin(__fmax( fabsf( val ),absmin) , absmax)  ;
    //if ( absval < absmin ) absval = absmin ;
    //if ( absval > absmax ) absval = absmax ;
    return ( val >= 0) ? absval : -absval ;
}


/**
* \brief Set the manipulator mode
*/
void SetManipulatorState(short unsigned mode)
{
    ManCmd.State = mode ;
}

/**
* \brief Get the manipulator mode
*/
short unsigned GetManipulatorState(void)
{
    return (unsigned short) ManCmd.State ;
}


/*
* Update axis state variables
*/
void SetAxisFeedback24 ( short unsigned cnt ,  float Pos , float Speed , short Err , short unsigned mon )
{
    struct LinkControl  *NextCtl ;
    float dT ;
    long long unsigned now ;

    if ( cnt >= NUM_24V_AXES )
        return ;

    NextCtl = &ManCmd.Ctl24[cnt];
    NextCtl->Pos = Pos ;
    NextCtl->Speed = Speed ;
    NextCtl->LastError=  Err  ;
    NextCtl->MotorOn = mon  ;

    now = GetLongTimer(&SysTimerStr) ;
    dT = (float)( now - NextCtl->LastVistTime ) * 1e-6F ;
    if ( dT < 0.1e-3f || dT > 64e-3f)
        dT = (float) NOMINAL_TS_SEC ;

    IsAxisStopped24 ( NextCtl , dT) ; // Test if axis is stopped
    NextCtl->LastVistTime = now ;
}




/*
short kuku ;
union
{
    struct CManControlWord cw ;
    short  unsigned us ;
}kukuCW ;
*/

/**
 * \brief Accept the manipulator control word
 * transfers the Scara/ Flex manipulator control word parameter to ManCmd.ControlWord (after verifying valid command).
 */
void SetManipulatorControlWord()
{
    union
    {
        struct CManipControlWord cw;
        short  unsigned us;
    }cw; 

    cw.us = M2S.Items.ActCmd.cmd.ControlWord ;
//    if ( cw.cw.UnProcFromPdo  ) //UnProcFromPdo - "Do not process from PDO"
//    {
//        return;
//    }

    // Turn on possible only if new action made ready by transmitting SDO
    if ( ManipulatorType == SCARA_Manipulator )
    {
        if (  ( ManCmd.ControlWord.MotorsOn == 0 ) && cw.cw.MotorsOn ) //new direct command to turn on motors
        {  //( (ManCmd.RdyNewAction == 3 ) && (cw.cw.DealPackage) ) - if package X, Y position received (only Y in case of Flex) & M2S.Items.ActCmd.cmd.ControlWord.DealPackage command received.
           //( (ManCmd.RdyNewAction == 4 ) && (cw.cw.Standby) ) - if no package X, Y position received & M2S.Items.ActCmd.cmd.ControlWord.Standby command received.
           //( (cw.cw.DealPackage==0)&&(cw.cw.Standby==0 ) - if deal package not received and standby not received - do nothing.

            if ( ( (ManCmd.RdyNewAction == 3 ) && (cw.cw.DealPackage) ) ||  ( (ManCmd.RdyNewAction == 4 ) && (cw.cw.Standby) ) || ((cw.cw.DealPackage==0)&&(cw.cw.Standby==0)) )
            {//
                ManCmd.RdyNewAction = 0 ;
            }
            else
            {
                cw.cw.MotorsOn = 0 ;
            }
        }
    }
    else
    { //( ManipulatorType == Flex_Manipulator )
        // ( (cw.cw.DealPackage==0) && (cw.cw.Standby==0) ) means that CW is set by M2S.Items.ActCmd.cmd.ControlWord but no action commanded.

        if ( ManCmd.RdyNewAction == 0) //if (ManCmd.RdyNewAction != 0) then a command for deal package/ stand by is being given using OD (CAN1)
        {
            ProgramFlexManip(M2S.Items.ActCmd.cmd.AssumedPackagePositionY, M2S.Items.ActCmd.cmd.AssumedPackagePositionX, M2S.Items.ActCmd.cmd.NeckIncidenceAngle); //updates ManCmd.GetSide & ManCmd.XTarget & ManCmd.DTarget based on Ypack parameter.
        }
    }

    ManCmd.ControlWord = cw.cw ;

    //No need to check if homed before going to automatic, if Automatic then verify homing, only if homed then perform automatic actions (standby/ deal package).
    //if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Homed == 0 )
    //{ // Cannot go to automatic if homing is required
    //    ManCmd.ControlWord.Automatic = 0 ;
    //}
}





/**
 * \brief Retrieve the manipulator commands
 *
 */
void GetManipulatorProgram (  short * LaserValid ,  float *Xref ,  float *Ypack , float * Dlaser ,  short unsigned *mon_in )
{
    short unsigned cnt , mon ;
    *Dlaser     = SysState.Package.LaserDistMedian  ;
    *LaserValid = (short) SysState.Package.LaserMedianValid  ;
    *Xref = ManCmd.XTarget  ;
    *Ypack = ManCmd.DTarget  ;

    mon = DynStat24[0].MotorOnRequest ;
    for ( cnt = 1 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        mon *= DynStat24[cnt].MotorOnRequest ;
    }
    *mon_in = mon ? 1 : 0  ;
}




/**
* Program the manipulator by the external environment
*/
void ProgramManipulator (  float Xref , float Ypack  ,  short unsigned mon )
{
    short unsigned cnt ;
    ManCmd.GetSide = ( Ypack > 0.0 ) ? 1 : -1 ;

    ManCmd.XTarget = Xref ; //Not relevant for Flex.
    ManCmd.DTarget = Ypack ;

    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        DynStat24[cnt].MotorOnRequest = mon ;
    }
}

/**
* \brief Set a manipulator error - put to failure mode
* \param exp : The exception code
* \param src : The exception source
*/
void SetManErrorBody ( short unsigned exp , short unsigned src )
{
   short unsigned cnt;
    ManCmd.StopError = exp;
    if ( src < ERROR_SRC_SYS )
    {
        ManCmd.StopError += src ;
    }
    ManCmd.StopErrorSrc = src  ;
    ManCmd.State = MAN_ST_FAILURE ;
    StopMotors() ;

    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        DynStat24[cnt].MotorOnRequest = 0 ;
    }
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
        DynStat12[cnt].MotorOnRequest = 0 ;
    }
}

/*
 * only stop motors, doesn't shut it down.
 * Exit with orderly manner from algorithm (set package for example).
 */
void SetManError ( short unsigned exp , short unsigned src )
{
    short unsigned mask ;
    mask = BlockInts() ;
    SetManErrorBody (exp , src );
    RestoreInts(mask) ;
}



/*
 * \brief Safe state transition,
 * preventing accidental failure exit
 *
 */
void SafeTransitManState( short DesiredState)
{
    if ( ManCmd.State != MAN_ST_FAILURE )
    {
        ManCmd.State = DesiredState ;
    }
}


/**
 * \brief Set the manipulator ref
 */
void SetManipulatorIndividualRef12( short unsigned UpdAxis , float PRef  )
{
    if ( UpdAxis >=  NUM_12V_AXES_TOTAL)
    { // Avoid programming error == disaster
        return ;
    }

    IndividualAxCtl12[UpdAxis].PosTarget = PRef ;
    IndividualAxCtl12[UpdAxis].MotorOnRequest = 1 ;
    ManCmd.Ctl12[UpdAxis].MotorOnRequest = 1 ;
}
/**
 * \brief Set the manipulator ref
 */
void SetManipulatorIndividualRef24( short unsigned UpdAxis , float PRef  , short unsigned reset)
{
    if ( UpdAxis >=  NUM_24V_AXES)
    { // Avoid programming error == disaster
        return ;
    }

    IndividualAxCtl24[UpdAxis].PosTarget = PRef ;
    IndividualAxCtl24[UpdAxis].MotorOnRequest = 1 ;
    ResetProfiler(& ManCmd.Ctl24[UpdAxis].Profiler, PRef , ManualManCmd.LineSpeed  , reset  ) ;
    ManCmd.Ctl24[UpdAxis].MotorOnRequest = 1 ;
    SetProfilingMode(EProfile_PerAxis) ;
}

/**
 * \brief Set the manipulator motor on
 */
void SetManipulatorIndividualMon24( short unsigned UpdAxis , short MotorOn   )
{
    if ( UpdAxis < NUM_24V_AXES)
    {
        IndividualAxCtl24[UpdAxis].MotorOnRequest = MotorOn ;
        IndividualAxCtl24[UpdAxis].SpeedTarget = 0 ;
        ManCmd.Ctl24[UpdAxis].MotorOnRequest = 0 ; // Kill axis anyway
        SetProfilingMode(EProfile_PerAxis) ;
    }
}

/**
 * \brief Set the manipulator motor on
 */
void SetManipulatorIndividualMon12( short unsigned UpdAxis , short MotorOn   )
{
    if ( UpdAxis < NUM_12V_AXES_TOTAL)
    {
        IndividualAxCtl12[UpdAxis].MotorOnRequest = MotorOn ;
        IndividualAxCtl12[UpdAxis].SpeedTarget = 0 ;
        ManCmd.Ctl12[UpdAxis].MotorOnRequest = 0 ; // Kill axis anyway
     }
}


// Reset the manipulator recovery mechanism
void ResetManRecovery24 ( void)
{
    short unsigned cnt ;
    ManCmd.Recovery24.RecoveryAttemptCounter = 0 ;
    ManCmd.Recovery24.RecoveryState = 0 ;
    ManCmd.Recovery24.SpeedFac = 1.0f ;

    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++)
    {
        ManCmd.Ctl24[cnt].OverErrorBit.State = 0;
    }
}

// Reset the manipulator recovery mechanism
void ResetManRecovery12 ( void)
{
    short unsigned cnt ;

    for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL ; cnt++)
    {
        ManCmd.Ctl12[cnt].OverErrorBit.State = 0;
    }
}

/**
 * \brief Operate the manipulator control function
 *
 * \param UpdAxis : The axis whose feedback is just update
 * \param pMonRequest -> Motor on request
 * \param pSpeedCmdRadSec -> Speed command
 *
 */
void UpdateManipulatorControl24( short unsigned updAxis , short unsigned * pMonRequest , float *pSpeedCmdRadSec ) // , float *pPosTargetRad)
{
    short unsigned cnt ;
    float dT ;
    if ( updAxis >= NUM_24V_AXES )
        return ;

    // Do kynematics anyway for telemetry
    dT = CalcManipulatorPos24 ( ) ;

    // If in individual mode...
    if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
    { // Each axis will have its own reference
        for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
        {
            ManCmd.Ctl24[cnt].MotorOnRequest = IndividualAxCtl24[cnt].MotorOnRequest ;
            if ( ManCmd.Ctl24[cnt].MotorOn)
            {
                // ManCmd.Ctl24[updAxis].Profiler.ProfileSpeed = 0;
                ApplyPosControl ( updAxis) ;
            }
            else
            {
                IndividualAxCtl24[cnt].PosTarget = ManCmd.Ctl24[cnt].Pos ;
            }
        }
        ResetManRecovery24 () ;
    }
    else
    {

        if ( ManCmd.ControlWord.Automatic == 1  ) //manual is of lower priority than automatic
        {
            // Reset the individual command controls
            for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
            {
                IndividualAxCtl24[cnt].MotorOnRequest = 0 ;
                IndividualAxCtl24[cnt].PosTarget = ManCmd.Ctl24[cnt].Pos ;
            }
            CalcAutoManipulatorState24(dT , updAxis ) ;
        }
        else
        {
            if ( ManCmd.ControlWord.MotorsOn == 0 )
            {
                for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
                    ManCmd.Ctl24[cnt].MotorOnRequest = 0 ;
                for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
                    ManCmd.Ctl12[cnt].MotorOnRequest = 0 ;
            }

            //Manual suction cups
            SysState.Package.SuckRequest.items.DoSuck = ManualManCmd.SuctionOn ? 1 : 0 ;
            ApplySuck();
            ManCmd.State = MAN_ST_INIT ;
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR24 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
            SysState.Package.LaserRequest = 0;
            ResetManRecovery24 () ;
        }

        switch(ManipulatorType)
        {
        case None_Manipulator:
            break ;
        case SCARA_Manipulator:
            if( ManCmd.Cartesian) //act according to manual manipulator command
            {
                if ( ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.ProfilerMode == EProfile_PerAxis )
                { // Just before we work Cartesian - go to initial state
                    ApplyPosControl ( updAxis) ;
                    if ( ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.Done && ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.Done && ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.Done )
                    {  // Arrived at initial state - go to tool-tip control
                        ResetProfiler ( & XProfile , 0 , 0 , 0 );
                        ResetProfiler ( & XProfile , TTProfile.s , 0 , 1 );
                        SetProfilingMode( EProfile_ToolTip ) ;
                    }
                }
                else
                {
                    // Interpolate the trajectory from here towards final target and do control
                    ManualManCmd.Done = CartesianSetManAxisCmdsNew( dT  , updAxis) ;
                }
            }
            break ;
        case Flex_Manipulator:
            break;
        default:
            SevereBugUnknownManipualtor() ;
        }
    }

    GetManipMotionStatusDbg() ;

    // Finally return computed controls
    * pMonRequest = ManCmd.Ctl24[updAxis].MotorOnRequest ;
    * pSpeedCmdRadSec = ManCmd.Ctl24[updAxis].SpeedCmd ;
    //* pPosTargetRad = ManCmd.Ctl24[updAxis].Profiler.PosTarget ;
}


/**
 * \brief Operate the manipulator control function
 *
 * \param UpdAxis : The axis whose feedback is just update
 * \param pMonRequest -> Motor on request
 * \param pSpeedCmdRadSec -> Speed command
 *
 */
void UpdateManipulatorControl12( short unsigned updAxis  ) // , float *pPosTargetRad)
{

    struct LinkControl  *pCtl;


    if ( updAxis >= NUM_12V_AXES_TOTAL )
        return ;

    pCtl = &ManCmd.Ctl12[updAxis] ;

    // Do kynematics anyway for telemetry
    CalcManipulatorPos12 ( ) ;

    pCtl->PosErr = pCtl->L12.PosTarget - pCtl->Pos;

    //if in stop window and not manual
    if ( pCtl->IsStopped && (fabsf( pCtl->PosErr ) < pCtl->StopWindow)  )
    {
        pCtl->IsPosDone = 1;
    }
    else
    {
        pCtl->IsPosDone = 0;
    }
}




/*
 * \brief Set profiling mode
 */
void SetProfilingMode( enum  E_ProfileMode mode )
{
    short unsigned cnt ;
    for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
    {
        ManCmd.Ctl24[cnt].Profiler.ProfilerMode = mode ;
    }
}



float GetProfileTimeNoTau(float p , float v , float a , float d )
{

    float t1 , fac ;
    p = (float) fabs(p) ;
    fac = (1.0f/ a + 1.0f/d);

    if ( p > v * v * fac * 0.5f )
    { // Trapezoidal
        t1 = v * fac * 0.5f ;
        return t1 + p / v ;
    }
    else
    { // Triangle
        return  Ysqrt( 2 * p * fac);
    }
}





/*
 * Program a per axis motion.
 * Make all the axed arrive at proportional way
 * \param vec[] : Shoulder, albow and wrist targets
 * \param reset : Unused
 * \param SetCoordinated: If all the axes are to arrive simultaneously
 * \param mode: 0: Normal, 1: Towards idle (don't care), 2: Use slow acceleration
 */
short ProgramPerAxisMotion ( float vec1[] , short unsigned reset , short unsigned SetCoordinated , short mode )
{

    float Delta[DEF_NUM_24V_GEOM_AXES] ;
    float s , ProfTimeMax , fac ,tacc , tdec , tinvacc , tinvdec , pos[DEF_NUM_24V_GEOM_AXES]  ;
    float ProfTimeNext ;
    struct CProfiler * pProf[DEF_NUM_24V_GEOM_AXES] ;
    struct CProfiler *pNext ;
    short indmax ;
    short unsigned cnt ;


    (void) reset ;

    tacc = ManGeo.ManipulatorAccTime ;
    if ( tacc < 0.01f ) tacc = 0.01f ;
    tinvacc = 1.0f / tacc ;

    if ( mode == 2 )
    {
        tdec    = ManGeo.ManipulatorAccTimeReleasePack ;
        if ( tdec < 0.01f ) tdec = 0.01f ;
        tinvdec = 1 / tdec ;
    }
    else
    {
        //tdec = tacc ;
        tinvdec = tinvacc ;
    }

    for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
    {
        pProf[cnt] = &ManCmd.Ctl24[cnt].Profiler ;
        pos[cnt] = ManCmd.Ctl24[cnt].Pos;
        ManCmd.Ctl24[cnt].Profiler.vmax = ManGeo.MaxSpeed[cnt] ;
    }

    s = 0 ;
    ProfTimeMax = 0 ; indmax = 0 ;
    for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
    {
        pNext = pProf[cnt] ;
        pNext->accel = pNext->vmax * tinvacc  ;
        pNext->dec =  pNext->vmax * tinvdec ;
        Delta[cnt] = vec1[cnt] - pos[cnt] ;
        s += Delta[cnt] * Delta[cnt] ;
        ProfTimeNext = GetProfileTimeNoTau (Delta[cnt],pNext->vmax,pNext->accel,pNext->dec);
        if ( ProfTimeMax < ProfTimeNext )
        {
            ProfTimeMax = ProfTimeNext;
            indmax = cnt;
        }
    }

    if ( (s > 1e-6f) &&  SetCoordinated  )
    {
        for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
        {
            fac = (float) fabs ( Delta[cnt] /  Delta[indmax] ) ;
            pNext = pProf[cnt] ;
            pNext->vmax  = pProf[indmax]->vmax * fac  ;
            pNext->accel = pNext->vmax * tinvacc ;
            pNext->dec = pNext->dec * fac  ;
        }
    }

    for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
    {
        pNext = pProf[cnt] ;
        ResetProfiler( pNext , pos[cnt]  , 0  , 1  ) ;
        ResetProfiler( pNext , vec1[cnt] , 0  , 0  ) ;

    }

    SetProfilingMode(EProfile_PerAxis) ;
    return 0 ;
}



/*
 * \brief Advance the tool tip profiler
 */
short AdvanceToolTipProfiler ( float dt , float vec1[] )
{
    short stat , dir , cnt ;
    float vec0[DEF_NUM_24V_GEOM_AXES] , theta_in , x , y , fac , sfac , dtheta , x_start_in ; //, handy ;
    float r1 , r2 , r3 , ds , dx , dy , dp , OneOverDt ;

    if ( dt <= 0 )
    {
        return -1 ;
    }
    OneOverDt = 1 / dt ;
    dir = GetThetaTarget( & theta_in ) ;

    x_start_in = TTProfile.Xstart ;

    // For speed derivation - take the axes angles before this increment
    sfac = ( TTProfile.s > 0 ) ? (1.0f / TTProfile.s) : 0 ;
    fac = XProfile.ProfilePos * sfac ;
    x       = TTProfile.Xstart + ( TTProfile.Xend - TTProfile.Xstart ) * fac ;
    y       = TTProfile.Ystart + ( TTProfile.Yend - TTProfile.Ystart ) * fac ;
    //handy   = ManGeo.LHand * dir ;

    stat = InverseKyn( x,y , theta_in , vec0 , dir ) ;
    if ( stat < 0 )
    {
        return stat ;
    }

    AdvanceProfiler( &XProfile , dt );

    fac = XProfile.ProfilePos * sfac ;
    x = TTProfile.Xstart + ( TTProfile.Xend - TTProfile.Xstart ) * fac ;
    y = TTProfile.Ystart + ( TTProfile.Yend - TTProfile.Ystart ) * fac ;

    stat = InverseKyn( x , y  , theta_in , vec1 , dir ) ;
    if ( stat < 0 )
    {
        return stat ;
    }

    // Desired speed, before applying individual axis limits
    dx = (vec1[0] - vec0[0] ) * OneOverDt ;
    dy = (vec1[1] - vec0[1] ) * OneOverDt  ;
    dtheta = (vec1[2] - vec0[2] ) * OneOverDt  ;

    // Limit to axis speed
    r1 = 1.2f * (float) fabs ( dx / ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.vmax ) ;
    r2 = 1.2f * (float) fabs ( dy / ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.vmax ) ;
    r3 = 1.2f * (float) fabs ( dtheta / ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.vmax )  ;

    if ( r1 < r2 ) r1 = r2 ;
    if ( r1 < r3 ) r1 = r3 ;


    if ( r1 > 1.0f )
    { // Exceeded individual axis limit
        ds = XProfile.ProfileSpeed * ( 1 / r1 - 1 );
        XProfile.ProfileSpeed += ds    ;

        dp = ds * dt * 0.5f ;
        if ( dp < (x_start_in - XProfile.ProfilePos) )
        {
            dp = (x_start_in - XProfile.ProfilePos);
        }

        XProfile.ProfilePos += dp    ;
        for ( cnt = 0 ; cnt < 7 ; cnt++ )
        {
            XProfile.ProfileSpeedBuf[cnt] += ds ;
            XProfile.ProfilePosBuf[cnt] += dp ;
        }

        fac = XProfile.ProfilePos * sfac ;
        x = TTProfile.Xstart + ( TTProfile.Xend - TTProfile.Xstart ) * fac ;
        y = TTProfile.Ystart + ( TTProfile.Yend - TTProfile.Ystart ) * fac ;

        stat = InverseKyn( x , y , theta_in , vec1 , dir ) ;
        if ( stat < 0 )
        {
            return stat ;
        }

        //dx = (vec1[0] - vec0[0] ) * OneOverDt ;
        //dy = (vec1[1] - vec0[1] ) * OneOverDt  ;
        //dtheta = (vec1[2] - vec0[2] ) * OneOverDt  ;
    }
    TTProfile.Xnow = x ;
    TTProfile.Ynow = y ;

    return 0 ;
}



short unsigned StopMan(float dT )
{
    short unsigned cnt , Stopped;
    (void) dT ;
    Stopped = 1 ;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        StopLink( &ManCmd.Ctl24[cnt]  ) ;
        if ( ManCmd.Ctl24[cnt].IsStopped == 0 )
            Stopped = 0 ;
    }
    ManCmd.Cartesian = 0 ; // Inhibit further Cartesian processing

    return Stopped ;
}



short unsigned EmcStopMan( )
{
    short unsigned cnt ;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        ManCmd.Ctl24[cnt].SpeedCmd = 0 ;
    }
    ManCmd.Cartesian = 0 ; // Inhibit further Cartesian processing

    return 0 ;
}


/**
 * \brief Get the angle target. returns the the side (1: right, 2: left, 0: center).
 */
short GetThetaTarget(float * ThetaTarget)
{
    short dir ;
    switch ( FlexManipControl.ControlWordCopy.Side )
    {
    case PICKDIR_LEFT: //left
        *ThetaTarget =  -HalfPi ;
        dir = -1;
        break ;
    case PICKDIR_RIGHT: //right
        *ThetaTarget = HalfPi ;
        dir = 1;
        break ;
    default:
        *ThetaTarget = 0  ;
        dir = 0 ;
        break;
    }
    return dir ;
}


short ResetManipulatorLogics(void)
{
    struct LinkControl  *pCtl ;
    struct CProfiler * pProf ;
    short unsigned cnt ;

    ManCmd.ControlWordCopy = ManCmd.ControlWord ;

    SysState.Package.SuckCmd.ul = 0 ;
    // Reset the mechanism for retry if package suckers failed
    ManCmd.FailedPackageGrip = 0 ;
    SysState.Package.LaserRequest = 0;
    SysState.Package.SuckRequest.ul = 0 ;

    //ManCmd.StdbyRequest = 0 ;
    ManCmd.Cartesian = 0 ;


    // Put to initialize state
    if ( ManCmd.ControlWord.MotorsOn)
    {
        ManCmd.State = MAN_ST_INIT ;
    }

    SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , 3.0f ,&SysTimerStr);

    ManCmd.GetSide = GetThetaTarget( & ManCmd.ThetaTarget) ;

    // Reset all the controllers
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++)
    {
        pCtl  = &ManCmd.Ctl24[cnt] ;
        pProf = & pCtl->Profiler ;
        pProf->ProfilerMode = EProfile_PerAxis ;
        ResetProfiler ( pProf , pCtl->Pos , 0 ,1 );
        pCtl->SpeedCmd = 0 ;
        pCtl->IsPosDone = 0 ;
    }

    if ( ManCmd.GetSide == 0 )
    {
        return -1 ;
    }
    return 0 ;
}


/*
 * \brief Get actuator position - information available for all the modes
 */
float CalcManipulatorPos24 ( void )
{
    float dT ;
    unsigned long long now ;
    short unsigned cnt ;
    short unsigned axesStopped ,profstopped , motoron , motorabsent  ;
    float x , y , theta;

    now =  GetLongTimer( &SysTimerStr) ;
    dT = (float)( now - ManCmd.TimeUsec24 ) * 1e-6F ;
    if ( dT < 0.1e-3f || dT > 256e-3f)
        dT = (float) NOMINAL_TS_SEC ;
    ManCmd.TimeUsec24 = now;

    // Even if manipulator is off , just keep the variables
    switch ( ManipulatorType )
    {
    case SCARA_Manipulator:
        ScaraGetGripperRobotCoord ( &x , &y  , &theta ) ;
        break ;
    case Flex_Manipulator:
        FlexGetGripperRobotCoord ( &x , &y  , &theta ) ;
        break ;
    default:
        x = 0 ; y = 0 ; theta = 0 ;
    }


    ManCmd.x = x  ;
    ManCmd.y = y  ;
    ManCmd.theta = theta ;

    motoron = 1 ;
    motorabsent = 0;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        if ( DynStat24[cnt].MotorOn == 0 )
        {
            motorabsent = cnt ;
            motoron = 0 ;
            break ;
        }
    }
    ManCmd.MotorOnMan = motoron ;
    ManCmd.MotorAbsentMan = motorabsent ;

    axesStopped = 1 ;
    profstopped = 1 ;
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
        axesStopped *=  (unsigned short) ManCmd.Ctl24[cnt].IsStopped ;
        profstopped *= (unsigned short) ManCmd.Ctl24[cnt].Profiler.Done;
    }
    ManCmd.Stopped24 = axesStopped ;
    ManCmd.ProfilerStopped24 = (( profstopped && XProfile.Done ) ? 1 : 0 ) ;
    return dT ;
}


/*
 * \brief Get actuator position - information available for all the modes
 */
float CalcManipulatorPos12 ( void )
{
    float dT ;
    unsigned long long now  ;
    short unsigned cnt ;
    short unsigned axesStopped , noelbowstopped , motorstop , motorabsent ;

    now =  GetLongTimer( &SysTimerStr) ;
    dT = (float)( now - ManCmd.TimeUsec12 ) * 1e-6F ;
    if ( dT < 0.1e-3f || dT > 64e-3f)
        dT = (float) NOMINAL_TS_SEC ;
    ManCmd.TimeUsec12 = now;

    motorstop = 1 ;
    motorabsent = 0 ;
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
        if ( DynStat12[cnt].MotorOn == 0 )
        {
            motorabsent = cnt ;
            motorstop = 0 ;
            break ;
        }
    }
    ManCmd.MotorOnStop = motorstop ;
    ManCmd.MotorAbsentStop = motorabsent ;

    noelbowstopped = 1 ;
    for ( cnt = 0 ; cnt < NUM_12V_WHEELARM_AXES ; cnt++ )
    {
        if ( DynStat12[cnt+NUM_12V_MANIP_AXES].MotorOn == 0 )
        {
            noelbowstopped = 0 ;
            break ;
        }
    }
    NoElbowCmd.NoElbowMon = noelbowstopped ;


    axesStopped = 1 ;
    for ( cnt = 0 ; cnt < NUM_12V_AXES_TOTAL ; cnt++ )
    {
        axesStopped *= (unsigned short) ManCmd.Ctl12[cnt].IsStopped ;
    }
    ManCmd.Stopped12 = axesStopped ;
    return dT ;
}

/*
 * This routine is called in automatic mode only
 */
void ManageAutomaticMotorOnOff()
{
    short unsigned cnt ;
    if ( ManCmd.ControlWord.MotorsOn == 0  )
    { // Motor off command, not in restart process: Kill motor on request
        for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
        {
            ManCmd.Ctl24[cnt].MotorOnRequest = 0 ;
        }
        for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
        {
            ManCmd.Ctl12[cnt].MotorOnRequest = 0 ;
        }
        SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr);
        SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR24 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr);
        ResetManRecovery24 () ;
        ResetManRecovery12 () ;
    }
    else
    {
        if ( ManCmd.MotorOnMan  )
        { // Normal, the motors are on
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR24 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
        }
        else
        { // At least one motor not on, Motor restart
            for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
            {
                ManCmd.Ctl24[cnt].MotorOnRequest = 1 ;
            }

            if ( IsSysTimerElapse(TIMER_DYNAMIXEL_ON_TMR24,&SysTimerStr)  )
            {
                SetManError ( EXCEPT_CANT_SET_MON_AUTO_MAN+ManCmd.MotorAbsentMan , ERROR_SRC_SYS ) ;
                ManCmd.ControlWord.MotorsOn = 0 ;
            }
            ResetManRecovery24 () ;
        }

        if ( (ManCmd.ControlWord.DealPackage == 0 ) && (ManCmd.ControlWord.Standby == 0 )  && (ManCmd.ControlWord.DoHoming == 0 ) )
        {
            SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
            for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
            {
                ManCmd.Ctl12[cnt].MotorOnRequest = 0 ;
            }
        }
        else
        {
            if ( ManCmd.MotorOnStop )
            { // Normal, the motors are on
                SetSysTimerTargetSec ( TIMER_DYNAMIXEL_ON_TMR12 , DYNAMIXEL_MOTOR_ON_TOUT ,&SysTimerStr );
            }
            else
            { // At least one motor not on, Motor restart
                for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
                {
                    ManCmd.Ctl12[cnt].MotorOnRequest = 1 ;
                }

                if ( IsSysTimerElapse(TIMER_DYNAMIXEL_ON_TMR12,&SysTimerStr)  )
                {
                    SetManError ( EXCEPT_CANT_SET_MON_AUTO_STOP+ManCmd.MotorAbsentStop , ERROR_SRC_SYS ) ;
                    ManCmd.ControlWord.MotorsOn = 0 ;
                }
                ResetManRecovery12 () ;
            }
        }
    }

    // Set the motor on request for all the axes
    for ( cnt = 0 ; cnt < NUM_24V_AXES ; cnt++ )
    {
         SetMonRequest24 ( cnt ,ManCmd.Ctl24[cnt].MotorOnRequest) ;
    }
    for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
    {
         SetMonRequest12 ( cnt ,ManCmd.Ctl12[cnt].MotorOnRequest) ;
    }

}
/**
* \brief State machine of the gripper
* \param TimeNowUsec: The time on call. This routine is called only on automatic mode
*/
void CalcAutoManipulatorState24( float  dT , short unsigned updAxis  )
{

    short unsigned cnt, done ;

    ManageAutomaticMotorOnOff() ;

    if (  ( ManCmd.ControlWord.Standby == 0) && (ManCmd.ControlWord.DealPackage == 0) && (ManCmd.ControlWord.DoHoming == 0 ) )
    {
        SysState.Package.LaserRequest =  0 ;
        if ( ManCmd.MotorOnMan && ManCmd.ControlWord.MotorsOn)
        { // No request to do anything
            ResetManipulatorLogics() ;
            StopMan(dT);
            SysState.Package.ManHolds |= MAN_HOLDS_INACTIVE ;
            SysState.Package.ManHolds &= ~(MAN_HOLDS_SUSPECT_CONTACT | MAN_HOLDS_SUSPECT_CONTACT_W_PUMP);
            ManCmd.GoStandbyState = 0   ;
            return ;
        }
    }

    if ( (ManCmd.MotorOnMan == 0) || (ManCmd.MotorOnStop == 0 ) || (ManCmd.ControlWord.MotorsOn == 0) )
    {
        ResetManipulatorLogics() ;
        SysState.Package.ManHolds |= MAN_HOLDS_INACTIVE ;
        SysState.Package.ManHolds &= ~(MAN_HOLDS_SUSPECT_CONTACT | MAN_HOLDS_SUSPECT_CONTACT_W_PUMP);

        return ; // No action required or is not possible; nothing more to do
    }

    // Treat homing process
    if ( ManipulatorType == SCARA_Manipulator)
    {
        if  ( ManCmd.ControlWord.Standby )
        {
            // Running standby is from the control word copy -
            // because standby can be commanded either by the host or by the package handling logics.
            switch (  ManCmd.StdbyRequest )
            {
            case 1:
                ManCmd.StdbyRequest = 2 ;
                ManCmd.ControlWord.Side = ManCmd.StdbyDirection ;
                ManCmd.ControlWordCopy.Side = ManCmd.StdbyDirection ;
                ManCmd.Recovery24.SpeedFac = 1 ;
                ResetManipulatorLogics() ;

                GoPointNew(1,updAxis , ManCmd.Recovery24.SpeedFac ) ;

                for ( cnt = 0 ; cnt < NUM_12V_MANIP_AXES ; cnt++ )
                {
                    ManCmd.Ctl12[cnt].L12.PosTarget = ManCmd.Ctl12[cnt].StandByPosition ;
                }

                SetSysTimerTargetSec( TMR_WAIT_STDBY , 1.0f , &SysTimerStr) ;
                ManCmd.State = MAN_ST_STDBY ;
                break ;
            case 2:
                ApplyPosControl ( updAxis) ;
                if ( IsSysTimerElapse(TMR_WAIT_STDBY,&SysTimerStr) )
                {
                    ManCmd.StdbyRequest = 3 ;
                }
                break  ;
            case 3:
                done = ManCmd.Ctl24[0].Profiler.Done ;
                for ( cnt = 1 ; cnt < NUM_24V_AXES ; cnt++ )
                {
                    done *= ManCmd.Ctl24[cnt].Profiler.Done ;
                }
                if ( done )
                {
                    StopMotors();

                    ManCmd.StdbyRequest = 0 ;
                    ManCmd.State = MAN_ST_DONE ;
                }
                else
                {
                    ApplyPosControl ( updAxis) ;
                }
            }
            SysState.Package.ManHolds &= ~(MAN_HOLDS_SUSPECT_CONTACT | MAN_HOLDS_SUSPECT_CONTACT_W_PUMP);
            SysState.Package.ManHolds |= MAN_HOLDS_INACTIVE ;
            return ;
        }

        // Package get or put
        SysState.Package.ManHolds &= (~MAN_HOLDS_INACTIVE) ;
        ManHandlePackage (dT ,updAxis  );
    }
}


#define SuckRequestMask 0x1

/**
 * \brief Apply suction
 *
 * SuckRequest :  Bit field  .0: Suck/release   .1: Dont test suction .2: Restart timer even if already sucking
* \Returns:
 * Apply suction
 * Returns:
 * 1: Actual state matches suction command
 * 0: Processing new command
 * -1: Error
 */


short ApplySuckBody( void )
{
    float twait ;

    if ( OverRideSwitches )
    {
        return 0 ;
    }

    // Direct command to pumps
    S2M.Items.ActStatus.stat.PumpCmd = SysState.Package.SuckRequest.items.DoSuck ? 1 : 0 ;

    // If suck command changed, arm change timer
    if (  SysState.Package.SuckRequest.items.RestartTimerAnyway  || ( SysState.Package.SuckRequest.items.DoSuck != SysState.Package.SuckCmd.items.DoSuck ))
    {
        SysState.Package.SuckRequest.items.RestartTimerAnyway = 0  ; // Kill "Time anyway" flag
        twait = ( SysState.Package.SuckRequest.items.DoSuck )  ? ManGeo.TimeForEntireSuck : ManGeo.TimeForEntireSuckRelease ;
        SetSysTimerTargetSec ( TMR_WAIT_SUCK_CHNG , twait + 0.1f ,&SysTimerStr );
    }
    SysState.Package.SuckCmd.us = SysState.Package.SuckRequest.us; //copies the SuckRequest to the SuckCmd (only 3 bits, copies as short only).

    if ( SysState.Package.SuckRequest.items.DoNotTestSuction )
    { // Flagged to apply suction but not to test it
        return 1 ;
    }

    // test suction: either done or timed out
    if ( (SysState.Package.SuckRequest.items.DoSuck && SysState.Pump.IsHolding) ||  ( (SysState.Package.SuckRequest.items.DoSuck == 0) && SysState.Pump.IsDepleted))
    {
        return 1 ; // As expected
    }


    if ( IsSysTimerElapse(TMR_WAIT_SUCK_CHNG,&SysTimerStr) )
        return -1 ; // Failure

    return 0 ; // No match, but still acceptable
}

/*
 * Apply suction
 * Returns:
 * 1: Actual state matches suction command
 * 0: Processing new command
 * -1: Error
 */
short ApplySuck( void )
{
    short unsigned mask ;
    short stat ;
    mask = BlockInts() ;
    stat = ApplySuckBody() ;
    RestoreInts(mask);
    return stat ;
}

/*
 * Command laser according to SysState.Package.LaserRequest
 */
void ApplyScaraLaser()
{
    if ( OverRideSwitches == 0 )
    {
        S2M.Items.ActStatus.stat.LaserCmd = SysState.Package.LaserRequest ;
        //SetAirPump( IND_PUMP_LASER , SysState.Package.LaserRequest) ;
    }
}

/*
 * \brief Stop the motors and null the speed
 */
void StopMotors(void)
{
    short unsigned cnt;
    for( cnt = 0; cnt < NUM_24V_AXES; cnt++ )
    {
        ManCmd.Ctl24[cnt].MotorOnRequest = 0;
        ManCmd.Ctl24[cnt].SpeedCmd = 0;
    }
    for( cnt = 0; cnt < NUM_12V_MANIP_AXES; cnt++ )
    {
        ManCmd.Ctl12[cnt].MotorOnRequest = 0;
    }
    ManCmd.ControlWord.MotorsOn = 0 ;
}



/*
 * \brief Program a new reach point, with the axes traveling proportionally to reach at the same time
 * \param mode: 0: Normal , 1: Set the new targets as the standby position, 2: Slow acceleration
 * \param updAxis: The next axis for closed loop control
 * */
short GoPointNew( short unsigned mode , short unsigned updAxis , float speedfac  )
{
    float vec[DEF_NUM_24V_GEOM_AXES] ;
    short unsigned cnt ;

    if ( mode == 1 )
    { // Standby
        ManCmd.XTarget = ManGeo.StandbyXTarget ;
        ManCmd.YTarget = ManCmd.GetSide * ManGeo.ScaraStandbyYTarget ;
    }
    if ( mode == 2 )
    { // Standby
        ManCmd.XTarget = ManGeo.StandbyXTarget ;
        ManCmd.YTarget = -ManCmd.GetSide * (G_YDistWheelShoulderPivot - 0.07f) ;
    }

    GetThetaTarget(&ManCmd.ThetaTarget);

    if( InverseKyn(ManCmd.XTarget , ManCmd.YTarget , ManCmd.ThetaTarget, vec, ManCmd.GetSide) < 0 )
    {
        if ( mode >= 10 )
        {
            GoPointNew( mode-10 , updAxis ,ManCmd.Recovery24.SpeedFac  );
            return -1;
        }
        LogManUnreachable(ManCmd.XTarget, ManCmd.YTarget, ManCmd.ThetaTarget, ManCmd.GetSide,21) ;
        SetManError ( EXCEPT_STANDBY_PT_NOT_REACHABLE , ERROR_SRC_SYS ) ;
        return -1 ;
    }

    for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
    {
        ProgramProfiler(  & ManCmd.Ctl24[cnt].Profiler , ManGeo.BaseSpeed[cnt] * speedfac , ManGeo.BaseAcc[cnt] * speedfac , ManGeo.BaseAcc[cnt] * speedfac , ManGeo.BaseTau[cnt] , EProfile_PerAxis );
    }

    //ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.vmax = ManGeo.ShoulderMaxSpeed ;
    //ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.vmax = ManGeo.ElbowMaxSpeed ;
    //ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.vmax = ManGeo.WristMaxSpeed ;

    ManCmd.ProfileMode = EProfile_PerAxis ;

    ProgramPerAxisMotion ( vec , 1 , 1 , mode );

    ApplyPosControl ( updAxis) ;

    ManCmd.Cartesian = 0 ;
    return 0 ;
}




void ScaraSetPackageNew(float dT , short unsigned updAxis, short suckResult , short IsRepush )
{
    float vec[DEF_NUM_24V_GEOM_AXES]  ;
    short unsigned  IndividualStopped;
    short cnt ;
    (void) suckResult ;
    (void) dT ;

    IndividualStopped = (ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.Done && ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.Done && ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.Done) ? 1 : 0 ;

    switch ( ManCmd.State )
    {
    case MAN_ST_INIT:

        // Clear old error codes
        ManCmd.StopError = 0 ;

        // Freeze the control word and reset indications
        if ( ResetManipulatorLogics() )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, ManCmd.GetSide,11) ;
            SetManError ( EXCEPT_TARGET_NOT_REACHABLE , ERROR_SRC_SYS ) ;
        }
        ManCBit.GripFail = 0 ;

        // Test that side command makes sense

        // Insane coordinates
        if ( ManCmd.GetSide * ManCmd.DTarget <= 0 )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, ManCmd.GetSide,12) ;
            SetManError ( EXCEPT_TARGET_NOT_REACHABLE , ERROR_SRC_SYS ) ;
        }

        // Some sanity check
        if( InverseKyn(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, vec, ManCmd.GetSide) < 0 )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, ManCmd.GetSide,14) ;
            SetManError ( EXCEPT_TARGET_NOT_REACHABLE , ERROR_SRC_SYS ) ;
        }

        if ( ManCmd.State == MAN_ST_FAILURE )
        {
            break ; // Failed already
        }

        // Apply stop positions
        //if ( ManCmd.LockInhibit == 0  )
        {
            if ( ManCmd.GetSide == 1 )//right
            {
                ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.SideShelfDnPos ;
                ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.SideShelfUpPos ;
            }
            else
            {
                ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.SideShelfUpPos ;
                ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.SideShelfDnPos ;
            }
        }

        // Sucker off, we just go to start position
        StopSuctionNoMonitor() ; // Don't suck, don't test
        SysState.Package.LaserRequest =   1; // Laser will shine all the time allowing package hold detection
        SetSysTimerTargetSec ( TIMER_MAN_TOUT , 5.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
        SafeTransitManState( MAN_ST_WAIT_DOOR_OPEN ); // Prevent next gate only if failed already
        break ;

    case MAN_ST_WAIT_DOOR_OPEN:
        if ( ScaraIsShelfConverged()  )
        {
            // Go to starting position
            ManCmd.YTarget =  ManCmd.YOrigin * ManCmd.GetSide ;

            GoPointNew(0,updAxis,ManCmd.Recovery24.SpeedFac) ;

            // Go to laser finding
            SysState.Package.LaserDistValid = 0 ;
            //SysState.Package.LaserMedianCnt = 0 ;
            SysState.Package.LaserMedianValid = 0 ;

            SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
            SafeTransitManState ( MAN_ST_GO_ROUGH_POSITION  ) ;
        }
        else
        {
            if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
            {
                ScaraIsShelfConverged() ;
                SetManError ( EXCEPT_SHELF_TIMEOUT , ERROR_SRC_SYS ) ;
            }
        }
        break ;

    // Wait arrival of profile to origin, than capture laser to validate package presence
    case MAN_ST_GO_ROUGH_POSITION:
        // Go to initial position, wait laser indication if fetching
        ApplyPosControl (updAxis) ;
        if ( IndividualStopped == 0 )
        { // Wait final stopping
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , ManGeo.WaitLaserStabilizationTime ,&SysTimerStr);
        }
        else
        { // Take laser only if stopped at position
            if ( SysState.Package.LaserMedianValid )
            {
                SysState.Package.LaserDistValid = (short) SysState.Package.LaserMedianValid ;
                SysState.Package.LaserDist =  SysState.Package.LaserDistMedian ;
            }
        }

        if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
        { // Enough time already in place
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , 25.0,&SysTimerStr );


            if (  IsRepush || SysState.Package.LaserDistValid)
            {
                // Take the manipulator to the push point
                // Start pushing to target
                ManCmd.YTarget  = ManCmd.DTarget ;
                if ( ProgramToolTipMotionNew(ManCmd.XTarget, ManCmd.YTarget ,  ManCmd.LineSpeedArr[3]   ) < 0 )
                {
                    // failed - just retreat
                    StopSuctionMonitor() ;
                     GoPointNew(2,updAxis,ManCmd.Recovery24.SpeedFac) ;
                     ManCmd.StopError = EXCEPT_FAILED_CALCULATING_PATH;
                     SafeTransitManState( MAN_ST_RETREAT ) ;
                }
                else
                {
                    // Tool tip programming OK
                    InitSuctionNoMonitor() ; // Apply suck for the push, no test
                    SetSysTimerTargetSec ( TMR_WAIT_PACK_RELEASE , ManGeo.UnsuckPackReleaseTime ,&SysTimerStr);
                    SafeTransitManState( MAN_ST_PUSH_PACK)  ; // Go directly to pack release
                }
            }
            else
            { // failed - just retreat
                GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
                ManCmd.StopError = EXCEPT_LASER_TIMEOUT;
                SafeTransitManState(  MAN_ST_RETREAT ) ;
            }
        }
        break  ;

    case MAN_ST_PUSH_PACK:
        // Go to initial position, wait laser indication if fetching
        ManCmd.Cartesian = 1 ;

        //At this point, nearly always stopped as increments are beneath the posDone error margin
        if( ManCmd.ProfilerStopped24  ) //check within .01m of desired position
        {
            // Test that laser sees package
            if (  ( SysState.Package.LaserMedianValid == 0 ) || (SysState.Package.LaserDistMedian > ManGeo.MaxLaser4PushContact ) )
            {
                ManCmd.StopError = EXCEPT_NO_LASER_AT_RELEASE ;
            }

            StopSuctionNoMonitor() ; // Stop sucking , no wait
            if ( IsSysTimerElapse(TMR_WAIT_PACK_RELEASE,&SysTimerStr) )
            { // Program the way home
                ManCmd.YTarget = ManCmd.DTarget - ManGeo.ManipulatorRetreatDistReleasePack * ManCmd.GetSide ;
                GoPointNew(0,updAxis,ManCmd.Recovery24.SpeedFac) ;
                SafeTransitManState( MAN_ST_RETREAT_RELEASE ) ;
                SetSysTimerTargetSec ( TMR_WAIT_PACK_RELEASE , 0.4f ,&SysTimerStr);
            }
        }
        else
        {
            InitSuctionNoMonitor() ; // Apply suck for the push, no test
            SetSysTimerTargetSec ( TMR_WAIT_PACK_RELEASE , ManGeo.UnsuckPackReleaseTime ,&SysTimerStr);
        }
        break;

    case MAN_ST_RETREAT_RELEASE:
        ApplyPosControl ( updAxis) ;
        //At this point, nearly always stopped as increments are beneath the posDone error margin
        if( IndividualStopped  ) //check within .01m of desired position
        {
            if ( IsSysTimerElapse(TMR_WAIT_PACK_RELEASE,&SysTimerStr) )
            { // Program the way home
                GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
                SafeTransitManState( MAN_ST_RETREAT ) ;
            }
        }
        else
        {
            SetSysTimerTargetSec ( TMR_WAIT_PACK_RELEASE , 0.4f ,&SysTimerStr);
        }
        break;


    case MAN_ST_RETREAT:
        // Retreat home after failure
        ApplyPosControl ( updAxis) ;
        if( IndividualStopped  ) //check within .01m of desired position
        {
            SetSysTimerTargetSec ( TMR_WAIT_MAN_FPOS , 5.0f ,&SysTimerStr);
            ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.SideShelfUpPos ;
            ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.SideShelfUpPos ;
            SafeTransitManState(  MAN_ST_RELEASE_WAIT_STOP );
        }
        break;

    case MAN_ST_RELEASE_WAIT_STOP:
        ApplyPosControl ( updAxis) ;

        if ( ScaraIsShelfConverged() )
        {
            if ( ManCmd.StopError == 0 )
            {
                SafeTransitManState(   MAN_ST_DONE ) ;
            }
            else
            {
                SetManError ( ManCmd.StopError  , ERROR_SRC_SYS ) ;
            }
        }
        else
        {
            if ( IsSysTimerElapse(TMR_WAIT_MAN_FPOS,&SysTimerStr) )
            {
                if ( ManCmd.StopError == 0 )
                {
                    SetManError ( EXCEPT_SET_DOOR_NOT_CLOSED  , ERROR_SRC_SYS ) ;
                }
                else
                {
                    SetManError ( ManCmd.StopError  , ERROR_SRC_SYS ) ;
                }
            }
        }

        break ;

    default :
        ManCmd.State = MAN_ST_FAILURE;
        ManCBit.GripFail = 1 ;
        // Intentionally no break here

    case MAN_ST_DONE:
        // Final
        SysState.Package.LaserRequest = 0;
        StopSuctionNoMonitor()  ;
        ApplySuck( );
        for( cnt = 0; cnt < (short) NUM_24V_AXES; cnt++ )
        {
            ManCmd.Ctl24[cnt].SpeedCmd = 0;
        }
        StopMotors() ;

        ApplySuck();
        break;
    }

}


void LogManUnreachable(float XTarget, float YTarget, float ThetaTarget, short GetSide, short code )
{
    UnreachableLog.x = XTarget;
    UnreachableLog.y = YTarget;
    UnreachableLog.theta = ThetaTarget;
    UnreachableLog.Ytarget = ManCmd.YTarget;
    UnreachableLog.Dtarget = ManCmd.DTarget;
    UnreachableLog.side = GetSide ;
    UnreachableLog.code = code ;
}


//float StrayStat[6] ;

/*
 * \brief Get package with enhanced speed
 */
void ScaraGetPackageNew(float dT , short unsigned updAxis, short suckResult )
{
    float vec[DEF_NUM_24V_GEOM_AXES] ;
    float  xpack ,  ypack;
    short unsigned  IndividualStopped;
    short cnt ;

    IndividualStopped = (ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.Done && ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.Done && ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.Done) ? 1 : 0 ;

    switch ( ManCmd.State )
    {
    case MAN_ST_INIT:
        // Clear old error codes
        ManCmd.StopError = 0 ;

        // Freeze the control word and reset indications
        if ( ResetManipulatorLogics() )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, ManCmd.GetSide,1) ;
            SetManError ( EXCEPT_TARGET_DIR_INCONSISTENT , ERROR_SRC_SYS ) ;
            break ;
        }
        ManCBit.GripFail = 0 ;

        // Test that side command makes sense
        // Insane coordinates
        if ( ManCmd.GetSide * ManCmd.DTarget <= 0 )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, ManCmd.GetSide,2) ;
            SetManError ( EXCEPT_TARGET_DIR_INCONSISTENT , ERROR_SRC_SYS ) ;
            break ;
        }
        // Some sanity check
        if( InverseKyn(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, vec, ManCmd.GetSide) < 0 )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget, ManCmd.ThetaTarget, ManCmd.GetSide,3) ;
            SetManError ( EXCEPT_TARGET_NOT_REACHABLE , ERROR_SRC_SYS ) ;
            break ;
        }
        // Command to start position
        if( InverseKyn(ManCmd.XTarget, ManCmd.DTarget - ManCmd.DFinalApproach * ManCmd.GetSide, ManCmd.ThetaTarget, vec, ManCmd.GetSide) < 0 )
        {
            LogManUnreachable(ManCmd.XTarget, ManCmd.DTarget - ManCmd.DFinalApproach * ManCmd.GetSide, ManCmd.ThetaTarget, ManCmd.GetSide,4) ;
            SetManError ( EXCEPT_INTERMEDIATE_PT_NOT_REACHABLE , ERROR_SRC_SYS ) ;
            break ;
        }

        if ( ManCmd.State == MAN_ST_FAILURE )
        {
            break ; // Failed already
        }

        // Actuate platform doors
        if ( ManCmd.GetSide == 1 )//right
        {
            ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.SideShelfDnPos ;
            ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.SideShelfUpPos ;
        }
        else
        {
            ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget =  ManGeo.SideShelfUpPos ;
            ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget = ManGeo.SideShelfDnPos ;
        }

        // Set the sucker according to Get/Set: on to put package
        StopSuctionNoMonitor() ; // No suck yet, no wait
        SysState.Package.LaserRequest =   1; // Laser will shine all the time allowing package hold detection

        StopMan(dT) ;
        SetSysTimerTargetSec ( TIMER_MAN_TOUT , 5.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
        SafeTransitManState(MAN_ST_WAIT_DOOR_OPEN) ;
        break ;

    case MAN_ST_WAIT_DOOR_OPEN:
        // Time Out
        StopMan(dT) ;

        if ( ScaraIsShelfConverged() )
        {
            GetThetaTarget(&ManCmd.ThetaTarget);

            // Program laser measurement point
            ManCmd.ProfileMode = EProfile_PerAxis ;


            // Go to laser finding
            SysState.Package.LaserDistValid = 0 ;
            //SysState.Package.LaserMedianCnt = 0 ;
            SysState.Package.LaserMedianValid = 0 ;

            SetSysTimerTargetSec ( TMR_LASER_START, 0.25f , &SysTimerStr); // Time for laser to become valid
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication

            ScaraGetTargetRobotCoord ( & xpack ,  &ypack  , SysState.Package.LaserDistMedian);
            if ( ypack * ManCmd.GetSide < 0 )
            {
                ManCmd.XTargetStack = ManCmd.XTarget ;
                GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
                SafeTransitManState( MAN_ST_RVS_STANDBY ); // Prevent next gate only if failed already
            }
            else
            {
                // Go to starting position
                ManCmd.YTarget =  ManCmd.DTarget - ManCmd.DFinalApproach * ManCmd.GetSide ;
                GoPointNew(0,updAxis,ManCmd.Recovery24.SpeedFac) ;
                SafeTransitManState( MAN_ST_GO_ROUGH_POSITION ); // Prevent next gate only if failed already
            }

        }
        else
        {
            if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
            {
                SetManError ( EXCEPT_SHELF_TIMEOUT , ERROR_SRC_SYS ) ;
            }
        }

        break ;

    case MAN_ST_RVS_STANDBY:
        // Go to initial position, wait laser indication if fetching
        if ( IsSysTimerElapse(TMR_LASER_START , &SysTimerStr)  )
        {
            if ( SysState.Package.LaserMedianValid && (SysState.Package.LaserDistMedian>0.014f) )
            {
                ScaraGetTargetRobotCoord ( & xpack ,  &ypack  , SysState.Package.LaserDistMedian);
                if ( (xpack < 0) && (xpack > -0.55f) && (ypack > 0.05f - G_YDistWheelShoulderPivot) &&  (ypack <  G_YDistWheelShoulderPivot -0.05f)  )
                {
                    SetSysTimerTargetSec ( TMR_LASER_START, 1.5 , &SysTimerStr); // time for complete stop
                    EmcStopMan()  ;
                    ManCmd.StopError = EXCEPT_STRAY_SEE_PACK;
                    SafeTransitManState(  MAN_ST_EMCSTOP ) ;
                }
            }
        }

        ApplyPosControl ( updAxis) ;
        if ( IndividualStopped == 0 )
        { // Wait final stopping
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , ManGeo.WaitLaserStabilizationTime ,&SysTimerStr);
        }
        else
        {
            if ( SysState.Package.LaserMedianValid)
            {
                SysState.Package.LaserDistValid = (short) SysState.Package.LaserMedianValid ;
                SysState.Package.LaserDist =  SysState.Package.LaserDistMedian ;
            }
        }

        if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
        { // Enough time already in place
            ManCmd.XTarget = ManCmd.XTargetStack ;
            ManCmd.YTarget =  ManCmd.DTarget - ManCmd.DFinalApproach * ManCmd.GetSide ;
            GoPointNew(0,updAxis,ManCmd.Recovery24.SpeedFac) ;
            SetSysTimerTargetSec ( TMR_LASER_START, 0.25f , &SysTimerStr); // Time for laser to become valid
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , 1.0f ,&SysTimerStr); // Avoid premature "Stopped" indication
            SafeTransitManState( MAN_ST_GO_ROUGH_POSITION ); // Prevent next gate only if failed already
        }
        break;

    case MAN_ST_EMCSTOP:
        if ( IsSysTimerElapse(TMR_LASER_START , &SysTimerStr)  )
        {
            GoPointNew(2,updAxis,ManCmd.Recovery24.SpeedFac) ;
            SafeTransitManState(  MAN_ST_RETREAT ) ;
        }
        else
        {
            EmcStopMan()  ;
        }
        break ;

    case MAN_ST_GO_ROUGH_POSITION:
        // Go to initial position, wait laser indication if fetching
        if ( IsSysTimerElapse(TMR_LASER_START , &SysTimerStr)  )
        {
            if ( SysState.Package.LaserMedianValid  && (SysState.Package.LaserDistMedian>0.014f) )
            {
                ScaraGetTargetRobotCoord ( & xpack ,  &ypack  , SysState.Package.LaserDistMedian);
                if ( (xpack < 0) && (xpack > -0.55) && (ypack > 0.05f - G_YDistWheelShoulderPivot) &&  (ypack <  G_YDistWheelShoulderPivot -0.05f)  )
                {
/*
                    StrayStat[0] =  xpack ;
                    StrayStat[1] =  ypack ;
                    StrayStat[2] =  SysState.Package.LaserDistMedian ;
                    StrayStat[3] =  ManCmd.Ctl24[MAN_AXIS_SHOULDER].Pos ;
                    StrayStat[4] =  ManCmd.Ctl24[MAN_AXIS_ELBOW].Pos ;
                    StrayStat[5] =  ManCmd.Ctl24[MAN_AXIS_WRIST].Pos ;
*/
                    SetSysTimerTargetSec ( TMR_LASER_START, 1.5 , &SysTimerStr); // time for complete stop
                    EmcStopMan()  ;
                    ManCmd.StopError = EXCEPT_STRAY_SEE_PACK;
                    SafeTransitManState(  MAN_ST_EMCSTOP ) ;
                }
            }
        }

        ApplyPosControl ( updAxis) ;
        if ( IndividualStopped == 0 )
        { // Wait final stopping
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , ManGeo.WaitLaserStabilizationTime ,&SysTimerStr);
        }
        else
        {
            if ( SysState.Package.LaserMedianValid)
            {
                SysState.Package.LaserDistValid = (short) SysState.Package.LaserMedianValid ;
                SysState.Package.LaserDist =  SysState.Package.LaserDistMedian ;
            }
        }

        if ( IsSysTimerElapse(TIMER_MAN_TOUT , &SysTimerStr)  )
        { // Enough time already in place
            SetSysTimerTargetSec ( TIMER_MAN_TOUT , 25.0,&SysTimerStr );
            //SafeTransitManState( MAN_ST_GO_PRECISE_POSITION)  ; // Go directly to pack release

            if ( SysState.Package.LaserDistValid  )
            {
                // Go to intermediate point
               ManCmd.YTarget = ManCmd.y + (SysState.Package.LaserDist - ManGeo.Offset4LaserDistance) * ManCmd.GetSide ;
               ManCmd.YTargetRepush = ManCmd.YTarget ;
               ManCmd.YNow    = ManCmd.y ; // Capture the Y position at action start

               if ( GoPointNew(11,updAxis,ManCmd.Recovery24.SpeedFac) < 0 )
               {
                   ManCmd.StopError = EXCEPT_PACKAGE_OUT_OF_REACH ;
                   SafeTransitManState(  MAN_ST_RETREAT ) ;
               }
               else
               {
                   SetSysTimerTargetSec ( TIMER_MAN_TOUT , 30.0f ,&SysTimerStr);
                   InitSuctionNoMonitor()  ; // Liran asked to put suction at the entire final approach
                   SafeTransitManState ( MAN_ST_GO_PRECISE_POSITION ) ;
               }
            }
            else
            { // Did not go that well - dont see target
                GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
                ManCmd.StopError = EXCEPT_LASER_TIMEOUT;
                SafeTransitManState(  MAN_ST_RETREAT ) ;
            }
        }
        break;

    case MAN_ST_GO_PRECISE_POSITION: // Go to package position
        ApplyPosControl ( updAxis) ;
        if( IndividualStopped )
        {
            InitSuctionMonitor()  ;
            SysState.Package.SuckRequest.items.RestartTimerAnyway = 1 ;
            SafeTransitManState( MAN_ST_DO_SUCTION ) ;
        }
        break ;

    case MAN_ST_DO_SUCTION:
        //SysState.Package.LaserRequest = 0;
        ApplyPosControl ( updAxis) ;
        if ( suckResult == -1)
        {
            // Suck action failed, abort mission
            StopSuctionNoMonitor() ;
            // Start the long way home
            GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
            ManCmd.StopError = EXCEPT_FAILED_INIT_PACKAGE_SUCTION;
            SafeTransitManState( MAN_ST_RETREAT ) ;
            break ;
        }
        else
        {
            // Start the long way home
             if ( ProgramToolTipMotionNew(ManCmd.XTarget, ManCmd.YOrigin * ManCmd.GetSide ,  ManCmd.LineSpeedArr[2]   ) < 0 )
             {
                 StopSuctionNoMonitor() ;
                 // Start the long way home
                 GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
                 ManCmd.StopError = EXCEPT_FAILED_CALCULATING_PATH;
                 SafeTransitManState( MAN_ST_RETREAT ) ;
             }
             else
             { // Success in tool tip programming
                 SafeTransitManState(  MAN_ST_FOLDBACK ) ;
             }
        }
        break ;

    case MAN_ST_FOLDBACK:
        ManCmd.Cartesian = 1 ;
        if( suckResult == -1 )
        {
            StopSuctionNoMonitor() ; // Stop sucking , no wait
            ManCmd.YTarget = ManCmd.YTargetRepush ;
            GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
            ManCmd.StopError = EXCEPT_LOST_PACKAGE_GRIP;
            SafeTransitManState( MAN_ST_BACK_TO_STANDBY ) ;
            break ;
        }

        //At this point, nearly always stopped as increments are beneath the posDone error margin
        if( ManCmd.ProfilerStopped24  ) //check within .01m of desired position
        {
            StopSuctionNoMonitor() ; // Stop sucking , no wait
            SafeTransitManState(  MAN_ST_RELEASE_WAIT_STOP );
        }
        break;

    case MAN_ST_RELEASE_WAIT_STOP:
        // Command the stop shelves to close
        ApplyPosControl ( updAxis) ;

        ManCmd.Ctl12[MAN_AXIS_RSTOP].L12.PosTarget = ManGeo.SideShelfUpPos ;
        ManCmd.Ctl12[MAN_AXIS_LSTOP].L12.PosTarget= ManGeo.SideShelfUpPos ;

        SetSysTimerTargetSec ( TMR_WAIT_MAN_FPOS , 5.0f ,&SysTimerStr);

        SafeTransitManState(  MAN_ST_DO_EDGE_STOP ) ;
        break ;

    case MAN_ST_DO_EDGE_STOP: //wait stop shelves to close
        ApplyPosControl ( updAxis) ;
        if ( ScaraIsShelfConverged() )
        {
            if ( ManCmd.StopError == 0 )
            {
                SafeTransitManState(   MAN_ST_DONE ) ;
            }
            else
            {
                SetManError ( ManCmd.StopError  , ERROR_SRC_SYS ) ;
            }
        }
        else
        {
            if ( IsSysTimerElapse(TMR_WAIT_MAN_FPOS,&SysTimerStr) )
            {
                if ( ManCmd.StopError == 0 )
                {
                    SetManError ( EXCEPT_SET_DOOR_NOT_CLOSED  , ERROR_SRC_SYS ) ;
                }
                else
                {
                    SetManError ( ManCmd.StopError  , ERROR_SRC_SYS ) ;
                }
            }
        }
        break ;

    default :
        ManCmd.State = MAN_ST_FAILURE;
        ManCBit.GripFail = 1 ;
        // Intentionally no break here

    case MAN_ST_DONE:
        // Final
        SysState.Package.LaserRequest = 0;
        StopSuctionMonitor() ;
        ApplySuck( );
        for( cnt = 0; cnt < (short) NUM_24V_AXES; cnt++ )
        {
            ManCmd.Ctl24[cnt].SpeedCmd = 0;
        }

        StopMotors() ;

        ApplySuck();
        break;

    case MAN_ST_BACK_TO_STANDBY:
        // Re-put package in place ; when done, just retreat
        ApplyPosControl ( updAxis) ;
        if( IndividualStopped )
        {
            GoPointNew(1,updAxis,ManCmd.Recovery24.SpeedFac) ;
            SafeTransitManState(  MAN_ST_RETREAT );
        }
        break ;

    case MAN_ST_RETREAT:
        // Retreat home after failure
        ApplyPosControl ( updAxis) ;
        if( IndividualStopped  ) //check within .01m of desired position
        {
            SafeTransitManState(  MAN_ST_RELEASE_WAIT_STOP );
        }
        break;
    }
}

/*
 * Log whether the manipulator holds the package
 */
void  LogHoldingState(void)
{
    if ( ManipulatorType == Flex_Manipulator )
    {
        SysState.Package.ManHolds = SysState.EEF.Status.PackageState.all;
    }
    else
    { //if ( ManipulatorType == SCARA_Manipulator )
        if ( (ManCmd.State > MAN_ST_INIT) && (ManCmd.State < MAN_ST_FAILURE)  )
        {
            if ( SysState.Package.LaserMedianValid && ( SysState.Package.LaserDistMedian <  ManGeo.MaxLaserDistOnHold ))
            {
                SysState.Package.ManHolds |= ( MAN_HOLDS_SUSPECT_CONTACT + MAN_HOLDS_SUSPECT_CONTACT_STICKY )  ;
                if ( SysState.Pump.IsHolding) //the pump is on and stabilization time has passed.
                {
                    SysState.Package.ManHolds |= ( MAN_HOLDS_SUSPECT_CONTACT_W_PUMP + MAN_HOLDS_SUSPECT_CONTACT_W_PUMP_STICKY ) ;
                }
                else
                {
                    SysState.Package.ManHolds &= (~MAN_HOLDS_SUSPECT_CONTACT_W_PUMP) ;
                }
            }
            else
            {
                SysState.Package.ManHolds &= (~(MAN_HOLDS_SUSPECT_CONTACT+MAN_HOLDS_SUSPECT_CONTACT_W_PUMP)) ;
            }
        }
    }
}


/*
 * \brief Handle package state machine
 */
void ManHandlePackage(float dT , short unsigned updAxis )
{
    short suckResult;
    //short unsigned  Stopped;


    if (ManCmd.State == MAN_ST_INIT)
    {
        //ActivateProgrammedRecorder() ;// Generate records (Vandal)
        ManCmdSamp.PackageGet = ManCmd.ControlWord.PackageGet ;
        ManCmdSamp.IsRepeated = ( ManCmd.ControlWord.RepeatAction ? 1 : 0 ) ;
        StopSuctionNoMonitor()  ; // No suck , no wait
        SysState.Package.ManHolds = MAN_HOLDS_ACTIVE_STICKY  ;
    }


    // Test if sucker works
    suckResult = ApplySuck();

    if( suckResult == 0 )
    { // Waiting sucker to reach desired state, nothing more to do
        StopMan(dT) ;
        return ;
    }

    // Log suspect package contacts
    LogHoldingState() ;

    if ( ManCmdSamp.PackageGet  )
    {
        ScaraGetPackageNew( dT , updAxis , suckResult ) ;
        return ;
    }
    else
    {
        ScaraSetPackageNew( dT , updAxis , suckResult  ,  ManCmdSamp.IsRepeated ) ;
    }
}





// Time to reverse
short ReverseAcc( short cnt , float dRho  )
{
    float v , a , vcand, dt ;
    while (cnt > 0)
    {
        v   = vvec[cnt] ;
        a   = 0.5f * ( avec[cnt] + avec[cnt-1]) ;
        if ( a < 1e-3f )
        {
            if ( v < 1e-3f )
            {
                return -3;
            }
            else
            {
                dt = dRho / v ;
            }
        }
        else
        {
            dt  = ( Ysqrt( v * v + 2 * a * dRho) - v ) / a ;
        }
        vcand = vvec[cnt] + dt * a ;
        cnt = cnt-1 ;
        if ( vcand <= vvec[cnt] )
        {
            vvec[cnt] = vcand ;
        }
        else
        {
            break ;
        }
    }
    return cnt ;
}



short ResetXYTraj(struct CXYTraj *pTraj,float x1 , float y1 , float tht1 , float x2 , float y2 , float Ts );
short DecodeXYTraj( float vec[] , float dvec[] );


//long  dswatch ;
/*
 * \brief Set the tool tip level profiler
 *
 * TargetX,TargetY : sian targets
 */
short ProgramToolTipMotionNew ( float TargetX , float TargetY , float LineSpeed  )
{
    //short stat ;
    float ThtTarget;
    float x , y , theta ,  wx , wy ;
    float s[DEF_NUM_24V_GEOM_AXES] ;
    //long  swatch1,swatch ;

    short dir ;
    enum E_ProfileMode mode ;

    if ( Dynamixel24.InitState != 1 )
    {  // If not ready, don't program
        return -1 ;
    }

    if (( (TargetX > 0) || ( HYpot(TargetX , (float)fabs( TargetY)-  ManGeo.LHand ) >  (ManGeo.LHumerus + ManGeo.LRadius - 0.01f ) )))
    { // Test target is reachable
        return -3 ;
    }

    if ( LineSpeed <= 0 )
    {
        return -2 ;
    }

    // If direction is not consistent, go first of all to the standby mode
    dir = GetThetaTarget( & ThtTarget ) ;

    if ( dir == 0 )
    { // Could not determine direction
        return -3 ;
    }

    ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.vmax = ManGeo.ShoulderMaxSpeed ;
    ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.vmax = ManGeo.ElbowMaxSpeed ;
    ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.vmax = ManGeo.WristMaxSpeed ;

    ManCmd.Recovery24.TargetX = TargetX ;
    ManCmd.Recovery24.TargetY = TargetY ;
    ManCmd.Recovery24.LineSpeed = LineSpeed ;


    s[0] = ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.ProfilePos ;
    s[1] = ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.ProfilePos ;
    s[2] = ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.ProfilePos ;


    mode = EProfile_ToolTip ;
    if ( dir * ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.ProfilePos > 0 )
    {   // Wrong posture on start. Not a real possibility, as first positioning is per-axis anyway, but ...
        //First of all go to start position , we will speak than ...
        s[0] = STDBY_SHOULDER_ANGLE * dir ;
        s[1] = -2.0f * STDBY_SHOULDER_ANGLE  * dir ;
        s[2] = (STDBY_SHOULDER_ANGLE - 1.570796326794897f) * dir ;
        ResetProfiler ( &ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler , s[0] , 0, 0 ) ; //  STDBY_SHOULDER_ANGLE * dir , 0 , 0 ) ;
        ResetProfiler ( &ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler , s[1] , 0 , 0 ) ; // -2.0f * STDBY_SHOULDER_ANGLE  * dir , 0 , 0 ) ;
        ResetProfiler ( &ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler , s[2] , 0, 0 ) ; // (STDBY_SHOULDER_ANGLE - 1.570796326794897f) * dir , 0 , 0 ) ;
        mode = EProfile_PerAxis ;
    }
    else
    {
        // Wrong gripper angle on start. Not a real possibility, as first positioning is per-axis anyway, but ...
        // First of all go to start position , we will speak than ...        ThtTarget = -dir * 1.570796326794897f - ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.ProfilePos- ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.ProfilePos ;
        if ( fabs ( ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.ProfilePos + ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.ProfilePos
                    +  ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.ProfilePos + ThtTarget) > 0.02f )
        {
            ResetProfiler ( &ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler , ThtTarget , 0 , 0 ) ;
            s[2] = ThtTarget ;
            mode = EProfile_PerAxis ;
        }
    }

    // Get starting conditions (if there was an intermediate per-axis motion : at its end)
    ScaraGetGripperRobotCoordBody ( &x , &y  , &wx , &wy , &theta, s[0] , s[1] , s[2] ) ;
                              //ManCmd.Ctl24[MAN_AXIS_SHOULDER].Profiler.ProfilePos , ManCmd.Ctl24[MAN_AXIS_ELBOW].Profiler.ProfilePos , ManCmd.Ctl24[MAN_AXIS_WRIST].Profiler.ProfilePos ) ;

    // The factor of 2 is since a communication cycle with the DXL occurs in two tacts (read feedback/write command)
    if ( ResetXYTraj(&XYTraj , x ,  y , theta, TargetX , TargetY , 2.0f * Dynamixel24.CommCycleTimeSec ) < 0)
    {
        return -1;
    }

//    swatch = GetTmr1_4Kaka() ;
    if ( PlanXYTraj(x , y , theta , TargetX , TargetY , LineSpeed )  < 0 )
    {
        return -1;
    }
//    swatch1= GetTmr1_4Kaka()  ;
//    dswatch = swatch1 - swatch ;

    SetProfilingMode(mode);

    ManCmd.Cartesian = 1 ;
    return 0 ;
}


/**
 * \brief Set the manipulator commands given the 3 desired angles
 *
 *  The wrist angle is decided so as to complement the actual positions of the elbow and the shoulder
 */
short unsigned CartesianSetManAxisCmdsNew( float dt , short unsigned updAxis)
{
    short unsigned stopped;
    short stat;
    float vec[DEF_NUM_24V_GEOM_AXES] , dvec[DEF_NUM_24V_GEOM_AXES] , dx , p ;
    struct LinkControl  * pCtl ;
    (void) dt ;

    // Get the joint coordinates from the spatial profile
    stat = DecodeXYTraj( vec ,  dvec ) ;

    pCtl = &ManCmd.Ctl24[updAxis] ;

    if ( stat == 0 )
    { // Normal - get the speed and position
        dx = ( vec[updAxis] - pCtl->Profiler.ProfilePos ) / pCtl->dT ;
        p  = vec[updAxis];
    }
    else
    {
        dx = 0 ;
        if ( stat == 1 )
        { // Finished
            p  = vec[updAxis];
        }
        else
        {
            p  = pCtl->Profiler.ProfilePos ; // Error , or stop now
        }
    }

    ResetProfiler( & pCtl->Profiler , p  , dx   , 1  ) ;
    ApplyPosControl ( updAxis ) ;

    stopped = (XProfile.ProfilePos == XProfile.PosTarget) && (XProfile.Done )
            && ( ManCmd.Ctl24[MAN_AXIS_SHOULDER].IsPosDone * ManCmd.Ctl24[MAN_AXIS_ELBOW].IsPosDone  * ManCmd.Ctl24[MAN_AXIS_WRIST].IsPosDone ) && ( stat ==  1 ) ;
    return stopped ;
}


/*
 * Get manipulator axes trajectories for coordinated motion
 */
short DecodeXYTraj( float vec[] , float dvec[] )
{
    float delta ;
    float al , vl , deltarho;
    short retval, n ,  ndelta ;
    short unsigned cnt ;
    float x , y ;

    retval = 0 ;

    if ( XYTraj.rho < 1 )
    {
        delta = ( XYTraj.rho - XYTraj.rho1) * XYTraj.nRho  ; // Number of segments since last segment switch
        if ( delta > 1 )
        { // Advance to next point in trajectory vector
            ndelta = (short) delta ;
            //delta = delta - ndelta ; // Distance into next segment
            XYTraj.n += ndelta ;     // Advance segment counter
            XYTraj.rho1 = XYTraj.n * XYTraj.dRho ; // Parameter at the start of the present segment
        }
    }
    else
    { // Done
        XYTraj.n = XYTraj.nVec - 1 ;
        XYTraj.rho = 1 ;
        retval = 1;
    }

    n = XYTraj.n;

    // Interpolate acceleration of parameter
    al = (vvec[n+1]*vvec[n+1] - vvec[n]*vvec[n] ) * 0.5f * XYTraj.nRho  ;

    // Interpolate speed of parameter
    vl =  Ysqrt( vvec[n]*vvec[n] + 2 * al * ( XYTraj.rho - XYTraj.rho1) )  ;

    if ( vl + al * XYTraj.Ts <= 0 )
    {
        //% Speed turns negative
        if ( XYTraj.rho > 1.0f - XYTraj.dRho)
        {
            XYTraj.tTraj = XYTraj.tTraj + XYTraj.Ts ;
            XYTraj.rho = 1.0f ;
            vl = 0 ;
            retval = 1;
        }
    }

    if ( retval == 0 )
    { // Not arrived to end
        deltarho = vl * XYTraj.Ts + al * XYTraj.Ts * XYTraj.Ts * 0.5f ; // Length advance
        XYTraj.rho = XYTraj.rho + deltarho ;
        XYTraj.tTraj  = XYTraj.tTraj + XYTraj.Ts ;                      // Time advance
    }

    x = XYTraj.x1 + XYTraj.rho * (XYTraj.x2 - XYTraj.x1) ;              // Interpolate x and y coordinates
    y = XYTraj.y1 + XYTraj.rho * (XYTraj.y2 - XYTraj.y1) ;


    if (  InverseKyn( x , y , XYTraj.ThetaTarget , vec  , ManCmd.GetSide) < 0 ) // Inverse kynematics
    {
        return -1 ; // Bad
    }

    for ( cnt = 0 ; cnt < NUM_24V_GEOM_AXES ; cnt++ )
    {
        dvec[cnt] = ( vec[cnt] - XYTraj.vec[cnt]) * XYTraj.TsInv ; // Speeds at joints
        XYTraj.vec[cnt] = vec[cnt];
    }

    XProfile.ProfilePos   = XYTraj.rho ;
    XProfile.ProfileSpeed = vl ;
    XProfile.Done = (retval==1) ? 1 : 0 ;

    return retval;
}


short ResetXYTraj(struct CXYTraj *pTraj,float x1 , float y1 , float tht1 , float x2 , float y2 , float Ts )
{
    short nint = 512 ;
    pTraj->rho = 0 ;
    pTraj->rho1 = 0 ;
    pTraj->nVec = nint + 1 ;
    pTraj->nRho = nint  ;
    pTraj->dRho = 1.0f /(float) pTraj->nRho ;
    pTraj->n = 0 ;
    pTraj->tTraj = 0 ;
    pTraj->Ts = Ts ;
    pTraj->TsInv = 1.0f / Ts ;

    if (  InverseKyn( x1 , y1 , tht1 , pTraj->vec  , ManCmd.GetSide) < 0 )
    {
        return -1 ; // Bad
    }

    //GetGripperRobotCoord

    GetThetaTarget( &pTraj->ThetaTarget  );
    pTraj->x1 = x1 ;
    pTraj->y1 = y1 ;
    pTraj->x2 = x2 ;
    pTraj->y2 = y2 ;


    ResetProfiler ( & XProfile , 0 , 0 , 1 );
    XProfile.PosTarget  = 1 ;
    XProfile.Done = 0 ;

    return 0 ;
}


/*
 * Plan the trajectory of a Cartesian motion given the specific limits of each axis
 */
short PlanXYTraj(float x1 , float y1 , float tht1 , float x2 , float y2 , float LineSpeed )
{
    float ta , tainv ;
    float vmax[DEF_NUM_24V_GEOM_AXES+1] ;
    float amax[DEF_NUM_24V_GEOM_AXES+1] ;
    float dx, dy , dl ;
    float tf , tfmax ;
    short cnt , nRho , nVec , flag   ;
    short unsigned c1 ;
    float dRho , dRhoInv , rho ,ThetaTarget ;
    float vold[DEF_NUM_24V_GEOM_AXES] , vec[DEF_NUM_24V_GEOM_AXES] ;
    float am , vm , x , y , vline , aline , DxDrho , v , a , dt , vcand ;

    GetThetaTarget( &ThetaTarget  );

    dx = (float) fabs(x1-x2) ;
    dy = (float) fabs(y1-y2) ;
    dl = Ysqrt (dx * dx + dy * dy ) ;

    ta = ManGeo.ManipulatorAccTimeWithPack;
    vmax[0] = ManGeo.ShoulderMaxSpeed ;
    vmax[1] = ManGeo.ElbowMaxSpeed ;
    vmax[2] = ManGeo.WristMaxSpeed ;
    vmax[NUM_24V_GEOM_AXES] = LineSpeed / __fmax(dl, 1e-4f) ;

    tainv = 1.0f/ta ;
    for ( cnt = 0 ; cnt < 4 ; cnt++ )amax[cnt] = vmax[cnt] * tainv ;

    tfmax = GetProfileTimeNoTau((float)fabs(mod2piS(tht1 - ThetaTarget)) , vmax[2]  , amax[2]  , amax[2]);
    tf    = GetProfileTimeNoTau(dl  , vmax[NUM_24V_GEOM_AXES]  , amax[NUM_24V_GEOM_AXES]  , amax[NUM_24V_GEOM_AXES]);
    if ( tfmax < tf ) tfmax = tf ;
    if ( tfmax < 1e-2f )
    {
        return 0 ; // Trivial
    }

    nRho = 512 ;
    nVec = nRho + 1  ;
    dRhoInv = (float) nRho ;
    dRho = 1.0f / dRhoInv  ;

    if (  InverseKyn( x1 , y1 , ThetaTarget , vold  , ManCmd.GetSide) < 0 )
    {
        return -1 ; // Bad
    }


    // Get line-wise speed limits, neglecting the d^2x/drho^2 term
    for ( cnt = 1 ; cnt < nVec ; cnt++ )
    {
        rho = cnt * dRho ;
        x = x1 + rho * (x2 - x1) ;
        y = y1 + rho * (y2 - y1) ;
        if (  InverseKyn( x , y , ThetaTarget , vec  , ManCmd.GetSide) < 0 )
        {
            return -1 ; // Bad
        }

        vline  = vmax[NUM_24V_GEOM_AXES] ;
        aline  = amax[NUM_24V_GEOM_AXES] ;

        for ( c1 = 0 ; c1 < NUM_24V_GEOM_AXES ; c1++ )
        {
            DxDrho = (float)fabs( (vec[c1]-vold[c1]) * dRhoInv  ) ;
            if ( DxDrho > 1e-7f )
            {
                vm    = vmax[c1] / DxDrho ;
                am    = amax[c1] / DxDrho ;
                if ( vm < vline ) vline = vm ;
                if ( am < aline ) aline = am ;
            }
        }
        vvec[cnt] = vline ;
        avec[cnt] = aline ;

        vold[0]   = vec[0] ; vold[1]   = vec[1] ; vold[2]   = vec[2] ;
    }
    vvec[nVec-1]  = 0 ;avec[nVec-1] = avec[nVec-2] ;
    vvec[0]  = 0 ; avec[0] = avec[1] ;

    // Build a/v trajectory over rho
    cnt = 1 ;
    flag = 0 ;
    while ( cnt < nVec )
    {
        v   = vvec[cnt-1] ;
        a   = 0.5f * ( avec[cnt] + avec[cnt-1]) ;
        if ( a < 1e-3f )
        {
            if ( v < 1e-3 )
            {
                return -2 ;
            }
            else
            {
                dt = dRho / v ;
            }
        }
        else
        {
            dt  = ( Ysqrt( v * v + 2 * a * dRho) - v ) /  a ;
        }

        vcand = vvec[cnt-1] + dt * a ;
        if ( vcand <= vvec[cnt] )
        {
            vvec[cnt] = vcand  ;
            if (flag)
            {
                // Time to reverse
                cnt = ReverseAcc(  cnt ,  dRho  );
                flag = 0 ;
                if ( cnt < 0 )
                {
                    return cnt ;
                }
            }
        }
        else
        {
            // speed excess
            flag = 1 ;
        }
        cnt = cnt+ 1;
    }
    if ( flag)
    {
        cnt = ReverseAcc(  nVec-1 ,  dRho  );
    }
    return cnt ;
}
