#include "StructDef2.h"


#define CAN_REGSA ((volatile unsigned long *) 0x48000)
#define CAN_REGSB ((volatile unsigned long *) 0x4A000)

#ifdef SHUMKLUM
/*
 * \brief Transmit control word and speed/position command to axis
 * The CAN2 PS control (PDU) PDO is calculated by Core#1 as it was its historical responsibility before Can Channel #2 was transferred to Core#2
 *
 * \param The logic Id of the target axis
 * \return 0 normally, -1 if mailbox was full
 */

// struct CCanMsg PdPdo1RxMsg ;

short BuildPduRxPdo1(void)
{
    volatile struct CCanMsg * pMsg ;
    short unsigned * uPtr ;
    long unsigned ldata[2] ;

    //short unsigned cw ;

    struct CPdCmd2 *pPdCmd2 ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;


    ldata[0] = M2S.Items.ActCmd.cmd.PdCommandPdo[0] ;
    ldata[1] = M2S.Items.ActCmd.cmd.PdCommandPdo[1] ;

    pMsg = & SysState.CanAxis[N_CAN_SLAVES].Pdo1RxMsg ; // CanAxis[N_CAN_SLAVES] represents the PDU for convenience.
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

    ldata[1] = ldata[1] & 0xffffff3c +  ((* ((short unsigned *) &SysState.PdCmd2)) & 0xc3) ; //from ldata leave only bits 2, 3, 4 ,5
    //need to continue support old PD. the new PD will ignore bits 0 ,1, 4, 6, 7

    /*
    int unsigned ChakalakaOn : 1 ; // Chakalaka - not relevant for new PD
    int unsigned FanOn : 1 ; - not relevant for new PD
    int unsigned Power24V   : 1 ;
    int unsigned Power12V   : 1 ;
    int unsigned CommRestart : 1 ; // Restart manipulator communication - not relevant for new PD
    int unsigned PowerEnter : 1 ; // <Enter> for Power commands
    int unsigned FrontCamLightOn : 1 ; // Front camera light - not relevant for new PD
    int unsigned RearCamLightOn : 1 ; // Rear camera light - not relevant for new PD



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
#endif

void  inline  BuildScaraEndUnitActuation(void) //inline syntax means the lines functionality will be copied to main code (no function calling), allow definition of same name variables as in main code.
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

    S2M.Items.ActStatus.stat.PumpCmd = (short)DbgPDControlWord.PumpOn ;
    S2M.Items.ActStatus.stat.LaserCmd = (short)SysState.Package.PDControlWord.LaserPsOn ;

    if ( SysState.ScaraEEF.bUse)
    {
        if ( DbgPDControlWord.PumpOn )
        {
            if ( SysState.ScaraEEF.PumpStaggerCnt < 35 )
            {
                cw = 1 ;
                SysState.ScaraEEF.PumpStaggerCnt += 1 ;
            }
            else
            {
                cw = 3 ;
            }
        }
        else
        {
            SysState.ScaraEEF.PumpStaggerCnt = 0 ;
        }

        SysState.ScaraEEF.ControlWord = cw + ( DbgPDControlWord.LaserPsOn ? 0x10 : 0) ;
        OutEEFMsg.data[0] = SysState.ScaraEEF.ControlWord   ;
        SysState.ScaraEEF.bIssueMsg2EEF = bEnableSync ;
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

    SysState.Package.PdCBit.V24Fail = pdb.bit.V24Fail ;
    SysState.Package.PdCBit.V18Fail = pdb.bit.V18Fail ;
    SysState.Package.PdCBit.V12Fail = pdb.bit.V12Fail ;
    SysState.Package.PdCBit.V54Fail = pdb.bit.V54Fail ;

    SysState.Package.PdCBit2.Active12V = pdb.bit.V12Ready ;
    SysState.Package.PdCBit2.Active18V = pdb.bit.V18Ready ;
    SysState.Package.PdCBit2.Active24V = pdb.bit.V24Ready ;
    SysState.Package.PdCBit2.Active54V = pdb.bit.V54Ready ;

    SysState.Package.PdCBit2.FailCode12V =  u.us[1] & 7 ;
    SysState.Package.PdCBit2.FailCode18V = (( u.us[1] >> 3 ) & 7 ) ;
    SysState.Package.PdCBit2.FailCode24V = (( u.us[1] >> 6 ) & 7 ) ;
    SysState.Package.PdCBit2.FailCode54V = (( u.us[1] >> 9 ) & 7 ) ;

    /*
    u.us[1] = (SysState.Buck12Control.Exception & 7 ) | ((SysState.Buck18Control.Exception & 7 )<<3)
        | ((SysState.Buck24Control.Exception & 7 )<<6)  | ((SysState.Sw54Control.Exception & 7 )<<9)
        | (( SysState.Buck5Control.LoadSw  & 1 ) << 12 )
        | (( SysState.Buck18Control.LoadSw & 1 ) << 13 ) ;
    */

    SysState.Package.PdCBit.MushroomDepressed = pdb.bit.MushroomDepressed ;


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
    return    PdProcessTxPdo1R3(pMsg) ;
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
    return PdProcessTxPdo2G3(pMsg) ;
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

    if ( CanId == CAN_ID_PDU)
    {
        return LOGICAL_PDU ;
    }
    if ( CanId == CAN_ID_EEF)
    {
        return LOGICAL_EEF ;
    }
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
    if ( id > LOGICAL_EEF) //was N_CAN_SLAVES
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
            LogException ( id , EXP_SAFE_FATAL , pSdo->AbortCode ) ; //happened to get 0xFF7D OBJ_ERR_TWIST_WITH_UNDEFINED_SIDE from Spacer
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

    if ( id > LOGICAL_EEF ) //was N_CAN_SLAVES
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
//    else if (id == CAN_ID_EEF)
//    {
//        ptr->TimeOut = (long )( 0.2f * 1e6f )  ; // 200msec, certainly above 50ms, maybe 100ms will work
//    }
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

// Handle communication with the PDU (build PDU ScoreBoard)
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

// Handle incoming communication with the servo units
inline void SrvCanHandler(void)
{
    short unsigned cobType , LogicId, PdoRxErr ;
    //short unsigned LogicId  ;
    struct CCanMsg TempMsg ;

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

//#define LOGICAL_PLATE 0 //rotating axis
//#define LOGICAL_TAPEARM 1 //tape arm axis
//#define LOGICAL_SPACER 2 //linear axis


    SysState.PdProcCtr = SysState.PdProcCtr + 1 ;
    if ( SysState.PdProcCtr >= SysState.PdProcCtrMax )
    {
        SysState.PdProcCtr     = 0 ;
        PdoRxErr = 0 ;
        if ( SysState.Operational >= 1  )
        {   // Sync (every processing interval)
            //PdoRxErr = (( Pdo1TxScoreBoard & ExpectedPdo1TxScoreBoard ) == ExpectedPdo1TxScoreBoard ) ? 0 : 1 ; // Note that here we use the CBIT struct as positive measure for acceptance

            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_PLATE].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_PLATE].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_PLATE].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_PLATE].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_PLATE].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis1 ;
                PdoRxErr = 1 ;

                KnowWhereIAmCAN[LOGICAL_PLATE] =  0  ;
                ManCBit.ManFail |= ( 1<< LOGICAL_PLATE ) ; //update the relevant bit of ManCBit.ManFail
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_PLATE].BH.ComCbit   ) ;
                SysState.CanAxis[LOGICAL_PLATE].OuterPos = SysState.CanAxis[LOGICAL_PLATE].BH.UserPos;
                KnowWhereIAmCAN[LOGICAL_PLATE] =  1  ;
                ManCBit.ManFail &= ~( 1<< LOGICAL_PLATE ) ; //update the relevant bit of ManCBit.ManFail
            }

            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_TAPEARM].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_TAPEARM].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_TAPEARM].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_TAPEARM].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_TAPEARM].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis2 ;
                PdoRxErr = 1 ;
                KnowWhereIAmCAN[LOGICAL_TAPEARM] =  0  ;
                ManCBit.ManFail |= ( 1<< LOGICAL_TAPEARM ) ; //update the relevant bit of ManCBit.ManFail
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_TAPEARM].BH.ComCbit  );
                KnowWhereIAmCAN[LOGICAL_TAPEARM] =  1  ;
                ManCBit.ManFail &= ~( 1<< LOGICAL_TAPEARM ) ; //update the relevant bit of ManCBit.ManFail
            }

            if ( (Pdo1TxScoreBoard & SysState.CanAxis[LOGICAL_SPACER].BH.PerAxisExpectedPdoScoreBoard) != SysState.CanAxis[LOGICAL_SPACER].BH.PerAxisExpectedPdoScoreBoard )
            {
                CbitCounterUpdate ( 1 , &SysState.CanAxis[LOGICAL_SPACER].BH.ComCbit  );
                //SysState.CanAxis[LOGICAL_SPACER].BH.AxisCbit.bit.MotorFault =  1 ;
                //SysState.CanAxis[LOGICAL_SPACER].BH.FaultCode  =  exp_pdo_sequence_incorrect_for_axis3 ;
                PdoRxErr = 1 ;
                KnowWhereIAmCAN[LOGICAL_SPACER] =  0  ;
                ManCBit.ManFail |= ( 1<< LOGICAL_SPACER ) ; //update the relevant bit of ManCBit.ManFail
            }
            else
            {
                CbitCounterUpdate ( 0 , &SysState.CanAxis[LOGICAL_SPACER].BH.ComCbit  );
                KnowWhereIAmCAN[LOGICAL_SPACER] =  1  ;
                ManCBit.ManFail &= ~( 1<< LOGICAL_SPACER ) ; //update the relevant bit of ManCBit.ManFail
            }

            CbitCounterUpdate ( PdoRxErr , &RxPdoBitStr );
            SysState.Status.FaultSummary = IsAtFault( &SysState.CanAxis[0]) + (IsAtFault(&SysState.CanAxis[1]) << 1 )
                    + (IsAtFault( &SysState.CanAxis[2]) << 2 )  ;
            Pdo1TxScoreBoard = 0 ;

            if (RxPdoBitStr.ErrorCond)
            {
                LogException(OWN_EXP_ID, EXP_FATAL, SysState.Mot.SafeFaultCode); // DO NOT change
            }
