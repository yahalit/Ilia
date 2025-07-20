#include "StructDef2.h"







#define CAN_REGSA ((volatile unsigned long *) 0x48000)
#define CAN_REGSB ((volatile unsigned long *) 0x4A000)



/*
 * \brief Transmit control word and speed/position command to axis
 *
 * \param The logic Id of the target axis
 * \return 0 normally, -1 if mailbox was full
 */

// struct CCanMsg PdPdo1RxMsg ;

short PSTransmitRxPdo1Slave(void)
{
    volatile struct CCanMsg * pMsg ;
    short unsigned * uPtr ;
    long unsigned ldata[2] ;

    //short unsigned cw ;

    struct CPdCmd2 *pPdCmd2 ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;


    ldata[0] = M2S.Items.ActCmd.cmd.PdCommandPdo[0] ;
    ldata[1] = M2S.Items.ActCmd.cmd.PdCommandPdo[1] ;

    pMsg = & SysState.CanAxis[N_CAN_SLAVES].Pdo1RxMsg ;
    uPtr =  (short unsigned *)  ( & pMsg->data[0]) ;

    //cw = *  ( ( short unsigned *) &SysState.Package.ManControlWord ) ;
    //cw = ( cw & (~SysState.Status.PdControlWordMask)) | ( SysState.Status.PdControlWordMask & SysState.Status.PdControlWordSubs ) ;
    //uPtr[0] = *  ( ( short unsigned *) &DbgPDControlWord ) ;
    uPtr[0] = *  ( ( short unsigned *) &ldata[0] ) ;


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

    ldata[1] = ldata[1] & 0xffffff3c +  ((* ((short unsigned *) &SysState.PdCmd2)) & 0xc3) ;

    /*
    int unsigned ChakalakaOn : 1 ; // Chakalaka
    int unsigned FanOn : 1 ;
    int unsigned Power24V   : 1 ;
    int unsigned Power12V   : 1 ;
    int unsigned CommRestart : 1 ; // Restart manipulator communication
    int unsigned PowerEnter : 1 ; // <Enter> for Power commands
    int unsigned FrontCamLightOn : 1 ; // Front camera light
    int unsigned RearCamLightOn : 1 ; // Rear camera light



    if ( SysState.Package.ManipulatorAxesReboot )
    {
        pMsg->data[1] = 0x56780000 + * ((short unsigned *) &SysState.PdCmd2) ;
        SysState.Package.ManipulatorAxesReboot -= 1 ; // Count several consecutive transmissions for reliability
        M2S.Items.ActCmd.cmd.ResetMotors = 1 ;
    }
    else
    {
        M2S.Items.ActCmd.cmd.ResetMotors = 0 ;
        pMsg->data[1] = 0x12340000 + * ((short unsigned *) &SysState.PdCmd2) ;
    }
    */
    pMsg->data[1] = ldata[1] ;

    bIssuePdo2PD = bEnableSync  ;

    return 0 ;
}


