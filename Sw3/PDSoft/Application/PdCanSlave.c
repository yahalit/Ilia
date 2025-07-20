//#include "F28x_Project.h"     // DSP28x Headerfile
//#include <PdCanSlave.h>

#include "PdStructDef.h"
//#include "F28x_Project.h"
#include "PdCanResponser.h"
#include "..\PdLpShared\CanDriver.h"

extern const struct CObjDictionaryItem ObjDictionaryItemPD [];

/**
 * \brief Find the dictionary item that fits a given index
 *
 * \detail Because of short dictionary, just running over all the records is cheapest
 *
 * \param Index 		: The index to search
 * \param pObject_in 	: The found object record
 * \return index in dict if ok, -1 no such object
 */
short GetObjIndexPD(short unsigned Index , struct CObjDictionaryItem **pObject_in)
{
	short unsigned cnt ;
	extern short unsigned GetOdSizePD( void ) ;
	struct CObjDictionaryItem *pObject;
	for ( cnt = 0 ; cnt < GetOdSizePD() ; cnt++)
	{
		pObject = (struct CObjDictionaryItem *) &ObjDictionaryItemPD[cnt] ;
		if ( pObject->Index == Index )
		{
			*pObject_in =  pObject ;
			return cnt ;
		}
	}
	return -1 ;
}



/**
 * \brief: Put record into CAN slave output queue
 *
 * \param pMsg-> Message to insert
 * \return 0 if ok, -1 if queue was full
 */
short PutCanSlaveQueuePD( struct CCanMsg * pMsg , struct CCanQueue * pQueue)
{
	long unsigned sr ;
	short unsigned Next ;
	short RetVal ;
	//struct CCanQueue * pQueue ;

	//pQueue = &CanSlaveOutQueuePD ;

	RetVal = 0 ;
	sr  = BlockInts() ;
	Next = ( pQueue->nPut + 1 ) & (pQueue->nQueue-1);
	if ( Next == pQueue->nGet )
	{
		RetVal =-1 ;
		pQueue->nGet  = ( pQueue->nGet  + 1 )& (pQueue->nQueue-1);
	}
	pQueue->Msg[pQueue->nPut] = *pMsg ;
	pQueue->nPut = Next ;
	RestoreInts(sr ) ;
	return RetVal ;
}

/**
 * \brief Prepare and send an SDO abort message for a given code
 *
 * \param Error code
  */
short AbortSlaveSdoPD( long unsigned code  )
{
	struct CCanMsg  Msg ;
	struct CSdo * pSdo = &SlaveSdoPD;
	pSdo->Status = -1 ; // Kill Sdo
	Msg.UseLongId = 0 ;
	Msg.cobId = ( 0xb << 7 ) + pSdo->SlaveID ;
	Msg.dLen = 8 ;
	Msg.data[0] = (4L<<5) + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
	Msg.data[1] = code ;
	return PutCanSlaveQueuePD( &Msg, &CanSlaveOutQueuePD);
}

short SlaveSdoConfirmInitDloadPD( struct CSdo *pSdo  )
{
	struct CCanMsg  Msg ;
	Msg.UseLongId = 0 ;
	Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
	Msg.dLen = 8 ;
	Msg.data[0] = (3L<<5) + ( (long unsigned)pSdo->Index << 8 ) + ( (long unsigned)pSdo->SubIndex << 24 );
	Msg.data[1] = 0 ;
	return PutCanSlaveQueuePD( &Msg , &CanSlaveOutQueuePD);
}

short SlaveSdoConfirmInitUploadExpeditPD(struct CSdo * pSdo , long unsigned data , short unsigned n )
{
	struct CCanMsg  Msg ;
	Msg.UseLongId = 0 ;
	Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID;
	Msg.dLen = 8 ;
	Msg.data[0] = 0x43 + (((4-n )<<2) & 0xc )
			+ (((long unsigned) pSdo->Index ) << 8 )
			+ (((long unsigned) pSdo->SubIndex ) << 24 ) ;
	Msg.data[1] = data ;
	return PutCanSlaveQueuePD( &Msg, &CanSlaveOutQueuePD );
}

