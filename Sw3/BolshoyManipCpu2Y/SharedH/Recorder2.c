
#define REC_VARS_OWNER



#include "Recorder2.h"

#ifndef INTER_RECORDER_SET_ERR
#define INTER_RECORDER_SET_ERR 0x76 // [Interpreter:Error] {Recorder setting error}
#define INTER_RECORDER_NO_SIGLIST 0x77 // [Interpreter:Error] {Recorder list of sigmnals is empty}
#define INTER_RECORDER_SIGNAL_NOTPROG 0x78 // [Interpreter:Error] {A signal in the recorder list is empty}
#define INTER_RECORDER_SET_UNKNOWN_TRIGTYPE 0x79 // [Interpreter:Error] {Unknown recorder trigger type}
#endif



/**
 * brief: Initialize the recorder database
 */
void InitRecorder(void)
{
    short unsigned cnt , flags ;
    MemClr((short unsigned *)&Recorder,sizeof(struct CRecorder)  ) ;

    //Recorder.RecLength = 16 ;
    Recorder.pBuffer =  S2M.Items.Records.buf ;

    for ( cnt = 0 ; cnt < N_RECS_MAX ; cnt++ )
    {
        Recorder.RecorderListIndex[cnt] = cnt ;
        Recorder.RecorderList[cnt] = RecorderSigRaw[cnt].ptr;
        flags = RecorderSigRaw[cnt].flags ;
        Recorder.RecorderFlags[cnt] = flags;
        S2M.Items.Records.flags[cnt] = flags ;
    }
}



/**
 * \brief Object 0x1FFF: Set the recorder signal table
 *

long unsigned  SetRecorderTableEntry(   struct CSdo * pSdo ,short unsigned nData)
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
 *                       User responsibility by object 0x2001 to get the flags and put the result correctly
 */
long unsigned  SetSignal(   struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    struct CCmdMode mode ;
    short unsigned us ;
    long  unsigned ul ;

    si = pSdo->SubIndex ;
    if ( si < NREC_SIG )
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
    S2M.Items.ActStatus.stat.RecorderTrigger += 1 ;
    return 0 ;
}

/**
 * \brief Object 0x2000: Set the recorder
 *
 */
long unsigned  SetRecorder( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned us , si , ind ;
    long unsigned ul , mask ;


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
            ind = si - 10 ;
            mask = BlockInts() ;
            Recorder.RecorderFlags[ind] = RecorderSigRaw[us].flags;
            S2M.Items.Records.flags[ind] = RecorderSigRaw[us].flags; ;
            Recorder.RecorderList[ind] = RecorderSigRaw[us].ptr;
            Recorder.RecorderListIndex[ind] = us ;
            RestoreInts(mask) ;
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        return 0;
    }

    return Sub_index_does_not_exist ;

}




/**
 * \brief Object 0x2002: Get flags for a signal marked by subindex
 *                       works together with object 0x2002
 */
long unsigned  GetSignalFlags(  struct CSdo * pSdo ,short unsigned *nData)
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
 *                       User responsibility by object 0x2001 to get the flags and interpret the result correctly
 */
long unsigned  GetSignal(   struct CSdo * pSdo ,short unsigned *nData)
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
        mode = *( (struct CCmdMode *) RecorderSigRaw[si].flags ) ;
        if( mode.IsShort )
        {
            sPtr = (short unsigned *) &pSdo->SlaveBuf[0] ;
            sPtr[0] =  * ((short unsigned *)RecorderSigRaw[si].ptr);
            sPtr[1] = 0 ;
            if ( mode.IsUnsigned == 0 && (sPtr[0] & 0x8000) )
            {
                sPtr[1] = 0xffff ;
            }
        }
        else
        {
            * ((long unsigned *) &pSdo->SlaveBuf[0] ) = (* RecorderSigRaw[si].ptr);
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
volatile unsigned long  *  FarlPtr ;

long unsigned  GetRecorder( struct CSdo * pSdo ,short unsigned *nData)
{


    short unsigned si ;//, cnt ;


    //long unsigned  reclen, recnext;
    //struct CCmdMode mode ;

    extern long unsigned GetSamplingTime( short unsigned ind);

    si = pSdo->SubIndex ;

    if ( pSdo->SubIndex >= 10 && pSdo->SubIndex < (10+N_RECS_MAX ) )
    {
        * ((long unsigned *) &pSdo->SlaveBuf[0] ) =
                Recorder.RecorderListIndex[si-10]  +
                    ((long unsigned)Recorder.RecorderFlags[si-10] << 16 ) ;
        *nData = 4 ;
        return 0;
    }

    switch ( si)
    {
    case 1:
        * ((short unsigned *) &pSdo->SlaveBuf[0] ) = 0  ;
        *nData = 2 ;
        break ;
    case 2:
#ifdef _LPSIM
        * ((long unsigned *) &pSdo->SlaveBuf[0] ) = Recorder.RecLength  ;
        *nData = 4 ;
#else
        * ((short unsigned *) &pSdo->SlaveBuf[0] ) = 0;//Recorder.RecLength  ;
        *nData = 2 ;
#endif
        break ;
    case 6:
        * ((short unsigned *) &pSdo->SlaveBuf[0] ) = M2S.Items.ActCmd.cmd.ModeWord.bit.RecorderTimeBasis  ;
        *nData = 2 ;
        break;
    case 62:
        * ((long unsigned *) pSdo->SlaveBuf ) =  GetSamplingTime(0)  ;
        *nData = 2 ;
        break ;
    case 63:
        * ((long unsigned *) pSdo->SlaveBuf ) = (long unsigned) GetSamplingTime(1)  ;
        *nData = 4 ;
        break ;

    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}


#pragma FUNCTION_OPTIONS ( RtRecorder, "--opt_level=3" );

void RecorderFill(long unsigned **rList , long unsigned *pBuf   ) ;

void RtRecorder(void)
{
    S2M.Items.ActStatus.stat.SlaveStat.bit.hi.RecorderUpdating = 1 ;
    RecorderFill(Recorder.RecorderList,Recorder.pBuffer) ;
    S2M.Items.ActStatus.stat.SlaveStat.bit.hi.RecorderUpdating = 0 ;
}


