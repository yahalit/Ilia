/*
 * CanResponser.c
 *

* Service routines:
* GetLogicalId: Get logical ID based on CAN ID

* IdleCanProc : Idle loop handling of CAN
* RtCanHandler : handle the CAN communication of servo axes in the real time
* PDCanHandler : handle the CAN communication of PD in the real time


 *  Created on: Sep 19, 2016
 *      Author: Yahali Theodor
 */
#include "StructDef.h"

extern long long SysTimer ;

struct CCanTrap * AllocateTrap ();
short CanExceptionKill( struct CCanTrap * me );
short CanExceptionNothing( struct CCanTrap * me );


#define N_DELAY_PROCESS_CANQ 16
struct CCanMsg DelayProcessQueue[N_DELAY_PROCESS_CANQ] ;
short  unsigned nDelayProcessPut ;
short  unsigned nDelayProcessGet ;

#define CAN_REGSA ((volatile unsigned long *) 0x48000)
#define CAN_REGSB ((volatile unsigned long *) 0x4A000)


/**
 * @brief Store a non RT message for idle processing
 *
 * No need for FIFO - the idle should read starting at index zero,
 * and read only the top message in a critical.
 *
 * @return 0: ok , -1: queue is full
 */
short PutCan4DelayProcess(struct CCanMsg *pMsg)
{
    short unsigned next ;
    next = ( nDelayProcessPut + 1 )  & (N_DELAY_PROCESS_CANQ-1) ;
    if ( next != nDelayProcessGet)
    {
        DelayProcessQueue[nDelayProcessPut] = *pMsg ;
        nDelayProcessPut = next ;
        return 0 ;
    }
    return -1 ; // Error - queue is full
}

/**
 * \brief Idle loop handling of CAN
 *
 * \detail: Interpreter, idle processing of trap queue
 */
short IdleCanProc (void )
{
    //short unsigned next ;
    short unsigned sr ;
    short unsigned cnt , next , c1 ;
    struct CCanMsg Msg ;
    struct CCanTrap * pTrap;
    short stat , trapped;

    // Go over all the newly accepted messages
    c1 = 0 ;
    while ( nDelayProcessGet != nDelayProcessPut  )
    {
        c1 += 1 ;
        if ( c1 > 6 )
        { // Limit iteration
            break ;
        }
        sr  = BlockInts() ;
         // Copy message from delayed processing loop
        nDelayProcessPut &= (N_DELAY_PROCESS_CANQ-1) ;
        next = (nDelayProcessGet+1)&(N_DELAY_PROCESS_CANQ-1);
        Msg = DelayProcessQueue[nDelayProcessGet];
        nDelayProcessGet = next  ;
        RestoreInts(sr ) ;

        // Go over the entire set of active traps
        trapped = 0 ;
        for ( cnt = 0  ; cnt < CanTrapQueue.nPut ; cnt++ )
        {
            pTrap = & CanTrapQueue.Traps[cnt] ;
            if ( ( pTrap->ReuseCnt == 1 ) && ( Msg.cobId == pTrap->GetCobId ))
            { // Thats our boy
                trapped = 1 ;
                pTrap->Msg = Msg ;
                stat = pTrap->TrapHandler( pTrap) ;
                if ( stat == 0 )
                { // Accepted good, mark this trap as done
                    pTrap->ReuseCnt  = -1 ;
                    break ;
                }
            }
        }

        // Here should be treatment of uninvited messages
        if ( trapped == 0 )
        {

        }
    }

    // Garbage collection
    cnt = 0 ;
    while (  cnt < CanTrapQueue.nPut )
    { // go over all traps in use
        sr  = BlockInts() ;
        pTrap = & CanTrapQueue.Traps[cnt] ;
        if ( pTrap->ReuseCnt < 0)
        { // This is used already
            CanTrapQueue.nPut -= 1 ;
            if ( cnt < CanTrapQueue.nPut )
            {
                *pTrap = CanTrapQueue.Traps[CanTrapQueue.nPut] ;
            } // cnt remains same because we reload the queue item with to--check item
        }
        else
        {
            if ( (pTrap->ReuseCnt >= 0) && ( pTrap->TimeSet + pTrap->TimeOut < (long long) SysTimerStr.SysTimer ))
            { // This message is timed out (regardless if actually source was transmitted)
                pTrap->ToutHandler( pTrap ) ;
                CanTrapQueue.nPut -= 1 ;
                if ( cnt <  CanTrapQueue.nPut )
                {
                    *pTrap = CanTrapQueue.Traps[CanTrapQueue.nPut] ;
                } // cnt remains same because we reload the queue item with to--check item
            }
            else
            {
                cnt += 1 ;
            }
        }
        RestoreInts(sr ) ;
    }
    return 0 ;
}


/**
 * @brief process an emergency message from a slave
 *
 * @param pMsg-> Emergency message
 */
short ProcessEmergency(struct CCanMsg *pMsg )
{
    short unsigned SlaveId ;
    struct CEmergencyRecord *pRec ;
    SlaveId  = pMsg->cobId & 0x7f ;
    pRec =&EmergencyLog.EmergencyRecord[EmergencyLog.nPut] ;
    pRec->EmcyCtr = EmergencyLog.EmcyCtr ;
    if ( pMsg->dLen != 8 )
    { // Notify ilegal emcy
        pRec->EmcyCode = 0xffff ;
        pRec->ErrorReg = 0xff   ;
        pRec->SpecificError = 0 ;
    }
    else
    {
        pRec->EmcyCode = * (unsigned short * ) pMsg->data ;
        pRec->ErrorReg = (short unsigned) ( (pMsg->data[0] >> 16 ) & 0xff );
        EmergencyLog.nPut = (EmergencyLog.nPut+1) & (N_EMCY_QUEUE-1) ;
        EmergencyLog.SpecificError = pMsg->data[1] ;
    }

    LogException( SlaveId , EXP_SAFE_FATAL , pRec->EmcyCode + (( EmergencyLog.EmcyCtr&0xffff) << 16 )  ) ;
    EmergencyLog.EmcyCtr += 1 ; // Increment total emergency counter
    return 0 ;
}

/**
 * \brief read Direct commanding of an axis (speed or position)
 * \param LogicId : Logic ID of axis
 * \return : Value of set-point
*/
long DirectGetCanAxisCommand( short unsigned LogicId)
{
    struct CCanAxis * pAxis ;
    if (LogicId >= N_CAN_SLAVES )
    {
        return -1 ; // Unexpected PDO
    }
    pAxis = & SysState.CanAxis[LogicId] ;
    if ( CanAxisIsPosition(pAxis) )
    {
        return pAxis->BH.UserPosCmd  ;
    }
    else
    {
        return pAxis->BH.UserSpeedCmd  ;
    }
}

float WheelMeter2Mot(void)
{
    return ( ManRouteCmd.ShelfMode == 0 ? Geom.Calc.Meter2MotEncoderGnd : Geom.Calc.Meter2MotEncoderShelf);
}


/**
 * \brief read Direct commanding of an axis (speed or position)
 * \param LogicId : Logic ID of axis
 * \return : Value of set-point
*/
float FDirectGetCanAxisCommand( short unsigned LogicId)
{
    struct CCanAxis * pAxis ;
    float fac ;
    if (LogicId >= N_CAN_SLAVES )
    {
        return -1 ; // Unexpected PDO
    }
    pAxis = & SysState.CanAxis[LogicId] ;
    if ( CanAxisIsPosition(pAxis) )
    {
        fac = pAxis->MotCntRad ;
        if (LogicId == LOGICAL_RSTEER || LogicId == LOGICAL_LSTEER  )
        {
            fac = -fac ;
        }
        return (float)pAxis->BH.UserPosCmd / fac  ;
    }
    else
    {
        fac = WheelMeter2Mot() ;
        //fac = pAxis->MotCntRad / ( ManRouteCmd.ShelfMode == 0 ? Geom.rg : Geom.Calc.rrail ) ;
        return (float)pAxis->BH.UserSpeedCmd  / fac ;
    }
}






long  unsigned SetAxisDefaultMode( short unsigned LogicId )
{
    if (LogicId >= N_CAN_SLAVES )
    {
        return UNSIGNED_MINUS1 ; // Unexpected PDO
    }
    return SetAxisMode (LogicId , DefaultAxisMode[LogicId] ) ;
}



struct CBH * GetBH(short unsigned LogicId)
{
    return &SysState.CanAxis[LogicId].BH ;
}


/**
 * \brief Direct commanding of an axis (speed or position)
 * \param LogicId : Logic ID of axis
 * \param value   : Value to set
 */
short DirectSetCanAxisCommand( short unsigned LogicId , long value )
{
    struct CCanAxis * pAxis ;
    short unsigned mask ;
    if (LogicId >= N_CAN_SLAVES )
    {
        return -1 ; // Unexpected PDO
    }

    pAxis = & SysState.CanAxis[LogicId] ;

    mask = BlockInts( );
    if ( CanAxisIsPosition(pAxis) )
    {
        SetCanAxisPosTarget ( pAxis, ((float)value) / pAxis->MotCntRad ) ;
    }
    else
    {
        pAxis->BH.UserSpeedCmd = value ;
    }
    HaltMotor( pAxis, 0) ;
    //pAxis->IsManual = 1 ;
    RestoreInts(mask) ;
    return 0 ;
}


/**
 * \brief Direct commanding of an axis (speed or position, in rad/sec)
 * \param LogicId : Logic ID of axis
 * \param value   : Value to set
 */
short FDirectSetCanAxisCommand( short unsigned LogicId , float value , short IsShelf)
{

    struct CCanAxis * pAxis ;
    short unsigned mask ;
    if (LogicId >= N_CAN_SLAVES )
    {
        return -1 ; // Unexpected PDO
    }

    pAxis = & SysState.CanAxis[LogicId] ;

    mask = BlockInts( );
    if ( CanAxisIsPosition(pAxis) )
    {
        if (LogicId == LOGICAL_RSTEER || LogicId == LOGICAL_LSTEER  )
        {
            SetCanAxisPosTarget (pAxis, -value);
        }
        else
        {
            SetCanAxisPosTarget( pAxis,value ) ;
        }
        SetCanAxisReferenceMode(pAxis,E_PosModePTP) ;
    }
    else
    {
        if (LogicId == LOGICAL_RW || LogicId == LOGICAL_LW )
        {
            // Always take the speed as if on  rail
            if ( IsShelf)
            {
                SetUserManualSpeedTarget( pAxis , value , Geom.Calc.Meter2MotEncoderShelf) ; // ( ManRouteCmd.ShelfMode == 0 ? Geom.rg : Geom.rrail ) ) ;
            }
            else
            {
                SetUserManualSpeedTarget( pAxis , value , Geom.Calc.Meter2MotEncoderGnd) ; // ( ManRouteCmd.ShelfMode == 0 ? Geom.rg : Geom.rrail ) ) ;
            }
        }
        else
        {
            SetWheelSpeedCmd( pAxis , value , pAxis->MotCntRad) ;
        }
        SetCanAxisReferenceMode(pAxis,E_RefModeSpeed) ;
    }
    SysState.Mot.QuickStop = 0 ;
    //pAxis->IsManual = 1 ;
    RestoreInts(mask) ;
    return 0 ;
}


