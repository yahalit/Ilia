/*
 * SciHandler.c
 *
 *  Created on: Feb 6, 2021
 *      Author: Yahali
 */
#include "StructDef.h"     // DSP28x Headerfile


#define MAX_CONFIG_MESSAGES 14
#define MAX_MANUAL_MOTION_MESSAGES 15 //15*3
#define MAX_SET_CALIB_MESSAGES 30 //might need to change to 28. depends on ICD


void NextHostSciHandlerCollectEven(short unsigned c );
void NextHostSciHandlerInit(short unsigned c );
extern const struct CObjDictionaryItem ObjDictionaryItem [];
//short ApplyManualMotion(short unsigned type, float val);

/*
 * Aguments:
 * buf: Data payload to interpret (opcode is embedded into the calling of this specific handler)
 * MessageTime: Relevance time of message
 * ctr     : Running message counters, nobody really use them
 * IsCsi   : If 1, the message to process comes from the RBP, and answer should be returned to the RBP. (RaspBerry Pi)
 *          : If 0, the message is routed from the CAN interpreter (Matlab) and answers must be routed back to the Matlab
 *
 */
typedef long (*SciCmdHandlerFunc)(short unsigned * buf , long MessageTime , short unsigned ctr  , short unsigned IsSci );

struct SciMessageDescriptor
{
    SciCmdHandlerFunc ServiceFunc   ;
    short unsigned    MessageLengthBytes ;
};


// Note message length is in bytes
#define N_COM_MESSAGE_TYPE 25
const struct SciMessageDescriptor SciMessageInterpretFuncTab[N_COM_MESSAGE_TYPE] = {
                                                               {SciGetAck,0} , //opcode 0
                                                               {SciClearQueue,0}, //opcode 1
                                                               {SciSetQueueEntry,30}, //opcode 2
                                                               {SciSetQueueExecutionPointer,6}, //opcode 3
                                                               {SciTunnelPacket,0}, //opcode 4
                                                               {SciNullFun,0}, //opcode 5
                                                               {SciNullFun,0}, //opcode 6
                                                               {SciSetEmergencyStop,2}, //opcode 7
                                                               {SciSetHandlePackage,14}, //opcode 8
                                                               {SciNullFun,0}, //opcode 9
                                                               {SciSetDeviationReport,8}, //opcode 10
                                                               {SciSetPositionReport,34}, //opcode 11
                                                               {SciSetParameter,10}, //opcode 12, min length =10, can be longer.
                                                               {SciSetManualMotion,4}, //opcode 13
                                                               {SciSetConfiguration,8}, //opcode 14
                                                               {SciNullFun,0} , //opcode 15
                                                               {SciNullFun,0}, //opcode 16, will be SetObjectsToReport
                                                               {SciSetCalibrationData,8} , //opcode 17, will be set calibration data
                                                               {SciSaveCalibrationData,4} , //opcode 18, will be save calibration data (not sure if should be here, needs ack)
                                                               {SciRequestReport,2} , //opcode 19, will be request report
                                                               {SciStartManualMode,0} ,//opcode 20.
                                                               {SciSetVelocityCommand,8} ,//opcode 21. Enter speed mode: direct command by the ROSS
                                                               {RotateTapeArm,2} ,//opcode 22.
                                                               {FinePositionCommand,4}, //opcode 23.
                                                               {SciSetRelativePositionReport,32} //opcode 24

};



//ProtocolRev = (( (long unsigned)PROTOCOL_VER << 24 ) + ((long unsigned)PROTOCOL_SUBVER<<16) + ((long unsigned)PROTOCOL_PATCH <<8) + (long unsigned) PROTOCOL_XX ) ;

float mod2piS( float x )
{
    float f ;
    f = __fracf32(__div2pif32(x)) + 1.5f  ;
    f = __fracf32(f) - 0.5f  ;
    return __mpy2pif32(f) ;
}


float AngletoF( short a )
{
    float f ;
    f = (float) a * 9.587379924285257e-05f;
    return f ;
}


unsigned short FtoAngle( float f )
{
    union
    {
        unsigned short s[2] ;
        long l ;
    }u ;
    u.l = (long)( mod2piS(f) * 1.043037835047045e+04f) ;
    return u.s[0] ;
}

inline long unsigned ReadULFromUint(short unsigned *u )
{
    long unsigned ul ;
    ul = ( (long unsigned) u[0] ) + (( (long unsigned) u[1] ) << 16 ) ;
    return ul ;
}

static short ReadFloatFromUint(short unsigned *u , float *f)
{
    float fa ;
    long unsigned ul = ReadULFromUint(u) ;
    fa  = * (float *) &ul;
    if ( isnan(fa) )
    {
        *f = 0 ;
        return -1 ;
    }
    else
    {
        *f = fa ;
        return 0 ;
    }
}


inline
void SetUL2Uint(long unsigned ul,short unsigned * buf )
{
    union
    {
        long unsigned ul ;
        short unsigned us[2] ;
    } u ;
    u.ul = ul ;
    buf[0] = u.us[0] ;
    buf[1] = u.us[1] ;
}

// These structures have no real use, they just demonstrate the data structures 
// used in various protocol versions 
struct CConfigMsgContentsVer0 
{
    long unsigned PDVer ;
    long unsigned LPVer;
    long unsigned ConsoleVer ;
    short unsigned permission ;
    short unsigned pairsAmount;
    short unsigned period[MAX_CONFIG_MESSAGES*2] ;
};

struct CConfigMsgContentsVer1
{
    long unsigned PDVer ;
    long unsigned LPVer;
    long unsigned ConsoleVer ;
    long unsigned AcuProtocolVer ;
    short unsigned permission ;
    short unsigned WheelArmTypeAndWheelSensor ;
    short unsigned pairsAmount;
    short unsigned period[MAX_CONFIG_MESSAGES*2] ;
} ;





void SendSciConfigReport(short unsigned * configsBuf, short unsigned length)
{
    short unsigned cnt , nPer , *uPtr , nTotLen  ;
    long unsigned LpVerSubverPatchVar ;
    LpVerSubverPatchVar = SciLpVerSubverPatch ;
    SetUL2Uint( LpVerSubverPatchVar, ScratchSciTxBuf+2) ;
    SetUL2Uint( S2M.Items.SlaveRevisions.item.PdVerSubverPatch, ScratchSciTxBuf) ;
    SetUL2Uint( S2M.Items.SlaveRevisions.item.MalinkiVerSubverPatch, ScratchSciTxBuf+4) ;

    SetUL2Uint( ProtocolRev, ScratchSciTxBuf+6) ;
    ScratchSciTxBuf[8] = HostMessageStr.Permission ;
    ScratchSciTxBuf[9] = ( Config.WheelArmType & 0XFF)  ;
    nPer = 10 ;
	
	nTotLen = nPer+1+length ; 
	if ( nTotLen > (N_SCRATCH_SCI_TX_BUF-8) )
	{
		SetSpiInterpretErrorTx( SPI_TX_MESSAGE_OVERFLOW , 0 , 0xf , 1 );
		return ; 
	} 
	
    uPtr = ScratchSciTxBuf + nPer ;
    *uPtr++ = length/2; ;
    for(cnt = 0 ; cnt < length; cnt++)
    {
        *uPtr++ = configsBuf[cnt] ;
    }
    Copy4Transmission(ScratchSciTxBuf, nTotLen , 15 , GetShortTimer ( &SysTimerStr ) );

/*
    struct
    {
        long unsigned PDVer ;
        long unsigned LPVer;
        long unsigned ConsoleVer ;
        short unsigned permission ;
        short unsigned pairsAmount;
        short unsigned period[MAX_CONFIG_MESSAGES*2] ;
    }s;

    s.PDVer = PdVerSubverPatch;
    s.LPVer = LpVerSubverPatch;
    s.ConsoleVer = MalinkiVerSubverPatch ;

    s.permission = HostMessageStr.Permission ;
    s.pairsAmount = length/2;

    for(cnt =0 ; cnt<length; cnt++)
    {
        s.period[cnt] = configsBuf[cnt] ;
    }


    Copy4Transmission((short unsigned *) &s, 8+length, 15 , GetShortTimer ( &SysTimerStr ) );
*/
}


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
short unsigned oldexp ;
    if ( IsSci )
    {
        SendSciAcknowledge(txcntr , ErrCode , OpCode ) ;
        if (ErrCode  )
        {
            SetSpiInterpretError( *((short*) &ErrCode) , txcntr );
        }
    }
    else
    {
        if ( ErrCode)
        {
            SysState.Mot.RejectWarning.IgnoreWarning = 0 ;
            if ( SysState.Mot.ExceptionInit )
            {
                oldexp = (short unsigned) (  SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt-1)&(EXCEPTION_TAB_LENGTH-1)] & 0xffff ) ;
            }
            else
            {
                oldexp = 0 ;
            }
            if ( oldexp == ErrCode)
            {
                LogException(OWN_EXP_ID, EXP_WARN, exp_sci_repeated_error_code);
            }
            else
            {
                LogException(OWN_EXP_ID, EXP_WARN, ErrCode);
            }
            IncrementLBitField ( &SysState.Mot.MotLog2 , 0x7 , 4 ) ;
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


long SciClearQueue(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci )
{
    (void)buf ;
    (void)MessageTime ;
    ClearMotionQueue( ) ;
    return SetSpiInterpretErrorTx(0, txcntr , 0 , IsSci ) ;
}



long SciSetQueueEntry(short unsigned * buf , long MessageTime , short unsigned txcntr , short unsigned IsSci)
{
    short stat ;
    (void)MessageTime ;

    stat = placeInQueue ( &buf[0] ) ;
    if ( stat )
    {
        SetSpiInterpretErrorTx( stat , txcntr , 0 , IsSci );
        return stat  ;
    }
    return SetSpiInterpretErrorTx(0, txcntr , 0 ,IsSci ) ;
}

long SciSetQueueExecutionPointer(short unsigned * buf , long MessageTime, short unsigned txcntr , short unsigned IsSci)
{
    short unsigned qInd, mode ,IndexInq ;
    long stat ;

    short mmode ,     qa    ,    eq ;


    (void) MessageTime ;

    if ( SysState.WakeupState != E_CAN_WAKEUP_OPERATIONAL )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_CMD_ONLY_FOR_OPERATIONAL , txcntr , 0, IsSci );
    }
    if ( (SysState.Package.State > EPackState_Init)  && (SysState.Package.State != EPackState_Success) )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_CMD_NOT_WHILE_DEALING_PACK , txcntr , 0 , IsSci );
    }

    if (IsWheelArmGoodToGo(ManRouteCmd.ShelfMode) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

    qInd =  buf[0] ;
    mode =  buf[2];

    if ( qInd && SysState.Mot.ExecutingQueue && (SysState.CBit.bit.QueueAborted==0) )
    { // If executing queue, only passage to the null queue is possible
        return SetSpiInterpretErrorTx( SPI_ERR_CMD_WHILE_BUSY , txcntr, 0 ,IsSci );
    }

    IndexInq = (short unsigned) CheckQIndex( buf[1]) ;
    if ( IndexInq == SPI_ERR_BAD_QINDEX )
    {
        return SetSpiInterpretErrorTx( qInd , txcntr, 0 , IsSci );
    }
    if ( (SysState.Mot.mode <= E_SysMotionModeFault ) || (mode > 1)  )
    { // Cannot initialize new program under fault
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_MODE , txcntr , 0, IsSci );
    }

    SysState.Mot.JumpCmd.qIndex = qInd ;
    SysState.Mot.JumpCmd.IndexInQ = IndexInq ;
    SysState.Mot.JumpCmd.mode = mode ;
    SysState.Mot.JumpCmd.CmdCntr = 1 ; // Queue processing request for idle loop

    mmode = SysState.Mot.mode  ;
    qa    = SysState.CBit.bit.QueueAborted  ;
    eq = SysState.Mot.ExecutingQueue;

    stat =  CheckMotionQueues( );
    //IncrementLBitField ( &SysState.Mot.MotLog , 0x7 , 0 ) ;

    //short SetSpiInterpretErrorTx(long  ErrCode , short unsigned txcntr , short unsigned OpCode , short unsigned IsSci )
    if ( stat )
    {
        SetMotionMode(mmode,43) ;
        SysState.CBit.bit.QueueAborted  = qa ;
        SysState.Mot.ExecutingQueue = eq ;
        LogException( OWN_EXP_ID, EXP_WARN, stat ) ;
        return SetSpiInterpretErrorTx(SPI_ERR_CANT_ACCEPT_PROG , txcntr, 0 , IsSci ) ;
    }
    AbortVelocityMode() ;
    return SetSpiInterpretErrorTx(0 , txcntr, 0 , IsSci ) ;
}

