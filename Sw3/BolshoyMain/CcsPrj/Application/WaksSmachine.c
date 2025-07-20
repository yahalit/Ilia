/*
 * WaksSmachine.c
 *
 * This file is the state machine used against the robot servos.
 * The
 *
 *  Created on: Sep 19, 2016
 *      Author: Yahali Theodor
 */

#include "StructDef.h"
#include "ItNav.h"
#include "gyro.h"

#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x) ;
#endif

#define NMT_CODE_START_NODE 1


short TestQueueSanity(  struct CUserMotionQueue * pQueue  , short unsigned StartIndex );
short unsigned CopyGndNavSegs( struct CUserMotionQueue * pQueue  , short unsigned StartIndex );
struct CMotionItem * AdvanceMotionQueue();


//Vandal
// #define PROG_HBEAT

/* Table of CAN initialization objects used similarly for all the axes for servo boot-up.
 * All to be sent as numeric expedited SDO
 * All those objects should be transmitted to the targets before servo are active.
 */
/* SlaveLogicID  , Index   , SubIndex , Lpayload , DataType */
#define TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE  0.05f

//BEWARE indices 1,2,3

const struct CInitSdo InitSdoGlob[] = {
        {  0x6040  , 0 ,  0 ,  6 } , // Control word, no reset fault
        {  0x6040  , 0 ,  0x80 ,  6 } , // Control word, Reset fault
        {  0x6040  , 0 ,  0 ,  6 } , // Control word, no reset fault
        {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MinInterMessage ,  .Lpayload.f = 0.002f ,  .DataType = 0x7 } ,
        {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_MaxInterMessage ,  .Lpayload.f = 0.05f ,  .DataType = 0x7 } ,
        {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_NomInterMessageTime ,  .Lpayload.f = 0.008192f ,  .DataType = 0x7 } ,
        {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_CONFIRM ,  .Lpayload.f = 1.0f ,  .DataType = 0x7 } , // Approve configuration
        {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list

        //{  0 , 0x1017  , 1 ,  1000 , 6}  // Producer heart-beat time
};
#define N_INIT_SDO ( sizeof(InitSdoGlob) / sizeof(struct CInitSdo) )


const struct CInitSdo InitSdoRW[] = {
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.fPtr = &Constraint.MaxWheelAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileTau ,  .Lpayload.f = 0 ,  .DataType = 0x7 } , // No delay consideration in profiler
    {  .Index =  FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_HiAutoMotorOffThold ,  .Lpayload.f = 0 ,  .DataType = 0x7 } , // Disable auto stop
    {  .Index =  FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_SteeringColumnDistRatio ,  .Lpayload.fPtr = &Geom.Calc.SteeringColumnDistRatio ,  .DataType = 0x8 } , // Disable auto stop
    {  .Index =  FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_ExtCutCst ,  .Lpayload.f = 0.001f ,  .DataType = 0x7 } , // Disable auto stop
    {  .Index = 0x2223  , .SubIndex = 4 ,  .Lpayload.ul = 0  ,  .DataType = 0x7 } , // Install wheel encoder matching test
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};
//Vandal: Must put encoder match test, now neutralized
const struct CInitSdo InitSdoLW[] = {
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.fPtr = &Constraint.MaxWheelAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileTau ,  .Lpayload.f = 0 ,  .DataType = 0x7 } , // No delay consideration in profiler
    {  .Index =  FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_HiAutoMotorOffThold ,  .Lpayload.f = 0 ,  .DataType = 0x7 } , // Disable auto stop
    {  .Index =  FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_SteeringColumnDistRatio ,  .Lpayload.fPtr = &Geom.Calc.SteeringColumnDistRatio ,  .DataType = 0x8 } , // Disable auto stop
    {  .Index =  FLOAT_OBJ_INDEX  , .SubIndex = CFG_Float_ExtCutCst ,  .Lpayload.f = 0.001f ,  .DataType = 0x7 } , // Disable auto stop
    {  .Index = 0x2223  , .SubIndex = 4 ,  .Lpayload.ul = 0  ,  .DataType = 0x7 } , // Install wheel encoder matching test
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};


const struct CInitSdo InitSdoRSteer[] = {
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileSpeed ,  .Lpayload.fPtr = &Constraint.MaxSteerSpeedCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.fPtr = &Constraint.MaxSteerAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.fPtr = &Constraint.MaxSteerAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileTau ,  .Lpayload.f  = 0.03f ,  .DataType = 0x7 } , // Profile speed limit
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};



const struct CInitSdo InitSdoLSteer[] = {
     {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileSpeed ,  .Lpayload.fPtr = &Constraint.MaxSteerSpeedCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.fPtr = &Constraint.MaxSteerAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.fPtr = &Constraint.MaxSteerAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileTau ,  .Lpayload.f  = 0.03f ,  .DataType = 0x7 } , // Profile speed limit
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};

const struct CInitSdo InitSdoNeck[] = {
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileSpeed ,  .Lpayload.fPtr = &Constraint.MaxNeckSpeedCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileAcc ,  .Lpayload.fPtr = &Constraint.MaxNeckAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileDec ,  .Lpayload.fPtr = &Constraint.MaxNeckAccelerationCmd ,  .DataType = 0x8 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_ProfileTau ,  .Lpayload.f  = 0.03f ,  .DataType = 0x7 } , // Profile speed limit
    {  .Index = CFG_OBJ_INDEX  , .SubIndex = CFG_PosErrorLimit ,  .Lpayload.f  = 0.1f ,  .DataType = 0x7 } , // Position error limit
    {  0xffff  , 0xffff ,  0xffff , 0xffff}   // Terminate list
};


const struct CInitSdo * const SpecificSdoInit[N_CAN_SLAVES] = {(struct CInitSdo *) &InitSdoRW , (struct CInitSdo *)&InitSdoLW,
        (struct CInitSdo *) &InitSdoRSteer , (struct CInitSdo *)&InitSdoLSteer,
        (struct CInitSdo *) &InitSdoNeck } ;


long unsigned GetManufacturerSpecificCode (long code)
{
    return ( ( code) ? Manufacturer_error_detail +  *(long unsigned*) &code : 0 ) ;
}


short SendSdoExpeditUloadLong(  struct CSdo * pSdo);




/**
 * \brief Send SET SDO to any servo axis
 *
 */
long unsigned SendSdo2Slave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId )
{
    //short unsigned cnt  ;
    extern short TestIfTrapped(short unsigned CobId);

    long unsigned AbortCode ;
    struct CSdo volatile * pSdo ;
    if ( SysState.CanAxis[LogicId].Installed == 0 )
    {
        return UNSIGNED_MINUS1 ;
    }

    pSdo = &SysState.CanAxis[LogicId].Sdo ;
    MemClr((short unsigned *)pSdo,sizeof(struct CSdo)  );

    switch ( nBytes )
    {
    case 1:
        pSdo->DataType = 5 ;
        break ;
    case 2:
        pSdo->DataType = 6 ;
        break ;
    case 4:
        pSdo->DataType = 7 ;
        break ;
    default:
        return UNSIGNED_MINUS1 ;
    }


    pSdo->SlaveID = SysState.CanAxis[LogicId].CanId ;
    pSdo->Index = Index ;
    pSdo->SubIndex= SubIndex ;
    pSdo->Lpayload = * (long unsigned *) PayLoad ;

    // Set SDO to queue and set trap to SDO response
    SendSdoExpeditDloadLong( (struct CSdo *) pSdo );
    AbortCode = UNSIGNED_MINUS1 ;

    while ( TestIfTrapped ( pSdo->TrapCobId) >= 0 )
    { // While SDO reply is still trapped (dont if SDO trap is thrown by timeout)
        WaitStam(1500, &SysTimerStr) ;

        IdleCanProc() ;

        if ( pSdo->Status < 0 )
        {   // SDO aborted - return status
            if ( pSdo->AbortCode )
            {
                AbortCode = pSdo->AbortCode ;
            }
            break ;
        }

        // Check that all the slaves responded correctly
        if  ( pSdo->Status == 1)
        { // This SDO is confirmed ;
            AbortCode = 0  ;
            break ;
        }
    }
    return AbortCode ;
}



/**
 * \brief Send SET SDO to any servo axis
 *
 */
long unsigned UploadSdoFromSlave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId )
{
    short unsigned cnt  ;
    long unsigned AbortCode ;
    struct CSdo volatile * pSdo ;
    if ( SysState.CanAxis[LogicId].Installed == 0 )
    {
        return 0xffffffff ;
    }

    pSdo = &SysState.CanAxis[LogicId].Sdo ;
    MemClr((short unsigned *)pSdo,sizeof(struct CSdo)  );
    pSdo->SlaveBuf = (unsigned long *) &pSdo->Lpayload;

    switch ( nBytes )
    {
    case 1:
        pSdo->DataType = 5 ;
        break ;
    case 2:
        pSdo->DataType = 6 ;
        break ;
    case 4:
        pSdo->DataType = 7 ;
        break ;
    default:
        return 0xffffffff ;
    }


    pSdo->SlaveID = SysState.CanAxis[LogicId].CanId ;
    pSdo->Index = Index ;
    pSdo->SubIndex= SubIndex ;
    pSdo->Lpayload = 0 ; //* (long unsigned *) PayLoad ;

    SendSdoExpeditUloadLong( (struct CSdo *) pSdo );
    AbortCode = 0xffffffff ;

    for ( cnt = 0 ; cnt < 10 ; cnt++ )
    {
        WaitStam(1500, &SysTimerStr) ;
        IdleCanProc() ;

        if ( pSdo->Status < 0 )
        { // Abort
            if ( pSdo->AbortCode )
            {
                AbortCode = pSdo->AbortCode ;
            }
            SendSdoExpeditUloadLong( (struct CSdo *)pSdo ); // Retry
        }

        // Check that all the slaves responded correctly
        if  ( pSdo->Status == 1)
        { // This SDO is transmitted;
            *PayLoad = pSdo->Lpayload ;
            return 0  ;
        }
    }
    return AbortCode ;
}

/**
 * \brief Send SET SDO to any servo axis
 *
 */
struct CSdo volatile IntfcSdo ;

long unsigned UploadSdoFromInterfaceCard ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId )
{
    short unsigned cnt   ;
    long unsigned AbortCode ;
    struct CSdo volatile * pSdo ;
    pSdo = &IntfcSdo ;
    MemClr((short unsigned *)pSdo,sizeof(struct CSdo)  );
    pSdo->SlaveBuf = (unsigned long *)&pSdo->Lpayload;
    if ( LogicId == 0 )
    {
        if (( SysState.CanAxis[LOGICAL_RW].Installed == 0 ) || ( SysState.CanAxis[LOGICAL_RSTEER].Installed == 0 ))
        {
            return 0xfffffffd ;
        }
        pSdo->SlaveID = ID_INTFC_RIGHT ;
    }
    if ( LogicId == 1 )
    {
        if (( SysState.CanAxis[LOGICAL_LW].Installed == 0 ) || ( SysState.CanAxis[LOGICAL_LSTEER].Installed == 0 ))
        {
            return 0xfffffffd ;
        }
        pSdo->SlaveID = ID_INTFC_LEFT ;
    }


    switch ( nBytes )
    {
    case 1:
        pSdo->DataType = 5 ;
        break ;
    case 2:
        pSdo->DataType = 6 ;
        break ;
    case 4:
        pSdo->DataType = 7 ;
        break ;
    default:
        return 0xffffffff ;
    }


    pSdo->Index = Index ;
    pSdo->SubIndex= SubIndex ;
    pSdo->Lpayload = 0 ; //* (long unsigned *) PayLoad ;

    SendSdoExpeditUloadLong( (struct CSdo *) pSdo );
    AbortCode = 0xffffffff ;

    for ( cnt = 0 ; cnt < 10 ; cnt++ )
    {
        WaitStam(1500, &SysTimerStr) ;
        IdleCanProc() ;

        if ( pSdo->Status < 0 )
        { // Abort
            if ( pSdo->AbortCode )
            {
                AbortCode = pSdo->AbortCode ;
            }
            SendSdoExpeditUloadLong( (struct CSdo *)pSdo ); // Retry
        }

        // Check that all the slaves responded correctly
        if  ( pSdo->Status == 1)
        { // This SDO is transmitted;
            *PayLoad = pSdo->Lpayload ;
            return 0  ;
        }
    }
    return AbortCode ;
}


/**
 * \brief Send SET SDO to manipulator
 *
 */

/*
long SendSdo2Manip ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short nretries )
{
#ifdef MANIP2
    return 0 ;
#else
    return SendSdo2PDRetry (Index ,  SubIndex , PayLoad , nBytes , nretries );
#endif
}
*/



/*
 * \brief Get the target of the next segment
 */
short GetPosTarget( float *x , float *y , float *az )
{
    struct CMotionItem * pItem ;
    short  unsigned NextGet ;
    NextGet = ( MQ.nGet + 0 ) & (N_MOTION_REC_IN_USER_Q-1) ;

    if (NextGet == MQ.nPut )
    {
        return -1 ;
    }

    pItem = & MQ.Item[NextGet];

    if ( pItem->OpCode != QE_ENTRY_PATH_PT )
    {
        return -1 ;
    }

    *x = pItem->x * POS_UNIT_2_M ;
    *y = pItem->y * POS_UNIT_2_M ;
    *az = atan2f( pItem->cy , pItem->cx );

    return 0  ;

}



/*
 * \brief Get the target of the next segment
 */
short GetNextPosTarget( float *x , float *y , float *az )
{
    struct CMotionItem * pItem ;
    short  unsigned NextGet ;
    NextGet = ( MQ.nGet + 1 ) & (N_MOTION_REC_IN_USER_Q-1) ;

    if (NextGet == MQ.nPut )
    {
        return -1 ;
    }

    pItem = & MQ.Item[NextGet];

    if ( pItem->OpCode != QE_ENTRY_PATH_PT )
    {
        return -1 ;
    }

    *x = pItem->x * POS_UNIT_2_M ;
    *y = pItem->y * POS_UNIT_2_M ;
    *az = atan2f( pItem->cy , pItem->cx );

    return 0  ;

}

/*
 * \brief Get the travel distance for uncrabbing
 */