/*
            if ( PdoRxErr == 0 )
            {

                MotionController ( ) ;
            }
            else
            {
                if (  SysState.Mot.mode == E_SysMotionModeSafeFault)
                { // No control of drivers, no issue in keeping the safe afil procedure
                     LogException(OWN_EXP_ID, EXP_FATAL, SysState.Mot.SafeFaultCode); // DO NOT change
                }
            }

            PdoTxErr = 0 ;
            if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan  == 0 )
            {
                PreTransmitRxPdo1Slave(LOGICAL_PLATE) ;
                PreTransmitRxPdo1Slave(LOGICAL_TAPEARM) ;
                PreTransmitRxPdo1Slave(LOGICAL_SPACER) ;

                SrvTransmitRxPdoSlaveRequest = 1 ;

                CbitCounterUpdate ( PdoTxErr , &TxPdoBitStr );

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
            }
*/
        } // Operational
    } // ProcCtr
}


/*
 * Check ScoreBoards (verify received PDO messages from salves) for all CAN2 salves.
 */
void NetworkControlEvent()
{
    //short stat  ;
    //short unsigned cnt ;
    //short unsigned * pUs ;
    //long unsigned TxRdy   ;
    short unsigned PdoRxErr  ;
    //struct CCanAxis * pAxis ;

    // At the same time action is taken for the RT queues

    // Test arrival of EEF messages, kill laser report if absent
    if (EEFPdoTxScoreBoard == 0x3) //PDO1Tx flag is 0x1, PDO1Tx flag is 0x2, both is 0x3
    {
       CbitCounterUpdate ( 0 , &EEFRxPdoBitStr );
    }
    else
    {
//       SysState.Package.LaserRequest = 0; // Kill laser.
//       ApplyFlexLaserLed();//SysState.EEF.ControlWord.bit.LaserOnCmd = SysState.Package.LaserRequest; (unless OverRide = 1). Need to make sure the PDO is sent before other assignments to SysState.Package.LaserRequest. BuildEEFPdoRx1Message() is indeed sent before CANStateMachineFlexManip().

       CbitCounterUpdate ( 1 , &EEFRxPdoBitStr );
    }
    EEFPdoTxScoreBoard = 0 ;

// Test correct acceptance of PDOs from PDU
#define PD_PDO_FULL_MASK 0x3 // 0b111 , 2 PDO messages expected from PDU
    PdoRxErr = (( PduPdoTxScoreBoard & PD_PDO_FULL_MASK ) == PD_PDO_FULL_MASK ) ? 0 : 1 ; // Note that here we use the CBIT struct as positive measure for acceptance
    CbitCounterUpdate ( PdoRxErr , &PduRxPdoBitStr );
    PduPdoTxScoreBoard = 0 ;

    // Test correct arrival of TX PDOs from all the servo slaves
    // pAxis = &SysState.CanAxis[0]; moved inside loop
/*
    SysState.Status.ComFaultSummary = 0 ;

    for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++ )
    {
       pAxis = &SysState.CanAxis[cnt]; //instead of incrementing pAxis++ at the end. may be less efficient but more clear.

       if ( pAxis->Installed == 0 )
       {
           continue ; // Check only installed axes
       }

       //All ManCBit that is not related to the manipulator stay the same.
       if ( ( pAxis->PdoTxScoreBoard & 7 ) != 7 ) //not all PDOs were sent (!=0b111)
       { // Test 3 PDOs (0b111 dirty marking) arrived from the servo axes
           SysState.Status.ComFaultSummary |= (1<<cnt) ;

           CbitCounterUpdate ( 1 , (struct CBitCountStr*) &pAxis->BH.ComCbit ) ;
           if ( pAxis->BH.ComCbit.ErrorCond  )
           {
               KnowWhereIAmCAN[cnt] =  0  ;
               LogException( OWN_EXP_ID , EXP_FATAL , error_NoCANcom_Axis1 + cnt) ;
               ManCBit.ManFail |= ( 1<< cnt ) ; //update the relevant bit of ManCBit.ManFail
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
       //pAxis++ ;  //replaced with pAxis = &SysState.CanAxis[cnt] at the start of the loop/
    }
    */
}


