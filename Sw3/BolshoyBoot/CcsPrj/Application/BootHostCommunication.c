#include "StructDef.h"

/*
 * HostCommunication.c
 *
 *  Created on: Aug 13, 2021
 *      Author: Yahali
 */
void NextHostSciHandlerCollectEven(short unsigned c );
void NextHostSciHandlerInit(short unsigned c );
extern const struct CObjDictionaryItem ObjDictionaryItem [];
//short ApplyManualMotion(short unsigned type, float val);


typedef long (*SciCmdHandlerFunc)(short unsigned * buf , long MessageTime , short unsigned ctr  , short unsigned IsSci );



long SciNullFun(short unsigned *buf,long MessageTime,short unsigned txcntr , short unsigned IsSci)
{
    (void) buf ;
    (void) MessageTime ;
    (void) txcntr ;
    (void) IsSci ;
    return  0 ;
}




struct SciMessageDescriptor
{
    SciCmdHandlerFunc ServiceFunc   ;
    short unsigned    MessageLengthBytes ;
};

// Note message length is in bytes
const struct SciMessageDescriptor SciMessageInterpretFuncTab[4] = {
                                                               {SciGetAck,0}  //opcode 0
} ;


void SendSciAcknowledge(short txcntr , long ErrCode , short unsigned OpCode )
{
    struct
    {
        short ctr ;
        short unsigned code[2] ;
    }s;
    short unsigned * pCode = (short unsigned *) & ErrCode ;
    s.ctr = txcntr ;
    s.code[0] = pCode[0] ;
    s.code[1] = pCode[1] ;

    Copy4Transmission((short unsigned *) &s, 3 , OpCode , GetShortTimer ( &SysTimerStr ) );
}


long SetSpiInterpretErrorTx(long  ErrCode , short unsigned txcntr , short unsigned OpCode , short unsigned IsSci )
{
    union
    {
        long  l ;
        short s[2] ;
    } u ;

    u.l = ErrCode ;

    if ( IsSci )
    {
        SendSciAcknowledge(txcntr , ErrCode , OpCode ) ;
        if (ErrCode  )
        {
            SetSpiInterpretError( u.s[0] , txcntr );
        }
    }
    return ErrCode ;
}

long SciGetAck(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    (void)buf ;
    (void)MessageTime ;
    return SetSpiInterpretErrorTx(0 , txcntr , 0 , IsSci );
}


void InterpSciMessages()
{
    short next ;
    short unsigned c , length ;
    long unsigned MessageTime;
    while ( HostMessageStr.HostMessageListPutPtr != HostMessageStr.HostMessageListFetchPtr  )
    { // Loop over all the registered messages

        next  = HostMessageStr.HostMessageList[HostMessageStr.HostMessageListFetchPtr] ;
        HostMessageStr.HostMessageListFetchPtr = ( HostMessageStr.HostMessageListFetchPtr + 1 ) & 31 ;
        HostMessageStr.Counters =   HostRxBuf[next] ;

        next = ( next + 1) & HOST_RX_MOD ;
        HostMessageStr.Opcode   = HostRxBuf[next]  ;

        if ( HostMessageStr.Opcode > 20 || (SciMessageInterpretFuncTab[HostMessageStr.Opcode].ServiceFunc == SciNullFun ))
        {   // Illegal opcode - abandon
            break  ;
        }
        next = ( next + 1) & HOST_RX_MOD ;
        HostMessageStr.TimeTag_L = HostRxBuf[next] ;
        next = ( next + 1) & HOST_RX_MOD ;
        HostMessageStr.TimeTag_H = HostRxBuf[next] ;
        next = ( next + 1) & HOST_RX_MOD ;
        c = HostRxBuf[next] ;
        length = c>>1 ;
        if ( (c < SciMessageInterpretFuncTab[HostMessageStr.Opcode].MessageLengthBytes) || (length > HOST_SINGLE_MESSAGE_MAX_LEN) )
        { // Illegal length
            break ;
        }
        HostMessageStr.MessageLength = length  ;
        HostMessageStr.InbufCnt = 0 ;

        while (HostMessageStr.InbufCnt < HostMessageStr.MessageLength)
        {
            next = ( next + 1) & HOST_RX_MOD ;
            HostMessageStr.msgBuffer[HostMessageStr.InbufCnt] = HostRxBuf[next] ;
            HostMessageStr.InbufCnt += 1 ;
        }

        MessageTime = (long unsigned)HostMessageStr.TimeTag_L  + ( (long unsigned)HostMessageStr.TimeTag_H << 16 ) ;
                //HostMessageStr.msgBody = HostMessageStr.msgBuffer ; // Select source for input stream

        SciMessageInterpretFuncTab[HostMessageStr.Opcode].ServiceFunc((unsigned short *)HostMessageStr.msgBuffer,MessageTime, HostMessageStr.Counters,1) ;
        HostMessageStr.RxMsgCounter +=1 ;
    }
}