short GetNextNextPosTarget( float *x , float *y , float *az , float *dist )
{
    struct CMotionItem * pItem ;
    short  unsigned NextGet ;
    float  x1, y1 ;
    NextGet = ( MQ.nGet + 1 ) & (N_MOTION_REC_IN_USER_Q-1) ;

    if (NextGet == MQ.nPut )
    {
        return -1 ;
    }

    pItem = & MQ.Item[NextGet];
    if ( pItem->OpCode != QE_ENTRY_PATH_PT )
    {
        return -1 ;
    }
    x1 = pItem->x * POS_UNIT_2_M ;
    y1 = pItem->y * POS_UNIT_2_M ;

    NextGet = ( NextGet + 1 ) & (N_MOTION_REC_IN_USER_Q-1) ;

    if (NextGet == MQ.nPut )
    {
        return -1 ;
    }

    pItem = & MQ.Item[NextGet];
    if ( pItem->OpCode != QE_ENTRY_PATH_PT )
    {
        return -1 ;
    }

    * x = pItem->x * POS_UNIT_2_M ;
    * y = pItem->y * POS_UNIT_2_M ;

    *dist = HYpot( y1 - *y , x1 - *x );
    if ( * dist < 0.01f )
    {
        return -1 ;
    }

    *az = mod2piS ( atan2f( y1 - *y , x1 - *x ) - 1.570796326794897f * ManRouteCmd.CrabCrawl  )  ;

    return 0  ;

}




/*
 * \brief Get if the next command is a junction rotate
 * \return 0 is ok, -1 if next command is not change mode
 */
short GetNextChgMode ( short unsigned *crab , short unsigned *juncRotate ,short unsigned *climb  )
{
    struct CMotionItem * pItem ;
    short  unsigned NextGet ;
    NextGet = ( MQ.nGet + 1 ) & (N_MOTION_REC_IN_USER_Q-1) ;
    pItem = & MQ.Item[NextGet];

    if ( pItem->OpCode != QE_ENTRY_CHANGE_MODE )
    {
        return -1 ;
    }

    *crab        = (short signed)pItem->x ;
    *juncRotate  = (short unsigned)pItem->y ;
    *climb       = (short unsigned) pItem->z_or_lModeData ;

    return 0  ;

}


/*
 * Set auto mode
 */
void SetAutoMode(void)
{
    short unsigned mask  ;
    mask = BlockInts() ;
    //if ( SysState.Mot.mode != E_SysMotionModeAutomatic )
    {
        SysState.Nav.Robot.CurveCorrection  = 0 ;
        SysState.Nav.Robot.CurveCorrectionF = 0 ;
    }
    SysState.Mot.QuickStop = 0 ; // Enter a new queue - clear any quick stop
    SysState.CBit.bit.QueueAborted = 0 ;
    SetMotionMode(E_SysMotionModeAutomatic,33) ;
    SetReferenceOperationalModes() ;
    RestoreInts(mask);
}

/*
 * \brief  Advance the motion queue
 * \return The next item in the queue, or NULL if queue was empty
 */

struct CMotionItem * AdvanceMotionQueue()
{
    struct CMotionItem * pItem ;
    if ( MQ.nGet == MQ.nPut)
    {
        LogException( OWN_EXP_ID , EXP_ABORT  , err_advance_empty_queue );
        return NULL;
    }

    MQ.nGet = ( MQ.nGet + 1 ) & (N_MOTION_REC_IN_USER_Q-1) ;
    SysState.Mot.ChgMode.State = E_ChgmodeState_Init  ;
    pItem = & MQ.Item[MQ.nGet];

    // Go to automatic mode on need
    if ( SysState.Mot.mode >= E_SysMotionModeStay )
    {
        SetAutoMode() ;
    }

    // Initiate submode
    SysState.ManRouteState.DifferenceDrive = 0 ;

    return pItem ;
}




/**
 * \brief Change the mode handler
 */
void ChangeModeHandler( void )
{
    short crab ;
    short unsigned juncRotate  , climb , NextShelfMode ;
    short unsigned mask ;
    long unsigned stat  ;
    float yaw , pitch , roll;

    long werr1 , werr2;


    struct CMotionItem * pItem ;

    pItem = & MQ.Item[MQ.nGet];

    crab        = (short signed)pItem->x ;
    juncRotate  = (short unsigned)pItem->y ;
    climb       = (short unsigned) pItem->z_or_lModeData ; //ok
    SysState.Mot.MotLog = SetLBitField ( SysState.Mot.MotLog , 0x1f , 15 , (crab & 3) + ((juncRotate & 3)<<2) + ((climb&1)<<4)  ) ;

    switch ( SysState.Mot.ChgMode.State )
    {
    case E_ChgmodeState_Init:

        // First test that the angle is correct
        if ( ManRouteCmd.ShelfMode == E_Shelf_Nothing )
        {
            if ( juncRotate )
            {// Rotate junction command
                LogException ( OWN_EXP_ID , EXP_ABORT,  E_Q_CANT_ROTATE_JUNC_ON_GND ) ;
                break ;
            }
            if ( climb )
            {// We go into climb, the climb parameters are in the next command
                if ( ManRouteCmdImage.CurvatureCmd || ( ManRouteCmd.CrabCrawl == 0 ) )
                { // test readiness for climb
                    LogException ( OWN_EXP_ID , EXP_ABORT, exp_climb_transition_wheels_not_aligned ) ;
                    break;
                }


                // Test that the climb start is enough near the nominal point
                //d = HYpot(SysState.Nav.iPos[0]* POS_UNIT_2_M - SysState.ManRouteState.NomRouteLocation[0],
                //  SysState.Nav.iPos[1]* POS_UNIT_2_M - SysState.ManRouteState.NomRouteLocation[1]);

                QuattoEuler(GyroInt.BodyQuat , &yaw, &pitch, &roll);

                if (/* d > 0.05f || */ (float) fabs(mod2piS(yaw- SysState.ManRouteState.NomRouteTangent) )  > 0.1f )
                {
                    LogException(OWN_EXP_ID, EXP_ABORT, E_CLIMB_START_TOO_FAR_FROM_NAV);
                    break;
                }

                SysState.ShelfRun.ShelfSubMode = 0 ;
                //SysState.ShelfRun.ShelfMode = E_ShelfArc ;
                SysState.ShelfRun.CrabCrawl = ManRouteCmd.CrabCrawl ;

                //stat = EnterShelfMotionCmd(&SysState.ShelfRun.CrabCrawl , SysState.ShelfRun.ShelfMode, SysState.ShelfRun.ShelfSubMode,0) ;
                stat = EnterShelfMotionCmd(&SysState.ShelfRun.CrabCrawl , E_ShelfArc, SysState.ShelfRun.ShelfSubMode,0) ;
                ManRouteCmd.LineAcc = ManRouteCmd.ShelfRunPars.PoleLineAcc;
                if ( stat )
                { // test readiness for climb
                    LogException ( OWN_EXP_ID , EXP_ABORT, E_Q_TRANSITION_TO_CLIMB_FAIL ) ;
                    break;
                }

                pItem = AdvanceMotionQueue ( ) ;
                // Check that the next item describes a motion element
                if ( pItem == NULL || pItem->OpCode != QE_ENTRY_PATH_PT )
                {
                    LogException ( OWN_EXP_ID , EXP_ABORT,  E_Q_NEXT_OPCODE_MUST_BE_VERTICAL_TRAVEL  ) ;
                    break ;
                }

                AutomaticRunPars.Xbase = pItem->x  * POS_UNIT_2_M ;
                AutomaticRunPars.Ybase = pItem->y  * POS_UNIT_2_M ;

                AutomaticRunPars.CenterProjHeight = -pItem->z_or_lModeData * POS_UNIT_2_M  ;//- Geom.PostSwitchHeightAboveGnd ;  //ok
                if (AutomaticRunPars.CenterProjHeight < (Geom.Center2WheelDist * 2 + 0.1f))
                {
                    LogException(OWN_EXP_ID, EXP_ABORT, exp_height_of_shelf_too_low );
                    break;
                }
                ManRouteCmd.ShelfRunPars.CenterProjHeight = AutomaticRunPars.CenterProjHeight;
                ManRouteCmd.ShelfRunPars.Xbase = pItem->x  * POS_UNIT_2_M ;
                ManRouteCmd.ShelfRunPars.Ybase = pItem->y  * POS_UNIT_2_M ;

                SysState.ManRouteState.Destination[0] = ManRouteCmd.ShelfRunPars.Xbase ;
                SysState.ManRouteState.Destination[1] = ManRouteCmd.ShelfRunPars.Ybase ;
                SysState.ManRouteState.Destination[2] = -ManRouteCmd.ShelfRunPars.CenterProjHeight ;


                // Set the tail to automatic and full feedback gain
                SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto ;
                SysState.Mot.InGroundNav = 0; // No more in ground navigation
            } // end if( climb)
            else
            {    // Change yaw. This is a complicated state machine, just log the initial data
                if ( ManRouteCmd.CrabCrawl != crab )
                {
                    if ( crab == 0 )
                    {
                        LogException(OWN_EXP_ID, EXP_ABORT, E_Q_UNEXPECTED_UNCRAB);
                        break;
                    }

                    // Get the location of a pole tand shelf line direction
                    if (  GetNextPosTarget( & SysState.ManRouteState.NomRouteLocation[0] ,
                                            &SysState.ManRouteState.NomRouteLocation[1], &SysState.ManRouteState.NomRouteTangent ) )
                    {
                        LogException ( OWN_EXP_ID , EXP_ABORT, E_Q_YEW_CHANGED_SHOULD_BE_FOLLOWED_BY_PATH ) ;
                        break ;
                    }

                    SysState.ManRouteState.PendingCrab      = crab;
                    CrabProfiler.Done = 1 ; // Mark profiler as done
                    SysState.Mot.ChgMode.State  =  E_ChgmodeState_CommitCrab ;
                    SysState.Mot.ChgMode.SubState = E_CommitCrab_Init ;
                    if ( SysState.Mot.UsePoleDocking == 0 )
                    {// Prepare for camera capture of QR code
                        SetPosReportCatchReduced(0) ;
                    }
                }
                else
                { // Nothing more to do ... move on , buddie
                    AdvanceMotionQueue();    // Done - advance to next queue item
                }
            }
        } // end if ( ManRouteCmd.ShelfMode == E_Shelf_Nothing )
        else
        { // On the shelf
            if ( juncRotate && ( climb == 0 ) )
            {
                LogException ( OWN_EXP_ID , EXP_ABORT,  exp_either_hight_or_planepos_may_change) ;
                break ;
            }

            if ( climb == 0 )
            { // Un-climb
                if ( ManRouteCmd.CrabCrawl == 0 )
                {
                    LogException ( OWN_EXP_ID , EXP_ABORT, exp_climb_transition_wheels_not_crabbed ) ;
                    break ;
                }

                // Observe next item, it should be a path point
                if (GetNextNextPosTarget(&SysState.ManRouteState.NomRouteLocation[0],
                    &SysState.ManRouteState.NomRouteLocation[1], &SysState.ManRouteState.NomRouteTangent, &SysState.ManRouteState.UnfoldTravel))
                {
                    LogException(OWN_EXP_ID, EXP_ABORT, E_Q_UNCLIMB_NOT_FOLLOWED_BY_NONTRIV_PATH);
                    break;
                }

                if ( IsArcSegmentCompensation() )
                {
                    SysState.ManRouteState.UnfoldTravel  = __fmax( SysState.ManRouteState.UnfoldTravel - GetArcEntryLength()  , 0.01f) ;
                }

                mask = BlockInts();
                {
                    SysState.Mot.ChgMode.State      = E_ChgmodeState_CommitUnCrab;
                    SysState.Mot.ChgMode.SubState   = E_CommitCrab_Init;
                    SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto;
                }
                RestoreInts(mask);
                EnterShelfMotionCmd(&SysState.ShelfRun.CrabCrawl , 0, 0,0) ;
            }

            if ( juncRotate )
            {// Command to rotate a junction
                // Test that junction is well located
                if (SysState.PoleRun.TargetArmDone != 7)
                {
                    LogException(OWN_EXP_ID, EXP_SAFE_FATAL, E_Q_JUNCTION_SW_NOT_DETECTED);
                }
                else
                {
                    mask = BlockInts() ;
                    {
                        if (ManRouteCmd.CrabCrawl)
                        { // Go to shelf
                            //SysState.ShelfRun.ShelfMode = E_TwistToShelf;
                            NextShelfMode = E_TwistToShelf;
                        }
                        else
                        { // if (~ManRouteCmd.CrabCrawl)
                            //SysState.ShelfRun.ShelfMode = E_TwistFromShelf;
                            NextShelfMode = E_TwistFromShelf;


                            // Test position is correct
                            werr1 =  SysState.ShelfRun.JuncWheelEncoderCapture[0] - SysState.ManRouteState.WheelEncoderNow[0] ;
                            werr2 =  SysState.ShelfRun.JuncWheelEncoderCapture[1] - SysState.ManRouteState.WheelEncoderNow[1] ;
                            if ( werr1 < 0 ) werr1 = -werr1;
                            if ( werr2 < 0 ) werr2 = -werr2;
                            if ( werr1 < werr2 ) werr1 = werr2 ;

                            if ( werr1 > Geom.MaxPosErrorToRotateJunc * Geom.Calc.Meter2WheelEncoderShelfHoriz)
                            {
                                LogException(OWN_EXP_ID, EXP_WARN, exp_shelf_travel_not_accurate_on_disk);
                                // break ;
                                // RestoreInts( mask) ;
                            }

                        }
                        SysState.ShelfRun.ShelfSubMode = 0;
                        SysState.ShelfRun.CrabCrawl = ManRouteCmd.CrabCrawl;

                        // Enter the complete command
                        stat = EnterShelfMotionCmd(&SysState.ShelfRun.CrabCrawl, NextShelfMode, SysState.ShelfRun.ShelfSubMode,0);
                        if (stat)
                        {
                            LogException(OWN_EXP_ID, EXP_ABORT, exp_transition_to_junction_rotation_failed);
                        }
                        else
                        {
                            SysState.Mot.ChgMode.State = E_ChgmodeState_WaitJunction;
                        }
                    }
                    RestoreInts( mask) ;
                }
            }
        } // End on shelf
        break ;
    case E_ChgmodeState_WaitJunction:
        if ( IsSysTimerElapse( TIMER_BRAKE_DELAY_4_SHELF  , &SysTimerStr) && (SysState.ManRouteState.NewCrabFlag == 0 ) )
        {   // Done with junction
            if (ManRouteCmd.CrabCrawl)
            {   // If robot is vertical , set neck to stabilization mode
                SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto ;
            }
            AdvanceMotionQueue ( ) ;    // Done - advance to next queue item

            if ( ManRouteCmd.CrabCrawl == 0 )
            { // Shelf
                PrepAutoShelfRun( ) ;
            }
            else
            { // Return to post
                //SysState.ShelfRun.ShelfMode = E_ShelfArc ;
                SysState.ShelfRun.ShelfSubMode = 0 ;
                stat = EnterShelfMotionCmd(&SysState.ShelfRun.CrabCrawl , E_ShelfArc, SysState.ShelfRun.ShelfSubMode,1) ;
                if ( stat )
                { // test readiness for climb
                    LogException ( OWN_EXP_ID , EXP_ABORT, E_Q_TRANSITION_FROM_JUNC_ROTATE_FAIL ) ;
                    break;
                }
            }
        }
        break ;

     case E_ChgmodeState_CommitCrab:
#ifdef DEBUG_TERMINAL_CLIMB
         SysState.Mot.UsePoleDocking = 1 ; //TODO: remove line after Ari updates SciSetConfiguration //OBB line
#endif

         if ( SysState.Mot.UsePoleDocking )
         {
             //stat = CommitCrabStateMachineRelative();
             stat = CommitCrabStateMachineRel2Robot(); //OBB line
         }
         else
         {
             stat = CommitCrabStateMachineNew() ;
         }
         if ( stat == 1 )
         {
             // Advance twice, for turn and for approach (the last un-required entry was of the end point of the crab and it was removed at sanity check.
             AdvanceMotionQueue() ;
             AdvanceMotionQueue() ;
         }
         break;
     case E_ChgmodeState_CommitUnCrab:
#ifdef DEBUG_TERMINAL_CLIMB
         SysState.Mot.UsePoleDocking = 1 ; //TODO: remove line after Ari updates SciSetConfiguration //OBB line
#endif

         if ( SysState.Mot.UsePoleDocking )
         {
             //stat = CommitUnCrabStateMachineRelative();
             stat = CommitCrabStateMachineRel2Robot(); //TODO: update, //OBB line
         }
         else
         {
             stat = CommitUnCrabStateMachine() ;
         }
         if ( stat == 1 )
         {
             // Advance 4 times, for turn and for 2 lines of approach, then 4 crab
             AdvanceMotionQueue() ;
             AdvanceMotionQueue() ;
             AdvanceMotionQueue() ;
             AdvanceMotionQueue() ;
         }
         break;
    }
}

