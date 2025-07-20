#define REC_VARS_OWNER


#include "Recorder.h"

#ifndef INTER_RECORDER_SET_ERR
#define INTER_RECORDER_SET_ERR 0x76 // [Interpreter:Error] {Recorder setting error}
#define INTER_RECORDER_NO_SIGLIST 0x77 // [Interpreter:Error] {Recorder list of sigmnals is empty}
#define INTER_RECORDER_SIGNAL_NOTPROG 0x78 // [Interpreter:Error] {A signal in the recorder list is empty}
#define INTER_RECORDER_SET_UNKNOWN_TRIGTYPE 0x79 // [Interpreter:Error] {Unknown recorder trigger type}
#endif 

short RecorderStartFlag ;
/**
 * brief: An empty trigger function; just when no trigger is required
 */
short EmptyRecorderTrigger(void)
{
	return 0 ; // No trigger
}

/**
 * brief: A trivial trigger function; always trigger
 */
short ImmediateRecorderTrigger(void)
{
	Recorder.Ready4Trigger = 1;
	return 1 ; // Trigger now
}

short FlagRecorderTrigger(void)
{
    if ( RecorderStartFlag)
    {
        Recorder.Ready4Trigger = 1;
        return 1 ; // Trigger now
    }
    else
    {
        return 0 ;
    }
}



