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
void LogException ( short unsigned ID ,  short fatality , long unsigned exp ) ;

#define N_DELAY_PROCESS_CANQ 16
struct CCanMsg DelayProcessQueue[N_DELAY_PROCESS_CANQ] ;
short  unsigned nDelayProcess ;

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
    next = nDelayProcess + 1 ;
    if ( next < N_DELAY_PROCESS_CANQ)
    {
        DelayProcessQueue[nDelayProcess] = *pMsg ;
        nDelayProcess = next ;
        return 0 ;
    }
    return -1 ; // Error - queue is full
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
#define CAN_REGSA ((volatile unsigned long *) 0x48000)
#define CAN_REGSB ((volatile unsigned long *) 0x4A000)

short PutCanSlaveQueue( struct CCanMsg * pMsg);
/**
 * \brief Prepare and send boot-up message
*/
short SetExtendedBootUpMessage( void )
{
    struct CCanMsg  Msg ;
    Msg.UseLongId = 0 ;
    Msg.cobId = LP_CAN_ID + CAN_NMT_ERROR_CONTROL ;
    Msg.dLen = 8 ;
    //Msg.data[0] = ( PROJ_TYPE << 8  ) + (((unsigned long)ProjId & 255)<<24)  ;
    Msg.data[0] = ( (unsigned long)PROJ_TYPE << 8  ) + (((unsigned long)PROJ_ID & 255)<<24)  ;
    Msg.data[1] = SubverPatch ;
    return PutCanSlaveQueue( &Msg );
}


void RtCanHandlerCanA(void)
{
    short unsigned SlaveId ;
    short stat ;
    short unsigned next ;
    short unsigned target ;
    long unsigned TxRdy   ;
    struct CCanMsg  *pMsg ;

    // Go over the slave queues - on the basis of free place

    TxRdyGlobal = GetReadyTransmitters(CAN_REGSA) ;
    TxRdy = TxRdyGlobal & 0x0fe00000 ; // Omit the transmitters that are reserved for RX PDO

    // Transmit messages required by the idle process
    while ( (CanSlaveOutQueue.nGet != CanSlaveOutQueue.nPut ) && TxRdy )
    {
        next = GetLeadingOne(TxRdy) ;
        TxRdy &= ~(1L<<next);

        pMsg = & CanSlaveOutQueue.Msg[CanSlaveOutQueue.nGet];
        stat = SetCanMsg2Hardware(CAN_REGSA,pMsg,next);
        if ( stat >= 0 )
        {
            CanSlaveOutQueue.nGet = (CanSlaveOutQueue.nGet+1) & ( CanSlaveOutQueue.nQueue -1 ) ;
        }
    }

    GetCanState(CAN_REGSA) ;

    // Get recepted messages
    if ( SysState.CanRxEnable )
    {
        while ( GetCanMsgFromHardwareA(&TempMsg) >= 0 )
        {
            // Decide by the COB ID what to do
            if ( TempMsg.UseLongId )
            {
                continue ; // For the time we discard long id messages
            }
            SlaveId  = (unsigned short)  ( TempMsg.cobId & 0x7f ) ;

            if (( TempMsg.cobId == PROJ_CAN_ID ) || (TempMsg.cobId == 0 ) )
            {
                // NMT for us
                target = (TempMsg.data[0] >> 8 ) & 0xff ;
                if ( (target == PROJ_CAN_ID ) || (target == 0 ) )
                {
                    // Service NMT
                    NMTService = TempMsg.data[0] & 0xff  ;
                }
                continue ;
            }
            // If the slave ID is PROJ_CAN_ID, this is an external CAN master. For this master, we give slave services
            // Real time does nothing with it , just handles the demand to the CAN slave at the idle loop
            if ( SlaveId == PROJ_CAN_ID )
            {
                next = ( CanSlaveInQueue.nPut + 1 ) & (CanSlaveInQueue.nQueue-1) ;
                if ( next != CanSlaveInQueue.nGet )
                {
                    CanSlaveInQueue.Msg[CanSlaveInQueue.nPut] = TempMsg ;
                    CanSlaveInQueue.nPut = next ;
                }
                continue ;
            }
        }
    }

}


/**
 * @brief Time out exception handler   abort
 */
short CanExceptionKill( struct CCanTrap * me )
{
    LogException ( me->GetCobId & 0x7f , EXP_FATAL , exp_bootout_timeout ) ;
    return 0 ;
}

/**
 * @brief SDO Time out exception handler  abort
 */
short CanExceptionSdoFail( struct CCanTrap * me )
{
    LogException ( me->GetCobId & 0x7f , EXP_FATAL , exp_sdo_timeout ) ;
    return 0 ;
}