/*
 * Handle incoming PDU/ CAN axes PDOs (ScoreBoard).
 * Build all CAN2 outgoing RxPDOs.
 */
void Core2CanHandler(void)
{
    // Go over the slave queues - on the basis of free place

    GetCanState(CAN_REGSB, & CanStatB) ; // Log the CAN transceiver state, for the sake of later BIT

    // Handle communication with the PDU and update PDU ScoreBoard
    PduCanHandler() ;

    // Handle incoming axes PDOs and update axes ScoreBoards
    SrvCanHandler() ;

    /*
    SysState.PdProcCtr = SysState.PdProcCtr + 1 ;

    // Network control event, once in 8.192msec for acceptable CAN load
    if ( SysState.PdProcCtr >= 2  )
    {
        SysState.PdProcCtr     = 0 ;
    }
    */

    // Network control event, once in 8.192msec for acceptable CAN load
    if ( SysState.PdProcCtr == 0 )
    {
        // Verify ScoreBoards (verify received PDO messages from salves) for all CAN2 salves.
        NetworkControlEvent();

        // Power supply control is done in BG. If a Rx PDO transmission was requested, use the controls to prepare a PDO now.
#ifdef SHUMKLUM
        BuildPduRxPdo1() ;
#endif

        if ( ManipulatorType == SCARA_Manipulator )
        {// Build actuation control for the end unit
            BuildScaraEndUnitActuation();
        }
        else
        { //if ( ManipulatorType == Flex_Manipulator )
           if ( SysState.Operational >= 1  )
           {   // Sync (every processing interval)

               SysState.Status.ComFaultSummary = 0 ;

               if ( M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan == 0 )
               {
                   SysState.WaitValidCanCtr = __max(SysState.WaitValidCanCtr-1,0) ;// If an axis put "Wait command execution", advance the counter//for each command to axes need to verify if the counter == 0.
                   //for example need to check convergence of profile after the counter is 0;

                   // Do control calculations
                   CANStateMachineFlexManip() ;

                   // Command sending messages to the axes
                   SysState.bIssueMsg2Manip = bEnableSync ;
               }
           } // Operational

           BuildEEFPdoRx1Message() ; // Build actuation control for the end effector

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
 *Store boot-up and SDO fir PD_CAN_ID and CAN_SLAVES in DelayProcessQueue
 * No need for FIFO - the idle should read starting at index zero,
 * and read only the top message in a critical.
 *
 * @return 0: ok , -1: queue is full
 */
short PutCan4DelayProcess(struct CCanMsg *pMsg)
{
    short unsigned next ;
    next = ( SysState.nDelayProcessPut + 1 )  & (N_DELAY_PROCESS_CANQ-1) ; //mask 0b1111 (cyclic buffer of 16 messages)
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

short unsigned volatile kukuya ;
/*
 * @brief Transmit CAN2 PDO queues (called from TimerIsrC)
 * send SDOs by traps, PD from axes, EEF, PD, Malinki. send sync if bIssueSync2PD is set)
 * Get messages from hardware and put into queues.
 */
void Core2CanHandlerTxRx(void)
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

    // Go over the trap queue. If there is message that awaits transmission (CAN2 SDO), put them
    // All what we have are simple SDO as confirmed services
    n = 0 ;
    while ( ( CanTrapQueue.nPut != n ) &&  (ManTxReadyPD & (1L<<26)) ) //ManTxReadyPD & (1L<<27) - check is transmitter 26 is ready
    {

        pTrap = &CanTrapQueue.Traps[n];
        if ( pTrap->ReuseCnt == 0 )
        {
            CommPars.PdSdoTxCnt += 1 ;

            SetCanMsg2Hardware(CAN_REGSB,&pTrap->Msg,27);

            pTrap->TimeSet  = SysTimerStr.SysTimer ; // Update for the time of true send
            pTrap->ReuseCnt = 1 ;

            break ;
        }
        n = ( n+1) ; // & (N_CAN_TRAPS-1) ;
    }

    //CAN2 transmitting PDO to PDU
    while ( (CanSlavePdOutQueue.nGet != CanSlavePdOutQueue.nPut ) &&  (ManTxReadyPD & (1L<<25)) ) //check is transmitter 26 is ready
    {
        pMsg = & CanSlavePdOutQueue.Msg[CanSlavePdOutQueue.nGet];
        SetCanMsg2Hardware(CAN_REGSB,pMsg,26);
        CanSlavePdOutQueue.nGet = (CanSlavePdOutQueue.nGet+1) & ( CanSlavePdOutQueue.nQueue -1 ) ;
        break ;
    }

    //CAN2 transmitting PDO to CAN axes (servo axes of the tape-arm)
    if ( SysState.bIssueMsg2Manip &&  (ManTxReadyPdAll & ((1UL<<23)|(1UL<<22)|(1UL<<21)|(1UL<<20)|(1UL<<19)|(1UL<<18))  )) //check if either transmitter 22-24 are ready. based on CAN2 utilization no such case of transmitter busy.
    {
        SysState.bIssueMsg2Manip = 0 ;
        if ( SysState.CanAxis[LOGICAL_PLATE].Installed )
        {
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_PLATE].Pdo1RxMsg, 22 ); //Tries to send to transmitter even if not free.
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_PLATE].Pdo2RxMsg, 19 ); //Tries to send to transmitter even if not free.
        }
        if ( SysState.CanAxis[LOGICAL_SPACER].Installed )
        {
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_SPACER].Pdo1RxMsg, 23 ); //Tries to send to transmitter even if not free.
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_SPACER].Pdo2RxMsg, 20 ); //Tries to send to transmitter even if not free.

        }
        if ( SysState.CanAxis[LOGICAL_TAPEARM].Installed )
        {
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_TAPEARM].Pdo1RxMsg, 24 ); //Tries to send to transmitter even if not free.
            SetCanMsg2Hardware(CAN_REGSB,&SysState.CanAxis[LOGICAL_TAPEARM].Pdo2RxMsg, 21 ); //Tries to send to transmitter even if not free.
        }
    }

    // CAN2 transmitting PDO to PDU
    if ( bIssuePdo2PD &&  ( ManTxReadyPdAll & (1UL<<16)))
    { // Check box is ready for Tx
        bIssuePdo2PD = 0 ;
        SetCanMsg2Hardware (CAN_REGSB,&pAxis->Pdo1RxMsg,17);
    }

    // CAN2 transmitting PDO to Malinki
    if ( SysState.bIssueMsg2Malinki &&  (ManTxReadyPdAll & (1UL<<31)))
    {
        SysState.bIssueMsg2Malinki = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&OutMalinkiMsg, 32 );
    }

    // CAN2 transmitting PDO to SCARA EEF (PDOTx).
    if (( ManipulatorType == SCARA_Manipulator ) && (SysState.ScaraEEF.bIssueMsg2EEF) && (ManTxReadyPdAll & (1UL<<31)))
    {
        SysState.ScaraEEF.bIssueMsg2EEF = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&OutEEFMsg, 32 );
    }

    // CAN2 transmitting PDO to FLEX EEF (PDOTx).
    if (( ManipulatorType == Flex_Manipulator ) && (SysState.EEF.bIssueMsg2EEF) && (ManTxReadyPdAll & (1UL<<31)))
    { //if ( ManipulatorType == Flex_Manipulator )
        SysState.EEF.bIssueMsg2EEF = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&OutEEFMsg, 32 );
    }

    // Issue sync by need
    if ( bIssueSync2PD &&  (ManTxReadyPdAll & (1UL<<30)))
    {
        bIssueSync2PD = 0 ;
        SetCanMsg2Hardware(CAN_REGSB,&SyncMsg, 31 );
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


        //Incoming EEF message (PDOTx). in the case of SCARA - from who????
        if ( SlaveId == CAN_ID_EEF)
        {

            if (  ManipulatorType == SCARA_Manipulator )
            {
                if ( cobType==5)
                {
                    pUs = (short unsigned* )&TempPdMsgRT.data[0] ;
                    SysState.ScaraEEF.LaserVolts = pUs[0] * MV_2_VOLT  ; //LaserMv
                    //S2M.Items.ActStatus.stat.LaserVolts = SysState.ScaraEEF.LaserVolts ; ////removed from S2M by Yahali.
                    SysState.ScaraEEF.VBit12 = pUs[1] * MV_2_VOLT  ; //V24Mv
                    SysState.ScaraEEF.Status = pUs[2] ; // HostData[0]
                    if ( SysState.ScaraEEF.bUse)
                    {
                        SysState.PdBitGen.Pump1SwOn = (SysState.ScaraEEF.Status & 1 ) ? 1 : 0 ;
                        SysState.PdBitGen.Pump2SwOn = (SysState.ScaraEEF.Status & 2 ) ? 1 : 0 ;
                        SysState.PdBitGen.LaserPsSwOn = (SysState.ScaraEEF.Status & 10 ) ? 1 : 0 ;
                        SysState.ScaraEEF.WasEvent = 1 ;
                    }
                    EEFPdoTxScoreBoard = 1 ;

                }
                //EEFInMsg = TempPdMsgRT;
            }
            else //if (  ManipulatorType == Flex_Manipulator )
            {
                if (cobType==5) //this is PDO2Tx
                {
                    if ( SysState.EEF.bUse )
                    {
                        pUs = (short unsigned* )&TempPdMsgRT.data[0] ;
                        SysState.EEF.LaserVolts = pUs[0] * MV_2_VOLT  ;//LaserMv
                        //S2M.Items.ActStatus.stat.LaserVolts = SysState.EEF.LaserVolts ; //moved to OperSyncReport()
                        SysState.EEF.VBit12 = pUs[1] * MV_2_VOLT  ;  //V24Mv
                        SysState.EEF.Status.LaserMedianM = (float)pUs[2]/1000 ; // was HostData[0]
                        SysState.EEF.EefVersion = pUs[3] ;

        //                SysState.EEF.Status.PackgeState.all = SysState.EEF.StatusOld;
        //                SysState.PdBitGen.Pump1SwOn = (SysState.EEF.StatusOld & 1 ) ? 1 : 0 ;
        //                SysState.PdBitGen.Pump2SwOn = (SysState.EEF.StatusOld & 2 ) ? 1 : 0 ;
        //                SysState.PdBitGen.LaserPsSwOn = (SysState.EEF.StatusOld & 10 ) ? 1 : 0 ;
        //                SysState.EEF.WasEvent = 1 ;

                        EEFPdoTxScoreBoard |= 0x2 ; //PDO2Tx flag is 0x2
                    }
                }

                else if (cobType==3) //added PDO1Tx
                {
                    if ( SysState.EEF.bUse )
                    {

                        pUs = (short unsigned* )&TempPdMsgRT.data[0] ;

                        SysState.EEF.Status.ElementsStates.all = pUs[0];
                        SysState.EEF.Status.GripState.all = pUs[1];
                        SysState.EEF.Status.PackageState.all = pUs[2];

        //                SysState.EEF.Status.PackgeState.all = SysState.EEF.StatusOld;
        //                SysState.PdBitGen.Pump1SwOn = (SysState.EEF.StatusOld & 1 ) ? 1 : 0 ;
        //                SysState.PdBitGen.Pump2SwOn = (SysState.EEF.StatusOld & 2 ) ? 1 : 0 ;
        //                SysState.PdBitGen.LaserPsSwOn = (SysState.EEF.StatusOld & 10 ) ? 1 : 0 ;
        //                SysState.EEF.WasEvent = 1 ;

                        EEFPdoTxScoreBoard |= 0x1 ; //PDO1Tx flag is 0x1
                    }
                }
                else
                {
                    kukuya = 0x1 ;
                }
            }
        }


        if ( SlaveId == CAN_ID_PDU )
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
         if (TempPdMsgRT.LogicId <= LOGICAL_EEF ) //was N_CAN_SLAVES
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