long SciSetEmergencyStop(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    short unsigned mask , mode ;
    (void)MessageTime;

    mode = buf[0] ;
    if ( mode == 2  )
    {
        SysState.Mot.bPauseFlag &= (~1) ;
        return SetSpiInterpretErrorTx(0, txcntr , 0, IsSci ) ;
    }

    if ( mode & 0x100 )
    {
        SysState.Mot.bPauseFlag =  ( mode & 0xff )  ;
        return SetSpiInterpretErrorTx(0, txcntr , 0, IsSci ) ;
    }

    if ( mode == 1 )
    {
        if ( ( SysState.Mot.mode == E_SysMotionModeAutomatic) ||  ( SysState.Mot.mode == E_SysMotionModeAutomaticIdle))
        {
            if ( ((HostMessageStr.Permission & PERMISSION_PAUSE_IN_SHELF_MASK ) && (ManRouteCmd.ShelfMode == E_ShelfRun_Auto) ) ||
                    ((ManRouteCmd.ShelfMode == 0 ) && (SysState.ManRouteState.NewCrabFlag==0) && (ManRouteCmd.CrabCrawl==0)  ))
            {
                SysState.Mot.bPauseFlag = 1 ;
                return SetSpiInterpretErrorTx(0, txcntr , 0, IsSci ) ;
            }
            else
            {
                return SetSpiInterpretErrorTx( SPI_CANT_ACCEPT_PAUSE , txcntr , 0, IsSci );
            }
        }
        else
        {
            mode = 0x1234 ;
        }
    }

    if ( mode == 0x1234 )
    {
        switch (SysState.Mot.mode)
        {
        case E_SysMotionModeFault:
        case E_SysMotionModeSafeFault:
        case E_SysMotionModeMotorOff:
        case E_SysMotionModeStay:
            // Nothing to do, already stopped
            break ;
        case E_SysMotionModePerAxis:
            DirectSetCanAxisCommand( LOGICAL_RW , 0 ) ;
            DirectSetCanAxisCommand( LOGICAL_LW , 0 ) ;
            mask = (unsigned short) BlockInts() ;
            SetPosCmd2PosFeedback(&SysState.CanAxis[LOGICAL_RSTEER]) ;
            SetPosCmd2PosFeedback(&SysState.CanAxis[LOGICAL_LSTEER]) ;
            SetPosCmd2PosFeedback(&SysState.CanAxis[LOGICAL_NECK]) ;
            SysState.Mot.QuickStop =1 ;
            RestoreInts(mask) ;
            break ;
        case E_SysMotionModeManualTravel:
            // Don't touch crabbing in action
            //ManRouteCmdImage.LineSpeedCmd = 0  ;
            mask = (unsigned short) BlockInts() ;
            SysState.ManRouteState.DifferenceDrive = 0  ;
            ManRouteCmd.LineSpeedCmd = 0  ;
            ManRouteCmd.CurvatureCmd = 0  ;

            SetPosCmd2PosFeedback(&SysState.CanAxis[LOGICAL_NECK]) ;

            SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd ;
            SysState.Mot.QuickStop =1 ;
            RestoreInts(mask) ;
            break ;

        case E_SysMotionModeTestPack:
            mask = (unsigned short) BlockInts() ;
            if ( SysState.Package.PackSim.OldMotMode == E_SysMotionModeAutomatic )
            {
                SysState.Package.PackSim.OldMotMode = E_SysMotionModeAutomaticIdle ;
                MQ.nGet = 0 ; // Kill motion queue, go practically to null queue
                MQ.nPut = 0 ;
                // SetMotionMode(E_SysMotionModeStay,1) ; // Vandal
                SysState.CBit.bit.QueueAborted = 1;
            }

            SysState.ManRouteState.DifferenceDrive = 0 ;
            SysState.ManRouteState.LineSpeed = 0 ;
            ManRouteCmd.LineSpeedCmd = 0 ;
            StopWheels();
            RestoreInts(mask) ;
                //LogException(OWN_EXP_ID, EXP_ABORT, exp_emergency_stopped);
            break ;
        case E_SysMotionModeHostSpeedControl:
            mask = (unsigned short)BlockInts() ;
            SysState.Mot.BodyCmd.Speed = 0 ;
            SysState.Mot.BodyCmd.Omega = 0 ;
            //SysState.Mot.QuickStop =1 ;
            RestoreInts(mask) ;
            break ;
        case E_SysMotionModeAutomatic:
        case E_SysMotionModeAutomaticIdle:
            /*
            if (InPack == 0  )
            {
                SysState.Mot.QuickStop = 1 ;
            }
            */
            LogException(OWN_EXP_ID, EXP_ABORT_PACKON, exp_emergency_stopped);
            break ;
        default:
            SysState.Mot.QuickStop =1 ;
            break ;
        }
    }
    else
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_MODE , txcntr , 0, IsSci );
    }
    return SetSpiInterpretErrorTx(0, txcntr , 0, IsSci ) ;
}

long SendSciReport(short unsigned opcode)
{
    short unsigned uPtr[12] ;
    short err;
    union
    {
        float uf ;
        short unsigned us[2] ;
    } uu ;

    //err = 0;

    switch (opcode)
    {
    case 40: //retrieve calibration data
        //Copy4Transmission(short unsigned * uPtr, short unsigned length , short opcode , long unsigned time )
        SetLongParameter(0x2302 , 1 , 0x12345620 ) ; //Set the password. here for compatibility with matlab.
        SetLongParameter(0x2302 , 251 , 0 ) ; //Load the calibration from the flash to the programming struct

        err = Copy4Transmission((short unsigned *) &CalibProg.Calib, 64, 0x28 , GetShortTimer ( &SysTimerStr ) ); //length might change in the future if adding pass and checksum to the message.
        break;
    case 41: //retrieve calibration geometry
        uu.uf = Geom.SteerFinalRatCenter ; //bs
        uPtr[0] = uu.us[0];
        uPtr[1] = uu.us[1];

        uu.uf = Geom.SteerFinalRatRev ; //as
        uPtr[2] = uu.us[0];
        uPtr[3] = uu.us[1];

        uu.uf = Geom.Neck1RatRad  ; //an,pot1
        uPtr[4] = uu.us[0];
        uPtr[5] = uu.us[1];

        uu.uf = Geom.Neck1RatCenter  ; //bn,pot1
        uPtr[6] = uu.us[0];
        uPtr[7] = uu.us[1];

        uu.uf = Geom.Neck2RatRad   ; //an,pot2
        uPtr[8] = uu.us[0];
        uPtr[9] = uu.us[1];

        uu.uf = Geom.Neck2RatCenter    ; //bn,pot2
        uPtr[10] = uu.us[0];
        uPtr[11] = uu.us[1];

        err = Copy4Transmission( (short unsigned *) uPtr, 12, 0x29 , GetShortTimer ( &SysTimerStr ) ); //length might change if adding pass and cs.

        break;
    default:
        err = -1 ; //invalid opcode requested

    }
    return err;
}

long SciRequestReport(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    long err ;
    short unsigned opcode ;
    opcode = buf[0];

    (void)MessageTime ;
    (void) buf;

    if ( IsSci)
    {
        err = SendSciReport(opcode);
        //err=1;   //temp
    }
    else
    {
        err = 0; 
    }
    if (err)
    {
        return SetSpiInterpretErrorTx( err , txcntr , 0, IsSci );
    }
    return 0;
}

long SciSaveCalibrationData(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    long err ;
    long unsigned password ;
    (void)MessageTime ;
    (void) buf;
    (void) txcntr ;
    (void) IsSci ;
    password = GetUnalignedLong( & buf[0]) ;

    //err = 0;

    //if password is correct, save to flash
    if ( (password == 0x12345678) && (SysState.CalibVarsFine == 1) )
    {
        //save to flash
        //SetLongParameter(0x2302 , 1 , 0x12345620 ) ;//set password to be 0x12345600 + N_CALIB_RECS to enable saving to flash. done for compatibility.
        //CalibProg.PassWord = 0x12345620 ;
        err = SetLongParameter(0x2302 , 253 , CalibProg.Calib.CalibData ); //sending CalibProg.Calib.CalibData as the value is only done for compatibility reasons with the Matlab version of BIT.
    }
    else
    {
        err = 1 ; //wrong password or calibration values were not received correctly, don't save.
    }

    return SetSpiInterpretErrorTx( err , txcntr , 0, IsSci );

}

long SciSetCalibrationData(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    //not implemented yet
    long err;
    short unsigned amountOfPeriods, ind, cnt;
    float val;
    long lval;

    (void)buf ;
    (void)MessageTime ;

    err = 0 ;
    amountOfPeriods = buf[0];
    SysState.CalibVarsFine = 1;

    SetLongParameter(0x2302 , 1 , 0x12345600 + N_CALIB_RECS ) ;//set password to be 0x12345600 + N_CALIB_RECS to enable saving to flash. done for compatibility.
    SetLongParameter(0x2302 , 251 , 0 ) ; //Load the calibration from the flash to the programming struct

    for ( cnt = 0 ; cnt < amountOfPeriods*3 ;  )
    {
        if ( cnt >= MAX_SET_CALIB_MESSAGES )
        {
            break;
        }
        ind = buf[1+cnt];
        val = GetUnalignedFloat(&buf[2+cnt]) ;

 //       if (ind == 26 || ind == 27)
        {
            lval = GetUnalignedLong(&buf[2+cnt]) ;
        }

        switch (ind)
        {
        //case 0xffff: //invalid, end of msg
        //    break;
        case 0: //RSteerPotCenter
            // matlab:       SendObj( [hex2dec('2302'),cnt] , Calib.(nextvalue) , DataType.float , CalibNames{cnt}) ;
            err = SetFloatParameter(0x2302 , 2 , val );
            //Calib.RSteerPotCenter = val;
            break;
        case 1: // RSteerPotGainFac
            err = SetFloatParameter(0x2302 , 4 , val );
            break;
        case 2: //LSteerPotCenter
            err = SetFloatParameter(0x2302 , 3 , val );
            break;
        case 3: //LSteerPotGainFac
            err = SetFloatParameter(0x2302 , 5 , val );
            break;
        case 4: //RNeckPotCenter
            err = SetFloatParameter(0x2302 , 6 , val );
            break;
        case 5: //LNeckPotCenter
            err = SetFloatParameter(0x2302 , 7 , val );
            break;
        case 6: //RNeckPotGainFac
            err = SetFloatParameter(0x2302 , 8 , val );
            break;
        case 7: //LNeckPotGainFac
            err = SetFloatParameter(0x2302 , 9 , val );
            break;
        case 8: //AccOffsetX
            err = SetFloatParameter(0x2302 , 10 , val );
            break;
        case 9: //AccOffsetY
            err = SetFloatParameter(0x2302 , 11 , val );
            break;
        case 10: //AccOffsetZ
            err = SetFloatParameter(0x2302 , 12 , val );
            break;
        case 11: //GyroOffsetX
            err = SetFloatParameter(0x2302 , 13 , val );
            break;
        case 12: //GyroOffsetY
            err = SetFloatParameter(0x2302 , 14 , val );
            break;
        case 13: //GyroOffsetZ
            err = SetFloatParameter(0x2302 , 15 , val );
            break;
        case 14: //qImu2Body[0]
            err = SetFloatParameter(0x2302 , 16 , val );
            break;
        case 15: //qImu2Body[1]
            err = SetFloatParameter(0x2302 , 17 , val );
            break;
        case 16: //qImu2Body[2]
            err = SetFloatParameter(0x2302 , 18 , val );
            break;
        case 17: //qImu2Body[3]
            err = SetFloatParameter(0x2302 , 19 , val );
            break;
        case 18: // spare
            err = SetFloatParameter(0x2302 , 20 , val );
            break;
        case 19:  // spare
            err = SetFloatParameter(0x2302 , 21 , val );
            break;
        case 20:  // spare
            err = SetFloatParameter(0x2302 , 22 , val );
            break;
        case 21:  // spare
            err = SetFloatParameter(0x2302 , 23 , val );
            break;
        case 22:  // spare
            err = SetFloatParameter(0x2302 , 24 , val );
            break;
        case 23: //NeckGainAddFac
            err = SetFloatParameter(0x2302 , 25 , val );
            break;
        case 26: //CalibDate
            err = SetLongParameter(0x2302 , 31 , lval );
            break;
        case 27: //CalibData
            err = SetLongParameter(0x2302 , 32 , lval );
            break;
        default:
            break ;

        }

        if (err) // value out of range
        {
            SysState.CalibVarsFine = 0 ;
            return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci ) ;
        }

        cnt = cnt+3 ;

    }
    //SendObj( [hex2dec('2206'),0] , 10000 , DataType.long , 'Set manual mode' ) ;
    //err = SetFloatParameter(0x2206 , 0 , 10000 ); //set manual mode
    SetLongParameter(0x2302 , 249 , 0 ) ; // apply calibration
    return SetSpiInterpretErrorTx(0, txcntr , 0 , IsSci ) ;
}

long SciStartManualMode(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    long err ;
    (void)buf ;
    (void)MessageTime ;
    err = 0 ;
    //SendObj( [hex2dec('2206'),0] , 10000 , DataType.long , 'Set manual mode' ) ;
    SetFloatParameter(0x2206 , 0 , 0 ); // The value is not used by anything
    return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci ) ;
}


/*
 * Enter speed mode: direct command by the ROSS
 */
long SciSetVelocityCommand(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    long err;
    (void) MessageTime;

    if (IsWheelArmGoodToGo(ManRouteCmd.ShelfMode) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

    SysState.Mot.BodyCmd.Speed = GetUnalignedFloat(&buf[0]) ;
    SysState.Mot.BodyCmd.Omega = GetUnalignedFloat(&buf[2]) ;
    err = SetVelocityMode()  ;
    return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci ) ;
}