void  inline  BuildEndEffectorActuation(void)
{
    short unsigned cw ;
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



//    M2S.Items.ActCmd.cmd.PumpsOn = DbgPDControlWord.PumpOn ;
//    M2S.Items.ActCmd.cmd.ModeWord.bit.LaserPsOn = SysState.Package.PDControlWord.LaserPsOn ; // Inform CPU2 that laser is on
//Should be
    S2M.Items.ActStatus.stat.PumpCmd = DbgPDControlWord.PumpOn ;
    S2M.Items.ActStatus.stat.LaserCmd = SysState.Package.PDControlWord.LaserPsOn ;



    if ( SysState.EEF.bUse)
    {
        if ( DbgPDControlWord.PumpOn )
        {
            if ( SysState.EEF.PumpStaggerCnt < 35 )
            {
                cw = 1 ;
                SysState.EEF.PumpStaggerCnt += 1 ;
            }
            else
            {
                cw = 3 ;
            }
        }
        else
        {
            SysState.EEF.PumpStaggerCnt = 0 ;
        }

        SysState.EEF.ControlWord = cw + ( DbgPDControlWord.LaserPsOn ? 0x10 : 0) ;
        OutEEFMsg.data[0] = SysState.EEF.ControlWord   ;
        SysState.EEF.bIssueMsg2EEF = bEnableSync ;
    }
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

/**
 * @brief Process incoming PDO1 from PD
 *
 */

short PdProcessTxPdo1R3(struct CCanMsg *pMsg)
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
    u.ul = pMsg->data[0] ;
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
    u.us[1] = (SysState.Buck12Control.Exception & 7 ) | ((SysState.Buck18Control.Exception & 7 )<<3)
        | ((SysState.Buck24Control.Exception & 7 )<<6)  | ((SysState.Sw54Control.Exception & 7 )<<9)
        | (( SysState.Buck5Control.LoadSw  & 1 ) << 12 )
        | (( SysState.Buck18Control.LoadSw & 1 ) << 13 ) ;
    */

    SysState.Package.ManCBit1.MushroomDepressed = pdb.bit.MushroomDepressed ;


    SysState.Package.ManOnState.PdoAcceptMask |= 1 ;
    SysState.PdRawData[0] = pMsg->data[0];
    SysState.PdRawData[1] = pMsg->data[1];

    S2M.Items.DataFromPd.item.DataFromPd[0] = SysState.PdRawData[0] ;
    S2M.Items.DataFromPd.item.DataFromPd[1] = SysState.PdRawData[1] ;
    S2M.Items.DataFromPd.item.ScoreBoard |= 1 ;

    return 0 ;
}




short PdProcessTxPdo1R2p5(struct CCanMsg *pMsg)
{
    short unsigned * uPtr ;
    struct CPdBitGen Bit ;
    struct CPdCBit * pBit1 ;
    struct CPdCBit3 * pBit3 ;
    uPtr = (unsigned short *) & pMsg->data[0] ;

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

    pBit1 = (struct CPdCBit *) & pMsg->data[0] ;
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

    SysState.Package.ManOnState.PdoAcceptMask |= 1 ;
    SysState.PdRawData[0] = pMsg->data[0];
    SysState.PdRawData[1] = pMsg->data[1];

    S2M.Items.DataFromPd.item.DataFromPd[0] = SysState.PdRawData[0] ;
    S2M.Items.DataFromPd.item.DataFromPd[1] = SysState.PdRawData[1] ;
    S2M.Items.DataFromPd.item.ScoreBoard |= 1 ;

    return 0 ;
}

short PdProcessTxPdo1(struct CCanMsg *pMsg)
{
    if ( S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN3 )
    {
        PdProcessTxPdo1R3(pMsg) ;
    }
    else
    {
        PdProcessTxPdo1R2p5(pMsg) ;
    }
    return 0 ;
}

/**
 * @brief Process incoming PDO2 from PD
 *
 */

short PdProcessTxPdo2G2p5(struct CCanMsg *pMsg)
{
    short unsigned * uPtr ;
#ifndef MANIP2
    uPtr = (unsigned short *) & pMsg->data[0] ;
    SysState.Package.ManState = uPtr[0] & 0xff ;
    SysState.Package.ManStopErr = ( uPtr[0] & 0xff00 ) >> 8 ;
#else
    uPtr = (unsigned short *) & pMsg->data[0] ;
#endif

    SysState.Status.V24 = ( uPtr[1] & 0xff ) * 0.2f ;
    SysState.Status.V12 = ( ( uPtr[1] >> 8 ) & 0xff ) * 0.1f ;
    SysState.Status.V36 = uPtr[3] * 0.01f ;
    SysState.Status.V54 = uPtr[2] * 0.01f ;
    SysState.Package.ManOnState.PdoAcceptMask |= 2 ;

    SysState.PdRawData[2] = pMsg->data[0];
    SysState.PdRawData[3] = pMsg->data[1];

    S2M.Items.DataFromPd.item.DataFromPd[2] = SysState.PdRawData[2] ;
    S2M.Items.DataFromPd.item.DataFromPd[3] = SysState.PdRawData[3] ;
    S2M.Items.DataFromPd.item.ScoreBoard |= 2 ;

    if ( S2M.Items.DataFromPd.item.ScoreBoard == 3 )
    {
        S2M.Items.DataFromPd.item.ScoreBoard = 0 ;
        S2M.Items.DataFromPd.item.DataFromPdCtr += 1 ;
    }

    return 0 ;
}


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


