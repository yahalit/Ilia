#ifndef DEF_FUNCTIONS_DEFINED
#define DEF_FUNCTIONS_DEFINED

// Application level functions
void InitApp();
short TestProgramValid (void);

// Synchronization
//////////////////////////////////////
long unsigned BlockInts() ;
void RestoreInts( long unsigned sr );


// Interpreter and recorder
//////////////////////////////
void InitRecorder(void);
short EmptyRecorderTrigger(void);
short ImmediateRecorderTrigger(void);

long GetUnalignedLong( short unsigned *uPtr);
void CopyLong ( short unsigned * src , short unsigned * dst );
float Invsqrt(float x); // Inverse sqrt (returned 0 if operand is 0)
void ReadAngle( short unsigned al , long * pLong );// Read int angle into float
        // [0] = frac, [1] = sin , [2] = cos array

short InterpretCmd ( short unsigned *rec );


// CAN handeling
//////////////////////////////
void GetCanState(volatile long unsigned *pCan);
void WaitIfRdy(volatile long unsigned * if_address);
void ReadMboxNoKill (volatile long unsigned * if_address, short box);
void ReadMboxNormal (volatile long unsigned * if_address, short box);
long unsigned   GetReadyTransmitters(volatile long unsigned * pCan) ;
long SendSdo2PD ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes );


// Motion
/////////////////////////////////
short DirectSetCanAxisCommand( short unsigned LogicId , long value );
long DirectGetCanAxisCommand (short unsigned LogicId ) ;


// Low level and initialization
//////////////////////////////
void InitPeripherals(void);

void InitEbss(void) ; // Initialize the Ebss with zeroes
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
void InitEcap1ForTicker(long unsigned us ); // Initialize ECAP1 as system ticker
void InitCpuTimers12(void) ; // Timers initialization
void InitAdc(void) ; // ADC initialization
void InitCan(void); // Initialize the CAN controllers
long unsigned GetUsec(); // Get usec timer
void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags );
void LedControlInit( void );
void SetLedPwm( short unsigned ind , short unsigned PWM );
void SetupMuxGpio(void);
short unsigned SciTester( short unsigned ind  , short unsigned c);

void EnableDog(void);

// General math
float Yfabs( float );
float Ysin( float) ;
float Ycos( float) ;
float aYsin( float x) ;
short Ysign( float x ) ;
float mod2piS( float x );
float HYpot( float x , float y ) ;
short unsigned IsNear( float x , float y ) ;
float AngleItoF( short x );
short unsigned FtoAngle(float );


void CopyMemRpt( short unsigned * dst , short unsigned * src , short unsigned n ) ;
void ClearMemRpt( short unsigned * dst , short unsigned n ) ;
short unsigned IsEqualBinary ( void *p1 , void *p2 , short unsigned n ) ;

// System and exceptions
void CBit (void);

// SPI communication
short RxSpiMessage( short unsigned * RxBuf);
short PrepSpiMessage( short unsigned * TxBuf) ;

// Robot level
short IdleCanProc (void ); //!< Idle processing of CAN traps
void IdleTask (void) ; // Idle task


// Navigation
float Normalize( float *x , float *y , float * z );



void     InterpSciMessages(void) ;
long SciGetAck(short unsigned * buf , long MessageTime , short unsigned ctr, short unsigned IsSci );

void ForceAdc(void);
void InitTimeOuts ( void );
short GetPlcIn(void);

short EraseSector(unsigned long sector_start, long unsigned sect_len );

short PrepFlash4Burn(void);
void ReleaseFlashBurn(void);
short ProgramPageAutoECC( unsigned short * , long unsigned, long unsigned buflen);
void ObjectSlave ();

#endif