void FastNextHostSciHandlerInit(short unsigned c );

void ResetSciStateMachine(void)
{
    long unsigned sr ;
    sr = BlockInts();
    FastSciRxHandlerFunc = FastNextHostSciHandlerInit ;
    HostMessageStr.State = 0 ;
    HostRxBufFetchPtr = 0 ;
    HostRxBufPutPtr = 0 ;
    HostMessageStr.HostMessageListPutPtr = 0  ;
    HostMessageStr.HostMessageListFetchPtr =  0;

    RestoreInts(sr) ;
}

short unsigned IsPlaceInSciTxBuf(short unsigned length)
{
    //short unsigned place ;
    long unsigned nmiss ;
    short unsigned place ;
    place = (HOST_TX_MOD+1) - ( (HostTxBufPutPtr - HostTxBufFetchPtr) & HOST_TX_MOD ) ;
    nmiss = HostMessageStr.PlaceInTxBuf & 0xffff0000  ;
    if ( place >= length + 7  )
    {
        HostMessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
        return 1 ;
    }
    nmiss += 0x10000  ;
    HostMessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
    return 0 ;
}





// Add the 0xac13 , running counter , and the checksum at the end
short Copy4Transmission(short unsigned * uPtr, short unsigned length , short opcode , long unsigned time )
{
    short unsigned cnt , cs1 , cs2 , next ;
    short unsigned loadptr ;


    if ( 0 == IsPlaceInSciTxBuf(length) )
    {
        return -1 ;
    }

    HostTxBuf[HostTxBufPutPtr&HOST_TX_MOD] = 0xac13 ; cs1 = 0x13 ; cs2 = 0xac ;
    next = HostHandleStr.Tx2HostCtr++ ; cs1 += ( next & 0xff ) ; cs2 += (next>>8) ;
    HostTxBuf[(HostTxBufPutPtr+1)&HOST_TX_MOD] = next ;
    next = opcode ; cs1 += ( next & 0xff ) ; cs2 += (next>>8) ;
    HostTxBuf[(HostTxBufPutPtr+2)&HOST_TX_MOD] = next ;
    next = time & 0xffff ; cs1 += ( next & 0xff ) ; cs2 += (next>>8) ;
    HostTxBuf[(HostTxBufPutPtr+3)&HOST_TX_MOD] = next ;
    next = ( time >> 16 )  ; cs1 += ( next & 0xff ) ; cs2 += (next>>8) ;
    HostTxBuf[(HostTxBufPutPtr+4)&HOST_TX_MOD] = next ;
    next = ( length << 1 )  ; cs1 += ( next & 0xff ) ; cs2 += (next>>8) ;
    HostTxBuf[(HostTxBufPutPtr+5)&HOST_TX_MOD] = next;

    loadptr = (HostTxBufPutPtr+6)&HOST_TX_MOD ;
    for ( cnt = 0 ; cnt < length ; cnt++ )
    {
        next = uPtr[cnt] ;
        HostTxBuf[loadptr] = next ; cs1 += ( next & 0xff ) ; cs2 += (next>>8) ;
        loadptr = ( loadptr+1) & HOST_TX_MOD ;
    }

    next = ~(cs1 + (cs2<<8))+1 ;
    HostTxBuf[loadptr] = next ;

    HostTxBufPutPtr = ( HostTxBufPutPtr + length + 7 ) & HOST_TX_MOD ;

    HostMessageStr.TxMsgCounter +=1 ;
    return 0;
}





