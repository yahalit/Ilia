/*
 * MainApp.c
 *
 *  Created on: Jun 17, 2023
 *      Author: yahal
 */


#define APP_OWNER
#define CLA_VAR_OWNER
#define CONFIG_OWNER

#include "StructDef.h"

//   #define WITH_WATCHDOG
volatile long unsigned JtagPassCopy ;
extern const long unsigned JtagPass[] ;

void main(void)
{
#ifdef WITH_WATCHDOG
    short unsigned wdka ;
#endif
    DINT ;
    JtagPassCopy = JtagPass[0] + JtagPass[1] ; // Just for compiler not to delete these variables as unused

    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1) ;
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLB1);

    // Copy program and initialized data from flash to RAM, and establish CLA resources
    memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize);
    initCLAMemory();

    Flash_initModule(FLASH0CTRL_BASE, FLASH0ECC_BASE, DEVICE_FLASH_WAITSTATES);

    InitAppData();

    InitPeripherals() ;

    CfgBlockTransport(); // Only after CAN ID is known

    SetupIsr()  ;

#ifndef WITH_WATCHDOG
    SysCtl_disableWatchdog() ;
#endif
    EINT ;

    while(1)
    {
        IdleLoop() ;
#ifdef WITH_WATCHDOG
        wdka = SysState.WdKickAllow ;
        if ( wdka != SysState.WdKickAllowBg )
        {
            SysState.WdKickAllowBg = wdka ;
            SysCtl_serviceWatchdog() ;
        }
#endif
    }
}

/**
 * \brief Initiate the time outs of the system
 */
void InitTimeOuts ( void )
{
    short unsigned cnt ;

    // All the timers are initially elapsed
    for ( cnt = 0 ; cnt < NSYS_TIMER_CMP_ARRAY ; cnt++)
    {
        SetSysTimerTargetSec(cnt, 0.1f, &SysTimerStr);
    }
//    SetSysTimerTargetSec (TIMER_GYRO_PROG , 0.005f  , &SysTimerStr);
}


short unsigned isProjIndexValid( short unsigned proj )
{
    if ( proj < PROJ_TYPE_WH_INTFC_R || proj > PROJ_TYPE_WH_INTFC_L )
    {
        return 0 ;
    }
    return 1 ;
}

short ApplyIdentity(union UIdentity * pId, union UNVParams *pPars)
{
    short unsigned cnt  ;
    long unsigned cs , stat ;
    struct CFloatConfigParRecord * pCfg ;

    // Set defaults: don't use user configuration
    ClearMemRpt((short unsigned *) &DBaseConf,sizeof( DBaseConf) );

    if (pId->C.Identity.PassWord  != 0x12345678)
    {
        return -1 ; // Bad pass
    }

    // Test checksum for Identity. If failed, nothing to do
    cs = 0;
    for ( cnt = 0 ; cnt < sizeof(struct CIdentity)/2 ; cnt++  )
    {
        cs += pId->Buf[cnt] ;
    }
    if ( cs )
    {
        return -2 ; // Bad cs
    }


    // Test validity of identity revision
    if ( pId->C.Identity.IdentityRevision !=  IdentityParametersRevision )
    {
        return -4 ;
    }

    // Test matching of the hardware type
    if ( pId->C.Identity.HardwareType != THISCARD )
    {
        return -9 ;
    }

    DBaseConf.IsValidIdentity = 1 ;

    // Test the checksum of the non-volatile parameters
    cs = 0;
    for ( cnt = 0 ; cnt < 1024 ; cnt++  )
    {
        cs += pPars->Buf[cnt] ;
    }
    if ( cs )
    {
        return -3 ; // Bad cs
    }

    // If the project is undefined, verify the hardware configuration version
    if (pPars->NVParams.ProjIndex == PROJ_TYPE_UNDEFINED)
    {
        if ( pPars->NVParams.ProjSpecificData.ProjSpecificDataRevision == HwConfigRevision )
        {
            DBaseConf.IsUserHwConfig = 1 ;
        }
    }
    else
    {

        if ( isProjIndexValid(pPars->NVParams.ProjIndex) == 0  )
        {
            return -5 ;
        }
        else
        {
            DBaseConf.IsUserProjId = 1;
        }
    }

    if ( pPars->NVParams.UseParsConfig == 1234 )
    {
        for ( cnt = 0 ; cnt < nUserCfgPars ;cnt++ )
        {
            pCfg  = &pUNVParams->NVParams.UserCfgPars[cnt] ;
            if ( ConfigTable[cnt].Flags !=  pCfg->Flags )
            {
                return -8 ;
            }
            stat = TestCfgPar(&ConfigTable[cnt] , *( (long *) &pCfg->defaultVal) ) ;
            if ( stat )
            {
                return -7 ;
            }

            if (pCfg->Flags & CFG_REVISION  )
            {
                if ( pCfg->defaultVal == ParametersSetRevision )
                {
                    DBaseConf.IsUserConfiguration = 1 ;
                }
                else
                {
                    return -6 ; // Configuration revision does not match
                }
            }
        }
    }


    // Either Project ID or parameters set must be defined
    DBaseConf.IsValidDatabase = 1 ;
    //if ( pId->Identity.UserCfgPars.)
    return 0 ;
}

