#include "Structdef2.h"
/*
 * CanMaster.c
 *
 *  Created on: Sep 8, 2023
 *      Author: yahal
 */
//Vandal
// #define PROG_HBEAT

/* Table of CAN initialization objects used similarly for all the axes for servo boot-up.
 * All to be sent as numeric expedited SDO
 * All those objects should be transmitted to the targets before servo are active.
 */
/* SlaveLogicID  , Index   , SubIndex , Lpayload , DataType */

/**
 * \brief Idle loop handling of CAN
 * review SDOs stored in DelayProcessQueue (boot-up and SDO for PD_CAN_ID and CAN_SLAVES), search for its trap, and activate the trap handler.
 *
 * \detail: Interpreter, idle processing of trap queue (for SDOs sent to slaves)
 */
short IdleCanProc (void )
{
    //short unsigned next ;
    short unsigned sr ;
    short unsigned cnt , next , c1 ;
    struct CCanMsg Msg ;
    struct CCanTrap * pTrap;
    short stat , trapped;

    // Go over all the newly accepted messages and put in DelayProcessQueue. then search traps created for outgoing SDOs sent to slaves.
    c1 = 0 ;
    while ( SysState.nDelayProcessGet != SysState.nDelayProcessPut  )
    {
        c1 += 1 ;
        if ( c1 > 6 )
        { // Limit iteration
            break ;
        }
        sr  = BlockInts() ;
         // Copy message from delayed processing loop
        SysState.nDelayProcessPut &= (N_DELAY_PROCESS_CANQ-1) ; //mask 0b1111 (cyclic buffer of 16 messages)
        next = (SysState.nDelayProcessGet+1)&(N_DELAY_PROCESS_CANQ-1); //mask 0b1111 (cyclic buffer of 16 messages)
        Msg = DelayProcessQueue[SysState.nDelayProcessGet];
        SysState.nDelayProcessGet = next  ;
        RestoreInts(sr ) ;

        // Go over the entire set of active traps (created for each outgoing SDO to slaves)
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
long unsigned SendSdo2Slave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId )
{
    //short unsigned cnt  ;
    extern short TestIfTrapped(short unsigned CobId);
    short unsigned CanId ;
    struct CSdo PduSdo ;
    struct CSdo EefSdo ;
    long unsigned AbortCode ;
    struct CSdo volatile * pSdo ;
    if ( LogicId < N_CAN_SLAVES )
    {
        if (SysState.CanAxis[LogicId].Installed == 0 )
        {
            return UNSIGNED_MINUS1 ;
        }
        pSdo   = &SysState.CanAxis[LogicId].Sdo ;
        CanId  = SysState.CanAxis[LogicId].CanId ;
    }
    else if ( LogicId == LOGICAL_PDU )
    {
        pSdo = &PduSdo ;
        CanId = CAN_ID_PDU ;
    }
    else if ( LogicId == LOGICAL_EEF )
    {
        pSdo = &EefSdo ;
        CanId = CAN_ID_EEF ;
    }

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


    pSdo->SlaveID = CanId ;
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
 * \brief Send SET SDO to manipulator
 *
 */
long unsigned SendSdo2PD ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes )
{
    return SendSdo2Slave(Index,SubIndex,PayLoad,nBytes,N_CAN_SLAVES);
}


/**
 * \brief Send SET SDO to manipulator
 *
 */
long unsigned SendSdo2EEF ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes )
{
    return SendSdo2Slave(Index,SubIndex,PayLoad,nBytes,LOGICAL_EEF);
}



/*
 * \brief Send SET SDO to manipulator, same as SendSdo2PD with retry count
 *
 */
long unsigned SendSdo2PDRetry ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short nretries )
{
    short cnt ;
    long unsigned RetVal ;

    RetVal = 0 ;

    SysState.Mot.RejectWarning.exp = 0 ;
    SysState.Mot.RejectWarning.IgnoreWarning = 1 ;

    for ( cnt = 0 ; cnt < nretries ; cnt++ )
    {
        RetVal = SendSdo2PD ( Index , SubIndex , PayLoad ,  nBytes );

        if ( RetVal == 0 )
        {
            goodcnt += 1  ;
        }
        else
        {
            badcnt += 1 ;
        }
        if ( RetVal == 0 )
        {
            break ;
        }
    }

    SysState.Mot.RejectWarning.IgnoreWarning = 0 ;
    if ( RetVal )
    {
        if ( SysState.Mot.RejectWarning.exp )
        {
            LogException( SysState.Mot.RejectWarning.ID, EXP_WARN  ,SysState.Mot.RejectWarning.exp) ;
        }
        else
        {
            if ( GlobalDebug & 0x8 )
            {
                __asm( " ESTOP0" ) ;
            }
            LogException( OWN_EXP_ID , EXP_WARN , exp_sdo_timeout_retry ) ;
        }
    }
    return RetVal ;
}

/**
 * \brief Send SET SDO to power supply
 *
 */
long unsigned GetSdoFromPD ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned *nBytes )
{
    short unsigned cnt ;
    struct CSdo * pSdo ;
    long   unsigned * pul ;
    struct CSdo PduSdo ;

    pSdo = &PduSdo ;

    pul = pSdo->SlaveBuf ;
    MemClr((short unsigned *)pSdo,sizeof(struct CSdo)  );
    pSdo->SlaveBuf  = pul ;

    switch ( *nBytes )
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
        pSdo->DataType = 7 ;
    }

    pSdo->SlaveID = CAN_ID_PDU ;
    pSdo->Index = Index ;
    pSdo->SubIndex= SubIndex ;
    pSdo->Lpayload = 0  ;

    SendSdoExpeditUloadLong( pSdo ) ;

    for ( cnt = 0 ; cnt < 10 ; cnt++ )
    {
        WaitStam(1500, &SysTimerStr ) ;
        IdleCanProc() ;
        if ( pSdo->Status < 0 )
        { // Abort
            SendSdoExpeditUloadLong( pSdo ); // Retry
        }

        // Check that all the slaves responded correctly
        if  ( pSdo->Status == 1)
        { // This SDO is transmitted;
            break ;
        }
    }
    if  ( pSdo->Status == 1)
    {
        * (long unsigned *) PayLoad = pSdo->Lpayload ;
        * nBytes = pSdo->ByteCnt ;
        return 0 ;
    }
    return UNSIGNED_MINUS1 ;
}