/**
 * @brief Process incoming PDO1
 *
 * For all the axes PDO 1 has the same composition:
 * - Status word, current actual, speed pos
 */


#define BEAN_SUMMATION_CNT 1000 // About 8 seconds
#define BEAN_SUMMATION_DIV (1.0f/BEAN_SUMMATION_CNT)  // About 8 seconds


/*
short MalinkiProcessTxPdo1(struct CCanMsg *pMsg)
{
    short unsigned us;
    long unsigned ver , subver, patch;

    us =  * ( (short unsigned *) &pMsg->data[1] + 1 ) ;
    ver = ((long unsigned)us & 0xFF00) << 16 ;
    //subver = ((long unsigned)us & 0xF0) << 16 ;
	subver = ((long unsigned)us & 0xF0) << 12 ;
    patch = ((long unsigned)us & 0xF) << 12 ;

    S2M.Items.SlaveRevisions.item.MalinkiVerSubverPatch = ver + subver + patch ;
    return 0 ;
}
*/


/**
 * @brief Process incoming PDO1 from PD
 *
 */

short PdProcessTxPdo1R2p5(long unsigned *data)
{
    short unsigned * uPtr ;
    struct CPdBitGen Bit ;
    struct CPdCBit * pBit1 ;
    struct CPdCBit3 * pBit3 ;
    uPtr = (unsigned short *) & data[0] ;

    SysState.Package.ManCBit2 = * ( ( struct CPdCBit2 *) (uPtr+1) ) ;

    if ( SysState.EEF.bUse)
    {
        Bit = * ( ( struct CPdBitGen *) (uPtr+2) ) ;
        Bit.Pump1SwOn = (SysState.EEF.Status & 1 ) ? 1 : 0 ;
        Bit.Pump2SwOn = (SysState.EEF.Status & 2 ) ? 1 : 0 ;
        Bit.LaserPsSwOn = (SysState.EEF.Status & 10 ) ? 1 : 0 ;
        SysState.PdBitGen = Bit ;
    }
    else
    {
        SysState.PdBitGen = * ( ( struct CPdBitGen *) (uPtr+2) ) ;
    }

#ifdef MANIP2
    pBit1 = (struct CPdCBit *) & data[0] ;
    SysState.Package.ManCBit1.V24Fail = pBit1->V24Fail ;
    SysState.Package.ManCBit1.V12Fail = pBit1->V12Fail ;
    SysState.Package.ManCBit1.MushroomDepressed = pBit1->MushroomDepressed ;
    SysState.Package.ManCBit1.ShuntFail = pBit1->ShuntFail ;
    SysState.Package.ManCBit1.V54Fail = pBit1->V54Fail ;
    pBit3 = ( struct CPdCBit3 *) (uPtr+3);
    SysState.Package.ManCBit3.Disc2In = pBit3->Disc2In ;
    SysState.Package.ManCBit3.ManSw1 = pBit3->ManSw1 ;
    SysState.Package.ManCBit3.ManSw2 = pBit3->ManSw2 ;
    SysState.Package.ManCBit3.StopSw1 = pBit3->StopSw1 ;
    SysState.Package.ManCBit3.StopSw2 = pBit3->StopSw2 ;
#else
    SysState.Package.ManCBit3 = * ( ( struct CPdCBit3 *) (uPtr+3) ) ;
    SysState.Package.ManCBit1 = * ( ( struct CPdCBit *) uPtr ) ;
#endif
    return 0 ;
}

// Descriptor for self test bits
struct CPd2CBit
{
    int unsigned V5Fail : 1 ; //!< 0: 5V fail
    int unsigned V12Fail : 1 ; //!< 1: Failure of the 12V voltage
    int unsigned V18Fail : 1 ; //!< 2: 18 V
    int unsigned V24Fail : 1 ; //!< 3: Failure of the 24V voltage
    int unsigned V54Fail : 1 ; // !< 4: 54V failure 0x400
    int unsigned MushroomDepressed : 1 ; // !< 5: Mushrum is depressed
    int unsigned PbitDone : 1 ; // 6: Inform PBIT ok
    int unsigned BatteryTransition: 1 ; // !< 7: 1 if in battery transition
    int unsigned EBatteryIndex : 2; // !< 8: Index of the battery to use, may be 0 (none) or 1 or 2
    int unsigned V5Ready : 1 ; //!< 10: 5V fail
    int unsigned V12Ready : 1 ; //!< 11: Failure of the 12V voltage
    int unsigned V18Ready : 1 ; //!< 12: 18 V
    int unsigned V24Ready : 1 ; //!< 13: Failure of the 24V voltage
    int unsigned V54Ready : 1 ; // !< 14: 54V failure 0x400
    int unsigned Reserved : 1 ; // !< Reserved
};


short PdProcessTxPdo1R3(long unsigned *data)
{
    union
    {
        short unsigned us[2];
        long unsigned  ul ;
    } u ;
    union UPd2CBit
    {
        struct CPd2CBit bit ;
        short  unsigned all ;
    } pdb ;
    u.ul = data[0] ;
    pdb.all = u.us[0] ;

    SysState.Package.ManCBit1.V24Fail = pdb.bit.V24Fail ;
    SysState.Package.ManCBit1.V18Fail = pdb.bit.V18Fail ;
    SysState.Package.ManCBit1.V12Fail = pdb.bit.V12Fail ;
    SysState.Package.ManCBit1.V54Fail = pdb.bit.V54Fail ;

    SysState.Package.ManCBit2.Active12V = pdb.bit.V12Ready ;
    SysState.Package.ManCBit2.Active18V = pdb.bit.V18Ready ;
    SysState.Package.ManCBit2.Active24V = pdb.bit.V24Ready ;
    SysState.Package.ManCBit2.Active54V = pdb.bit.V54Ready ;

    SysState.Package.ManCBit2.FailCode12V =  u.us[1] & 7 ;
    SysState.Package.ManCBit2.FailCode18V = (( u.us[1] >> 3 ) & 7 ) ;
    SysState.Package.ManCBit2.FailCode24V = (( u.us[1] >> 6 ) & 7 ) ;
    SysState.Package.ManCBit2.FailCode54V = (( u.us[1] >> 9 ) & 7 ) ;

    /*
     * VANDAL: So far unused
    pdb.bit.V18Ready
    u.us[1] = (SysState.Buck12Control.Exception & 7 ) | ((SysState.Buck18Control.Exception & 7 )<<3)
        | ((SysState.Buck24Control.Exception & 7 )<<6)  | ((SysState.Sw54Control.Exception & 7 )<<9)
        | (( SysState.Buck5Control.LoadSw  & 1 ) << 12 )
        | (( SysState.Buck18Control.LoadSw & 1 ) << 13 ) ;
     */

    SysState.Package.ManCBit1.MushroomDepressed = pdb.bit.MushroomDepressed ;
    return 0 ;
}

short PdProcessTxPdo1(long unsigned *data)
{
    if ( S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN3 )
    {
        PdProcessTxPdo1R3(data) ;
    }
    else
    {
        PdProcessTxPdo1R2p5(data) ;
    }
    SysState.Package.ManOnState.PdoAcceptMask |= 1 ;
    return 0 ;
}





/**
 * @brief Process incoming PDO2 from PD
 *
 */

const float *pPdoReportData[32] =
{
   &SysState.Status.VBat1In , // 0
   &SysState.Status.VBat2In ,
   &SysState.Status.Cur24V , // 1
   &SysState.Status.Cur18V ,
   &SysState.Status.Cur12V , // 2
   &SysState.Status.Cur5V ,
   &SysState.Status.InputCur , //3
   &SysState.Status.V54 ,
   &SysState.Status.V24 ,// 5
   &SysState.Status.V18 ,
   &SysState.Status.V12 , // 6
   &SysState.Status.V5   ,
   &SysState.Status.Power18 , // 7
   &SysState.Status.Energy18 ,
   &SysState.Status.Power54 , // 8
   &SysState.Status.Energy54 ,
   &SysState.Status.Power12 ,  //9
   &SysState.Status.Energy12 ,
   &SysState.Status.Power24 , //10
   &SysState.Status.Energy24 ,
   &SysState.Status.FZero, //11
   &SysState.Status.FZero,
   &SysState.Status.FZero, //12
   &SysState.Status.FZero,
   &SysState.Status.FZero, //13
   &SysState.Status.FZero,
   &SysState.Status.FZero, //14
   &SysState.Status.FZero,
   &SysState.Status.FZero, //15
   &SysState.Status.FZero
};

short PdProcessTxPdo2G3(long unsigned *data)
{
    short unsigned Pdo2Cycle ;
    float * fPtr ;
    //short unsigned * uPtr ;

    union
    {
        float f ;
        long unsigned ul ;
    } u ;

    Pdo2Cycle = * ((short unsigned *) &data[0] ) ;
    Pdo2Cycle &= 0xf ;

    u.ul = data[0] & 0xfffffff0 ;
    fPtr = (float*) pPdoReportData[Pdo2Cycle*2] ;
    *fPtr = u.f ;

    Pdo2Cycle = * ((short unsigned *) &data[1] ) ;
    Pdo2Cycle &= 0xf ;

    u.ul = data[1]  & 0xfffffff0 ;
    fPtr = (float*) pPdoReportData[Pdo2Cycle*2+1] ;
    *fPtr = u.f ;

    SysState.Status.V18Or36 = SysState.Status.V18 ;

    return 0 ;

}


