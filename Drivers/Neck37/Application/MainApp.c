/*
 * MainApp.c
 *
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */
#define APP_OWNER
#define CONFIG_OWNER
#define CLA_VAR_OWNER


#include "StructDef.h"



/*
 * Calculate controller filter parameters based on poles and damping
 */
void InitControlFilter(struct CFilt2 * pFilt , float Ts )
{
    float z , b00 , a1 , a2 , bw , xi , b0 , b1 , b2 , sum  ;
    short IsSimple ;
    short unsigned mask ;

    bw = pFilt->PBw ;
    xi = pFilt->PXi ;

    if ( pFilt->Cfg.bit.IsInUse )
    {
        IsSimple = pFilt->Cfg.bit.IsSimplePole ;

        if ( bw <= 10000 )
        {
            z = __iexp2( -Ts * Log2OfE * xi * bw * Pi2 );
        }
        else
        {
            z = 0 ;
        }

        if ( IsSimple )
        {
            a2 = 0 ;
            a1 = -z ;
        }
        else
        {
            a2 = z * z ;
            a1  = -2.0f * __cos( __sqrt(1-xi*xi) * bw * Pi2 * Ts ) * z ;
        }

        b00 = 1 + a1 + a2  ;

        bw = pFilt->ZBw ;
        xi = pFilt->ZXi ;
        IsSimple = pFilt->Cfg.bit.IsSimpleZero ;

        if ( bw <= 10000 )
        {
            z = __iexp2( -Ts * Log2OfE * xi * bw * Pi2 );
        }
        else
        {
            z = 0 ;
        }
        if ( IsSimple )
        {
            b2 = 0 ;
            b1 = -z ;
            b0 = 1  ;
        }
        else
        {
            b2 = z * z ;
            b1  = -2.0f * __cos( __sqrt(1-xi*xi) * bw * Pi2 * Ts ) * z ;
            b0 = 1 ;
        }
        sum = b0 + b1 + b2 ;
        if ( sum < 1e-7f )
        {
            b0 = 0 ; b1 = 0 ; b2 = 0 ;
        }
        else
        {
            sum = 1.0 / __fmax( sum, 1e-7f) ;
            b0 = b0 * sum ;
            b1 = b1 * sum ;
            b2 = b2 * sum ;
        }
    }
    else
    {
        b00 = 0 ;
        a2  = 0 ;
        b0 =  0 ;
        b1 =  0 ;
        b2 =  0 ;
    }
    mask = BlockInts() ;
    pFilt->b00 = b00 ;
    pFilt->a2  = a2 ;
    pFilt->b0  = b0 ;
    pFilt->b1  = b1 ;
    pFilt->b2  = b2 ;
    RestoreInts(mask) ;
}


short  SetMotionCommandLimits(void)
{
    short unsigned mask ;
    float  PosRange ;
    mask = BlockInts() ;
    if ( ControlPars.MaxSupportedClosure >= E_LC_Pos_Mode )
    {
        PosRange = ControlPars.MaxPositionCmd  - ControlPars.MinPositionCmd ;
        if ( PosRange <= 0.001f )
        {
            return exp_ilegal_position_range ;
        }

        // PosPrefilter.InPosScale = 536870912.0f / PosRange ;
        // PosPrefilter.OutPosScale = 1.862645149230957e-09f * PosRange ;
        // PosPrefilter.OutSpeedScale = PosPrefilter.OutPosScale * (0.00390625f / (CUR_SAMPLE_TIME_USEC*1e-6f)) ;

        PosPrefilter.InPosScale = 1073741824.0f / PosRange ; // 2^30  /PosRange
        PosPrefilter.OutPosScale = 9.313225746154785e-10f * PosRange ;
        PosPrefilter.OutSpeedScale = PosPrefilter.OutPosScale / (CUR_SAMPLE_TIME_USEC*1e-6f) ; // PosRange * 2^(-30)
        PosPrefilterMotorOff( SysState.PosControl.PosFeedBack );
    }

    RestoreInts(mask) ;
    return 0 ;
}


/*
 * Initialize controller parameters
 */