long SciSetManualMotion(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    short unsigned configuration, CommandsAmount,cnt, type;
    //short stat;
    float val ;
    float cmdrsteer, cmdlsteer, cmdneck ;
    float actrsteer , actlsteer, actneck;
    long err, ref;
    //short unsigned do_it
    //short unsigned all_ok;
    short unsigned short_val;

    struct CPdCmd2 *pPdCmd2 ;

    (void)MessageTime ;
    //do_it = 0;
    //all_ok = 0;
    err = 0 ;
    configuration = buf[0] ; //use configuration to set values!
    CommandsAmount = buf[1] ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;

    //cnt = 0;
    ref = 0 ; // Just for no compiler shout

    if ( SysState.bInRescue )
    {
        err  = 10 ;
        return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci ) ;
    }

    for ( cnt = 0 ; cnt < CommandsAmount*3 ;  )
    {
        if ( cnt >= MAX_MANUAL_MOTION_MESSAGES )
        {
            break;
        }
        type = buf[2+cnt];
        //val = (float)GetUnalignedLong(&buf[3+cnt]) ;
        val = GetUnalignedFloat(&buf[3+cnt]) ;
        if (type < N_CAN_SLAVES)
        {
            if ( (configuration == 0) & (type == 0 || type == 1))
            {
                val = val / 2.13f;
            }
            if (type == 2 || type ==3 || type == 4) //right steering, left steering or neck angle
            {
                if (fabs(val) > 3.142)
                {
                    err = 1; //out of range
                }
            }
            if (err == 0) //valid value for steering / neck angle OR wheel speed was sent
            {
                if (SetFloatParameter(0x2206 , type+11 , val ))
                {
                    err = 5;
                }
            }

            //err = ApplyManualMotion(type, val);
            //if (err)
            //{
            //    return SetSpiInterpretErrorTx(err, txcntr, 0,IsSci );
            //}
            //if (do_it) //zalipucha for debugging
            //{

            //}

            //break;
        }
        else
        {
            switch (type)
            {
            case 5: //front light toggle
                //[hex2dec('2203'),100] , val = 4
                pPdCmd2->FrontCamLightOn = val ? 1 : 0  ;
                break;
            case 6: //chakalaka toggle
                pPdCmd2->ChakalakaOn = val ? 1 : 0  ;
                break;
            case 7: //laser toggle
                //0x2220, si = 15
                if ( val )
                {
                    SysState.Package.ManipControlWord.ForceLaser = 1 ;
                }
                else
                {
                    SysState.Package.ManipControlWord.ForceLaser = 0 ;
                }
                break;
            case 8: //reset LP
                //if (do_it) //zalipucha for debugging
                //{
                SetLongParameter(0x2301 , 1 , 0x12345678 ); //FW access rights
                SetLongParameter(0x2301 , 244 , 0 ); //Reset FW
                //}
                break ; // Formal

            case 9: //stop all
                //% First kill the wheels
                //if (do_it == 0) //zalipucha for debugging
                //{
                //    break;
                //}
                //else
                //{

                if (SetFloatParameter(0x2206 , 11 , 0 )) //Speed command RWheel.
                {
                    err = 5;
                }
                //err is only checked here and not in the rest of the axes commands, just to check that there is no motion mode fault.

                if (err == 0)
                {
                    SetFloatParameter(0x2206 , 12 , 0 ) ; //Speed command RWheel

                    //% Get axis commands for R,L, Neck
                    GetFloatParameter(0x2206 , 13 , &cmdrsteer ) ;//check
                    GetFloatParameter(0x2206 , 14 , &cmdlsteer ) ;//check
                    GetFloatParameter(0x2206 , 15 , &cmdneck ) ;

                    //% Get axis actuals for R,L, Neck
                    GetFloatParameter(0x2204 , 30 , &actrsteer ); //Right steer angle. In Matlab was multiplied by minus(180 / pi).
                    actrsteer = -actrsteer ;
                    //actrsteer = - SysState.CanAxis[LOGICAL_RSTEER].OuterPos;
                    GetFloatParameter(0x2204 , 31 , &actlsteer ); //Left steer angle. In Matlab was multiplied by minus(180 / pi).
                    actlsteer = -actlsteer ;
                    //actlsteer = - SysState.CanAxis[LOGICAL_LSTEER].OuterPos;
                    GetFloatParameter(0x2204 , 32 , &actneck ); //Neck Angle. In Matlab was multiplied by minus(180 / pi).
                    //actneck =  SysState.CanAxis[LOGICAL_NECK].OuterPos;

                    if ((fabs(cmdrsteer - actrsteer)) > 0.1396f) //8 (degrees) * pi / 180
                    {
                        cmdrsteer = actrsteer ;
                    }
                    if ((fabs(cmdlsteer - actlsteer)) > 0.1396f) //8 degrees
                    {
                        cmdlsteer = actlsteer ;
                    }
                    if ((fabs(cmdneck - actneck)) > 0.1396f) //8 degrees
                    {
                        cmdneck = actneck ;
                    }

                    //if (all_ok) //zalipucha
                    //{
                    SetFloatParameter(0x2206 , 13 , cmdrsteer ); //Pos command RSteer
                    SetFloatParameter(0x2206 , 14 , cmdlsteer ); //Pos command LSteer
                    SetFloatParameter(0x2206 , 15 , cmdneck ); //Pos command Neck
                }

                //}
                //}
                break;

            case 10: //reset Power Supplies
                //if (do_it) //zalipucha for debugging
                //{
                SysState.Status.MasterBlaster = 1 ; //Set Master Blaster
                if (SetShortParameter(0x2220 , 40 , 1 )) //Restart Dynamixel network
                {
                    err = 2; //communication problem with PD
                }

                //}

                break;
            case 11: //Release Brake + Motors On
                if  ( (__fmin(__fmax( val,0),65535.0f) != val ) || __fracf32(val))
                {
                err = 3; //either out of range or not an integer
                }
                else
                {
                    short_val = (short unsigned)val;
                    //if (do_it) //zalipucha for debugging
                    //{
                    SysState.Status.MasterBlaster = 1; //Set Master Blaster.
                    SetShortParameter(0x2220 , 6 , short_val ) ;
                    //}
                }

                break;
            case 12: //sleep
                //if (do_it) //zalipucha for debugging
                //{
                if (val == 0)
                {
                    if (SetLongParameter(0x2220 , 72 , 1234 )) //Wakeup. If robot is already awake, do nothing.
                    {
                        err = 4;
                    }
                }
                else
                {
                    SetLongParameter(0x2220 , 73 , 1234 ); //Go to sleep.
                }
                //}

                break;
            case 13: //emergrncy (mushroom)
                //if (do_it) //zalipucha for debugging
                //{
                if (SetLongParameter(0x2220 , 18 , 0 )) //emergency. value does not matter.
                {
                    err = 2; //communication problem with PD
                }
                //}
                break;
            case 14: //reboot manipulator
                //if (do_it) //zalipucha for debugging
                //{
                SysState.Status.MasterBlaster = 1 ; //Set Master Blaster
                SetShortParameter(0x2220 , 45 , 1 ); //Reboot Dynamixel network.
                //}
                break;
            case 15: //vacuum toggle

                SetShortParameter(0x2220 , 16 , (short unsigned)val ); //Set Pump On
                //}
                break;

            case 16: //right steering calibration

                //ref = FetchObj( [hex2dec('2206'),3] , DataType.long , 'R enc ref' )
                GetLongParameter(0x2206 , 3 , &ref ); //find ref value
                ref = (long)((val * (-SysState.CanAxis[LOGICAL_RSTEER].MotCntRad))) + ref;
                SetLongParameter(0x2206 , 3 , ref); //set whole angle
                //ref = 0;


                break;
            case 17: //left steering calibration

                GetLongParameter(0x2206 , 4 , &ref ); //find ref value
                ref = (long)((val * (-SysState.CanAxis[LOGICAL_LSTEER].MotCntRad))) + ref;
                SetLongParameter(0x2206 , 4 , ref); //Set whole angle
                //ref = 0;

                break;

            case 18: //neck calibration

                GetLongParameter(0x2206 , 5 , &ref ); //find ref value
                ref = (long)((val * (SysState.CanAxis[LOGICAL_NECK].MotCntRad))) + ref;
                SetLongParameter(0x2206 , 5 , ref); //Set whole angle
                //ref = 0;

                break;
            //case 9: //rear light toggle
            //    pPdCmd2->RearCamLightOn = (long unsigned)val ? 1 : 0  ;
            //    break;

            default:
                // This is an unknown type , we merely say we don't transmit it
                //show error?
                err = 6 ;
                break;
            }

        }


        if (err)
        {
            return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci );
        }

        cnt = cnt+3 ;
        //do_it = 0;

    }
     return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci ) ;
}

long SciSetHandlePackage(short unsigned * buf , long MessageTime , short unsigned txcntr , short unsigned IsSci )
{
    short unsigned packmode ;
    //long  stat;
    short  incidence ;
    (void)MessageTime ;

     if (Config.ManipConfig == EManipulator_None)
    {
        return SetSpiInterpretErrorTx(SPI_ERR_NO_MANIPULATOR, txcntr, 0 , IsSci );
    }

    if (IsWheelArmGoodToGo(ManRouteCmd.ShelfMode) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

    // Emergency dealing with package
    if ((SysState.Mot.mode == E_SysMotionModeAutomatic) && SysState.Mot.ExecutingQueue)
    { // Running an auto queue
        return SetSpiInterpretErrorTx(SPI_ERR_IN_MOT_QUEUE, txcntr, 0,IsSci );
    }

    if ( (SysState.Package.State >  EPackState_Init  ) && (SysState.Package.State !=  EPackState_Success ) )
    {
        return SetSpiInterpretErrorTx(SPI_ERR_MANIPULATOR_BUSY, txcntr, 0 , IsSci );
    }

    incidence = (short)buf[6];
    if (incidence < -3641 || incidence >  3641)
    {
        return SetSpiInterpretErrorTx(SPI_ERR_BAD_INCIDENCE_4_PACK, txcntr, 0, IsSci );
    }

    SimPackageItem.cx = (float) fabs( incidence *  9.5874e-05f ) ; // IncidenceAngle
    SimPackageItem.x = GetUnalignedLong(& buf[4]);
    SimPackageItem.y = GetUnalignedLong(& buf[2]);

    packmode = buf[0] &0xf ;
    if (packmode == E_PackModeDebugRunPack  )
    {
        packmode = E_PackModeResetManipulatorCmds ;
    }

    SimPackageItem.z_or_lModeData =  ((  (long unsigned) buf[1] & 3) << 16  )
            + (packmode << 4) ;

    if ( packmode == 0 )
    {
        return SetSpiInterpretErrorTx(0, txcntr, 0, IsSci) ; // Nothing asked, nothing to do
    }

    if (( packmode !=  E_PackModeResetManipulatorPower) && (packmode !=  E_PackModeRebootManipulatorMotors) &&
            (SysState.Mot.mode < E_SysMotionModeStay )  )
    {// Modes other than resetting require initialized motion, as we need to move the neck
        return SetSpiInterpretErrorTx(SPI_PACKAGE_REQUIRES_MOTOR_ON, txcntr, 0, IsSci );
    }


    if ( SysState.Mot.mode <=  E_SysMotionModeTestPack)
    { // Manual modes , return anyway to manual travel so restoration motion of neck will be possible
        SysState.Package.PackSim.OldMotMode = E_SysMotionModeManualTravel ;
    }
    else
    {
        SysState.Package.PackSim.OldMotMode = SysState.Mot.mode ;
    }

    // Store old neck data for restoration after action
    SysState.Package.PackSim.OldPosTarget = GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK]) ;
    SysState.Package.PackSim.OldNeckMode = SysState.Mot.NeckControl.NeckMode ;

    // Go to E_SysMotionModeTestPack which is actually a manual mode, to be restored (if needed) to automatic after completion
    SimPackageItem.MotionItemMode = 0 ; // So that sequence should restart
    SetMotionMode(E_SysMotionModeTestPack,2);
    return  SetSpiInterpretErrorTx(0, txcntr, 0, IsSci);
}

long SciSetDeviationReport(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    long  age ;


    SysState.Mot.Deviation.MsgCntr.us[1] += 1 ;

    if (ImuStartMgr.Good  == 0 )
    { // Cant have navigation data before gyro is calibrated
        return SetSpiInterpretErrorTx(SPI_ERR_GYRO_NOT_CALIB, txcntr, 0 , IsSci );
    }

    if (SysState.Mot.mode == E_SysMotionModeHostSpeedControl)
    {
        return SetSpiInterpretErrorTx(SPI_ERR_IN_HOST_SPEEDMODE, txcntr, 0, IsSci);
    }

    if (IsWheelArmGoodToGo(0) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

    age = MessageTime - GetUnalignedLong(&buf[2] ) ;
    if ( age > BIGGEST_NAV_CORRECTION_AGE_USEC )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_NAV_RPT_TIME , txcntr,0, IsSci  );
    }

    if ( SysState.Nav.IgnoreLineDev )
    { // Do nothing if so instructed
        return SetSpiInterpretErrorTx( 0 , txcntr ,0, IsSci );
    }

    SysState.Mot.Deviation.Age = age ;
    SysState.Mot.Deviation.MsgCntr.us[0] += 1 ;
    SysState.Mot.TotalMsgCounter = (SysState.Mot.TotalMsgCounter & (~(0x3ffUL<<10))) + (((long unsigned)SysState.Mot.Deviation.MsgCntr.us[0]  & 0x3ff) << 10  ) ;

    SysState.Mot.Deviation.CmdCntr += 1 ; // Flag to handle newly entered report

    SysState.Mot.Deviation.Offset = (short) buf[0];
    SysState.Mot.Deviation.AzimuthDev = (short) buf[1];

    SysState.Mot.Deviation.TStamp = IsrTimer.UsecTimer - age ;
    return SetSpiInterpretErrorTx( 0 , txcntr , 0, IsSci );
}


/*
 * Get the azimuth from the robot's quaternion, assuming ground navigation, thus
 * only rotation about the vertical matters.
 * 0 yaw means the robot is facing away from the rack (robot X on terminal X).
 * pi/2 yaw means accurate left climb.
 * -pi/2 yaw means accurate right climb.
 */
