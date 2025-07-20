/*
 * Functions.h
 *
 *  Created on: Jun 18, 2023
 *      Author: yahal
 */

#ifndef APPLICATION_FUNCTIONS_H_
#define APPLICATION_FUNCTIONS_H_


// AppMain
void InitAppData(void) ;
void  KillMotor(void);
void SetProjectId(void);
void FlushCanQueues(void);
short unsigned isProjIndexValid( short unsigned proj ) ;

// AdcDrv
void SetupADCs(void);
void setupDac(void);
short OutBrakeVolts( float volts  );
short EnableBrake(short ena);

// AsmUtil
void CopyMemRpt( short unsigned * dst , short unsigned * src , short unsigned n ) ;
void ClearMemRpt( short unsigned * dst , short unsigned n ) ;
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
long GetUnalignedLong(short unsigned *uPtr);
float GetUnalignedFloat(short unsigned *uPtr);


//BuiltInTest.c
void IdleCbit(void);


// ClbDrv
void setupCLB(void);

// CanSlave
void CanSlave (void);

// ECapDrv
void SetupEcap( void) ;
void EcapInterruptEna( void ) ;

// Encoders.c
void setupQEP2(void);
void setupQEP1(void);


// FlashDrv
short PrepFlash4Burn(void);
short EraseSector(unsigned long SecAddress );
short ProgramPageAutoECC( unsigned short * , long unsigned, long unsigned buflen);


// FSI Drv
void InitFsiService(void);
void SetupFSI(void);

// GpioDrv
void setupINPUTXBAR(void);
void setupGpio(void);
void setupGpioCAN(void);
void setupCLBXBAR(void);

// IdleLoop
void IdleLoop(void);

// LinDrv
void setupLin(void);
void setupDMA(void);
void InitLinService(void);
void TransmitTxBuf(void);
short Put2TxBuf( short unsigned buf[] , short unsigned len  );


// LowLevel.c
void InitPeripherals(void);
void SetupIsr(void);
void initCLAMemory(void);
void initCLA(void);
void SetClaAllSw(void);
void ResetHardwareSysTimer(void);
void MyInterrupt_initVectorTable(void);
void WaitUsec( long unsigned usec );
void PauseInts(void);
void UnpauseInts(void);


// MainApp
short InitControlParams(void);
short DealCalibration (short unsigned rd);
short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   );
short CheckAlign ( short unsigned * ptr , short unsigned pw );
void SetSystemMode(short  x);
void CfgBlockTransport(void);
short ApplyIdentity(union UIdentity * pId, union UNVParams *pPars);


// PrjMCAN
void setupMCAN(void);
void RtCanService(void);
short SetMsg2HW(struct CCanMsg  *pMsg );
short SetPDO2HW(struct CCanMsg  *pMsg , short unsigned nPdo );

void SetBootUpMessage( void );
void SetExtendedBootUpMessage( void );
void RTDealBlockUpload(void);
void DealBlockDloadRt();
void BlockUploadConfirmService( struct CCanMsg *pMsg) ;
short PutCanSlaveQueue( struct CCanMsg * pMsg);

// ObjectDict
short unsigned GetOdSize( void ) ;
short GetObjIndex(short unsigned TargetIndex , struct CObjDictionaryItem **pObject, const struct CObjDictionaryItem *Dict);
short IsInRange( float *x , float xmax , float xmin );
long unsigned GetManufacturerSpecificCode (long code);
void ResetConfigPars(void) ;
void SetMotorOff() ;
void SafeSetMotorOff();
long unsigned TestCfgPar( const struct CFloatConfigParRecord *pPar  , long rawvalue );
short SafeEraseFlash(long unsigned sect);
short SafeProgramFlash( short unsigned * Buffer_in , long unsigned FlashAddress , long unsigned buflen);


// PrjLin.h
void UartService (void);

// PwmDrive
void SetupPwmPacer(uint32_t base,unsigned short pwmPeriod_usec );

// Recorder
short unsigned GetRecorderStat(void);

// RTIsr
__interrupt void EcapIsr(void);
__interrupt void PwmIsr( void);
short unsigned InformDrivesCutOff();
void InformDrivesCutOn(short unsigned mask);

// SelfTest
void IdleCbit(void);
long unsigned LogException (   short fatality , long unsigned exp );


#endif /* APPLICATION_FUNCTIONS_H_ */