short InitControlParams(void)
{
    float fTemp , z , xi , a0   ;
    //InitOverCurrentTholds();

    ControlPars.SpeedAWU = ControlPars.SpeedKi * SysState.Timing.Ts /  \
            ( ControlPars.SpeedKp + ControlPars.SpeedKi * SysState.Timing.Ts ) ;

    ClaControlPars.OneOverPP = 1.0f / __fmax( ClaControlPars.nPolePairs, 1.0f) ;
    ClaControlPars.Bit2Amp = ControlPars.FullAdcRangeCurrent * (1.0f/2048.0f) ;
    ClaControlPars.Amp2Bit = 1.0f /__fmax( ClaControlPars.Bit2Amp, 1.e-7f) ;

    ClaControlPars.Pos2Rev = 1.0f / __fmax( ClaControlPars.Rev2Pos , 1e-8f) ; // !< Scale position units to revolutions

    ClaMailIn.SimdT = SysState.Timing.Ts ;

    ControlPars.I2tPoleS = 1.0f - __iexp2( SysState.Timing.Ts * 256 * Log2OfE / __fmax( 0.0001f , ControlPars.I2tCurTime ) );
    ClaControlPars.SpeedFilterCst = 1.0f - __iexp2( SysState.Timing.Ts * Log2OfE * Pi2 * ControlPars.SpeedFilterBWHz  );

   // {& ClaControlPars.CurrentRefFiltA0,12, -1.0f,1.0e6f,-1.745485231989130f} ,//  !< Ref filter parameter A[0]
   // {& ClaControlPars.CurrentRefFiltA1,14, -1.0f,1.0e6f,0.776790921324546f} ,//  !< Ref filter parameter A[1]
    xi = 0.67f ;
    z = __iexp2( -SysState.Timing.Ts * Log2OfE * xi * ControlPars.CurrentFilterBWHz * Pi2 );

    ClaMailIn.CurPrefiltA1 = z * z ;
    a0  = -2.0f * __cos( __sqrt(1-xi*xi) * ControlPars.CurrentFilterBWHz * Pi2 * SysState.Timing.Ts ) * z ;
    ClaMailIn.CurPrefiltB  = 1 + a0 + ClaMailIn.CurPrefiltA1 ;

    fTemp = __fmin( ControlPars.I2tCurLevel , ControlPars.FullAdcRangeCurrent * 0.95f) ;
    ControlPars.I2tCurThold = fTemp * fTemp  ;

    Commutation.EncoderCountsFullRev = ControlPars.EncoderCountsFullRev ;
    ClaControlPars.InvEncoderCountsFullRev = 1.0f / __fmax( ControlPars.EncoderCountsFullRev, 1) ;
    Commutation.Encoder2CommAngle = (float)ClaControlPars.nPolePairs * ClaControlPars.InvEncoderCountsFullRev  ;

    ClaState.Encoder1.Bit2Rev = ClaControlPars.InvEncoderCountsFullRev ;
    ClaState.Encoder1.Rev2Bit = (long) ControlPars.EncoderCountsFullRev ;
    ClaState.Encoder1.Rev2Pos = ClaControlPars.Rev2Pos  ;

    SysState.Timing.OneOverTsTraj = 1.0f / SysState.Timing.TsTraj ;

    SysState.MCanSupport.OneOverNomMessageTime = 1.0f / __fmax( SysState.MCanSupport.NomInterMessageTime, 1e-4f ) ;
    SysState.MCanSupport.OneOverActMessageTime = SysState.MCanSupport.OneOverNomMessageTime ;
    SysState.MCanSupport.InterMessageTime = SysState.MCanSupport.NomInterMessageTime ;

    CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_7); // Initialize CLA current loop prefilter

    InitControlFilter( & ControlPars.qf0 , SysState.Timing.Ts );
    InitControlFilter( & ControlPars.qf1 , SysState.Timing.Ts );

    //SpeedScale/ Tics = speed
    ClaState.Encoder1.MinMotSpeedHz   = 0.05f / ( ControlPars.EncoderCountsFullRev * SysState.Timing.Ts)  ;

    SysState.MCanSupport.OneOverNomInterMessageTime = 1.0 / __fmax(SysState.MCanSupport.NomInterMessageTime,5.0e-5f);

    ControlPars.PdoCurrentReportScale = 680.0f / ControlPars.MaxCurCmd  ;
    // Keep position to limits
    return SetMotionCommandLimits() ;
}