short RecorderUpFloatTrigger(void)
{
	float junk ;
	short cmp ;
	junk = * (( float*) Recorder.TriggerPtr ) ;
	cmp  = ( junk >= Recorder.TriggerFloatVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}


short RecorderDnFloatTrigger(void)
{
	float junk ;
	short cmp ;
	junk = * (( float*) Recorder.TriggerPtr ) ;
	cmp  = ( junk <= Recorder.TriggerFloatVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}


short RecorderEqFloatTrigger(void)
{
    float junk ;
    short cmp ;
    junk = * (( float*) Recorder.TriggerPtr ) ;
    cmp  = ( junk == Recorder.TriggerFloatVal ) ? 1 : 0 ;
    if ( Recorder.Ready4Trigger == 0 )
    {
        if ( cmp == 0 )
        {
            Recorder.Ready4Trigger = 1;
        }
    }
    else
    {
        if ( cmp )
        {
            return 1 ;
        }
    }
    return 0 ;
}




short RecorderUpSuTrigger(void)
{
	short unsigned junk ;
	short cmp ;
	junk = * (( short unsigned *) Recorder.TriggerPtr ) ;
	cmp  = ( junk >= (short unsigned)Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}




short RecorderEqSuTrigger(void)
{
    short unsigned junk ;
    short cmp ;
    junk = * (( short unsigned *) Recorder.TriggerPtr ) ;
    cmp  = ( junk == (short unsigned)Recorder.TriggerLongVal ) ? 1 : 0 ;
    if ( Recorder.Ready4Trigger == 0 )
    {
        if ( cmp == 0 )
        {
            Recorder.Ready4Trigger = 1;
        }
    }
    else
    {
        if ( cmp )
        {
            return 1 ;
        }
    }
    return 0 ;
}


short RecorderDnSuTrigger(void)
{
	short unsigned junk ;
	short cmp ;
	junk = * (( short unsigned *) Recorder.TriggerPtr ) ;
	cmp  = ( junk <= (short unsigned)Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}


/**
 * \brief Recorder trigger on rising edge, short variable
 */
short RecorderUpSTrigger(void)
{
	short junk ;
	short cmp ;
	junk = * (( short  *) Recorder.TriggerPtr ) ;
	cmp  = ( junk >= (short )Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}

/**
 * \brief Recorder trigger on falling edge, short variable
 */
short RecorderDnSTrigger(void)
{
	short junk ;
	short cmp ;
	junk = * (( short  *) Recorder.TriggerPtr ) ;
	cmp  = ( junk <= (short )Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}

short RecorderEqSTrigger(void)
{
    short junk ;
    short cmp ;
    junk = * (( short  *) Recorder.TriggerPtr ) ;
    cmp  = ( junk == (short )Recorder.TriggerLongVal ) ? 1 : 0 ;
    if ( Recorder.Ready4Trigger == 0 )
    {
        if ( cmp == 0 )
        {
            Recorder.Ready4Trigger = 1;
        }
    }
    else
    {
        if ( cmp )
        {
            return 1 ;
        }
    }
    return 0 ;
}
////////////////////////////////////////////////////////////////////////
/**
 * \brief Recorder trigger on rising edge, long unsigned variable
 */

short RecorderUpLuTrigger(void)
{
	long unsigned junk ;
	short cmp ;
	junk = * (( long unsigned *) Recorder.TriggerPtr ) ;
	cmp  = ( junk >= (long unsigned)Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}

/**
 * \brief Recorder trigger on falling edge, long unsigned variable
 */

short RecorderDnLuTrigger(void)
{
	long unsigned junk ;
	short cmp ;
	junk = * (( long unsigned *) Recorder.TriggerPtr ) ;
	cmp  = ( junk <= (long unsigned)Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}



short RecorderEqLuTrigger(void)
{
    long unsigned junk ;
    short cmp ;
    junk = * (( long unsigned *) Recorder.TriggerPtr ) ;
    cmp  = ( junk == (long unsigned)Recorder.TriggerLongVal ) ? 1 : 0 ;
    if ( Recorder.Ready4Trigger == 0 )
    {
        if ( cmp == 0 )
        {
            Recorder.Ready4Trigger = 1;
        }
    }
    else
    {
        if ( cmp )
        {
            return 1 ;
        }
    }
    return 0 ;
}


short RecorderUpLTrigger(void)
{
	long junk ;
	short cmp ;
	junk = * (( long  *) Recorder.TriggerPtr ) ;
	cmp  = ( junk >= (long )Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}

short RecorderDnLTrigger(void)
{
	long junk ;
	short cmp ;
	junk = * (( long  *) Recorder.TriggerPtr ) ;
	cmp  = ( junk <= (long )Recorder.TriggerLongVal ) ? 1 : 0 ;
	if ( Recorder.Ready4Trigger == 0 )
	{
		if ( cmp == 0 )
		{
			Recorder.Ready4Trigger = 1;
		}
	}
	else
	{
		if ( cmp )
		{
			return 1 ;
		}
	}
	return 0 ;
}


short RecorderEqLTrigger(void)
{
    long junk ;
    short cmp ;
    junk = * (( long  *) Recorder.TriggerPtr ) ;
    cmp  = ( junk == (long )Recorder.TriggerLongVal ) ? 1 : 0 ;
    if ( Recorder.Ready4Trigger == 0 )
    {
        if ( cmp == 0 )
        {
            Recorder.Ready4Trigger = 1;
        }
    }
    else
    {
        if ( cmp )
        {
            return 1 ;
        }
    }
    return 0 ;
}


/**
 * brief: Initialize the recorder database
 */
void InitRecorder(long FastIntsInC, long FastTsUsec , long unsigned SdoBufLenLongs)
{
	short unsigned cnt ;
	MemClr((short unsigned *)&Recorder,sizeof(struct CRecorder)  ) ;
    MemClr((short unsigned *)&Recorder2,sizeof(struct CRecorder2)  ) ;

	Recorder.FastIntsInC = FastIntsInC ;
	Recorder.FastTsUsec = FastTsUsec  ;
	Recorder.SdoBufLenLongs = SdoBufLenLongs; 

	Recorder.BufSize = REC_BUF_LEN ; // - 1 ;
	Recorder.RecorderGap = 1 ;
	Recorder.RecLength = 16 ;
	Recorder.Minus1 = -1 ;
	Recorder.TriggerFunc = EmptyRecorderTrigger;

    /*
	nrecsig = NREC_SIG-1 ;

	if ( nrecsig >= NREC_SIG)
	{
		nrecsig = NREC_SIG - 1 ; // Protect possible overflow by over-specified signal table
	}
	*/



	for ( cnt = 0 ; cnt < N_RECS_MAX ; cnt++ ) Recorder2.RecorderListIndex[cnt] = 0xffff ;

	/*
	for ( cnt = 0 ; cnt < nrecsig ; cnt++ )
	{
		RecorderSig[cnt] = RecorderSigRaw[cnt] ;
	}

	for ( cnt = nrecsig ; cnt < SIG_TABLE_SIZE ; cnt++ )
	{
		RecorderSig[cnt] = RecorderSig[cnt-1] ;
	}
	*/

	Recorder.Stopped =  3; // Never initialized

	RecorderProg = Recorder ;
    RecorderProg2 = Recorder2 ;
}



/**
 * \brief Object 0x1FFF: Set the recorder signal table
 *

long unsigned  SetRecorderTableEntry(	struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM 
	(void) pSdo; 
	(void)nData; 
	return Sub_index_does_not_exist;
#else
	short unsigned si ;
	long unsigned ul ;
	si = pSdo->SubIndex ;
	if ( si < 1 || si >= NREC_SIG)
	{
		return Sub_index_does_not_exist ;
	}
	if ( nData != 4 )
	{
		return length_of_service_parameter_does_not_match ;
	}

	ul = (long) GetUnalignedLong ((short unsigned *) pSdo->SlaveBuf);
	RecorderSig[si].ptr =  (long unsigned *) ( ul & 0xffffff ) ;
	RecorderSig[si].flags = (short unsigned) ( ( ul >> 24 ) & 0xff ) ;
#endif
	return 0 ;
}
 */



/**
 * \brief Object 0x2002: Set a signal marked by subindex
 * 						 User responsibility by object 0x2001 to get the flags and put the result correctly
 */
long unsigned  SetSignal(	struct CSdo * pSdo ,short unsigned nData)
{
	short unsigned si ;
	struct CCmdMode mode ;
	short unsigned us ;
	long  unsigned ul ;

	si = pSdo->SubIndex ;
	if ( si >= 1 && si < NREC_SIG )
	{
		mode = *( (struct CCmdMode *) RecorderSigRaw[si].flags ) ;
		if ( mode.IsShort)
		{
#ifdef _LPSIM 
			if ( RecorderSigRaw[si].ptr == 0 )
			{
				return General_parameter_incompatibility_reason ;
			}
#else
			if ((long unsigned)RecorderSigRaw[si].ptr == 0 || (long unsigned)RecorderSigRaw[si].ptr == 0xffffffff)
			{
				return General_parameter_incompatibility_reason;
			}
#endif 
			if ( nData != 2 || mode.WriteProtect)
			{
				return General_parameter_incompatibility_reason ;
			}
			us = *((short unsigned *) pSdo->SlaveBuf);
			* ((short unsigned *) RecorderSigRaw[si].ptr) = us ;
		}
		else
		{
			if ( nData != 4)
			{
				return General_parameter_incompatibility_reason ;
			}
			ul =* ((long unsigned *) pSdo->SlaveBuf);
			* ((long unsigned *) RecorderSigRaw[si].ptr) = ul ;
		}
	}
	else
	{
		return Sub_index_does_not_exist;
	}
	return 0 ;
}


/*
 * \brief Activate an already programmed recorder
 *  This function enables just the trigger of recorder action from within
 */
long  unsigned   ActivateProgrammedRecorder(void)
{
    struct CCmdMode cmd ;
    short unsigned cnt , maxlen ;
    uRecLen uss1 , uss2;
    long unsigned sr ;

    if ( RecorderProg.RecorderListLen == 0 )
    {
        return Manufacturer_error_detail + INTER_RECORDER_SET_ERR  ;
    }

    for ( cnt = 0 ; cnt < RecorderProg.RecorderListLen ; cnt++ )
    {
        if ( RecorderProg2.RecorderList[cnt] == 0 )
        {
            return Manufacturer_error_detail + INTER_RECORDER_SET_ERR  ;
        }
    }

    switch( RecorderProg.TriggerType )
    {
    case 0:
        RecorderProg.TriggerFunc = ImmediateRecorderTrigger ;
        break;
    case 1: // Up trigger
        cmd = * (( struct CCmdMode *) &  Recorder.TriggerFlags) ;

        if (  cmd.IsFloat )
        {
            RecorderProg.TriggerFunc = RecorderUpFloatTrigger ;
        }
        else
        {
            if ( cmd.IsUnsigned )
            {
                if ( cmd.IsShort )
                {
                    RecorderProg.TriggerFunc = RecorderUpSuTrigger ;
                }
                else
                {
                    RecorderProg.TriggerFunc = RecorderUpLuTrigger ;
                }
            }
            else
            {
                if ( cmd.IsShort )
                {
                    RecorderProg.TriggerFunc = RecorderUpSTrigger ;
                }
                else
                {
                    RecorderProg.TriggerFunc = RecorderUpLTrigger ;
                }
            }
        }
        break ;
    case 2: // Dn trigger
        cmd = * (( struct CCmdMode *) &  Recorder.TriggerFlags) ;
        if (  cmd.IsFloat )
        {
            RecorderProg.TriggerFunc = RecorderDnFloatTrigger ;
        }
        else
        {
            if ( cmd.IsUnsigned )
            {
                if ( cmd.IsShort )
                {
                    RecorderProg.TriggerFunc = RecorderDnSuTrigger ;
                }
                else
                {
                    RecorderProg.TriggerFunc = RecorderDnLuTrigger ;
                }
            }
            else
            {
                if ( cmd.IsShort )
                {
                    RecorderProg.TriggerFunc = RecorderDnSTrigger ;
                }
                else
                {
                    RecorderProg.TriggerFunc = RecorderDnLTrigger ;
                }
            }
        }
        break;
    case 3: // Equal trigger
        cmd = * (( struct CCmdMode *) &  Recorder.TriggerFlags) ;
        if (  cmd.IsFloat )
        {
            RecorderProg.TriggerFunc = RecorderEqFloatTrigger ;
        }
        else
        {
            if ( cmd.IsUnsigned )
            {
                if ( cmd.IsShort )
                {
                    RecorderProg.TriggerFunc = RecorderEqSuTrigger ;
                }
                else
                {
                    RecorderProg.TriggerFunc = RecorderEqLuTrigger ;
                }
            }
            else
            {
                if ( cmd.IsShort )
                {
                    RecorderProg.TriggerFunc = RecorderEqSTrigger ;
                }
                else
                {
                    RecorderProg.TriggerFunc = RecorderEqLTrigger ;
                }
            }
        }
        break ;
    case 4:
        RecorderStartFlag = 0 ;
        RecorderProg.TriggerFunc = FlagRecorderTrigger ;
        break ;
    default:
        return Manufacturer_error_detail + INTER_RECORDER_SET_ERR  ;
    }

    maxlen = REC_BUF_LEN / RecorderProg.RecorderListLen - 1 ;
    uss1 = RecorderProg.RecLength ;
    if ( uss1 > maxlen )
    {
        uss1 = maxlen ;
    }
    uss2 =  Recorder.PreTrigCnt;
    if ( uss2 >= (uss1-1))
    {
        uss2 = uss1-2 ;
    }
    sr = BlockInts() ;
    Recorder = RecorderProg ;
    Recorder2 = RecorderProg2 ;
    Recorder.RecLength = uss1 ;
    Recorder.PreTrigCnt = uss2 ;
    Recorder.TotalRecLength =  Recorder.RecLength * RecorderProg.RecorderListLen;
    Recorder.PreTrigTotalCnt = RecorderProg.PreTrigCnt* RecorderProg.RecorderListLen;
    Recorder.Active  = 1 ;
    Recorder.Ready4Trigger = 0 ;
    Recorder.Stopped = 0 ; // Activate recorder function
#ifdef _LPSIM
    Recorder.EndRec = 0xffffffff;
#else
    Recorder.EndRec = 0xffff;
#endif
    RestoreInts(sr) ;
    return 0 ;
}

/**
 * \brief Object 0x2000: Set the recorder
 *
 */
long unsigned  SetRecorder(	struct CSdo * pSdo ,short unsigned nData)
{
	short unsigned us , si ;
	long unsigned RetVal ;
	long unsigned ul ;


	if ( nData == 2 )
	{
	    us =* ((short unsigned *) pSdo->SlaveBuf);
	    ul = (long unsigned) us ;
	}
	else
	{
	    ul = * ((long unsigned *) pSdo->SlaveBuf);
	    us = (short unsigned) ul ;
	}

	si = pSdo->SubIndex ;
#ifdef _LPSIM
	if ( ( si >= 52 && si <=54) || si == 2 || si == 5 )
#else
	if ( si >= 52 && si <=54)
#endif
	{
		if ( nData != 4 )
		{
			return length_of_service_parameter_does_not_match ;
		}
	}
	else
	{
		if ( nData != 2 )
		{
			return length_of_service_parameter_does_not_match ;
		}
	}

	if ( pSdo->SubIndex >= 10 && pSdo->SubIndex < (10+N_RECS_MAX ) )
	{
		if ( us < NREC_SIG )
		{
			RecorderProg2.RecorderFlags[si-10] = RecorderSigRaw[us].flags;
			RecorderProg2.RecorderList[si-10] = RecorderSigRaw[us].ptr;
			RecorderProg2.RecorderListIndex[si-10] = us ;
		}
		else
		{
			return General_parameter_incompatibility_reason ;
		}
		return 0;
	}

	switch ( si)
	{
	case 1:
		if ( us > REC_BUF_LEN )
		{
			return General_parameter_incompatibility_reason ;
		}
		RecorderProg.RecorderGap = us ;
		break ;
	case 2:
		if ( ul >= REC_BUF_LEN )
		{
			return General_parameter_incompatibility_reason ;
		}
#ifndef _LPSIM
		RecorderProg.RecLength = us ;
#else
		RecorderProg.RecLength = ul ;
#endif
		break ;
	case 3:
		if ( us >= N_RECS_MAX )
		{
			return General_parameter_incompatibility_reason ;
		}
		RecorderProg.RecorderListLen = us ;
		break ;
	case 4:
		RecorderProg.TriggerType = us ;
		break ;
	case 5:
		if ( ul >= REC_BUF_LEN )
		{
			return General_parameter_incompatibility_reason ;
		}
#ifndef _LPSIM
        RecorderProg.PreTrigCnt = us ;
#else
        RecorderProg.PreTrigCnt = ul ;
#endif
		break;
	case 6: //0 for every interrupt, 1 sync to proc
		if ( us > 1 )
		{
			return General_parameter_incompatibility_reason ;
		}
		RecorderProg.TimeBasis = us ;
		break;

	case 7: // Index of signal to bring
		if ( us >= N_RECS_MAX )
		{
			return General_parameter_incompatibility_reason ;
		}
		RecorderProg.Sig2Bring = us ;
		break;

	case 8: // Index of first record to bring
		if ( us >= REC_BUF_LEN )
		{
			return General_parameter_incompatibility_reason ;
		}
		RecorderProg.BringStartIndex = us ;
		break ;

	case 9: // Index of last record to bring
		if ( us >= REC_BUF_LEN )
		{
			return General_parameter_incompatibility_reason ;
		}
		RecorderProg.BringEndIndex = us ;
		break ;

	case 50:
		if ( us < NREC_SIG )
		{
			RecorderProg.TriggerFlags = RecorderSigRaw[us].flags;
			RecorderProg.TriggerPtr = RecorderSigRaw[us].ptr;
		}
		else
		{
			return General_parameter_incompatibility_reason ;
		}
		break ;
/*	case 51:
		if ( us < NREC_SIG )
		{
			RecorderProg.TriggerFlags = RecorderSigRaw[us].flags;
			RecorderProg.TriggerPtr = RecorderSigRaw[us].ptr;
		}
		else
		{
			return General_parameter_incompatibility_reason ;
		}
		break ;*/
	case 52: //long value for threshold
		RecorderProg.TriggerLongVal  = (long) GetUnalignedLong ((short unsigned *) pSdo->SlaveBuf);
		RecorderProg.TriggerFloatVal = (float)RecorderProg.TriggerLongVal  ;
		break ;
	case 53: //long float for threshold
		RecorderProg.TriggerFloatVal= GetUnalignedFloat ((short unsigned *) pSdo->SlaveBuf);
		RecorderProg.TriggerLongVal = (long)RecorderProg.TriggerFloatVal  ;
		break ;

	case 100:
	    RecorderStartFlag = 0 ;
	    RetVal = ActivateProgrammedRecorder() ;
	    if ( RetVal ) return RetVal ;
	    break ;

    case 101:
        RecorderStartFlag = 1  ;
        break ;

	}
	return 0 ;
}




/**
 * \brief Object 0x2002: Get flags for a signal marked by subindex
 * 						 works together with object 0x2002
 */
long unsigned  GetSignalFlags(	struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si ;
	short unsigned *sPtr ;
	si = pSdo->SubIndex ;
	if ( si >= 1 && si < NREC_SIG )
	{
		sPtr = (short unsigned *) &pSdo->SlaveBuf[0] ;
		sPtr[0] = RecorderSigRaw[si].flags ;
	}
	else
	{
		return Sub_index_does_not_exist;
	}
	*nData = 2 ;
	return 0 ;
}


/**
 * \brief Object 0x2002: Get a signal marked by subindex
 * 						 User responsibility by object 0x2001 to get the flags and interpret the result correctly
 */
long unsigned  GetSignal(	struct CSdo * pSdo ,short unsigned *nData)
{
	short unsigned si ;
	short unsigned *sPtr ;
	struct CCmdMode mode ;

	si = pSdo->SubIndex ;
	if ( si >= 1 && si < NREC_SIG )
	{
#ifdef _LPSIM 
		if ( RecorderSigRaw[si].ptr == 0 )
#else
		if ((long unsigned)RecorderSigRaw[si].ptr == 0 || (long unsigned)RecorderSigRaw[si].ptr == 0xffffffff)
#endif 
		{
			return General_parameter_incompatibility_reason ;
		}
		* ((long unsigned *) &pSdo->SlaveBuf[0] ) = (* RecorderSigRaw[si].ptr);
		mode = *( (struct CCmdMode *) RecorderSigRaw[si].flags ) ;
		if( mode.IsShort )
		{
			sPtr = (short unsigned *) &pSdo->SlaveBuf[0] ;
			sPtr[1] = 0 ;
			if ( mode.IsUnsigned == 0 && (sPtr[0] & 0x8000) )
			{
				sPtr[1] = 0xffff ;
			}
		}
	}
	else
	{
		return Sub_index_does_not_exist;
	}
	*nData = 4 ;
	return 0 ;
}

/////////////////////////////////
// Get recorder object 0x2000 Get
/////////////////////////////////

long unsigned  GetRecorder(	struct CSdo * pSdo ,short unsigned *nData)
{


	short unsigned si , cnt ;
	long unsigned *lPtr ;
	long unsigned  reclen, recnext;
	struct CCmdMode mode ;

	extern long unsigned GetSamplingTime( short unsigned ind);

	si = pSdo->SubIndex ;

	if ( pSdo->SubIndex >= 10 && pSdo->SubIndex < (10+N_RECS_MAX ) )
	{
		* ((long unsigned *) &pSdo->SlaveBuf[0] ) =
				Recorder2.RecorderListIndex[si-10]  +
					((long unsigned)Recorder2.RecorderFlags[si-10] << 16 ) ;
		*nData = 4 ;
		return 0;
	}

	switch ( si)
	{
	case 1:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.RecorderGap  ;
		*nData = 2 ;
		break ;
	case 2:
#ifdef _LPSIM
		* ((long unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.RecLength  ;
		*nData = 4 ;
#else
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.RecLength  ;
		*nData = 2 ;
#endif
		break ;
	case 3:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.RecorderListLen  ;
		*nData = 2 ;
		break ;
	case 4:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.TriggerType  ;
		*nData = 2 ;
		break ;
	case 5:
#ifdef _LPSIM
		* ((long unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.PreTrigCnt  ;
		*nData = 4 ;
#else
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.PreTrigCnt  ;
		*nData = 2 ;
#endif
		break;
	case 6:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.TimeBasis  ;
		*nData = 2 ;
		break;
	case 7:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = RecorderProg.Sig2Bring  ;
		*nData = 2 ;
		break;
	case 8:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = RecorderProg.BringStartIndex  ;
		*nData = 2 ;
		break;
	case 9:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = RecorderProg.BringEndIndex  ;
		*nData = 2 ;
		break;

	case 60:
		* ((long unsigned *) pSdo->SlaveBuf ) = REC_BUF_LEN  ;
		*nData = 4 ;
		break ;
	case 61:
		* ((short unsigned *) pSdo->SlaveBuf ) = N_RECS_MAX  ;
		*nData = 2 ;
		break ;
	case 62:
		* ((long unsigned *) pSdo->SlaveBuf ) =  GetSamplingTime(0)  ;
		*nData = 2 ;
		break ;
	case 63:
		* ((long unsigned *) pSdo->SlaveBuf ) = (long unsigned) GetSamplingTime(1)  ;
		*nData = 4 ;
		break ;


	case 90: // Actual recorder sample time in usec 
		* ((long unsigned *) &pSdo->SlaveBuf[0] ) =  (( Recorder.TimeBasis ) ? Recorder.FastIntsInC : 1 ) * Recorder.FastTsUsec * Recorder.RecorderGap ;
		*nData = 4 ;
		break;
	case 99:
		* ((short unsigned *) &pSdo->SlaveBuf[0] ) = (short unsigned)( Recorder.Stopped
				+ ( Recorder.Ready4Trigger << 1 ) + (Recorder.TriggerActive << 2)  + ( Recorder.Active << 4)) ;
		*nData = 2 ;
		break;
	case 100:
		if ( Recorder.Stopped != 1 ||
				(RecorderProg.Sig2Bring >= Recorder.RecorderListLen ))

		{
			return Manufacturer_error_detail + INTER_RECORDER_SET_ERR  ;
		}

		if ( (RecorderProg.BringStartIndex > RecorderProg.BringEndIndex ) ||
				( RecorderProg.BringStartIndex >= Recorder.RecLength ) ||
				( RecorderProg.BringEndIndex >= Recorder.RecLength ) )
		{
			return ( Manufacturer_error_detail + INTER_RECORDER_SET_ERR )  ;
		}

		reclen = RecorderProg.BringEndIndex - RecorderProg.BringStartIndex + 1 ;

		if ( reclen > Recorder.SdoBufLenLongs)
		{
			return Out_of_memory ;
		}

		recnext = ( Recorder.StartRec+RecorderProg.Sig2Bring +
					RecorderProg.BringStartIndex*Recorder.RecorderListLen);
		while ( recnext >=REC_BUF_LEN )
		{
		    recnext -= REC_BUF_LEN;
		}
							//& (REC_BUF_LEN -1) ;
		lPtr = & RecorderBuffer[ recnext  ];

		mode = * ( (struct CCmdMode*) & Recorder2.RecorderFlags[RecorderProg.Sig2Bring] ) ;


		for ( cnt = 0 ; cnt < reclen ; cnt++)
		{
			if ( mode.IsShort  )
			{
				if ( mode.IsUnsigned )
				{
					*lPtr = * ((short unsigned *)lPtr) ;
				}
				else
				{
					* (long *)lPtr = * ((short*)lPtr) ;
				}
			}

			pSdo->SlaveBuf[cnt] = *lPtr ;
			recnext = ( recnext + Recorder.RecorderListLen ) ;//& (REC_BUF_LEN -1) ;
	        while ( recnext >=REC_BUF_LEN )
	        {
	            recnext -= REC_BUF_LEN;
	        }
			lPtr = & RecorderBuffer[ recnext  ];
			//break;
		}

		*nData = (unsigned short) (reclen * 4 ) ;
		break ;
	default:
		return Sub_index_does_not_exist;
	}
	return 0 ;
}




