/*
 * Functions.h
 *
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */

#ifndef APPLICATION_FUNCTIONS_H_
#define APPLICATION_FUNCTIONS_H_

// ADC
void SetupADCs(void);
void setupCMPSSs(void);

#ifdef ON_BOARD_BRAKE
void setupDac(void);
#endif
short OutBrakeVolts( float volts  ) ;

// AscIsr
__interrupt void AdcIsr(void);
#ifdef SLAVE_DRIVER
__interrupt void Timer0Interrupt( void);
#endif
void ResetRefGens(void);

// AsmUtil
void CopyMemRpt( short unsigned * dst , short unsigned * src , short unsigned n ) ;
void ClearMemRpt( short unsigned * dst , short unsigned n ) ;
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
long GetUnalignedLong(short unsigned *uPtr);
float GetUnalignedFloat(short unsigned *uPtr);


// CAN Slave
long unsigned  NoSuchGetObject( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  NoSuchSetObject( struct CSdo * pSdo ,short unsigned nData);
void CanSlave (void);
short PutCanSlaveQueue( struct CCanMsg * pMsg);

// Commutation
short GetCommAnglePu(long Encoder);
short GetHallComm(void);
void InitHallModule(void);

// Controllers
void MotorOnSeq(void);
void MotorHoldSeq(void);
void MotorOffSeq(void);
void ArmAutomaticMotorOff(void);
short SetMotorOn(short OnCondition) ;
void SetMotorOff(enum E_MotorOffType  Method ) ;
void SafeSetMotorOff(void) ;
long unsigned SetLoopClosureMode( short us );
long unsigned SetReferenceMode( short us);
void ResetSpeedController(void) ;
void SwitchMotionProfile (void);
float  RunBiquads(float CandR, float cursat);
float PosPrefilterMotorOn(float y , float *yf );
void PosPrefilterMotorOff(float y);
void DecodeBhCmdValue(float f );
void DecodeBhCW(long unsigned data);


#ifdef ON_BOARD_ENCODER
// EncoderDrive
void ReadEncPosition1( void);
void setupQEP(void) ;
#endif
void ProcessEncoderData(struct CEncoder *pEnc, long pos ) ;

// Homing.c
long HomeProfiler(void);
long unsigned SetAbsPosition( float pos);
long unsigned InitHomingProc( void );
long ImmediateHoming(void);
long HomingHere(float f );

// Idle loop
void IdleLoop(void);
void DealFaultState(void);

// FlashDrv
short PrepFlash4Burn(void);
short EraseSector(unsigned long SecAddress );
short ProgramPageAutoECC( unsigned short * , long unsigned, long unsigned buflen);

#ifdef ON_BOARD_GYRO
// Gyro.c
void setupSpi(void);
void ReadGyro(short unsigned DataReady);
#endif

#ifdef SLAVE_DRIVER
// FSIDrv
void InitFsiService(void);
void SetupFSI(void);
void FsiRtService(void);
#endif


// LowLevel
void InitPeripherals(void) ;
void SetupIsr(void);
void PauseInts(void);
void UnpauseInts(void);
float GetTemperatureFromAdc(float volts);

void initCLAMemory(void);
void initCLA(void);
void SetClaAllSw(void);
void setupEcap(void);
void WaitUsec( long unsigned usec );
void setupHallInputs(void) ;

#ifdef ON_BOARD_CAN
void setupGpioCAN(void);
#endif

// MainApp
void InitAppData(void);
short SetSystemMode(short  x);
short InitControlParams(void) ;
short DealCalibration (short unsigned rd);
short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   );
short CheckAlign ( short unsigned * ptr , short unsigned pw );
short SetProjectSpecificData( short unsigned proj );
void CfgBlockTransport(void);
void InitPosPrefilter(void);
short ApplyIdentity(union UIdentity * pId, union UNVParams *pPars);
void SetProjectId(void);
void FlushCanQueues(void);
short  SetMotionCommandLimits(void) ;
void CheckSusiMode(void) ;

// ObjectDict
short unsigned GetOdSize( void ) ;
short GetObjIndex(short unsigned TargetIndex , struct CObjDictionaryItem **pObject, const struct CObjDictionaryItem *Dict);
short IsInRange( float *x , float xmax , float xmin );
long unsigned GetManufacturerSpecificCode (long code);
void ResetConfigPars(void) ;
short TestCfgProgramming(void);
short IsBufferUsedForProgramming(void);
long unsigned TestCfgPar( const struct CFloatConfigParRecord *pPar , long rawvalue );

// PinMux.c
void setupGpio(void);
void  SetAdcMux(void);
void SetAxisByIdVolts(void);

// PWM drive
void KillMotor(void) ;
void SetupPWM(uint32_t base,unsigned short pwmPeriod_usec );
void SetupPwmPacer(uint32_t base,unsigned short pwmPeriod_usec );
void setupPwmParams(void);
void ClearTrip(void) ;
void SetGateDriveEable(short in);

// PrjLin
void setupDMA(void);
void setupLin(void);
void InitLinService(void);
short Put2TxBuf( short unsigned buf[] , short unsigned len  ) ;
void TransmitTxBuf(void) ;
void TxSingleChar(short unsigned c );
void UartService(void) ;

// PrjMCAN
#ifdef ON_BOARD_CAN
void setupMCAN(void);
#endif
void RtCanService(void) ;
short SetMsg2HW(struct CCanMsg  *pMsg );
short SetPDO2HW(struct CCanMsg  *pMsg , short unsigned nPdo );
void SetBootUpMessage( void );
void SetExtendedBootUpMessage( void );
void RTDealBlockUpload(void);
void DealBlockDloadRt();
void BlockUploadConfirmService( struct CCanMsg *pMsg) ;


// PT Driver
void InitPVT(void);
short StayInPlaceDriver();
void PVNewMessageDriver( float PosRef  ) ;
short PVTRunTimeDriver(long unsigned tUsec);
void PVResetTraj(void) ;
short PTRunTimeDriver(void);
// Recorder
short unsigned GetRecorderStat(void) ;
float *  GetFSignalPtr( short si );
void SnapIt( short unsigned * pSnap ) ;

// SelfTest
void IdleCbit(void);
long unsigned LogException (   short fatality , long unsigned exp );
short IsResetBlocked(void) ;

// SpeedProfiler
short SpeedProfiler( void ) ;

// Testing
void RefGen(struct  CRefGenPars *pPars , struct CRefGenState *pState , float dt );
void GetSinCorrelation(void);


// Macros
inline
float CenterDiffPu( float x, float y )
{
    return ( __fracf32 ( __fracf32 ( x - y + 0.5f ) + 1 ) - 0.5f ) ;
}

/*
 * Translate an angle that may be in the range [-1 to 1] to short integer report of 1/2^15 rotation
 */
inline
unsigned short Angle2Short( float f_in)
{
    union
    {
        long l ;
        unsigned short us[2] ;
    }u;
    float f ;
    f = f_in * 0.318309886183791f ; // 1/pi
    u.l = (long) ( __fmax( __fmin( f , 0.999938964843750f ) , -0.999938964843750f ) * 32768.0f ) ;
    return u.us[0] ;
}

/*
 * Translate position that may be in the range [-3m to 3m] to short integer report of 1/2^14 m
 */
inline
unsigned short Distance2Short (float f)
{
    union
    {
        long l ;
        unsigned short us[2] ;
    }u;
    u.l = (long) ( __fmax( __fmin( f ,2.5f ) , -2.5f ) * 13000.0f ) ;
    return u.us[0] ;
}

#endif /* APPLICATION_FUNCTIONS_H_ */