// Transformation is self nverse because its 180 degrees
const float qEnuToNed[4] = {0  , 0.707106781186548f  ,0.707106781186548f,  0}  ;
void ProcessIMUTransformation(void)
{
    short unsigned mask ;
    mask = BlockInts() ;
//    QuatOnQuat( qEnuToNed , Calib.qImu2ZeroENUPos , SysState.Nav.QPreImu) ;
//    InvQuatOnQuat( Calib.qImu2ZeroENUPos , qEnuToNed , SysState.Nav.qChip2Body);
    RestoreInts(mask) ;
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
    SetSysTimerTargetSec ( TIMER_MCAN_BUSOFF , BUS_OFF_RECOVERY_TIME ,  &SysTimerStr  );
    SetSysTimerTargetSec ( TIMER_AUTO_MOTOROFF , 0.3f ,  &SysTimerStr  );
    SetSysTimerTargetSec ( TIMER_AUTO_MIN_MOTORON , 3.0 , &SysTimerStr ) ;
//    SetSysTimerTargetSec (TIMER_GYRO_PROG , 0.005f  , &SysTimerStr);
}



short SetProjectSpecificData( short unsigned proj )
{
    struct CProjSpecificData * pProjData ;
    struct CProjSpecificCtl * pProjCtl ;
    if ( proj <= PROJ_TYPE_UNDEFINED || proj >= PROJ_TYPE_LAST  )
    {
        return -1 ;
    }

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

    ControlPars.I2tCurLevel  = pProjData->I2tCurLevel ;
    ControlPars.I2tCurTime   = pProjData->I2tCurTime  ;

    ControlPars.FullAdcRangeCurrent = pProjData->FullAdcRangeCurrent ;
    ControlPars.EncoderCountsFullRev = pProjData->EncoderCountsFullRev ;
    ClaControlPars.Rev2Pos = pProjData->Rev2Pos ;
    HallDecode.HallAngleOffset = pProjData->HallAngleOffset ;
    ClaControlPars.nPolePairs = pProjData->nPolePairs ;
    ClaControlPars.PhaseOverCurrent = pProjData->PhaseOverCurrent ;
    ControlPars.DcShortCitcuitTripVolts = pProjData->DcShortCitcuitTripVolts ;
    ControlPars.MaxCurCmd = pProjData->MaxCurCmd ;
    ClaControlPars.KpCur = pProjData->KpCur ;
    ClaControlPars.KiCur = pProjData->KiCur ;

    ClaControlPars.MaxCurCmdDdt   = pProjData->MaxCurCmdDdt ; // Maximum current command slope
    ControlPars.CurrentFilterBWHz = pProjData->CurrentFilterBWHz ; // Bandwidth (Hz) of current prefilter
    ControlPars.BrakeReleaseVolts = pProjData->BrakeReleaseVolts ;

    Geom.Pot1Rat2Rad = pProjData->Pot1RatRad ;
    Geom.Pot2Rat2Rad = pProjData->Pot2RatRad ;
    ClaControlPars.CurrentCommandDir = pProjData->CurrentCommandDir ;

    Geom.Pot1RatCenter = pProjData->Pot1CenterRat ;
    Geom.Pot2RatCenter = pProjData->Pot2CenterRat ;

    HallTable[0] = pProjData->HallVal0 ;
    HallTable[1] = pProjData->HallVal1 ;
    HallTable[2] = pProjData->HallVal2 ;
    HallTable[3] = pProjData->HallVal3 ;
    HallTable[4] = pProjData->HallVal4 ;
    HallTable[5] = pProjData->HallVal5 ;
    HallTable[6] = pProjData->HallVal6 ;
    HallTable[7] = pProjData->HallVal7 ;
    ClaState.Encoder1.InvertEncoder = pProjData->InvertEncoder ;

    if ( DBaseConf.IsUserConfiguration == 0 )
    {
        ControlPars.qf0.PBw = pProjCtl->qf0PBw ;
        ControlPars.qf0.PXi = pProjCtl->qf0PXi ;
        ControlPars.qf0.ZBw = pProjCtl->qf0ZBw ;
        ControlPars.qf0.ZXi = pProjCtl->qf0ZXi ;
        ControlPars.qf0.Cfg.ul = pProjCtl->qf0Cfg ;
        ControlPars.qf1.PBw = pProjCtl->qf1PBw ;
        ControlPars.qf1.PXi = pProjCtl->qf1PXi ;
        ControlPars.qf1.ZBw = pProjCtl->qf1ZBw ;
        ControlPars.qf1.ZXi = pProjCtl->qf1ZXi ;
        ControlPars.qf1.Cfg.ul = pProjCtl->qf1Cfg ;
        ControlPars.SpeedKp = pProjCtl->SpeedKp ;
        ControlPars.SpeedKi = pProjCtl->SpeedKi ;
        ControlPars.PosKp = pProjCtl->PosKp ;
        ControlPars.MaxAcc = pProjCtl->MaxAcc ;
        ControlPars.MinPositionCmd = pProjCtl->MinPositionCmd ;
        ControlPars.MaxPositionCmd = pProjCtl->MaxPositionCmd ;
        ControlPars.MinPositionFb = pProjCtl->MinPositionFb ;
        ControlPars.MaxPositionFb = pProjCtl->MaxPositionFb ;
        ControlPars.MotionConvergeWindow = pProjCtl->MotionConvergeWindow  ;
        ControlPars.MaxSupportedClosure = pProjCtl->MaxSupportedClosure ;
        ControlPars.MaxSpeedCmd   = pProjCtl->MaxSpeedCmd;
        SysState.Homing.HomingSpeed = __fmin(pProjCtl->HomingSpeed,ControlPars.MaxSpeedCmd)  ;
        //ClaState.Encoder1.UserPosOnHome = pProjCtl->UserPosOnHome ;
        SysState.UserPosOnHomingFW = pProjCtl->UserPosOnHomingFW ;
        SysState.UserPosOnHomingRev = pProjCtl->UserPosOnHomingRev ;

        SysState.Homing.HomingExitUserPos = pProjCtl->HomingExitUserPos ;

        SysState.Homing.Direction = pProjCtl->HomingDirection ;
        SysState.Homing.Method = pProjCtl->HomingMethod ;
        SysState.Homing.SwInUse = pProjCtl->HomingSwInUse ;


        ControlPars.HighDeadBandThold = pProjCtl->HighDeadBandThold ; // High side dead band hysteresis for position error
        ControlPars.LowDeadBandThold  = pProjCtl->LowDeadBandThold ; // Low side dead band hysteresis for position error;

        ControlPars.HiAutoMotorOffThold = pProjCtl->HiAutoMotorOffThold ; // High side dead band hysteresis for auto shutdown
        ControlPars.LowAutoMotorOffThold  = pProjCtl->LowAutoMotorOffThold ; // Low side dead band hysteresis for auto shutdown

        SysState.Profiler.vmax = __fmin( ControlPars.MaxSpeedCmd , pProjCtl->Profiler_vmax ) ;
        SysState.Profiler.slowvmax = SysState.Profiler.vmax * 0.5f  ;//If someone needs it someday, let him make better access to variable

        SysState.Profiler.accel = __fmin( ControlPars.MaxAcc , pProjCtl->Profiler_accel ) ;
        SysState.Profiler.dec = __fmin( ControlPars.MaxAcc , pProjCtl->Profiler_decel ) ;

        SysState.SpeedControl.ProfileAcceleration = __fmin(ControlPars.MaxAcc, pProjCtl->SpeedProfileAcceleration) ;

        SysState.OuterSensor.OuterMergeCst = pProjCtl->OuterMergeCst ;
        ControlPars.UseCase = pProjCtl->UseCase ;
    }


    return 0 ;
}

