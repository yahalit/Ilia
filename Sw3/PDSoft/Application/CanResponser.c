
/*
* CanResponser.c
*
*  Created on: Sep 19, 2016
*      Author: Yahali Theodor
*/

#include "PdCanResponser.h"
#include "..\PdLpShared\CanDriver.h"
#include "PdStructDef.h"
#include "..\PdLpShared\ErrorCodes.h"


extern long long SysTimer;

struct CCanTrap * AllocateTrap ();

/*
#define N_DELAY_PROCESS_CANQ 16
struct CCanMsg DelayProcessQueue[N_DELAY_PROCESS_CANQ];
short  unsigned nDelayProcessPut;
short  unsigned nDelayProcessGet;
*/

/**
* @brief Store a non RT message for idle processing
*
* No need for FIFO - the idle should read starting at index zero,
* and read only the top message in a critical.
*
* @return 0: ok , -1: queue is full

short PutCan4DelayProcess(struct CCanMsg *pMsg)
{
	short unsigned next;
	next = ( nDelayProcessPut + 1 ) & (N_DELAY_PROCESS_CANQ-1 ) ;
	if( next != nDelayProcessGet  )
	{
		DelayProcessQueue[nDelayProcessPut] = *pMsg;
		nDelayProcessPut = next;
		return 0;
	}
	return -1; // Error - queue is full
}
*/




 /*
* @brief handle the CAN communication in the real time.
*
* The brought messages are first of all classified as:
* - PDO which should react immediately
* - Emergency that should be reacting by stopping the machine
* - Other things are treated at the idle
*/
struct CCanMsg TempMsg;

long unsigned GTxRdy;

long unsigned   GetAllReadyTransmitters(volatile long unsigned * pCan);

void RtCanHandler(void)
{
	short stat;
	//short unsigned cobType;
	short unsigned SlaveId;
	short unsigned next;
	short unsigned Next;
	struct CCanMsg  *pMsg;
	//struct CCanMsg PdoTx1 ;

	GetCanState(CAN_REGSA);

	// Get recepted messages
	if ( SysStatePD.CanRxEnable )
	{
		while( GetCanMsgFromHardware(CAN_REGSA, &TempMsg) >= 0 )
		{
			// Decide by the COB ID what to do
			if( TempMsg.UseLongId )
			{
				continue; // Discard
			}

			// Pass to slave processing: all the ID info + NMT + sync (here syncs are handled by the offline)
			SlaveId = TempMsg.cobId & 0x7f;

			CanStatistics.TotalRxCnt += 1 ;

			if( (SlaveId == PROJECT_SLAVE_ID) || (SlaveId == 0) )
			{ // Everything, including PDO, is set for idle interpretation
				next = ( CanSlaveInQueuePD.nPut + 1 ) & (CanSlaveInQueuePD.nQueue-1) ;
				if ( next != CanSlaveInQueuePD.nGet )
				{
					CanSlaveInQueuePD.Msg[CanSlaveInQueuePD.nPut] = TempMsg ;
					CanSlaveInQueuePD.nPut = next ;
				}
				continue;
			}
		}
	}
	else
	{
	    CanStatistics.MaxRxBoxLoad |= GetRxBoxLoad(CAN_REGSA) ;
	}

    if ( CanStatistics.MaxRxBoxLoad < 0 )
    { // Allow resetting
        CanStatistics.MaxRxBoxLoad = 0 ;
    }
	// Go over the slave queues - on the basis of free place
	GTxRdy = GetReadyTransmitters(CAN_REGSA);
	// GTxRdy = GetAllReadyTransmitters(CAN_REGSA);

    GTxRdy &= 0xfff0000 ; // GetReadyTransmitters(CAN_REGSA);

	// On the basis of free place - the CAN slave returns
	while ( (CanSlaveOutQueuePD.nGet != CanSlaveOutQueuePD.nPut ) && GTxRdy )
	{
		Next = GetLeadingOne(GTxRdy);
		GTxRdy &= ~(1L << Next);

		pMsg = & CanSlaveOutQueuePD.Msg[CanSlaveOutQueuePD.nGet];
		stat = SetCanMsg2Hardware(CAN_REGSA,pMsg,Next);
		if ( stat >= 0 )
		{
			CanSlaveOutQueuePD.nGet = (CanSlaveOutQueuePD.nGet+1) & ( CanSlaveOutQueuePD.nQueue -1 ) ;
		}
	}
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
	return 0 ;
}