float QuaternionRaw [4] ;
float Quaternion [4] ;
float QPitch , QRoll ;
float GetAzimuthFromQuatBuf(short unsigned *buf)
{
    float yaw  , n;
    QuaternionRaw[1] = (float)(GetUnalignedLong(&buf[0]));
    QuaternionRaw[2] = (float)(GetUnalignedLong(&buf[2]));
    QuaternionRaw[3] = (float)(GetUnalignedLong(&buf[4]));
    QuaternionRaw[0] = (float) (GetUnalignedLong(&buf[6])); //the QuaternionRaw w is first.

    n = 1.0F /  2147483647.0f ;
    QuaternionRaw[0] *= n ;
    QuaternionRaw[1] *= n ;
    QuaternionRaw[2] *= n ;
    QuaternionRaw[3] *= n ;

    // Quaternion reference change  17-6-2021
    QuatOnQuat( SysState.Nav.QRcu2LpW_StartPostShare,QuaternionRaw,Quaternion) ;
    QuatOnQuat( Quaternion,SysState.Nav.QRcu2LpW_StartPostShare,Quaternion) ;
    QuatOnQuat( Quaternion , SysState.Nav.QRcu2Lp ,  Quaternion ) ;
    QuattoEuler(Quaternion, &yaw, &QPitch, &QRoll) ;

    return yaw ;
}

/*
 * Take a relative position command. The relative position is w.r.t. a camera located on a pole
 * We here move from camera coordinates to robot body coordinates.
 */
long SciSetRelativePositionReport(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci )
{
    return SciSetRelativePositionReportBody(buf , MessageTime , txcntr, IsSci ); //OBB: not tested
}



long SciSetPositionReport(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    //note: this function now dont match software tests. azimuth (whihc was 2 bytes) was converted to quternion (16 bytes: float[4]).
    //however, mode cand tests still match software tests and not only messages form RBPi.
    short unsigned AddCmdCtr ;
    long  age ;
    float yaw ;
    struct CPosReport * pPosReport ; // !< Position report from master

    short unsigned     modecand = buf[16] ;

    pPosReport = & SysState.Mot.PosReport ; // !< Position report from master

    if (ImuStartMgr.Good == 0)
    { //Can't have navigation data before gyro is calibrated
        return SetSpiInterpretErrorTx(SPI_ERR_GYRO_NOT_CALIB, txcntr, 0, IsSci);
    }

    if (IsWheelArmGoodToGo(1) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

    age = MessageTime - GetUnalignedLong( & buf[14] );
    if ( age < 0  || age > BIGGEST_NAV_CORRECTION_AGE_USEC )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_NAV_RPT_TIME , txcntr, 0, IsSci  );
    }

    pPosReport->MsgCntr += 1 ;
    SysState.Mot.TotalMsgCounter = (SysState.Mot.TotalMsgCounter & (~(0x3ffUL<<0))) + (((long unsigned)pPosReport->MsgCntr & 0x3ff) << 0  ) ;

    yaw = GetAzimuthFromQuatBuf(&buf[6]) ;

    pPosReport->Azimuth = FtoAngle(yaw); //1.57 we got Azimuth = 16384. (2^16 for entire rotation, 16384 is quarter a rotation)

    //pPosReport->Azimuth =(short)buf[6];

    pPosReport->TStamp = IsrTimer.UsecTimer - age ;

    // Coordinate swapping to cope with robot nav  17-6-2021
    //pPosReport->X[0] = GetUnalignedLong(&buf[0] );
    //pPosReport->X[1] = GetUnalignedLong(&buf[2] );
    //pPosReport->X[2] = GetUnalignedLong(&buf[4] );
    pPosReport->X[0] =  GetUnalignedLong(&buf[2] ); //Robot.global.X <-- RC.global.Y (north) 
    pPosReport->X[1] =  GetUnalignedLong(&buf[0] ); //Robot.global.Y <-- RC.global.X (east) 
    pPosReport->X[2] = -GetUnalignedLong(&buf[4] ); //Robot.global.Z <--  *minus* RC.global.Z (up) 

    if ( modecand != 5 )
    {
        if ( SysState.Nav.IgnoreQrCodes)
        { // Do nothing if so instructed
            return SetSpiInterpretErrorTx( 0 , txcntr ,0, IsSci );
        }
    }
    pPosReport->Mode = (modecand==5) ? 4 : modecand ;//mode 4 is force
    AddCmdCtr = 1 ;
    if ( SysState.Mot.InGroundNav )
    {
         if ( SegQ[0].seg[SegRun.SegIndex].Type !=  SegType_Differential)
         {
             AddCmdCtr = 0 ;
         }
    }
    pPosReport->CmdCntr += AddCmdCtr ; // Flag to handle newly entered report

    AbortVelocityMode() ; // Kill any speed mode
    return SetSpiInterpretErrorTx( 0 , txcntr , 0 , IsSci  );
}





long SciSetParameter(short unsigned *buf,long MessageTime, short unsigned txcntr , short unsigned IsSci)
{// Call an object dictionary SET service from the host
    struct CObjDictionaryItem *pObject;
    short Index ;
    long lstat ;
    (void) MessageTime ;

    Index = buf[0] ;
    if ( GetObjIndex( Index , &pObject, ObjDictionaryItem ) < 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_PARAM_NO_INDEX, txcntr ,0, IsSci );
    }

    DummySdoFromSpi.Index = Index ;
    DummySdoFromSpi.SubIndex = buf[1]  ;
    DummySdoFromSpi.SlaveBuf[0] = GetUnalignedLong( & buf[3] ) ;


    lstat =  pObject->SetFunc( &DummySdoFromSpi , buf[2]) ;
    return SetSpiInterpretErrorTx( lstat , txcntr , 0, IsSci );
}

short unsigned IsArcSegmentCompensation(void)
{
    if( HostMessageStr.RcProtocolVersion >= RC_VERSION_FOR_Z_CORRECTION  )
    {
        return 1 ;
    }
    return 0 ;
}


long SciSetConfiguration(short unsigned *buf,long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    // Special code resets configuration

    long unsigned rcver ;
    short unsigned cnt ,mask  ;
    short unsigned opcode;
    short unsigned pairsAmount , nPair ;
    short unsigned *pMsgCfg ;
    (void) MessageTime ;

    //protocol = GetProtocol() ;
    //HostProtocolType = ( Config.ProtocolType == ERCProtocolType_Early) ? 0 : 1 ;

    rcver = GetUnalignedLong(&buf[0] );

    if ( rcver == 0xF123456F )
    {
        HostMessageStr.bConfigurationReceived  = 0 ;
        return SetSpiInterpretErrorTx( 0 , txcntr , 0 , IsSci );
    }
    else
    {
        HostMessageStr.RcVersion = rcver ;
         HostMessageStr.RcProtocolVersion = ReadULFromUint (&buf[2]) ;
         ReadFloatFromUint ( &buf[5] , (float *) &HostMessageStr.ShelfToothPitch );
         if ( IsNear( HostMessageStr.ShelfToothPitch , 6.28f ))
         {
             Config.RailPitchType = 0  ;
         }
         else if ( IsNear( HostMessageStr.ShelfToothPitch , 6.35f ))
         {
             Config.RailPitchType = 1  ;
         }
         else
         {
             return SetSpiInterpretErrorTx( SPI_TX_BAD_TOOTHPITCH , txcntr , 0xf , IsSci );
         }

         // Use pole docking
         if ( buf[7] & 1 )
         { //1 - Close loop docking
             SysState.Mot.UsePoleDocking = 1 ;
         }
         else
         { //0 - QR codes
             SysState.Mot.UsePoleDocking = 0 ;
         }

         CalcGeomData();
         HostMessageStr.Permission = buf [4];
         if ( HostMessageStr.RcProtocolVersion < RC_VERSION_FOR_SHELFSTOP_PERMIT)
         {
             HostMessageStr.Permission &= 3 ; // Only these permission exist before this version
         }
         nPair = 11 ;

         pairsAmount = buf[nPair];

         if ( ((HostMessageStr.MessageLength - nPair-1)>>1)  < pairsAmount  )
         {
             return SetSpiInterpretErrorTx( SPI_MESSAGE_LEN_MISMATCH , txcntr , 0 , IsSci );
         }

        //pairsAmount = buf[3];

        //if ( ((HostMessageStr.MessageLength - 4)>>1)  < pairsAmount  )
        //{
        //    return SetSpiInterpretErrorTx( 1234 , txcntr , 0 , IsSci );
        //}

        HostMessageStr.StatusMessagePeriod = 0 ; //all periods should be null
        HostMessageStr.BITMessagePeriod = 0;
        HostMessageStr.TravelInfoMessagePeriod = 0;
        HostMessageStr.ManipulatorStatusMessagePeriod = 0;
        HostMessageStr.TrayStatusMessagePeriod = 0;
        HostMessageStr.RawSensorsStatusMessagePeriod = 0;
        HostMessageStr.OdometryMessagePeriod = 0;

        HostMessageStr.StatusMessageTrigger = 0 ;
        HostMessageStr.BITMessageTrigger = 0;
        HostMessageStr.TravelInfoMessageTrigger = 0 ;
        HostMessageStr.ManipulatorStatusMessageTrigger = 0 ;
        HostMessageStr.TrayStatusMessageTrigger = 0 ;
        HostMessageStr.RawSensorsStatusMessageTrigger = 0 ;
        HostMessageStr.OdometryMessageTrigger = 0;


        HostMessageStr.StatusMessageCntr = 0 ;
        HostMessageStr.BITMessageCntr = 0;
        HostMessageStr.TravelInfoMessageCntr = 0 ;
        HostMessageStr.ManipulatorStatusMessageCntr = 0 ;
        HostMessageStr.TrayStatusMessageCntr = 0 ;
        HostMessageStr.RawSensorsStatusMessageCntr = 0 ;
        HostMessageStr.OdometryMessageCntr = 0;


        //for ( cnt = 0 ; cnt < length-3 ;  )
        pMsgCfg = buf + nPair + 1 ;
        for ( cnt = 0 ; cnt < pairsAmount ; cnt++   )
        {
            if ( cnt >= MAX_CONFIG_MESSAGES )
            {
                break ;
            }
            opcode = *pMsgCfg++ ;
            switch (opcode)

            {
            case 0x20: //status message
                HostMessageStr.StatusMessagePeriod = *pMsgCfg++;
                break;
            case 0x21: //BIT message
                HostMessageStr.BITMessagePeriod = *pMsgCfg++;
                break;
            case 0x23: //travel info message
                HostMessageStr.TravelInfoMessagePeriod = *pMsgCfg++;
                break;
            case 0x24: //manipulator status message
                HostMessageStr.ManipulatorStatusMessagePeriod = *pMsgCfg++;
                break;
            case 0x25: //tray status message
                HostMessageStr.TrayStatusMessagePeriod = *pMsgCfg++;
                break;
            case 0x26: //raw sensors status message
                HostMessageStr.RawSensorsStatusMessagePeriod = *pMsgCfg++;
                break;
            case 0x27: //Odometry status message
                HostMessageStr.OdometryMessagePeriod = *pMsgCfg++ ;
                mask = (short unsigned) BlockInts(  );
                OdometryReportVars.LEnc = WheelEncL.Position;
                OdometryReportVars.REnc = WheelEncR.Position;
                OdometryReportVars.usec = IsrTimer.UsecTimer ;
                RestoreInts(mask) ;
                break;

            default:
                // This is an unknown op-code
                //buf[4+cnt] = 0 ;
                * (pMsgCfg-1) = 0 ; // denote we don't transmit it
                pMsgCfg += 1 ; // Advance pointer to next code
                break ;

            }
        }
        HostMessageStr.bConfigurationReceived = 1 ;
    }
    if ( IsSci)
    {
        //SendSciConfigReport(txcntr , 0 , OpCodeSetConfig);
        SendSciConfigReport(&buf[nPair + 1], pairsAmount*2);
    }
    return 0 ;
}






union
{
    long unsigned ul[8]  ;
    short unsigned us[16] ;
} data;


