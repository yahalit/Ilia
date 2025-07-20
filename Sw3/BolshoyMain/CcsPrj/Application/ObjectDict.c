/*
 * ObjectDict.c
 *
 *  Created on: Dec 21, 2016
 *      Author: Yahali Theodor
 */

//#include "CanDriver.h"
#include "StructDef.h"
#include "Functions.h"

#include "CanSlave.h"
#include "ItNav.h"

#include "Gyro.h"
#ifdef _LPSIM
#include <math.h>
#else
float fabsf(float x);
#endif

#ifdef SHIT_BUFFER
extern short shitbuf[256] ;
extern short shitbufcnt ;
extern short shitbufstop ;
#endif
long unsigned  GetPdErrorStack(    struct CSdo * pSdo ,short unsigned *nData);

long unsigned  SetGetMotionQueue(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetSpiSimMsg(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetLeds( struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetConsoleTest(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  LedTest( struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetMiscTest( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetMiscTest( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetMiscFloat( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetMiscShort( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetSensor(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetSensor(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetLedTest(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetSciByte(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetSciByte(  struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetAxisCmd(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetAxisCmd(  struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetSpeedCmd(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetRouteCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetRouteCmd( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetAutoRouteCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetAutoRouteStat( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFloatPar( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFloatPar( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFloatPar2PD( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFloatPar2PD( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwData(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwData(   struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetFwCmd(    struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetCalibCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetCalibCmd( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetConfigCmd( struct CSdo * pSdo ,short unsigned nData);
long unsigned  LpSetGpio(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  LpGetGpio(    struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetMotionQueue(    struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetDebug(    struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetDebug(    struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetShortData( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetShortData( struct CSdo * pSdo ,short unsigned nData);


long unsigned  SetSwTestCmd(  struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetSwTestCmd(  struct CSdo * pSdo ,short unsigned *nData);
long unsigned  GetShitBuf(  struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetShitBuf(  struct CSdo * pSdo ,short unsigned nData);

long unsigned  SetPDCmdDef( struct CSdo * pSdo ,short unsigned nData);

long unsigned  SetPDCommand1(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand2(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand3(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand4(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPDCommand5(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  SetPD2209(   struct CSdo * pSdo ,short unsigned nData);
long unsigned  GetRecorderCRC( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  SetFwBuffer(    struct CSdo * pSdo ,short unsigned nData);
short  Trq2mAmp( float x);


short PrepFlash4Burn();

#define BURN_DATA_BUFFER RecorderBuffer
#define PROG_BUF_LEN 2048
#if REC_BUF_LEN < PROG_BUF_LEN
#error "Allocation failure for program buffer"
#endif

const struct CObjDictionaryItem ObjDictionaryItem [] =
{
    { 0x1F00 , 4 , SetSpiSimMsg , NoSuchGetObject },
    { 0x2000 , 2 , SetRecorder , GetRecorder } ,
    { 0x2001 , 2 , NoSuchSetObject , GetSignalFlags } ,
    { 0x2002 , 2 , SetSignal , GetSignal } ,
    { 0x2005 , 2 , LpSetGpio , LpGetGpio },
    { 0x2006 , 2 , NoSuchSetObject , GetRecorderCRC } ,
    { 0x2200 , 2 , SetLeds , NoSuchGetObject },
     {0x2202  , 2 , SetConsoleTest , NoSuchGetObject },
     {0x2203  , 2 , LedTest , GetLedTest },
     {0x2204  , 2 , SetSensor , GetSensor },
     {0x2205  , 2 , SetSciByte , GetSciByte },
     {0x2206  , 2 , SetAxisCmd , GetAxisCmd },
     {0x2207  , 2 , SetRouteCmd , GetRouteCmd },
     {0x2208  , 2 , SetFloatPar , GetFloatPar },
     {0x220a  , 2 , SetSpeedCmd , NoSuchGetObject },
     {0x220b  , 2 , SetAutoRouteCmd , GetAutoRouteStat },
     {0x220c  , 4 , SetFloatPar2PD , GetFloatPar2PD },
     {0x2220  , 2 , SetMiscTest , GetMiscTest },
     {0x2221  , 4 , SetGetMotionQueue , GetMotionQueue },
     {0x2222  , 4 , SetDebug , GetDebug },
     { 0x2223  , 2 , NoSuchSetObject , GetPdErrorStack },
     {0x2224  , 4 , SetSwTestCmd , GetSwTestCmd} ,
     {0x2225  , 2 , SetShitBuf ,GetShitBuf} ,
     {0x2226  , 2 , NoSuchSetObject , GetMiscFloat },
     {0x2227  , 2 , NoSuchSetObject , GetMiscShort },
    { 0x2228  , 2 , SetShortData , GetShortData },
     { 0x2300 , 4 , SetFwData , GetFwData },
    { 0x2301 , 4 , SetFwCmd , GetFwCmd },
    { 0x2302 , 4 , SetCalibCmd , GetCalibCmd },
    { 0x2303 , 4 , SetFwBuffer , NoSuchGetObject },
    { 0x2304 , 4 , SetConfigCmd , NoSuchGetObject },
    { 0x24ff , 4 , SetPDCmdDef , NoSuchGetObject },
    { 0x7fff , 4 , NoSuchSetObject , (GetDictFunc) 0 },
};
const short unsigned SizeofObjDict =  sizeof(ObjDictionaryItem)/sizeof(struct CObjDictionaryItem) ;

short ReadMqIndex ;



/* Object 0x2223 */
long unsigned  GetPdErrorStack(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si , nraw ;
    long unsigned * ulPtr ;
    //float * fPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    //fPtr =  ((float *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;

    if (si > 40 && si < 49)
    {
        nraw = si-41;
        *ulPtr = SysState.PdRawData[nraw];
    }
    else {
        return Sub_index_does_not_exist;
    }
    return 0 ;
}



// Object 0x2006
long unsigned  GetRecorderCRC( struct CSdo * pSdo ,short unsigned *nData)
{
    long unsigned stat ;
    short unsigned crc , cnt , c , r  ;
    short unsigned * uPtr ;
    stat = GetRecorder( pSdo ,nData);
    if ( stat )
    {
         return stat ;
    }
    uPtr = (short unsigned *) pSdo->SlaveBuf ;
    crc  = 0xffff ;
    SysState.BlockUpload.nBytes = *nData ;
    for ( cnt = 0 ; cnt < (SysState.BlockUpload.nBytes>>1) ; cnt++ )
    {
        c = *uPtr++ ;
        crc = crc_ccitt_byte( crc, c & 0xff );
        crc = crc_ccitt_byte( crc, c >> 8   );
    }
    SysState.BlockUpload.crc = crc ;
    r = SysState.BlockUpload.nBytes % 7 ;
    SysState.BlockUpload.BytesEmptyAtEnd = ( r ? 7 - r : 0 );
    return 0 ;
}


long SetFloatParameter(short unsigned Index , short unsigned subindex , float value )
{// Call an object dictionary SET service from the host
    struct CObjDictionaryItem *pObject;
    long lstat ;

    if ( GetObjIndex( Index , &pObject, ObjDictionaryItem ) < 0 )
    {
        return -1  ;
    }

    DummySdoFromSpi.Index = Index ;
    DummySdoFromSpi.SubIndex = subindex  ;
    * (float *) DummySdoFromSpi.SlaveBuf = value ;

    lstat =  pObject->SetFunc( &DummySdoFromSpi , 4 ) ;

    CalcGeomData() ;

    return lstat ;
}

long GetFloatParameter(short unsigned Index , short unsigned subindex , float * value )
{// Call an object dictionary SET service from the host
    struct CObjDictionaryItem *pObject;
    long lstat ;
    unsigned short ndata ;
    //unsigned short *ndata ;

    if ( GetObjIndex( Index , &pObject, ObjDictionaryItem ) < 0 )
    {
        return -1  ;
    }

    DummySdoFromSpi.Index = Index ;
    DummySdoFromSpi.SubIndex = subindex  ;

    lstat =  pObject->GetFunc( &DummySdoFromSpi , &ndata ) ;
    if ( ndata != 4 )
    {
        return  -1 ;
    }
    if ( lstat )
    {
        return lstat ;
    }
    *value = *(float *) DummySdoFromSpi.SlaveBuf  ;
    //value = *(float *) DummySdoFromSpi.SlaveBuf  ;
    //* ((float *) &pSdo->SlaveBuf[0] ) = f ;
    if ( isNan( value))
    {
        return -2 ;
    }
    return 0  ;
}

long GetLongParameter(short unsigned Index , short unsigned subindex , long * value )
{// Call an object dictionary SET service from the host
    struct CObjDictionaryItem *pObject;
    long lstat ;
    unsigned short ndata ;
    //short *ndata ;
    short sdata ;

    if ( GetObjIndex( Index , &pObject, ObjDictionaryItem ) < 0 )
    {
        return -1  ;
    }

    DummySdoFromSpi.Index = Index ;
    DummySdoFromSpi.SubIndex = subindex  ;

    lstat =  pObject->GetFunc( &DummySdoFromSpi , &ndata ) ;
    if ( lstat )
    {
        return lstat ;
    }
    if ( ndata == 4 )
    {
        *value =  *(long *) DummySdoFromSpi.SlaveBuf  ;
    }
    else
    {
        sdata = * (short *) DummySdoFromSpi.SlaveBuf  ;
        //value = *(long *) sdata ;
        *value = *(long *) sdata ;
    }
    return 0  ;
}




long SetLongParameter(short unsigned Index , short unsigned subindex , long value )
{// Call an object dictionary SET service from the host
    struct CObjDictionaryItem *pObject;
    long lstat ;

    if ( GetObjIndex( Index , &pObject, ObjDictionaryItem ) < 0 )
    {
        return -1  ;
    }

    DummySdoFromSpi.Index = Index ;
    DummySdoFromSpi.SubIndex = subindex  ;
    * (long *) DummySdoFromSpi.SlaveBuf = value ;

    lstat =  pObject->SetFunc( &DummySdoFromSpi , 4 ) ;
    return lstat ;
}

long SetShortParameter(short unsigned Index , short unsigned subindex , long value )
{// Call an object dictionary SET service from the host
    struct CObjDictionaryItem *pObject;
    long lstat ;

    if ( GetObjIndex( Index , &pObject, ObjDictionaryItem ) < 0 )
    {
        return -1  ;
    }

    DummySdoFromSpi.Index = Index ;
    DummySdoFromSpi.SubIndex = subindex  ;
    * (short unsigned *) DummySdoFromSpi.SlaveBuf = (short unsigned) value ;

    lstat =  pObject->SetFunc( &DummySdoFromSpi , 2 ) ;
    return lstat ;
}

/* Object 0x2221 */
long unsigned  SetGetMotionQueue( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short unsigned us ;
    (void) nData ;
    us =* ((unsigned short *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    if ( si == 1 )
    {
        ReadMqIndex = us  ;
        return 0 ;
    }
    return Sub_index_does_not_exist;
}

/* Object 0x2222 Set */
long unsigned  SetDebug(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si, us ;
    float f ;
    float yaw, pitch, roll;

    us =* ((unsigned short *) pSdo->SlaveBuf);
    f  =* ((float *) pSdo->SlaveBuf);
    //unsigned long * ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    //float * fPtr =  ((float *) pSdo->SlaveBuf);

    if ( nData != 4)
    {
        return length_of_service_parameter_does_not_match ;
    }
    si = pSdo->SubIndex ;
    switch ( si )
    {
    case 1:
        SysState.Debug.bDisableLineDevCorrection = us ;
        break ;
    case 2:
        SysState.Debug.bRecorder4LimitSwitches = us ;
        break;
    case 3:
        SysState.Debug.bRecorder4QrUpdate = us ;
        break ;
    case 4:
        // Manual intervention: kill any automatic activity
        SysState.TrackWidthCtl.bActive = 0 ;
        // Then set motor state manually
        SysState.Debug.ActivePinMotor = us   ;
        break ;
    case 5:
        SysState.Debug.ActivePinDirection = (enum  E_WheelArmPinDirection) us  ;
        break ;
    case 6:
        SysState.Debug.bDebugWheelArm = us  ;
        SysState.Debug.ActivePinMotor = 0   ;
        break ;
    case 7:
        SysState.Debug.bAllowManualWheelArm = us ;
        break ;
    case 8:
        SysState.Debug.PinMotorCurrentAmp = f ;
        break ;

    case 14:
        SysState.Debug.bAllowMotionUndeterminedWheelArm = us ;
        break ;

    case 15:
        SysState.WakeupState = E_CAN_WAKEUP_INIT ;
        //SysState.Debug.bAllowMotionUndeterminedWheelArm = us ;
        break ;

    case 16:
        SysState.Debug.bRecorder4ShelfRun = us ;
        break;
    case 17:
        SysState.Debug.bRecorder4GyroClimb = us ;
        break ;
    case 18:
        SysState.Debug.bRecorder4WheelArm = (SysState.Debug.bRecorder4WheelArm & 0xfffe ) + ( us & 1 )  ;
        break ;

    case 19:
        SysState.Debug.bRecorder4WheelArm = (SysState.Debug.bRecorder4WheelArm & 1 ) + ( us & 0xfffe )  ;
        break ;

    case 20:
        SysState.Debug.bWaitUser = us ;
        break ;


    case 21:
        return General_parameter_incompatibility_reason ;
    case 22:
        SysState.Debug.bAllowUnclimbWithNoSequel = us ;
        if ( us )
        {
            QuattoEuler(GyroInt.BodyQuat , &yaw, &pitch, &roll);
            SysState.ManRouteState.NomRouteTangent = yaw ;
        }
        break ;

    case 23:
        SysState.Debug.bWaitUserEnable = us ;
        break ;

    case 24:
        SysState.Debug.bManipLockEnable = us ;
        break ;
    case  25:
        ManRouteCmd.ManipLockRequest = us ;
        break ;

    case  26:
        SysState.Debug.GpDebug = us ;
        break ;

    case 27: // Return to zero crawl (ground or shelf)
        // Set crawl to zero
        if ( IsSteerTargetDirection(0,0,f) )
        {
            ManRouteCmd.CrabCrawl = 0 ;
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        InvertSpeed4Shelf(ManRouteCmd.CrabCrawl) ;
        break ;
    case 28:
        // Set crawl to positive
        if  ( ManRouteCmd.CrabCrawl == 1 )
        {
            return 0 ; // Already crawled, do nothing
        }
#ifdef DIFFERENTIAL_CRAB
        if ( IsSteerTargetDirection(PiHalf,-PiHalf,f) )
        {
            ManRouteCmd.CrabCrawl = 1 ;
        }
#else
        if ( IsSteerTargetDirection(PiHalf,f) )
        {
            ManRouteCmd.CrabCrawl = 1 ;
        }
#endif
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        InvertSpeed4Shelf(ManRouteCmd.CrabCrawl) ;
        break ;

    case 29:
        // Set crawl to negative
        if  ( ManRouteCmd.CrabCrawl == -1 )
        {
            return 0 ; // Already crawled, do nothing
        }
#ifdef DIFFERENTIAL_CRAB
        if ( IsSteerTargetDirection(PiHalf,-PiHalf,f) )
        {
            ManRouteCmd.CrabCrawl = -1 ;
        }
#else
        if ( IsSteerTargetDirection(PiHalf,f) )
        {
            ManRouteCmd.CrabCrawl = 1 ;
        }
#endif
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        InvertSpeed4Shelf(ManRouteCmd.CrabCrawl) ;
        break ;

    case 30:
        // Trigger lDebug[7] = 1 for line travel deviation
        SysState.Debug.RecordOnLineDeviation = us ;
        break ;

    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}

void SetNonMasterAccessError(short unsigned u);

void SetMasterAccessError(short unsigned u);

void SetNMIError( short unsigned u);


/* Object 0x2224 Set */
long unsigned  SetSwTestCmd(  struct CSdo * pSdo ,short unsigned nData)
{
     short unsigned si, us ;
(void)nData;
    us =* ((unsigned short *) pSdo->SlaveBuf);
    //unsigned long * ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    //float * fPtr =  ((float *) pSdo->SlaveBuf);

    //if ( nData != 4)
    //{
    //    return length_of_service_parameter_does_not_match ;
    //}
    si = pSdo->SubIndex ;
    switch ( si )
    {
    case 3: //don't put to any variable, change these existing vars.
        SysState.WakeupState = E_CAN_WAKEUP_OPERATIONAL ;
        SysState.Package.State = EPackState_Init;
        SysState.Package.State = EPackState_Success ;
        SysState.Mot.ExecutingQueue = 0 ;
        SysState.CBit.bit.QueueAborted = 0 ;
        break ;

    case 10:
        SetNonMasterAccessError(us) ;
        break ;
    case 11:
        SetMasterAccessError(us) ;
        break ;
    case 12:
        SetNMIError(us) ;
        break ;
    case 14:
        HostMessageStr.PcBitMessageCntr = 0;
        HostMessageStr.PcBitMessageTrigger = 0;
        HostMessageStr.PcBitMessagePeriod = us ;
        break;
    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}


long unsigned  SetShitBuf(  struct CSdo * pSdo ,short unsigned nData)
{
    //unsigned long * ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    //float * fPtr =  ((float *) pSdo->SlaveBuf);
#ifdef SHIT_BUFFER
    short unsigned si, cnt;
    si = pSdo->SubIndex ;
    if ( si == 1 )
    {
        shitbufstop = 1 ;
        shitbufcnt = 0 ;
        for ( cnt = 0 ; cnt < 256 ; cnt++)
        {
            shitbuf[cnt] = 0;
        }
        shitbufstop = 0 ;
    }
#else
    (void)nData;(void)pSdo;
#endif
    return 0 ;
}

long unsigned  GetShitBuf(  struct CSdo * pSdo ,short unsigned *nData)
{
#ifdef SHIT_BUFFER
    short unsigned * uPtr ;
    short unsigned si;
    //unsigned long * ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    //float * fPtr =  ((float *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    uPtr = ((unsigned short *) pSdo->SlaveBuf);
    *uPtr = shitbuf[si] ;
#else
    (void)nData;(void)pSdo;
    *((unsigned long *) pSdo->SlaveBuf) = 0 ;
#endif
    return 0 ;
}

/* Object 0x2224 Get */
long unsigned  GetSwTestCmd(  struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si, isFloat  ;
    float f ;
    long l;
    (void)nData;
//unsigned long * ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    //float * fPtr =  ((float *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    l = 0 ;
    isFloat = 0  ;
    switch ( si )
    {
    case 1:
        l = ProtocolRev ;
        break ;
    case 2:
        f = SysState.TrackWidthCtl.RetractedWidth ;
        isFloat = 1;
        break ;
    case 3:
        f = SysState.TrackWidthCtl.ExtendedWidth ;
        isFloat = 1;
        break ;
    case 4:
        f = Geom.WheelArmAngleExtend  ;
        isFloat = 1;
        break ;
    default:
        return Sub_index_does_not_exist;
    }
    if ( isFloat)
    {
        *((float *) pSdo->SlaveBuf) = f ;
    }
    else
    {
        *((long *) pSdo->SlaveBuf) = l ;
    }
    return 0 ;

}


const struct CShortDataItem ShortDataItem[]={
                               {&SysState.AllowConfig , -32767, 32767,0} , // 0
                               {&Config.RailPitchType , 0, 1, 6568} , // 1
                               {&Config.ManipConfig , 0 , 2 , 6568 } , // 2
                               {&Config.WheelArmType ,0, 2 , 6568}  ,// 3
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 4
                               {&Config.SpareConfigPar ,0, 2 , 6568}  , // 5
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 6
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 7
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 8
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 9
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 10
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 11
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 12
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 13
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 14
                               {&Config.SpareConfigPar ,0, 2 , 6568} ,  // 15
                               {(short *)&SysState.Debug.bDisableNeckStretchAlarm ,0, 1 , 0} ,  // 16
                               {(short *)&SysState.Debug.bBalanceWheelLoadsOnManual,0, 1 , 0}   // 17
};



const unsigned short nShortData = sizeof(ShortDataItem) / sizeof(struct CShortDataItem) ;
/*
 * \brief object 0x2228: GetShortData
 */
long unsigned  GetShortData( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    (void) nData ;
//    struct CShortDesc *pSd ;
    si = pSdo->SubIndex ;
    if ( si < nShortData )
    {
        * ((long *) pSdo->SlaveBuf) = (long) (*ShortDataItem[si].pShortData) ;
        return 0 ;
    }
    return Sub_index_does_not_exist;
}


/**
 * \brief object 0x2228: SetShortData
 *
 */
long unsigned  SetShortData( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  , ok ;
    short us ,lt, dmin , dmax ;
    short * pS ;
    (void) nData ;
    si = pSdo->SubIndex ;

    us = * ((short*)pSdo->SlaveBuf) ;

    if ( si < nShortData)
    {
        dmin = ShortDataItem[si].dmin ;
        dmax = ShortDataItem[si].dmax ;
        ok = 0 ;
        lt = ShortDataItem[si].LimiType ;
        if ( ( lt == 1 ) && ( us == dmin || us == dmax) )
        {
            ok = 1  ;
        }
        else if ( (lt==0) || (lt==SysState.AllowConfig) )
        {
            if ( (us >= dmin) && (us <= dmax) )
            {
                ok = 1  ;
            }
        }

        if ( ok )
        {
            pS = (short *) ShortDataItem[si].pShortData;
            *pS = us ;
            return 0 ;
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
    }
    return Sub_index_does_not_exist;

}



/* Object 0x2222 */
long unsigned  GetDebug(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned * ulPtr ;

    float * fPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    fPtr =  ((float *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;

    if ( si < 24 )
    {
        *fPtr = SysState.fDebug[si] ; // [0]..[23] read fDebug
    }
    else
    {
        if ( si >= 100 && si < 108 )    // [100]..[107] read lDebug
        {
            * ulPtr = lDebug[si-100] ;
        }
        else
        {
            if ( si >= 116 && si < 124 )
            {
                * ulPtr = GlobalDebugCtr[si-116] ;
            }
            else
            {
                switch ( si )
                {
                case 24:
                    *ulPtr = ( SysState.Debug.bDebugWheelArm ? 1 : 0 )  + ( (SysState.TrackWidthCtl.bPinState[0] == E_WAPinDisengaged) ? 2 : 0 )
                            + ( (SysState.TrackWidthCtl.bPinState[1] == E_WAPinDisengaged) ? 4 : 0 ) +
                         ( S2M.Items.WheelArm.stat.RStatus.bit.MotorOn ? 8 : 0 ) +  ( S2M.Items.WheelArm.stat.LStatus.bit.MotorOn ? 16 : 0 ) +
                         ( S2M.Items.WheelArm.stat.RStatus.bit.MotorFault ? 32 : 0 ) +  ( S2M.Items.WheelArm.stat.LStatus.bit.MotorFault ? 64 : 0 ) +
                         + ( (SysState.TrackWidthCtl.bPinState[0] == E_WAPinEngaged) ? 128 : 0 )
                                                    + ( (SysState.TrackWidthCtl.bPinState[1] == E_WAPinEngaged) ? 256 : 0 ) +
                         ( ( SysState.TrackWidthCtl.IBitState & 7 ) << 8 ) +
                         ( SysState.TrackWidthCtl.bActive ? 32768L : 0 ) +
                         ( (long unsigned) S2M.Items.WheelArm.stat.RStatus.bit.ErrCode <<  16 )  +
                         ( (long unsigned) S2M.Items.WheelArm.stat.LStatus.bit.ErrCode <<  24 )  ;
                    break ;
                case 25:
                    *ulPtr = S2M.Items.WheelArm.stat.RPinPos ;
                    break ;
                case 26:
                    *ulPtr = S2M.Items.WheelArm.stat.LPinPos ;
                    break ;
                case 27:
                    *ulPtr = GetWArmModes() ;
                    break ;
                case 28:
                    *ulPtr = SysState.Debug.bWaitUser ;
                    break ;
                default:
                    return Sub_index_does_not_exist;
                }
            }
        }
    }
    return 0 ;
}




/* Object 0x2221 */
long unsigned  GetMotionQueue(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned * ulPtr ;
    float * fPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    fPtr =  ((float *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;

    if ( ReadMqIndex < 0 || ReadMqIndex >= N_MOTION_REC_IN_USER_Q)
    {
        return General_parameter_incompatibility_reason ;
    }
    switch ( si )
    {
    case 1:
        * ulPtr = MQ.Item[ReadMqIndex].x  ;
        break ;
    case 2:
        * ulPtr = MQ.Item[ReadMqIndex].y  ;
        break ;
    case 3:
        * ulPtr = MQ.Item[ReadMqIndex].z_or_lModeData  ;
        break ;
    case 4:
        * ulPtr = (unsigned long) F2NCoord(MQ.Item[ReadMqIndex].cx) + ( (long unsigned) F2NCoord(MQ.Item[ReadMqIndex].cy) << 16)   ;
        break ;
    case 5: // Program identifier
        * ulPtr = * ((long*) &MQ.Item[ReadMqIndex].cz_or_fModeData)   ;
        break ;
    case 6:
        * ulPtr = (unsigned long) MQ.Item[ReadMqIndex].OpCode + ( (long unsigned) MQ.Item[ReadMqIndex].MotionItemMode << 16)   ;
        break ;
    case 10:
        * ulPtr = (unsigned long) MQ.nGet  + ( (unsigned long) MQ.nPut << 16) ;
        break;

    case 11:
        * ulPtr = MotionQueue[0].Item[ReadMqIndex].x  ;
        break ;
    case 12:
        * ulPtr = MotionQueue[0].Item[ReadMqIndex].y  ;
        break ;
    case 13:
        * ulPtr = MotionQueue[0].Item[ReadMqIndex].z_or_lModeData  ;
        break ;
    case 14:
        * ulPtr = (unsigned long) F2NCoord(MotionQueue[0].Item[ReadMqIndex].cx) + ( (long unsigned) F2NCoord(MotionQueue[0].Item[ReadMqIndex].cy) << 16)   ;
        break ;
    case 15: // Program identifier
        * ulPtr = * ((long*) &MotionQueue[0].Item[ReadMqIndex].cz_or_fModeData)   ;
        break ;
    case 16:
        * ulPtr = (unsigned long) MotionQueue[0].Item[ReadMqIndex].OpCode + ( (long unsigned) MotionQueue[0].Item[ReadMqIndex].MotionItemMode << 16)   ;
        break ;


    case 20:
        * fPtr = ManRouteCmd.ShelfRunPars.Xbase ;
        break ;
    case 21:
        * fPtr = ManRouteCmd.ShelfRunPars.Ybase ;
        break ;
    case 22:
        * fPtr = ManRouteCmd.ShelfRunPars.CenterProjHeight ;
        break ;
    case 23:
        * fPtr = 0 ;
        break ;
    case 24:
        * fPtr = 0 ;
        break ;
    case 25:
        * fPtr = SysState.Mot.LastPositionItem.x * LONG_2_M_FAC ;
        break ;
    case 26:
        * fPtr = SysState.Mot.LastPositionItem.y * LONG_2_M_FAC ;
        break ;
    case 27:
        * fPtr = SysState.Mot.LastPositionItem.z_or_lModeData * LONG_2_M_FAC ;
        break ;


    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}





/**
 * \brief object 0x24ff: A joker object configuration
 * SubIndex 1: The object in the PD that is addressed when Index 0x2500 is addressed on LP
 * SubIndex 2: The object in the PD that is addressed when Index 0x2501 is addressed on LP
 * SubIndex 3: The object in the PD that is addressed when Index 0x2502 is addressed on LP
 * SubIndex 4: The object in the PD that is addressed when Index 0x2503 is addressed on LP
 * SubIndex 5: The object in the PD that is addressed when Index 0x2504 is addressed on LP
 */
long unsigned  SetPDCmdDef( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    short unsigned us ;
    (void) nData ;
    si = pSdo->SubIndex ;
    if ( si < 1 || si > 5 )
    {
        return Sub_index_does_not_exist ;
    }
    if ( nData != 2 )
    {
        return General_parameter_incompatibility_reason ;
    }
    us =* ((unsigned short *) pSdo->SlaveBuf);
    if ( us < 1  || us > 0x8000 )
    {
        return General_parameter_incompatibility_reason ;
    }
    PdSlaveObjectMap[si-1] = us ;

    return  SendLong2Manip(0x24ff , si , (long) us );

    //return 0 ;
}


short DirectSetCanAxisCommand( short unsigned LogicId , long value );
long DirectGetCanAxisCommand (short unsigned LogicId ) ;
short FDirectSetCanAxisCommand( short unsigned LogicId , float value , short IsShelf);


long unsigned  GetFwData(   struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    si = pSdo->SubIndex ;
    * ((unsigned long *) pSdo->SlaveBuf) = BURN_DATA_BUFFER[FlashProg.InternalBufOffset + si ]  ;
    *nData = 4 ;
    return 0 ;
}

/*
 * \brief Use the recorder buffer
 *
 */
long unsigned  SetFwData(   struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    long unsigned ul ;
    (void) nData ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    BURN_DATA_BUFFER[FlashProg.InternalBufOffset + si ] = ul  ;
    return 0 ;
}

short TestFlashAddress( unsigned long ul )
{
    if ( ul < 0x82000 || ul >= 0xc0000 || ( ul & (PROG_BUF_LEN-1) ) )
    {
        return -1 ;
    }
    return 0 ;
}
/* Object 0x2301 */
long unsigned  GetFwCmd(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned * ulPtr ;
    ulPtr =  ((unsigned long *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    *nData = 4 ;

    switch ( si )
    {
    case 1:
        * ulPtr = FlashProg.PassWord  ;
        break ;
    case 2:
        * ulPtr = FlashProg.InternalBufOffset ;
        break ;
    case 3:
        * ulPtr = PROG_BUF_LEN ;
        break ;
    case 4:
        * ulPtr = OBJ_2301_FIRM_VER  ;
        break ;
    case 5: // Program identifier
        * ulPtr = PROJ_TYPE  ;
        break ;

    case 6:
        * ulPtr = S2M.Items.ActStatus.stat.IsOperational ;
        break ;

    case 7:
        * ulPtr = ConciseSubverPatch ;
        break ;

    case 8:
        * ulPtr = S2M.Items.ActStatus.stat.CoreId.ul  ;
        break ;

    case 9:
        * ulPtr = SciLpVerSubverPatch ;
        break ;

    case 14:
        * ulPtr = 0 ; // PdVersion ; //date version
        break ;
    case 15:
        * ulPtr = S2M.Items.SlaveRevisions.item.PdVerSubverPatch ; //ver.subver.patch.xx version
        break ;
    default:
        return Sub_index_does_not_exist;
    }

    return 0;
}
typedef  void (*VoidFun)(void) ;



/**
 * \brief Object 0x2302
 */
long unsigned  GetCalibCmd( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si ;
    long unsigned ul ;
    long unsigned * pCalib ;

    si = pSdo->SubIndex ;

    if ( si == 0 )
    {
        ul = N_CALIB_RECS ;
    }

    else
    {
        if ( si < 100  )
        {
            pCalib = ((long unsigned *) &CalibProg.Calib) ;
        }
        else
        {
            pCalib = ((long unsigned *) &Calib);
            si -= 100 ;
        }

        if ( si == 0 || si > N_CALIB_RECS )
        {
            return Sub_index_does_not_exist ;
        }
        ul = pCalib[si-1] ;
    }

    * nData = 4 ;
    * ((long *) &pSdo->SlaveBuf[0] ) = ul ;
    return 0 ;
}

#define PWORD_MASK 0x1fffffff


/**
 * \brief Object 0x2304 Set Configration
 */
long unsigned  SetConfigCmd( struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
    (void )pSdo;
    (void) nData ;
    return -1 ;
#else
    short unsigned si , cnt  ;
    short stat ;
    unsigned long ul ;
    unsigned short * uPtr;

    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        Config.PassWord = ul & PWORD_MASK ;
        return 0 ;
    }
    if ( (Config.PassWord != 0x12345678 )  || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }

    switch ( si )
    {
    case 253:
    //case 33: // Write and verify Configration
        if ( ul != 12345)
        {
            return General_parameter_incompatibility_reason;
        }
        Config.Password0x12345678 = 0x12345678   ;
        Config.cs = 0 ;
        uPtr = (unsigned short *) & Config ;
        for ( cnt = 0 ; cnt < (sizeof(Config)-2) ; cnt++ )
        {
            Config.cs -= *uPtr++  ;
        }

        stat = SFSectorErase(SER_FLASH_ADD_CONFIG_MAIN) ;
        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_CONFIG) ; ;
        }
        stat = SFInstructionWriteBuf(SER_FLASH_ADD_CONFIG_MAIN , sizeof(struct CConfig) , (short unsigned * ) & Config );
        if ( stat )
        {
            SysState.CBit.bit.NoConfig = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_BURN_CONFIG) ;
//            break ;
        }
        if (ReadConfigFromFlash(    ) == 0  )
        {
            SysState.CBit.bit.NoConfig = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoConfig = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_READ_CONFIG) ;
        }

        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    if ( stat )
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
#endif
}


/**
 * \brief Object 0x2302 Set calibration
 */
long unsigned  SetCalibCmd( struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
    (void )pSdo;
    (void) nData ;
    return -1 ;
#else
    short unsigned si , cnt ,CalibFileVer ;
    short stat ;
    unsigned long ul ;
    unsigned long * uPtr;
    float f ;
    const struct CCalibRecord *pCr ;
    struct CCmdMode cmd ;
#ifndef SP_SER_FLASH
    long mask ;
#endif

    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);
    f =* ((float *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        CalibProg.PassWord = ul & PWORD_MASK ;
    }
    if ( (( CalibProg.PassWord != (0x12345600 + N_CALIB_RECS) ) && (si > 251) ) || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    if ( si == 1 )
    {
        if (( ul & ~PWORD_MASK) == 0 )
        {
            ClearMemRpt( (short unsigned *) &CalibProg.Calib , sizeof(CalibProg.Calib ) );
        }
        ul &= PWORD_MASK ;
#ifdef SP_SER_FLASH
#else
        mask = BlockInts() ;
        stat = PrepFlash4Burn();
        RestoreInts(mask) ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
#endif
    }
    if (si >= 1 && si <= N_CALIB_RECS)
    {
        pCr = &CalibPtrTable[si-1] ;
        cmd = * (( struct CCmdMode *) &  pCr->flags ) ;
        if ( cmd.IsFloat )
        {
            stat = IsInRange( &f , pCr->limit , -pCr->limit );
            if ( stat )
            {
                return General_parameter_incompatibility_reason ;
            }
        }
        ((long unsigned*) &CalibProg.Calib)[si-1] = ul ;
        return 0 ;
    }

    switch ( si )
    {

    case 249:
    //case 29: // Apply calibration
        DealCalibration(2) ;
        stat = 0 ;
        break ;
    case 250:
    //case 30:
        // Clear the calibration
        DealCalibration(0) ;
        stat = 0 ;
        break ;
    case 251:
    //case 31:
        stat = ReadCalibFromFlash ( (long unsigned*) &CalibProg.Calib ,  FlashCalib    ) ;
        if ( stat == 0 )
        {
            SysState.CBit.bit.NoCalib = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoCalib = 1 ;
        }
        break ;
    case 252:
    //case 32:// Clear sector of calibration
#ifdef SP_SER_FLASH
        stat = SFSectorErase(SER_FLASH_ADD_CALIB_MAIN) ;
#else
        mask = BlockInts() ;
        stat = EraseSector( Sector_AppCalib_start , 64UL  );
        RestoreInts(mask)  ;
#endif
        break ;
    case 253:
    //case 33: // Write and verify calibration
        if ( ul == CalibProg.Calib.CalibData)
        {
            CalibFileVer = 0 ;
        }
        else
        {
            if ( ul == ~CalibProg.Calib.CalibData)
            {
                CalibFileVer = 1 ;
            }
            else
            {
                return General_parameter_incompatibility_reason;
            }
        }
        if ( CheckAlign ( (short unsigned *) &CalibProg.Calib , 1 ))
        {
            return General_parameter_incompatibility_reason ;
        }
        CalibProg.Calib.Password0x12345678 = 0x12345678  + CalibFileVer ;
        CalibProg.Calib.cs = 0 ;
        uPtr = (unsigned long *) & CalibProg.Calib ;
        for ( cnt = 0 ; cnt < ((sizeof(CalibProg.Calib)>>1)-1) ; cnt++ )
        {
            CalibProg.Calib.cs -= *uPtr++  ;
        }

#ifdef SP_SER_FLASH
        stat = SFSectorErase(SER_FLASH_ADD_CALIB_MAIN) ;
#else
        mask = BlockInts() ;
        stat = EraseSector( Sector_AppCalib_start  , 64UL  );
        RestoreInts(mask)  ;
#endif
        if ( stat )
        {
            return GetManufacturerSpecificCode(ERR_COULD_NOT_ERASE_OLD_CALIB) ; ;
        }
#ifdef SP_SER_FLASH
        stat = SFInstructionWriteBuf(SER_FLASH_ADD_CALIB_MAIN , sizeof(struct CCalib) , (short unsigned * ) & CalibProg.Calib );
#else
        mask = BlockInts() ;
        stat = ProgramPageAutoECC((short unsigned * ) & CalibProg.Calib ,Sector_AppCalib_start  , 256 ) ;
        RestoreInts(mask)  ;
#endif
        if ( stat )
        {
            SysState.CBit.bit.NoCalib = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_BURN_CALIB) ;
//            break ;
        }
        if ( DealCalibration(1) == 0 )
        {
            SysState.CBit.bit.NoCalib = 0 ;
        }
        else
        {
            SysState.CBit.bit.NoCalib = 1 ;
            return GetManufacturerSpecificCode(ERR_COULD_NOT_READ_CALIB) ;
        }

        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    if ( stat )
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
#endif
}





void KillCLA(void);

void ResetCpu( short unsigned ResetReason  )
{
    ResetReasonLog[WakeCounter].Reason = ResetReason ;
    // ResetReasonLog[WakeCounter].OldMissionMsec = IsrTimer.mSecTimer ;
    EALLOW ;
    DINT   ;
    KillCLA();
    EALLOW ;
    Cla1Regs.MVECT8 = 234 ;
    //((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
    WdRegs.WDCR.all = 0x28 ; // Enable WD
    for (;; );
}

long CopyProgBuffer2Slave(short unsigned len);
/*
 * \brief Object 0x2301
 *
 */
long unsigned  SetFwCmd(    struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
    (void )pSdo;
    (void) nData ;
    return -1 ;
#else
    short unsigned si ;
    short stat ;
    unsigned long ul , pw ;
    long mask ;
    si = pSdo->SubIndex ;
    ul =* ((unsigned long *) pSdo->SlaveBuf);

    if ( si == 1 )
    {
        pw = ul ;
    }
    else
    {
        pw = FlashProg.PassWord  ;
    }

    // Services that do not require flash preparation
    switch ( si)
    {
        case 132:
            if ( ul == 1234)
            {
                RelinquishPupmSemaphore();
            }
            return 0 ;
        case 151:
            if ( ul != 1234 )
            {
                 return General_parameter_incompatibility_reason ;
            }
            if (ProgramBufferLength == 0 || ProgramBufferLength > 2048 )
            {
                return General_parameter_incompatibility_reason ;
            }
            ul = CopyProgBuffer2Slave(ProgramBufferLength);
            return ul ;
        case 244: // Back home to boot , serves in "Reset LP"
            // Stop the motors
            LogException ( OWN_EXP_ID , EXP_SAFE_FATAL , exp_waiting_reset ) ;

            SetSysTimerTargetSec ( TIMER_ARR_STAM_WAIT_IDLE , 2.0f , &SysTimerStr ) ;
            while (IsSysTimerElapse(TIMER_ARR_STAM_WAIT_IDLE , &SysTimerStr )==0)
            {
                UpdateSysTimer( &SysTimerStr ) ;
                if (SysState.Mot.mode == E_SysMotionModeFault)
                {
                    break;
                }
            }
            LogException ( OWN_EXP_ID , EXP_FATAL , exp_waiting_reset ) ;

            DINT;
            asm(" nop") ;
            ResetCpu(1) ;
            //((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
            break ; // Formal
    }

    if ( pw != 0x12345678 || nData != 4 )
    {
        return General_parameter_incompatibility_reason ;
    }

    switch ( si )
    {
    case 1:
        mask = BlockInts() ;
        stat = PrepFlash4Burn();
        RestoreInts(mask) ;
        FlashProg.PassWord = ul ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ; // Already accepted
    case 2:
        if ( ul > PROG_BUF_LEN - 256 )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProg.InternalBufOffset = (short unsigned) ul ;
        M2S.Items.ActCmd.cmd.InternalBufOffset = (short unsigned) ul ;
        break;
    case 100:
        if ( TestFlashAddress(ul) < 0   )
        {
            return General_parameter_incompatibility_reason ;
        }
        FlashProg.AddressInFlash = ul ;
        break ;
    case 130: // Clear section
        if ( ul != 13 )
        {
             return General_parameter_incompatibility_reason ;
        }

        mask = BlockInts() ;
        stat = EraseSector( Sector_AppVerify_start , 64UL  );
        RestoreInts(mask)  ;
        if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;
    case 131: // Program buffer
        //if ( stat )
        {
            return General_parameter_incompatibility_reason ;
        }
        //break ;


    case 245: // Back home to boot, Reset PD first
        SendLong2Manip( 0x2301 , 245 , FlashProg.PassWord ) ;

        WaitStam(20000, &SysTimerStr) ; // Wait interrupts to complete SDO send

        // Time to commit suicide
        DINT;
        ResetCpu(2); // ((VoidFun)0x80000 )() ; // Fat Bertha from which nobody ever returned
        break ; //Formal
    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
#endif
}



/**
 * \brief Get the index of parameter in the parameters table , brute force search
 *
 * \param TargetIndex: The index of the parameter to look for
 */
short unsigned GetParIndex ( short unsigned TargetIndex )
{
    short unsigned L , R, m , Am , cnt ;

    L = 0 ; R = N_ParTable ;

    for ( cnt = 0 ; cnt < 10000; cnt++  )
    {
        if ( L > R ) return UNSIGNED_MINUS1_S ;
        m = (L+R)>>1 ;
        Am = ParTable[m].ind ; ;
        if ( Am < TargetIndex )
        {
            L = m + 1 ;
            continue ;
        }
        if ( Am > TargetIndex )
        {
            if ( R == 0 )
            {
                return UNSIGNED_MINUS1_S ; // Search too long
            }
            R = m - 1 ;
            continue ;
        }
        return m ;
    }
    return UNSIGNED_MINUS1_S ; // Search too long
}

/**
 * \brief Set a floating point parameter .
 *
 */
long unsigned  SetFloatPar( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , mask ;
    float f ;
    short unsigned stat ;
    struct CFloatParRecord *pPar ;

    si = pSdo->SubIndex ;
    f =* ((float *) pSdo->SlaveBuf);
    if ( isNan( &f) )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    stat = GetParIndex( si ) ;
    if ( stat & 0x8000 ) return Sub_index_does_not_exist ;
    pPar = ( struct CFloatParRecord * ) &ParTable[stat] ;
    if ( f >= pPar->lower &&  f <= pPar->upper )
    {
        * pPar->ptr = f;
        mask = BlockInts();
        CalcGeomData() ;
        RestoreInts(mask) ;
    }
    else
    {
        return General_parameter_incompatibility_reason ;
    }
    return 0 ;
}

/**
 * \brief Get a floating point parameter .
 *
 */
long unsigned  GetFloatPar( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    short unsigned stat ;
    float f ;
    struct CFloatParRecord *pPar ;

    si = pSdo->SubIndex ;
    stat = GetParIndex( si ) ;
    if ( stat & 0x8000) return Sub_index_does_not_exist ;
    pPar = ( struct CFloatParRecord * ) &ParTable[stat] ;
    f = *  pPar->ptr ;

    *nData = 4 ;
    * ((float *) &pSdo->SlaveBuf[0] ) = f ;

    return 0 ;
}



/**
 * \brief Set a floating point parameter to the PD.
 * object 0x220c
 */
long unsigned  SetFloatPar2PD( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    union
    {
        float f ;
        long  l ;
    } u ;

    si = pSdo->SubIndex ;
    u.f =* ((float *) pSdo->SlaveBuf);
    if ( isNan( &u.f) )
    {
        return General_parameter_incompatibility_reason ;
    }

    if ( nData != 4 )
    {
        return length_of_service_parameter_does_not_match;
    }
    return SendLong2Manip(0x220c  , si , u.l ) ;
}

/**
 * \brief Get a floating point parameter from the PD .
  * object 0x220c
 */
long unsigned  GetFloatPar2PD( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    short unsigned nBytes ;
    long unsigned lstat ;
    union
    {
        float f ;
        long  l ;
    } u ;

    si = pSdo->SubIndex ;
    nBytes = 4 ;

    lstat = (long unsigned) GetLongFromManip(0x220c , si , &u.l , &nBytes );
    if ( lstat ) return lstat ;

    *nData = 4 ;
    pSdo->SlaveBuf[0]  = u.l ;

    return 0 ;
}


float eu[3] ;

/**
 * \brief Obj 0x2207 Route control is for direct wheeling, turn, or turn in place.
 *
 * The wheeling is taken with the following controls:
 * - Line speed
 * - Turn radius
 */
long unsigned  SetRouteCmd( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  ;
    short fl ,action ;
    short unsigned mask; 
#ifndef CORE2_OWNS_CAN
    long val;
#endif
    long unsigned stat ;
    float f ;
    long  l ;
    short u ;
    struct CManipControlWord cw  ;

    si = pSdo->SubIndex ;
    f =* ((float *) pSdo->SlaveBuf);
    l =* ((long *) pSdo->SlaveBuf);
    u =* ((short *) pSdo->SlaveBuf);

    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    if ( (si < 33) &&  ( SysState.Mot.mode < E_SysMotionModeStay ))
    {
        return GetManufacturerSpecificCode( AXES_ERR_NOT_READY );
    }


    switch ( si )
    {
    case 1:
        if ( IsInRange( &f , 2 , -2 ) || (fabsf(f) < 1e-2f)) return General_parameter_incompatibility_reason ;
        ManRouteCmdImage.LineAcc = f ;
        break ;
    case 2:
        if ( IsInRange( &f , 2 , -2 ) || (fabsf(f) < 1e-2f) ) return General_parameter_incompatibility_reason ;
        ManRouteCmdImage.CurvatureAcc = f ;
        break ;
    case 3:
        if ( IsInRange( &f , 2 , -2 ) ) return General_parameter_incompatibility_reason ;
        ManRouteCmdImage.LineSpeedCmd = f ;
        break ;
    case 4:
        if ( IsInRange( &f , 3 , -3 ) ) return General_parameter_incompatibility_reason ;
        ManRouteCmdImage.CurvatureCmd = f ;
        break ;

    case 7:
        if ( IsInRange( &f , 1.7f , -1.7f ) ) return General_parameter_incompatibility_reason ;
        SetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK], f ) ;
        break ;

    case 10:
        fl = (short) f ;
        if ( fl == 0 || fl == 1 || fl == -1 )
        {
            ManRouteCmdImage.CrabCrawl = fl  ;
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;

    case 16:
        if ( IsInRange( &f , 6.1f , 0.0f ) ) return General_parameter_incompatibility_reason ;
        //ManRouteCmdImage.ShelfMode = (short) f ;
        break ;

    case 20:
        if ( IsInRange( &f , 100.0f , 0.0f ) ) return General_parameter_incompatibility_reason ;
        ControlPars.NeckStretchGain = f ;
        break ;

    case 28:
        if ( IsInRange( &f , 20.0f , 0.0f ) ) return General_parameter_incompatibility_reason ;
        ControlPars.WheelPosOnPoleGain = f ;
        break ;

    case 29:
        mask = BlockInts() ;
        SysState.ManRouteState.WheelEncoderCapture[0] = WheelEncR.Position ;
        SysState.ManRouteState.WheelEncoderCapture[1] = WheelEncL.Position ;
        RestoreInts( mask ) ;
        break ;

    // Set neck in / out stabilization mode
    case 30:
        if ( IsInRange( &f , 1.01f , 0.0f ) ) return General_parameter_incompatibility_reason ;

        mask = BlockInts() ;
        if ( SysState.Mot.mode <= E_SysMotionModePerAxis )
        { // Release quick stops
            SetMotionMode(E_SysMotionModePerAxis,12) ;
        }
        SysState.Mot.NeckControl.NeckMode = (short) f ;
        RestoreInts(mask) ;
        break ;

    case 35:
        if ( IsInRange( &f , 10.0f , 0.01f ) ) return General_parameter_incompatibility_reason ;
        Geom.StopAfterLeaderEncountersSwM =  f;
        break ;

    case 36:
        if ( IsInRange( &f , 10.0f , 0.0f ) ) return General_parameter_incompatibility_reason ;
        ControlPars.WheelPosOnRailGain = f ;
        break;

    case 38:
        //Avoid premature end of crabbing
        if ( IsInRange( &f , 20.0f , 0.01f ) ) return General_parameter_incompatibility_reason ;
        SetSysTimerTargetSec(TIMER_CRAB_ACTION, f, &SysTimerStr);        ;
        break ;

    case 51:
        if ( ( l == 0) || ( l == 1) ) // SysState.Package.Get
        {
            SimPackageItem.z_or_lModeData = ( SimPackageItem.z_or_lModeData & 0xfffffff0) | l; //ok
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        break;
    case 52:
        if ( ( l == PICKDIR_LEFT) || ( l == PICKDIR_RIGHT) ) // SysState.Package.Side
        {
            SimPackageItem.z_or_lModeData = ( SimPackageItem.z_or_lModeData & 0xffff) | ( l << 16 ); //ok
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        break;
    case 53: // Angle of incidence
        if ( IsInRange( &f ,0.5 , -0.5 ) ) return General_parameter_incompatibility_reason ;
        SimPackageItem.cx = f ;
        break;
    case 54: // X position
        SimPackageItem.x = (long) ( f * 10000 ) ;
        break ;
    case 55: // Y position
        SimPackageItem.y = (long) ( f * 10000 ) ;
        break ;

    case 56: // Mode
        if ( ( l >= 0) && ( l <= 15) ) // Action
        {
            SimPackageItem.z_or_lModeData = ( SimPackageItem.z_or_lModeData & 0xffffff0f) | ( l << 4 ) ; //ok
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        break;


    case 59:
        GlobalDebug = u ;
        break ;

    case 60:
        // Start package handling process
        if ( l != 1  ) return General_parameter_incompatibility_reason ;


        if ( (SysState.Package.State >  EPackState_Init  ) && (SysState.Package.State !=  EPackState_Success ) )
        {
            return GetManufacturerSpecificCode( ERR_MANIPULATOR_BUSY ) ;
        }

        action = ( ( SimPackageItem.z_or_lModeData & 0xf0 ) & 0xffffff0f) >> 4 ;

        if ( action == E_PackModeRebootManipulatorMotors )
        {
            M2S.Items.ActCmd.cmd.PsCmd.items.ManipulatorAxesReboot = 3; // 3 consecutive transmissions to PD for reliability
            SysState.Package.State = EPackState_Init ;
            break ;
        }

        if ( (action != E_PackModeResetManipulatorPower) && ( action != E_PackModeRebootManipulatorMotors) )
        {
            if (( ( SysState.CBit.bit.MotorReady & ( 1 << LOGICAL_NECK)  ) == 0 ) || (SysState.WakeupState != E_CAN_WAKEUP_OPERATIONAL) )
            {
                return GetManufacturerSpecificCode( ERR_PACKAGE_REQUIRES_NECK_MOT_ON) ;
            }
        }

        mask = BlockInts( ) ;

        if ( SysState.Mot.mode <= E_SysMotionModeManualTravel)
        {
            SysState.Package.PackSim.OldMotMode = E_SysMotionModeManualTravel ;
            SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd ;
        }
        else
        {
            SysState.Package.PackSim.OldMotMode = SysState.Mot.mode ;
        }

        SysState.Package.PackSim.OldPosTarget = GetCanAxisPosTarget ( &SysState.CanAxis[LOGICAL_NECK])  ;
        SysState.Package.PackSim.OldNeckMode = SysState.Mot.NeckControl.NeckMode ;

        SetMotionMode(E_SysMotionModeTestPack,14) ;
        SysState.Package.State = EPackState_Init ;
        SimPackageItem.MotionItemMode = 0 ;
        GlobalDebugCtr[0] = 0 ;
        GlobalDebugCtr[1] = 0 ;
        RestoreInts( mask) ;
        break ;

    case 61:
        *( (short unsigned *) &cw) = 0 ;
        if ( ( l != PICKDIR_LEFT) && ( l != PICKDIR_RIGHT) ) // SysState.Package.Side
        {
            return General_parameter_incompatibility_reason;
        }
        // Start the state machine of the actuator standby
        // SendLong2Manip(0x2103 , 107 , 1 ) ;


        cw.Automatic = 1  ;
        cw.MotorsOn = 1 ;
        cw.DealPackage = 0 ;
        cw.PackageGet =  0 ;
        cw.Side =  l ;
        cw.Standby = 1 ;
        SysState.Package.ManipControlWord = cw ;
        SysState.Package.StandbyAction = 1 ;
        SetSysTimerTargetSec ( TIMER_MANIPULATOR_STANDBY , 30.00 , &SysTimerStr) ;

        break ;

    case 62:
        // Emergency dealing with package
        if (  IsSteerTargetDirection( 0 , 0 , 0.075f) == 0 )
        {
            return General_parameter_incompatibility_reason;
        }

        if (IsInMission())
        { // Running an auto queue
            return General_parameter_incompatibility_reason;
        }
        if ( fabsf(f) > 20.0f )
        {
            return General_parameter_incompatibility_reason;
        }

        if ( SysState.Mot.mode == E_SysMotionModeHostFinePosition   )
        {
            return General_parameter_incompatibility_reason;
        }

        if ( SetFineMotion(f) )
        {
            return General_parameter_incompatibility_reason;
        }
        break ;

    case 63:
        // Do automatic pitch alignment
       stat = AlignPitchOnShelf( 0 ); // Reset alignment state machine
       if ( stat )
       {
           return Manufacturer_error_detail + stat  ;
       }

       if (SysState.Debug.bRecorder4WheelArm & 0x1 )
       {
           ActivateProgrammedRecorder() ;
       }

       mask = BlockInts();
       SysState.Package.Mode = E_PackModeAlignOnShelf ;
       SysState.Package.State = EPackState_Init ;
       SetMotionMode(E_SysMotionModeTestPack,15) ;
       SysState.Mot.QuickStop = 0 ;
       RestoreInts(mask);

       break ;

    case 64:
        // Kill possible individual mode
        if ( S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual )
        {
            stat = SendLong2Manip(0x2103, 8 , 0x1234) ;
        }
        mask = BlockInts( ) ;
        if ( u )
        {
            SysState.Package.ManipControlWord.DoHoming = 1  ;
            SysState.Package.ManipControlWord.MotorsOn = 1  ;
            SysState.Package.ManipControlWord.Automatic = 1  ;
            SysState.Package.ManipControlWord.Standby = 0  ;
            SysState.Package.ManipControlWord.DealPackage = 0  ;
        }
        else
        {
            SysState.Package.ManipControlWord.MotorsOn = 0  ;
            SysState.Package.ManipControlWord.DoHoming = 0  ;
        }

        RestoreInts( mask) ;
        break ;

    case 65:
        SysState.Package.ManipControlWord.KillHoming = u? 1 : 0 ;
        break ;

    case 74:
        eu[0] = f ;
        break ;
    case 75:
        eu[1] = f ;
        break ;
    case 76:
        eu[2] = f ;
        mask = BlockInts();
        Euler2Quat(eu[0], eu[1],eu[2], GyroInt.GyroQuat);
        RestoreInts(mask) ;
        break;

    case 80:
        // Power cycle the PD
        if ( l != 1  ) return General_parameter_incompatibility_reason ;
        SysState.Package.ManOnState.State = E_ManonInit ;
        break ;


    case 100: // Enter
        if ( SysState.WakeupState != E_CAN_WAKEUP_OPERATIONAL )
        {
            return 0 ;
        }
        if ( f == 1.0f )
        {
            if ( ManRouteCmdImage.CrabCrawl )
            {
                ManRouteCmdImage.CurvatureCmd = 0 ;
            }

            if ( SysState.Mot.mode != E_SysMotionModeManualTravel )
            {
                ManRouteCmd.CurvatureCmd = 0 ;
                ManRouteCmd.LineSpeedCmd = 0 ;
                ManRouteCmd.dCurvatureCmd = 0 ;
            }

            SetSysTimerTargetSec( TIMER_MAN_CMD_TOUT , 2.0f , &SysTimerStr) ;
            mask = BlockInts() ;
                if ( (SysState.Mot.mode != E_SysMotionModeManualTravel) || SysState.Mot.QuickStop)
                {
                    //ManRouteCmd.CrabCrawl = 0 ;
                    //ManRouteCmd.ShelfMode = 0 ;
                    //for ( cnt = 0 ; cnt < N_CAN_SLAVES  ; cnt++ )
                    //{
                    //    SysState.CanAxis[cnt].IsManual = 0 ;
                    //}
                    SysState.ManRouteState.NewCrabFlag = 1 ;
                    SysState.Mot.QuickStop = 0 ;
                }
                //ManRouteCmdImage.ShelfSubMode = 0 ;

                SysState.ManRouteState.DifferenceDrive = 0 ;
                SysState.Spline.ManualCurvature = 0 ;
                CrabProfiler.Done = 1;
                WheelProfiler[0].Done = 1;
                WheelProfiler[1].Done = 1;

                stat = EnterShelfMotionCmd(&ManRouteCmdImage.CrabCrawl , 0, 0,0) ;
                ManRouteCmd.LineAcc = ManRouteCmdImage.LineAcc;
                ManRouteCmd.CurvatureCmd = ManRouteCmdImage.CurvatureCmd;
                ManRouteCmd.LineSpeedCmd = ManRouteCmdImage.LineSpeedCmd;
                ManRouteCmd.CurvatureAcc = ManRouteCmdImage.CurvatureAcc;
                ManRouteCmd.dCurvatureCmd = ManRouteCmdImage.CurvatureAcc * ManRouteCmdImage.LineSpeedCmd ;
                //ManRouteCmd = ManRouteCmdImage ;

                // Don't keep automatic neck mode if commanded to go manual
                if ( SysState.Mot.NeckControl.NeckMode == E_NeckShelfAuto)
                {
                    SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd ;
                }

                SysState.SleepRequest = 0 ; // Kill any pending sleep request
                SetMotionMode(E_SysMotionModeManualTravel,16) ;
                SysState.ManRouteState.WaitPosReport = 0 ;
            RestoreInts(mask) ;

            if ( stat ) return stat ;
        }
        else
        {
            return General_parameter_incompatibility_reason ;
        }
        break ;

    default:
        return Sub_index_does_not_exist;
    }
    return 0 ;
}

//long unsigned SetAutoRouteCmdBody(float f, short unsigned si);

/**
 * \brief Obj 0x220b Route control for automatic climb.
 *
 */
long unsigned  SetAutoRouteCmd( struct CSdo * pSdo ,short unsigned nData)
{
    //short unsigned si  ;
    //float f ;

    //si = pSdo->SubIndex ;
    //f =* ((float *) pSdo->SlaveBuf);
    //(void) pSdo ;

    short unsigned mask ;
    short unsigned si ;
    short unsigned us , cnt ;
    struct CCanAxis *pAxis ;
    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;

    si = pSdo->SubIndex;
    if ( SysState.Mot.mode < E_SysMotionModeStay )
    {
        if ( si != 3)
        {
            return GetManufacturerSpecificCode( AXES_ERR_NOT_READY) ;
        }
    }
    us =* ((short unsigned *) pSdo->SlaveBuf);
    switch ( si )
    {
    case 1:
        mask = BlockInts() ;
        SetMotionMode(E_SysMotionModeManualTravel,17) ;
        SysState.ManRouteState.LineSpeed = 0 ;
        ManRouteCmd.ShelfRunPars.ArcSpeed = 0 ;
        RestoreInts(mask) ;
        break ;
    case 2:
        mask = BlockInts() ;
        SysState.CBit.bit.OnRescueMission = 0 ;
        SysState.Package.State = 0 ;
        SetMotionMode(us,18) ;
        SysState.ManRouteState.LineSpeed = 0 ;
        ManRouteCmd.ShelfRunPars.ArcSpeed = 0 ;
        RestoreInts(mask) ;
        break ;
    case 3: //Reset fault
        for ( cnt = 0 ; cnt < N_CAN_SLAVES ; cnt++  )
        {
            pAxis = &SysState.CanAxis[cnt];
            if ( pAxis->BH.AxisCbit.bit.MotorReady == 0 )
            {
                ResetAxisFaults(pAxis)  ;
            }
        }

        mask = BlockInts() ;
        if ( SysState.Mot.mode < E_SysMotionModeStay )
        {
            SysState.CBit.bit.OnRescueMission = 0 ;
            SysState.Package.State = 0 ;
            SetMotionMode(E_SysMotionModeStay,18) ;
            SysState.ManRouteState.LineSpeed = 0 ;
            ManRouteCmd.ShelfRunPars.ArcSpeed = 0 ;
        }

        RestoreInts(mask) ;
        break ;
    default:
        return Sub_index_does_not_exist;
    }
    return 0;
}




/**
 * \brief Object 0x2207
 *
 */
long unsigned  GetRouteCmd( struct CSdo * pSdo ,short unsigned *nData)
{

    short unsigned si  , VarType ;
    long L ;
    float f ;

    struct CManRouteCmd * pRoute ;
    si = pSdo->SubIndex;
    *nData = 4 ;
    VarType = 2 ;
    f = 0 ;
    //done = 0 ;
    pRoute = & ManRouteCmd ;
    switch ( si)
    {
    case 1:
        f = ManRouteCmdImage.LineAcc  ;
        break ;
    case 2:
        f = ManRouteCmdImage.CurvatureAcc  ;
        break ;
    case 3:
        f = ManRouteCmdImage.LineSpeedCmd ;
        break ;
    case 4:
        f = ManRouteCmdImage.CurvatureCmd  ;
        break ;
    case 7:
        f = GetCanAxisPosTarget( &SysState.CanAxis[LOGICAL_NECK])  ;
        break ;
    case 10:
        f = (float) ManRouteCmdImage.CrabCrawl ;
        break ;

    case 11: // Get state
        f = SysState.ManRouteState.NewCrabFlag ;
        break;
    case 12:
        f = SysState.ManRouteState.Curvature ;
        break ;
    case 13:
        f = SysState.ManRouteState.LineSpeed ;
        break ;
    case 14:
        f = SysState.Mot.mode  ;
        break;
    case 15:
        L = ( SysState.CanAxis[LOGICAL_RSTEER].PositionReached ? 1 : 0 ) + ( SysState.CanAxis[LOGICAL_LSTEER].PositionReached ? 2 : 0) +
            //( SysState.CanAxis[LOGICAL_RW].DFT.StatusWord.SpeedZeroOrSetPtAck ? 4 : 0 ) + (SysState.CanAxis[LOGICAL_LW].DFT.StatusWord.SpeedZeroOrSetPtAck ? 8 : 0 )
            + ( SysState.ManRouteState.NewCrabFlag  ? 16 : 0 )
            + ( (short unsigned)( (ManRouteCmdImage.CrabCrawl + 1 )&3) << 5 )
            + ( (SysState.CanAxis[LOGICAL_RW].InductiveSensor&1) << 7 )
            + ( (SysState.CanAxis[LOGICAL_LW].InductiveSensor&1) << 8 ) ;

        VarType = 0 ;
        break;
    case 16:
        f = pRoute->ShelfMode ;
        break;

    case 20:
        f = ControlPars.NeckStretchGain  ;
        break ;

    case 21:
        f = pRoute->ShelfRunPars.ArcSpeed  ;
        break ;

    case 22:
        f = pRoute->ShelfRunPars.PoleSpeed  ;
        break ;

    case 23:
        f = pRoute->ShelfRunPars.ShelfSpeed ;
        break ;

    case 24:
        f = pRoute->ShelfRunPars.PoleLineAcc ;
        break ;

    case 28:
        f = ControlPars.WheelPosOnPoleGain  ;
        break ;

    case 30:
        f =  (float) SysState.Mot.NeckControl.NeckMode;
        break ;

    case 32:
        f = (float)( ( SysState.CBit.bit.QueueAborted  ? 1 : 0 ) + (SysState.Mot.ExecutingQueue ? 2 : 0 ) ) ;
        break ;
    case 33:
        f = pRoute->ShelfRunPars.CenterProjHeight ;
        break ;

    case 34:
        f = Geom.Center2WheelDist * 2 ;
        break ;

    case 35:
        f = Geom.StopAfterLeaderEncountersSwM ;
        break ;

    case 36:
        f = ControlPars.WheelPosOnRailGain  ;
        break;
#ifdef DFT_AXES
    case 38:
        f = (float) SysState.CanAxis[LOGICAL_RW].DFT.SpeedCmd  ;
        break ;

    case 39:
        f = (float) SysState.CanAxis[LOGICAL_LW].DFT.SpeedCmd  ;
        break ;
#endif

    case 40:
        // WheelEncoder2Meter on the rail
        f = Geom.Calc.WheelEncoder2MeterShelfHoriz ;
        break ;

    case 60:
        f = (float) pRoute->CrabCrawl    ;
        break ;

    case 199:
        f = ManRouteCmd.ShelfSubMode ;
        break ;

    case 200:
        f = SysState.ManRouteState.DeltaM  ;
        break ;
    default:
        return Sub_index_does_not_exist;
    }

    if ( VarType == 0 )
    {
        * ((long *) &pSdo->SlaveBuf[0] ) = L ;
    }
    else
    {
        * ((float *) &pSdo->SlaveBuf[0] ) = f ;
    }


    return 0 ;

}

/**
 * \brief Obj 0x2206 Get the axis command
 *
 */
long unsigned  GetAxisCmd(  struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    long l ;
    long unsigned ul ;
    float f ;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    if ( si > 0 && si <= N_CAN_SLAVES )
    {
        l = DirectGetCanAxisCommand ( si-1 );
        * ((long *) &pSdo->SlaveBuf[0] ) = l ;
    }
    else
    {
        if ( si > 10 && si <= (10+N_CAN_SLAVES ) )
        {
            f = FDirectGetCanAxisCommand ( si-11  );
            * ((float *) &pSdo->SlaveBuf[0] ) = f ;
        }
        else
        {
            if ( si > 20 && si <= (20+N_CAN_SLAVES ) )
            {
                ul = SysState.CanAxis[si-21].BH.SwVersion ;
                * ((long unsigned *) &pSdo->SlaveBuf[0] ) = ul ;
            }
            else
            {
                switch ( si   )
                {
                case 30:
                    * ((long unsigned *) &pSdo->SlaveBuf[0] ) = SysState.InterfaceVersion[0];
                    break ;
                case 31:
                    * ((long unsigned *) &pSdo->SlaveBuf[0] ) = SysState.InterfaceVersion[1];
                    break ;
                default:
                    return Sub_index_does_not_exist ;
                }
            }
        }
    }
    return 0 ;
}


/**
 * \brief Object 0x220a Set per-axis command
 *
 */
long unsigned  SetSpeedCmd(  struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si , u , mask ;
    float f ;
    si = pSdo->SubIndex ;
    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;
    f =* ((float *) pSdo->SlaveBuf);
    u =* ((unsigned short *) pSdo->SlaveBuf);

    if ( isnan(f) )
    {
        return (General_parameter_incompatibility_reason) ;
    }

    switch ( si )
    {
    case 1:
        SysState.Mot.BodyCmd.bBypassTout = ( u == 1 ) ? 1 : 0  ;
        break ;
    case 100:
        if ( fabs(f) > 3  )
        {
            return (General_parameter_incompatibility_reason) ;
        }
        SysState.Mot.BodyCmd.SpeedShadow = f ;
        SysState.Mot.BodyCmd.Dirty  |= 1  ;
        break ;
    case 101:
        if ( fabs(f) > 3  )
        {
            return (General_parameter_incompatibility_reason) ;
        }
        SysState.Mot.BodyCmd.OmegaShadow = f ;
        SysState.Mot.BodyCmd.Dirty  |= 2  ;
        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    if ( (SysState.Mot.BodyCmd.Dirty &3) == 3 )
    { // Full complement of commands arrived
        mask = BlockInts() ;
        SysState.Mot.BodyCmd.Omega = SysState.Mot.BodyCmd.OmegaShadow ;
        SysState.Mot.BodyCmd.Speed = SysState.Mot.BodyCmd.SpeedShadow ;
        SysState.Mot.BodyCmd.SpeedShadow = 0 ; // Shadows are used
        SysState.Mot.BodyCmd.OmegaShadow = 0 ;
        SysState.Mot.BodyCmd.Dirty = 0 ; // Delete any previously given manual orders
        SetVelocityMode()  ;
        RestoreInts(mask) ;
    }
    return 0 ;
}


/**
 * \brief Object 0x2206 Set per-axis command
 *
 */
long unsigned  SetAxisCmd(  struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si, axIndex ;
    long l; 
    short unsigned mask;
    short IsShelf ;
    float f ;
    si = pSdo->SubIndex ;
    if ( nData != 4 )
        return length_of_service_parameter_does_not_match;
    l =* ((long *) pSdo->SlaveBuf);
    f =* ((float *) pSdo->SlaveBuf);


/*
    if ( SysState.Mot.mode < E_SysMotionModeMotorOff )
    {
        return GetManufacturerSpecificCode(AXES_ERR_NOT_READY) ;
    }
*/

    mask = BlockInts() ;
    SetMotionMode(E_SysMotionModePerAxis,20) ;
    SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd   ;
    RestoreInts( mask) ;

    if ( si == 0 )
    {
        return 0 ; // Just go to per axis mode without specific command
    }

    // Find axis index
    IsShelf = 0 ;
    if ( si > 0 && si <= N_CAN_SLAVES )
    {
        axIndex =  si-1 ;
    }
    else
    {
        if ( si > 10 && si <= (10+N_CAN_SLAVES ) )
        {
            IsShelf = 1 ;
            axIndex = si-11 ;
        }
        else
        {
            if ( si > 11 && si <= (20+N_CAN_SLAVES ) )
            {
                IsShelf = 0 ;
                axIndex = si-21 ;
            }
            else
            {
                return Sub_index_does_not_exist ;
            }
        }
    }

    if ( SysState.CanAxis[axIndex].Installed == 0)
    {
        return 0 ;
    }


    SysState.Mot.QuickStop = 0 ;

    if ( si <= N_CAN_SLAVES )
    {
        DirectSetCanAxisCommand ( axIndex , l);
    }
    else
    {
        FDirectSetCanAxisCommand ( axIndex , f, IsShelf );
    }

    return 0 ;
}

/*
 * Object 0x2204
 */
long unsigned  SetSensor(  struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  ,us , axis ;
    long unsigned stat1 ;
    float f ;
    us =* ((short unsigned *) pSdo->SlaveBuf);

    si = pSdo->SubIndex ;
    stat1 = 0 ;

    if ( si == 1)
    {
        SysState.CBit.bit.NavInitialized = us ;
        return 0 ;
    }
    if ( nData < 4 )
    {
        return General_parameter_incompatibility_reason ;
    }
    if (  SysState.Mot.mode > E_SysMotionModePerAxis )
    {
        SetMotionMode( E_SysMotionModeStay , 43 ) ;
    }
    f = *((float *) pSdo->SlaveBuf);

    switch ( si)
    {
    case 33:
        axis = LOGICAL_RSTEER ;
        SysState.CanAxis[axis].bPosSim = 1 ;
        SysState.CanAxis[axis].OuterPos = f ;
        break ;
    case 34:
        axis = LOGICAL_LSTEER ;
        SysState.CanAxis[axis].bPosSim = 1 ;
        SysState.CanAxis[axis].OuterPos = f ;
        break ;
    case 35:
        axis = LOGICAL_NECK ;
        SysState.CanAxis[axis].bPosSim = 1 ;
        SysState.CanAxis[axis].OuterPos = f ;
        break ;
    case 36:
        SysState.CanAxis[LOGICAL_RSTEER].bPosSim = us ;
       break ;
    case 37:
        SysState.CanAxis[LOGICAL_LSTEER].bPosSim = us ;
        break ;
    case 38:
        SysState.CanAxis[LOGICAL_NECK].bPosSim = us ;
        break ;
    //case 40:
    //    HomePots() ;
    //    break ;
    default:
        return Sub_index_does_not_exist ;
    }
    return stat1  ;
}


long unsigned  SetSciByte(  struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  ,us ;
    (void) nData ;
    us =* ((short unsigned *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    switch ( si)
    {
    case 1:
        ScibRegs.SCITXBUF.bit.TXDT = us ;
        break ;
    case 2:
        ScicRegs.SCITXBUF.bit.TXDT = us ;
        break ;
    case 3:
        break ;
    case 4:
        break ;
    case 5:
        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}


long unsigned  GetSciByte(  struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  , g1 , g2 , g3 ;
    si = pSdo->SubIndex ;
    *nData = 2 ;
    switch ( si)
    {
    case 1:
        * ((short unsigned *) &pSdo->SlaveBuf[0] ) = ScibRegs.SCIRXBUF.all ;
        break ;
    case 2:
        * ((short unsigned *) &pSdo->SlaveBuf[0] ) = ScicRegs.SCIRXBUF.all ;
        break ;
    case 3:
        g1 = GpioDataRegs.GPCDAT.bit.GPIO78 ;
        g2 = GpioDataRegs.GPCDAT.bit.GPIO66 ;
        g3 = GpioDataRegs.GPCDAT.bit.GPIO69;
        * ((short unsigned *) &pSdo->SlaveBuf[0] ) = (g1? 1 : 0 ) + (g2? 2 : 0) + (g3? 4 : 0);
        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}



void SampQ( float q[] )
{
    short unsigned mask ;
    mask = BlockInts() ;
    q[0] = GyroInt.GyroQuat[0];
    q[1] = GyroInt.GyroQuat[1];
    q[2] = GyroInt.GyroQuat[2];
    q[3] = GyroInt.GyroQuat[3];
    RestoreInts( mask) ;
}

/**
 * \brief Object 0x2203
 */
long unsigned  GetLedTest(   struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si   ;
    struct CPdCmd2 *pPdCmd2 ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;

    si = pSdo->SubIndex ;
    switch ( si)
    {
    case 100:
        *nData = 4 ;
        * ((long *) &pSdo->SlaveBuf[0] ) =  pPdCmd2->ChakalakaOn ? 2 : 0 ;

        if (pPdCmd2->FrontCamLightOn)
        {
            * ((long *) &pSdo->SlaveBuf[0] )  += 4 ;
        }
        if (pPdCmd2->RearCamLightOn)
        {
            * ((long *) &pSdo->SlaveBuf[0] )  += 8 ;
        }

        if ( * ((long *) &pSdo->SlaveBuf[0] ))
        {
            * ((long *) &pSdo->SlaveBuf[0] ) +=  1 ;
        }

        break;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}


/**
 * \brief Object 0x2204
 */

long unsigned  GetSensor(   struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si   ;
    short unsigned mask ;
    //long unsigned ul ;
    float qdif[4] , ang ;
    float q[4]  ;
    float vec[3] , g[3] ;
    float yew ,   pitch,  roll;

    si = pSdo->SubIndex ;
    switch ( si)
    {
    case 1:
        * ((float *) &pSdo->SlaveBuf[0] ) = RNeckOuterPos ;
        *nData = 4 ;
        break ;
    case 2:
        * ((float *) &pSdo->SlaveBuf[0] ) = LNeckOuterPos ;
        *nData = 4 ;
        break ;
    case 3:
        * ((float *) &pSdo->SlaveBuf[0] ) = Analogs.OverLoadkRNk ;
        *nData = 4 ;
        break ;
//    case 4:
//        * ((float *) &pSdo->SlaveBuf[0] ) = Analogs.OverLoadkRSt1 ;
//        *nData = 4 ;
//        break ;
//    case 5:
//        * ((float *) &pSdo->SlaveBuf[0] ) = Analogs.OverLoadkRSt2 ;
//        *nData = 4 ;
//        break ;
    case 6:
        * ((float *) &pSdo->SlaveBuf[0] ) = Analogs.OverLoadkRWh1 ;
        *nData = 4 ;
        break ;
    case 7:
        * ((float *) &pSdo->SlaveBuf[0] ) = Analogs.OverLoadkRWh2 ;
        *nData = 4 ;
        break ;
    case 8:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_RSTEER].BH.PotMean ;
        *nData = 4 ;
        break ;
    case 9:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_LSTEER].BH.PotMean ;
        *nData = 4 ;
        break ;
    case 10:
        * ((float *) &pSdo->SlaveBuf[0] ) = Analogs.UsSamp1 ;
        *nData = 4 ;
        break ;
    case 11:
        * ((float *) &pSdo->SlaveBuf[0] ) = 0 ;// Analogs.UsSamp2 ;
        *nData = 4 ;
        break ;

    case 14:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.Filt.V12Out ;
        break ;

    case 15:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.Filt.V5Samp ;
        break ;

    case 16:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.TrackWidthCtl.RodAngle[LOGICAL_RW] ;
        break ;

    case 17:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.TrackWidthCtl.RodAngle[LOGICAL_LW] ;
        break ;

    case 18:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.WheelArmRatio[0] ;
        break ;

    case 19:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.WheelArmRatio[1] ;
        break ;

    case 20:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float) WheelEncR.Position ;
        *nData = 4 ;
        break ;
    case 21:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float) WheelEncL.Position ;
        *nData = 4 ;
        break ;

    case 22:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float) ClaState.Filt.LaserSamp1 ;
        *nData = 4 ;
        break ;


    case 24:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.Imu.HeadRollFilt ; // WTF
        *nData = 4 ;
        break ;

    case 25:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.Filt.OLoadNK ; // WTF
        *nData = 4 ;
        break ;


    case 28:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.Filt.OLoadSt1;
        *nData = 4 ;
        break ;
    case 29:
        * ((float *) &pSdo->SlaveBuf[0] ) = ClaState.Filt.OLoadSt2;
        *nData = 4 ;
        break ;

    case 30:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_RSTEER].OuterPos ;
        break ;
    case 31:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_LSTEER].OuterPos ;
        break ;
    case 32:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_NECK].OuterPos ;
        break ;
    case 33:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.WheelRawTorqueDiff ;
        break ;
    //11-07-2021
    case 34:
        * ((long *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_RW].BH.UserSpeedCmd ;
        break;
    case 35:
        * ((long *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_LW].BH.UserSpeedCmd ;
        break;
    // end 11-07-2021

    case 40:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float) SysState.CanAxis[LOGICAL_RSTEER].BH.UserPos ;
        break ;
    case 41:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float) SysState.CanAxis[LOGICAL_LSTEER].BH.UserPos ;
        break ;
    case 42:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float) SysState.CanAxis[LOGICAL_NECK].BH.UserPos ;
        break ;

    case 43:
        * ((float *) &pSdo->SlaveBuf[0] ) = RNeckOuterPos ;
        break ;

    case 44:
        * ((float *) &pSdo->SlaveBuf[0] ) = LNeckOuterPos ;
        break ;


    case 50:
        * ((float *) &pSdo->SlaveBuf[0] ) = 0;//SysState.Nav.Imu.LinAccRaw[0] ;
        break ;
    case 51:
        * ((float *) &pSdo->SlaveBuf[0] ) = 0;//SysState.Nav.Imu.LinAccRaw[1] ;
        break ;
    case 52:
        * ((float *) &pSdo->SlaveBuf[0] ) = 0;//SysState.Nav.Imu.LinAccRaw[2] ;
        break ;


    case 53:
        // Deviation from vertical
        SampQ (q)  ;
        RotateZByQuat ( q , vec);
        g[0] = 0 ; g[1] = 0 ; g[2] = 1 ;
        * ((float *) &pSdo->SlaveBuf[0] ) =  ScalarAngle(vec , g );
        break ;

    case 54: // Roll
        SampQ (q)  ;
        QuattoEuler( q,  &yew , & pitch, &roll);
        * ((float *) &pSdo->SlaveBuf[0] ) =  roll ;
        break ;

    case 55: // Pitch
        SampQ (q)  ;
        QuattoEuler( q,  &yew , & pitch, &roll);
        * ((float *) &pSdo->SlaveBuf[0] ) =  pitch ;
        break ;


    case 56: // Filtered roll
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Nav.roll ;
        break ;

    case 57: // Filtered pitch
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Nav.pitch ;
        break ;

    case 69: //12V
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Status.V18 ;// BIT
        break ;

    case 70: //12V
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Status.V12 ;// BIT
        break ;

    case 71: //24V
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Status.V24 ;// BIT
        break ;

    case 72: //36V
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Status.V36 ; // BIT
        break ;

    case 73: //54V
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Status.V54 ; // BIT
        break ;

    case 80:
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Package.XPosition ;
        break ;

    case 81:
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Package.YPosition ;
        break ;

    case 82:
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Package.ThtPosition ;
        break ;

    case 83:
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Package.LeftStopPosition ;
        break ;

    case 84:
        * ((float *) &pSdo->SlaveBuf[0] ) =  SysState.Package.RightStopPosition ;
        break ;

    case 100:
        * ((long *) &pSdo->SlaveBuf[0] ) =  SysState.Mot.Deviation.MsgCntr.ul ;
        break ;

    case 101:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Mot.Deviation.Age * 1e-6f ;
        break ;
    case 102:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Mot.Deviation.AzimuthDev * 0.005493164062500f ;
        break ;

    case 103:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Mot.Deviation.Offset * 1e-3f  ;
        break ;

    case 104:
        * ((long *) &pSdo->SlaveBuf[0] ) =  SysState.Mot.TotalMsgCounter   ;
        break ;

    case 105:
        * ((float *) &pSdo->SlaveBuf[0] ) = (float)SysState.Mot.BgPosReport.Azimuth * 0.005493164062500f ;
        break ;

    case 106:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Mot.PosReport.X[0] * 1e-4f ;
        break ;

    case 107:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Mot.PosReport.X[1] * 1e-4f ;
        break ;

    case 108:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.iPos[0] * 1e-4f ;
        break ;

    case 109:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.iPos[1] * 1e-4f ;
        break ;

    case 110:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.iPos[2] * 1e-4f ;
        break ;

    case 111:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.yaw ;
        break ;

    case 112:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawQuat[0]  ;
        break ;
    case 113:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawQuat[1]   ;
        break ;
    case 114:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawQuat[2]   ;
        break ;
    case 115:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawQuat[3]   ;
        break ;
    case 116:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawW[0]  ;
        break ;
    case 117:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawW[1]  ;
        break ;
    case 118:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.Nav.RawW[2]  ;
        break ;

    case 119:
        mask = BlockInts() ;
            CopyQuat(GyroInt.GyroQuat , q ) ;
        RestoreInts(mask) ;
        InvQuatOnQuat(  ManRouteCmd.RefQuat , q ,qdif  );

        // Quaternion angle is more or less about the local z. We assume that Z is located down, so that
        // angle direction is by the Z component of the rotation vector
        ang = 2 * aYcos( qdif[0]  ) * (qdif[3] >= 0 ? 1 : -1  ) ;
        * ((float *) &pSdo->SlaveBuf[0] ) = ang  ;

        break ;

    case 121:
        * ((long *) &pSdo->SlaveBuf[0] ) = SysState.Debug.MoreInfo ;
        break ;
    case 122:
#ifdef DFT_AXES
        ul = (SysState.CanAxis[LOGICAL_RW].DFT.bHomeVerify & 1) | ((SysState.CanAxis[LOGICAL_LW].DFT.bHomeVerify & 1) << 1) | ((SysState.CanAxis[LOGICAL_NECK].DFT.bHomeVerify & 1) << 2) ;
        * ((long *) &pSdo->SlaveBuf[0] ) = ul  ;
        break ;
    case 123:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_RW].DFT.PosOnHome;
        break ;
    case 124:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_LW].DFT.PosOnHome;
        break ;
    case 125:
        * ((float *) &pSdo->SlaveBuf[0] ) = SysState.CanAxis[LOGICAL_NECK].DFT.PosOnHome;
        break ;
#endif

    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}




/*
 * \brief Object 2203
 * Sub-indices 1...9: Light individual LEDs (any data length, effective 1 byte)
 *  1,2,3: B,G,R for LED 1
 *  4,5,6: B,G,R for LED 2
 *  7,8,9: B,G,R for LED 3
 *
 *  Sub-indices 20..22: RGB value for a LED (long numbers)
 *  20: RGB value for LED #1 (POW ok: ok = 0xff00 , Readying: 0xff , error 0xff0000 )
 *  21: RGB value for LED #2  (WIFI ok: ok = 0xff00 , Readying: 0xff , error 0xff0000 )
 *  22: RGB value for LED #3  (CAN ok: ok = 0xff00 , Readying: 0xff , error 0xff0000 )
 *
 *  100: Set Chakalaka On/Off
 *
 *  In the above note that 0xff asserts full intensity of one color. E.g, 0xff0000 is bright red; 0x7f0000 has about half the intensity)
 *  */
long unsigned  LedTest( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  ,us , base ;
    long unsigned ul ;
    struct CPdCmd2 *pPdCmd2 ;
    (void) nData ;
    us  =* ((short unsigned *) pSdo->SlaveBuf);
    ul =* ((long unsigned *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    pPdCmd2 = (struct CPdCmd2 *) & SysState.PdCmd2 ;

    if ( si == 100 )
    {
        pPdCmd2->ChakalakaOn = (us & 3 ) ? 1 : 0  ;
        pPdCmd2->FrontCamLightOn = (us & 5 ) ? 1 : 0  ;
        pPdCmd2->RearCamLightOn = (us & 9 ) ? 1 : 0  ;
        return 0 ;
    }
    if ( si == 101 )
    {
        if ( us & 0x1 )
            pPdCmd2->FanOn = 1 ;
        else
            pPdCmd2->FanOn = 0 ;
        return 0 ;
    }

    if ( si == 15 )
    {
        InhibitAutoTlc = us ;
        return 0 ;
    }


    if ( si >= 1 && si <= 12)
    {
        SetLedPwm( si-1 , us   ) ;
        return 0 ;
    }

    if ( nData != 4 )
    {
        return length_of_service_parameter_does_not_match ;
    }


    switch ( si )
    {
    case 20: // LED 1: Power ok
        break ;
    case 21: // LED 2: WIFI ok
        break ;
    case 22: // LED 3: CAN bus ok
        break ;
    case 23:
        if ( us > 255 )
            return General_parameter_incompatibility_reason ;
        LedBrightness = us  ;
        break ;
    default:
        return Sub_index_does_not_exist ;
    }

    base = (si-20) * 3 ;
    us =  ul  & 0xff ;
    SetLedPwm( base , us   ) ;
    us = (ul >> 8 ) & 0xff ;
    SetLedPwm( base+1 , us   ) ;
    us = (ul >> 16 ) & 0xff ;
    SetLedPwm( base+2 , us   ) ;

    return 0 ;
}


struct CSplineTest
{
   float StartAz ;
   float TargetAz ;
   float TargetLoc[2] ;
   float MaxLineSpeed ;
   float MaxLineAcc ;
   float MaxSteerSpeed ;
   float ProfileTravel ;
   short Fail ;
   short Valid ;
};
struct CSplineTest SplineTest ;


void SetControlOper( short unsigned * cw , short unsigned on)
{
    short unsigned mask ;
    mask = BlockInts();

    if ( on)
        *cw |= 15 ;
    else
        *cw &= 0xfff0 ;

    RestoreInts(mask);
}


void SetMotRestart( short unsigned us)
{
    short unsigned mask ;
    mask = BlockInts() ;

    // Order quick motor stop with servo
    if ( us & 0x8000 )
    {
        SysState.Mot.QuickStop = ( ( us & 0x4000 ) ? 1 : 0 ) ;
    }

    if ( us & 0x2000 )
    {
        if ( us & 0x1000 )
        {
            ResetAxisFaults(&SysState.CanAxis[LOGICAL_RW]);
            ResetAxisFaults(&SysState.CanAxis[LOGICAL_LW]);
            ResetAxisFaults(&SysState.CanAxis[LOGICAL_RSTEER]);
            ResetAxisFaults(&SysState.CanAxis[LOGICAL_LSTEER]);
            ResetAxisFaults(&SysState.CanAxis[LOGICAL_NECK]);
            if ( SysState.Mot.mode <= E_SysMotionModeFault )
            {
                SetMotionMode(E_SysMotionModeMotorOff,21) ;
            }
        }
    }

    // Manual brake engage/release
    if ( us & 0x800)
    {
        SysState.Status.OverRideBrakeRelease = 1 ;
        SysState.Mot.bBrakeWheel[LOGICAL_RW] = ( us & 0x400 ) >> 10   ;
        SysState.Mot.bBrakeWheel[LOGICAL_LW] = ( us & 0x200 ) >> 10   ;
    }

    // Manipulate motor on and reset
    if ( us & 0x20)
    {
        KillMotor(&SysState.CanAxis[LOGICAL_RW]) ;
        KillMotor(&SysState.CanAxis[LOGICAL_LW]) ;
        KillMotor(&SysState.CanAxis[LOGICAL_RSTEER]) ;
        KillMotor(&SysState.CanAxis[LOGICAL_LSTEER]) ;
        KillMotor(&SysState.CanAxis[LOGICAL_NECK]) ;

        SysState.Mot.NeckControl.NeckMode = E_NeckModeEncCmd ;

        if ( us & 0x1f  )
        { // Any axis requested a start
            SetMotionMode(E_SysMotionModeStay,22) ;
        }

        ManRouteCmd.LineSpeedCmd = 0 ;
        ManRouteCmd.CurvatureCmd = 0 ;
        ManRouteCmd.dCurvatureCmd = 0;

        if ( us &  1)
        {
            EnableMotor ( &SysState.CanAxis[LOGICAL_RW])  ;
        }
        else
        {
            KillMotor(& SysState.CanAxis[LOGICAL_RW]) ;
        }

        if ( us &  2)
        {
            EnableMotor ( &SysState.CanAxis[LOGICAL_LW])  ;
        }
        else
        {
            KillMotor(& SysState.CanAxis[LOGICAL_LW]) ;
        }

        if ( us &  4)
        {
            EnableMotor ( &SysState.CanAxis[LOGICAL_RSTEER])  ;
        }
        else
        {
            KillMotor(& SysState.CanAxis[LOGICAL_RSTEER]) ;
        }

        if ( us &  8)
        {
            EnableMotor ( &SysState.CanAxis[LOGICAL_LSTEER]) ;
        }
        else
        {
            KillMotor(& SysState.CanAxis[LOGICAL_LSTEER]) ;
        }

        if ( us &  0x10)
        {
            EnableMotor ( &SysState.CanAxis[LOGICAL_NECK])  ;
        }
        else
        {
            KillMotor(& SysState.CanAxis[LOGICAL_NECK]) ;
        }
    }
    RestoreInts( mask) ;
}


/**
 * \brief object 0x2220: Miscellaneous services
 *
 */
long unsigned  SetMiscTest( struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si  ,us  ;
    long val  ;
    long unsigned err , ul ;
    short unsigned mask; 
    float f ;
    float accsamp , speedsamp , maxsteerspeed , calcsteerspeed , speedfac , curv;
    (void) nData ;
    us =* ((short unsigned *) pSdo->SlaveBuf);
    ul =* ((long unsigned *) pSdo->SlaveBuf);
    f =* ((float *) pSdo->SlaveBuf);

    si = pSdo->SubIndex ;
    switch ( si )
    {
    case 1: // Do NOT change this, it is used in the boot process
        SysState.Status.PdInTest = us ;
        break ;
    case 3:
        if ( us == 0x1234)
        {
            M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan = 1 ;
        }
        if ( us == 0x5678)
        {
            M2S.Items.ActCmd.cmd.ModeWord.bit.StopCan = 0 ;
        }
        break ;

    case 4:
        SimLaser = (float) us * 0.1f  ; // Laser simulation: Value in 0.1 mm units
        break ;

    case 5:
        if ( us == 0x1234)
        {
            SysState.Status.MasterBlaster = 1 ;
        }
        break ;

    case 6:
        // Master blaster object that can control the states of the motors and reset failures
        //if (SysState.Status.MasterBlaster )
        {
            SetMotRestart(us) ;
        }
        break ;

    case 7:
        if (SysState.Status.MasterBlaster )
        {// Set mask for forced contents for manipulator control word
            //SysState.Status.PdControlWordMask = us ;
        }
        break ;

    case 8:
        if (SysState.Status.MasterBlaster )
        { // Set forced contents for manipulator control word
            //SysState.Status.PdControlWordSubs = us ;
        }
        break ;

    case 9:
        if (SysState.Status.MasterBlaster )
        {
            // Turn on / off 12V
            val = ( us ) ? 1 : 0 ;
#ifdef CORE2_OWNS_CAN
            return SendLong2Manip(0x2220 , 9 , val ) ;
#else
            return SendSdo2PD ( 0x2004 , 1 , &val , 2 ) ; // Ask power on of 12V
#endif
        }
        break ;

    case 10:
        if (SysState.Status.MasterBlaster )
        {
            val = ( us ) ? 1 : 0 ;
#ifdef CORE2_OWNS_CAN
            return SendLong2Manip(0x2220 , 10 , val ) ;
#else
            // Turn on / off 24V
            return SendSdo2PD ( 0x2004 , 2 , &val , 2 ) ; // Ask power on of 24V
#endif
        }
        break ;

    case 11:
        if (SysState.Status.MasterBlaster )
        {
            val = ( us ) ? 1 : 0 ;
#ifdef CORE2_OWNS_CAN
            return SendLong2Manip(0x2220 , 11 , val ) ;
#else
            // Turn on / off 54V
            return SendSdo2PD ( 0x2004 , 3 , &val , 2 ) ; // Ask power on of 54V
#endif
        }
        break ;
    case 12:
        if (SysState.Status.MasterBlaster )
        {
            SysState.Status.PdInDload = us ;
        }
        break ;
    case 13:
        if (SysState.Status.MasterBlaster )
        {
            SysState.BlockServoComm = us ;
        }
        break ;

//    case 14:
//        HeartBeat.HeartBeatInhibit = us ;
//        break ;

    case 15:

        if ( us )
        {
            SysState.Package.ManipControlWord.ForceLaser = 1 ;
        }
        else
        {
            SysState.Package.ManipControlWord.ForceLaser = 0 ;
        }
        break ;

    case 16:
        SysState.Package.OverRidePumpsOn = us ;
        break ;
        //return SendSdo2PD ( 0x2209 , 5 , (long *) &val , 4 ) ; // Operate pump

    case 17: // ShutUpOlivier
        if (us == 1234)
        {
            HostHandleStr.KillHostSpi = 1; // Don't accept host at all
            HostMessageStr.RcProtocolVersion = RC_VERSION_NO_Z_CORRECTION ;
        }
        if (us == 5678)
        {
            HostHandleStr.KillHostSpi = 0; // Accept all
            HostMessageStr.RcProtocolVersion = RC_VERSION_FOR_Z_CORRECTION ;
        }
        if (us == 6790)
        {
            HostHandleStr.KillHostSpi = 2; // Accept only navigation commands
            HostMessageStr.RcProtocolVersion = RC_VERSION_FOR_Z_CORRECTION ;
            //HostMessageStr.RcProtocolVersion >= RC_VERSION_NO_Z_CORRECTION ;
        }
        break ;

    case 18:
        // Shut off all power supplies - equivalent to mushroom press
        val = 0 ;
#ifdef CORE2_OWNS_CAN
        err = SendLong2Manip( 0x2220 , 18 , val );
#else
        err = SendSdo2PD ( 0x2004 , 3 , &val , 2 ) ; // Ask power off of 54V
        if (err == 0)
        {
            SendSdo2PD ( 0x2004 , 2 , &val , 2 ) ; // Ask power off of 24V
			// We dont ask for error because if we later kill the 12V the 24V will automatically 
			// go down with it 
	        err = SendSdo2PD ( 0x2004 , 1 , &val , 2 ) ; // Ask power off of 12V
        }
#endif
        return err;

    case 19:
        SysState.Debug.PermissionForce = us ;
        break ;

    case 20:
        SplineTest.StartAz = f ;
        break ;
    case 21:
        SplineTest.TargetAz = f ;
        break ;
    case 22:
        SplineTest.TargetLoc[0] = f ;
        break ;
    case 23:
        SplineTest.TargetLoc[1] = f ;
        break ;
    case 24:
        SplineTest.MaxLineSpeed = f;
        break ;
    case 25:
        SplineTest.MaxLineAcc = f;
        break ;
    case 26:
        SplineTest.MaxSteerSpeed = f;
        break ;

    case 27:
        SysState.Debug.StoTestOverride = us ;
        break;

    case 28:
        SpiErrorLog.nExtract = us & 0xf ;
        break ;

    case 30:
        if ( fabsf( f - 1.0f) > 0.001f )
        {
            return General_parameter_incompatibility_reason ;
        }
        if ( ( fabsf(SplineTest.TargetLoc[1]) < 0.1f ) || ( fabsf(SplineTest.StartAz) > 1.0f ) || (fabsf(SplineTest.TargetAz) > 1.0f )
            || SplineTest.MaxLineSpeed < 1e-3f || SplineTest.MaxLineAcc < 1e-3f || SplineTest.MaxSteerSpeed < 1e-3f )
        {
            return General_parameter_incompatibility_reason ;
        }

        SetMotionMode(E_SysMotionModeManualTravel,23) ;

        // Enter spline parameter: Start angle w.r.t advance line
        curv = FindSplineRoute(0  , 0  ,
                                SplineTest.StartAz + (float)ManRouteCmd.CrabCrawl * PiHalf ,
                                SplineTest.TargetLoc[0] , SplineTest.TargetLoc[1] ,
                                SplineTest.TargetAz + (float)ManRouteCmd.CrabCrawl * PiHalf ,
                                &SplineTest.ProfileTravel, &SysState.Spline , &SplineTest.Fail);
        if ( SplineTest.Fail )
        {
            return Manufacturer_error_detail ;
        }

        mask = BlockInts() ;
        SysState.Spline.ManualCurvature = 1 ;
        ManRouteCmd.CurvatureCmd = curv ;
        ManRouteCmd.dCurvatureCmd = 0 ;
        ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
        SysState.ManRouteState.DifferenceDrive = 4;
        RestoreInts( mask ) ;
        SplineTest.Valid = 1 ;
        break ;

    case 31:
        if ( (float )fabsf( f - 1.0f) > 0.001f )
        {
            return General_parameter_incompatibility_reason ;
        }
        if ( SplineTest.Fail || (SplineTest.Valid==0) )
        {
            return Manufacturer_error_detail ;
        }

        accsamp   = SplineTest.MaxLineAcc ;
        speedsamp = SplineTest.MaxLineSpeed ;
        maxsteerspeed = SplineTest.MaxSteerSpeed  ;
        calcsteerspeed  = TestSpline( &SysState.Spline , SplineTest.ProfileTravel , accsamp , speedsamp , ManRouteCmd.CrabCrawl  );
        if ( calcsteerspeed < maxsteerspeed)
        {
            speedfac = 1 ;
        }
        else
        {
            speedfac = maxsteerspeed / calcsteerspeed ;
        }
        ProgramProfiler(&CrabProfiler, speedsamp *  speedfac ,
                        accsamp * speedfac ,accsamp * speedfac ,0.01f, EProfile_PerAxis);
//        CrabProfiler.PosMin = 0 ;
//        CrabProfiler.PosMax = SplineTest.ProfileTravel ;

        ResetProfiler ( &CrabProfiler , 0 , 0 , 1 );
        mask = BlockInts();
        {
            CrabProfiler.Done = 0;
            CrabProfiler.PosTarget = SplineTest.ProfileTravel ;
            SysState.ManRouteState.DifferenceDrive = 4;
            SysState.Spline.ManualCurvature = 0 ;
        }
        RestoreInts(mask);

        break;

    case 32 :
        if ( (float )fabsf( f - 1.0f) > 0.001 )
        {
            return General_parameter_incompatibility_reason ;
        }
       KillDifferenceDrive() ;
       break ;


    case 33:
        SysState.Mot.QuickStop = 0 ;
        SetMotionMode(E_SysMotionModeManualTravel,24) ;

        mask = BlockInts();
        CopyQuat( GyroInt.GyroQuat , ManRouteCmd.RefQuat) ;
        RestoreInts(mask) ;

        // Program profiler speed, acceleration , deceleration , delay and mode
        ProgramProfiler(&CrabProfiler, AutomaticRunPars.DiffModeSpeed,
                        AutomaticRunPars.DiffModeAcc, AutomaticRunPars.DiffModeAcc,
        0.01f, EProfile_PerAxis);
        // Reset profile to zero position and speed
        ResetProfiler(&CrabProfiler, 0 , 0, 1);

        // Turn angle
        CrabProfiler.PosTarget = f ;


        CrabProfiler.Done = 0;
        SysState.ManRouteState.DifferenceDrive = 1; // Make difference drive from the next step on.
        break ;


    case 34:
        SysState.Nav.RawYaw = f ;
        break ;

    case 35:
        if ( us)
        {
            SysState.Nav.bGyroDriftDisable |= 2 ;
        }
        else
        {
            SysState.Nav.bGyroDriftDisable &= 0xfffd ;
        }
        break ;

    case 40:
        if (SysState.Status.MasterBlaster )
        {
            // Restart 24V network
            val =  us & 3 ;
#ifdef CORE2_OWNS_CAN
            SendLong2Manip(0x2220 ,40  , val ) ;
#else
            return SendSdo2PD ( 0x2004 , 110 , &val , 2 ) ; // Reset manipulator voltages
#endif
        }
       break;

    case 41:
        SysState.Status.OverRideNeckBrakeRelease = us ;
        if ( us )
        {
            ForceMotorOffAndBrakeRelease(&SysState.CanAxis[LOGICAL_NECK],1);
        }
        else
        {
            SetBrakeActionAutomatic(&SysState.CanAxis[LOGICAL_NECK]) ;
        }
    case 42:
        ArmLimitSw(&SysState.CanAxis[LOGICAL_RW] ,us) ;
        break ;
    case 43:
        ArmLimitSw(&SysState.CanAxis[LOGICAL_LW],us ) ;
        break ;

    case 45:
        if (SysState.Status.MasterBlaster )
        {
            // Reboot manipulator
            M2S.Items.ActCmd.cmd.PsCmd.items.ManipulatorAxesReboot = 3;
            SysState.Package.State = EPackState_Init ;
        }
        break;

    case 46:
        if ( us == 4321 )
        {
            SysState.Debug.ForceNeckControlByCore2 = 1 ;
        }
        else
        {
            SysState.Debug.ForceNeckControlByCore2 = 0 ;
        }
        break;

    case 50:
        MotionBreak.BreakCrab = us ;
        break ;
    case 51:
        MotionBreak.BreakNow = us;
        break ;


    case 56:
        qImu2BodyBuf[0] = f ;
        break ;
    case 57:
        qImu2BodyBuf[1] = f ;
        break ;
    case 58:
        qImu2BodyBuf[2] = f ;
        break ;
    case 59:
        qImu2BodyBuf[3] = f ;
        mask = BlockInts() ;
        Calib.qImu2ZeroENUPos[0] = qImu2BodyBuf[0] ;
        Calib.qImu2ZeroENUPos[1] = qImu2BodyBuf[1] ;
        Calib.qImu2ZeroENUPos[2] = qImu2BodyBuf[2] ;
        Calib.qImu2ZeroENUPos[3] = qImu2BodyBuf[3] ;
        ProcessIMUTransformation() ;
        RestoreInts(mask) ;
        break ;
    case 60:
        IsInRange( &f , 30.0f , 0.01f );
        SysState.Debug.PTTest.F  = f   ;
        break ;
    case 61:
        IsInRange( &f , 1.0f , 0.01f );
        SysState.Debug.PTTest.A  = f   ;
        break ;
    case 62:
        if ( us )
        {
            SysState.Debug.PTTest.Init = us ;
            SysState.Mot.NeckControl.NeckMode = E_TestPT ;
        }
        break ;
    case 63:
        SysState.Mot.NeckControl.NeckMode = E_NeckModeStabilize ;
        break ;
    case 64:
        mask = BlockInts() ;
        Calib.qImu2ZeroENUPos[0] = qImu2BodyBuf[0] ;
        Calib.qImu2ZeroENUPos[1] = qImu2BodyBuf[1] ;
        Calib.qImu2ZeroENUPos[2] = qImu2BodyBuf[2] ;
        Calib.qImu2ZeroENUPos[3] = qImu2BodyBuf[3] ;
        ProcessIMUTransformation() ;
        RestoreInts(mask) ;
        break ;
    case 65:
        GyroInt.YawComp = f ;
        break ;
    case 69:
        SysState.Nav.IgnoreWhereAmI = us ;
        break ;
    case 70:
        SysState.Nav.IgnoreQrCodes = us ;
        break ;
    case 71:
        SysState.Nav.IgnoreLineDev = us ;
        break ;
    case 72:
        if ( us == 1234 )
        {
            if ( SysState.WakeupState != E_CAN_WAKEUP_SLEEP)
            {// Do nothing - an empty wake request
                break ;
            }
            if ( IsSysTimerElapse(TIMER_I_SLEEP_LET_ME_SNORE, &SysTimerStr)  )
            {
                SysState.WakeupState = E_CAN_WAKEUP_INIT;
                SysState.Status.WakeUp  = 0 ; // SYSSTAT_WAKE_INIT   ;
#if CORE2_OWNS_CAN
                return SendLong2Manip(0x2220 , 72 , 1234L  );
#endif
            }
            else
            {
                return GetManufacturerSpecificCode(ERR_NOT_ENOUGH_NIGHT_SLEEP) ;
            }
        }
        break ;
    case 73:
        if ( us == 1234 )
        {
            SysState.SleepRequest  = 1; // Request sleep
            SetSysTimerTargetSec ( TIMER_PRESLEEP , 1 , &SysTimerStr)    ;
        }
        break ;
    case 74:
        break ;
    case 75:
        // Set sporadic gyro buffer
        break ;
    case 76:
        // Set sporadic gyro buffer
        break ;
    case 77:
        // Set sporadic gyro buffer
        break ;
    case 78:
        // Set sporadic gyro buffer
        break ;
    case 79:
        break ;
    case 80:
         break ;
    case 81:    // Fault simulaton
        LogException( OWN_EXP_ID , EXP_FATAL , exp_intetional_fault_sim);
        break ;
    case 82:
        SysState.Mot.QuickStop = (short unsigned) us ;
        break ;
    case 90:
        // Reset the IMU
        GpioDataRegs.GPECLEAR.bit.GPIO132 = 1;
        WaitStam(12, &SysTimerStr);
        GpioDataRegs.GPESET.bit.GPIO132 = 1; // Clear reset

        break ;
    case 91:
        break ;
    case 92:
        LogException( OWN_EXP_ID , EXP_SAFE_FATAL , ul);
        break ;

    case 93:
        LogException( OWN_EXP_ID , EXP_FATAL , ul);
        break ;
    case 94:
        LogException( OWN_EXP_ID , EXP_ABORT , ul);
        break ;
    case 95:
        LogException( OWN_EXP_ID , EXP_WARN , ul);
        break ;
    case 96:
        LogException(  OWN_EXP_ID , EXP_RESET , 0);
        break ;

    case 97:
        ManRouteCmd.ShelfMode = E_Shelf_Nothing;
        ManRouteCmd.ShelfSubMode = 0;
        SysState.ShelfRun.ShelfSubMode = 0;
        break;

    case 98:
        ManRouteCmd.ShelfMode = us;
        ManRouteCmd.ShelfSubMode = 0;
        SysState.ShelfRun.ShelfSubMode = 0;
        break;
    ///case 98:
    //    TrackWidthAdjustDir = ( ul > 0 ) ? 1: -1 ; // TRACK_WIDTH_ADJUST_DIR;
    //    break ;

    case 99:
        // Set protocol subversion
        ProtocolRev = ((long unsigned)PROTOCOL_VER << 24 ) + (ul<<16) + ((long unsigned)PROTOCOL_PATCH <<8) + (long unsigned) PROTOCOL_XX ;
        break ;

    case 108:
        goodcnt = 0 ;
        badcnt  = 0 ;
        break ;

    case 110:
        switch (ul)
        {
        case 0x1234:
            M2S.Items.ActCmd.cmd.ModeWord.bit.testRs485 = 1;
            GyroInt.bHardwareTestMode = 1;
            break ;
        case 0x5678:
            M2S.Items.ActCmd.cmd.ModeWord.bit.testRs485 = 3;
            GyroInt.bHardwareTestMode = 1;
            break ;
        default:
            M2S.Items.ActCmd.cmd.ModeWord.bit.testRs485 = 0;
            GyroInt.bHardwareTestMode = 0 ;
        }
        break ;
    case 111:
        if ( ul & 1 )
        {
            GpioDataRegs.GPCSET.bit.GPIO81 = 1 ;
        }
        else
        {
            GpioDataRegs.GPCCLEAR.bit.GPIO81 = 1 ;
        }
        if ( ul & 2 )
        {
            GpioDataRegs.GPCSET.bit.GPIO82 = 1 ;
        }
        else
        {
            GpioDataRegs.GPCCLEAR.bit.GPIO82 = 1 ;
        }
        if ( ul & 4 )
        {
            GpioDataRegs.GPDSET.bit.GPIO125 = 1 ;
        }
        else
        {
            GpioDataRegs.GPDCLEAR.bit.GPIO125 = 1 ;
        }
        //if ( ul & 8 )
        //{
        //    EnableSTO() ;
        //}
        //else
        //{
        //    DisableSTO();
        //}
        if ( SysState.Debug.StoTestOverride)
        {
            if ( ul & 8 )
            {
                EnableSTO() ;
            }
            else
            {
                DisableSTO();
            }
         }

        if ( ul & 0x10 )
        {
            GpioDataRegs.GPESET.bit.GPIO138 = 1 ;
        }
        else
        {
            GpioDataRegs.GPECLEAR.bit.GPIO138 = 1 ;
        }

        break ;
    case 112:
        SysState.Debug.bBypassSetDiscretes  = (ul ? 1 : 0 ) ;
        break ;
    case 114:
        if ( ul == 1234)
        {
            SysState.Debug.TestHostCom = 1 ;
        }
        else
        {
            SysState.Debug.TestHostCom = 0 ;
        }
        break ;
    case 115:
         return SciSetEmergencyStop(&us , 0 , 0 , 0 );
    case 116:
#ifdef DFT_AXES
        for ( cnt = 0 ; cnt < N_CAN_SLAVES; cnt++ )
        {
            if ( ul& (1<<cnt) )
            {
                SysState.CanAxis[cnt].DFT.bHomeVerify = 1 ;
            }
        }
#endif
        break ;
    case 117:
        SysState.Mot.bBrakeWheel[0] = (ul) ? 1 : 0 ;
        break ;
    case 118:
        SysState.Mot.bBrakeWheel[1] = (ul) ? 1 : 0 ;
        break ;
    case 119:
        InvertSpeed4Shelf(ul);
        break ;
    case 120:
        SysState.Debug.bDisableOverloadDetection = (ul) ? 1 : 0 ;
        break;
    case 121:
        if ( ul == 1234)
        {
            SysState.Debug.bManualBrakeControl |= 1 ;
            SetMotionMode(E_SysMotionModeMotorOff,53);
            M2S.Items.ActCmd.cmd.ForceManualBrakeMode = 1 ;
        }
        else
        {
            SysState.Debug.bManualBrakeControl = 0 ;
            SysState.Debug.bManualBrakeControlReleaseRW = 0 ;
            SysState.Debug.bManualBrakeControlReleaseLW = 0 ;
            SysState.Debug.bManualBrakeControlReleaseNK = 0 ;
            SysState.Debug.bManualBrakeControlReleaseROT = 0 ;
            SysState.Debug.bManualBrakeControlReleaseTARM = 0 ;
            M2S.Items.ActCmd.cmd.ForceManualBrakeMode = 0 ;
        }
        break;
    case 122:
        us = (us?1:0) ;
        if ( SysState.Debug.bManualBrakeControl  == 0 )
        {
            return General_parameter_incompatibility_reason;
        }
        SysState.Debug.bManualBrakeControl = (SysState.Debug.bManualBrakeControl & (~2)) | (us<<1) ;
        SysState.Debug.bManualBrakeControlReleaseRW = us ;
        ForceMotorOffAndBrakeRelease(&SysState.CanAxis[LOGICAL_RW] ,us) ;
        break ;

    case 123:
        us = (us?1:0) ;
        if ( SysState.Debug.bManualBrakeControl  == 0 )
        {
            return General_parameter_incompatibility_reason;
        }
        SysState.Debug.bManualBrakeControl = ( SysState.Debug.bManualBrakeControl & (~4) ) | (us<<2) ;
        SysState.Debug.bManualBrakeControlReleaseLW = us ;
        ForceMotorOffAndBrakeRelease(&SysState.CanAxis[LOGICAL_LW] ,us) ;
        break ;
    case 124:
        us = (us?1:0) ;
        if ( SysState.Debug.bManualBrakeControl  == 0 )
        {
            return General_parameter_incompatibility_reason;
        }
        SysState.Debug.bManualBrakeControl = (SysState.Debug.bManualBrakeControl & (~8) ) | (us<<3) ;
        SysState.Debug.bManualBrakeControlReleaseNK = us ;
        ForceMotorOffAndBrakeRelease(&SysState.CanAxis[LOGICAL_NECK] ,us) ;
        break ;
    case 125:
        us = (us?1:0) ;
        if ( SysState.Debug.bManualBrakeControl  == 0 )
        {
            return General_parameter_incompatibility_reason;
        }
        SysState.Debug.bManualBrakeControl = ( SysState.Debug.bManualBrakeControl & (~0x10) ) |  (us<<4) ;
        SysState.Debug.bManualBrakeControlReleaseROT = us ;
        M2S.Items.ActCmd.cmd.ManualBrakeReleaseCmd = (M2S.Items.ActCmd.cmd.ManualBrakeReleaseCmd & 0xfffe) | (us&1);
        break ;
    case 126:
        us = (us?1:0) ;
        if ( SysState.Debug.bManualBrakeControl  == 0 )
        {
            return General_parameter_incompatibility_reason;
        }
        SysState.Debug.bManualBrakeControl = (SysState.Debug.bManualBrakeControl & (~0x20) ) |  (us<<5) ;
        SysState.Debug.bManualBrakeControlReleaseTARM = us ;
        M2S.Items.ActCmd.cmd.ManualBrakeReleaseCmd = (M2S.Items.ActCmd.cmd.ManualBrakeReleaseCmd & 0xfffd) | ((us&1)<<1);
        break ;

    case 130: //0x2220
        SysState.Debug.ForceWheelTracksSteering = us ;
        break ;

    case 150: // 0x2220: Miscellaneous services - instruct to perform a side camera new median calculation.
        ProgramReportCatch() ; //cancel after integration, doesn't specify which side camera to use.
        break;
    case 153: // 0x2220: Miscellaneous services, start side camera calibration
        //Ask RC to start sending relative position reports if target presented.
        switch (ul)
        {
        case 0: //abort calibration
            SysState.RelCrabState.CameraBeingCalibrated = 0; //0 - none, 1 right, 2 left
            //TODO: send request to RC
            break;
        case 1: //calibrate right side camera
            SysState.RelCrabState.CameraBeingCalibrated = 1; //0 - none, 1 right, 2 left
            //TODO: send request to RC
            ProgramReportCatch() ;
            break;
        case 2: //calibrate left side camera
            SysState.RelCrabState.CameraBeingCalibrated = 2; //0 - none, 1 right, 2 left
            //TODO: send request to RC
            ProgramReportCatch() ;
            break;
        case 4567: //Send calibration results to flash
            switch (SysState.RelCrabState.CameraBeingCalibrated) //0 - none, 1 right, 2 left
            {
                case 1: //right
                    CalibProg.Calib.XCalibShiftR = SysState.RelCrabState.XCalibShiftResultTemp;
                    CalibProg.Calib.YCalibShiftR = SysState.RelCrabState.YCalibShiftResultTemp;
                    CalibProg.Calib.AzCalibShiftR = SysState.RelCrabState.AzCalibShiftResultTemp;
                    //TODO: send to flash
                    break;
                case 2: //left
                    CalibProg.Calib.XCalibShiftL = SysState.RelCrabState.XCalibShiftResultTemp;
                    CalibProg.Calib.YCalibShiftL = SysState.RelCrabState.YCalibShiftResultTemp;
                    CalibProg.Calib.AzCalibShiftL = SysState.RelCrabState.AzCalibShiftResultTemp;
                    //TODO: send to flash
                    break;
                default:
                    return General_parameter_incompatibility_reason ;
            }
            SysState.RelCrabState.CameraBeingCalibrated = 0; //0 - none, 1 right, 2 left
            break;
        default:
            return length_of_service_parameter_does_not_match;
        }
        break;
    default:
        return Sub_index_does_not_exist ;
    }
    return 0 ;
}


long unsigned TrqApprox( float x)
{
    long unsigned y  ;
    y =  (long unsigned)  fSat ( (float) fabsf(x) + 0.5f , 31.0f )  ;
    if ( (x < 0)  && y )
    {
        y = 64 - y ;
    }
    return y;
}


short  Trq2mAmp( float x)
{
    short  y  ;
    y =  (short) __fmin (  fabsf(x*1000.0f) + 0.5f , 32767.0f )  ;
    if ( x < 0)
    {
        y = - y ;
    }
    return y;
}


/**
 * \brief object 0x220b: Miscellaneous BIT & readout
 *
 */
long unsigned  GetAutoRouteStat(    struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si, n1 , n2   ;
    short IsFloat;
    long l ;
    float f ;
    short well;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    IsFloat = 0 ;
    switch ( si )
    {
    case 1:
        l = SysState.Mot.mode & 0xf ;
        l |=  ( ( SysState.Mot.ExecutingQueue & 0x7 ) << 4 ) ;
        l |=  ( ( MQ.nGet & 0x3f ) << 7 ) ; // Free bit here
        if ( SysState.Mot.InGroundNav)
        {
            l |=  ( (long unsigned)( MQ.Item[(MQ.nGet-1)&(N_MOTION_REC_IN_USER_Q-1)].OpCode & 0x1f ) << 14 ) ;
        }
        else
        {
            l |=  ( (long unsigned)( MQ.Item[MQ.nGet].OpCode & 0x1f ) << 14 ) ;
        }
        if ( SysState.Mot.InGroundNav) l |= (1L << 19 ) ;
        if ( SysState.Package.State > EPackState_Init) l |= (1L << 20  ) ;
        l |=  (( (long)ManRouteCmd.ShelfMode & 0xf ) << 21 ) ;
        l |= (( (long)SysState.Package.State & 0xf ) << 25 ) ;
        l |= (( (long)SysState.WakeupState  & 0x7 ) << 29 ) ;
        break ;
    case 2:
        n1 = ( SysState.Mot.ExceptionCnt - 1 ) & 7 ;
        n2 = ( SysState.Mot.ExceptionCnt - 2 ) & 7 ;
        l = (long)(  ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (SysState.Mot.ExceptionTab[n2] << 16 ) ) ;
        break;
    case 3:
        n1 = ( SysState.Mot.ExceptionCnt - 3 ) & 7 ;
        n2 = ( SysState.Mot.ExceptionCnt - 4 ) & 7 ;
        l = (long)( ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (SysState.Mot.ExceptionTab[n2] << 16 ) ) ;
        break;
    case 4:
        n1 = ( SysState.Mot.ExceptionCnt - 5 ) & 7 ;
        n2 = ( SysState.Mot.ExceptionCnt - 6 ) & 7 ;
        l = (long)( ( SysState.Mot.ExceptionTab[n1] & 0xffff ) + (SysState.Mot.ExceptionTab[n2] << 16 ) );
        break;
    case 5:
        n1 = ( SysState.Mot.ExceptionCnt - 7 ) & 7 ;
        n2 = ( SysState.Mot.ExceptionCnt - 8 ) & 7 ;
        l = (long)((SysState.Mot.ExceptionTab[n1] & 0xffff ) + (SysState.Mot.ExceptionTab[n2] << 16 ) );
        break;
    case 10 :
        l = TrqApprox(SysState.CanAxis[LOGICAL_RW].BH.Torque )
            + (TrqApprox(SysState.CanAxis[LOGICAL_LW].BH.Torque ) << 6 )
            + (TrqApprox(SysState.CanAxis[LOGICAL_RSTEER].BH.Torque ) << 12 )
            + (TrqApprox(SysState.CanAxis[LOGICAL_LSTEER].BH.Torque ) << 18 )
            + (TrqApprox(SysState.CanAxis[LOGICAL_NECK].BH.Torque ) << 24 );
        break ;
    case 11:
        l = ( SysState.Package.ManState & 0xff )  + ( (SysState.Package.ManStopErr & 0xff) << 8 ) +
            (((unsigned long)(HostMessageStr.Permission & 0xff))<<17) + ((long unsigned)(S2M.Items.ActStatus.stat.SlaveStat.bit.hi.Individual & 1)<<25)
            + ((long unsigned)(S2M.Items.ActStatus.stat.SlaveStat.bit.hi.FlexArmHomed & 1)<<26)
            + ((long unsigned)(S2M.Items.ActStatus.stat.SlaveStat.bit.hi.SpacerHomed & 1)<<27)  ;
        break ;
    case 12:
        l = SysState.Package.LastFault ;
        break ;

    case 14:
        well = IsManipulatorWell ()  ;
        well = ( well > 0 ) ? 1 : 0 ;
        l = SysState.Package.LastFault + ( (long unsigned) SysState.Package.IsFaultRecoverable << 16) +
            ( (long unsigned )well << 17 ) + ((long unsigned) IsManipulatorMotorOn (0)  <<18) ;
       break ;

    case 15:
        // Get wheel arm and other status
        l = ( SysState.TrackWidthCtl.bActive ? 2 : 0 ) + (( SysState.Mot.NeckControl.NeckMode & 7 ) << 2  )  +
            (( SysState.Status.WakeUp & 0xf ) << 5 ) + ( (SysState.Package.Mode & 0xf ) << 9 )  +  ((long unsigned)(S2M.Items.ActStatus.stat.CoreId.bit.RobotType & 0xf) << 28 );
        break ;


    case 20:
       f = SysState.ManRouteState.Destination[0];
       IsFloat = 1 ;
       break ;
    case 21:
        f = SysState.ManRouteState.Destination[1] ;
        IsFloat = 1 ;
       break ;
    case 22:
        f = SysState.ManRouteState.Destination[2] ;
        IsFloat = 1 ;
       break ;

    case 23:
        l = ( ManRouteCmd.CrabCrawl & 3 ) + (( IsInMission() & 0x7 )<<2 )
          + (( SysState.TrackWidthCtl.WheelArmState & 15 ) << 6 ) + ((unsigned long)(SysState.ShelfRun.bEndGame & 1 )<<16) +  ((long unsigned)(SysState.PoleRun.TargetArmDone & 7 )<<17) +
          ((long unsigned)(SysState.ShelfRun.NextStationIsPole & 1) << 20) + ((long unsigned)(ManRouteCmd.ShelfSubMode & 0x1f ) << 21 ) ;
        break ;

    default:
        return Sub_index_does_not_exist ;
    }
    if (IsFloat)
    {
        * ((float *) &pSdo->SlaveBuf[0] ) = f ;
    }
    else
    {
        * ((long *) &pSdo->SlaveBuf[0] ) = l ;
    }
    return 0 ;
}


void GetIpcTimeAsSec(unsigned long long tmr , float *ftime )
{
    *ftime = (float) ((double) tmr / CPU_CLK_HZ ) ;
}

/**
 * \brief object 0x2220: Miscellaneous services
 *
 */

long unsigned  GetMiscTest( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    long l ;
    long long unsigned ull ;
    short us , us1 ;
    //short unsigned *pUs ;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    switch ( si )
    {
    case 1:
        l = SysState.Status.PdInTest ;
        break ;
    case 2:
        l = 0 ;// SysState.Package.ManipControlWord.UnProcFromPdo  ;
        break ;

    case 5:
        GetIpcTimer(&ull);
        GetIpcTimeAsSec( ull, (float *) &l );
        break;

    case 19:
        l = SysState.Debug.PermissionForce  ;
        break ;

    case 20:
        l = SpiErrorLog.nPut ;
        break ;

    case 21:
        l = SpiErrorLog.nGet ;
        break ;

    case 22:
        l = SpiErrorLog.Logs[SpiErrorLog.nExtract].f.SysTime ;
        break ;

    case 23:
        l = SpiErrorLog.Logs[SpiErrorLog.nExtract].ul[1] ;
        break ;

    case 50:
        l = MotionBreak.BreakNow  ;
        break ;
    case 51:
        l = MotionBreak.OldState  ;
        break ;
    case 52:
        l = MotionBreak.NextState  ;
        break ;

    case 53:
        l = M2S.Items.ActCmd.cmd.ConfigWord.bit.ManipType ; //     SCARA_Manipulator = 1, Flex_Manipulator = 2
        break ;


    case 54:
        l = ResetReasonLog[0].MemErrAddress;
        break ;
    case 55:
        l = ResetReasonLog[1].MemErrAddress;
        break ;
    case 56:
        l = ResetReasonLog[2].MemErrAddress;
        break ;
    case 57:
        l = ResetReasonLog[3].MemErrAddress;
        break ;

    case 58:
        l = ResetReasonLog[0].AccessStatus;
        break ;
    case 59:
        l = ResetReasonLog[1].AccessStatus;
        break ;
    case 60:
        l = ResetReasonLog[2].AccessStatus;
        break ;
    case 61:
        l = ResetReasonLog[3].AccessStatus;
        break ;


    case 62:
        l = ResetReasonLog[0].NmiStatus;
        break ;
    case 63:
        l = ResetReasonLog[1].NmiStatus;
        break ;
    case 64:
        l = ResetReasonLog[2].NmiStatus;
        break ;
    case 65:
        l = ResetReasonLog[3].NmiStatus;
        break ;

    case 66:
        l = ResetReasonLog[0].ResetCause;
        break ;
    case 67:
        l = ResetReasonLog[1].ResetCause;
        break ;
    case 68:
        l = ResetReasonLog[2].ResetCause;
        break ;
    case 69:
        l = ResetReasonLog[3].ResetCause;
        break ;


    case 70:
        l = ResetReasonLog[0].OldMissionMsec;
        break ;
    case 71:
        l = ResetReasonLog[1].OldMissionMsec;
        break ;
    case 72:
        l = ResetReasonLog[2].OldMissionMsec;
        break ;
    case 73:
        l = ResetReasonLog[3].OldMissionMsec;
        break ;

    case 74:
        l = ResetReasonLog[0].Reason;
        break ;
    case 75:
        l = ResetReasonLog[1].Reason;
        break ;
    case 76:
        l = ResetReasonLog[2].Reason;
        break ;
    case 77:
        l = ResetReasonLog[3].Reason;
        break ;
    case 78:
        l = WakeCounter ;
        break ;
    case 79:
        l = IsrTimer.mSecTimer ;
        break ;
    case 80:
        l = 0;
        break ;

    case 81:
        l = ResetReasonLog[0].MemErrStat;
        break ;
    case 82:
        l = ResetReasonLog[1].MemErrStat;
        break ;
    case 83:
        l = ResetReasonLog[2].MemErrStat;
        break ;
    case 84:
        l = ResetReasonLog[3].MemErrStat;
        break ;

    case 85:
        l = ResetReasonLog[0].NMIReturnAddress;
        break ;
    case 86:
        l = ResetReasonLog[1].NMIReturnAddress;
        break ;
    case 87:
        l = ResetReasonLog[2].NMIReturnAddress;
        break ;
    case 88:
        l = ResetReasonLog[3].NMIReturnAddress;
        break ;

    case 89:
        l = HostMessageStr.RcProtocolVersion ;
        break;

    case 97:
        us1 = * (( unsigned short *) & SysState.PdBitGen    ) & 0xfff8;
        if ( SysState.CanAxis[LOGICAL_RW].BH.AxisCbit.bit.BrakesReleaseCmd)
        {
            us1 |= 1 ;
        }
        if ( SysState.CanAxis[LOGICAL_LW].BH.AxisCbit.bit.BrakesReleaseCmd)
        {
            us1 |= 2 ;
        }
        if ( SysState.CanAxis[LOGICAL_NECK].BH.AxisCbit.bit.BrakesReleaseCmd)
        {
            us1 |= 4 ;
        }
        us = * (( unsigned short *)  &SysState.Package.ManCBit3) ;
        l = ( (long unsigned )us1 & 0xffff )  + ( (( long unsigned )us & 0xffff ) << 16 ) ;
        break ;
    case 98:
        us1 = * (( unsigned short *) &SysState.Package.ManCBit1) ;
        us = * (( unsigned short *)  &SysState.Package.ManCBit2) ;
        l = ( (long unsigned )us1 & 0xffff )  + ( (( long unsigned )us & 0xffff ) << 16 ) ;
        break ;
    case 99:
        l = SysState.CBit.all ;
        break ;
    case 100:
        l = SysState.Status.Failure.all ;
        us = ( SysState.Mot.InGroundNav ?  1  : 0  ) + ( IsInPack() ? 2 : 0  ) +
                (SysState.CanAxis[LOGICAL_RW].BH.LimitSw.PresentValue > 0 ? 4 :0 ) +
                (SysState.CanAxis[LOGICAL_LW].BH.LimitSw.PresentValue > 0 ? 8 :0 ) +
                ((SysState.CanAxis[LOGICAL_RW].BH.LimitSw.ValidCounter & 7)<<4)+
                ((SysState.CanAxis[LOGICAL_LW].BH.LimitSw.ValidCounter & 7)<<7)+
                (SysState.Debug.bBalanceWheelLoadsOnManual ? ( 1<<10) : 0 ) ;
        l = (l & 0xffff ) |  ( (long unsigned) us  << 16 );
        break ;
    case 103:
        l = ((short)SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchRequestDir & 0x3 )
        + (( SysState.CanAxis[LOGICAL_RW].BH.LimitSw.PresentValue & 0x1 ) << 4)
           + (( SysState.CanAxis[LOGICAL_RW].InductiveSensor  & 0x1 ) << 5)  + ( SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchDetectMarker? 0x40 : 0 )  ;
        break ;
    case 106:
        l = ((short)SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchRequestDir & 0x3 )
        + (( SysState.CanAxis[LOGICAL_LW].BH.LimitSw.PresentValue & 0x1 ) << 4)
           + (( SysState.CanAxis[LOGICAL_LW].InductiveSensor  & 0x1 ) << 5)  + ( SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchDetectMarker? 0x40 : 0 )  ; ;
        break ;
    case 108:
        l = ( goodcnt & 0xffff ) + (( badcnt & 0xffff )<<16);
        break ;
    case 110:
        l = ((GpioDataRegs.GPEDAT.bit.GPIO145) ? 1L : 0 ) + ((GpioDataRegs.GPCDAT.bit.GPIO85) ? 2L : 0 );
        break ;
    case 111:
        l = SysState.ShelfRun.EncOnProfileStart[0];
        break;
    case 112:
        l = SysState.ManRouteState.WheelEncoderNow[0];
        break;
    case 113:
        l = SysState.ShelfRun.EncOnProfileStart[1];
        break;
    case 114:
        l = SysState.ManRouteState.WheelEncoderNow[1];
        break;
    case 121:
        l =  SysState.Debug.bManualBrakeControl   ;
        break ;
    case 151: // 0x2220 SI 151 returns float  //get relative camera measurement in robot coordinates after median
        //need to follow a command to calculate median by SendObj 0x2220 case 150
        * ( (float *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.PosReport.x ;
        return 0 ;
    case 152: //0x2220 SI 152 returns float //get relative camera measurement in robot coordinates after median
        * ( (float *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.PosReport.y;
        return 0 ;
    case 153: //0x2220 SI 152 returns float //get relative camera measurement in robot coordinates after median
        * ( (float *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.PosReport.Azimuth;
        return 0 ;
    case 154: // 0x2220 SI 151 returns float  //get relative camera measurement in robot coordinates after median
            //need to follow a command to calculate median by SendObj 0x2220 case 150
        SysState.RelCrabState.XCalibShiftResultTemp = -SysState.RelCrabState.PosReport.x;
        * ( (float *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.XCalibShiftResultTemp ;
        return 0 ;
    case 155: //0x2220 SI 152 returns float //get relative camera measurement in robot coordinates after median
        SysState.RelCrabState.YCalibShiftResultTemp = -SysState.RelCrabState.PosReport.y;
        * ( (float *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.YCalibShiftResultTemp;
        return 0 ;
    case 156: //0x2220 SI 152 returns float //get relative camera measurement in robot coordinates after median
        SysState.RelCrabState.AzCalibShiftResultTemp = -SysState.RelCrabState.PosReport.Azimuth;
        * ( (float *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.AzCalibShiftResultTemp;
        return 0 ;
    case 157: // 0x2220 SI 157 returns short  //returns SysState.RelCrabState.WaitPosReport - checks if the median is ready;
        * ( (short *) &pSdo->SlaveBuf[0] ) = SysState.RelCrabState.WaitPosReport ;
        return 0 ;
//    case 115: DONT USE
//        l = MakeBitBuffer( BitTunnelBuf );
//        break ;
    default:
        return Sub_index_does_not_exist ;
    }
    * ((long *) &pSdo->SlaveBuf[0] ) = l ;
    return 0 ;
}


const float CFZero = 0 ;
const float * GetMiscFloatTab[] = {
   (float *) &CFZero , // 0
   (float *) &SysState.ManRouteState.ShoulderRollInit, // 1
   (float *) &CFZero , // 2
  (float *) &CFZero , // 3
  (float *) & CFZero , // 4 (int)
  (float *) & CFZero  , // 5 (int)
  (float *) & CFZero  , // 6 (int)
  (float *) & CFZero  , // 7 (int)
  (float *) & CFZero  , // 8 (int)
  (float *) & CFZero  , // 9 (int)
  (float *) &SysState.CanAxis[LOGICAL_RW].BH.LimitSw.SwitchWidth ,// 10
  (float *) &SysState.CanAxis[LOGICAL_LW].BH.LimitSw.SwitchWidth ,// 11
  &Geom.Calc.Meter2WheelEncoderShelfHoriz , //12
  &Geom.Calc.WheelEncoder2MeterShelfHoriz , //13
  &Geom.Calc.WheelEncoder2MotEncoder , // 14
  &Geom.Calc.Meter2MotEncoderShelf , // 15
  &Geom.Calc.MotEncoder2MeterShelf , //16
  &Geom.Calc.Meter2MotEncoderGnd , // 17
  &Geom.Calc.rrail, // 18
  &SysState.CanAxis[0].RatedCurrent , //19
  &SysState.CanAxis[1].RatedCurrent , //20
  &SysState.CanAxis[2].RatedCurrent , //21
  &SysState.CanAxis[3].RatedCurrent , //22
  &SysState.CanAxis[4].RatedCurrent , //23
  &SysState.CanAxis[0].PeakCurrentObj , //24
  &SysState.CanAxis[1].PeakCurrentObj , //25
  &SysState.CanAxis[2].PeakCurrentObj , // 26
  &SysState.CanAxis[3].PeakCurrentObj , //27
  &SysState.CanAxis[4].PeakCurrentObj , //28
  &Geom.Calc.Meter2WheelEncoderGnd, //29
  &Geom.Calc.WheelEncoder2MeterShelfVert , //30
  &Geom.Calc.WheelEncoder2MeterGnd , // 31
  &Geom.Calc.MotEncoder2MeterGnd  , // 32
  &CFZero ,  // 33
  &CFZero , //34
  &CFZero, //35
  &CFZero , //36
  &SysState.CanAxis[0].BH.Temperature , //37
  &SysState.CanAxis[1].BH.Temperature , //38
  &SysState.CanAxis[2].BH.Temperature , // 39
  &SysState.CanAxis[3].BH.Temperature , // 40
  &SysState.CanAxis[4].BH.Temperature ,  // 41
  (float *) &SysState.CanAxis[0].BH.UI2tCntr.all, //42 (int)
  (float *) &SysState.CanAxis[1].BH.UI2tCntr.all, //43 (int)
  (float *) &SysState.CanAxis[2].BH.UI2tCntr.all, //44 (int)
  (float *) &SysState.CanAxis[3].BH.UI2tCntr.all, //45 (int)
  (float *) &SysState.CanAxis[4].BH.UI2tCntr.all, //46 (int)
  (float *) &SysState.CanAxis[0].BH.AxisCbit.all,  //47 (int)
  (float *) &SysState.CanAxis[1].BH.AxisCbit.all,  //48 (int)
  (float *) &SysState.CanAxis[2].BH.AxisCbit.all,  //49 (int)
  (float *) &SysState.CanAxis[3].BH.AxisCbit.all,  //50 (int)
  (float *) &SysState.CanAxis[4].BH.AxisCbit.all  //51 (int)
};


const short unsigned nGetMiscFloatTab = sizeof(GetMiscFloatTab) / sizeof(float *) ;
/**
 * \brief object 0x2226: Miscellaneous floats
 *
 */

long unsigned  GetMiscFloat( struct CSdo * pSdo ,short unsigned *nData)
{
    short unsigned si  ;
    //short unsigned *pUs ;
    si = pSdo->SubIndex ;
    *nData = 4 ;
    if ( si ==0 || si >= nGetMiscFloatTab)
    {
        return Sub_index_does_not_exist ;
    }
    * ((float *) &pSdo->SlaveBuf[0] ) = * GetMiscFloatTab[si] ;
    return 0 ;
}
/**
 * \brief object 0x2227: Miscellaneous floats
 *
 */
const unsigned short ShortEfes = 0;
const short unsigned * GetMiscShortTab[] =
{
   (short unsigned *) &ShortEfes , // 0
   (short unsigned *) &SysState.CanAxis[0].BH.FaultCode , // 1
   (short unsigned *) &SysState.CanAxis[1].BH.FaultCode , // 2
   (short unsigned *) &SysState.CanAxis[2].BH.FaultCode , // 3
   (short unsigned *) &SysState.CanAxis[3].BH.FaultCode , // 4
   (short unsigned *) &SysState.CanAxis[4].BH.FaultCode   // 5
};
const short unsigned nGetMiscShortTab = sizeof(GetMiscShortTab) / sizeof(short *) ;

long unsigned  GetMiscShort( struct CSdo * pSdo ,short unsigned *nData)
{
   short unsigned si  ;
   //short unsigned *pUs ;
   si = pSdo->SubIndex ;
   *nData = 4 ;
   if ( si ==0 || si >= nGetMiscShortTab)
   {
       return Sub_index_does_not_exist ;
   }
   * ((long unsigned *) &pSdo->SlaveBuf[0] ) = (long unsigned)(*GetMiscShortTab[si] );
   return 0 ;
}


long unsigned  SetConsoleTest(  struct CSdo * pSdo ,short unsigned nData)
{
    //short unsigned si  ,us ;
    (void) nData ;
    (void) pSdo ;
    /*
    us =* ((short unsigned *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    if  ( si == 0 )
    {
    }
    else
    {
    }
    */
    return 0 ;
}




/**
 * \Object 0x2200 brief Set values to the LED driver
 */
long unsigned  SetLeds( struct CSdo * pSdo ,short unsigned nData)
{
#ifdef _LPSIM
    (void)pSdo ; (void) nData ;
#else
    short unsigned si  ,us , mask ;
    (void) nData ;
    us =* ((short unsigned *) pSdo->SlaveBuf);
    si = pSdo->SubIndex ;
    if  ( si == 0 || si > 9 )
    {
        return Sub_index_does_not_exist ;
    }
    PwmValuesTlc[si-1] = us & 0xff ;

    mask = 1<<(si-1) ;
    if ( us)
    {
        SysState.GMalinkiLedSet |= mask ;
        LedBrightness = us ;
    }
    else
    {
        SysState.GMalinkiLedSet &= (~mask);
    }
#endif
    return 0 ;
}


short unsigned swap( short unsigned a)
{
    return  ((a & 0xff ) << 8 ) + ( (a >> 8) & 0xff ) ;
}


void NextHostSciHandlerInit(short unsigned c );

/**
 * \brief Object 0x1F00: Set simulated communications via SPI
 *
 */
long unsigned  SetSpiSimMsg(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ,   us      ;
    //short SpiErrWaterLine ;
    long unsigned  RetVal ;

    si = pSdo->SubIndex ;
    us =* ((short unsigned *) pSdo->SlaveBuf);

    RetVal = 0 ;
    switch ( si )
    {
    case 1: // Neta please complete
        if ( ( nData != (2 * OLD_SPI_MSG_LEN) ) && (nData != 34 ) )
        {
            return General_parameter_incompatibility_reason ;
        }
        RetVal = HostProtocolSimulation((short unsigned *) pSdo->SlaveBuf);

        //uSrc = (short unsigned *)  &pSdo->SlaveBuf[0];
        //uDst = (short unsigned *) &pSdo->SlaveBuf[SPI_MSG_LEN];

        // Reshape SPI for new format

        // Call old style interpreter

        // Finally return error code
        if ( RetVal)
        {
            RetVal += Manufacturer_error_detail;
        }

        break ;
    case 3:
        SysState.EnableByAnalog = us ;
        break ;

    default :
        return Sub_index_does_not_exist ;
    }
    return RetVal ;
}


/**
* \brief Object 0x2002: Set any GPIO
*
*/
long unsigned  LpSetGpio(struct CSdo * pSdo, short unsigned nData)
{
    short unsigned us, si, port, bit;
    long unsigned val;

    if (nData != 2)
    {
        return length_of_service_parameter_does_not_match;
    }

    us = *((short unsigned *)pSdo->SlaveBuf);
    if (us > 1)
    {
        return General_parameter_incompatibility_reason;
    }
    si = pSdo->SubIndex;

    port = si >> 5;
    bit = si - (port << 5);
    val = 1L << bit;

    switch (port)
    {
    case 0:
        GpioDataRegs.GPASET.all = val;
        break;
    case 1:
        GpioDataRegs.GPBSET.all = val;
        break;
    case 2:
        GpioDataRegs.GPCSET.all = val;
        break;
    case 3:
        GpioDataRegs.GPDSET.all = val;
        break;
    case 0x10:
        GpioDataRegs.GPACLEAR.all = val;
        break;
    case 0x11:
        GpioDataRegs.GPBCLEAR.all = val;
        break;
    case 0x12:
        GpioDataRegs.GPCCLEAR.all = val;
        break;
    case 0x13:
        GpioDataRegs.GPDCLEAR.all = val;
        break;
    default:
        return Sub_index_does_not_exist;
    }
    return 0;
}



long unsigned  LpGetGpio(struct CSdo * pSdo, short unsigned *nData)
{


    short unsigned si, port, bit;
    long unsigned rslt;

    si = pSdo->SubIndex;
    port = si >> 5;
    bit = si - (port << 5);

    switch (port)
    {
    case 0:
        rslt = GpioDataRegs.GPADAT.all;
        break;
    case 1:
        rslt = GpioDataRegs.GPBDAT.all;
        break;
    case 2:
        rslt = GpioDataRegs.GPCDAT.all;
        break;
    case 3:
        rslt = GpioDataRegs.GPDDAT.all;
        break;
    default:
        return Sub_index_does_not_exist;
    }
    *nData = 2;
    *((short unsigned *)&pSdo->SlaveBuf[0]) = ((rslt & (1L << bit)) ? 1 : 0);
    return 0;
}


/*
 * Object 0x2303, Set
 * For FW buffer (accepted by packet SDO protocol), test its integrity
 */
long unsigned  SetFwBuffer(    struct CSdo * pSdo ,short unsigned nData)
{
    short unsigned si ;
    si = pSdo->SubIndex ;
    if ( si != 0 )
    {
        return Sub_index_does_not_exist;
    }
    if ( nData > ( PROG_BUF_LEN * 4) )
    {
        return Out_of_memory ;
    }
    if ( nData & 0x3 )
    {
        return Invalid_block_size ;
    }

    ProgramBufferLength = nData / 4  ;
    return 0 ;
}