short SlaveSdoConfirmInitUploadSegmentedPD(struct CSdo * pSdo , short unsigned n )
{
	struct CCanMsg  Msg ;
	Msg.UseLongId = 0 ;
	Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
	Msg.dLen = 8 ;
	Msg.data[0] = 0x41
	+ (((long unsigned) pSdo->Index ) << 8 )
	+ (((long unsigned) pSdo->SubIndex ) << 24 ) ;
	Msg.data[1] = (long unsigned) n  ;
	return PutCanSlaveQueuePD( &Msg, &CanSlaveOutQueuePD );
}

short SlaveSdoUploadSegmentedPD(struct CSdo * pSdo )
{
	struct CCanMsg  Msg ;
	short unsigned remain , cnt  ;
	short unsigned * pload ;
	short unsigned * pdat  ;
	short unsigned odat ;
	short unsigned oload , next ;

	Msg.UseLongId = 0 ;
	Msg.cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
	Msg.dLen = 8 ;

	remain = pSdo->Bytes2Dload - pSdo->ByteCnt ;

	if ( remain <= 7 )
	{
		Msg.data[0] = pSdo->toggle + 1 + ((7-remain)<<1) ;
		pSdo->Status = 0 ; // Gamarnu
	}
	else
	{
		Msg.data[0] = pSdo->toggle ;
		remain = 7 ;
	}
	Msg.data[1] = 0;
	pSdo->toggle = 0x10 - pSdo->toggle ;

	pdat = (short unsigned *) & Msg.data[0] ;
	odat = 1 ;
	pload = ((short unsigned*)pSdo->SlaveBuf) + ( pSdo->ByteCnt >> 1 ) ;
	oload = pSdo->ByteCnt & 1 ;
	for ( cnt = 0 ; cnt < remain ; cnt++ )
	{
		if ( oload )
		{
			next = *pload >> 8 ;
			oload = 0 ;
			pload += 1 ;
		}
		else
		{
			next = *pload & 0xff ;
			oload = 1 ;
		}

		if ( odat )
		{
			*pdat |= (next<<8) ;
			pdat += 1 ;
			odat = 0 ;
		}
		else
		{
			*pdat = next ;
			odat  = 1 ;
		}
	}
	pSdo->ByteCnt += remain ;
	return PutCanSlaveQueuePD( &Msg, &CanSlaveOutQueuePD );
}


/**
 * \brief Add a new SDO data to buffer.
 *
 * \warning buf storage sufficiency is not checked, it is user responsibility
 * \param data: Data to add
 * \param Last: The number of bytes already filled into buf
 * \param NextBytes: The amount of bytes to insert
 * \param buf      : buffer to which we append the new bytes
 *
 * \return New amount of filled bytes in buffer
 */
long unsigned AddSdo2BufPD ( struct CSdo * pSdo , struct CCanMsg* pMsg, struct CCanMsg* RetMsg )
{
	short unsigned remain , in_mess , cnt , c , t ;
	short unsigned * pload ;
	short unsigned * pdat  ;
	short unsigned odat ;
	short unsigned oload , next ;

	RetMsg->UseLongId = 0 ;
	RetMsg->cobId = ( 0xb << 7 )  + pSdo->SlaveID ;
	RetMsg->dLen = 8 ;

	t   = ( pMsg->data[0] & (1<<4) )  ;
	if ( t != SlaveSdoPD.toggle)
	{
		return Toggle_bit_not_alternated;
	}

	c = ((  pMsg->data[0] & 0x1 ) ? 1 : 0 ) ;

	if ( pSdo->ByteCnt > pSdo->Bytes2Dload)
	{
		return General_parameter_incompatibility_reason ;
	}

	remain = pSdo->Bytes2Dload - pSdo->ByteCnt ;
	in_mess = 7 - (( pMsg->data[0] >> 1 ) & 0x7 ) ;

	if ( in_mess > remain )
	{
		return General_parameter_incompatibility_reason ;
	}

	if ( c )
	{
		pSdo->Bytes2Dload = pSdo->ByteCnt + in_mess ;
		pSdo->Status = 0 ; // Gamarnu
	}



	RetMsg->data[0] = pSdo->toggle + (1<<5) ;
	RetMsg->data[1] = 0;
	pSdo->toggle = 0x10 - pSdo->toggle ;

	pdat = (short unsigned *) & pMsg->data[0] ;
	odat = 1 ;
	pload = ((short unsigned*)pSdo->SlaveBuf) + ( pSdo->ByteCnt >> 1 ) ;
	oload = pSdo->ByteCnt & 1 ;

	for ( cnt = 0 ; cnt < in_mess ; cnt++ )
	{
		if ( odat )
		{
			next = (*pdat) >> 8 ;
			odat = 0 ;
			pdat += 1 ;
		}
		else
		{
			next = *pdat & 0xff ;
			odat = 1 ;
		}
		if ( oload )
		{
			*pload |= (next<<8) ;
			pload += 1 ;
			oload = 0 ;
		}
		else
		{
			*pload = next ;
			oload  = 1 ;
		}
	}
	pSdo->ByteCnt += in_mess ;
	return 0 ;
}