#pragma FUNCTION_OPTIONS ( ApplyIdentity, "--opt_level=0" );
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
        if ( pPars->NVParams.ProjIndex >= PROJ_TYPE_LAST )
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
    struct CFloatParRecord *pPar ;
    short unsigned cnt ;
    //float PosRange;
    ClearMemRpt((short unsigned *) &Commutation,sizeof( Commutation) );
    ClearMemRpt((short unsigned *) &SysState,sizeof( SysState) );

    ClearMemRpt((short unsigned *) &CanSlaveInQueue,sizeof( CanSlaveInQueue) );
    ClearMemRpt((short unsigned *) &CanSlaveOutQueue,sizeof( CanSlaveOutQueue) );
    ClearMemRpt((short unsigned *) &SlaveSdo,sizeof( SlaveSdo) );
    ClearMemRpt((short unsigned *) &UartSwBuf,sizeof( UartSwBuf) );
    ClearMemRpt((short unsigned *) &MasterBlaster,sizeof( MasterBlaster) );
    ClearMemRpt((short unsigned *) &CfgDirty[0],sizeof( CfgDirty) );
    ClearMemRpt((short unsigned *) &Correlations,sizeof( Correlations) );
    ClearMemRpt((short unsigned *) &FlashProg,sizeof( FlashProg) );

    pUIdentity   = ( union UIdentity *) Sector_AppIdentity_start ;
    pUNVParams   = ( union UNVParams *) Sector_AppParams_start ;
    NVParamsPassWord = 0 ;

    // Test identity
    ApplyIdentity(pUIdentity,pUNVParams);

    Correlations.fPtrs[0] = &ClaState.Encoder1.UserPos ;
    Correlations.fPtrs[1] = &ClaState.CurrentControl.ExtCurrentCommand ;
    Correlations.fPtrs[2] = &ClaState.CurrentControl.ExtIq ;
    Correlations.nCyclesInTake = 1 ;
    Correlations.nSamplesForFullTake = 10 ;
    Correlations.nWaitTakes = 1 ;
    Correlations.nSumTakes = 1 ;

    CanSlaveInQueue.nQueue = N_SLAVE_QUEUE ;
    CanSlaveOutQueue.nQueue = N_SLAVE_QUEUE ;

    SlaveSdo.SlaveBuf = (unsigned long* ) SlaveSdoBuf ;
	