long SciTunnelPacket(short unsigned *buf_in,long MessageTime, short unsigned txcntr , short unsigned IsSci)
{
    extern void TunnelSlave(unsigned long *data, short unsigned target );
    short unsigned cnt  , cs , cs1;
    short unsigned next ;

    short unsigned datatype , cpu  ;


    short unsigned nPayloadWords , opcode , target , nData ;
    short unsigned *buf ;
    long lTemp  ;
    struct CObjDictionaryItem *pOdObject ;

    //struct RBPiHeader *header_bytes; //CHANGEDNOW
    // On acceptance buffer buf[] includes the 4 words of preamble, and another 4 words of to-send-back preamble which is:
    // - Send back address  (2 words)
    // - Send back port     (1 word)
    // - N: Number of payload bytes (1 word).

    (void) MessageTime ;
    (void) txcntr ;
    (void) IsSci ;

    if (HostMessageStr.MessageLength < 9 )
    {
        return -1 ; //See that buffer is long enough
    }

    nPayloadWords = ( * (unsigned short *) &buf_in[7] ) >> 1 ;
    if ( (nPayloadWords >= (HOST_SINGLE_MESSAGE_MAX_LEN - 8 )) || ( nPayloadWords < 1) )
    {// Payload too long or even no opcode
        return -2 ;
    }

    // Test for op-code
    buf = buf_in + 8 ;
    cs = 0 ;
    for ( cnt = 0 ; cnt < nPayloadWords ; cnt++ )
    {
        cs+= *buf++ ;
    }
    if ( cs )
    {
        return -3 ;
    }

    // First tunnel word is an op-code
    opcode = buf_in[8] & 0xf ; // Higher part is the expected response type for the record
    target = (buf_in[8] >> 8) ;

    nPayloadWords -= 3 ;

    buf = buf_in + 10 ; // Payload part
    nData = 2 ;

    switch (opcode)
    {
    case 1: // Standard object series


        lTemp = SdoMaxLenLongGlobal ;

        datatype = buf[0] & 0xf ;
        cpu      = ( buf[0] >> 4 ) & 1 ;
        cs1 = ( buf[0] & 0x60 ) >> 5 ;

        if ( datatype == 9  )
        { // That is a string
            if (nPayloadWords & 0x1) //verify message length divides by 4
            {
                return -1 ; //each msg should be 8 words long
            }
            if ( (cs1==1) && (nPayloadWords > 32) && (cpu==0))
            {
                SdoMaxLenLongGlobal = (nPayloadWords >> 1) + 1 ;
                TunnelSdo.Bytes2Dload  = nPayloadWords ;
                TunnelSdo.Index = ( (* ((long unsigned *) &buf[0])) >> 8 ) & 0xffff ;
                TunnelSdo.SubIndex = ( (* ((long unsigned *) &buf[0])) >> 24 ) & 0xff  ;
                TunnelSdo.SlaveBuf = (unsigned long *)&buf[2] ;
                if ( GetObjIndex(TunnelSdo.Index , & pOdObject , ObjDictionaryItem ) < 0 )
                {
                    return -1 ;
                }
                // Initiate download
                if ( pOdObject->SetFunc == (SetDictFunc) 0  )
                {
                    return -1 ;
                }
                * ((long unsigned *) &buf[0])  = pOdObject->SetFunc(&TunnelSdo,TunnelSdo.Bytes2Dload) ;

            }
            else
            {
                return -1;
            }
        }
        else
        {
            if (nPayloadWords & 0x3) //verify message length divides by 8
            {
                return -1 ; //each msg should be 8 words long
            }
            SdoMaxLenLongGlobal = 1 ;
            for ( cnt = 0  ; cnt < (nPayloadWords>>2) ; cnt++ )   //UNTIL ILLEGAL MSG OR  OR UNTIL END OF PAYLOAD LENGTH
            {
                data.us[0] = buf[0];
                data.us[1] = buf[1];
                data.us[2] = buf[2];
                data.us[3] = buf[3];
                target = ( data.us[0] & 0x10 ) ? ID_MANIPULATOR : LP_CAN_ID ;
                TunnelSlave(&data.ul[0] , target ) ;
                buf[0] = data.us[0] ;
                buf[1] = data.us[1] ;
                buf[2] = data.us[2] ;
                buf[3] = data.us[3] ;
                buf += 4 ;
            }
        }
        SdoMaxLenLongGlobal = lTemp ;
        break ;

    case 2: // Recorder fetch request
        if ( target != LP_CAN_ID)
        {
            * (long*) &buf[0] = Client_server_command_specifier_not_valid_or_unknown ;
            * (long*) &buf[2] = 0 ;
            break ;
        }

        TunnelSdo.SubIndex = 100 ;
        TunnelSdo.SlaveBuf = (long unsigned *) &buf[2] ;
        lTemp = SdoMaxLenLongGlobal ;
        SdoMaxLenLongGlobal = ((HOST_SINGLE_MESSAGE_MAX_LEN ) >> 1 ) - 8 ; // Allocation for status (2) op+target+cntr(2) and cs(1)
        *( long unsigned * ) &buf[0] = GetRecorder( &TunnelSdo ,&nData) ;
        SdoMaxLenLongGlobal = lTemp ;
        nData = (nData>>2)+1 ;

        break;


    case 3: // BIT request
        if ( target != LP_CAN_ID)
        {
            * (long*) &buf[0] = Client_server_command_specifier_not_valid_or_unknown ;
            * (long*) &buf[2] = 0 ;
            break ;
        }
        nData = MakeBitBuffer( (long unsigned *) &buf[0]) ;
        nData >>= 1 ; // From words to long
        break ;

    default:
        * (long*) &buf[0] = Client_server_command_specifier_not_valid_or_unknown ;
        * (long*) &buf[2] = 0 ;
    }

    buf = buf_in + 8 ; cs = 0 ;
    next = ((nData  << 1)+2);
    for ( cnt = 0 ; cnt <  next ; cnt++ )
    {
        cs -= *buf++ ;
    }
    *buf = cs ;

    next = (nData  << 1) + 7  ; // Thats Data  + 4 of preamble + 2 of opcode/target + 1 of cs
    // Set the length
    buf_in[7] = (nData<<2)+6 ; // That is 4bytes/data + 4 bytes preamble + 2bytes checksum
    Copy4Transmission((short unsigned *) buf_in+4, next, 4 , GetShortTimer ( &SysTimerStr ) ); //not sure if it should be here or inside the for (not that it matters for now).
    return  0 ;
}

long SciNullFun(short unsigned *buf,long MessageTime,short unsigned txcntr , short unsigned IsSci)
{
    (void) buf ;
    (void) MessageTime ;
    (void) txcntr ;
    (void) IsSci ;
    return  0 ;
}





/*
 * IsInMission:
 * \brief Test if the robot executes something in automatic mode
 */
short IsInMission(void)
{
    if ( SysState.CBit.bit.OnRescueMission )
    {
        return 3 ;
    }
    if ( (SysState.Mot.mode >= E_SysMotionModeAutomaticIdle ) && SysState.Mot.JumpCmd.CmdCntr )
    {
        return 1 ;
    }
    if ((SysState.Mot.mode == E_SysMotionModeAutomatic) && SysState.Mot.ExecutingQueue)
    { // Running an auto queue
        return 1;
    }
    if ( (SysState.Package.State >  EPackState_Init  ) && (SysState.Package.State !=  EPackState_Success ) )
    {
        return 2;
    }
    return 0 ;
}

/*
 * Returns 1 if steering target is as specified
 * if the steering targets is opposing, as in crab check, also convergent position is checked
 */
short IsSteerTargetDirection( float rsteertarget ,float lsteertarget, float tol )
{
    if ( SysState.ManRouteState.NewCrabFlag )
    {
        return 0 ;
    }
    if (fabsf(-GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER]) - rsteertarget) > tol  )
    {
        return 0 ;
    }
    if (fabsf(-GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER])- lsteertarget)  > tol  )
    {
        return 0 ;
    }
    if ( rsteertarget == lsteertarget )
    {
        if (fabsf(GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER])-GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER])) > tol  )
        {
            return 0 ;
        }
    }
    else
    {
        if ( fabsf( GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_RSTEER]) - GetUserPosRSteer() ) > 0.015f )
        {
            return 0 ;
        }
        if ( fabsf( GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_LSTEER]) - GetUserPosLSteer()  ) > 0.035f )
        {
            return 0 ;
        }
    }
    return 1 ;
}


/*
 * This is actually a stand-by command to the right left or center, so we use the existing handle package service
 */
long RotateTapeArm(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    short dir;
    float tape , door ;
    (void) MessageTime;
    // Test that tape arm is at all installed
    if (IsInMission())
    { // Running an auto queue
        return SetSpiInterpretErrorTx(SPI_ERR_IN_MOT_QUEUE, txcntr, 0,IsSci );
    }
    if ( Config.ManipConfig != EManipulator_Flex_Arm )
    {
        return SetSpiInterpretErrorTx(SPI_NO_TAPEARM, txcntr , 0 , IsSci );
    }
    dir = buf[0] ;
    if ( dir > 16384 || dir < -16384 )
    {
        return SetSpiInterpretErrorTx(SPI_TAPEARM_ARG_OUTOF_RANGE, txcntr , 0 , IsSci );
    }

    // Emergency dealing with package
    if ((SysState.Mot.mode == E_SysMotionModeAutomatic) && SysState.Mot.ExecutingQueue)
    { // Running an auto queue
        return SetSpiInterpretErrorTx(SPI_ERR_IN_MOT_QUEUE, txcntr, 0,IsSci );
    }

    if ( (SysState.Package.State >  EPackState_Init  ) && (SysState.Package.State !=  EPackState_Success ) )
    {
        return SetSpiInterpretErrorTx(SPI_ERR_MANIPULATOR_BUSY, txcntr, 0 , IsSci );
    }

    if ( SysState.Mot.mode ==  E_SysMotionModeTestPack)
    {
        return SetSpiInterpretErrorTx(SPI_ERR_MANIPULATOR_BUSY, txcntr, 0 , IsSci );
    }

    //FLEX_AXIS_DOOR = 0,
    //FLEX_AXIS_PLATE = 1

    tape = S2M.Items.ActStatus.stat.AxisReadout[0];
    door = S2M.Items.ActStatus.stat.AxisReadout[5];


    M2S.Items.ActCmd.cmd.PalletAngle = dir  ;
    M2S.Items.ActCmd.cmd.Flexmm      = (short) (__fmin(__fmax(tape,0   ),3) * 1000.0f )  ;
    M2S.Items.ActCmd.cmd.DoorAngle   = (short) (__fmin(__fmax(door,-0.5),2) * 10430.0f)  ;
    M2S.Items.ActCmd.cmd.GoToCntr    += 1 ;

    * ((short unsigned *)&SysState.Package.ManipControlWord) = MCW_AUTOMATIC | MCW_MOTORS_ON | MCW_GO_COORD ;

    return  SetSpiInterpretErrorTx(0, txcntr, 0, IsSci);
}


#ifdef PROJ_OPTIMIZE
#pragma FUNCTION_OPTIONS ( SetFineMotion, "--opt_level=3" );
#endif

long SetFineMotion( float movef )
{
    //long move ;
    //struct CMotionItem ItemCurrentPos  ;
    //short IndexInq = 1 ;
    if (SysState.Mot.mode < E_SysMotionModeStay )
    {
        return SPI_IN_MOTOR_FAULT ;
    }
    // If on shelf

    PrepAutoShelfRun() ;

    // Start conditions: minimum motion mode
    if ( (SysState.Mot.mode == E_SysMotionModeStay ) || (SysState.Mot.mode == E_SysMotionModePerAxis) )
    {
        SetMotionMode(E_SysMotionModeManualTravel,4) ;
    }

    EnterAutoShelfMotion( movef  , 2  );
    // WheelProfiler[0].Done = 0;
    // WheelProfiler[1].Done = 0;
    // SysState.ShelfRun.bProfileStart = 1 ;

    return 0 ;
}


long FinePositionCommand(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci)
{
    long err;
    union
    {
        short unsigned us[2] ;
        long l ;
    }move ;
    float fmove ;
    (void) MessageTime;

    // Emergency dealing with package
    if (  IsSteerTargetDirection( 0 , 0 ,  0.075f) == 0 )
    {
        return SetSpiInterpretErrorTx(SPI_FINE_MOT_BAD_STEERING, txcntr, 0 , IsSci );
    }

    if (IsInMission())
    { // Running an auto queue
        return SetSpiInterpretErrorTx(SPI_ERR_IN_MOT_QUEUE, txcntr, 0,IsSci );
    }
    if (IsWheelArmGoodToGo(ManRouteCmd.ShelfMode) == 0 )
    {
        return SetSpiInterpretErrorTx( SPI_ERR_BAD_WHEEARM_POS , txcntr , 0, IsSci );
    }

    move.us[0] = buf[0] ;
    move.us[1] = buf[1] ;
    fmove = move.l * LONG_2_M_FAC ;
    if ( fabsf(fmove) > 10.0f )
    {
        return SetSpiInterpretErrorTx(SPI_FINE_MOT_TOO_LARGE, txcntr, 0 , IsSci );
    }

    if  ( SysState.Mot.mode == E_SysMotionModeHostFinePosition )
    { // Already in mode, need to wait completion
        return SetSpiInterpretErrorTx(SPI_FINE_MOT_TOO_STILL_ON, txcntr, 0 , IsSci );
    }


    err = SetFineMotion(fmove)  ;
    return SetSpiInterpretErrorTx(err, txcntr , 0 , IsSci ) ;

}


#pragma FUNCTION_OPTIONS ( UpdateHostTimer, "--opt_level=3" );
/*
 * Update 32 bit version of Host usec timer, given its update lower DWORD
 *
 */
void UpdateHostTimer( long unsigned tmr  )
{// RT safe: Timer update in the assembler is in critical section
    short unsigned mask ;
    signed long * pL = (signed long *)&SysTimerStr.SysTimer; // Your own (copy of) HW 64bit timer
    long long lldelta , lle ;
    long ldelta ;
    mask = BlockInts() ;
    // Roll host timer - if low DWORD decreased, that is a high DWORD increment
    if ( tmr <  HostTimer.uTimer.ul[0]   )
    {// Manage MSW rolling
        HostTimer.uTimer.ul[1] += 1   ;
    }
    // Lower DWORD taken as is
    HostTimer.uTimer.ul[0] = tmr  ;

    // The higher DWORD, being arbitrary, is kept in reasonable distance from local time
    ldelta = __lmax ( __lmin(HostTimer.uTimer.uls.l - pL[1] , 2) , -2) ;
    HostTimer.uTimer.uls.l = pL[1] + ldelta ;

    // Estimate difference between host time and local time
    lldelta =  HostTimer.uTimer.ll -  (signed long long)SysTimerStr.SysTimer ;

    // How much estimate differs from existing?
    lle     = lldelta - HostTimer.DsysTime ;

    // Too big: kill filter initialization
    if ( llabs (lle) > 200000L )
    {
        HostTimer.init = 0 ;
    }

    if ( HostTimer.init == 0 )
    {// Uninitialized - accept difference as is
        HostTimer.init = 1 ;
        HostTimer.DsysTime = lldelta ;
    }
    else
    { // Already initialized - filter
        HostTimer.DsysTime = HostTimer.DsysTime + ( lle >> 4 ) ;
    }

    RestoreInts( mask) ;
}