short PdProcessTxPdo2(long unsigned *data)
{
    short unsigned * uPtr ;
#ifndef MANIP2
    uPtr = (unsigned short *) & data[0] ;
    SysState.Package.ManState = uPtr[0] & 0xff ;
    SysState.Package.ManStopErr = ( uPtr[0] & 0xff00 ) >> 8 ;
#else
    uPtr = (unsigned short *) & data[0] ;
#endif

    if ( IsGen3() )
    {
        PdProcessTxPdo2G3(data);
    }
    else
    {
        SysState.Status.V24 = ( uPtr[1] & 0xff ) * 0.2f ;
        SysState.Status.V12 = ( ( uPtr[1] >> 8 ) & 0xff ) * 0.1f ;
        SysState.Status.V36 = uPtr[3] * 0.01f ;
        SysState.Status.V54 = uPtr[2] * 0.01f ;
        SysState.Status.V18Or36 = SysState.Status.V36 ;
    }
    SysState.Package.ManOnState.PdoAcceptMask |= 2 ;
    return 0 ;
}





/**
 * @brief Process incoming manipulator data from CPU2
 */
void Cpu2ProcessTxPdo(void)
{
    //(void) pMsg ;
    short unsigned s1 , us2 ;
    short s2 ;
    long unsigned data ;
    //short unsigned *usPtr  ;

    struct CPdCBit3 * pBit3 ;
    struct CPdCBit * pBit1 ;

    union
    {
        short unsigned us[2] ;
        long  unsigned ul ;
        struct
        {
            struct CManCBit ManCBit ;
            struct CManCBitH ManCBitH ;
        } s ;
    } uBit ;


    pBit1 = (struct CPdCBit *) &SysState.Package.ManCBit1 ;
    pBit3 = (struct CPdCBit3 *) &SysState.Package.ManCBit3;

    uBit.ul = S2M.Items.ActStatus.stat.ManipData1_L ;


    pBit1->GripFail = uBit.s.ManCBit.GripFail ;
    pBit1->ManFail = uBit.s.ManCBit.ManFail ;
    pBit1->StopFail = uBit.s.ManCBit.StopFail ;
    pBit1->NoSuck1 = uBit.s.ManCBit.NoSuck1 ;

    pBit3->Dyn12NetOn = uBit.s.ManCBit.Dyn12NetOn ;
    pBit3->Dyn12InitDone = uBit.s.ManCBit.Dyn12InitDone ;
    pBit3->Dyn24NetOn = uBit.s.ManCBit.Dyn24NetOn ;
    pBit3->Dyn24InitDone = uBit.s.ManCBit.Dyn24InitDone ;
    pBit3->MotorOnMan = uBit.s.ManCBit.MotorOnMan ;
    pBit3->MotorOnStop = uBit.s.ManCBit.MotorOnStop ;
    pBit3->PbitDone = uBit.s.ManCBitH.PbitDone ;
    pBit3->IndividualAxControl = uBit.s.ManCBitH.IndividualAxControl ;

    //SysState.TrackWidthCtl.NoElbowPinPosition[0] = S2M.Items.ActStatus.stat.AxisReadout[uBit.s.ManCBitH.PinMotorIndex] ;
    //SysState.TrackWidthCtl.NoElbowPinPosition[1] = S2M.Items.ActStatus.stat.AxisReadout[uBit.s.ManCBitH.PinMotorIndex+1] ;

    //usPtr = (unsigned short *)  &data ;
    //data = S2M.Items.ActStatus.stat.ManipData1_H ;
    //SysState.Package.ManState = usPtr[0] & 0xff ;
    //SysState.Package.ManStopErr = ( usPtr[0] & 0xff00 ) >> 8 ;
    SysState.Package.ManState =  ((short unsigned *) &S2M.Items.ActStatus.stat.ManipData1_H)[0] & 0xff ;
    SysState.Package.ManStopErr = (((short unsigned *) &S2M.Items.ActStatus.stat.ManipData1_H)[0] & 0xff00 ) >> 8 ;
    SysState.Package.ManStateMachine = ((short unsigned *) &S2M.Items.ActStatus.stat.ManipData1_H)[1] ;

    data = S2M.Items.ActStatus.stat.ManipData2_L ;
    SysState.PdRawData[4] = data;
     s2 = (short)data ;
    SysState.Package.XPosition = ((  s2 << 8 ) >> 8 ) *  0.0078125f ;
    SysState.Package.YPosition = ( s2 >> 8 ) *  0.0078125f ;
    SysState.Package.ManHolds =  (short) ( data >> 16 ) ;

    data = S2M.Items.ActStatus.stat.ManipData2_H ;
    SysState.PdRawData[5] = data;

    s2 = (short) ( data & 0xff00 ) ;
    SysState.Package.ThtPosition = s2 * 9.587727708533077e-05f;
    s1 = (short unsigned) ( data >> 16 ) ;
    s2 = s1 & 0xff ;
    if ( s2 >= 128 ) s2 -= 256 ;
    SysState.Package.LeftStopPosition = s2 * 0.02f;
    s2 = s1 >> 8 ;
    if ( s2 >= 128 ) s2 -= 256 ;
    SysState.Package.RightStopPosition = s2 * 0.02f;

    data = S2M.Items.ActStatus.stat.ManipData3_L;
    SysState.PdRawData[6] = data ;

    //s2 = (short)data ;
    us2 = (unsigned short)data ;

    SysState.Package.ComNetState[0] = us2 & 0xf  ;//24v
    SysState.Package.ComNetState[1] = (us2 & 0xf0)>>4  ;//12v

    us2 = (short unsigned) ( data >> 16 );
    SysState.Package.AxisFailStatus[0] = us2 & 0xff ;
    SysState.Package.AxisFailStatus[1] = (us2 >> 8 ) & 0xff ;


    data = S2M.Items.ActStatus.stat.ManipData3_H;
    SysState.PdRawData[7] = data;

    us2 = (short unsigned)   data  ;
    SysState.Package.AxisFailStatus[2] = us2 & 0xff ;
    SysState.Package.AxisFailStatus[3] = (us2 >> 8 ) & 0xff ;

    us2 = (short unsigned) ( data >> 16 );
    SysState.Package.AxisFailStatus[4] = us2 & 0xff ;


    //data = S2M.Items.ActStatus.stat.ManipData4_L ;
    //SysState.Package.ShoulderAngle = (float)uPtr[1].s * 9.587727708533077e-05f ;
    SysState.Package.ShoulderAngle = (float)  ((short *) &S2M.Items.ActStatus.stat.ManipData4_L)[1] * 9.587727708533077e-05f ;

    //data = S2M.Items.ActStatus.stat.ManipData4_H ;
    //SysState.Package.ElbowAngle = (float)uPtr[0].s * 9.587727708533077e-05f ;
    //SysState.Package.WristAngle = (float)uPtr[1].s * 9.587727708533077e-05f ;
    SysState.Package.ElbowAngle = (float) ((short *) &S2M.Items.ActStatus.stat.ManipData4_H)[0] * 9.587727708533077e-05f ;
    SysState.Package.WristAngle = (float) ((short *) &S2M.Items.ActStatus.stat.ManipData4_H)[1] * 9.587727708533077e-05f ;

    //data = S2M.Items.ActStatus.stat.ManipData5_L ;
    //SysState.Package.KnowWhereAmI = ( uPtr[0].us >> 8 ) & 0x3f ;
    //SysState.Package.YPosition2   = (float) uPtr[1].s * 0.001f ;
    SysState.Package.KnowWhereAmI = ( ((short *) &S2M.Items.ActStatus.stat.ManipData5_L)[0] >> 8 ) & 0x3f ;
    SysState.Package.YPosition2   = (float) ((short *) &S2M.Items.ActStatus.stat.ManipData5_L)[1] * 0.001f ;

    //data = S2M.Items.ActStatus.stat.ManipData5_H ;
    SysState.Package.ManipulatorMinLimit   = (float) -((short *) &S2M.Items.ActStatus.stat.ManipData5_H)[0] * 0.001f ;// Most negative (left) protrusion of actuator from robot fuselage axis
    SysState.Package.ManipulatorMaxLimit   = (float) -((short *) &S2M.Items.ActStatus.stat.ManipData5_H)[1] * 0.001f ;// Most positive (right) protrusion of actuator from robot fuselage axis

}

void InvertSpeed4Shelf( short crabdir)
{
#ifdef DIFFERENTIAL_CRAB

    short unsigned mask ;
    long  rdir , ldir  ;
    mask = BlockInts() ;
    // Note that DirectionOfMotors is used by the CKA to which the critical section does not apply

    ldir = SlaveDirectionTab[LOGICAL_LW]  ;
    rdir = SlaveDirectionTab[LOGICAL_RW]  ;
    if (crabdir )
    { // Reverse direction of follower wheel
        if ( crabdir < 0 )
        {
            rdir *= (-1) ;
        }
        else
        {
            ldir *= (-1) ;
        }
    }
    SysState.CanAxis[LOGICAL_LW].BH.BHAxisDirection = ldir ;
    SysState.CanAxis[LOGICAL_RW].BH.BHAxisDirection = rdir ;
    RestoreInts(mask) ;
#else
    (void) crabdir ;
#endif
}

void KillSteeringConvergence(void)
{
    SysState.CanAxis[LOGICAL_RSTEER].ConvergenceCnt = 0 ;
    SysState.CanAxis[LOGICAL_LSTEER].ConvergenceCnt = 0 ;
    SysState.CanAxis[LOGICAL_RSTEER].PositionReached = 0 ;
    SysState.CanAxis[LOGICAL_LSTEER].PositionReached = 0 ;
}


/*
 * \brief Transmit control word and speed/position command to axis
 *
 * \param The logic Id of the target axis
 * \return 0 normally, -1 if mailbox was full
 */