void InitAppData(void)
{
    short cnt ;
    struct CFloatParRecord *pPar ;

    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );
    ClearMemRpt((short unsigned *) &FlashProg,sizeof( FlashProg) );
    ClearMemRpt((short unsigned *) &ClaControlPars,sizeof( ClaControlPars) );

    pUIdentity   = ( union UIdentity *) Sector_AppIdentity_start ;
    pUNVParams   = ( union UNVParams *) Sector_AppParams_start ;
    NVParamsPassWord = 0 ;

    // Test identity
    ApplyIdentity(pUIdentity,pUNVParams);
    ProjId = PROJ_TYPE_WH_INTFC_R ;
    SetProjectId() ;


    SysState.ActiveAxis = EA_Wheel ;

    SysState.pAxisTx = &SysState.AxisState[SysState.ActiveAxis];
    SysState.pAxisRx = &SysState.AxisState[SysState.ActiveAxis];
    SysState.pMsg2Tx = & SysState.pAxisTx->OutFsiMsg ;

    CanSlaveInQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlaveOutQueue.nQueue = N_SLAVE_QUEUE ;

    CanWheelOutQueue.nQueue = N_SLAVE_QUEUE ;
    CanSteerOutQueue.nQueue = N_SLAVE_QUEUE ;

    SlaveSdo.SlaveBuf = (unsigned long* ) SlaveSdoBuf ;

    InitLinService();

    FlashCalib =  Sector_AppCalib_start ;

    SysState.Mot.SafeFaultCntDownMax = 10 ;

    SysState.Timing.Ts = FAST_TS_USEC * 1e-6f ;
    //SysState.Timing.TsInTicks = (CPU_CLK_MHZ * CUR_SAMPLE_TIME_USEC  ) ;

    InitSystemTimer( &SysTimerStr);
    SysState.SystemMode = E_SysMotionModeNothing;

    // Set configuration params
    ResetConfigPars() ;

    // Load the parameters
    for ( cnt = 0 ; cnt < (signed short)N_ParTable; cnt++ )
    {
        pPar = (struct CFloatParRecord  *) &ParTable[cnt];
        if ( pPar->ptr == (float*) 0 )
        {
            break ;
        }
        *pPar->ptr = pPar->dflt ;
    }

    InitRecorder(FAST_INTS_IN_C, FAST_TS_USEC, SDO_BUF_LEN_LONGS);
    DealCalibration (1) ; // Deal with calibration

    if  (ReadCalibFromFlash ( (long unsigned*) &CalibProg.C.Calib ,   FlashCalib   ) )
    {
        SysState.CBit.bit.NoCalib = 1 ;

        LogException( EXP_FATAL , exp_missing_calib);
        SetSystemMode(E_SysMotionModeFault);
    }

    SysState.AxisState[EA_Wheel].TagAndUser = EA_Wheel+1;
    SysState.AxisState[EA_Steering].TagAndUser = EA_Steering+1;
    InitFsiService() ;
    SysState.bDebugFsi = 0 ;

    InitTimeOuts() ;

    ClaState.Timing.TsInTicks = CUR_SAMPLE_TIME_CLOCKS  ;
    ClaState.Timing.InvMhz = 1.0f / (float) CPU_CLK_MHZ ;

    InitControlParams();

}

void CfgBlockTransport(void)
{
    SysState.BlockUpload.InBlockMsg.cobId = (0xb<<7)+CanIdLocal  ;
    SysState.BlockUpload.InBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.StartBlockMsg.cobId = (0xb<<7)+CanIdLocal  ;
    SysState.BlockUpload.StartBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.StartBlockMsg.data[0] = 0x64 + (0x2006L<<8) + (1L<<24);

    SysState.BlockUpload.EndBlockMsg.cobId = (0xb<<7)+CanIdLocal  ;
    SysState.BlockUpload.EndBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.AbortBlockMsg.cobId = (0xb<<7)+CanIdLocal  ;
    SysState.BlockUpload.AbortBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.AbortBlockMsg.data[0] = (4L<<5) + ( (long unsigned)02006 ) + ( (long unsigned)1 << 24 );
    SysState.BlockUpload.AbortBlockMsg.data[1] = Invalid_sequence_number ;
}

