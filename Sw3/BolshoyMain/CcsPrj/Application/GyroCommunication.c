/*
 * GyroCommunication.c
 *
 *  Created on: Aug 21, 2021
 *      Author: Yahali
 */

#define GYRO_OWNER

#include "StructDef.h"
#include "GyroDrvFunTable.h"

/*
 * Report baud rate 115200 as default
 *
 * GoToConfig (0x30, no data)
 * GoToMeasurement (0x10, no data)
 * ReqProductCode (0x1c, no data) , return ProductCode (0x1d, up to 20 ascii)
 * RunSelftest (0x24 no data) , return 0x25, u16
 * SetOptionFlags (0x48) (once, store, no auto wakeup , Enable Continuous ZRU)
 * ReqOutputConfiguration(0xc0)
 * SetOutputConfiguration (0xc0, with data)
 * SetPeriod (0x4)
 * SetAlignmentRotation(0x236)
 * ResetOrientation (0xa4)
 * SetNoRotation (x22)
 * SetInitialHeading (0xd6) , ack = 0xd7
 *
 *
 * Error: 0x42, 1 byte error code
 */


#define nGyroFields 3




#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( GenericGyroAck, "--opt_level=3" );
#endif

void GenericGyroAck(short unsigned c , volatile short unsigned *ackflag )
{
    if ( GyroMessageStr.State == 0 )
    {
        // Read length
        if ( c != 0 )
        {
            FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // incorrect length
        }
        else
        {
            GyroMessageStr.State = 1 ;
        }
     }
    else
    {
        if ( ( ( c + GyroMessageStr.cs) & 0xff )  == 0 )
        {
            *ackflag = 1 ; ;
        }
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // done
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerGetWakeup, "--opt_level=3" );
#endif

void FastNextGyroSciHandlerGetWakeup( short unsigned c )
{
    GenericGyroAck( c , &GyroMessageStr.WakeUpAck );
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerGetOptionFlags, "--opt_level=3" );
#endif
// Selected by accepting the op code -> GyroMsgHandler[] table
void FastNextGyroSciHandlerGetOptionFlags( short unsigned c )
{
    static unsigned long option_buf ;
    GyroMessageStr.cs += c ;
    if ( GyroMessageStr.State == 0 )
    {
        // Read length
        switch (c)
        {
        case 0:
            GyroMessageStr.State = 100 ;
            break  ;
        case 4:
            GyroMessageStr.State = 1 ;
            option_buf = 0 ;
            break ;
        default:
            FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // incorrect length
            break  ;
        }
        return ;
    }
    if ( GyroMessageStr.State == 100  )
    {
        if ( (  GyroMessageStr.cs  & 0xff )  == 0 )
        {
            GyroMessageStr.OptionFlagsAck = 1 ;
        }
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // done
        return ;
    }

    if ( GyroMessageStr.State >= 5 )
    {
        if ( (  GyroMessageStr.cs  & 0xff )  == 0 )
        {
            GyroMessageStr.OptionFlagsRead = option_buf ;
            GyroMessageStr.OptionFlagsGetAck = 1 ; ;
        }
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // done
        return ;
    }

    option_buf = ( option_buf << 8 ) + ( c & 0xff) ;
    GyroMessageStr.State += 1 ;

}

// Selected by accepting the op code -> GyroMsgHandler[] table
void FastNextGyroSciHandlerGetConfigAck( short unsigned c )
{
    GenericGyroAck( c , &GyroMessageStr.ConfigStateAck );
}

void FastNextGyroSciHandlerGetMeasurementAck( short unsigned c )
{
    GenericGyroAck( c , &GyroMessageStr.MeasurementStateAck );
}

short unsigned IsPlaceInGyroTxBuf(short unsigned length)
{
    //short unsigned place ;
    long unsigned nmiss ;
    short unsigned place ;
    place = (GYRO_TX_MOD+1) - ( (GyroTxBufPutPtr - GyroTxBufFetchPtr) & GYRO_TX_MOD ) ;
    nmiss = GyroMessageStr.PlaceInTxBuf & 0xffff0000  ;
    if ( place >= length + 5  )
    {
        GyroMessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
        return 1 ;
    }
    nmiss += 0x10000  ;
    GyroMessageStr.PlaceInTxBuf = (long unsigned) place + nmiss ;
    return 0 ;
}


short unsigned SetGyroCs(short unsigned put,short unsigned csPlace)
{
    short unsigned cs ;
    cs = 0x8000 ;
    put = ( put + 1 ) & GYRO_TX_MOD; // go over start 0xfa

    while ( put != csPlace )
    {
        cs = cs - GyroTxBuf[put] ;
        put = ( put + 1 ) & GYRO_TX_MOD; // go over start 0xfa
    }
    GyroTxBuf[csPlace & 0xff ] = cs & 0xff ;
    GyroTxBufPutPtr = ( csPlace + 1 ) & GYRO_TX_MOD;
    return cs ;
}

short GyroCommandMessage( short unsigned code)
{
    short unsigned next ;

    if (  IsPlaceInGyroTxBuf(0) == 0 )
    {
        return -1 ;
    }

    GyroMessageStr.MessageFromDeviceReady = 0 ;
    GyroTxBuf[GyroTxBufPutPtr] = 0xfa  ; next = ( GyroTxBufPutPtr + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0xff  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = code & 0xff  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD;
    SetGyroCs(GyroTxBufPutPtr,next);
    return 0 ;
}

short GyroOptionFlagsMessage( void)
{
    short unsigned  next ;
    if (  IsPlaceInGyroTxBuf(8) == 0 )
    {
        return -1 ;
    }
    GyroMessageStr.MessageFromDeviceReady = 0 ;
    GyroTxBuf[GyroTxBufPutPtr] = 0xfa  ; next = ( GyroTxBufPutPtr + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0xff  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0x48  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 8  ; next = ( next + 1 ) & GYRO_TX_MOD; // Data length

    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD; // Angular speed, NED
    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD;

    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 16  ; next = ( next + 1 ) & GYRO_TX_MOD;


    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD; // Quaternion , NED
    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD;

    GyroTxBuf[next] = 0  ; next = ( next + 1 ) & GYRO_TX_MOD;// Clear unneeded flag
    GyroTxBuf[next] = 4  ; next = ( next + 1 ) & GYRO_TX_MOD;

    SetGyroCs(GyroTxBufPutPtr,next);
    return 0 ;
}

short GyroOutputConfigMessage( void  )
{
    short unsigned  next ;
    if (  IsPlaceInGyroTxBuf(nGyroFields*4) == 0 )
    {
        return -1 ;
    }
    // Rate of turn WID frequency 100
    // Quaternion   QID frequency 100
    GyroMessageStr.MessageFromDeviceReady = 0 ;
    GyroTxBuf[GyroTxBufPutPtr] = 0xfa  ; next = ( GyroTxBufPutPtr + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0xff  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0xc0  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = (nGyroFields*4)  ; next = ( next + 1 ) & GYRO_TX_MOD; // Data length

    GyroTxBuf[next] = 0x80  ; next = ( next + 1 ) & GYRO_TX_MOD; // Angular speed, NED
    GyroTxBuf[next] = 0x20  ; next = ( next + 1 ) & GYRO_TX_MOD;

    GyroTxBuf[next] = 0x00  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0x64  ; next = ( next + 1 ) & GYRO_TX_MOD;


    GyroTxBuf[next] = 0x20  ; next = ( next + 1 ) & GYRO_TX_MOD; // Quaternion , NED
    GyroTxBuf[next] = 0x10  ; next = ( next + 1 ) & GYRO_TX_MOD;

    GyroTxBuf[next] = 0x00  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0x64  ; next = ( next + 1 ) & GYRO_TX_MOD;

    GyroTxBuf[next] = 0xE0  ; next = ( next + 1 ) & GYRO_TX_MOD; // Status
    GyroTxBuf[next] = 0x10  ; next = ( next + 1 ) & GYRO_TX_MOD;

    GyroTxBuf[next] = 0x00  ; next = ( next + 1 ) & GYRO_TX_MOD;
    GyroTxBuf[next] = 0x64  ; next = ( next + 1 ) & GYRO_TX_MOD;

    SetGyroCs(GyroTxBufPutPtr,next);
    return 0 ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciOutputCfgAck, "--opt_level=3" );
#endif
void FastNextGyroSciOutputCfgAck( short unsigned c )
{
    GyroMessageStr.cs += c ;

    if ( GyroMessageStr.State == 0 )
    {
        GyroMessageStr.State = 1 ;
        GyroMessageStr.InbufCnt = 0 ;
        if ( c != (nGyroFields*4) )
        {
            FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // ilegal
        }
    }
    else
    {
        GyroMessageStr.msgBuffer[ GyroMessageStr.InbufCnt++] = c   ;
        GyroMessageStr.State += 1 ;
        if ( GyroMessageStr.State == (nGyroFields*4+2) )
        {
            if ( (GyroMessageStr.cs & 0xff) == 0 )
            {
                GyroMessageStr.SetOutputAck = 1 ;
            }
            FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // ilegal
        }
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastGyroSciRxHandlerGetCs, "--opt_level=3" );
#endif


void FastGyroSciRxHandlerGetCs(short unsigned c )
{(void)c;
    // GyroMessageStr.cs += c ; No need already don e
    if ( GyroMessageStr.cs == 0 )
    {
        GyroMessageStr.MessageFromDeviceReady = 1 ;
    }
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // Done anyway
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastGyroSciRxHandlerDataMsgGetCs, "--opt_level=3" );
#endif


void FastGyroSciRxHandlerDataMsgGetCs(short unsigned c )
{(void)c;
    //short cnt ;
    // GyroMessageStr.cs += c ; No need already done
    if ( ((GyroMessageStr.cs) & 0xff )  == 0 )
    {
        GyroMessageStr.DataFromDeviceValid = GyroMessageStr.State  ;

        // Go over data and take it

        if ( ECap6Regs.ECFLG.bit.CEVT1 )
        {
            GyroInt.XSenseTimeDelta = ( IsrTimer.RawEcapTimer  - ECap6Regs.CAP1 ) * 0.005f  ;
            ECap6Regs.ECFLG.bit.CEVT1 = 1 ;
            if ( GyroInt.XSenseTimeDelta == __fmin(__fmax(GyroInt.XSenseTimeDelta,-2000),6000)  )
            {
                GyroInt.XSenseTimeCnt = IsrTimer.UsecTimer - (long) GyroInt.XSenseTimeDelta ;
            }
        }

        EALLOW ;
        ECap6Regs.ECCTL2.bit.REARM  = 1;
        EDIS ;
    }
    else
    {
        //GyroMessageStr.DataFromDeviceValid = 0 ;
    }
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ; // Done anyway
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerDataMsgCollect1, "--opt_level=3" );
#endif

void FastNextGyroSciHandlerDataMsgCollect1(short unsigned c ) // pp46
{
    GyroMessageStr.cs += c ;

    if ( GyroMessageStr.MessageLengthCand == GyroMessageStr.ByteCnt  )
    {
        FastGyroSciRxHandlerDataMsgGetCs(c) ;       // Done
        return ;
    }

    if ( GyroMessageStr.MessageLengthCand - GyroMessageStr.ByteCnt < 3 )
    { // Data remains are not enough for next header
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        return ;
    }

    GyroMessageStr.ByteCnt += 1 ; // Count bytes
    GyroMessageStr.pData->DataId = ( c << 8 ) ;
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerDataMsgCollect2 ;
}



#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerStatusMsgCollect4, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerStatusMsgCollect4(short unsigned c )
{
    GyroMessageStr.cs += c ;
    GyroMessageStr.ByteCnt += 1 ; // Count bytes
    GyroMessageStr.GyroStatus.all = c ;
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerDataMsgCollect1 ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerStatusMsgCollect3, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerStatusMsgCollect3(short unsigned c )
{
    GyroMessageStr.cs += c ;
    GyroMessageStr.ByteCnt += 1 ; // Count bytes

    if ( c != 1 )
    { // Status byte is 1 long
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        return ;
    }
    GyroMessageStr.pData->DataLen = c ;
    GyroMessageStr.SubState = 0 ;
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerStatusMsgCollect4 ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerDataMsgCollect2, "--opt_level=3" );
#endif

void FastNextGyroSciHandlerDataMsgCollect2(short unsigned c ) // pp46
{
    GyroMessageStr.cs += c ;
    GyroMessageStr.ByteCnt += 1 ; // Count bytes
    GyroMessageStr.pData->DataId |= c ;

    // Test if the data ID is for status byte
    if (GyroMessageStr.pData->DataId == 0xE010 )
    {
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerStatusMsgCollect3 ;
        return ;
    }
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerDataMsgCollect3 ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerDataMsgCollect3, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerDataMsgCollect3(short unsigned c )
{
    GyroMessageStr.cs += c ;
    GyroMessageStr.ByteCnt += 1 ; // Count bytes

    if ( c & 0xe1 )
    { // Too long or illegal single item
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        return ;
    }
    GyroMessageStr.pData->DataLen = c ;
    GyroMessageStr.SubState = 0 ;
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerDataMsgCollect4 ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerDataMsgCollect4, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerDataMsgCollect4(short unsigned c )
{
    short unsigned sft , ind ;
    GyroMessageStr.cs += c ;
    GyroMessageStr.ByteCnt += 1 ; // Count bytes
    sft = 3 - ( GyroMessageStr.SubState & 3) ;
    ind = GyroMessageStr.SubState >> 2 ;
    if ( sft == 3  )
    {
        GyroMessageStr.pData->Data[ind] = 0 ;
    }

    GyroMessageStr.pData->Data[ind] |= ((long unsigned)c<<(sft<<3))  ;
    GyroMessageStr.SubState += 1  ;
    if ( GyroMessageStr.SubState == GyroMessageStr.pData->DataLen)
    { // New item
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerDataMsgCollect1 ;
        if ( GyroMessageStr.pData->DataId == 0xe020 )
        {
            GyroMessageStr.GyroStatus.all = * (short unsigned *) GyroMessageStr.pData->Data  ;
        }
        GyroMessageStr.pData += 1 ;
        GyroMessageStr.State += 1 ;
    }
}



#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerGetDataMsgLength, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerGetDataMsgLength(short unsigned c ) // pp46
{
    GyroMessageStr.cs += c ;
    GyroMessageStr.MessageLengthCand = c ;
    GyroMessageStr.State             = 0 ;
    GyroMessageStr.SubState          = 0 ;
    GyroMessageStr.ByteCnt           = 0 ;
    //GyroMessageStr.DataFromDeviceValid = 0 ;
    GyroMessageStr.pData = &ImuDataItem[0] ;
    if ( GyroMessageStr.MessageLengthCand == 0 )
    { // Treat empty message
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        return ;
    }
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerDataMsgCollect1 ;
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerCollect, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerCollect(short unsigned c )
{
    GyroMessageStr.cs += c ;
    GyroMessageStr.msgBuffer[GyroMessageStr.ByteCnt] = c ;
    GyroMessageStr.ByteCnt +=1  ;
    if ( GyroMessageStr.ByteCnt == GyroMessageStr.MessageLengthCand)
    {
        FastGyroSciRxHandlerFunc = FastGyroSciRxHandlerGetCs ;
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerGetLength, "--opt_level=3" );
#endif

void FastNextGyroSciHandlerGetLength(short unsigned c )
{
    GyroMessageStr.cs += c ;

    if ( c > GYRO_SINGLE_MESSAGE_MAX_LEN || GyroMessageStr.MessageFromDeviceReady)
    {
        // too long or a previous message not yet interpreted
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        return ;
    }

    GyroMessageStr.MessageLengthCand = c ;
    GyroMessageStr.State         = 0 ;
    GyroMessageStr.ByteCnt           = 0 ;
    if ( GyroMessageStr.MessageLengthCand == 0 )
    {
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerCollect ;
    }
    else
    {
        FastGyroSciRxHandlerFunc = FastGyroSciRxHandlerGetCs ;
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerGetOpCode, "--opt_level=3" );
#endif

void FastNextGyroSciHandlerGetOpCode(short unsigned c )
{
    c &= 0xff ;
    GyroMessageStr.cs += c ;

    GyroMessageStr.OpCodeCand    = c ;
    GyroMessageStr.State = 0 ;
    FastGyroSciRxHandlerFunc = GyroMsgHandler[c] ;

    //FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerGetLength ;
        //else
        //{
        //    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        //}
    //}
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerInit2, "--opt_level=3" );
#endif


void FastNextGyroSciHandlerInit2(short unsigned c )
{
    if ( c == 0xff || c == 0x1  )
    {
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerGetOpCode ;
        GyroMessageStr.cs = c  ; // -0xac13
        GyroMessageStr.StartSciRxValid = GyroRxBufPutPtr ;
        GyroMessageStr.InbufCnt = 0 ;
        GyroMessageStr.MessageLength = 32767 ;
    }
    else
    {
        if ( c != 0xfa )
        {
            FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
        }
    }
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastNextGyroSciHandlerInit, "--opt_level=3" );
#endif

void FastNextGyroSciHandlerInit(unsigned short c)
{
    if ( c == 0xfa )
    {
        FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit2 ;
    }
}


void ResetGyroSciStateMachine(void)
{
    short unsigned sr ;
    sr = BlockInts();
    FastGyroSciRxHandlerFunc = FastNextGyroSciHandlerInit ;
    GyroMessageStr.State = 0 ;
    GyroMessageStr.InbufCnt = 0 ;
    GyroMessageStr.MessageLength = 32767 ;

    RestoreInts(sr) ;
}



/**
\brief Initialize the SPI buffers and counters
*/
void InitGyroComm(void)
{
    MemClr((short unsigned *)&GyroHandleStr,sizeof(GyroHandleStr)  );
    GyroTxBufPutPtr = 0 ;
    GyroTxBufFetchPtr = 0 ;
    GyroRxBufPutPtr = 0 ;
    GyroRxBufFetchPtr = 0 ;
    ResetGyroSciStateMachine();
}

#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( FastRtGyroSciHandler, "--opt_level=3" );
#endif

short unsigned stambuf[128] ;
short unsigned stamctr ;
//short syntbuf ;

/*
 * \brief Handler of SCI for the RT.
 * Just extends the SCI activity with SW buffer
 */
void FastRtGyroSciHandler(void)
{
    short unsigned c , ct   ;

    // On error - just kill SCI, signal and quit , rest of error cleaning expected in idle loop


/*
    if ( syntbuf == 123 )
    {
        GyroMessageStr.RxCharCounter += 1  ;

        c = stambuf[stamctr]  ;

        stamctr = ( stamctr + 1 ) & 127 ;

        FastGyroSciRxHandlerFunc(c) ;

        return ;
    }
*/

    if ( ScibRegs.SCIRXST.bit.RXERROR )
    {
        ScibRegs.SCICTL1.bit.SWRESET = 0 ;
        ScibRegs.SCIFFRX.bit.RXFIFORESET = 0;

        GyroMessageStr.ErrorSignal = 1 ;
        ScibRegs.SCIFFRX.bit.RXFIFORESET = 1;
        ScibRegs.SCICTL1.bit.SWRESET = 1 ;
        return ;
    }
    while ( ScibRegs.SCIFFRX.bit.RXFFST )
    {
        GyroMessageStr.RxCharCounter += 1  ;

        c = ScibRegs.SCIRXBUF.bit.SAR ;

        stamctr = ( stamctr + 1 ) & 127 ;
        stambuf[stamctr] = c ;

        FastGyroSciRxHandlerFunc(c) ;
    }


    // Transmit queued characters
    while  ( ScibRegs.SCIFFTX.bit.TXFFST < 14 && (GyroTxBufPutPtr != GyroTxBufFetchPtr ) )     // Note that place is taken in chars
    {
        GyroMessageStr.TxCharCounter += 1  ;
        ct = GyroTxBuf[GyroTxBufFetchPtr]  ;
        GyroTxBufFetchPtr = ( GyroTxBufFetchPtr + 1 ) & GYRO_TX_MOD ;
        ScibRegs.SCITXBUF.bit.TXDT = ct & 0xff  ;
    }
}


/*
 * Manage IMU startup towards stable work
 */
short ImuManager(void)
{
    if ( ImuStartMgr.Done  )
    {
        return 1 ;
    }
    if ( IsSysTimerElapse(TIMER_GYRO_PROG, &SysTimerStr) == 0 )
    {
        return 0 ;
    }
    SetSysTimerTargetSec (TIMER_GYRO_PROG , 0.005f  , &SysTimerStr);

    switch (ImuStartMgr.State)
    {
    case EX_sendGoToConfig:
        // Send the gyro to config mode - it stops measurement transmission
        if ( GyroCommandMessage(GYRO_CMD_GoToConfig) >= 0 )
        { // Config state command sent, wait ack
            GyroMessageStr.ConfigStateAck = 0 ;
            ImuStartMgr.State = EX_WaitAckGoToConfig ;
            ImuStartMgr.IterCnt = 0 ;
        }
        break ;
    case EX_WaitAckGoToConfig:
        if ( GyroMessageStr.ConfigStateAck )
        {
            ImuStartMgr.State = EX_sendOptions ;
        }
        else
        { // Retry
            ImuStartMgr.IterCnt += 1 ;
            if ( ImuStartMgr.IterCnt >= 15 )
            { // Tired from waiting response, retry command
                ImuStartMgr.State = EX_sendGoToConfig ;
            }
        }

        break ;

    case EX_sendOptions:
        if ( GyroOptionFlagsMessage() >= 0 )
        {
            GyroMessageStr.OptionFlagsAck = 0 ;
            ImuStartMgr.State = EX_WaitAckOptions ;
            ImuStartMgr.IterCnt = 0 ;
        }
        break ;

    case EX_WaitAckOptions:
        if ( GyroMessageStr.OptionFlagsAck )
        {
            ImuStartMgr.State = EX_RcvOptions ;
        }
        else
        { // Retry
            ImuStartMgr.IterCnt += 1 ;
            if ( ImuStartMgr.IterCnt >= 15 )
            {// Despair from waiting response, retry command
                ImuStartMgr.State = EX_sendOptions ;
            }
        }
        break ;

    // Read option flags
    case EX_RcvOptions:
        if ( GyroCommandMessage(GYRO_CMD_GetOptionFlags) >= 0 )
        {
            ImuStartMgr.State = EX_WaitRcvAckOptions ;
        }
        break;

    case EX_WaitRcvAckOptions:
        if ( GyroMessageStr.OptionFlagsGetAck )
        {
            ImuStartMgr.State = EX_sendDataConfig ;
        }
        else
        { // Retry
            ImuStartMgr.IterCnt += 1 ;
            if ( ImuStartMgr.IterCnt >= 15 )
            {// Despair from waiting response, retry command
                ImuStartMgr.State = EX_sendOptions ;
            }
        }
        break ;

    case EX_sendDataConfig:
        if ( GyroOutputConfigMessage() >= 0 )
        {
            GyroMessageStr.SetOutputAck = 0 ;
            ImuStartMgr.State = EX_WaitAckDataConfig ;
            ImuStartMgr.IterCnt = 0 ;
        }
        break ;
    case EX_WaitAckDataConfig:
        if ( GyroMessageStr.SetOutputAck )
        {
            ImuStartMgr.State = EX_sendGoToMeaseurement ;
        }
        else
        { // Retry
            ImuStartMgr.IterCnt += 1 ;
            if ( ImuStartMgr.IterCnt >= 15 )
            {
                ImuStartMgr.State = EX_sendDataConfig ;
            }
        }
        break ;

    case EX_sendGoToMeaseurement:
        if ( GyroCommandMessage(GYRO_CMD_GoToMeasurement) >= 0 )
        {
            GyroMessageStr.MeasurementStateAck = 0 ;
            ImuStartMgr.State = EX_WaitAckGoToMeaseurement ;
            ImuStartMgr.IterCnt = 0 ;
        }
        break ;

    case EX_WaitAckGoToMeaseurement:
        if ( GyroMessageStr.MeasurementStateAck )
        {
            ImuStartMgr.State = EX_GyoProgDone ;
        }
        else
        { // Retry
            ImuStartMgr.IterCnt += 1 ;
            if ( ImuStartMgr.IterCnt >= 15 )
            {
                ImuStartMgr.State = EX_sendGoToMeaseurement ;
            }
        }
        break ;

    case  EX_GyoProgDone:
        ImuStartMgr.Done = 1 ;
        break ;


    }

    return 0 ;
}