short PdProcessTxPdo2G3(struct CCanMsg *pMsg)
{
    short unsigned Pdo2Cycle ;
    float * fPtr ;
    //short unsigned * uPtr ;

    union
    {
        float f ;
        long unsigned ul ;
    } u ;

    Pdo2Cycle = * ((short unsigned *) &pMsg->data[0] ) ;
    Pdo2Cycle &= 0xf ;

    u.ul = pMsg->data[0] & 0xfffffff0 ;
    fPtr = (float*) pPdoReportData[Pdo2Cycle*2] ;
    *fPtr = u.f ;

    u.ul = pMsg->data[1] ;
    fPtr = (float*) pPdoReportData[Pdo2Cycle*2+1] ;
    *fPtr = u.f ;

/*
    uPtr = (short unsigned *) & SysState.PdRawData[2]  ;
    uPtr[2] = 0 ;
    uPtr[1] =  ((short unsigned)( __fmax(SysState.Status.V24,0) * 5.0f ) & 0xff) +
            (((short unsigned)( __fmax(SysState.Status.V12,0) * 10.0f ) & 0xff) << 8 ) ;
    uPtr[3] = 0 ;
    uPtr[2] = (short unsigned)( SysState.Status.V54 * 100.0 ) ;
*/
    SysState.PdRawData[2] = pMsg->data[0];
    SysState.PdRawData[3] = pMsg->data[1];

    S2M.Items.DataFromPd.item.DataFromPd[2] = SysState.PdRawData[2] ;
    S2M.Items.DataFromPd.item.DataFromPd[3] = (SysState.PdRawData[3]& 0xffffff00) | Pdo2Cycle;



    S2M.Items.DataFromPd.item.ScoreBoard |= 2 ;

    if ( S2M.Items.DataFromPd.item.ScoreBoard == 3 )
    {
        S2M.Items.DataFromPd.item.ScoreBoard = 0 ;
        S2M.Items.DataFromPd.item.DataFromPdCtr += 1 ;
    }
    return 0 ;
}

short PdProcessTxPdo2(struct CCanMsg *pMsg)
{
    if ( S2M.Items.ActStatus.stat.CoreId.bit.RobotType == ROBOT_GEN3 )
    {
        PdProcessTxPdo2G3(pMsg) ;
    }
    else
    {
        PdProcessTxPdo2G2p5(pMsg) ;
    }
    return 0 ;
}



/*
 * Process TX PDO1 from new drivers
 * First DWORD: CBitStatus
 * Next  ErrorCode
 * Next  Current in 10mAnp units
 */