short PreTransmitRxPdo1Slave( short unsigned  LogicId)
{
    struct CCanAxis * pAxis ;
    //struct CCanAxis * pSteer ;
    float pmax , Bits2Rad , posCmdRad , ptarget , delta , dt , thold     ;
    float posActRad  ;
    //float q[4] , qdif[4] , ang ;
    //long unsigned mask ;

    //short NextTrq ;
    pAxis = & SysState.CanAxis[LogicId];
    if ( pAxis->Installed == 0 )
    {
        return 0 ; // Nothing to do
    }


    // Finally transmit. The actual speed or position commands are subject to specific handler
    switch (LogicId)
    {
    case LOGICAL_RW:
        // Add wheel speed in response to steering speed
        if ( ( (SysState.Mot.mode > E_SysMotionModePerAxis) || SysState.Debug.ForceWheelTracksSteering )
                && (( ManRouteCmd.ShelfMode == 0 ) ||(ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_RescueDone)))
        {// In shelf mode the cog wheel is centered on the axis, correction is not needed
            SetCanAxisWheelTracksSteering(pAxis,1) ;

            //pSteer = &SysState.CanAxis[LOGICAL_RSTEER] ;
            //pAxis->AddSpeed = pSteer->BH.UserSpeed  * Geom.SteerColumn2WheelDist * Geom.Calc.Meter2MotEncoderGnd ;

        }
        else
        {
            SetCanAxisWheelTracksSteering(pAxis,0) ;
        }

        SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_RW], E_RefModeSpeed);

        break ;
    case LOGICAL_LW:
        if ( ( ( SysState.Mot.mode > E_SysMotionModePerAxis ) || SysState.Debug.ForceWheelTracksSteering )  &&
                (( ManRouteCmd.ShelfMode == 0 ) || (ManRouteCmd.ShelfSubMode == E_ShelfArc_SubMode_RescueDone)))
        {// In shelf mode the cog wheel is centered on the axis, correction is not needed
            SetCanAxisWheelTracksSteering(pAxis,1) ;
            //pSteer = &SysState.CanAxis[LOGICAL_LSTEER] ;
            //pAxis->AddSpeed = -pSteer->BH.UserSpeed * Geom.SteerColumn2WheelDist * Geom.Calc.Meter2MotEncoderGnd ;
        }
        else
        {
            SetCanAxisWheelTracksSteering(pAxis,0) ;
        }
        SetCanAxisReferenceMode(&SysState.CanAxis[LOGICAL_LW], E_RefModeSpeed);
        break ;
    case LOGICAL_NECK:
        pAxis->ConvergenceCnt = 0 ;
        pAxis->PositionReached = 0 ;
        //pAxis->BH.UserPosCmd = pAxis->BH.UserPos ;

        pAxis->BH.UserSpeedCmd = fSat ( pAxis->BH.UserSpeedCmd , Constraint.MaxNeckSpeedCmd )  * pAxis->MotCntRad   ;

        // Protect deviation from position space
        pmax = ( pAxis->MotCntRad * 1.8f );
        if ( pAxis->BH.UserPos > pmax )
        {
            pAxis->BH.UserPosCmd = pmax ;
            pAxis->BH.UserSpeedCmd = __fmin(pAxis->BH.UserSpeedCmd ,0) ;
        }
        if ( pAxis->BH.UserPos < -pmax )
        {
            pAxis->BH.UserPosCmd = -pmax ;
            pAxis->BH.UserSpeedCmd = __fmax(pAxis->BH.UserSpeedCmd ,0) ;
        }
        break ;

    case LOGICAL_RSTEER:
        Bits2Rad = 1.0f / pAxis->MotCntRad ;


        // At any given moment:
        // - The range of physical motion is [-M,M], M > pi/2
        // - The range of logical motion is [-M-F,M-F] where F can be either 0 (normal)
        // Note that both the logical and the physical ranges are linear, not cyclic (being merely mutual translations)
        // PositionCmd and posActRad are both logical

        posCmdRad = pAxis->BH.UserPosCmd * Bits2Rad  ;
        posActRad = pAxis->BH.UserPos * Bits2Rad  ;

        // Never ask over position error
        ptarget  = __fmin(__fmax( posCmdRad,-2.2f),2.2f) ;

        // Test convergence
        delta =  ptarget - posCmdRad   ;

        dt = ( C_TS * 1e-6f ) * SysState.ProcCtrMax ;
        thold = Constraint.MaxSteerSpeedCmd * dt * 2  ;
        if ( fabsf( delta) < thold && fabsf(  ptarget - posActRad) < thold )
        {
            if ( pAxis->ConvergenceCnt < 20 )
            {
                pAxis->ConvergenceCnt += 1 ;
                pAxis->PositionReached = 0 ;
            }
            else
            {
                pAxis->PositionReached = 1 ;
            }
        }
        else
        {
            pAxis->ConvergenceCnt = 0 ;
            pAxis->PositionReached = 0 ;
        }
        break ;
    case LOGICAL_LSTEER:
        Bits2Rad = 1.0f / pAxis->MotCntRad ;


        // At any given moment:
        // - The range of physical motion is [-M,M], M > pi/2
        // - The range of logical motion is [-M-F,M-F] where F can be either 0 (normal)
        // Note that both the logical and the physical ranges are linear, not cyclic (being merely mutual translations)
        // PositionCmd and posActRad are both logical

        posCmdRad = pAxis->BH.UserPosCmd * Bits2Rad  ;
        posActRad = pAxis->BH.UserPos * Bits2Rad  ;

        // Never ask over position error
        ptarget  = __fmin(__fmax( posCmdRad,-2.2f),2.2f) ;

        // Test convergence
        delta =  ptarget - posCmdRad   ;

        dt = ( C_TS * 1e-6f ) * SysState.ProcCtrMax ;
        thold = Constraint.MaxSteerSpeedCmd * dt * 2  ;
        if ( fabsf( delta) < thold && fabsf(  ptarget - posActRad) < thold )
        {
            if ( pAxis->ConvergenceCnt < 20 )
            {
                pAxis->ConvergenceCnt += 1 ;
                pAxis->PositionReached = 0 ;
            }
            else
            {
                pAxis->PositionReached = 1 ;
            }
        }
        else
        {
            pAxis->ConvergenceCnt = 0 ;
            pAxis->PositionReached = 0 ;
        }
        break ;
    }

    // If the system state is fault, kill the control word
    if (SysState.Mot.mode == E_SysMotionModeFault  )
    {
        pAxis->BH.BhCw.bit.FaultReset = 0  ;
    }

    BuildRxPdo1Slave(LogicId) ;
    // Prepare current , limit the demand to peak
    // NextTrq =  (short) fSat ( pAxis->CurrentCmd * 1000.0f / pAxis->RatedCurrent , pAxis->PeakCurrentObj ) ;
    // pAxis->Pdo1RxMsg.data[0] |= ( (long unsigned) ( *(short unsigned *) & NextTrq ) << 16 ) ;
    return 0 ;
}



/*
void  inline  BuildManipulatorActuation(void)
{
    if ( SysState.Package.OverRideLaserPS == 0 )
    {
        SysState.Package.PDControlWord.LaserPsOn = S2M.Items.ActStatus.stat.LaserCmd ;
    }
    *  ( short unsigned *) &DbgPDControlWord = *  ( short unsigned *) &SysState.Package.PDControlWord ;
    // We don't send manipulator commands from here anymore
    //DbgManControlWord.Automatic = 0;
    //DbgManControlWord.MotorsOn  = 0;
    //DbgManControlWord.Package   = 0;
    //DbgManControlWord.Standby   = 0;
    DbgPDControlWord.PumpOn    = SysState.Package.OverRidePumpsOn ? 1 : S2M.Items.ActStatus.stat.PumpCmd ;

    SysState.CBit.bit.PumpRequest = DbgPDControlWord.PumpOn ;

    M2S.Items.ActCmd.cmd.PumpsOn = DbgPDControlWord.PumpOn ;
    M2S.Items.ActCmd.cmd.ModeWord.bit.LaserPsOn = SysState.Package.PDControlWord.LaserPsOn ; // Inform CPU2 that laser is on
}


void FillManRxPdo1Slave(long unsigned *data)
{
    short unsigned * uPtr ;
    struct CPdCmd2 *pPdCmd2 ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;

    uPtr =  (short unsigned *)  ( &data[0]) ;

    //cw = *  ( ( short unsigned *) &SysState.Package.ManControlWord ) ;
    //cw = ( cw & (~SysState.Status.PdControlWordMask)) | ( SysState.Status.PdControlWordMask & SysState.Status.PdControlWordSubs ) ;
    uPtr[0] = *  ( ( short unsigned *) &DbgPDControlWord ) ;

    //uPtr[1] =  SysState.Package.LaserDist0p1mm ;

    if ( SysState.PdCmd2EnterCtr > 3 )
    {
        pPdCmd2->PowerEnter = 1 ;
    }
    else
    {
        pPdCmd2->PowerEnter = 0 ;
    }

    if ( SysState.PdCmd2EnterCtr )
    {
        SysState.PdCmd2EnterCtr -= 1 ;
    }

    if ( M2S.Items.ActCmd.cmd.PsCmd.items.ManipulatorAxesReboot )
    {
        data[1] = 0x56780000 + SysState.PdCmd2 ;
        M2S.Items.ActCmd.cmd.PsCmd.items.ManipulatorAxesReboot -= 1 ; // Count several consecutive transmissions for reliability
        M2S.Items.ActCmd.cmd.ResetMotors = 1 ;
    }
    else
    {
        M2S.Items.ActCmd.cmd.ResetMotors = 0 ;
        data[1] = 0x12340000 + SysState.PdCmd2 ;
    }
}
*/
//short  unsigned bDbgManControlWord ;

/*
 * \brief Transmit control word and speed/position command to axis
 *
 * \param The logic Id of the target axis
 * \return 0 normally, -1 if mailbox was full
 */
/*
short ManTransmitRxPdo1Slave()
{

   FillManRxPdo1Slave( &M2S.Items.ActCmd.cmd.PdCommandPdo[0] ) ;
   return 0 ;
}
*/