#ifdef SLAVE_DRIVER	
    SysState.pOutMsgBufTx = &SysState.OutMsgBuf;

    InitFsiService() ;

    SysState.bCanTxCounter = 0 ;

#endif 
    SysState.Timing.Ts = CUR_SAMPLE_TIME_USEC * 1e-6 ;
    SysState.Timing.TsTraj = SysState.Timing.Ts ;
    SysState.Timing.TsInTicks = (CPU_CLK_MHZ * CUR_SAMPLE_TIME_USEC  ) ;

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

    ProjId = 0xffff ; // Ilegal
    InitControlParams();
	
    InitLinService();


    FlashCalib =  Sector_AppCalib_start ;

    InitSystemTimer( &SysTimerStr);

    ClaState.SystemMode = E_SysMotionModeManual ; // Be optimistic



    // Just in case
    InitRecorder(FAST_INTS_IN_C, FAST_TS_USEC, SDO_BUF_LEN_LONGS);

#ifdef PVTEnabled
    InitPVT() ;
#endif
    SysState.PT.Init = 0 ;

    DealCalibration (1) ; // Deal with calibration
    if  (ReadCalibFromFlash ( (long unsigned*) &CalibProg.C.Calib ,   FlashCalib   ) )
    {
        SysState.Mot.NoCalib = 1 ;

        LogException( EXP_FATAL , exp_missing_calib);
        SetSystemMode(E_SysMotionModeFault);

        ClearMemRpt( (short unsigned * ) &CalibProg.C.Calib , sizeof(struct CCalib)  ) ;

#ifdef ON_BOARD_GYRO
        //ClaState.SystemMode =  ; // Born in fault ....
        for ( cnt = 0 ; cnt < 4 ; cnt++ )
        {
            Calib.qImu2ZeroENUPos[cnt]  = Geom.DefaultqImu2ZeroENUPos[cnt];
        }
        ProcessIMUTransformation() ;
#endif
    }


    SysState.Mot.CurrentLimitFactor = 1 ;

    InitTimeOuts();

    ClaState.Timing.TsInTicks = CUR_SAMPLE_TIME_CLOCKS  ;
    ClaState.Timing.InvMhz = 1.0f / (float) CPU_CLK_MHZ ;


    InitControlParams() ;

    //ProgramProfiler(&SysState.Profiler[cnt] , ControlPars.MaxSpeedCmd , ControlPars.MaxAcc , ControlPars.MaxAcc , ControlPars.ProfileTau , 0 ) ;
    ResetProfiler ( &SysState.Profiler, SysState.PosControl.PosFeedBack , ClaState.Encoder1.UserSpeed , 1 ) ;

    //SysState.Mot.GyroNotReady = 1 ;


    SysState.Debug.GRef.Type  = E_S_Fixed ;
    SysState.Debug.TRef.Type  = E_S_Fixed  ;

    InitHallModule() ;

    InitPosPrefilter() ;