#define BEAN_SUMMATION_CNT 1024 // About 8 seconds
#define BEAN_SUMMATION_DIV (1.0f/BEAN_SUMMATION_CNT)  // About 8 seconds



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
    short unsigned id , scs  , muxok , n ;
    long unsigned kuku ;
    struct CSdo * pSdo ;
    struct CCanMsg * pMsg ;
    id = GetLogicalId( me->GetCobId & 0x7f ) ;

    if ( id > N_CAN_SLAVES )
    {
        LogException ( OWN_EXP_ID , EXP_SAFE_FATAL , exp_unexpected_sdo_id ) ;
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

// Handle communication with the PDU
inline
void PduCanHandler(void)
{
    short unsigned cobType ;
    // Get received messages
    while ( CanPDInMsgQueue.nPut !=  CanPDInMsgQueue.nGet  )
    {
        TempPdMsg = CanPDInMsgQueue.Msg[CanPDInMsgQueue.nGet] ;
        CanPDInMsgQueue.nGet =  ( CanPDInMsgQueue.nGet + 1 ) & (CanPDInMsgQueue.nQueue-1) ;
        cobType = (short unsigned) ( TempPdMsg.cobId >> 7 );

        //SlaveId = TempPdMsg.cobId & 0x7f ;
        //LogicId = GetLogicalId( SlaveId );

       switch ( cobType )
       {
        case 0x3 : // PDO1
            PdProcessTxPdo1 ( &TempPdMsg ) ;
            PduPdoTxScoreBoard |= 1 ;
            break ;
        case 0x5 : // PDO2
            PdProcessTxPdo2(&TempPdMsg ) ;
            PduPdoTxScoreBoard |= 2 ;
            break ;
        }
    }
}

// Handle communication with the servo units
inline void SrvCanHandler(void)
{
    short unsigned cobType ;
    //short unsigned LogicId  ;
    struct CCanMsg TempMsg ;
    while ( CanSrvInMsgQueue.nPut != CanSrvInMsgQueue.nGet )
    {
        TempMsg = CanSrvInMsgQueue.Msg[CanSrvInMsgQueue.nGet] ;
        CanSrvInMsgQueue.nGet = ( CanSrvInMsgQueue.nGet + 1 ) & ( CanSrvInMsgQueue.nQueue-1) ;
        // Decide by the COB ID what to do

        cobType = (unsigned short) ( TempMsg.cobId >> 7 );
        //SlaveId  = (unsigned short)  ( TempMsg.cobId & 0x7f ) ;


        if (TempMsg.LogicId < N_CAN_SLAVES )
        {

            switch ( cobType )
            {
            case 0x1 : // Emergency
                ProcessEmergency(  &TempMsg ) ;
                break ;
            case 0x3 : // PDO1
                SysState.CanAxis[TempMsg.LogicId].PdoTxScoreBoard |= 1;
                ProcessTxPdo1 ( TempMsg.cobId , &TempMsg ) ;
                break ;
            case 0x5 : // PDO2
                SysState.CanAxis[TempMsg.LogicId].PdoTxScoreBoard |= 2 ;
                ProcessTxPdo2( TempMsg.cobId , &TempMsg ) ;
                break ;
            case 0x7 : // PDO3
                SysState.CanAxis[TempMsg.LogicId].PdoTxScoreBoard |= 4 ;
                ProcessTxPdo3( TempMsg.cobId , &TempMsg ) ;
                break ;
            default  :
                break ;
            }
        }
    }

}



void Core2CanHandler(void)
{
    //short stat  ;
    short unsigned cnt ;
    //short unsigned * pUs ;
    //long unsigned TxRdy   ;
    short unsigned PdoRxErr  ;
    struct CCanAxis * pAxis ;


    // Go over the slave queues - on the basis of free place

    GetCanState(CAN_REGSB, & CanStatB) ; // Log the CAN transceiver state, for the sake of later BIT

    // Handle control and communicating the power supply
    PduCanHandler() ;

    // Handle control and communicating the servo axes
    SrvCanHandler() ;

    SysState.PdProcCtr = SysState.PdProcCtr + 1 ;

    // Network control event, once in 8.192msec for acceptable CAN load
    if ( SysState.PdProcCtr >= 2  )
    {
        SysState.PdProcCtr     = 0 ;
    }

    if ( SysState.PdProcCtr == 0 )
    { // At the same time action is taken for the RT queues


        // Test arrival of EEF messages, kill laser report if absent
        if (EEFPdoTxScoreBoard  )
        {
            CbitCounterUpdate ( 0 , &EEFRxPdoBitStr );
        }
        else
        {
            S2M.Items.ActStatus.stat.LaserVolts = 0 ;
            CbitCounterUpdate ( 1 , &EEFRxPdoBitStr );
        }
        EEFPdoTxScoreBoard = 0 ;


        // Test correct acceptance of PDOs from PDU
#define PD_PDO_FULL_MASK 0x3 // 0b111 , 2 PDO messages expected from PDU
        PdoRxErr = (( PduPdoTxScoreBoard & PD_PDO_FULL_MASK ) == PD_PDO_FULL_MASK ) ? 0 : 1 ; // Note that here we use the CBIT struct as positive measure for acceptance
        CbitCounterUpdate ( PdoRxErr , &PduRxPdoBitStr );
        PduPdoTxScoreBoard = 0 ;

        // Test correct arrival of TX PDOs from all the servo slaves
        pAxis = &SysState.CanAxis[0];
        SysState.Status.ComFaultSummary = 0 ;

        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
        {
            if ( pAxis->Installed == 0 )
            {
                continue ; // Check only installed axes
            }

            if ( ( pAxis->PdoTxScoreBoard & 7 ) != 7 )
            { // Test 3 PDOs (0b111 dirty marking) arrived from the servo axes
                SysState.Status.ComFaultSummary |= (1<<cnt) ;

                CbitCounterUpdate ( 1 , (struct CBitCountStr*) &pAxis->BH.ComCbit ) ;
                if ( pAxis->BH.ComCbit.ErrorCond  )
                {
                    LogException( OWN_EXP_ID , EXP_FATAL , error_NoCANcom_Axis1 + cnt) ;
                    KnowWhereIAmCAN[cnt] =  0      ;
                    ManCBit.ManFail |= ( 1<< cnt ) ;
                }
            }
            else
            {
                KnowWhereIAmCAN[cnt] = pAxis->BH.AxisCbit.bit.Homed ? 100 : 0  ;
                if ( pAxis->BH.AxisCbit.bit.MotorFault )
                {
                    LogException( OWN_EXP_ID , EXP_FATAL , error_ServoFail_Axis1+cnt ) ;
                    ManCBit.ManFail |= ( 1<< cnt ) ;
                }
            }
            pAxis->PdoTxScoreBoard = 0 ;
            pAxis++ ;
        }

        // Power supply control is done in BG. If a Rx PDO transmission was requested, use the controls to prepare a PDO now.
        PSTransmitRxPdo1Slave( ) ;

        // Build actuation control for the end effector
        BuildEndEffectorActuation() ;

        // If we have a tape- arm , check in coming  PDO
        if ( ManipulatorType == Flex_Manipulator )
        {
            if ( SysState.Operational >= 1  )
            {   // Sync (every processing interval)

                SysState.Status.ComFaultSummary = 0 ;

                if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0 )
                {
                    if ( SysState.WaitValidCanCtr )
                    {// If an axis put "Wait command execution", advance the counter
                        SysState.WaitValidCanCtr -= 1 ;
                    }

                    // Do control calculations
                    CANStateMachine() ;

                    // Command sending messages to the axes
                    SysState.bIssueMsg2Manip = bEnableSync ;
                }
            } // Operational

        } // End tape arm manipulator

        bIssueSync2PD = bEnableSync ; // Request to issue a sync
   }
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
    next = ( SysState.nDelayProcessPut + 1 )  & (N_DELAY_PROCESS_CANQ-1) ;
    if ( next != SysState.nDelayProcessGet)
    {
        DelayProcessQueue[SysState.nDelayProcessPut] = *pMsg ;
        SysState.nDelayProcessPut = next ;
        return 0 ;
    }
    return -1 ; // Error - queue is full
}