long unsigned RTDealBlockUpload(long unsigned TxRdy_in)
{
    short unsigned Next ;
    short unsigned nleft , statenext ;
    long unsigned *pNext ,TxRdy;
    short unsigned *pU;
    //short stat ;
    TxRdy = TxRdy_in & 0x7c000000 ; // boxes 27..31 (or 26..30 if counting from zero)

    Next = GetLeadingOne(TxRdy) ;
    //TxRdy &= ~(1L<<Next);

    switch ( SysState.BlockUpload.InBlockUload )
    {
    /*
    case 2:
        // Block SDO service
        stat = SetCanMsg2Hardware(CAN_REGSA,& SysState.BlockUpload.StartBlockMsg ,Next+1) ;
        if ( stat == 0 )
        {
            SysState.BlockUpload.InBlockUload = 3 ;
        }
        TxRdy &= ~(1L<<Next);
        break ;
 */
    case 3:
        statenext = 3;
        SysState.BlockUpload.SeqNo = (SysState.BlockUpload.SeqNo+1)&127  ;
        nleft  = 4 - ( SysState.BlockUpload.BytesTransmitted  & 3 )  ;
        switch ( nleft )
        {
        case 1:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] >> 16 ) +  ( SysState.BlockUpload.pBuf[1] << 16 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] = ( SysState.BlockUpload.pBuf[1] >> 16 ) +  ( SysState.BlockUpload.pBuf[2] << 16 ) ;
            pNext  = SysState.BlockUpload.pBuf + 2 ;
            break ;
        case 2:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] >> 8 ) +  ( SysState.BlockUpload.pBuf[1] << 24 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] = ( SysState.BlockUpload.pBuf[1] >> 8 ) +  ( SysState.BlockUpload.pBuf[2] << 24 ) ;
            pNext  = SysState.BlockUpload.pBuf + 2 ;
            break ;
        case 3:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] & 0xffffff00 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] =  SysState.BlockUpload.pBuf[1];
            pNext  = SysState.BlockUpload.pBuf + 2 ;
            break ;
        default:
            SysState.BlockUpload.InBlockMsg.data[0] = ( SysState.BlockUpload.pBuf[0] << 8 ) ;
            SysState.BlockUpload.InBlockMsg.data[1] = ( SysState.BlockUpload.pBuf[0] >> 24 ) +  ( SysState.BlockUpload.pBuf[1] << 8 ) ;
            pNext  = SysState.BlockUpload.pBuf + 1 ;
            break ;
        }
        pU = (short unsigned *)SysState.BlockUpload.InBlockMsg.data ;
        pU[0] = (pU[0] & 0xff00 ) | SysState.BlockUpload.SeqNo ;
        SysState.BlockUpload.BytesTransmitted += 7 ;
        if  ( SysState.BlockUpload.BytesTransmitted >= SysState.BlockUpload.nBytes  )
        { // Last
            SysState.BlockUpload.BytesTransmitted = SysState.BlockUpload.nBytes ;
            pU[0]  |= 0x80 ;
            statenext = 4 ;
        }
        else
        {
            if ( SysState.BlockUpload.SeqNo == 127 )
            {
                statenext = 4 ;
            }
        }
        SetCanMsg2Hardware(CAN_REGSA,& SysState.BlockUpload.InBlockMsg ,Next+1) ;
        TxRdy &= ~(1L<<Next);
        //if ( stat == 0 )
        {
            SysState.BlockUpload.pBuf = pNext ;
            SysState.BlockUpload.InBlockUload = statenext ;
        }
        break ;
    case 4: // Wait confirm sub-block
        break;
    case 5:
        // TX end block
        SysState.BlockUpload.EndBlockMsg.data[0] = 0xc1 + ((long unsigned)SysState.BlockUpload.crc << 8 ) + ( SysState.BlockUpload.BytesEmptyAtEnd << 2 ) ;

        SetCanMsg2Hardware(CAN_REGSA,& SysState.BlockUpload.EndBlockMsg ,Next+1) ;
        TxRdy &= ~(1L<<Next);
        //if ( stat == 0 )
        {
            SysState.BlockUpload.InBlockUload = 7 ; // Wait end
        }
        break ;
    case 6:
        SysState.BlockUpload.AbortBlockMsg.data[1] = SysState.BlockUpload.emcy ;
        SetCanMsg2Hardware(CAN_REGSA,& SysState.BlockUpload.AbortBlockMsg ,Next+1) ;
        TxRdy &= ~(1L<<Next);
        //if ( stat == 0 )
        {
            SysState.BlockUpload.InBlockUload = 0;
        }
        break ;
    }
    return TxRdy ;
}


/*
 * @brief handle the CAN communication in the real time.
 *
 * The brought messages are first of all classified as:
 * - PDO which should react immediately
 * - Emergency that should be reacting by stopping the machine
 * - Other things are treated at the idle
 */
struct CCanMsg TempMsg ;

struct CCanMsg TempMsgRT ;