/*
 * \brief Prepare auto shelf run
 */
void PrepAutoShelfRun(void)
{
    short unsigned mask ;
    float acc ;

    SysState.ShelfRun.CrabCrawl = 0 ; // Wheels shall be straight

    /* Initiate the profiler */

    ManRouteCmd.ShelfRunPars.ShelfSpeed = AutomaticRunPars.ShelfSpeed;

    acc = ControlPars.ShelfAcceleration;

    ProgramProfiler(&WheelProfiler[0], ManRouteCmd.ShelfRunPars.ShelfSpeed ,
        acc,acc,0.01f, EProfile_PerAxis);
    ProgramProfiler(&WheelProfiler[1], ManRouteCmd.ShelfRunPars.ShelfSpeed ,
        acc,acc,0.01f, EProfile_PerAxis);

    // Position and speed set to zero, for now marked done
    ResetProfiler(&WheelProfiler[0], 0, 0, 1);
    ResetProfiler(&WheelProfiler[1], 0, 0, 1);

    if ( SysState.Debug.bRecorder4ShelfRun )
    {
        ClearDebugVars() ;
        ActivateProgrammedRecorder();
    }

    mask = BlockInts();
    {
        // For now we run to nowhere, and we still don't change the actual mode
        WheelProfiler[0].Done = 0;
        WheelProfiler[0].PosTarget = 0;
        WheelProfiler[1].Done = 0;
        WheelProfiler[1].PosTarget = 0;

        SysState.ShelfRun.ShelfSubMode = 0;
        SysState.ShelfRun.bEndGame = 0 ;

        // Mode handler will be placed on hold
        SysState.ShelfRun.bProfileStart = 2;


        // Lock the present encoder position for future reference
        SysState.ManRouteState.WheelEncoderCapture[LOGICAL_RW] = WheelEncR.Position;
        SysState.ManRouteState.WheelEncoderCapture[LOGICAL_LW] = WheelEncL.Position;

        SysState.PoleRun.EncOnModeStart[LOGICAL_RW] = WheelEncR.Position;
        SysState.PoleRun.EncOnModeStart[LOGICAL_LW] = WheelEncL.Position;


        SysState.ShelfRun.NextStationIsPole = 0 ;

        SysState.ShelfRun.RunDirection      = 0 ;
    }
    RestoreInts(mask);
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( EnterAutoShelfMotion, "--opt_level=3" );
#endif
/*
\brief Enter a profile for auto shelf motion
\param dist   : distance to move, measured from mode start (NOT from end of last motion)
\param mode : Bit field. .0: Is the last move (do pole seek at the end)  .1: Is doing fine movement
*/
void EnterAutoShelfMotion(float dist , short mode  )
{
short unsigned mask ;
    float acc , sp ;//, deltaabs  ;

    if ( ManRouteCmd.ShelfMode  == 0 )
    {
        acc = Constraint.amax ;
        sp  = Constraint.vmax * 0.5f  ;
        //ResetProfiler(&WheelProfiler[0], 0, 0, 1);
        //ResetProfiler(&WheelProfiler[1], 0, 0, 1);
    }
    else
    {
        acc = ControlPars.ShelfAcceleration ;
        sp = ManRouteCmd.ShelfRunPars.ShelfSpeed  ;
    }

    mask = BlockInts();
    {
        SysState.Mot.QuickStop = 0 ;

        ManRouteCmd.ShelfRunPars.ShelfSpeed = AutomaticRunPars.ShelfSpeed;

        ProgramProfiler(&WheelProfiler[0], sp  ,  acc ,acc ,0.01f, EProfile_PerAxis);
        ProgramProfiler(&WheelProfiler[1], sp  ,  acc  ,acc ,0.01f, EProfile_PerAxis);


        WheelProfiler[0].Done = 0;
        WheelProfiler[1].Done = 0;

        SysState.ShelfRun.RunDirection = ( WheelProfiler[0].PosTarget <= dist )  ? 1 : -1 ;
        //deltaabs = (float)fabs(WheelProfiler[0].PosTarget - dist );

        WheelProfiler[0].PosTarget = dist ;
        WheelProfiler[1].PosTarget = dist ;

        ManRouteCmd.ShelfSubMode = 0;

        // Initiate motion profile
        SysState.ShelfRun.bProfileStart = 1;

        // Test if the next station is a pole run changed because we may return the same pole
        if ( mode & 1 ) // && ( deltaabs >= 0.1f ) )
        {
            SysState.ShelfRun.NextStationIsPole = 1;
        }
        else
        {
            SysState.ShelfRun.NextStationIsPole = 0;
        }

        if ( mode & 2)
        {
            SetMotionMode(E_SysMotionModeHostFinePosition,5) ;  ;
        }
        SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 0.5f, &SysTimerStr);

        if ( ManRouteCmd.ShelfMode != E_Shelf_Nothing)
        {
            ManRouteCmd.ShelfMode = E_ShelfRun_Auto;
        }
    }
    RestoreInts(mask);
}



/**
\brief      Manage automatic motion scenario
            runs every idle cycle if robot is operational
\return     0 if OK, otherwise an error code
*/
short RunAutoScheduler(void)
{
    short unsigned StartIndex , nextOpCode ;
    short unsigned mask;
    float dx, dy, c, s, dist, Ls2Pos;
    struct CMotionItem * pItem ;
    short unsigned crab ,juncRotate , climb ; //, oldcrab , oldjuncRotate ,oldclimb;
    short NextChgMode;

    // Protect queue drainage
    if ( MQ.nGet == MQ.nPut )
    {
        KillDifferenceDrive() ;
        SysState.Mot.ExecutingQueue = 0 ;
        SysState.Mot.AutoInWait = 1 ; // Nothing more to do, just wait , Tambal
        return 0;
    }

    pItem = & MQ.Item[MQ.nGet];
    nextOpCode = pItem->OpCode ;

    if ( SysState.Mot.InGroundNav )
    { // Running a programmed path from the real time, nothing more to do
        mask = BlockInts();
        {
            SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto;
        }
        RestoreInts(mask);
        return 0 ;
    }

    // Verify at least one interrupt before going on
    if ( SysState.Mot.ScdIsrCnt == IsrTimer.IsrCounter )
    {
        return 0;
    }
    SysState.Mot.ScdIsrCnt = IsrTimer.IsrCounter ;


    // Treat ground navigation.
    // This will suspend the logics of this routine till the ground navigation run ends
    if ( (nextOpCode == QE_ENTRY_PATH_PT) && (ManRouteCmd.ShelfMode == 0) && (ManRouteCmd.CrabCrawl==0)  )
    {
        SegRun.Init = 1 ;
        StartIndex = CopyGndNavSegs( &MQ  , MQ.nGet );
        if ( (StartIndex & ~(N_MOTION_REC_IN_USER_Q-1))  || SegQ[0].pExp->InError )
        {
            LogException(OWN_EXP_ID, EXP_ABORT, StartIndex);
            return (short) LogException( OWN_EXP_ID , EXP_ABORT , exp_mot_problem_seg_proccessing);
        }
        MQ.nGet = StartIndex ; // Next index after path completion
        SysState.Mot.InGroundNav = 1 ;
        SysState.ManRouteState.WaitPosReport = 0 ;
        SysState.Mot.ChgMode.State = E_ChgmodeState_Init   ;
        return 0 ; // Return OK
    }


    switch ( nextOpCode ) // Manage background modes
    {
    default:
        return (short) LogException( OWN_EXP_ID , EXP_ABORT , exp_mot_unknown_opcode);
    case QE_ENTRY_CHANGE_MODE :
        // Change mode can be either -
        // - Change yew angle
        // - Change junction (wheels to center or to the right)
        // - Change climb status
        IncrementLBitField ( &SysState.Mot.MotLog , 0x7 , 12 ) ;
        ChangeModeHandler() ;
        break ;
    case QE_ENTRY_SPECIALS:
        switch ( SysState.Mot.ChgMode.State )
        { // Initialization - copy motion parameters
        case 0:
            EnterRescueCommand(pItem) ;
            break ;
        case E_ChgmodeState_WaitShelfTravel:
            if (WheelProfiler[0].Done * WheelProfiler[1].Done == 0)
            {
                SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 0.5f, &SysTimerStr);
            }
            if (IsSysTimerElapse(TIMER_STABILIZE_FOR_TWIST, &SysTimerStr))
            {
                SysState.Mot.ChgMode.State = E_ChgmodeState_Complete;
            }
            break;

        case E_ChgmodeState_Complete: // Complete
            AdvanceMotionQueue() ;
            break ;
        }
        break ;

    case QE_ENTRY_PATH_PT:
        // Path point can be either vertical or horizontal
        switch ( SysState.Mot.ChgMode.State )
        { // Initialization - copy motion parameters
            case 0:
                SetSysTimerTargetSec( TIMER_STABILIZE_FOR_TWIST , 1.0f , &SysTimerStr) ; // Minimal mode life

                //PrevChgMode = GetPreviousChgMode ( &oldcrab , &oldjuncRotate ,&oldclimb  );
                // NextChgMode == 0 if the next command is change mode
                NextChgMode = GetNextChgMode ( &crab , &juncRotate ,&climb  );

                SysState.ManRouteState.Destination[0] = pItem->x * POS_UNIT_2_M ;
                SysState.ManRouteState.Destination[1] = pItem->y * POS_UNIT_2_M ;
                SysState.ManRouteState.Destination[2] = pItem->z_or_lModeData * POS_UNIT_2_M ;


                if ( ManRouteCmd.CrabCrawl == 0 )
                { // That's shelf
                    //SysState.fDebug[0] += 1 ;
                    // Get distance as projection of coordinate on shelf advance direction
                    dx = SysState.ManRouteState.Destination[0] - ManRouteCmd.ShelfRunPars.Xbase ; // SysState.ManRouteState.NomRouteLocation[0];
                    dy = SysState.ManRouteState.Destination[1] - ManRouteCmd.ShelfRunPars.Ybase ; // SysState.ManRouteState.NomRouteLocation[1];
                    c = Ycos(SysState.ManRouteState.NomRouteTangent);
                    s = Ysin(SysState.ManRouteState.NomRouteTangent);

                    dist = c * dx + s * dy; // Distance over the shelf, absolute

                    /*
                    SysState.fDebug[1] = SysState.ManRouteState.Destination[0];
                    SysState.fDebug[2] = SysState.ManRouteState.Destination[1];
                    SysState.fDebug[3] = SysState.ManRouteState.NomRouteLocation[0];
                    SysState.fDebug[4] = SysState.ManRouteState.NomRouteLocation[1];
                    SysState.fDebug[5] = dx;
                    SysState.fDebug[6] = dy;
                    SysState.fDebug[7] = s;
                    SysState.fDebug[8] = c;
                    SysState.fDebug[9] = dist;
                    SysState.fDebug[10] = SysState.ManRouteState.NomRouteTangent;
                    SysState.fDebug[11] = ManRouteCmd.ShelfRunPars.Xbase;
                    SysState.fDebug[12] = ManRouteCmd.ShelfRunPars.Ybase;
                    */

                    EnterAutoShelfMotion(dist , ( ( NextChgMode == 0)? 1: 0 )  ) ;
                    SysState.ShelfRun.ShelfSubMode = 0;
                    SysState.Mot.ChgMode.State = E_ChgmodeState_WaitShelfTravel;
                }
                else
                {
                    if ( ManRouteCmd.ShelfMode == E_Shelf_Nothing )
                    {
                        return (short) LogException( OWN_EXP_ID , EXP_ABORT , exp_cant_just_return_after_pole_access);
                    }
                    else
                    {
                        // Going to a vertical path

                        mask = BlockInts();
                        {
                            AutomaticRunPars.CenterProjHeight = -SysState.ManRouteState.Destination[2] ;//- Geom.PostSwitchHeightAboveGnd  ; //ok
                            ManRouteCmd.ShelfRunPars.CenterProjHeight = AutomaticRunPars.CenterProjHeight  ;

                            if (ManRouteCmd.ShelfRunPars.CenterProjHeight > 0)
                            {
                                Ls2Pos = Geom.LimitSw2DistPosOnArc + Geom.ClimbArcRadi * 1.570796326794897f;

                                if ( ( SysState.ManRouteState.ArcDistance[0] > Ls2Pos) && (SysState.ManRouteState.ArcDistance[1] > Ls2Pos)  )
                                {
                                    ManRouteCmd.ShelfSubMode = E_ShelfArc_SubMode_PreInterPoleCruise ;
                                }
                                else
                                {
                                    ManRouteCmd.ShelfSubMode = 0 ;
                                }
                                ManRouteCmd.ShelfMode = E_ShelfArc;
                                SysState.ShelfRun.ModeEndState = E_ShelfArc_SubMode_ClimbDone;
                                ManRouteCmd.ShelfWidthTarget = pItem->TrackWidthType ;
                                ManRouteCmd.JunctionMode = pItem->JunctionMode ;

                                SysState.Mot.ChgMode.State = E_ChgmodeState_WaitShoulderAdjust;
                            }
                            else
                            {
                                // Go down
                                SysState.ShelfRun.ModeEndState = E_ShelfArc_SubMode_UnclimbFinalWait;
                                SysState.Mot.ChgMode.State = E_ChgmodeState_WaitUnclimb;
                                ManRouteCmd.ShelfMode = E_ShelfArc;
                                ManRouteCmd.ShelfSubMode = 0; //  E_ShelfArc_SubMode_UnclimbWaitSwitch;
                                ManRouteCmd.ShelfRunPars.ArcSpeed = -AutomaticRunPars.PoleSpeed;
                            }
                        }
                        RestoreInts(mask);
                    }
                }
                break ;

            case E_ChgmodeState_WaitShoulderAdjust: // Wait shoulder adjust
                if ( ( ManRouteCmd.ShelfSubMode == SysState.ShelfRun.ModeEndState ) && IsSysTimerElapse(TIMER_STABILIZE_FOR_TWIST, &SysTimerStr))
                {
                    SysState.Mot.ChgMode.State = E_ChgmodeState_Complete ;
                }
                break ;

            case E_ChgmodeState_WaitUnclimb : // Wait un - climb
                if ( (ManRouteCmd.ShelfSubMode == SysState.ShelfRun.ModeEndState ) && IsSysTimerElapse(TIMER_STABILIZE_FOR_TWIST, &SysTimerStr))
                {
                    SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto;
                    SysState.Mot.ChgMode.State = E_ChgmodeState_Complete ;
                }
                break ;

            case E_ChgmodeState_WaitShelfTravel:
                if (WheelProfiler[0].Done + WheelProfiler[1].Done == 0)
                {
                    SetSysTimerTargetSec(TIMER_STABILIZE_FOR_TWIST, 0.5f, &SysTimerStr);
                }
                if (IsSysTimerElapse(TIMER_STABILIZE_FOR_TWIST, &SysTimerStr))
                {
                    SysState.Mot.ChgMode.State = E_ChgmodeState_Complete;
                }
                break;

            case E_ChgmodeState_Complete: // Complete
                AdvanceMotionQueue() ;
                break ;
        }
        break ;

    case QE_ENTRY_HANDLE_PACK:

        if  ( ( pItem->MotionItemMode & 1 ) == 0 )
        { // Mark pack as executed
            pItem->MotionItemMode |= 1 ;
            SysState.Package.State = EPackState_Init ;
            // Record desired action and side
            SysState.Package.Get = (pItem->z_or_lModeData & 0x1) ? 1 : 0   ; //ok
            SysState.Package.Side =(pItem->z_or_lModeData >> 16) & 0x3     ; //ok
            SysState.Package.IncidenceAngle = pItem->cx ;
            SysState.Package.PackageX = (float) pItem->x ;
            SysState.Package.PackageY = (float ) pItem->y ;
            SysState.Mot.NeckControl.NeckMode = E_NeckShelfAuto ;
            ManRouteCmd.LineSpeedCmd = 0 ; // Stop anyway
            SysState.Mot.QuickStop = 0 ;
            SysState.Package.ManipControlWord.RepeatAction = 0;
        }
        ManPackage( 0 );
        switch (SysState.Package.State )
        {
        case EPackState_Success:
            AdvanceMotionQueue() ;
            break ;

        case EPackState_MayUnclimb_Failure:
            /* Aug 2020
             * Vandal until finding why robot cannot recover normally after loss of shoulder drive
             *
            SysState.Package.LastFault = SysState.Package.PendingException;
            SysState.Package.IsFaultRecoverable = 1;
            LogException( OWN_EXP_ID , EXP_ABORT  , exp_package_handeling_recovered);
            break ;
            */
            // AdvanceMotionQueue() ;
        case EPackState_Failure:
            SysState.Package.LastFault = SysState.Package.PendingException;

            SysState.Package.IsFaultRecoverable = 0;
            LogException( OWN_EXP_ID , EXP_ABORT  , err_package_handeling_failed);
            break ;

        }
        break ;
    case QE_ENTRY_WAIT :
        KillDifferenceDrive();
        if ( pItem->z_or_lModeData  ) //ok
        { // Wait, but not forever
            if ( pItem->x )
            {
                SetSysTimerTargetSec ( TIMER_AUTO_WAIT , pItem->z_or_lModeData * 0.001f , &SysTimerStr) ; //ok
                pItem->x = 0 ;
            }
            if ( IsSysTimerElapse(TIMER_AUTO_WAIT, &SysTimerStr)  )
            {
                AdvanceMotionQueue() ;
                //MQ.nGet = (MQ.nGet+1) &(N_MOTION_REC_IN_USER_Q-1) ;
            }
        }
        else
        { // Infinite wait, so auto jump to null queue
            SysState.Mot.ExecutingQueue = 0 ;
            MQ.nGet = 0 ;
            MQ.nPut = 0 ;
            SysState.ManRouteState.WaitPosReport = 1 ; // Agree position reports
        }
        break ;
    }

    SysState.Mot.AutoInWait =  (( nextOpCode == QE_ENTRY_WAIT ) ? 1  : 0 ) ;

    return 0 ;
}