/**
 * \brief Very limited CAN slave, purposed for debugging only
 *
 * \detail CAN ID is always PROJECT_SLAVE_ID, fixed
 * 		   Most of the objects are very simple expedit type downloads
 *
 * 		   Set commands normally replicate the code mode and index
 * 		   They return the response code as long.
 *
 *
 */



void CanSlavePD ()
{
	long unsigned sr ;
	short unsigned CobType ;
	short unsigned cs , exp , n , s    ;
	long  stat ;
	struct CCanMsg  Msg ;
	struct CCanMsg  RetMsg ;
	short unsigned * uPtr ;
	struct CSdo * pSdo ;
	struct CObjDictionaryItem *pOdObject ;
	extern short OperSyncReport( void ) ;
	extern long unsigned SetControlAndLaser ( short unsigned * uPtr );
	extern long unsigned SetLaserOnly( short unsigned * uPtr );
	pSdo = & SlaveSdoPD ;


	sr  = BlockInts() ;
	{
		Msg = CanSlaveInQueuePD.Msg[CanSlaveInQueuePD.nGet] ;
		CanSlaveInQueuePD.nGet = ( CanSlaveInQueuePD.nGet + 1 )  & (CanSlaveInQueuePD.nQueue-1) ;
	}
	RestoreInts(sr ) ;

	CobType = (short unsigned) (Msg.cobId >> 7) ;

	if ( CobType == 0x1 )
	{  // Sync - just transmit, all commands were accepted by SDO
		OperSyncReport(  ) ;
		return ;
	}

	if ( CobType == 0x4 )
	{  // Accepted PDO 1
		// Control word and laser
        uPtr =  (short unsigned * ) & Msg.data[0] ;
        if ( uPtr[3] == 0x1234 )
        {
             if ( SysStatePD.DisablePdoProc == 0 )
             {
                 SetControlAndLaser ( uPtr ) ;
             }
             else
             {
                 SetLaserOnly ( uPtr ) ;
             }
        }
        if ( uPtr[3] == 0x5678 )
        {
            SetControlAndLaser(uPtr ) ;
        }
        return ;
	}


	// SDO
	if ( CobType == 0xc ) // 0xc is SDO RX , 0xb is SDO TX
	{
	    CanStatistics.SdoCobCnt += 1 ;
		if ( SlaveSdoPD.Status <= 0 )
		{ // Waiting start of new SDO
			cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
			exp = ( Msg.data[0] & 0x2 ) >> 1 ;
			n   = ( Msg.data[0] & 0xc ) >> 2 ;
			s   = (short unsigned) ( Msg.data[0] & 0x1 ) ;
			SlaveSdoPD.Index = ( Msg.data[0] >> 8 ) & 0xffff ;
			SlaveSdoPD.SubIndex = ( Msg.data[0] >> 24 ) & 0xff  ;
			SlaveSdoPD.toggle = 0 ;
			SlaveSdoPD.SlaveID  = Msg.cobId & 0x7f ;

			if ( GetObjIndexPD(SlaveSdoPD.Index , & pOdObject ) < 0 )
			{
				AbortSlaveSdoPD ( Object_does_not_exist_in_the_object_dictionary );
				return ;
			}

			// If previous SDO terminated by error , forget it
			SlaveSdoPD.Status = 0 ;

			switch ( cs)
			{
			case 1: // Download SDO
		        CanStatistics.DloadSdoCnt += 1 ;

				// Initiate download
				if ( pOdObject->SetFunc == (SetDictFunc) 0  )
				{
					AbortSlaveSdoPD ( Unsupported_access_to_an_object );
					return ;
				}
				if (exp)
				{
					pSdo->SlaveBuf[0] = Msg.data[1] ;
					/*
					if ( s && ((4-n) != pOdObject->bytelen ) )
					{
						AbortSlaveSdo ( length_of_service_parameter_does_not_match );
						return ;
					}
					*/
					if ( s == 0 )
					{
						n = 4 - pOdObject->bytelen ;
					}
					stat = pOdObject->SetFunc(&SlaveSdoPD,4-n) ;
					if ( stat )
					{
						AbortSlaveSdoPD( stat );
						return ;
					}
				}
				else
				{
					if ( s  )
					{
						SlaveSdoPD.Bytes2Dload = (short unsigned) Msg.data[1] ;
						if ( SlaveSdoPD.Bytes2Dload > ( 4 * sizeof( SlaveSdoBufPD) - 1 ))
						{
							AbortSlaveSdoPD( Out_of_memory);
							return ;
						}
					}
					else
					{// Size not specified: allow maximum
						SlaveSdoPD.Bytes2Dload =  4 * sizeof( SlaveSdoBufPD) - 1 ;
					}
					SlaveSdoPD.ByteCnt = 0; // Nothing sent yet
					SlaveSdoPD.Status = 1 ; // Go to the download stage
					SlaveSdoPD.ExpectedCs = 0; // Next code sequence should be 3
				}
                CanStatistics.DloadSdoResponseCnt += 1 ;
				SlaveSdoConfirmInitDloadPD(&SlaveSdoPD ) ;
				break ;
			case 2: // Upload SDO
                CanStatistics.UloadSdoCnt += 1 ;
				// Initiate download
				if ( pOdObject->GetFunc == (GetDictFunc) 0  )
				{
					AbortSlaveSdoPD ( Unsupported_access_to_an_object );
					return ;
				}

				stat = pOdObject->GetFunc(&SlaveSdoPD,&n) ;
				if ( stat )
				{
					AbortSlaveSdoPD( stat );
					return ;
				}
				SlaveSdoPD.Bytes2Dload = n ;

				// Slave SDO function did not export any message. It simply wrote n bytes
				// into PdSlaveSdoBuf. We next have to decide if expedit it.
                CanStatistics.DloadSdoResponseCnt += 1 ;
				if ( n <= 4)
				{ // That will be expedited
					SlaveSdoConfirmInitUploadExpeditPD(&SlaveSdoPD,SlaveSdoBufPD[0],n) ;
					SlaveSdoPD.Status = 0 ; // Go to the download stage
				}
				else
				{ // That will be segmented
					SlaveSdoConfirmInitUploadSegmentedPD(&SlaveSdoPD,n) ;
					SlaveSdoPD.Status = 1 ; // Go to the download stage
					SlaveSdoPD.ByteCnt = 0 ;
					SlaveSdoPD.toggle = 0;
					SlaveSdoPD.ExpectedCs = 3;
				}

				break ;
			default:
				// Could not identify SDO state or match ccs
				AbortSlaveSdoPD( General_parameter_incompatibility_reason);
			}
			return ;
		}

		if ( SlaveSdoPD.Status == 1  )
		{ // Already within a segmented download SDO
			cs = ( Msg.data[0] & 0xe0 ) >> 5 ;
			if ( cs != SlaveSdoPD.ExpectedCs  )
			{
				AbortSlaveSdoPD(Client_server_command_specifier_not_valid_or_unknown) ;
				return ;
			}

			switch ( cs)
			{
			case 0:
			// SDO segmented download

				stat = AddSdo2BufPD ( pSdo , &Msg , &RetMsg ) ;
				if ( stat )
				{
					AbortSlaveSdoPD( stat );
					return ;
				}

                if ( pSdo->Status == 0  )
                {
                    stat = GetObjIndexPD(pSdo->Index , & pOdObject ) ;

                    if ( stat >= 0 )
                    {
                        stat = pOdObject->SetFunc(pSdo,SlaveSdoPD.ByteCnt) ;
                    }
                    else
                    {
                        stat = Client_server_command_specifier_not_valid_or_unknown ;
                    }
                    if ( stat )
                    {
                        AbortSlaveSdoPD( stat);
                        return ;
                    }
                }
                PutCanSlaveQueuePD( &RetMsg, &CanSlaveOutQueuePD );
				break;
			case 3:
				// SDO segmented upload
				SlaveSdoUploadSegmentedPD( &SlaveSdoPD  );
				break ;
			default:
				// Could not identify SDO state or match ccs
				AbortSlaveSdoPD( General_parameter_incompatibility_reason);
			}
			return ;
		}
		// Could not identify SDO state or match ccs
		AbortSlaveSdoPD( General_parameter_incompatibility_reason);
	}
}