void DealBlockDloadRt()
{
    unsigned short byte0 , cnt ;
    volatile unsigned  long*  pfar;
    if ( SysState.BlockDnload.bSendEndOfBlock | SysState.BlockDnload.bEndOfBlockTransmission )
    {
        return ;
    }

    byte0 = TempMsgRT.data[0] & 0xff ;

    if ( SysState.BlockDnload.seqno == 127 )
    {
        SysState.BlockDnload.emcy = Invalid_sequence_number ;
        return  ;
    }

    SysState.BlockDnload.seqno += 1 ;
    if ( SysState.BlockDnload.seqno != (byte0 & 0x7f) )
    {
        SysState.BlockDnload.emcy =  Invalid_sequence_number ;
        return ;
    }
    SysState.BlockDnload.cv[0] =  ((TempMsgRT.data[0] >> 8 )  & 0xff) ;
    SysState.BlockDnload.cv[1] =  ((TempMsgRT.data[0] >> 16 )  & 0xff) ;
    SysState.BlockDnload.cv[2] =  ((TempMsgRT.data[0] >> 24 )  & 0xff) ;
    SysState.BlockDnload.cv[3] =  ((TempMsgRT.data[1] >> 0 )  & 0xff) ;
    SysState.BlockDnload.cv[4] =  ((TempMsgRT.data[1] >> 8 )  & 0xff) ;
    SysState.BlockDnload.cv[5] =  ((TempMsgRT.data[1] >> 16 )  & 0xff) ;
    SysState.BlockDnload.cv[6] =  ((TempMsgRT.data[1] >> 24 )  & 0xff) ;

    for ( cnt = 0 ; cnt < 7 ; cnt++)
    {
        SysState.BlockDnload.blockdatano += 1 ;
        SysState.BlockDnload.nextBlockLong |= (((long unsigned)SysState.BlockDnload.cv[cnt] << (SysState.BlockDnload.inlongcnt++ * 8))) ;
        SysState.BlockDnload.crc = crc_ccitt_byte(SysState.BlockDnload.crc, SysState.BlockDnload.cv[cnt]);
        if ( SysState.BlockDnload.inlongcnt >= 4)
        {
            SysState.BlockDnload.inlongcnt = 0 ;
            if ( SysState.BlockDnload.longcnt >= REC_BUF_LEN)
            {
                SysState.BlockDnload.emcy = Out_of_memory;
                return ;
            }
            pfar = (unsigned long  *) RecorderBuffer ;
            //pfar += ;
            //RecorderBuffer[SysState.BlockDnload.longcnt++]
            pfar[SysState.BlockDnload.longcnt] = SysState.BlockDnload.nextBlockLong ;
            SysState.BlockDnload.longcnt += 1 ;
            SysState.BlockDnload.nextBlockLong = 0 ;
        }

        if (SysState.BlockDnload.blockdatano == SysState.BlockDnload.BlockDloadLen)
        { // received all
            SysState.BlockDnload.bEndOfBlockTransmission = 1  ;
            break  ;
        }
    }

    if ( byte0 & 0x80 )
    {  // block completion
        SysState.BlockDnload.bSendEndOfBlock = 1 ;
        //SysState.BlockDnload.seqno = 0 ;
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( GetLeadingOne, "--opt_level=3" );
#endif

// Find a ready transmitter
// Dat: a 32 bit , read from HW, in which every "1" corresponds to a ready transmitter
short unsigned GetLeadingOne(long unsigned dat)
{
    short unsigned t ;
    if ( dat & 0x80000000 )
    {
        return 31 ;
    }// The norm32 finds the leading "1", which correspods to a valid ready transmitter
    __norm32(dat , (int *) &t );
    return 30 - t ;
}

/*
GetLeadingOne:
; short unsigned GetLeadingOne(long unsigned dat)
; Note: The routine assumes that there is at least one "1" in dat.
;       If dat == 0 , -1 shall be returned
    tbit ah,#15
    bf  GetLeadingOneTrivial,tc
    csb acc
    mov al,#30
    sub al,t
    lretr

GetLeadingOneTrivial:
    mov al,#31
    lretr
*/
#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RtCanHandlerTx, "--opt_level=3" );
#endif

void RtCanHandlerTx(void)
{
    short  n  ;
    short unsigned cobType;
    short unsigned SlaveId ;
    short unsigned next ;
    short unsigned Next ;
    long unsigned TxRdy , TxRdyGlobalAll  ;
    struct CCanTrap * pTrap ;
    struct CCanMsg  *pMsg ;


    // Go over the slave queues - on the basis of free place

    TxRdyGlobalAll = GetAllReadyTransmitters(CAN_REGSA) ;
    TxRdyGlobal = TxRdyGlobalAll & 0x07ff0000  ; // GetReadyTransmitters(CAN_REGSA) ;

    TxRdy = TxRdyGlobalAll & 0x18000000L ; // Omit the 10 transmitters that are reserved for RX PDO
    if ( SysState.BlockUpload.InBlockUload   )
    {
        if ( (M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0 ) && (TxRdyGlobalAll & 0x20000000L) )
        {
            RTDealBlockUpload(0x20000000L);
        }
    }


    // Go over the trap queue. If there are messages that await transmission, put them
    if ( (M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0) && TxRdy)
    {
        // If in block download, service it
        //if ( SysState.BlockUpload.InBlockUload   )
        //{
        //    TxRdy = RTDealBlockUpload(TxRdy) ;
        //}
        n = 0 ;
        while ( ( CanTrapQueue.nPut != n ) && TxRdy )
        {

            pTrap = &CanTrapQueue.Traps[n];
            if ( pTrap->ReuseCnt == 0 &&  (( pTrap->Msg.cobId & 0x7f ) != PD_CAN_ID ) )
            {

                Next = GetLeadingOne(TxRdy) ;

                TxRdy &= ~(1L<<Next);
                SetCanMsg2Hardware(CAN_REGSA,& pTrap->Msg,Next+1);
                //if ( stat < 0 )
                //{
                //    break ; // No place in hardware, have to wait
                //}
                pTrap->TimeSet  = SysTimerStr.SysTimer ; // Update for the time of true send
                if ( pTrap->GetCobId == 0xffff  )
                {
                    pTrap->ReuseCnt = -1 ; // Unconfirmed service - mark trap as used for garbage collection
                }
                else
                {
                    pTrap->ReuseCnt = 1 ;
                }
            }
            n = ( n+1) ; // & (N_CAN_TRAPS-1) ;
        }
    }

    // Transmit messages required by the idle process
    while ( (CanSlaveOutQueue.nGet != CanSlaveOutQueue.nPut ) && TxRdy )
    {
        Next = GetLeadingOne(TxRdy) ;
        TxRdy &= ~(1L<<Next);

        pMsg = & CanSlaveOutQueue.Msg[CanSlaveOutQueue.nGet];
        if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0 )
        {
            SetCanMsg2Hardware(CAN_REGSA,pMsg,Next+1);
        }
        //if ( stat >= 0 )
        {
            CanSlaveOutQueue.nGet = (CanSlaveOutQueue.nGet+1) & ( CanSlaveOutQueue.nQueue -1 ) ;
        }
    }

    // Get received messages
    if ( SysState.CanRxEnable )
    {
        while ( GetCanMsgFromHardwareA(&TempMsgRT) >= 0 )
        {
            // Decide by the COB ID what to do
            cobType = (unsigned short) ( TempMsgRT.cobId >> 7 );
            SlaveId  = (unsigned short)  ( TempMsgRT.cobId & 0x7f ) ;

            // If the slave ID is 124, this is an external CAN master. For this master, we give slave services
            // Real time does nothing with it , just handles the demand to the CAN slave at the idle loop
            if ( SlaveId == LP_CAN_ID )
            {
                if ( (cobType == 12 ) && SysState.BlockUpload.InBlockUload )
                { // Got confirmation for service , just proceed
                    switch (SysState.BlockUpload.InBlockUload)
                    {
                    case 1:
                        if ( (TempMsgRT.data[0] & 0xff) == 0xa3 )
                        {
                            SysState.BlockUpload.InBlockUload = 3 ;
                            SysState.BlockUpload.SeqNo        = 0 ;
                            SysState.BlockUpload.BytesTransmitted  = 0 ;
                            break ;
                        }
                        else
                        {
                            SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
                            SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
                        }
                        break ;
                    case 2:
                        if ( (TempMsgRT.data[0] & 0xff) == 0xa3 )
                        {
                            SysState.BlockUpload.InBlockUload = 3 ;
                            SysState.BlockUpload.SeqNo        = 0 ;
                            break ;
                        }
                        else
                        {
                            SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
                            SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
                        }
                        break ;
                    case 4:
                        if ( (TempMsgRT.data[0] & 0xff) == 0xa2 )
                        {// Got confirmation for service , just proceed
                            if ( SysState.BlockUpload.BytesTransmitted >= SysState.BlockUpload.nBytes )
                            {
                                SysState.BlockUpload.InBlockUload = 5 ; // Go to end of block
                            }
                            else
                            {
                                SysState.BlockUpload.InBlockUload = 2 ; // Tx another sub block
                            }
                            break ;
                        }
                        else
                        {
                            SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
                            SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
                        }
                        break ;
                    case 7:
                        if ( (TempMsgRT.data[0] & 0xff) != 0xa1 )
                        {
                             SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
                             SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
                        }
                        else
                        {
                            SysState.BlockUpload.InBlockUload = 0 ; // Done
                        }
                        break ;
                    default:
                        SysState.BlockUpload.emcy = Client_server_command_specifier_not_valid_or_unknown ;
                        SysState.BlockUpload.InBlockUload = 6 ; // Kill it, misplaced
                        break ;
                    }
                    continue ;
                }


                if ( (cobType == 12 ) && SysState.BlockDnload.InBlockDload )
                { // Got confirmation for service , just proceed
                    DealBlockDloadRt() ;
                    continue ;
                }

                // Not a block message, put it for BG processing
                next = ( CanSlaveInQueue.nPut + 1 ) & (CanSlaveInQueue.nQueue-1) ;
                if ( next != CanSlaveInQueue.nGet )
                {
                    CanSlaveInQueue.Msg[CanSlaveInQueue.nPut] = TempMsgRT ;
                    CanSlaveInQueue.nPut = next ;
                }
                continue ;
            }

            // Messages for the manipulator part

            if ( SlaveId == ID_MANIPULATOR )
            {
                next = ( CanSlaveManipQueue.nPut + 1 ) & (CanSlaveManipQueue.nQueue-1) ;
                if ( next != CanSlaveManipQueue.nGet )
                {
                    CanSlaveManipQueue.Msg[CanSlaveManipQueue.nPut] = TempMsgRT ;
                    CanSlaveManipQueue.nPut = next ;
                }
                continue ;
            }

            // end manipulator part

            TempMsgRT.LogicId = GetLogicalId( TempMsgRT.cobId & 0x7f );
            if ( cobType == 0xb )
            { // SDO
                PutCan4DelayProcess(&TempMsgRT) ;
                continue ;
           }

             if (TempMsgRT.LogicId < N_CAN_SLAVES )
            {

                switch ( cobType )
                {
                case 0x1 : // Emergency
                    ProcessEmergency(  &TempMsgRT ) ;
                    break ;
                case 0xb : // SDO
                    PutCan4DelayProcess(&TempMsgRT) ;
                    break ;
                case 0xe : // Boot-up
                    PutCan4DelayProcess(&TempMsgRT) ;
                    break ;
                default  :
                    Next = ( CanSrvInMsgQueue.nPut + 1 ) & (CanSrvInMsgQueue.nQueue-1) ;
                    if ( Next != CanSrvInMsgQueue.nGet )
                    {
                        CanSrvInMsgQueue.Msg[CanSrvInMsgQueue.nPut] = TempMsgRT ;
                        CanSrvInMsgQueue.nPut = Next ;
                    }
                    break ;
                }
            }
        }
    }

    if ( SysState.BlockServoComm == 0  )
    {
        if ( SrvTransmitRxPdoSlaveRequest )
        {
            SrvTransmitRxPdoSlaveRequest = 0 ;
            PdoTxErr = (( TxRdyGlobalAll & 0x0ff0000 ) ==  0x0ff0000 ) ? 0 : 1 ;

            SetCanMsg2Hardware (CAN_REGSA,&SysState.CanAxis[LOGICAL_RW].Pdo1RxMsg,17);
            SetCanMsg2Hardware (CAN_REGSA,&SysState.CanAxis[LOGICAL_LW].Pdo1RxMsg,18);
            SetCanMsg2Hardware (CAN_REGSA,&SysState.CanAxis[LOGICAL_RSTEER].Pdo1RxMsg,19);
            SetCanMsg2Hardware (CAN_REGSA,&SysState.CanAxis[LOGICAL_LSTEER].Pdo1RxMsg,20);
            SetCanMsg2Hardware (CAN_REGSA,&SysState.CanAxis[LOGICAL_NECK].Pdo1RxMsg,21);
            SetCanMsg2Hardware (CAN_REGSA,&SyncMsg, 22 ); // Sync will emit last
        }

//        if ( SrvHeartBeatRequest )
//        {
//            SrvHeartBeatRequest = 0 ;
//            SetCanMsg2Hardware(CAN_REGSA,& HeartBeat.Msg, 31 );
//        }
    }
}






#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( RtCanHandler, "--opt_level=3" );
#endif




void RtCanHandler(void)
{
    short PdoRxErr ;
    short unsigned cobType;
    short unsigned LogicId ;
    float NeckSpeed  ;


    GetCanState(CAN_REGSA, & CanStatA) ;

    // Get received messages
    if ( SysState.CanRxEnable )
    {
        while ( CanSrvInMsgQueue.nPut != CanSrvInMsgQueue.nGet )
        {
            TempMsg = CanSrvInMsgQueue.Msg[CanSrvInMsgQueue.nGet] ;
            CanSrvInMsgQueue.nGet = ( CanSrvInMsgQueue.nGet + 1 ) & ( CanSrvInMsgQueue.nQueue-1) ;
            // Decide by the COB ID what to do

            cobType = (unsigned short) ( TempMsg.cobId >> 7 );
            //SlaveId  = (unsigned short)  ( TempMsg.cobId & 0x7f ) ;

            LogicId = GetLogicalId( TempMsg.cobId & 0x7f );

            if (LogicId < N_CAN_SLAVES )
            {

                switch ( cobType )
                {
                case 0x1 : // Emergency
                    ProcessEmergency(  &TempMsg ) ;
                    break ;
                case 0x3 : // PDO1
                    Pdo1TxScoreBoard = Pdo1TxScoreBoard | ( 1UL << LogicId) ;
                    ProcessTxPdo1 ( LogicId , &TempMsg ) ;
                    break ;
                case 0x5 : // PDO2
                    Pdo1TxScoreBoard = Pdo1TxScoreBoard | ( 1UL << ( LogicId + N_CAN_SLAVES ) ) ;
                    ProcessTxPdo2( LogicId , &TempMsg ) ;
                    break ;
                case 0x7 : // PDO3
                    Pdo1TxScoreBoard = Pdo1TxScoreBoard | ( 1UL << ( LogicId + (2 * N_CAN_SLAVES) ) ) ;
                    ProcessTxPdo3( LogicId , &TempMsg ) ;
                    break ;
                case 0x9 : // PDO4
                    Pdo1TxScoreBoard = Pdo1TxScoreBoard | ( 1UL << ( LogicId + (3 * N_CAN_SLAVES) ) ) ;
                    ProcessTxPdo4( LogicId , &TempMsg ) ;
                    break ;
                 default  :
                    break ;
                }
            }
        }
    }

    // Treat wheel un-balance
    SysState.WheelRawTorqueDiff = (SysState.CanAxis[LOGICAL_RW].BH.Torque - SysState.CanAxis[LOGICAL_LW].BH.Torque )  ;
    SysState.WheelFiltAbsTorqueDiff = SysState.WheelFiltAbsTorqueDiff + ( fabsf(SysState.WheelRawTorqueDiff)  - SysState.WheelFiltAbsTorqueDiff ) * Constraint.ZforTimeAtBigTorqueDiff ;

    SysState.ProcCtr = SysState.ProcCtr + 1 ;
    if ( SysState.ProcCtr >= SysState.ProcCtrMax )
    {
        SysState.ProcCtr     = 0 ;
        PdoRxErr = 0 ;
        Pdo1TxScoreBoardSample = Pdo1TxScoreBoard  ;
        if ( SysState.Operational >= 1  )
        {   // Sync (every processing interval)
            //PdoRxErr = (( Pdo1TxScoreBoard & ExpectedPdo1TxScoreBoard ) == ExpectedPdo1TxScoreBoard ) ? 0 : 1 ; // Note that here we use the CBIT struct as positive measure for acceptance

            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_RW].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_RW].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_RW].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_RW].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_RW].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis1 ;
                PdoRxErr = 1 ;
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_RW].BH.ComCbit   ) ;
            }
            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_LW].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_LW].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_LW].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_LW].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_LW].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis2 ;
                PdoRxErr = 1 ;
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_LW].BH.ComCbit  );
            }

            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_RSTEER].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_RSTEER].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_RSTEER].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_RSTEER].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_RSTEER].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis3 ;
                PdoRxErr = 1 ;
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_RSTEER].BH.ComCbit  );
                SysState.CanAxis[LOGICAL_RSTEER].OuterPos = SysState.CanAxis[LOGICAL_RSTEER].BH.UserPos;
            }
            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_LSTEER].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_LSTEER].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_LSTEER].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_LSTEER].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_LSTEER].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis4 ;
                PdoRxErr = 1 ;
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_LSTEER].BH.ComCbit  );
                SysState.CanAxis[LOGICAL_LSTEER].OuterPos = SysState.CanAxis[LOGICAL_LSTEER].BH.UserPos;
            }
            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_NECK].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_NECK].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_NECK].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_NECK].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_NECK].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis5 ;
                PdoRxErr = 1 ;
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_NECK].BH.ComCbit  );
                SysState.CanAxis[LOGICAL_NECK].OuterPos = SysState.CanAxis[LOGICAL_NECK].BH.UserPos;
                LNeckOuterPos = SysState.CanAxis[LOGICAL_NECK].BH.PotMean + SysState.CanAxis[LOGICAL_NECK].BH.PotDifference * 0.5f;
                RNeckOuterPos = SysState.CanAxis[LOGICAL_NECK].BH.PotMean - SysState.CanAxis[LOGICAL_NECK].BH.PotDifference * 0.5f ;
                //SysState.NeckDiff = SysState.CanAxis[LOGICAL_NECK].BH.PotDifference ;
                NeckSpeed = SysState.CanAxis[LOGICAL_NECK].BH.UserSpeed;

                SysState.NeckSpeedFilt = SysState.NeckSpeedFilt + TS_FAC * ControlPars.NeckSpeedFiltGain * ( NeckSpeed - SysState.NeckSpeedFilt ) ;
            }

            CbitCounterUpdate ( PdoRxErr , &RxPdoBitStr );
            SysState.Status.FaultSummary = IsAtFault( &SysState.CanAxis[0]) + (IsAtFault(&SysState.CanAxis[1]) << 1 )
                    + (IsAtFault( &SysState.CanAxis[2]) << 2 )
                        + (IsAtFault(&SysState.CanAxis[3]) << 3 ) +  ( IsAtFault(&SysState.CanAxis[4]) << 4 )  ;
            Pdo1TxScoreBoard = 0 ;

            SysState.Status.ComFaultSummary = SysState.CanAxis[0].BH.ComCbit.ErrorCount
                    + (SysState.CanAxis[1].BH.ComCbit.ErrorCount << 4)
                    + (SysState.CanAxis[2].BH.ComCbit.ErrorCount << 8)
                    + (SysState.CanAxis[3].BH.ComCbit.ErrorCount << 12)
                    + ((unsigned long)SysState.CanAxis[4].BH.ComCbit.ErrorCount << 16);

            // Odometry and controller: Only if the state is operational
            if ( (SysState.WakeupState == E_CAN_WAKEUP_OPERATIONAL) || (SysState.WakeupState ==E_CAN_WAKEUP_PRE_OPERATIONAL))
            {
                RTOdometry() ; // Odometry
            }

            // Take switch statistics
            SysState.SwitchStatus.us[0] =
                    SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDetectMarker & 1 +
                    ((SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDetectMarker & 1) << 1) +
                    ((SysState.CanAxis[LOGICAL_RW].InductiveSensor & 1) << 2 )  +
                    ((SysState.CanAxis[LOGICAL_LW].InductiveSensor & 2) << 3 )  +
                    ((SysState.PoleRun.TargetArmDone & 7 ) <<4  ) ;
            SysState.SwitchStatus.us[1] =
                    ((SysState.CanAxis[LOGICAL_RW].BH.LimitSw .ValidCounter & 0xf) << 0)  +
                    ((SysState.CanAxis[LOGICAL_RW].BH.LimitSw .SwitchDetectValidUsed & 0xf) << 4) +
                    ((SysState.CanAxis[LOGICAL_LW].BH.LimitSw .ValidCounter & 0xf) << 8 ) +
                    ((SysState.CanAxis[LOGICAL_LW].BH.LimitSw .SwitchDetectValidUsed & 0xf) << 12 ) ;



            //ProcPositionReports() ;
            if ( PdoRxErr == 0 )
            {

                MotionController ( ) ;
                // CheckMotionType() ; // Check the type of the motion - straight line or maneuvering
            }

            PdoTxErr = 0 ;
            if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan  == 0 )
            {
                PreTransmitRxPdo1Slave(LOGICAL_RW) ;
                PreTransmitRxPdo1Slave(LOGICAL_LW) ;
                PreTransmitRxPdo1Slave(LOGICAL_RSTEER) ;
                PreTransmitRxPdo1Slave(LOGICAL_LSTEER) ;
                PreTransmitRxPdo1Slave(LOGICAL_NECK) ;

                //TransmitRxPdo2Slave(LOGICAL_RSTEER) ;
                //TransmitRxPdo2Slave(LOGICAL_LSTEER) ;
                //TransmitRxPdo2Slave(LOGICAL_NECK) ;

                SrvTransmitRxPdoSlaveRequest = 1 ;

                CbitCounterUpdate ( PdoTxErr , &TxPdoBitStr );
/*
                if ( HeartBeat.HeartBeatInhibit == 0 )
                {
                    // Heart beats
                    HeartBeat.Ctr = HeartBeat.Ctr + 1 ;
                    if ( HeartBeat.Ctr >= HeartBeat.CtrMax )
                    {
                        HeartBeat.Ctr = 0 ;
                        SrvHeartBeatRequest  = 1 ;
                    }
                }
*/
            }
        } // Operational
    } // ProcCtr
}