void SetReferenceOperationalModes(void)
{
    short unsigned cnt ;
    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++)
    {
        SetCanAxisReferenceMode( &SysState.CanAxis[cnt] ,MaximumClosureMode[cnt]==3? E_RefModeSpeed:E_PosModePTP) ;
    }
}

short WakeFailReason ;


long unsigned ReadIntfcConfig()
{
    long unsigned stat ;
    union
    {
        long l ;
        unsigned long ul ;
    }value;
    // Read the version of the interface cards
    stat = UploadSdoFromInterfaceCard ( 0x2301 , 7 , & value.l, 4 , 0 );
    if ( stat == 0xfffffffd )
    {
        SysState.InterfaceVersion[0] = 0 ;
    }
    else
    {
        if ( stat )
        {
            return stat ;
        }
        SysState.InterfaceVersion[0] = value.ul  ;
    }

    stat = UploadSdoFromInterfaceCard ( 0x2301 , 7 , & value.l, 4 , 1 );
    if ( stat == 0xfffffffd )
    {
        SysState.InterfaceVersion[1] = 0 ;
    }
    else
    {
        if ( stat )
        {
            return stat ;
        }
        SysState.InterfaceVersion[1] = value.ul  ;
    }

    return 0 ;

}

/**
 * \brief The state machine that contacts the servo until their initial setup is complete
 */
void CanStateMng()
{
    short cnt , done  , donewa , stat , TimeOver ;
    short unsigned nextmask , fullmask;
    //struct CCanAxis * pAxis ;
    short unsigned mask  ;
    //long val ;
    //struct CMotionItem * pItem ;
    //float q[4] , qdif[4] , ang ;
    //struct CPdCmd2 * pPdCmd2 ;


    switch ( SysState.WakeupState )
    {
    case E_CAN_WAKEUP_INIT :
        // Initialize the servo boot process
        SysState.WakeupSubState = 0 ;
        WakeFailReason = 0 ;

        SetSysTimerTargetSec ( TIMER_ARR_RESET_BOOTUP , TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE, &SysTimerStr );
        SetSysTimerTargetSec ( TIMER_ARR_RESET_TOTAL_BOOTUP , 8.0f , &SysTimerStr); // 5 sec to wake entire system // vandal

        //SetSysTimerTarget ( TIMER_ARR_RESET_BOOTUP , TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE_USEC, &SysTimerStr );
        //SetSysTimerTarget ( TIMER_ARR_RESET_TOTAL_BOOTUP , 8000000 , &SysTimerStr); // 5 sec to wake entire system

        SysState.WakeupState = E_CAN_WAKEUP_SEND_NMT_RESET;
        SysState.YDebug[2] += 1 ;

        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            SysState.CanAxis[cnt].BootAcknowledge = -1 ; // No axis is yet acknowledged for boot
            SysState.CanAxis[cnt].BH.IsPosition = IsPositionTab[cnt] ;
        }
        SysState.EmcyStopCsp = 0  ;
        break ;

    case E_CAN_WAKEUP_SEND_NMT_RESET:
        // For all the slaves, try send NMT reset, wait 20msec, and try to collect boot-up acknowledge

        if ( SysState.WakeupSubState >= N_CAN_SLAVES )
        { // Done if all the slaves are covered
            SysState.WakeupSubState = 0 ;
            SysState.SdoCounter  = 0 ;
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                SysState.CanAxis[cnt].SdoMng.state = 0 ; // Initialize SDO dload mechanisms
            }

            SetSysTimerTargetSec ( TIMER_PREOP_ALLOW_TIME , 60.0f , &SysTimerStr  );

            SysState.WakeupState = E_CAN_WAKEUP_SEND_CONFIG_SDO ; // GO to next state
            SysState.Debug.MoreInfo = 0 ;
            break ;
        }

        if ( IsSysTimerElapse(TIMER_ARR_RESET_BOOTUP, &SysTimerStr) == 0  )
        { // Not enough time since last NMT transmission
            break ;
        }

        if ( SysState.CanAxis[SysState.WakeupSubState].Installed == 0 )
        {   // axis not installed, skip it
            SysState.WakeupSubState += 1 ;
            break ;
        }

        // Place wake-ups for all the CAN axes
        if ( SysState.CanAxis[SysState.WakeupSubState].BootAcknowledge < 1 )
        {// No reset sent until now , or reset retry, so send it
            SysState.CanAxis[SysState.WakeupSubState].BootAcknowledge = 0  ; // Mark send
            SendResetComWaitBootup( SysState.CanAxis[SysState.WakeupSubState].CanId ) ;
            SetSysTimerTargetSec ( TIMER_ARR_RESET_BOOTUP , TIME_FROM_NMT_RESET_TO_ACKNOWLEDGE , &SysTimerStr);
        }
        else
        { // Done with booting this axis
            SysState.WakeupSubState += 1 ;
        }

        if (IsSysTimerElapse(TIMER_ARR_RESET_TOTAL_BOOTUP, &SysTimerStr))
        { // Total timeout - could not complete servo axis reset process
            SysState.WakeupState = E_CAN_WAKEUP_FAILURE ;
            WakeFailReason = 1 ;
            LogException( SysState.WakeupSubState , EXP_SAFE_FATAL , error_NoCANcom_Axis1+SysState.WakeupSubState);
        }

        break ;
    case E_CAN_WAKEUP_SEND_CONFIG_SDO:

        TimeOver = IsSysTimerElapse(TIMER_PREOP_ALLOW_TIME, &SysTimerStr) ;

        // Download all the configuration SDOs.
        // These shall include PDO mappings, heartbeat configuration, and many more
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            nextmask = (1<<cnt) ;
            fullmask |= nextmask ;

            if ( (SysState.Debug.MoreInfo & nextmask) == 0 )
            {
                stat = ManageCfgSdoList (cnt , InitSdoGlob  );
                if ( stat > 0  )
                {
                    SysState.Debug.MoreInfo |= nextmask ;
                }

                if (stat < 0)
                {
                    SysState.WakeupState = E_CAN_WAKEUP_FAILURE; // Achalnu ota
                    WakeFailReason = 2 ;
                }

                if ( (stat <= 0) && TimeOver )
                {
                    //SysState.WakeupState = E_CAN_WAKEUP_FAILURE ; // Achalnu ota
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_program_cfg_sdo_0+cnt);
                    WakeFailReason = 3 ;
                }
            }
        }
        nextmask = (1<<8) ;
        fullmask |= nextmask ;
        if ( (SysState.Debug.MoreInfo & nextmask) == 0 )
        {
            if ( (ReadAxesConfig ( ) == 0 ) && (ReadIntfcConfig() == 0 ) )
            {
                SysState.Debug.MoreInfo |= nextmask ;
            }
            else
            {
                if ( TimeOver)
                {
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_read_cur_limits);
                }
            }
        }
        nextmask = (1<<9) ;
        fullmask |= nextmask ;
        if ( (SysState.Debug.MoreInfo & nextmask) == 0 )
        {
            if ( HomePots() == 0 )
            {
                SysState.Debug.MoreInfo |= nextmask ;
            }
            else
            {
                if ( TimeOver)
                {
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_home_axes);
                }
            }
        }

        if (( SysState.Debug.MoreInfo & fullmask) == fullmask  )
        { // This SDO is transmitted;
            SysState.WakeupSubState = 0 ;
            SysState.WakeupState = E_CAN_WAKEUP_SEND_NMT_OPER ;
            SetSysTimerTarget( TIMER_ARR_GEN_WAIT_CAN_MGR, 10000 , &SysTimerStr) ;
        }
        break ;

    case E_CAN_WAKEUP_SEND_NMT_OPER:

        if ( IsSysTimerElapse (TIMER_ARR_GEN_WAIT_CAN_MGR, &SysTimerStr) )
        {
            SetSysTimerTarget( TIMER_ARR_GEN_WAIT_CAN_MGR, 10000 , &SysTimerStr) ;
        }
        else
        {
            break ;
        }

        // Pass NMT to operational (un-confirmed service)
        if ( SysState.WakeupSubState <  N_CAN_SLAVES )
        {
            if ( SysState.CanAxis[SysState.WakeupSubState ].Installed )
            {
                SendNMT(SysState.CanAxis[SysState.WakeupSubState].CanId , NMT_CODE_START_NODE );
            }
            SysState.WakeupSubState +=1 ;
            break ;
        }


        if ( SysState.WakeupSubState == N_CAN_SLAVES )
        {
            // Restart state machine for SDO sending
            for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
            {
                SysState.CanAxis[cnt].SdoMng.state = 0 ;
            }

            SysState.WakeupSubState = 0 ;
            SetSysTimerTargetSec ( TIMER_PREOP_ALLOW_TIME , 60.0f , &SysTimerStr  );
            SysState.WakeupState = E_CAN_WAKEUP_PROG_SPECIFIC_SDO ;
        }
        break;

    case E_CAN_WAKEUP_PROG_SPECIFIC_SDO:

        TimeOver = IsSysTimerElapse(TIMER_PREOP_ALLOW_TIME, &SysTimerStr) ;

        // System is on and fully awake. Motors can be started
        // This again involves the sending of an SDO sequence to the axes, this time the sequence is axis specific
        // For the neck and for the steering, the mode of operation is position with limited speed and acceleration
        // for the wheels, mode is speed
        // Download all the configuration SDOs.
        // These shall include PDO mappings, heart-beat configuration, and many more
        done = 1 ;
        SysState.Debug.MoreInfo = 0 ;
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            stat = ManageCfgSdoList (cnt , SpecificSdoInit[cnt]  );
            if ( stat > 0 )
            {
                SysState.Debug.MoreInfo |= (1<<cnt) ;
            }

            if ( stat <= 0 )
            {
                done = 0 ;
            }
            if ( (stat <= 0) && TimeOver )
            {
                //SysState.WakeupState = E_CAN_WAKEUP_FAILURE ; // Achalnu ota
                LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_program_sdo_0+cnt);
                WakeFailReason = 3 ;
            }
        }

        // Wait gyro
        if ( ImuStartMgr.Good == 0 )
        {
            done = 0 ;
            if ( TimeOver )
            {
                //SysState.WakeupState = E_CAN_WAKEUP_FAILURE ; // Achalnu ota
                LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_initialize_gyro);
                WakeFailReason = 3 ;
            }
        }