#ifndef NEW_WHEEL_GEAR_RATIO
    SysState.EncoderMatchTest.bTestEncoderMatch = 1 ; // Do encoder matching test
#endif

/*
    PosRange = __fmax( ControlPars.MaxPositionCmd - ControlPars.MinPositionCmd, 0.0001f) ;
    PosPrefilter.InPosScale = 1073741824.0f / PosRange ; // 2^30  /PosRange
    PosPrefilter.OutPosScale = 9.313225746154785e-10f * PosRange ;
    PosPrefilter.OutSpeedScale = PosPrefilter.OutPosScale / (CUR_SAMPLE_TIME_USEC*1e-6f) ; // PosRange * 2^(-30)
*/
}

void InitPosPrefilter(void)
{
    ClearMemRpt((short unsigned *) &PosPrefilter,sizeof( PosPrefilter) );
    PosPrefilter.b01 = 131453 ;
    PosPrefilter.b02 = 189276 ;

    PosPrefilter.a21 = 2114678849 ;
    PosPrefilter.a22 = 2114346702 ;
}





short SetSystemMode(short  x)
{
    short RetVal  ;

    if ( x == ClaState.SystemMode )
    { // Nothing to do
        return 0 ;
    }

    RetVal = 0 ;
    // Test reset ability
    if (  ClaState.SystemMode == E_SysMotionModeFault )
    {
        if ( IsResetBlocked() )
        {
            RetVal = ERR_SERIOUS_ERROR ;
        }
        else
        {
            SysState.Mot.MotorFault = 0 ;
        }
    }

// Transition to automatic - only if calibrated
    if ( x == E_SysMotionModeAutomatic)
    {
        if ( SysState.Mot.NoCalib )
        {
            RetVal = ERR_CALIBRATION_MISSING ;
        }
        if ( DBaseConf.IsValidDatabase == 0 )
        {
            RetVal = ERR_IDENTITY_MISSING ;
        }
    }
    else
    {
        SysState.SteerCorrection.bSteeringComprensation  = 0 ;
    }

    if ( RetVal)
    { // IF failed then the next mode is FAULT
        x = E_SysMotionModeFault ;
    }

//    short unsigned mask ;
    if ((x <= E_SysMotionModeAutomatic) && ( x >= E_SysMotionModeSafeFault) )
    { // On mode change , nothing can execute
        if ( x == E_SysMotionModeFault )
        {
            ClaState.MotorOnRequest = 0 ; // Kill Cla
            SysState.Mot.BrakeControlOverride = 0 ;
            SysState.Mot.QuickStop = 1;
        }


        if ( x == E_SysMotionModeAutomatic)
        {
            if ( SysState.Mot.LoopClosureMode <= E_LC_OpenLoopField_Mode )
            {
                LogException( EXP_SAFE_FATAL , exp_auto_mode_requires_closedloop);
            }
            /*
            if ( ClaState.MotorOnRequest || ClaState.MotorOn )
            {
                LogException( EXP_SAFE_FATAL , exp_auto_mode_transition_requires_motoroff);
            }
            */
        }

        if ( ClaState.SystemMode == E_SysMotionModeFault )
        {
            SetMotorOff(E_OffForFinal) ;
            SysState.Status.DisableAutoBrake |= 1 ;
            HallDecode.Init = 0 ;
        }

        if ( ClaState.SystemMode == E_SysMotionModeAutomatic)
        { // Changing from automatic
            SysState.Mot.CurrentLimitFactor = 1 ;
            SysState.Mot.QuickStop = 1;
        }

        if ( ClaState.SystemMode == E_SysMotionModeSafeFault )
        {
            SysState.Mot.QuickStop = 1;
        }

        ClaState.SystemMode = x ;
        SysState.CBit.bit.SystemMode = ((short) x ) & 7 ;
//        RestoreInts(mask) ;
    }
    if( RetVal)
    {
        SysState.Mot.MotorFault = 1 ;
    }
    return RetVal  ;
}