/*
 * \brief Test if an SDO is still trapped
 * \returns:
 * trap count if trapped, otherwise -1
 */
short TestIfTrapped(short unsigned CobId)
{
    short unsigned cnt  ;
    for ( cnt = 0 ; cnt < CanTrapQueue.nPut ; cnt++ )
    {
        if (CobId  == CanTrapQueue.Traps[cnt].GetCobId )
        {
            return cnt ;
        }
    }
    return -1 ;
}

/**
 * @brief Send a new trap for transmission
 *
 * @param  pTrap-> Trap to send
 * @param  FreeId: If >= 0 , it marks we used an allocated trap that need be freed now
 *          set negative to avoid freeing
 * @return -1 on error , 0 for success
 */
short SendTrap2Queue (struct CCanTrap * pTrap , short FreeId , short unsigned *GetCobId)
{
    short unsigned sr ;
    short unsigned NextPut ;
    short cnt ;
    //struct CCanTrap * pTrapTarget ;


    //sr = BlockInts() ;
    NextPut = CanTrapQueue.nPut + 1;
    if ( NextPut >= N_CAN_TRAPS )
    {
        LogException (OWN_EXP_ID , EXP_SAFE_FATAL , exp_trap_overflow) ;
        //RestoreInts(sr) ;
        return -1 ;
    }

    // Go over all the traps, if there is one like us, close it
    cnt = TestIfTrapped( pTrap->GetCobId) ;
    if ( cnt >= 0 )
    {
        sr = BlockInts() ;
        CanTrapQueue.Traps[cnt].GetCobId = 0xffff ;
        CanTrapQueue.Traps[cnt].ReuseCnt = -1 ; // For garbage cleaner
        RestoreInts(sr ) ;
    }

    // We have to set something; otherwise if interrupt fail to arrive before
    // cBit discards timed out messages, our poor message shall be lost ...
    if ( pTrap->TimeOut < 20000 )
    {
        pTrap->TimeOut = 20000 ;
    }


    sr = BlockInts() ;
    * GetCobId = pTrap->GetCobId ;
    pTrap->TimeSet = SysTimerStr.SysTimer ;
    CanTrapQueue.Traps[CanTrapQueue.nPut] = *pTrap ;
    CanTrapQueue.nPut = NextPut;
    RestoreInts(sr ) ;

    /*
    else
    {
        if ( ptr->TimeOut > 200000 )
        {
            pTrapTarget->TimeOut = 200000     ;
        }
    }
    */
    if ( FreeId >= 0 && FreeId < N_CAN_TRAPS_RESERVOIR)
    {
        CanTrapQueueReservoir.ScoreBoard[FreeId] = 0;
    }
    return 0 ;
}




/**
 * @brief Allocate a trap and clear it
 *
 * Get a free trap for the system reservoir, and clean it for use
 * @param   Id : Id of allocated buffer
 *
 * @return  Pointer to trap in use.
 *          All the trap data is zeroed but the self reference pointer "me"
 *          whicj is correctly set
 */
struct CCanTrap * AllocateTrap (short *Id)
{
    struct CCanTrap *pTrap ;
    short cnt ;
    pTrap = (struct CCanTrap *) NULL ;
    *Id    = -1   ; // Until allocated, nothing to free
    for ( cnt = 0 ; cnt < N_CAN_TRAPS_RESERVOIR ; cnt++ )
    {
        if ( CanTrapQueueReservoir.ScoreBoard[cnt] == 0  )
        {
            CanTrapQueueReservoir.ScoreBoard[cnt] = 1 ;
            pTrap = &CanTrapQueueReservoir.Traps[cnt]  ;
            ClearMemRpt ( (short unsigned *)pTrap , sizeof(struct CCanTrap )) ;
            *Id = cnt ;     // Trap handle so it can be later freed
            break;
        }
    }
    return pTrap ; // Will return NULL if nothing at all is found
}


/**
 * @brief SDO Time out exception handler  abort
 */
short CanExceptionSdoFail( struct CCanTrap * me )
{
    struct CSdo *pSdo ;
    pSdo = (struct CSdo *) me->ptr ;
    if ( pSdo != 0 )
    {
        pSdo->Status = -1 ;
    }
    LogException ( OWN_EXP_ID , EXP_WARN , exp_sdo_timeout ) ;
    if ( GlobalDebug )
    {
        __asm( " ESTOP0") ;
    }
    return 0 ;
}




/**
 * @brief: Send a non-confirmed NMT
 *
 * @param id    : ID of the addressed slave
 * @param code  : The NMT function code
 */
short SendNMT( short unsigned id , short unsigned code)
{
    short TrapId ;
    short unsigned GetCobId ;
    struct CCanTrap *ptr ;
    ptr = AllocateTrap ( & TrapId ) ;
    if (ptr == (struct CCanTrap *) NULL )
    {
        return -1 ;
    }
    ptr->GetCobId = 0xffff ;
    ptr->Msg.cobId = 0 ;
    ptr->Msg.dLen = 2 ;
    ptr->Msg.data[0] = code + 256 * id ;

    ptr->ToutHandler = CanExceptionNothing ;
    ptr->TrapHandler = CanExceptionNothing ;


    SendTrap2Queue (ptr , TrapId , & GetCobId ) ;
    return 0;
}