/*
        if (done )
            if ( RxPdoBitStr.ErrorCond)
            {
                break ;  // Stuck right here
            }
        }
*/
        // This SDO pack is transmitted; PDOs are now normally received
        if ( done )  // &&  GyroInt.bIgnoreGyro  || (( (GyroInt.bOffsetCalibDone==2)  || (GyroInt.nOffsetCalibAttempts > MAX_GYRO_CALIB_ATTEMPTS )) && GyroInt.GyroQuatListReady  ) )
        { // Gyro calibration complete or despaired

            SetMotionMode(E_SysMotionModeMotorOff,34) ;
            SysState.WakeupSubState = 0 ;
            SetSysTimerTargetSec ( TIMER_PREOP_ALLOW_TIME , 80.0f , &SysTimerStr  );
            SetSysTimerTargetSec ( TIMER_GYRO_OFFSET_STABLE, 5.0f , &SysTimerStr  );
            SysState.Nav.AzInt0 = SysState.Nav.AzInt ;
            SysState.Nav.yaw0 = SysState.Nav.yaw ;
            GyroInt.bEnableGyroOffsetEst = 1 ;
            SysState.Nav.bGyroOffsetDone = 0 ;

            SysState.WakeupState = E_CAN_WAKEUP_PRE_OPERATIONAL ;
            SysState.SleepRequest = 0 ;
            SysState.Operational  = 1 ; // Sync shall be emitted and periodic PDO expected
            SysState.TrackWidthCtl.IBitState = 1 ;
            //SysState.ToOperWakeUp = 0 ;
            //SysState.ToOperWakeUpBig = 0 ;

        }
        break ;

    case E_CAN_WAKEUP_PRE_OPERATIONAL :

        TimeOver = IsSysTimerElapse(TIMER_PREOP_ALLOW_TIME, &SysTimerStr) ;


        if ( IsSysTimerElapse(TIMER_GYRO_OFFSET_STABLE, &SysTimerStr) && (SysState.Nav.bGyroOffsetDone<3) )
        {
            if  ( ( fabsf(SysState.Nav.AzInt0 - SysState.Nav.AzInt) < 0.0017f ) &&
                    (fabsf( mod2piS (SysState.Nav.yaw0 - SysState.Nav.yaw)) < 0.0025f ) )
            {
                SysState.Nav.bGyroOffsetDone += 1 ;
            }
            else
            {
                SetSysTimerTargetSec ( TIMER_GYRO_OFFSET_STABLE, 5.0f , &SysTimerStr  );
                SysState.Nav.AzInt0 = SysState.Nav.AzInt ;
                SysState.Nav.yaw0 = SysState.Nav.yaw ;
                SysState.Nav.bGyroOffsetDone =  0 ;
 //               GyroInt.bEnableGyroOffsetEst = 1 ;
            }
        }
        done = (SysState.Nav.bGyroOffsetDone >= 3 ) ? 1 : 0 ; // Wait waxes to stabilize with halted state
        if ( !SysState.Nav.bGyroOffsetDone && TimeOver)
        {
            LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_tune_gyro_offset);
            break ;
        }
        SetMotionMode(E_SysMotionModeStay,9);
/* G3 has no reason to start motors without command
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            pAxis = & SysState.CanAxis[cnt];
            if ( pAxis->MotorOnToutCnt < 10  )
            {
                done = 0 ;
                if ( TimeOver )
                {
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_start_servo_0+cnt);
                }
                break;
            }
        }
*/

        if ( (Config.WheelArmType > 0 ) && (Config.WheelArmType != 0xffff ) && ( SysState.Debug.bAllowMotionUndeterminedWheelArm == 0 ))
        { // Robot equiped with wheel arm - test that the wheel arm network is on
          // Note that the CPU2 works the dynamixel logics only after completion of PBIT.
          // If e.g. 24V network can initialize, PBIT will not complete and the dynamixels shall publish position and not exec
            // external orders, so ManageWheelArmIBit will fail
            donewa = ManageWheelArmIBit() ;

            if ( donewa == 0 )
            {
                if ( TimeOver )
                {
                    if ( SysState.TrackWidthCtl.IBitState == 1)
                    {
                        LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_start_dxl12_com);
                    }
                    LogException(OWN_EXP_ID, EXP_FATAL, exp_could_not_initialize_warm);
                }
                SysState.Mot.QuickStop = 1 ;
                break ;
            }
        }

        if ( done * donewa == 0 )
        {
            break ;
        }

        mask = BlockInts( );
            SysState.WakeupState = E_CAN_WAKEUP_OPERATIONAL ;
            GyroInt.bEnableGyroOffsetEst = 0 ;
            if (SysState.Mot.SleepBupMode )
            { // Possible sleep wakeup
                //SetMotRestart(0xb83f);
                SetMotionMode(SysState.Mot.SleepBupMode,35) ;
                SysState.Mot.NeckControl.NeckMode = SysState.Mot.NeckControl.NeckBupMode  ;
                SysState.Mot.SleepBupMode = 0 ;

            }

        SetReferenceOperationalModes();

        RestoreInts(mask) ;
        ClearExceptions() ; // Clear exception
        break ;


    case E_CAN_WAKEUP_OPERATIONAL:

        /*
        if ( SysState.Status.Failure.bit.MotionFatal )
        {
            SysState.WakeupState = E_CAN_WAKEUP_FAILURE ;
            break ;
        } */

        // Manual package handling and other special modes
        if ( SysState.Mot.mode == E_SysMotionModeTestPack  )
        {
            ManageSpecialModes() ;
            break ;
        }

        // Robot is fully awake and can be servo-controlled
        stat = CheckMotionQueues() ; // Check requests for new motion queue activation and prepare motion queues
        if ( stat )
        {
            LogException( OWN_EXP_ID , EXP_ABORT ,  stat );
            LogException( OWN_EXP_ID , EXP_ABORT , exp_mot_queue_reject);
        }

        if ( SysState.Mot.mode == E_SysMotionModeAutomatic )
        { // Auto mode - run motion planner

            // Turn ON chakalaka
            //pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
            //pPdCmd2->ChakalakaOn = 1 ;

            if ( SysState.CBit.bit.NoCalib   )
            {
                LogException( OWN_EXP_ID , EXP_ABORT , exp_auto_motion_requires_calibration);
            }

            //if ( ImuStartMgr.Good  == 0 )
            //{
            //    LogException( OWN_EXP_ID , EXP_ABORT , exp_auto_motion_requires_gyro);
            //}

            stat = RunAutoScheduler();
            if ( stat && ( GetExpFatality() == EXP_ABORT   ) )
            {
                SetMotionMode(E_SysMotionModeManualTravel,36) ; // Exit automation
                SysState.Mot.QuickStop = 1 ;
                LogException( OWN_EXP_ID , EXP_ABORT , exp_mot_queue_schedule_error);
            }
        }
        else
        {
            SysState.ManRouteState.WaitPosReport = 1; // If not auto, respect position commands
        }
        SysState.Status.Failure.bit.IsWakeStateFault = 0 ;

#ifdef DEBUG_SIDE_CAMERA
        CatchRelPosReport();
#endif

        break;

    case E_CAN_WAKEUP_FAILURE :
        // Do nothing, its a wreck
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            KillMotor(& SysState.CanAxis[cnt] ) ;
        }
        SysState.Status.Failure.bit.IsWakeStateFault = 1 ;
        break ;

    default:
        break;

    }

}

long mylabs( long a  )
{
    if ( a < 0 ) return -a ;
    return a ;
}

/**
*/
short unsigned IsNearItem( struct CMotionItem * p1 , struct CMotionItem * p2)
{
    if  (  ((float)fabs(p1->cx - p2->cx ) < 1e-3f) &&   ((float)fabs(p1->cy -p2->cy ) < 1e-3f)   &&
        ( mylabs(p1->x - p2->x ) < 50 ) && ( mylabs(p1->y - p2->y ) < 50) &&
        ( mylabs(p1->z_or_lModeData - p2->z_or_lModeData ) < 50 ) ) //ok
    {
        return 1 ;
    }
    return 0 ;
}

/**
 * \brief Copy a ground navigation segment set for execution
 * \param pQueue: Queue to copy commands from
 * \param StartIndex : The index at the queue where the new ground navigation starts
 * \return The index of the next segment to execute, following completion of the ground navigation
 */
short unsigned CopyGndNavSegs( struct CUserMotionQueue * pQueue  , short unsigned StartIndex )
{
    struct CSegQueue * pSegQ ;
    short unsigned nGet,next ;
    short unsigned  mask ;
    short stat ;
    float v0, ds, dTheta;
    short c, s , cnt ;


    // Ignore nulls
    nGet  = StartIndex ;
    while (pQueue->Item[nGet].OpCode == QE_ENTRY_NOTHING)
    {
        nGet = (nGet + 1)  & (N_MOTION_REC_IN_USER_Q - 1);
    }

    // Create the segments queue using the command items, until commands are non-queue
    nGet =  StartIndex  & (N_MOTION_REC_IN_USER_Q-1);

    if ( pQueue->Item[nGet].OpCode == QE_ENTRY_PATH_PT )
    { // If first item is a path way-point
        //Test that the start point is near enough the current position so correction will make sense
        ds = GetItemDistance(&pQueue->Item[nGet], &SysState.Mot.LastPositionItem, &dTheta);

        if ( ds > Constraint.MotionStartLinearTol  )
        {
            return qerr_too_big_distance_to_start_pt ;
        }
        if ( fabsf(dTheta) >Constraint.MotionStartAngularTol)
        {
            return qerr_too_big_angle_to_start_direction ;
        }
        // Work on the background queue
        pSegQ = &SegQ[0] ; // SysState.Mot.BgSegQueue] ;
        InitSegQueue( pSegQ , &Constraint , & QExp , & pQueue->Item[nGet] ) ;

        // Initialize the Yaw history buffer
        YawHistory.Item[0].Tangent = FtoAngle(pSegQ->seg[0].tht1);
        YawHistory.Item[0].x = (short) ( pSegQ->seg[0].x1 * M_2_LONG_FAC );
        YawHistory.Item[0].yaw = 0;
        c = (short) ( Ycos(pSegQ->seg[0].tht1) * 0.05f * Geom.WheelBase * M_2_LONG_FAC) ;
        s = (short) ( Ysin(pSegQ->seg[0].tht1) * 0.05f * Geom.WheelBase * M_2_LONG_FAC) ;
        for (cnt = N_YAWHIST_ITEM-1; cnt > 1; cnt--)
        {
            YawHistory.Item[cnt].x = YawHistory.Item[(cnt - 1)&(N_YAWHIST_ITEM - 1)].x - c;
            YawHistory.Item[cnt].y = YawHistory.Item[(cnt - 1)&(N_YAWHIST_ITEM - 1)].y - s;
            YawHistory.Item[cnt].Tangent = YawHistory.Item[0].Tangent;
            YawHistory.Item[cnt].yaw = YawHistory.Item[0].yaw;
        }
        YawHistory.Item[1] = YawHistory.Item[0];
        YawHistory.PutPtr = 1;
        YawHistory.RobotTailPtr = N_YAWHIST_ITEM - 20;
    }
    else
    {
        return 0xffff ;
    }


    next =  (nGet+1)  & (N_MOTION_REC_IN_USER_Q-1);

    while ( (pQueue->Item[next].OpCode == QE_ENTRY_PATH_PT ) || (pQueue->Item[nGet].OpCode == QE_ENTRY_NOTHING) )
    {
        if (pQueue->Item[next].OpCode == QE_ENTRY_PATH_PT)
        {
            stat = ProcSeg(&pQueue->Item[nGet], &pQueue->Item[next], pSegQ);
            if (stat)
            {  // Test segment sanity
                return stat;
            }
            SysState.Mot.AutoInWait = 0 ;
            // If finished with a differential move, exit processing.
            if ( pSegQ->seg[pSegQ->nPut-1].Type == SegType_Differential )
            { // Differential segment breaks the route
                //next =  (next+1)  & (N_MOTION_REC_IN_USER_Q-1) ;  // Because the last path point is also consumed
                break; // Mark termination as consumed , new start position will be made on the fly.
            }
        }
        nGet =  next ;
        next =  (next+1)  & (N_MOTION_REC_IN_USER_Q-1) ;  // Because the last path point is also consumed
    }



    // Starting speed: if concatenating an existing path, take from it. Else start at zero speed
    v0 = 0 ;

    /*
    if (SysState.Mot.InGroundNav )
    {
        v0 = SegRun.ds ;
    }
    */

    stat = ProcQueueTimes( pSegQ , v0 , 0  ); // Process the segment speeds
    if ( stat )
    {  // Test segment sanity
        return stat ;
    }

    QueueCleanup(pSegQ) ; // Remove trivial motion segments

    mask = BlockInts() ;
        //SysState.Mot.BgSegQueue = 1 - SysState.Mot.BgSegQueue ;
        SegRun.SegIndex = 0 ;
        SegRun.s = 0 ;
        SegRun.ds = v0 ;

        SegRun.SegDone = 0 ;
        SegRun.FullSegsDone = 0  ; // Statistics
    RestoreInts(mask);
    return next ;
}