volatile short unsigned cobTypekuku ;
volatile short unsigned SlaveIdkuku ;
struct CCanMsg TempPdMsgRT ;


/*
 * @brief Transmit CAN PD queues
 */

//struct CCanMsg TempPdMsgRT ;
void Core2CanHandlerTx(void)
{
    struct CCanMsg  *pMsg ;
    struct CCanTrap * pTrap;
    short unsigned n , cobType, SlaveId , Next ;
    long unsigned ManTxReadyPD , ManTxReadyPdAll ;
    short unsigned * pUs ;
    VOLATILE struct CCanAxis * pAxis ;

    pAxis = & SysState.CanAxis[N_CAN_SLAVES];

    // Go over the slave queues - on the basis of free place

    ManTxReadyPdAll = GetAllReadyTransmitters (CAN_REGSB) ;
    ManTxReadyPD = ManTxReadyPdAll & 0x0fff0000  ;


    // Go over the trap queue. If there is message that awaits transmission, put them
    // All what we have are simple SDO as confirmed services
    n = 0 ;
    while ( ( CanTrapQueue.nPut != n ) &&  (ManTxReadyPD & (1L<<26)) )
    {

        pTrap = &CanTrapQueue.Traps[n];
        if ( pTrap->ReuseCnt == 0 ) // &&  (( pTrap->Msg.cobId & 0x7f ) == PD_CAN_ID ) )
        {
            CommPars.PdSdoTxCnt += 1 ;

            SetCanMsg2Hardware(CAN_REGSB,&pTrap->Msg,27);

            pTrap->TimeSet  = SysTimerStr.SysTimer ; // Update for the time of true send
            pTrap->ReuseCnt = 1 ;

            break ;
        }
        n = ( n+1) ; // & (N_CAN_TRAPS-1) ;
    }


    while ( (CanSlavePdOutQueue.nGet != CanSlavePdOutQueue.nPut ) &&  (ManTxReadyPD & (1L<<25)) )
    {
        pMsg = & CanSlavePdOutQueue.Msg[CanSlavePdOutQueue.nGet];
        SetCanMsg2Hardware(CAN_REGSB,pMsg,26);
        CanSlavePdOutQueue.nGet = (CanSlavePdOutQueue.nGet+1) & ( CanSlavePdOutQueue.nQueue -1 ) ;
        break ;
    }

    // Issue commands to the servo axes of the tape-arm
    if ( SysState.bIssueMsg2Manip &&  (ManTxReadyPdAll & ((1UL<<23)|(1UL<<22)|(1UL<<21))  ))
    {
        SysState.bIssueMsg2Manip = 0 ;
        if ( SysState.CanAxis[LOGICAL_PLATE].Installed )
        {
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_PLATE].Pdo1RxMsg, 22 );
        }
        if ( SysState.CanAxis[LOGICAL_SPACER].Installed )
        {
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_SPACER].Pdo1RxMsg, 23 );
        }
        if ( SysState.CanAxis[LOGICAL_TAPEARM].Installed )
        {
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_TAPEARM].Pdo1RxMsg, 24 );
        }
    }

    // Issue PDO to PD
    if ( bIssuePdo2PD &&  ( ManTxReadyPdAll & (1UL<<16)))
    { // Check box is ready for Tx
        bIssuePdo2PD = 0 ;
        SetCanMsg2Hardware (CAN_REGSB,&pAxis->Pdo1RxMsg,17);
    }

    // Issue sync by need
    if ( bIssueSync2PD &&  (ManTxReadyPdAll & (1UL<<30)))
    {
        bIssueSync2PD = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&SyncMsg, 31 );
    }

    // Malinki message
    if ( SysState.bIssueMsg2Malinki &&  (ManTxReadyPdAll & (1UL<<31)))
    {
        SysState.bIssueMsg2Malinki = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&OutMalinkiMsg, 32 );
    }

    // End effector message
    if ( SysState.EEF.bIssueMsg2EEF &&  (ManTxReadyPdAll & (1UL<<31)))
    {
        SysState.EEF.bIssueMsg2EEF = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&OutEEFMsg, 32 );
    }

    // Get received messages
    while ( GetCanMsgFromHardwareB(&TempPdMsgRT) >= 0 )
    {
        // Decide by the COB ID what to do

        cobType = (short unsigned) ( TempPdMsgRT.cobId >> 7 );
        SlaveId  = (short unsigned) TempPdMsgRT.cobId & 0x7f  ;


        // If this comes from ID = 120, this it is from Malinki
        if ( SlaveId == 120 && (cobType==3) )
        {
            if (  SysState.bMalinkiMsgRdy == 0 )
            {
                MalinkiInMsg = TempPdMsgRT;
                SysState.bMalinkiMsgRdy = 1 ;
            }
        }

        if ( SlaveId == CAN_ID_EEF  && (cobType==5))
        {
            pUs = (short unsigned* )&TempPdMsgRT.data[0] ;
            SysState.EEF.LaserVolts = pUs[0] * MV_2_VOLT  ;
            S2M.Items.ActStatus.stat.LaserVolts = SysState.EEF.LaserVolts ;
            SysState.EEF.VBit12 = pUs[1] * MV_2_VOLT  ;
            SysState.EEF.Status = pUs[2] ;
            if ( SysState.EEF.bUse)
            {
                SysState.PdBitGen.Pump1SwOn = (SysState.EEF.Status & 1 ) ? 1 : 0 ;
                SysState.PdBitGen.Pump2SwOn = (SysState.EEF.Status & 2 ) ? 1 : 0 ;
                SysState.PdBitGen.LaserPsSwOn = (SysState.EEF.Status & 10 ) ? 1 : 0 ;
                SysState.EEF.WasEvent = 1 ;
            }
            EEFPdoTxScoreBoard = 1 ;
            //EEFInMsg = TempPdMsgRT;
        }

        if ( SlaveId == PD_CAN_ID )
        {
            switch ( cobType )
            {
            case 0x1 : // Emergency
                ProcessEmergency(  &TempPdMsgRT ) ;
                break ;
            case 0xb : // SDO
                CommPars.PdSdoRxCnt  += 1 ;
                PutCan4DelayProcess(&TempPdMsgRT) ;
                break ;
            case 0xe : // Boot up
                PutCan4DelayProcess(&TempPdMsgRT) ;
                break ;
            default  :
                // Probably PDO: Set to RT queue processing
                Next = ( CanPDInMsgQueue.nPut + 1 ) & (CanPDInMsgQueue.nQueue-1) ;
                if ( Next != CanPDInMsgQueue.nGet )
                {
                    CanPDInMsgQueue.Msg[CanPDInMsgQueue.nPut] = TempPdMsgRT ;
                    CanPDInMsgQueue.nPut = Next ;
                }
                break ;
            }
        }

         TempPdMsgRT.LogicId = GetLogicalId( TempPdMsgRT.cobId & 0x7f );
         if (TempPdMsgRT.LogicId < N_CAN_SLAVES )
         {

             switch ( cobType )
             {
             case 0x1 : // Emergency
                 ProcessEmergency(  &TempPdMsgRT ) ;
                 break ;
             case 0xb : // SDO
                 PutCan4DelayProcess(&TempPdMsgRT) ;
                 break ;
             case 0xe : // Boot-up
                 PutCan4DelayProcess(&TempPdMsgRT) ;
                 break ;
             default  :
                 // Probably PDO - queue for processing
                 Next = ( CanSrvInMsgQueue.nPut + 1 ) & (CanSrvInMsgQueue.nQueue-1) ;
                 if ( Next != CanSrvInMsgQueue.nGet )
                 {
                     CanSrvInMsgQueue.Msg[CanSrvInMsgQueue.nPut] = TempPdMsgRT ;
                     CanSrvInMsgQueue.nPut = Next ;
                 }
                 break ;
             }
         }
    }

}

/**
 * @brief Time out exception handler   abort
 */
short CanExceptionNothing( struct CCanTrap * me )
{
    return 0 ;
}

/**
 * @brief Time out exception handler   abort
 */
short CanExceptionKill( struct CCanTrap * me )
{
    LogException ( me->GetCobId & 0x7f , EXP_SAFE_FATAL , exp_bootout_timeout ) ;
    return 0 ;
}