/**
 *  \brief Get logical ID based on CAN ID
 *
 *  \return Logical ID or 0xffff if not found
 */
short unsigned GetLogicalId (short unsigned CanId )
{
    short unsigned cnt ;
    for ( cnt = 0 ; cnt <= N_CAN_SLAVES ; cnt++ )
    {
        if ( SysState.CanAxis[cnt].CanId == CanId )
        {
            return cnt ;
        }
    }
    return UNSIGNED_MINUS1_S ;
}

/**
 * @brief Acknowledge handler for the arrival of expedited SDO
 */
short CanAcnowledgeSdoDloadExpedit( struct CCanTrap * me )
{
    short unsigned scs  , id ; // , muxok ;
    struct CSdo * pSdo ;
    struct CCanMsg * pMsg ;

    id =  GetLogicalId( me->GetCobId & 0x7f )  ;
    if ( id > N_CAN_SLAVES)
    {
        LogException ( id , EXP_SAFE_FATAL , exp_no_such_can_slave ) ;
        return -1 ;
    }

    // Test what we got at hand
    pSdo = (struct CSdo *) me->ptr ;
    pMsg = & me->Msg ;
    scs = me->Msg.data[0] & 0xff ;
    if ( (((pMsg->data[0] >> 8) & 0xffff ) != pSdo->Index ) ||  (((pMsg->data[0] >> 24) & 0xff ) )!=pSdo->SubIndex )
    {
        return -1  ; // Nothing bad but this mail is not for us
    }
    //else
    //{
    //  muxok = 0 ;
    //}
    if (pMsg->dLen != 8 || ( (scs >> 5) != 3) ) // || (muxok == 0))
    {
        if (  (scs >> 5) == 4 ) // &&  muxok )
        { // Got SDO abort
            pSdo->AbortCode = pMsg->data[1] ;
            LogException ( id , EXP_SAFE_FATAL , pSdo->AbortCode ) ;
        }
        else
        {
            LogException ( id , EXP_SAFE_FATAL , exp_sdo_bad_multiplexor ) ;
        }
        pSdo->Status = -1 ;
        return -1 ; //aborted
    }

    pSdo->Status = 1 ; // Success in reception
    return 0 ;
}




/**
 * @brief Acknowledge handler for the arrival of expedited SDO
 */
short CanAcnowledgeSdoUloadExpedit( struct CCanTrap * me )
{
    short unsigned slaveadd , id , scs  , muxok , n ;
    long unsigned kuku ;
    struct CSdo * pSdo ;
    struct CCanMsg * pMsg ;


    slaveadd = me->GetCobId & 0x7f ;
    if ( (slaveadd == ID_INTFC_RIGHT ) || (slaveadd == ID_INTFC_LEFT )  )
    {
        id = N_CAN_SLAVES + 1 ;
    }
    else
    {
        id = GetLogicalId( slaveadd ) ;
        if ( id > N_CAN_SLAVES )
        {
            LogException ( OWN_EXP_ID , EXP_SAFE_FATAL , exp_unexpected_sdo_id ) ;
            return -1 ;
        }
    }


    // Test what we got at hand
    pSdo = (struct CSdo *) me->ptr ;
    pMsg = & me->Msg ;
    scs = me->Msg.data[0] & 0xff ;
    if ( (((pMsg->data[0] >> 8) & 0xffff ) == pSdo->Index ) &&  (((pMsg->data[0] >> 24) & 0xff ) )==pSdo->SubIndex )
    {
        muxok = 1 ;
    }
    else
    {
        muxok = 0 ;
    }
    if (pMsg->dLen != 8 || ( (scs >> 5) != 2) || (muxok == 0))
    {
        if ( ( (scs >> 5) == 4 ) &&  muxok )
        {
            pSdo->AbortCode = pMsg->data[1] ;
            kuku = ( (pSdo->AbortCode & 0xffff ) << 16 ) |
                    ((pSdo->AbortCode>>16) & 0xffff ) ;

            LogException ( id , EXP_SAFE_FATAL , kuku  ) ;
        }
        else
        {
            LogException ( id , EXP_WARN , exp_sdo_bad_multiplexor ) ;
        }
    }

    if ( scs & 0x2 )
    { // Expedit
        if ( scs & 0x1  )
        {
            n = ((scs >> 2) & 3 ) ;
            switch ( n)
            {
            case 2:
                pSdo->Lpayload = pMsg->data[1]  & 0xffff ;
                break ;
            case 3:
                pSdo->Lpayload = pMsg->data[1]  & 0xff ;
                break ;
            default:
                pSdo->Lpayload = pMsg->data[1]  ;
                break ;
            }
            pSdo->ByteCnt = 4 - n ;
        }
    }

    pSdo->Status = 1 ;

    return 0 ;
}

/**
 * @brief: Send data payload as expedited SDO
 */
short SendSdoExpeditDloadLong( struct CSdo * pSdo )
{
    short TrapId ;
    short unsigned n ;
    struct CCanTrap *ptr ;
    short unsigned id ;
    id = ( short unsigned) pSdo->SlaveID ;
    pSdo->Status = 0 ; // Mark the SDO in the initial stage
    pSdo->AbortCode = 0 ;
    ptr = AllocateTrap ( & TrapId ) ;

    if (ptr == (struct CCanTrap *) NULL )
    {
        return -1 ;
    }

    ptr->Msg.cobId = 0x600 + id ;
    ptr->GetCobId = 0x580 + id ;
    ptr->Msg.dLen = 8 ;
    switch ( pSdo->DataType)
    {
    case 5:
        n = 3 ;
        break ;
    case 6:
        n = 2 ;
        break ;
    default:
        n = 0 ;
        break ;
    }
    ptr->Msg.data[0] = 0x23 + ( n << 2 ) + ((long unsigned) pSdo->Index << 8) + (( (long unsigned)pSdo->SubIndex & 0xff) << 24 )  ;
    ptr->Msg.data[1] = pSdo->Lpayload ;

    if ( pSdo->Index == 0x2301 )
    {// Burning a sector takes a fucking lot of time
        if ( pSdo->SubIndex == 131 )
        {
            ptr->TimeOut = 200000 ; // 200msec
        }
        else
        {
            ptr->TimeOut = 30000 ; // 30msec
        }
    }
    else
    {
        ptr->TimeOut = (long )( CommPars.StandardSdoWaitToutSec * 1e6f )  ; // 20msec
    }
    ptr->arg = exp_sdo_timeout ;
    ptr->ptr = (long unsigned *) pSdo ;
    ptr->ToutHandler = CanExceptionSdoFail  ;
    ptr->TrapHandler = CanAcnowledgeSdoDloadExpedit ;
    SendTrap2Queue (ptr , TrapId , & pSdo->TrapCobId) ;
    return 0;
}

/**
 * @brief: Get data payload as expedited SDO
 */
short SendSdoExpeditUloadLong(  struct CSdo * pSdo)
{
    short unsigned id  ;
    short TrapId ;
    struct CCanTrap *ptr ;
    id = (short unsigned ) pSdo->SlaveID ;
    pSdo->AbortCode = 0 ;
    ptr = AllocateTrap ( & TrapId ) ;

    if (ptr == (struct CCanTrap *) NULL )
    {
        return -1 ;
    }

    //ptr->Msg.cobId = 0x580 + id ;
    //ptr->GetCobId = 0x600 + id ;

    ptr->Msg.cobId = 0x600 + id ;
    ptr->GetCobId = 0x580 + id ;

    ptr->Msg.dLen = 8 ;
    ptr->Msg.data[0] = 0x40 + ((long unsigned)pSdo->Index << 8) + (( (long unsigned)pSdo->SubIndex & 0xff) << 24 )  ;
    ptr->Msg.data[1] = 0  ;
//  ptr->TimeOut = 10000 ; // 10msec
    if ( pSdo->Index == 0x2301 )
    {
        ptr->TimeOut = 20000 ; // 20msec
    }
    else
    {
        ptr->TimeOut = (long )( CommPars.StandardSdoWaitToutSec * 1e6f )  ; // 20msec
    }

    ptr->arg = exp_sdo_timeout ;
    ptr->ptr = (long unsigned *) pSdo ;
    ptr->ToutHandler = CanExceptionSdoFail  ;
    ptr->TrapHandler = CanAcnowledgeSdoUloadExpedit ;
    SendTrap2Queue (ptr , TrapId , & pSdo->TrapCobId ) ;

    return 0;
}





/*
 * @brief handle the CAN communication of the PD in the real time.
 *
 * The brought messages are first of all classified as:
 * - PDO which should react immediately
 * - Emergency that should be reacting by stopping the machine
 * - Other things are treated at the idle
 */
//long unsigned   TxRdy1 ;


#ifndef MANIP2
#define PD_PDO_FULL_MASK 0x3
#else
#define PD_PDO_FULL_MASK 0xf
#endif


long unsigned UnexpectedID ;
long unsigned PdoData[2] ;

void PDCanHandler(void)
{
    //short stat  ;
    //short unsigned * pUs ;
    //long unsigned TxRdy   ;
    //short unsigned PdoRxErr  ;
    //short unsigned cw ;

    // Go over the slave queues - on the basis of free place
    if ( S2M.Items.DataFromPd.item.DataFromPdCtr != SysState.DataFromPdCntr )
    {
        SysState.DataFromPdCntr = S2M.Items.DataFromPd.item.DataFromPdCtr ;
        PdProcessTxPdo1( &S2M.Items.DataFromPd.item.DataFromPd[0] ) ;
        PdoData[0] = S2M.Items.DataFromPd.item.DataFromPd[2];
        PdoData[1] = S2M.Items.DataFromPd.item.DataFromPd[3];
        PdProcessTxPdo2( &PdoData[0] ) ;
        PdoManTxScoreBoard = 3 ;
    }
}



/**
 * @brief Time out exception handler   abort
 */
short CanExceptionKill( struct CCanTrap * me )
{
    LogException ( me->GetCobId & 0x7f , EXP_SAFE_FATAL , exp_bootout_timeout ) ;
    return 0 ;
}

/**
 * @brief Time out exception handler   abort
 */
short CanExceptionNothing( struct CCanTrap * me )
{
    (void) me ;
    return 0 ;
}