/*
 * Master interpreter to decode message pre-amble and to route op-codes for their specific handlers
 */
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

        if ( HostMessageStr.Opcode >= N_COM_MESSAGE_TYPE || (SciMessageInterpretFuncTab[HostMessageStr.Opcode].ServiceFunc == SciNullFun ))
        {   // Illegal opcode - abandon
            break  ;
        }
        next = ( next + 1) & HOST_RX_MOD ;
        HostMessageStr.TimeTag_L = HostRxBuf[next] ;
        next = ( next + 1) & HOST_RX_MOD ;
        HostMessageStr.TimeTag_H = HostRxBuf[next] ;
        next = ( next + 1) & HOST_RX_MOD ;
        c = HostRxBuf[next] ;
        length = c>>1 ; // ranslate the length from bytes to words
        if ( (c < SciMessageInterpretFuncTab[HostMessageStr.Opcode].MessageLengthBytes) || (length > HOST_SINGLE_MESSAGE_MAX_LEN) )
        { // Illegal length
            break ;
        }
        HostMessageStr.MessageLength = length  ;
        HostMessageStr.InbufCnt = 0 ;

        // Generate linear buffer from the pay load characters
        while (HostMessageStr.InbufCnt < HostMessageStr.MessageLength)
        {
            next = ( next + 1) & HOST_RX_MOD ;
            HostMessageStr.msgBuffer[HostMessageStr.InbufCnt] = HostRxBuf[next] ;
            HostMessageStr.InbufCnt += 1 ;
        }

        MessageTime = (long unsigned)HostMessageStr.TimeTag_L  + ( (long unsigned)HostMessageStr.TimeTag_H << 16 ) ;
                //HostMessageStr.msgBody = HostMessageStr.msgBuffer ; // Select source for input stream

        UpdateHostTimer(MessageTime) ;

        if ( HostHandleStr.KillHostSpi  && (HostMessageStr.Opcode != 4  ))
        { // Tunneling messages always welcome
            switch (HostHandleStr.KillHostSpi)
            {
            case 2:
                if ( HostMessageStr.Opcode != 11)
                {
                    ResetSciStateMachine() ;
                    return ;
                }
                break ;
            default:
                ResetSciStateMachine() ;
                return ;
            }
        }

        // Select interpreter function according to opcode.
        SciMessageInterpretFuncTab[HostMessageStr.Opcode].ServiceFunc((unsigned short *)HostMessageStr.msgBuffer,MessageTime, HostMessageStr.Counters,1) ;
        HostMessageStr.RxMsgCounter +=1 ;
    }
}

void FastNextHostSciHandlerInit(short unsigned c );

void ResetSciStateMachine(void)
{
    short unsigned sr ;
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
    place = HOST_TX_MOD - ( (HostTxBufPutPtr - HostTxBufFetchPtr) & HOST_TX_MOD ) ;
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

long unsigned ErrorTxCnt ;



void SendSinglePeriodicByTrigger( short unsigned *trigger , short unsigned TxOpCode , short unsigned payloadlen )
{
    short unsigned * uPtr ;
    short unsigned * uPtrBody ;
    long   t ;
    if ( *trigger == 0  )
    {
        return ;
    }
    if ( IsPlaceInSciTxBuf(payloadlen) == 0 )
    {
        return ;
    }
    *trigger = 0 ;
    if ( payloadlen == 0 || payloadlen >= ( N_SCRATCH_SCI_TX_BUF-8)  )
    {
        return ;
    }

    uPtr = &ScratchSciTxBuf[0] ;
    //HostHandleStr.Tx2HostCtr += 1 ;
    ClearMemRpt(uPtr, payloadlen+7  ) ; // Initially clear the status report

    //uPtr[0] = 0xac13 ;
    //uPtr[1] = ( HostHandleStr.Tx2HostCtr & 0xff ) + (TxOpCode<<8) ;

    // Time tag, 32 bit
    t= IsrTimer.UsecTimer ;
    //uPtr[2] = (unsigned short) t  ;
    //uPtr[3] = (unsigned short)( t >> 16 )  ;

    //uPtr[4] = payloadlen ;
    uPtrBody = & uPtr[6] ;

    BuildStatusReportBody ( uPtrBody , TxOpCode ) ;

    if ( Copy4Transmission(uPtrBody,payloadlen,TxOpCode,t))
    {
        ErrorTxCnt+=1 ;
    }
}





//long unsigned PeriodicTxCnt[5] ;
void SlowHostSciHandler(void)
{

    //lDebug[0] = HostHandleStr.KillHostSpi + ( HostMessageStr.bConfigurationReceived ? 2 : 0 ) +
    //    + ((ErrorTxCnt & 0x3f )<<2) +
    //    (( PeriodicTxCnt[0] & 0xff ) << 8 )  + (( PeriodicTxCnt[1] & 0xff ) << 16 ) + (( PeriodicTxCnt[2] & 0xff ) << 24 ) ;


    // Handle error in SCI communication
    //if (HostMessageStr.ErrorSignal)
    //{
    //    ResetSciStateMachine() ;
    //    HostMessageStr.ErrorSignal = 0 ;
    //    SciaRegs.SCICTL1.bit.SWRESET = 1 ;
    //    nBufferPut = 0 ;
    //}

/*
    while (HostRxBufFetchPtr != nBufferPut)
    {
        HostMessageStr.NextHostSciHandler(HostRxBuf[HostRxBufFetchPtr]);
        HostRxBufFetchPtr = ( HostRxBufFetchPtr+1) & HOST_RX_MOD ;
    }
*/

    InterpSciMessages() ;

    if (HostHandleStr.KillHostSpi )
    { // Instructed to ignore host - just discard accepted characters
        return ;
    }

    // Next periodic message
    if ( HostMessageStr.bConfigurationReceived == 0 )
    {
        return ;
    }

    //SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.StatusMessageTrigger ,0x20 , 38)  ;

    // Messages are triggered here by priority. The top of the list is decided first so it has the best priority

    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.OdometryMessageTrigger ,0x27 , 4)  ;
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.StatusMessageTrigger ,0x20 , 33 )  ;
    //SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.BITMessageTrigger ,0x21 , 29)  ;
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.BITMessageTrigger ,0x21 , 29)  ;
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.TravelInfoMessageTrigger ,0x23 , 4)  ;
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.ManipulatorStatusMessageTrigger ,0x24 ,6)  ;
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.TrayStatusMessageTrigger ,0x25 ,3)  ;
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.RawSensorsStatusMessageTrigger ,0x26 ,33)  ; //length might change if removing yaw, pitch, roll
    SendSinglePeriodicByTrigger ( (short unsigned *)&  HostMessageStr.PcBitMessageTrigger , 4 ,38)  ; //length might change if removing yaw, pitch, roll


    if ( IsSysTimerElapse(TIMER_STATUS_TX, &SysTimerStr) == 0 )
    {
        return ; // Communications treated once / 10msec tic
    }
    IncrementSysTimerTargetSec (TIMER_STATUS_TX , 0.01f , &SysTimerStr );
    SetAtLeastSysTimerTargetSec(TIMER_STATUS_TX, 0.001f, &SysTimerStr);

    if ( HostMessageStr.StatusMessagePeriod )
    {
        if ( HostMessageStr.StatusMessageCntr < HostMessageStr.StatusMessagePeriod-1)
        {
            HostMessageStr.StatusMessageCntr += 1 ;
        }
        else
        {
            HostMessageStr.StatusMessageTrigger = 1  ;
            HostMessageStr.StatusMessageCntr = 0 ;
        }
    }

    if ( HostMessageStr.BITMessagePeriod )
    {
        if ( HostMessageStr.BITMessageCntr < HostMessageStr.BITMessagePeriod-1)
        {
            HostMessageStr.BITMessageCntr += 1 ;
        }
        else
        {
            HostMessageStr.BITMessageTrigger = 1  ;
            HostMessageStr.BITMessageCntr = 0 ;
        }
    }

    if ( HostMessageStr.TravelInfoMessagePeriod)
    {
        if ( HostMessageStr.TravelInfoMessageCntr < HostMessageStr.TravelInfoMessagePeriod-1)
        {
            HostMessageStr.TravelInfoMessageCntr += 1 ;
        }
        else
        {
            HostMessageStr.TravelInfoMessageTrigger = 1  ;
            HostMessageStr.TravelInfoMessageCntr = 0 ;
        }
    }

    if (HostMessageStr.ManipulatorStatusMessagePeriod)
    {
        if ( HostMessageStr.ManipulatorStatusMessageCntr < HostMessageStr.ManipulatorStatusMessagePeriod-1)
        {
            HostMessageStr.ManipulatorStatusMessageCntr += 1 ;
        }
        else
        {
            HostMessageStr.ManipulatorStatusMessageTrigger = 1  ;
            HostMessageStr.ManipulatorStatusMessageCntr = 0 ;
        }
    }

    if (HostMessageStr.TrayStatusMessagePeriod)
    {
        if ( HostMessageStr.TrayStatusMessageCntr < HostMessageStr.TrayStatusMessagePeriod-1)
        {
            HostMessageStr.TrayStatusMessageCntr += 1 ;
        }
        else
        {
            HostMessageStr.TrayStatusMessageTrigger = 1  ;
            HostMessageStr.TrayStatusMessageCntr = 0 ;
        }
    }


    if (HostMessageStr.RawSensorsStatusMessagePeriod)
     {
         if ( HostMessageStr.RawSensorsStatusMessageCntr < HostMessageStr.RawSensorsStatusMessagePeriod-1)
         {
             HostMessageStr.RawSensorsStatusMessageCntr += 1 ;
         }
         else
         {
             HostMessageStr.RawSensorsStatusMessageTrigger = 1  ;
             HostMessageStr.RawSensorsStatusMessageCntr = 0 ;
         }
     }

    if (HostMessageStr.OdometryMessagePeriod)
     {
         if ( HostMessageStr.OdometryMessageCntr < HostMessageStr.OdometryMessagePeriod-1)
         {
             HostMessageStr.OdometryMessageCntr += 1 ;
         }
         else
         {
             HostMessageStr.OdometryMessageTrigger = 1  ;
             HostMessageStr.OdometryMessageCntr = 0 ;
         }
     }
    if (HostMessageStr.PcBitMessagePeriod)
     {
         if ( HostMessageStr.PcBitMessageCntr < HostMessageStr.PcBitMessagePeriod-1)
         {
             HostMessageStr.PcBitMessageCntr += 1 ;
         }
         else
         {
             HostMessageStr.PcBitMessageTrigger = 1  ;
             HostMessageStr.PcBitMessageCntr = 0 ;
         }
     }
}




// Add the 0xac13 , running counter , and the checksum at the end
// uPtr  : buffer to take data from
// length: 16 bit words in payload
// opcode: self evident
// time  : System time, usec , on transmission
short Copy4Transmission(short unsigned * uPtr, short unsigned length , short opcode , long unsigned time )
{
    short unsigned cnt , cs1 , cs2 , next ;
    short unsigned loadptr ;
    short unsigned mask ;


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

    mask = BlockInts( ) ;
    HostTxBufPutPtr = ( HostTxBufPutPtr + length + 7 ) & HOST_TX_MOD ;
    HostTxStatistic = (HostTxBufPutPtr & 0x3ff ) + ((long)(HostTxBufFetchPtr&0x3ff) << 10) +  ( (long)(HostMessageStr.TxMsgCounter & 0xf ) << 20 ) + ( (long)( HostMessageStr.TxCharCounter & 0xff) <<24) ;
    RestoreInts( mask) ;

    HostMessageStr.TxMsgCounter +=1 ;
    return 0;
}

void inline Float2Buf( float f , short unsigned *uPtr )
{
    short unsigned * dPtr = (unsigned short *) &f ;
    *uPtr++ = *dPtr ++;
    *uPtr   = *dPtr   ;
}
void inline ULong2Buf( long unsigned f , short unsigned *uPtr )
{
    short unsigned * dPtr = (unsigned short *) &f ;
    *uPtr++ = *dPtr ++;
    *uPtr   = *dPtr   ;
}
struct CCombinerSwState
{
    int unsigned ChargeSw1 : 1 ;
    int unsigned HotSwap1  : 1 ;
    int unsigned Regen1    : 1 ;
    int unsigned BatGood1  : 1 ;
    int unsigned ChargeSw2 : 1 ;
    int unsigned HotSwap2 : 1 ;
    int unsigned Regen2    : 1 ;
    int unsigned BatGood2  : 1 ;
    int unsigned rsvd : 8 ;
};