/**
 * \brief Get calibration conversion factors
 * \param:
 *  0: Zero calibration 1: Read from flash and apply 2: From programmed calibration
 *
 */
struct CCalib CalibTmp ;
short DealCalibration (short unsigned rd)
{
    short unsigned mask ;
    //float m[3][3] ;
    short RetVal = 0 ;
    switch ( rd)
    {
    case 0:
        ClearMemRpt( (short unsigned * ) &CalibTmp , sizeof(Calib)  ) ;
        break ;
    case 1:
        if ( ReadCalibFromFlash ( (long unsigned*) &CalibTmp ,   FlashCalib   ) < 0 )
        {
            RetVal = -1 ;
        }
        break ;
    case 2:
        CalibTmp = CalibProg.C.Calib ;
        break ;
    }


    mask = BlockInts( ) ;
    Calib = CalibTmp;

    RestoreInts(mask) ;
    return RetVal ;
}


short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   )
{
    long unsigned cs ;
    short unsigned cnt ;
    long unsigned *Src ;
    long unsigned *uPtr ;
    short unsigned len = sizeof( struct CCalib ) ;

    Src  = (unsigned long *) Src_in ;
    uPtr = Src ;

    ClearMemRpt( (short unsigned * ) Dest , len ) ;

    if ( CheckAlign( (short unsigned *) Dest , 1 ) || CheckAlign( (short unsigned *) Src , 1 ) )
    { // Check both are on long boundary
        return -1 ;
    }

    len = ( len >> 1 ) ; // Because of shorts

    if ( uPtr[len-2] != 0x12345678)
    {
        return -1 ;
    }
    cs = 0 ;
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        cs -= *uPtr++  ;
    }
    if ( cs )
    {
        return -1 ;
    }
    for ( cnt = 0 ; cnt < len ; cnt++)
    {
        *Dest++ = *Src++  ;
    }
    return 0 ;
}

short CheckAlign ( short unsigned * ptr , short unsigned pw )
{
    short unsigned cnt ;
    long unsigned ul ;
    ul = ( long unsigned ) ptr ;
    for ( cnt = 0 ; cnt < pw ; cnt++ )
    {
        if ( ul & ( 1L << cnt ) )
        {
            return -1 ;
        }
    }
    return 0 ;
}


void SetSystemMode(short  x)
{
//    short unsigned mask ;
    if ( x != SysState.SystemMode &&  (x <= E_SysMotionModeAutomatic) && ( x >= E_SysMotionModeSafeFault) )
    { // On mode change , nothing can execute
        if ( x == E_SysMotionModeFault )
        {
            SysState.MotorOnRequest = 0 ; // Kill Cla
            SysState.Mot.QuickStop = 1;
        }


        if ( x == E_SysMotionModeAutomatic)
        {
            if ( SysState.Mot.LoopClosureMode <= E_LC_OpenLoopField_Mode )
            {
                LogException( EXP_FATAL , exp_auto_mode_requires_closedloop);
            }
        }

        if ( SysState.SystemMode == E_SysMotionModeFault )
        {
            SysState.Status.HaltRequest = 0 ;
        }

        SysState.SystemMode = x ;
//        RestoreInts(mask) ;
    }
}

