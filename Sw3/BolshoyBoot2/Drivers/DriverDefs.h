/*
 * DiverFuncs.h
 *
 *  Created on: Aug 10, 2021
 *      Author: Yahali
 */

#ifndef DRIVERS_DRIVERDEFS_H_
#define DRIVERS_DRIVERDEFS_H_

#include "F28x_DeviceConfig.h"

// System utilities
short unsigned Enter_CriticalSection () ;
void Leave_CriticalSection(short unsigned mask);
short InitFixedPeripherals(void);



// Timer utils
//long  UtilGetTimeUsec( void );
short UtilIsTimeOut(  long FinalTime  );
long UtilWaitTimeUsec ( long value ) ;
short IsTimePassed(long tstart,long tend);// for CLA only
void WaitTimeUsec(  long WaitTime ) ;

/// CPU_TYPE == 283371

unsigned long GetUsecTmrCntr(void);


#define     Hwi_disable     Enter_CriticalSection
#define     Hwi_restore     Leave_CriticalSection



#undef EXTERN_TAG
#ifdef SYS_LOW_LEVEL_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif

#undef EXTERN_TAG

#ifdef WIN32
typedef unsigned short Uint16 ;
typedef unsigned long Uint32 ;
#endif
void MemCopy(Uint16 *SourceAddr, Uint16* SourceEndAddr, Uint16* DestAddr);
void MemClear( Uint16* DestAddr,Uint16* DestEndAddr);


// Timer
void InitTimer0(void) ;
void    InitTimer1_usec( void );
// GPIO
void InitGpio(void) ;
// SysCtrl pod nash kontrol
void InitFlash(void);

// PieCtrl
void InitPieCtrl(void);
void InitPieVectTable(void);

// Watchdog
void DisableDog();

// For Dual-CPU
void ReleaseFlashPump(void);
void SendIpcFlag(Uint16 flag);

long GetLcpClk(void);
void InitPll(void);

#endif /* DRIVERS_DRIVERDEFS_H_ */