/**
\brief Build the body of the status report per requested type
\param uPtr-> Where to write status
\param type   Type of status report
\Note: It is assumed (No check) that (*uPtr) is already clear
*/
short BuildStatusReportBody ( short unsigned * uPtr , short unsigned type )
{
    short unsigned *udPtr ;//, *uPtr2 ;
    short RetVal  ;
    short temp ; //zalipucha
    short unsigned mask ;
    //short unsigned ActiveQ , Qindex ;
    long PosReport ;
    extern short  Trq2mAmp( float x) ;
    float qRcu[4], fTemp ;
    union
    {
        struct CPdCBit bit;
        short unsigned all;
    } Pdcbit1;

    union
    {
        struct CCombinerSwState CombState;
        short unsigned us ;
    }uc ;

    union
    {
        struct CPdCBit2 bit;
        short unsigned all;
    } Pdcbit2 ;

    union
    {
        long unsigned ul ;
        long l ;
        float uf ;
        short unsigned us[2] ;
        short signed signedS[2] ;
    } uu ;


    union UBit_RBPi uuu ;

    //union UManCBIT1_CBIT2_RBPi uuuu ;

    struct CPdBitGen PdBitGenRBPi ;


    union URawStatusFailures failures ;
    struct COdometryReportVars TempOdometryReport ;
    float dPos ;
    long   unsigned delta ;

    struct CPdCmd2 *pPdCmd2 ;

    Pdcbit1.bit = SysState.Package.ManCBit1 ;
    Pdcbit2.bit = SysState.Package.ManCBit2 ;
    PdBitGenRBPi = SysState.PdBitGen;

    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;
    //

    //long  unsigned * pLongexp;
    //short fatality ;


    //ClearMemRpt( uPtr , 25 ) ; // Clear exiting message
    // Set active queue and index within

    /*
    if ( SysState.Mot.mode != E_SysMotionModeAutomatic)
    {
        if ( ( SysState.Mot.mode == E_SysMotionModeTestPack) &&(SysState.Package.PackSim.OldMotMode==E_SysMotionModeAutomatic) )
        {
            ActiveQ = 0; // If interrupted the auto action just to make an emergency package action, and programmed to return to E_SysMotionModeAutomatic
                         // automatically upon completion .... then don't report interruption of Q motion
        }
        else
        {
            ActiveQ = 0xffff; // If manual, there is no queue (mark 0xffff)
        }
        Qindex = 0 ;      // Default
    }
    else
    {
        ActiveQ = SysState.Mot.ExecutingQueue ;
        if ( SysState.Mot.ExecutingQueue  == 0 )
        {   // If on the null queue, nothing happens, index is always zero
            Qindex = 0 ;
        }
        else
        {
            Qindex = MQ.nGet ; // Next instruction to fetch
            if (SysState.Mot.InGroundNav )
            {
                if ( Qindex ) // If now executing the ground nav, the queue pointer already moved, so
                    // pretend it did not
                {
                    Qindex -= 1 ;
                }
            }
            // Copy the original location in the motion queue
            Qindex = ( MQ.Item[Qindex].MotionItemMode >> 6 ) ;
        }
    }
    */
        // Mission status
        // Points long exception - two longs field
        //pLongexp = (long unsigned *) & SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt - 1) & 0x7];
        //fatality = (( short unsigned)( pLongexp[1] & 0xf0)) >> 4 ;

    /*

        if ( CanStat )
        {
            uPtr[19] = CanDebug.nToHost ;
            uPtr[20] = CanDebug.cobId ;
            udPtr = (unsigned short *) &CanDebug.data0 ;
            uPtr[21] =udPtr[0] ;
            uPtr[22] =udPtr[1] ;
            uPtr[23] =udPtr[2] ;
            uPtr[24] =udPtr[3] ;
        }
        else
        {
            uPtr[20] = 0xffff ;
        }
*/

    RetVal = 0 ;
    switch ( type )
    {
    case 0x24: //manipulator status msg
        uPtr[0] = SysState.ManupilatorAbortedStat  ;
        //uPtr[1] = ((SysState.Package.KnowWhereAmI & 7)==7) ? 1 : 0 ; //Servos faulted
        uPtr[1] = (SysState.Package.KnowWhereAmI & 7) ^ 7 ;//Servos faulted
        uPtr[2] = FtoAngle(-SysState.Package.ShoulderAngle); //servo0 position (folder)
        uPtr[3] = FtoAngle(-SysState.Package.ElbowAngle) ; //servo1 position (elbow)
        uPtr[4] = FtoAngle(-SysState.Package.WristAngle); //servo2 position (wrist)
        uPtr[5] = (short unsigned)( __fmin( Analogs.UsSamp1 , 65535.0f ))  ; //measured distance at laser
        break;

    case 0x25:// tray status msg
        //uPtr[0] = ( ( (SysState.Package.KnowWhereAmI >> 3 ) & 3) == 3) ? 1 : 0  ; //Servos faulted
        uPtr[0] = (  (SysState.Package.KnowWhereAmI >> 4 ) & 3) ^ 3  ; //Servos faulted
        uPtr[1] = FtoAngle(SysState.Package.LeftStopPosition) ; // left door angle
        uPtr[2] = FtoAngle(SysState.Package.RightStopPosition); //right door angle
        break;

    case 0x20: // robot status msg

        uPtr[0] = ( SysState.MissionStat & 0xff ) + ( SysState.MissionAbortedStat << 8 ) ;


        // Lateral reference change  17-6-2021
/*
        uPtr2 = (short unsigned *) & SysState.Nav.iPos[0] ; //X,Y,Z (each two words)
        uPtr[1] = *uPtr2++ ;
        uPtr[2] = *uPtr2++ ;
        uPtr[3] = *uPtr2++ ;
        uPtr[4] = *uPtr2++ ;
        uPtr[5] = *uPtr2++ ;
        uPtr[6] = *uPtr2++ ;
*/
        //uPtr2 = (short unsigned *) &PosReport;
        PosReport = SysState.Nav.iPos[1] ;
        uPtr[1] = ((short unsigned *) &PosReport)[0];//  uPtr2[0] ;
        uPtr[2] = ((short unsigned *) &PosReport)[1];//uPtr2[1] ;

        PosReport = SysState.Nav.iPos[0] ;
        uPtr[3] = ((short unsigned *) &PosReport)[0];
        uPtr[4] = ((short unsigned *) &PosReport)[1];

        PosReport = -SysState.Nav.iPos[2] ;
        uPtr[5] = ((short unsigned *) &PosReport)[0];
        uPtr[6] = ((short unsigned *) &PosReport)[1];

        /*
        Quaternion[0] = (float) (GetUnalignedLong(&buf[6]));
        Quaternion[1] = (float) (GetUnalignedLong(&buf[8]));
        Quaternion[2] = (float) (GetUnalignedLong(&buf[10]));
        Quaternion[3] = (float) (GetUnalignedLong(&buf[12]));

        n = 1.0F /  2147483647 ;
        Quaternion[0] *= n ;
        Quaternion[1] *= n ;
        Quaternion[2] *= n ;
        Quaternion[3] *= n ;
        */


        // Quaternion reference change  17-6-2021

        CopyQuat(GyroInt.BodyQuat,qRcu);
        QuatOnInvQuat(qRcu,SysState.Nav.QRcu2Lp,qRcu) ; // Bring the robot reference similar to MCU reference in space

        QuatOnQuat( SysState.Nav.QRcu2LpW_StartPostShare,qRcu,qRcu) ; // Bring the rotation to MCU frame
        QuatOnQuat( qRcu,SysState.Nav.QRcu2LpW_StartPostShare,qRcu) ;


        //InvertQuat(qRcu,qRcu);


        uu.uf = qRcu[1];
        uu.l = (long) ( uu.uf * 536870912.0f)  ;
        uu.ul = uu.ul << 2 ;
        uPtr[7] = uu.us[0] ;
        uPtr[8] = uu.signedS[1] ;

        uu.uf = qRcu[2];
        uu.l = (long) ( uu.uf * 536870912.0f)  ;
        uu.ul = uu.ul << 2 ;
        uPtr[9] = uu.us[0] ;
        uPtr[10] = uu.signedS[1] ;

        uu.uf = qRcu[3];
        uu.l = (long) ( uu.uf * 536870912.0f)  ;
        uu.ul = uu.ul << 2 ;
        uPtr[11] = uu.us[0] ;
        uPtr[12] = uu.signedS[1] ;

        uu.uf = qRcu[0];
        uu.l = (long) ( uu.uf * 536870912.0f)  ;
        uu.ul = uu.ul << 2 ;
        uPtr[13] = uu.us[0] ;
        uPtr[14] = uu.signedS[1] ;

        /*
        uu.uf = GyroInt.BodyQuat[0] ; //cos(theta/2)
        uPtr[7] = uu.us[0] ;
        uPtr[8] = uu.us[1] ;
        uu.uf = GyroInt.BodyQuat[1] ; //x*sin(theta/2)
        uPtr[9] = uu.us[0] ;
        uPtr[10] = uu.us[1] ;
        uu.uf = GyroInt.BodyQuat[2] ; //y*sin(theta/2)
        uPtr[11] = uu.us[0] ;
        uPtr[12] = uu.us[1] ;
        uu.uf = GyroInt.BodyQuat[0] ; //z*sin(theta/2)
        uPtr[13] = uu.us[0] ;
        uPtr[14] = uu.us[1] ;
        */


        // Set to world  17-6-2021
        uPtr[15] = (short) __fmin( __fmax( SysState.Nav.FiltLineSpeed[1] * 1e4f , -32700 ) , 32700) ;
        uPtr[16] = (short) __fmin( __fmax( SysState.Nav.FiltLineSpeed[0] * 1e4f , -32700 ) , 32700) ;
        temp = (short) __fmin( __fmax( SysState.Nav.FiltLineSpeed[2] * 1e4f , -32700 ) , 32700) ;
        uPtr[17] = -temp;

        // GyroInt.Wbody[0]- GyroInt.Wbody[2]: angular speed of head in head coordinates

        // Set to world  17-6-2021
        uu.uf = GyroInt.Wbody[1] ;
        uPtr[18] = uu.us[0] ;
        uPtr[19] = uu.us[1] ;

        //uPtr2 = (short unsigned *) & GyroInt.Wbody[1] ; //X,Y,Z (each two words)
        uu.uf = GyroInt.Wbody[0] ;
        uPtr[20] = uu.us[0] ;
        uPtr[21] = uu.us[1] ;

        uu.uf = -GyroInt.Wbody[2] ;
        uPtr[22] = uu.us[0] ;
        uPtr[23] = uu.us[1] ;

        // Set to world  17-6-2021
        uPtr[24] = 0 ; // (short) __fmin( __fmax(  SysState.Nav.Imu.LinAccFiltered[1] * 1e2f , -32700 ) , 32700) ;
        uPtr[25] = 0 ; // (short) __fmin( __fmax(  SysState.Nav.Imu.LinAccFiltered[0] * 1e2f , -32700 ) , 32700) ;
        // temp = (short) __fmin( __fmax(  SysState.Nav.Imu.LinAccFiltered[2] * 1e2f , -32700 ) , 32700) ;
        uPtr[26] = 0 ; // -temp ;

        uPtr[27] = FtoAngle( SysState.CanAxis[LOGICAL_NECK].OuterPos) ;

        //uPtr2 = (short unsigned *) & SysState.Nav.VirtualWheelEncoder[1] ;
        uPtr[28] = FtoAngle( SysState.CanAxis[LOGICAL_LSTEER].OuterPos) ;
        //uPtr2 = (short unsigned *) & SysState.Nav.VirtualWheelEncoder[0] ;
        uPtr[29]  =FtoAngle( SysState.CanAxis[LOGICAL_RSTEER].OuterPos) ;

        uPtr[30] = (short unsigned)(SysState.TrackWidthCtl.TrackWidth * M_2_LONG_FAC ) ;
        //buf[31] = 0 ;
        uPtr[31] = SysState.OldAbortStats.OldActiveQ ;
        uPtr[32] = SysState.OldAbortStats.OldQindex  ;
        //SetUL2Uint((long unsigned)(SysState.TrackWidthCtl.TrackWidth * M_2_LONG_FAC ) ,&buf[30] );

        break ;
    case 0x21:
        //CBIT message
        //uPtr[0] = ( SysState.MissionStat & 0xff ) + ( SysState.MissionAbortedStat << 8 ) ;
        udPtr = (short unsigned *)  &SysState.Mot.ExceptionTab[(SysState.Mot.ExceptionCnt-1)&(EXCEPTION_TAB_LENGTH-1)] ; //8
        uPtr[0] = udPtr[0] ;
        uPtr[1] = udPtr[1] ;
#ifdef OLD_PROTOCOL

        //udPtr = (short unsigned *)  &SysState.CBit ;
        uuu.all = SysState.CBit.all ;
        uuu.all = ( uuu.all & 0x7ff ) + ( ( uuu.all >> 3 ) & ~0x7ffL)  ; //to make debugging easier
        uu.ul = uuu.all ;


        uPtr[2] = uu.us[0] ; // Byte 12
        uPtr[3] = uu.us[1] ;

        uPtr[4] = SysState.Status.ShortModeInfo ;       // 16
        uPtr[5] = SysState.Status.ShortBatVoltsDeviation ; // 18

        // 2104.1 is CPdCBit2 : ManCBit1
        // 2104.2 is CPdCBit3
        // 2104.3 is CPdBitGen
        uPtr[6] = * (( short unsigned *) &SysState.Package.ManCBit3 ); //20
        //uPtr[8] = 0 ;

        PdBitGenRBPi.Pump1SwOn = SysState.PdBitGen.Pump1SwOn & SysState.PdBitGen.Pump2SwOn ;//This bit is interpreted as 'vacuum' by server.
        PdBitGenRBPi.Pump2SwOn = pPdCmd2 -> FrontCamLightOn ; //This bit is interpreted as front light by server. Indication by LP request
        PdBitGenRBPi.ChakalakaOn = pPdCmd2 -> ChakalakaOn ; //chakalaka, indication by LP request
        uPtr[7] = * (( short unsigned *) &PdBitGenRBPi ); // 24
        //uPtr[10] = 0 ;

        uPtr[8] =  SysState.Package.ComNetState[0]; //Net24 boot state
        uPtr[9] = SysState.Package.ComNetState[1]; //Net12 boot state


        uuuu.all =  ((Pdcbit1.all & 8191) + (((Pdcbit2.all) & 7) << 13) +  ((long unsigned)(Pdcbit2.all >> 3) << 16)) ;//?
        uu.ul = uuuu.all ;
        uPtr[10] = uu.us[0] ;
        uPtr[11] = uu.us[1] ;
        //uPtr[10] = * (( short unsigned *) &SysState.Package.ManCBit1 ); //28
        //uPtr[11] = * (( short unsigned *) &SysState.Package.ManCBit2 );

        uPtr[12] = * (( short unsigned *) &SysState.Status.Failure) ; //32
        uPtr[13] = SysState.WakeupState  ;
        uPtr[14] = SysState.Mot.mode ;



        uu.uf = SysState.Status.V36 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[15] = uu.us[0] ;
        uPtr[16] = uu.us[1] ;
        uu.uf = SysState.Status.V12 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[17] = uu.us[0] ;
        uPtr[18] = uu.us[1] ;
        uu.uf = SysState.Status.V24 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[19] = uu.us[0] ;
        uPtr[20] = uu.us[1] ;
        uu.uf = SysState.Status.V54 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[21] = uu.us[0] ;
        uPtr[22] = uu.us[1] ;

        uu.signedS[0] = Trq2mAmp(SysState.CanAxis[LOGICAL_RW].BH.Torque);
        uPtr[23] = uu.us[0] ;
        uu.signedS[0] =  Trq2mAmp(SysState.CanAxis[LOGICAL_LW].BH.Torque);
        uPtr[24] = uu.us[0] ;
        uu.signedS[0] = Trq2mAmp(SysState.CanAxis[LOGICAL_RSTEER].BH.Torque);
        uPtr[25] = uu.us[0] ;
        uu.signedS[0] =  Trq2mAmp(SysState.CanAxis[LOGICAL_LSTEER].BH.Torque);
        uPtr[26] = uu.us[0] ;
        uu.signedS[0] =  Trq2mAmp(SysState.CanAxis[LOGICAL_NECK].BH.Torque);
		
        uPtr[27] = uu.us[0] ;
#else

        //udPtr = (short unsigned *)  &SysState.CBit ;
        uuu.all = SysState.CBit.all ;
        uuu.all = ( uuu.all & 0x7ff ) + ( ( uuu.all >> 3 ) & ~0x7ffL)  ; //to make debugging easier
        uu.ul = uuu.all ;


        uPtr[2] = uu.us[0] ; // Byte 12
        uPtr[3] = uu.us[1] ;

        uPtr[4] = SysState.Status.ShortModeInfo ;       // 8

        // 2104.1 is CPdCBit2 : ManCBit1
        // 2104.2 is CPdCBit3
        // 2104.3 is CPdBitGen
        uPtr[5] = * (( short unsigned *) &SysState.Package.ManCBit3 ); //20
        //uPtr[8] = 0 ;

        PdBitGenRBPi.Pump1SwOn = SysState.PdBitGen.Pump1SwOn & SysState.PdBitGen.Pump2SwOn ;//This bit is interpreted as 'vacuum' by server.
        PdBitGenRBPi.Pump2SwOn = pPdCmd2 -> FrontCamLightOn ; //This bit is interpreted as front light by server. Indication by LP request
        PdBitGenRBPi.ChakalakaOn = pPdCmd2 -> ChakalakaOn ; //chakalaka, indication by LP request
        uPtr[6] = * (( short unsigned *) &PdBitGenRBPi ); // 24
        //uPtr[10] = 0 ;
        uPtr[7] = SysState.Package.ComNetState[1]; //Net12 boot state
        uPtr[8] =  SysState.Package.ComNetState[0]; //Net24 boot state

        uu.us[0] = ( Pdcbit1.bit.MushroomDepressed ? 1 : 0 ) +
                ( Pdcbit1.bit.ShuntFail ? 2 : 0 ) +
                ( Pdcbit1.bit.GripFail ? 4 : 0 ) +
                ( Pdcbit1.bit.NoSuck1 ? 8 : 0 ) +
                ( Pdcbit1.bit.ManFail << 5  ) +
                ( Pdcbit1.bit.StopFail << 8  ) +
                ( Pdcbit1.bit.V12Fail << 10  ) +
                ( Pdcbit1.bit.V24Fail << 11  ) +
                ( Pdcbit2.bit.Active12V << 12 ) +
                ( Pdcbit2.bit.FailCode12V << 13 );
        uu.us[1] =
                ( Pdcbit2.bit.Active24V << 0 ) +
                ( Pdcbit2.bit.FailCode24V << 1 ) ;

        uc.us  = ( S2M.Items.DataFromPd.item.DataFromPd[1] >> 5 ) & 0xff ;
        if (  uc.CombState.HotSwap1 )
        {
            uu.us[1] |= (( Pdcbit2.bit.Active54V << 4 ) + (Pdcbit2.bit.FailCode54V << 4 ) ) ;
        }
        else
        {
            uu.us[1] |= (( Pdcbit2.bit.Active54V << 8 ) + (Pdcbit2.bit.FailCode54V << 9 ) ) ;
        }

        uPtr[9] = uu.us[0] ;
        uPtr[10] = uu.us[1] ;
        uPtr[11] = * (( short unsigned *) &SysState.Status.Failure) ; //32

        uPtr[12] = SysState.WakeupState  ;

        uPtr[13] = SysState.Mot.mode ;

        uu.uf = SysState.Status.V12 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[14] = uu.us[0] ;
        uPtr[15] = uu.us[1] ;

        uu.uf = SysState.Status.V24 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[16] = uu.us[0] ;
        uPtr[17] = uu.us[1] ;


        uu.uf = SysState.Status.VBat1In  ;
        uu.ul = (unsigned long) (uu.uf * 100.0f) ;
        uPtr[18] = uu.us[0] ;
        uPtr[19] = uu.us[1] ;

        uu.uf = SysState.Status.VBat2In  ;
        uu.ul = (unsigned long) (uu.uf * 100.0f) ;
        uPtr[20] = uu.us[0] ;
        uPtr[21] = uu.us[1] ;

        uu.uf = SysState.Status.V18 ;
        uu.ul = (unsigned long) (uu.uf * 1000.0f) ;
        uPtr[22] = uu.us[0] ;
        uPtr[23] = uu.us[1] ;

        uu.signedS[0] = Trq2mAmp(SysState.CanAxis[LOGICAL_RW].BH.Torque);
        uPtr[24] = uu.us[0] ;
        uu.signedS[0] =  Trq2mAmp(SysState.CanAxis[LOGICAL_LW].BH.Torque);
        uPtr[25] = uu.us[0] ;

        uu.signedS[0] = Trq2mAmp(SysState.CanAxis[LOGICAL_RSTEER].BH.Torque);
        uPtr[26] = uu.us[0] ;
        uu.signedS[0] =  Trq2mAmp(SysState.CanAxis[LOGICAL_LSTEER].BH.Torque);
        uPtr[27] = uu.us[0] ;
        uu.signedS[0] =  Trq2mAmp(SysState.CanAxis[LOGICAL_NECK].BH.Torque);
        uPtr[28] = uu.us[0] ;


 #endif
        break ;

    case 0x23: //travel information
        uu.ul = SysState.CanAxis[LOGICAL_RW].BH.WheelEncoderCnt ; // Right
        uPtr[0] = uu.us[0] ;
        uPtr[1] = uu.us[1] ;
        uu.ul = SysState.CanAxis[LOGICAL_LW].BH.WheelEncoderCnt ; // Left
        uPtr[2] = uu.us[0] ;
        uPtr[3] = uu.us[1] ;
        break ;

    case 0x26: // raw sensors status - maintenance message
		
        failures.bit.NoImu = SysState.CBit.bit.NoImu;
        failures.bit.PotRefFail = SysState.CBit.bit.PotRefFail;
        failures.bit.SrevoAxesFailure = ((SysState.Package.KnowWhereAmI & 31) > 0 ) ? 1 : 0 ;
        failures.bit.CalibPresent = SysState.CBit.bit.NoCalib ^ 1 ;
        uPtr[0] = failures.all ;

        uu.ul = CalibProg.Calib.CalibData ;
        uPtr[1] = uu.us[0] ;
        uPtr[2] = uu.us[1] ;

        //uu.uf = SysState.CanAxis[LOGICAL_LSTEER].PotMean ; //left steering angle (potentiometer)
        uu.uf = SysState.CanAxis[LOGICAL_LSTEER].BH.PotMean ;
        uPtr[3] = uu.us[0] ;
        uPtr[4] = uu.us[1] ;

        //uu.uf = SysState.CanAxis[LOGICAL_RSTEER].OuterPos; //right steering angle (potentiometer)
        uu.uf = SysState.CanAxis[LOGICAL_RSTEER].BH.PotMean ;
        uPtr[5] = uu.us[0];
        uPtr[6] = uu.us[1];

        uu.uf = RNeckOuterPos; //right neck potentiometer.
        uPtr[7] = uu.us[0];
        uPtr[8] = uu.us[1];

        uu.uf = LNeckOuterPos; //left neck potentiometer.
        uPtr[9] = uu.us[0];
        uPtr[10] = uu.us[1];

        uu.uf = SysState.Nav.Imu.Omega[2]; //Raw yaw speed.
        uPtr[11] = uu.us[0];
        uPtr[12] = uu.us[1];

        uu.uf = SysState.Nav.Imu.Omega[1]; //Raw pitch speed.
        uPtr[13] = uu.us[0];
        uPtr[14] = uu.us[1];

        uu.uf = SysState.Nav.Imu.Omega[0]; //Raw roll speed.
        uPtr[15] = uu.us[0];
        uPtr[16] = uu.us[1];

        /*
        uu.ul = 0 ; // SysState.Nav.Imu.LinAccRaw[0]; //X acceleration.
        uPtr[17] = uu.us[0];
        uPtr[18] = uu.us[1];

        uu.ul = 0 ; // SysState.Nav.Imu.LinAccRaw[1]; //Y acceleration.
        uPtr[19] = uu.us[0];
        uPtr[20] = uu.us[1];

        uu.ul = 0 ; // SysState.Nav.Imu.LinAccRaw[2]; //Z acceleration.
        uPtr[21] = uu.us[0];
        uPtr[22] = uu.us[1];
        */
#ifdef DFT_AXES
        uu.ul = SysState.CanAxis[LOGICAL_RSTEER].DFT.PositionAct; //right steering motor encoder
        uPtr[17] = uu.us[0];
        uPtr[18] = uu.us[1];

        uu.ul = SysState.CanAxis[LOGICAL_LSTEER].DFT.PositionAct; //left steering motor encoder
        uPtr[19] = uu.us[0];
        uPtr[20] = uu.us[1];

        uu.ul = SysState.CanAxis[LOGICAL_NECK].DFT.PositionAct; //neck motor encoder
#else
        uu.ul = 0 ; // SysState.CanAxis[LOGICAL_RSTEER].DFT.PositionAct; //right steering motor encoder
        uPtr[17] = uu.us[0];
        uPtr[18] = uu.us[1];

        uu.ul = 0 ; // SysState.CanAxis[LOGICAL_LSTEER].DFT.PositionAct; //left steering motor encoder
        uPtr[19] = uu.us[0];
        uPtr[20] = uu.us[1];

        uu.ul = 0 ; // SysState.CanAxis[LOGICAL_NECK].BH.UserPos; //neck motor encoder
#endif
        uPtr[21] = uu.us[0];
        uPtr[22] = uu.us[1];

        uu.ul = SysState.CanAxis[LOGICAL_RW].BH.WheelEncoderCnt; //right wheel encoder
        uPtr[23] = uu.us[0];
        uPtr[24] = uu.us[1];

        uu.ul = SysState.CanAxis[LOGICAL_LW].BH.WheelEncoderCnt; //right wheel encoder
        uPtr[25] = uu.us[0];
        uPtr[26] = uu.us[1];

        uu.uf = SysState.Nav.roll ; //to be roll from new IMU
        uPtr[27] = uu.us[0];
        uPtr[28] = uu.us[1];

        uu.uf =  SysState.Nav.pitch; //to be pitch from new IMU
        uPtr[29] = uu.us[0];
        uPtr[30] = uu.us[1];

        uu.uf = SysState.Nav.yaw; //to be yaw from new IMU
        uPtr[31] = uu.us[0];
        uPtr[32] = uu.us[1];

        break;

    case 0x27: // Odometry message

        // Sample odometry
        mask = (unsigned short) BlockInts() ;
        TempOdometryReport.LEnc = WheelEncL.Position;
        TempOdometryReport.REnc = WheelEncR.Position;
        TempOdometryReport.usec = IsrTimer.UsecTimer ;
        RestoreInts(mask) ;

        // Get the position shift as average between wheel motions
        dPos = 0.5 * Geom.Calc.WheelEncoder2MeterGnd * ( TempOdometryReport.REnc - OdometryReportVars.REnc + TempOdometryReport.LEnc - OdometryReportVars.LEnc) ;

        // Time difference from the old - limit to 0.5sec
#define MaxOdometryDeltaTUsec 500000
        delta = TempOdometryReport.usec - OdometryReportVars.usec ;
        if ( delta > MaxOdometryDeltaTUsec )
        {
            delta = MaxOdometryDeltaTUsec ;
            OdometryReportVars.usec = TempOdometryReport.usec - MaxOdometryDeltaTUsec ;
        }

        if ( dPos < 0.001f || delta < 100 )
        {  // No practical motion or time from previous report remained
            fTemp = 0 ;
        }
        else
        {
            OdometryReportVars.REnc = TempOdometryReport.REnc ;
            OdometryReportVars.LEnc = TempOdometryReport.LEnc ;

            fTemp = 1.0e6f * dPos / (float) delta ;
        }

        // Export the speed
        Float2Buf(fTemp * 1.e4f,&uPtr[0]);
        Float2Buf(-SysState.Nav.dyaw,&uPtr[2]);

        break ;
    case 4:
        BitRportCnt = (BitRportCnt+1)&3 ;
        if (BitRportCnt ==0 )
        {
            MakeBitBuffer ( BitTunnelBuf ) ;
        }
        ULong2Buf( TunnelHostIPAddress , &uPtr[0]) ;
        uPtr[2] = TunnelHostPort  ;
        uPtr[3] = 136    ; // Length of packet = 68 words
        uPtr[4] = 0x8765 ; // Marker of message type
        uPtr[5] = BitRportCnt ;
        CopyMemRpt( (short unsigned *) &uPtr[6], ((short unsigned *) &BitTunnelBuf)+32*BitRportCnt  , 32 ) ;
        break ;
    default :
        RetVal = -1 ;
        break ;
    }
    return RetVal ;
}