short InitControlParams(void)
{

    ClaControlPars.InvEncoderWhMotCountsFullRev = 1.0f / __fmax(1.e-7f,ClaControlPars.EncoderWhMotCountsFullRev) ;
    ClaControlPars.InvEncoderStCountsFullRev = 1.0f / __fmax(1.e-7f,ClaControlPars.EncoderStCountsFullRev) ;
    ClaControlPars.InvEncoderWhCountsFullRev = 1.0f / __fmax(1.e-7f,ClaControlPars.EncoderWhCountsFullRev) ;

    ClaControlPars.Pos2RevWhMot = 1.0f / __fmax(1.e-7 , ClaControlPars.Rev2PosWhMot) ;
    ClaControlPars.Pos2RevSt = 1.0f / __fmax(1.e-7 , ClaControlPars.Rev2PosSt) ;

    //SpeedScale/ Tics = speed
    ClaState.Encoder1.MinMotSpeedHz   = 0.05f /  __fmax( ClaControlPars.EncoderWhMotCountsFullRev * SysState.Timing.Ts,1e-2)  ;
    ClaState.Encoder2.MinMotSpeedHz   = 0.05f / __fmax( ClaControlPars.EncoderStCountsFullRev * SysState.Timing.Ts,1e-2)  ;
    ClaState.Encoder3.MinMotSpeedHz   = 0.05f / __fmax( ClaControlPars.EncoderWhCountsFullRev * SysState.Timing.Ts,1e-2)  ;

    ClaState.Encoder1.bit2Rev = ClaControlPars.InvEncoderWhMotCountsFullRev ;
    ClaState.Encoder1.Rev2Bit = (long) ClaControlPars.EncoderWhMotCountsFullRev ;
    ClaState.Encoder1.rev2Pos = ClaControlPars.Rev2PosWhMot  ;

    ClaState.Encoder2.bit2Rev = ClaControlPars.InvEncoderStCountsFullRev ;
    ClaState.Encoder2.Rev2Bit = (long) ClaControlPars.EncoderStCountsFullRev ;
    ClaState.Encoder2.rev2Pos = ClaControlPars.Rev2PosSt  ;

    ClaState.Encoder3.bit2Rev = ClaControlPars.InvEncoderWhCountsFullRev ;
    ClaState.Encoder3.Rev2Bit = (long) ClaControlPars.EncoderWhCountsFullRev ;
    ClaState.Encoder3.rev2Pos = ClaControlPars.Rev2PosWh  ;

    return 0 ;
}

void  KillMotor(void)
{

}


void FlushCanQueues(void)
{
    short unsigned mask ;
    mask = BlockInts() ;
    SlaveSdo.Status = 0 ;
    CanSlaveInQueue.nPut = 0 ;
    CanSlaveInQueue.nGet = 0 ;

    CanSlaveOutQueue.nPut = 0 ;
    CanSlaveOutQueue.nGet = 0 ;

    CanWheelOutQueue.nPut = 0 ;
    CanWheelOutQueue.nGet = 0 ;

    CanSteerOutQueue.nPut = 0 ;
    CanSteerOutQueue.nGet = 0 ;


    SysState.MCanSupport.PdoDirtyBoard = 0 ;
    SysState.MCanSupport.PdoDirtyBoardWh = 0 ;
    SysState.MCanSupport.PdoDirtyBoardSt = 0 ;

    RestoreInts(mask) ;
}


short SetProjectSpecificData( short unsigned proj_in )
{
    struct CProjSpecificData * pProjData ;
    struct CProjSpecificCtl * pProjCtl ;
    short unsigned proj ;

    if (proj_in < PROJ_TYPE_WH_INTFC_R || proj_in >PROJ_TYPE_WH_INTFC_L )
    {
        return -1 ;
    }

    proj = proj_in - PROJ_TYPE_WH_INTFC_R + 1 ;
    if ( (proj >= nProjSpecificData)  || (proj >= nProjSpecificCtl) )
    {
        return -1 ;
    }

    if ( DBaseConf.IsUserHwConfig )
    {
        pProjData = & pUNVParams->NVParams.ProjSpecificData  ;
    }
    else
    {
        pProjData = (struct CProjSpecificData *) & ProjSpecificData[proj] ;
    }
    pProjCtl  = (struct CProjSpecificCtl *)  &ProjSpecificCtl[proj] ;

    if (( pProjData->ProjIndex != proj ) || (pProjCtl)->ProjIndex != proj )
    {
        return -1 ;
    }

    if ( DBaseConf.IsUserConfiguration == 0 )
    {
    }

    return 0 ;
}




void SetProjectId(void)
{
    if ( DBaseConf.IsValidDatabase  )
    {
        ProjId = pUNVParams->NVParams.ProjIndex ;
    }

    if (ProjId < PROJ_TYPE_WH_INTFC_R || ProjId >PROJ_TYPE_WH_INTFC_L)
    {
         ProjId = PROJ_TYPE_UNDEFINED ;
    }
    CanIdLocal = ProjSpecificData[ProjId-PROJ_TYPE_WH_INTFC_R+1].CanId ;

    if ( SetProjectSpecificData( ProjId) )
    {
        LogException(EXP_FATAL,err_undefined_proj_id) ;
        SysState.SeriousError = 1 ;
    }
    else
    {
        if ( InitControlParams() )
        {
            LogException(EXP_FATAL,err_bad_proj_pars) ;
            SysState.SeriousError = 1 ;
        }
    }
}