/*
 * \brief Copy from a motion queue to an execution
 *
 * \param pQueue -> The user queue to take from
 * \param StartIndex : The first valid index in that queue
 */
short unsigned CopyQueue2Exec(  struct CUserMotionQueue * pQueue  , short unsigned StartIndex )
{
    short stat ;
    short unsigned ni ;
    short unsigned cnt , mcnt;

    struct CMotionItem *pItem ;

    // Initial condition must be set before any queue is attempted
    ni = SysState.CBit.bit.CompromiseNavInit  ;
    SysState.CBit.bit.CompromiseNavInit = 0 ; // Flag good only once

    if ( ( SysState.CBit.bit.NavInitialized == 0 ) && (  ni == 0 ) )
    {
        return E_Q_SANITY_WPT_REQUIRES_INIT ;
    }


    // Test that queue does not contain to obvious contradictions, and mark out redundant commands
    stat = TestQueueSanity ( pQueue ,StartIndex ) ;
    if ( stat )
    {
        return stat ;
    }

    pItem = & pQueue->Item[StartIndex & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test

    // Kill null segments
    while (pItem->OpCode == QE_ENTRY_NOTHING)
    {
        StartIndex = ( (StartIndex+1) & (N_MOTION_REC_IN_USER_Q - 1));
        pItem = &pQueue->Item[StartIndex & (N_MOTION_REC_IN_USER_Q - 1)];
    }

    // Copy all the remaining queue items for execution
    mcnt = 0;
    for ( cnt = 0 ; cnt < N_MOTION_REC_IN_USER_Q ; cnt++)
    {
        pItem = & pQueue->Item[(cnt+StartIndex) & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test
        if (pItem->OpCode == QE_ENTRY_NOTHING)
        {
            continue;
        }
        MQ.Item[mcnt++] = *pItem ;
        switch ( pItem->OpCode )
        {
        default: // Way point, change mode, package - Just copy for execution
             // Mode - Just copy for execution
            break ;
        case QE_ENTRY_WAIT:
            // If wait is forever, then break
            if ( pItem->z_or_lModeData == 0 ) //ok
            {
                MQ.nGet = 0 ;
                MQ.nPut = mcnt ; // Next place to put (mcnt was incremented after last put)
                AdvanceMotionQueue() ; //Cleanup , that also advances queue ...
                MQ.nGet = 0 ; // So undo
                return 0 ; // End of action, no problem located
            }
            break ; // Wait is legal, always
        }
    }


    return E_Q_DOES_NOT_TERMINATE ;
}


short unsigned IsInClimb()
{
    if ( ManRouteCmd.ShelfMode  == E_ShelfArc  )
        return 1 ;
    return 0 ;
}

short unsigned IsInShelf()
{
    if ( ManRouteCmd.ShelfMode  >= E_ShelfRun_Rescue  )
        return 1 ;
    return 0;
}


float GetTravelDist(struct CMotionItem *pNextItem,struct CMotionItem *pNextItem2)
{
    return HYpot( (float)(pNextItem->x - pNextItem2->x) , (float)(pNextItem->y - pNextItem2->y))  * LONG_2_M_FAC  ;
}

/*
 * \brief Test the sanity of a queue
 */
short TestQueueSanity(  struct CUserMotionQueue * pQueue  , short unsigned StartIndex )
{
    short unsigned cnt , InClimb , InShelf ,  NearTraverse , NearZ , WayPtCnt ,WasNavPt;
    short Crab , NewCrab, ManipError;
    struct CMotionItem *pItem , *pNextItem , *pTempItem, *pNextItem2;
    struct CMotionItem PrevPathPt , PrevGndPt ;
    float Height, NewHeight ,  NewTraverse  ;
    enum E_TrackWidthType trkWidth ;//, dir[3] ;
//  float quat[4],mat[3][3];

    short  junc , climb , mode , InSpecial ;

    short unsigned permission = SysState.Debug.PermissionForce | HostMessageStr.Permission | HostHandleStr.KillHostSpi | ((Config.ManipConfig == EManipulator_None) ? 3 : 0 ) ;



    Crab = ManRouteCmd.CrabCrawl ;
    InClimb = IsInClimb() || IsInShelf() ;
    InShelf = IsInShelf() ;
    Height  = -SysState.Mot.LastPositionItem.z_or_lModeData * LONG_2_M_FAC ;
    WayPtCnt = 0 ;
    WasNavPt = 0 ;

    if ( SysState.TrackWidthCtl.WheelArmState == E_GroundGood2Go)
    {
        trkWidth = E_TrackWidthRetract ; // Assumption to start
    }
    else
    {
        if (( SysState.TrackWidthCtl.WheelArmState == E_RExtendGood2Go) || ( SysState.TrackWidthCtl.WheelArmState == E_LExtendGood2Go) )
        {
            trkWidth = E_TrackWidthExtend ; // Assumption to start
        }
        else
        {
            return E_Q_SANITY_BAD_INITIAL_WIDTH ;
        }
    }


    PrevPathPt = SysState.Mot.LastPositionItem;
    PrevGndPt = PrevPathPt;

; // Initialize first path point to present location
/*
PrevPathPt.x  =  SysState.Nav.iPos[0]   ;
PrevPathPt.y  =  SysState.Nav.iPos[1]   ;
PrevPathPt.z_or_lModeData  =  SysState.Nav.iPos[2];

// Get cosines
Euler2Quat(SysState.Nav.yaw, SysState.Nav.pitch,SysState.Nav.roll, quat);
Quat2Rot( quat , mat);
PrevPathPt.cx = mat[0][0];
PrevPathPt.cy = mat[0][1];
PrevPathPt.cz_or_fModeData = mat[0][2];
*/

    InSpecial = 0 ;
    for ( cnt = 0 ; cnt < N_MOTION_REC_IN_USER_Q ; cnt++)
    {
        pItem = & pQueue->Item[(cnt+StartIndex) & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test

        if ( (cnt == 0) && (pItem->OpCode==QE_ENTRY_SPECIALS))
        {
            mode = pItem->y & 0xf ;
            switch ( mode  )
            {
            case 1:
                Height = -pItem->z_or_lModeData * LONG_2_M_FAC;
                Crab = 0 ;
                InClimb = 1 ;
                InShelf = 1 ;
                break ;
            case 2:
                Height = -pItem->z_or_lModeData * LONG_2_M_FAC;
                Crab    = 1    ; // Can be arbitrary because later directions are ot checked
                InClimb = 1    ;
                InShelf = 0    ;
                break ;
            case 3:
                Height = -pItem->z_or_lModeData * LONG_2_M_FAC;
                Crab    = 0    ; // Can be arbitrary because later directions are ot checked
                InClimb = 1    ;
                InShelf = 1    ;
                break ;
            default:
                return E_Q_SANITY_UNKNOWN_SPECIAL_MODE ;
            }

            if ( Height < -0.05f || Height > 25.0f)
            {
                return E_Q_SANITY_BAD_HEIGHT_SPECIAL_MODE ;
            }

            ClearMemRpt( (short unsigned * ) &PrevPathPt , sizeof(PrevPathPt)  ) ;
            PrevGndPt = PrevPathPt;
            InSpecial = 1;
            permission = 3;
            continue ;

        }

        if ( (cnt == 0) && (pItem->OpCode==QE_ENTRY_CHANGE_MODE))
        {
            NewCrab  =  * ((short*) &pItem->x) ;
            junc  = * ((short*) &pItem->y) ;
            climb = * ((short*) &pItem->z_or_lModeData) ;  //ok
            if ( NewCrab )
            {
                if ( (junc==0) && (climb==0) && (InShelf==0))
                {
                    //if first command is CRAB, we need to establish artificial ground history
                    //This is required for:
                    //- Dropping the first duplicate path point
                    //- Setting  the path direction correctly
                    pTempItem = & pQueue->Item[(cnt+StartIndex+1) & (N_MOTION_REC_IN_USER_Q-1)] ;
                    if ( pTempItem->OpCode == QE_ENTRY_PATH_PT)
                    {
                        PrevPathPt = *pTempItem ;
                        WasNavPt = 1 ;

                        if ( NewCrab > 0 )
                        {
                            PrevPathPt.cx = pTempItem->cy ;
                            PrevPathPt.cy = -pTempItem->cx ;
                        }
                        else
                        {
                            PrevPathPt.cx =  -pTempItem->cy ;
                            PrevPathPt.cy =  pTempItem->cx ;
                        }
                        PrevGndPt = PrevPathPt ;
                     }
                    else
                    {
                        return E_Q_SANITY_BAD_CRAB_INTO_SEQ1 ;
                    }
                }
                if( Crab && (junc==0) && (climb==1) && (InShelf==0))
                {  // Already crabbed - just accept the present position

                }
                else
                {
                    if ( junc | climb | InShelf)
                    {
                        return E_Q_SANITY_BAD_CRAB_INTO_SEQ5 ;
                    }
                    else
                    {
                        Crab = NewCrab ;
                    }
                }
            }
            else
            {
                return E_Q_SANITY_BAD_CHG_MODE_START ;
            }

        }


        // Assure that way points arrive in pairs at least
        if ( pItem->OpCode == QE_ENTRY_PATH_PT)
        {
            WayPtCnt =  WayPtCnt + 1 ;
        }
        else
        {
            if (  WayPtCnt == 1 && (cnt != 1) )
            {   // Normally way point sequence must be at least 2, but if this is the first entry, it is the second to an auto "start from here" point
                // return E_Q_SANITY_WPT_IS_LONE ;
            }
            WayPtCnt = 0 ;
        }

        switch ( pItem->OpCode )
        {
        default: // Illegal
            return E_Q_SANITY_BAD_OPCODE ;

        case QE_ENTRY_PATH_PT: // Set way point

//            if ( (M2S.Items.ActCmd.cmd.ConfigWord.bit.WheelArmExist == 0 ) || ( InClimb == 0 ) )
            if ( (Config.WheelArmType == 0 ) || ( InClimb == 0 ) )
            {
                pItem->TrackWidthType = E_TrackWidthRetract ; // No wheel arm, or on ground, force retracted wheel arm
            }


            if ( InClimb )
            {
                // Test sanity of track width

                NewHeight       = -pItem->z_or_lModeData * LONG_2_M_FAC;  //ok
                if ( fabsf(NewHeight)>1e-6 && ( NewHeight < Geom.ClimbArcRadi + Geom.Center2WheelDist + Geom.LimitSw2DistPosOnArc + Geom.ClimbArcOverFloor + 0.06f ))
                {
                    return E_Q_SANITY_HEIGHT_WITHIN_ARC ;
                }

                if ( NewHeight > 25.0f)
                {
                    return E_Q_SANITY_BAD_SHELF_HEIGHT ;
                }

                NewTraverse     = HYpot ( (float) (pItem->x - PrevPathPt.x) ,  (float) (pItem->y - PrevPathPt.y) ) * LONG_2_M_FAC ;
                NearTraverse =  ((float)fabs(NewTraverse) < 2e-3f ) ? 1 : 0 ;
                NearZ        =  ( (float) fabs( NewHeight - Height ) < 3e-3f ) ? 1 : 0 ;
                if ( (NearZ == 0)  && ( NearTraverse == 0 ) )
                {
                    return E_Q_SANITY_HEIGHT_AND_TRAVERSE_CHANGE ;
                }
                if ((NearZ == 1) && (NearTraverse == 1))
                {
                    pItem->OpCode = QE_ENTRY_NOTHING;
                    break;
                }

                if ( InShelf )
                {
                    if ( ( NearZ == 0  ) && (InSpecial==0))
                    {
                        return E_Q_SANITY_SHELF_RUN_MUST_BE_HORIZONTAL ;
                    }
                    pItem->TrackWidthType = trkWidth ;// On the shelf, force unchanged wheel arm
                }
                else
                {
                    if ( (NearTraverse == 0  ) && (InSpecial==0) )
                    {
                        return E_Q_SANITY_POLE_RUN_MUST_BE_VERTICAL ;
                    }

                    // Must be followed by a change mode
                    pNextItem = & pQueue->Item[(cnt+1+StartIndex) & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test

                    if ( pNextItem->OpCode != QE_ENTRY_CHANGE_MODE )
                    {
                        if ( HostHandleStr.KillHostSpi == 0 )
                        {
                            return E_Q_SANITY_POLE_NEXT_NOT_CHGMODE ;
                        }
                    }
                    else
                    {
                        if ( ( * ((short*) &pNextItem->z_or_lModeData) == 0 ))
                        {
                            pItem->TrackWidthType = E_TrackWidthRetract ; // Force retract before going to ground
                        }
                        else
                        {
                            if ( * ((short*) &pNextItem->x) ) // Cehck remained crab
                            {
                                return E_Q_SANITY_SHELF_MUST_FOLLOW  ;
                            }
                        }
                    }

                    if ( pItem->TrackWidthType == E_TrackWidthNothing)
                    {
                        return E_Q_SANITY_BAD_TRACK_WIDTH1 ;
                    }
                    trkWidth = (enum E_TrackWidthType) pItem->TrackWidthType ;
                }

                Height = NewHeight ;
            }
            else
            {
                if (Crab == 0)
                { // If on standard travel, take the present point as reference
                    PrevGndPt = *pItem;
                }
                //if ( pItem->z_or_lModeData || pItem->cz_or_fModeData )
                //{
                //  return E_Q_GND_Z_NOT_YET_IMPLEMENTED ;
                //}
            }

            // If crabbed, the direction must be reset to body line for the sake of the internal complex state machine
            if (Crab || InClimb)
            {
                pItem->cx = PrevGndPt.cx;
                pItem->cy = PrevGndPt.cy;
                pItem->cz_or_fModeData = PrevGndPt.cz_or_fModeData;
            }

            // Find repeated points
            if ( WasNavPt )
            {
                if ( (pItem->x == PrevPathPt.x) &&  (pItem->y == PrevPathPt.y) && (pItem->z_or_lModeData == PrevPathPt.z_or_lModeData) && (pItem->cx == PrevPathPt.cx)
                        && (pItem->cy == PrevPathPt.cy) && (pItem->cz_or_fModeData == PrevPathPt.cz_or_fModeData))
                {
                    pItem->OpCode = QE_ENTRY_NOTHING;
                    break;
                    //return E_Q_REPEATED_WAYPOINT ;
                }
            }


            PrevPathPt = *pItem ;
            WasNavPt = 1 ;

            break;
        case QE_ENTRY_CHANGE_MODE: // Change mode
            NewCrab  =  * ((short*) &pItem->x) ;
            junc  = * ((short*) &pItem->y) ;
            climb = * ((short*) &pItem->z_or_lModeData) ;  //ok

            if (InClimb)
            { // Already on the structure
                if (climb == 0)
                { // Asked to un climb
                    if (InShelf)
                    {
                        return E_Q_SANITY_CANNOT_UNCLIMB_DIRECTLY_FROM_SHELF;
                    }

                    if (IsNear(0, Height) == 0)
                    {
                        return E_Q_SANITY_UNCLIMB_TRANSITION_NOT_IN_ZERO_HGT;
                    }
                    else
                    { // Approve un climb
                        InClimb  = 0 ;
                        WasNavPt = 0 ;
                        if ( SysState.Debug.bAllowUnclimbWithNoSequel == 0 )
                        {
                            pNextItem = & pQueue->Item[(cnt+StartIndex+1) & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test
                            if ( pNextItem->OpCode !=  QE_ENTRY_PATH_PT)
                            {
                                return E_Q_SANITY_UNCLIMB_TRANSITION_WITHNO_SEG1;
                            }
                            pNextItem2 = & pQueue->Item[(cnt+StartIndex+2) & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test
                            if ( pNextItem->OpCode !=  QE_ENTRY_PATH_PT)
                            {
                                return E_Q_SANITY_UNCLIMB_TRANSITION_WITHNO_SEG2;
                            }

                            if ( GetTravelDist(pNextItem,pNextItem2) < GetMinimalArcTravel() )
                            {
                                return E_Q_SANITY_NOT_ENOUGH_GND_DIST_UNCLIMB ;
                            }

                            pNextItem = & pQueue->Item[(cnt+StartIndex+3) & (N_MOTION_REC_IN_USER_Q-1)] ;  // Next item to test
                            if ( pNextItem->OpCode !=  QE_ENTRY_CHANGE_MODE || pNextItem->x || pNextItem->y || pNextItem->z_or_lModeData )
                            {
                                return E_Q_SANITY_UNCLIMB_TRANSITION_WITHNO_UNCRAB;
                            }
                        }
                    }

                    if (junc)
                    { // Cannot un climb and rotate junction at once
                        return E_Q_SANITY_TRANSITION_TO_JUNC_ROTATE_FAIL;
                    }
                }
                else
                {
                    switch (junc)
                    {
                    case 0: // Nothing
                        break;
                    case 1: // Request transition to shelf
                        if (InShelf)
                        {
                            return E_Q_SANITY_JUNC_ALREDAY_ROTATED;
                        }
                        InShelf = 1; // Approve horizontal shelf run
                        break;
                    case -1: // Request transition from shelf
                        if (InShelf == 0)
                        {
                            return E_Q_SANITY_JUNC_ALREDAY_UNROTATED;
                        }
                        InShelf = 0; // Approve back to vertical
                        break;
                    default:
                        return E_Q_SANITY_JUNC_BAD_VALUE;
                    }
                }
            } // End if(InClimb)
            else
            {   // Starting from ground
                if ( climb == 1 )
                { // Commanded to climb

                    // Released: Now can change height on the pole
                    //if ( IsNear( 0 , Height ) == 0 )
                    //{
                    //  return E_CLIMB_TRANSITION_NOT_IN_ZERO_HGT ;
                    //}

                    if ( Crab == 0 )
                    {
                        return E_SANITY_CLIMB_TRANSITION_NOT_IN_RIGHT_ANGLE_YEW ;
                    }
                    InClimb = 1 ;
                    InShelf = 0 ;
                }
                else
                { // Otherwise the command is to change the yaw angle
                    if ( (NewCrab != -1) && (NewCrab != 1) && (NewCrab != 0 ))
                    {
                        return E_Q_SANITY_BAD_YAW_VALUE ;
                    }
                    if ( NewCrab && (InShelf == 0 ))
                    { // Test existance of full shelf departure sequence
                        pTempItem = & pQueue->Item[(cnt+StartIndex+1) & (N_MOTION_REC_IN_USER_Q-1)] ;
                        if (pTempItem->OpCode == QE_ENTRY_PATH_PT)
                        {
                            pNextItem2 = & pQueue->Item[(cnt+StartIndex+2) & (N_MOTION_REC_IN_USER_Q-1)] ;
                            if (pNextItem2->OpCode == QE_ENTRY_PATH_PT)
                            { // Next should be a change mode to climb

                                if ( GetTravelDist(pTempItem,pNextItem2) < GetMinimalArcTravel() )
                                {
                                    return E_Q_SANITY_NOT_ENOUGH_GND_DIST_CLIMB ;
                                }

                                pTempItem = & pQueue->Item[(cnt+StartIndex+3) & (N_MOTION_REC_IN_USER_Q-1)] ;
                                if ( ( pTempItem->OpCode != QE_ENTRY_CHANGE_MODE) || ( * ((short*) &pTempItem->z_or_lModeData) == 0))
                                {
                                    return E_Q_SANITY_BAD_CRAB_INTO_SEQ2 ;
                                }
                            }
                            else
                            {
                                return E_Q_SANITY_BAD_CRAB_INTO_SEQ3 ;
                            }
                        }
                        else
                        {
                            return E_Q_SANITY_BAD_CRAB_INTO_SEQ4 ;
                        }
                    }
                    if ( Crab && (NewCrab == 0 ))
                    { // Exiting from crab mode to normal state. Navigation need be reset
                        WasNavPt = 0 ;

                    }
                    Crab = NewCrab  ;
                }
            }
            break;
        case QE_ENTRY_HANDLE_PACK:
            // Released: Package handling can happen now anywhere
            if ( Config.ManipConfig == EManipulator_None)
            {
                return E_Q_SANITY_NO_MAIPULATOR_DEFINED ;
            }

            // Package can occur either on the ground or in shelf
            if ( (InClimb == 1) &&  (InShelf == 0 ) )
            {
                // Vandal so it can pick package on the pole return E_Q_PACKAGE_PICK_NOT_IN_TRAVERSE ;
            }
            if ( (float) fabs(pItem->cx)  > Geom.MaxIncidence4Package)
            {
                return E_Q_SANITY_BAD_PACKAGE_INCIDENCE ;
            }


            break;
        case QE_ENTRY_WAIT: // Wait
            // If wait is forever, then break
            if ( pItem->z_or_lModeData == 0 )
            {
                if ( InSpecial )
                {
                    SysState.bInRescue = 1 ;
                    HostMessageStr.Permission = 3 ;
                }
                else
                {
                    // Test by permissions if its al all ok to go
                    if ( (permission & 1) == 0 )
                    {
                        ManipError = IsManipulatorWell();
                        if ( ManipError < 0)
                        {
                            switch (ManipError)
                            {
                            case E_ManPowerOff:
                                return E_Q_SANITY_MANIPULATOR_POWER_OFF;
                            case E_ManMissing:
                                return E_Q_SANITY_MANIPULATOR_MISSING;
                            case E_ManNetsOff:
                                return E_Q_SANITY_MANIPULATOR_NETS_OFF;
                            case E_ManInitializing:
                                return E_Q_SANITY_MANIPULATOR_INITIALIZING;
                            case E_EEF_Absent:
                                return E_Q_SANITY_EEF_MISSING;
                            case E_ManNoData:
                                return E_Q_PD_COM_ERROR; //test should move to another place
                            }
                        }
                        if ( (permission & 2) == 0 )
                        {
                            if ( ( SysState.Package.KnowWhereAmI & 7 ) != 7 )
                            {
                                return E_Q_SANITY_MANIPULATOR_FAULT ;
                            }
                        }
                    }
                }
                //return E_Q_SANITY_LO_ROTZE ;
                return 0 ; // End of action, no problem located
            }
            break ; // Wait is legal, always
        }
    }

    if (  WayPtCnt == 1 )
    {
        return E_Q_SANITY_WPT_IS_LONE ;
    }
    return E_Q_DOES_NOT_TERMINATE ;
}


/**
\brief Get the latest known robot position
*/
short CaptureLastPosition(  struct CMotionItem * pItem)
{
    float v[3] ;
    short unsigned mask ;
    mask = BlockInts() ;
    {
        pItem->x = SysState.Nav.iPos[0]   ;
        pItem->y = SysState.Nav.iPos[1]   ;
        pItem->z_or_lModeData = SysState.Nav.iPos[2] ;  //ok

        RotateXByQuat ( GyroInt.BodyQuat , v);
        pItem->cx = v[0] ;
        pItem->cy = v[1] ;
        pItem->cz_or_fModeData = v[2] ;

        pItem->OpCode = QE_ENTRY_PATH_PT ;
        pItem->MotionItemMode = 0 ;
    }
    RestoreInts(mask) ;
    return 0;
}

/**
 * Check any requested substitution of motion queue to action
 */
short CheckMotionQueues( void )
{
    short unsigned  stat , oldMode   ; //, qdrained
    struct CJumpCmd Jump;
    short unsigned mask ;

    if (SysState.Mot.JumpCmd.CmdCntr )
    {// Find if there is a go-to-queue new command
        // If gyro is not calibrated, dont event think of that
        //lDebug[3] = SysState.Mot.JumpCmd.CmdCntr2 ;
        if ( ImuStartMgr.Good  == 0 )
        {
            stat = exp_gyro_not_calibrated ;
            return stat ;
        }

        IncrementLBitField ( &SysState.Mot.MotLog , 0x7 , 3  ) ;
        CopyMemRpt( (short unsigned *) &Jump, (short unsigned *) &SysState.Mot.JumpCmd  , sizeof( struct CJumpCmd   ) ) ;


        // Start auto mode if was not in
        if (  SysState.Mot.mode > E_SysMotionModeMotorOff )
        {
            oldMode = SysState.Mot.mode ;
            //lDebug[2] = oldMode ;

            // Kill any emergency that may be
            LogException(OWN_EXP_ID, EXP_RESET, 0);

            // Set to auto mode
            SetAutoMode() ;

            // Clear the actual motion queue
            ClearMemRpt ( (unsigned short *) &MQ.Item[0] , sizeof(struct CMotionItem  ) ) ;
            MQ.Item[0].OpCode = QE_ENTRY_WAIT ; // Generate an artificial start with wait forever
            MQ.nGet = 0 ;
            MQ.nPut = 1 ;

            // Capture the start position
            CaptureLastPosition ( &SysState.Mot.LastPositionItem) ;

            if ( SysState.Mot.ResetShelfBase || (oldMode < E_SysMotionModeAutomaticIdle) )
            {
                SysState.Mot.ResetShelfBase = 0 ;
                ManRouteCmd.ShelfRunPars.Xbase  = SysState.Nav.Robot.xc[0];
                ManRouteCmd.ShelfRunPars.Ybase  = SysState.Nav.Robot.xc[1];
                PrepAutoShelfRun() ;
            }

            // Jump must be immediate
            //Jump.mode = 1 ;

            //if ( stat ) return stat ;
        }
        else
        {
            return SPI_IN_MOTOR_FAULT ;
        }


        // If the mode is jump immediate, or the previous queue is done, and the jump is to non-null queue
        //qdrained = ( ((MQ.nGet+1)&(N_MOTION_REC_IN_USER_Q-1))  == MQ.nPut ) ? 1 : 0 ;
        if ( SysState.Mot.mode == E_SysMotionModeAutomatic) // &&  ( Jump.mode ||  qdrained  ) )
        {
//            c3 += 1;

            SysState.ManRouteState.DifferenceDrive = 0 ;
            SysState.Mot.InGroundNav = 0 ; // Kill ground navigation before any dealing of a new segment

            CaptureLastPosition(  &SysState.Mot.LastPositionItem ) ;

            stat = 0 ;
            if  ( Jump.qIndex )
            {
//              Copy from the user-programmable buffer to the exec buffer
                stat = CopyQueue2Exec(  & MotionQueue[0] , Jump.IndexInQ ) ;
                if ( stat )
                { // Insane queue , log it and set active queue to null
                    //LogException( OWN_EXP_ID , EXP_WARN ,  stat );
                    SysState.CBit.bit.QueueIsSane = 0 ;
                    Jump.qIndex = 0 ;
                    IncrementLBitField ( &SysState.Mot.MotLog2 , 0x7 , 0 ) ;
                    // SetMotionMode(E_SysMotionModeManualTravel,37) ; // Exit automation
                    // SysState.Mot.QuickStop = 1 ;
                    // SysState.Mot.JumpCmd.CmdCntr = 0 ; // Signal jump is taken already (even if failed)
                    //return stat ;
                }
                else
                {
                    IncrementLBitField ( &SysState.Mot.MotLog , 0x7 , 6 ) ;
                    mask = BlockInts() ;
                    SysState.CBit.bit.QueueIsSane = 1 ;
                    SysState.Mot.ExecutingQueue = 1 ;//Jump.IndexInQ;
                    SysState.SleepRequest = 0 ; // Kill any pending sleep
                    SysState.Mot.bPauseFlag &= (~1) ; // Kill any pending pause
                    RestoreInts(mask) ;
                }
            }
            if  ( Jump.qIndex == 0 )
            { // Null queue
                SysState.Mot.ExecutingQueue = 0 ;
                ClearMemRpt ( (unsigned short *)  &MQ.Item[0] , sizeof(struct CMotionItem  ) ) ;
                MQ.Item[0].OpCode = QE_ENTRY_WAIT ; // Generate an artificial start with wait forever
                MQ.nGet = 0 ;
                MQ.nPut = 1 ;
            }
            SysState.Mot.JumpCmd.CmdCntr = 0 ; // Signal jump is taken already (even if failed)
            return stat  ;
        }
    }

    return 0 ; // Nothing
}


/*
* \brief Take a limited step from a value towards a target
* \param value -> Value to be incremented and limited
* \param target : The target for *value
* \param maxupstep : The maximum absolute step to take
* \param maxdnstep : The maximum absolute step to take*
*/
void StepTowards2Sided(float * value, float target, float maxupstep, float maxdnstep )
{
    float val1;
    if (target >= *value)
    {
        val1 = *value + maxupstep;
        if (val1 > target)
        {
            val1 = target;
        }
    }
    else
    {
        val1 = *value - maxdnstep;
        if (val1 < target)
        {
            val1 = target;
        }
    }
    *value = val1;
}

/*
 * \brief Take a limited step from a value towards a target
 * \param value -> Value to be incremented and limited
 * \param target : The target for *value
 * \param maxstep : The maximum absolute step to take
 *
 */
void StepTowards( float * value , float target , float maxstep  )
{
    float val1 , base;
    base = *value ;
    if ( target >= base )
    {
        val1  = base + maxstep ;
        if ( val1 > target )
        {
            val1 = target ;
        }
    }
    else
    {
        val1  = base - maxstep ;
        if ( val1 < target )
        {
            val1 = target ;
        }
    }
    *value = val1 ;
}


/*
 * \brief Arm a limit switch
 * \param pSw-> Limit switch struct
 * \param dir : 1: forward , -1: reverse (range not tested), 0: Un-arm
 * \param pAxis-> Associated CAN axis
 */
void ArmLimitSw(struct CCanAxis *pAxis ,short dir )
{
   short unsigned mask ;
   struct CBHLimitSw *pSwIn = &pAxis->BH.LimitSw ;
   mask = BlockInts() ;
   pAxis->InductiveSensor = 0;
   pSwIn->SwitchRequestDir = (float) dir ; // Just to save as history
   pSwIn->SwitchDetectMarker = 1 ;
   pAxis->BH.LimitSw.SwitchDetectValidUsed = pAxis->BH.LimitSw.ValidCounter;
   RestoreInts(mask) ;
}




//float Meter2WheelEncoder, WheelEncoder2Meter;




void CalcGeomData( void )
{
    float rg_c ;
    switch ( Config.RailPitchType)
    {
    case 0:
        Geom.Calc.rrail = Geom.rrailnom ;
        break;
    default:
        Geom.Calc.rrail = Geom.rrailnom * ( 6.35f / 6.28f )  ;
        break ;
    }
    rg_c = Geom.rg * ( 1 + Calib.WheelRadiCorrection) ;
    Geom.Calc.Rad2WheelCnt = 1.0f / __fmax(Geom.WheelCntRad,1e-6f) ;
    Geom.Calc.Meter2WheelEncoderShelfHoriz  =  Geom.WheelCntRad  / __fmax(Geom.Calc.rrail  ,1e-6f) ; // Convert distance to wheel encoder
    Geom.Calc.WheelEncoder2MeterShelfHoriz = 1.0f / __fmax( Geom.Calc.Meter2WheelEncoderShelfHoriz , 1.e-9f) ;
    Geom.Calc.WheelEncoder2MeterGnd = rg_c * Geom.Calc.Rad2WheelCnt  ;
    Geom.Calc.Meter2WheelEncoderGnd = 1.0f / __fmax(Geom.Calc.WheelEncoder2MeterGnd,1e-9f)   ;
    Geom.Calc.Meter2MotEncoderGnd  = Geom.WheelMotCntRadGnd  / __fmax(rg_c, 1.e-6f) ; // Convert distance to wheel encoder
    Geom.Calc.MotEncoder2MeterGnd = 1.0f / __fmax(Geom.Calc.Meter2MotEncoderGnd,1.0e-7f) ;
    Geom.Calc.WheelEncoder2MotEncoder = Geom.WheelMotCntRadGnd * Geom.Calc.Rad2WheelCnt   ;// This ratio is FIXED regardless of travel conditions
    Geom.Calc.MotEncoder2WheelEncoder = 1.0f / __fmax(Geom.Calc.WheelEncoder2MotEncoder,1e-6) ;
    Geom.Calc.Meter2MotEncoderShelf = Geom.Calc.Meter2WheelEncoderShelfHoriz * Geom.Calc.WheelEncoder2MotEncoder ;
    Geom.Calc.MotEncoder2MeterShelf = 1.0f / __fmax( Geom.Calc.Meter2MotEncoderShelf, 1.0e-8f)  ;
    Geom.Calc.RSteerMotCnt2Rad = 1.0f / __fmax( Geom.RSteerMotCntRad, 1.0f) ;
    Geom.Calc.LSteerMotCnt2Rad = 1.0f / __fmax( Geom.LSteerMotCntRad, 1.0f) ;
    Geom.Calc.NeckEnc2Rad = 1.0f / __fmax(Geom.NeckMotCntRad,0.1e-6f);

    Geom.Calc.Meter2WheelEncoderShelfVert = Geom.Calc.Meter2WheelEncoderShelfHoriz * ( 1 + Geom.VerticalSlipFactor);
    Geom.Calc.WheelEncoder2MeterShelfVert = 1.0f / Geom.Calc.Meter2WheelEncoderShelfVert ;

    Geom.Calc.SteeringColumnDistRatio = Geom.SteerColumn2WheelDist /__fmax(Geom.rg , 1.0e-8f)  ;
    Geom.Calc.ReverseSteeringColumnDistRatio = -Geom.Calc.SteeringColumnDistRatio ;
}











short IsSteeringConverged(void)
{
    return ( SysState.CanAxis[LOGICAL_RSTEER].PositionReached &&  SysState.CanAxis[LOGICAL_LSTEER].PositionReached
        && (IsSpeedCmdZero( &SysState.CanAxis[LOGICAL_RW]) * IsSpeedCmdZero( &SysState.CanAxis[LOGICAL_LW])) ) ? 1 : 0 ;
}


short IsCrabConverged(float absYewCmd)
{
    if (IsSteeringConverged()
        && (fabsf(GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER])) == absYewCmd)
        && (fabsf(GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER])) == absYewCmd) )
    {
        return 1 ;
    }
    return 0 ;
}





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
 * Return 1 if in the process of package handling
 * Else return 0
 */
short IsInPack(void)
{
    short stat = SysState.Package.State ;
    if  ( (SysState.Mot.mode == E_SysMotionModeAutomatic) || (SysState.Mot.mode == E_SysMotionModeTestPack) )
    {
        return ( (stat > EPackState_Init) &&  (stat < EPackState_Success ) ) ? 1 : 0 ;
    }
    return 0 ;
}



/*
 *
 * Manage the process of fault clearing and subsequent motor start
 */
inline short unsigned ManageMotorStart(void)
{
    short unsigned LogicId , allInstall ;
    struct CCanAxis * pAxis ;
    allInstall = 1 ;
    // Treat motor of or just starting, and per-axis mode
    for ( LogicId = 0 ; LogicId < N_CAN_SLAVES ; LogicId++ )
    {
        pAxis = & SysState.CanAxis[LogicId];

        if ( pAxis->Installed == 0 )
        { // If axis is not installed, nothing more to do, just mark that someone is missing
            KillMotor( pAxis) ;
            allInstall = 0 ;
            continue ;
        }

        if ( SysState.Mot.mode == E_SysMotionModeFault  )
        {
            SetPosCmd2PosFeedback( pAxis) ;
            KillMotor( pAxis) ;  ; // If motor should be off, turn it off
            pAxis->MotorOnToutCnt = 0 ;
        }


        // Should not move now - No speed , stay in position , quick stop
        if ( ( pAxis->MotorOnToutCnt < 10 ) || ( SysState.Mot.mode <= E_SysMotionModeStay ) )
        { // If no motion should be
            SetPosCmd2PosFeedback( pAxis) ;
            HaltMotor( pAxis,1)  ;
        }

        if ( pAxis->MotorOnToutCnt < 10 )
        { // Allow axis time for motor start and brake release
            pAxis->MotorOnToutCnt += 1;
        }
        else
        {
            if ( SysState.Mot.mode > E_SysMotionModeStay )
            { // Release quick stops
                HaltMotor( pAxis,0) ;
            }
        }
    }
    return allInstall ;
}

/*
 * Use only each 4'th sample, to reduce calculation burden. This may create a 32.7msec detection delay,
 * tolerable because max speed is 0.6m/sec on the rail, 32msec are maximum 2cm travel
 */

#pragma FUNCTION_OPTIONS ( DetectFallByShoulderRollChange, "--opt_level=3" );
void DetectFallByShoulderRollChange(void)
{
    float rmin , rmax ;
    rmin = __fmin(
            __fmin(
            __fmin(SysState.ShoulderRollBuff4FallDetect[0],SysState.ShoulderRollBuff4FallDetect[4]) ,
            __fmin(SysState.ShoulderRollBuff4FallDetect[8],SysState.ShoulderRollBuff4FallDetect[12])) ,
            __fmin(
            __fmin(SysState.ShoulderRollBuff4FallDetect[16],SysState.ShoulderRollBuff4FallDetect[20]) ,
            __fmin(SysState.ShoulderRollBuff4FallDetect[24],SysState.ShoulderRollBuff4FallDetect[28])) ) ;

    rmax = __fmax(
            __fmax(
            __fmax(SysState.ShoulderRollBuff4FallDetect[0],SysState.ShoulderRollBuff4FallDetect[4]) ,
            __fmax(SysState.ShoulderRollBuff4FallDetect[8],SysState.ShoulderRollBuff4FallDetect[12])) ,
            __fmax(
            __fmax(SysState.ShoulderRollBuff4FallDetect[16],SysState.ShoulderRollBuff4FallDetect[20]) ,
            __fmax(SysState.ShoulderRollBuff4FallDetect[24],SysState.ShoulderRollBuff4FallDetect[28])) ) ;

    if ( rmax - rmin > ControlPars.RollThereshold4FallDetection)
    {
        LogException ( OWN_EXP_ID , EXP_SAFE_FATAL , exp_abrupt_roll_change_possible_fall ) ;
    }
}



/*
Just a stub to return present simulation time
*/

double GetNow()
{
    long long tl = GetLongTimer(&SysTimerStr);
    return ((double)tl * 1e-6);
}


/**
 * \brief Enter a shelf mode command
 * \param CmdImage - The command structure
 * \param InitSubmode - The submode to start with
 * \param overrideNewCrab - Nonzero if NewCrabFlag is to remain unchanged
 *
 */
long unsigned EnterShelfMotionCmd   ( short *CrawlImage  , short NextMode , short NextSubMode , short unsigned overrideNewCrab )
{
    short unsigned mask ;
    unsigned short nf;

    if ( SysState.Mot.mode == E_SysMotionModeAutomatic )
    {// Allow Olivier to send frequent joy-stick mode entries in manual mode
        SetSysTimerTargetSec(TIMER_CRAB_ACTION, 0.2f, &SysTimerStr);
    }

    mask = BlockInts() ;
    nf = SysState.ManRouteState.NewCrabFlag;
    if ( NextMode == E_TwistToShelf || NextMode == E_TwistFromShelf )
    {
        //SysState.Status.OverRideBrakeRelease = 2 ;
        SetSysTimerTarget( TIMER_BRAKE_DELAY_4_SHELF , 500000 , &SysTimerStr);

        switch ( SysState.ManRouteState.OldCrabValue )
        {
        case 1:
            SysState.ManRouteState.ClimbLeader = LOGICAL_RW ;
            break ;
        case -1:
            SysState.ManRouteState.ClimbLeader = LOGICAL_LW ;
            break ;
        default:
            RestoreInts(mask) ;
            return GetManufacturerSpecificCode(OBJ_ERR_TWIST_WITH_UNDEFINED_SIDE) ;
        }

        if ( NextMode == E_TwistToShelf)
        {
            *CrawlImage = 0 ;
        }
        else
        {
            *CrawlImage = SysState.ManRouteState.OldCrabValue ;
        }
        //ProgYaw2Crab( SysState.ManRouteState.NewCrabFlag );

        // Sample encoder locations on twist start, for exception handeling if wheel slippage occurs
        SysState.ManRouteState.WheelEncoderOnTwistStart[LOGICAL_RW] = GetRWheelEncoder() ;
        SysState.ManRouteState.WheelEncoderOnTwistStart[LOGICAL_LW] = GetLWheelEncoder() ;
        SysState.ManRouteState.MotEncoderOnTwistStart[LOGICAL_RW] = GetRWheelMotEncoder() ;
        SysState.ManRouteState.MotEncoderOnTwistStart[LOGICAL_LW] = GetLWheelMotEncoder() ;

        SysState.ManRouteState.NewCrabFlag = 1 ;
    }
    else
    {
        ResetWheelFaults() ;

        if ( ManRouteCmd.ShelfMode == E_Shelf_Nothing )
        { // Was in ground navigation
          // any change in crab crawl or navigation mode requires yaw to stabilize
          // and OldCrabValue remembers the start climb direction
            if ( ( ManRouteCmd.CrabCrawl != *CrawlImage ) ||
                ( ( ManRouteCmd.ShelfMode != NextMode ) && (SysState.Mot.mode == E_SysMotionModeManualTravel) ))
            {
                SysState.ManRouteState.NewCrabFlag = 1 ;
            }
            SysState.ManRouteState.OldCrabValue = ManRouteCmd.CrabCrawl ;
        }
        else
        {// Was on the shelf
            if ( NextMode )
            {
                if ( NextMode == E_ShelfArc )
                {
                    *CrawlImage = SysState.ManRouteState.OldCrabValue ;
                }
                if ( NextMode == E_ShelfRun_Auto  )
                {
                    *CrawlImage = 0 ;
                    if (NextMode != ManRouteCmd.ShelfMode )
                    {  // Enter the shelf auto mode as new
                         PrepAutoShelfRun();
                    }
                }

                if (NextMode != ManRouteCmd.ShelfMode  )
                {
                    SysState.ManRouteState.NewCrabFlag = 1 ;
                }
            }
        }
    }

    if ( ManRouteCmd.ShelfMode != NextMode )
    {
        SetSysTimerTargetSec ( TIMER_INACC , 10.0 , &SysTimerStr); // 10 seconds avoid acceleration updates
        SysState.ManRouteState.WheelEncoderInitCapture[0] = WheelEncR.Position ;
        SysState.ManRouteState.WheelEncoderInitCapture[1] = WheelEncL.Position  ;
    }

    ManRouteCmd.ShelfRunPars = AutomaticRunPars ;

    ManRouteCmd.ShelfMode    = NextMode ;
    ManRouteCmd.ShelfSubMode = NextSubMode ;
    ManRouteCmd.CrabCrawl    = *CrawlImage ;
    //ManRouteCmd.ShelfSubMode = InitSubmode ;

    if (overrideNewCrab)
    {
        SysState.ManRouteState.NewCrabFlag = nf;
    }

RestoreInts(mask) ;
    return 0 ;
}