volatile long unsigned JtagPassCopy ;
extern const long unsigned JtagPass[] ;


void CheckSusiMode(void)
{
    if ( SysState.SusiMode)
    {
        SysState.Mot.LoopClosureMode = E_LC_Torque_Mode ; // Default
        SysState.Mot.ReferenceMode = E_RefModeAnalogRef ;
    }
}


void main(void)
{
    short unsigned si ;
    DINT ;
    JtagPassCopy = JtagPass[0] + JtagPass[1] ; // Just for compiler not to delete these variables as unused

    // Copy program and initialized data from flash to RAM, and establish CLA resources
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_CLA1) ;
    memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize);
    initCLAMemory();

    InitAppData();

    InitPeripherals() ;

    CfgBlockTransport(); // Only after CAN ID is known

    setupPwmParams() ;
#ifndef SLAVE_DRIVER
    SetBootUpMessage();
#endif
    SysState.SusiMode = 1 ;
    CheckSusiMode();



    // Set the control parameters
    if ( InitControlParams() == 0 )
    {
        for (  si = 0 ; si < nConfigPars ; si++)
        {
            CfgDirty[si>>3] |= (1L <<(si&31) ) ;
        }
        SysState.ConfigDone = 1 ;
        if ( TestCfgProgramming()  )
        {
            SysState.ConfigDone = 0 ;
        }

    }


    // We don't support lower hardware revision no more

    SetupIsr();

    EINT ;


    // If there is a potentiometer to home do it now
    if ( (ControlPars.UseCase & PROH_CONFIG_APPTYPES ) == PDO3_CONFIG_ROTARY_POT )
    {
        // Pause for letting interrupt cycles for potentiometer stabilization

        WaitStamSec(0.1f) ;
        ImmediateHoming() ;
    }


     while(1)
    {
        IdleLoop() ;
        SysCtl_serviceWatchdog() ;
    }
}

void FlushCanQueues(void)
{
    short unsigned mask ;
    mask = BlockInts() ;
    SlaveSdo.Status = 0 ;
    CanSlaveInQueue.nPut = 0 ;
    CanSlaveInQueue.nGet = 0 ;
    SysState.MCanSupport.PdoDirtyBoard = 0 ;
    CanSlaveOutQueue.nGet = 0 ;
    CanSlaveOutQueue.nPut = 0 ;
    RestoreInts(mask) ;
}


void SetProjectId(void)
{
    if ( DBaseConf.IsValidDatabase  )
    {
        ProjId = pUNVParams->NVParams.ProjIndex ;
    }

    if (ProjId >= PROJ_TYPE_LAST)
    {
         ProjId = PROJ_TYPE_UNDEFINED ;
    }
    CanId = ProjSpecificData[ProjId].CanId ;

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


void CfgBlockTransport(void)
{
    SysState.BlockUpload.InBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.InBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.StartBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.StartBlockMsg.dLen  = 8 ;
    SysState.BlockUpload.StartBlockMsg.data[0] = 0x64 + (0x2006L<<8) + (1L<<24);

    SysState.BlockUpload.EndBlockMsg.cobId = (0xb<<7)+CanId  ;
    SysState.BlockUpload.EndBlockMsg.dLen  = 8 ;

    SysState.BlockUpload.AbortBlockMsg.cobId = (0xb<<7)+CanId  ;
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
            ClearMemRpt( (short unsigned * ) &CalibTmp , sizeof(Calib)  ) ;
            RetVal = -1 ;
        }
        break ;
    case 2:
        CalibTmp = CalibProg.C.Calib ;
        break ;
    }


    mask = BlockInts( ) ;
    Calib = CalibTmp ;
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


