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

#ifdef ON_BOARD_BRAKE
void setupDac(void);
#endif

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

void setupEcap(void);
void WaitUsec( long unsigned usec );

#ifdef ON_BOARD_CAN
void setupGpioCAN(void);
#endif

// MainApp
void InitAppData(void);
short CheckAlign ( short unsigned * ptr , short unsigned pw );
short SetProjectSpecificData( short unsigned proj );
void CfgBlockTransport(void);
void InitPosPrefilter(void);

// ObjectDict
short unsigned GetOdSize( void ) ;
short GetObjIndex(short unsigned TargetIndex , struct CObjDictionaryItem **pObject, const struct CObjDictionaryItem *Dict);
short IsInRange( float *x , float xmax , float xmin );
long unsigned GetManufacturerSpecificCode (long code);
void ResetConfigPars(void) ;
short TestCfgProgramming(void);

// PinMux.c
void setupGpio(void);
void  SetAdcMux(void);

// PWM drive
void KillMotor(void) ;
void SetupPWM(uint32_t base,unsigned short pwmPeriod_usec );
void SetupPwmPacer(uint32_t base,unsigned short pwmPeriod_usec );
void setupPwmParams(void);
void ClearTrip(void) ;
void SetGateDriveEable(short in);

// PrjMCAN
#ifdef ON_BOARD_CAN
void setupMCAN(void);
#endif
void RtCanService(void) ;
short SetMsg2HW(struct CCanMsg  *pMsg );
void SetBootUpMessage( void );
void SetExtendedBootUpMessage( void );
void RTDealBlockUpload(void);
void DealBlockDloadRt( struct CCanMsg *pMsg);
void BlockUploadConfirmService( struct CCanMsg *pMsg) ;


// Macros
inline
float CenterDiffPu( float x, float y )
{
    return ( __fracf32 ( __fracf32 ( x - y + 0.5f ) + 1 ) - 0.5f ) ;
}



#endif /* APPLICATION_FUNCTIONS_H_ */
