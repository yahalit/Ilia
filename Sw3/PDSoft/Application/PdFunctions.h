#ifndef DEF_PD_FUNCTIONS_DEFINED
#define DEF_PD_FUNCTIONS_DEFINED

//#include "Dynamixel.h"

// Application level functions 
void InitAppPD(); 

// Manipulator feedback and control
void SetAxisFeedback ( short unsigned cnt ,  float Pos , float Speed , short Err , short unsigned mon );
void SetMonRequest( short unsigned cnt , short unsigned request );
void UpdateManipulatorControl ( short unsigned UpdAxis , short unsigned * pMonRequest , float *pSpeedCmdRadSec , float * pTargetRad );
void SetManipulatorIndividualRef( short unsigned UpdAxis , float PRef  , short unsigned reset);
void SetManipulatorIndividualMon( short unsigned UpdAxis , short MotorOn   ) ;
void SetManipulatorMode( short mode );
void ProgramManipulator (  short LaserValid , float Xref , float Ypack , float Dlaser ,  short unsigned mon );
void GetManipulatorProgram (  short * LaserValid ,  float *Xref ,  float *Ypack , float * Dlaser ,  short unsigned *mon );
void ProgramGripperMotion ( float value );

// Interpreter and recorder
//////////////////////////////



float GetUnalignedFloat( short unsigned *uPtr);
long GetUnalignedLong( short unsigned *uPtr);
void CopyLong ( short unsigned * src , short unsigned * dst );
float Invsqrt(float x); // Inverse sqrt (returned 0 if operand is 0)
void ReadAngle( short unsigned al , long * pLong );// Read int angle into float
		// [0] = frac, [1] = sin , [2] = cos array

void RtCanHandler(void);
short InterpretCmd ( short unsigned *rec );
void CanSlavePD( void);


// CAN handeling
//////////////////////////////
void GetCanState(volatile long unsigned *pCan);
void WaitIfRdy(volatile long unsigned * if_address);
void ReadMboxNoKill (volatile long unsigned * if_address, short box);
void ReadMboxNormal (volatile long unsigned * if_address, short box);
long unsigned 	GetReadyTransmitters(volatile long unsigned * pCan) ;


// Low level and initialization
//////////////////////////////
void InitPeripherals(void);
void DealCalibrationPD (short unsigned rd);
void InitEbss(void) ; // Initialize the Ebss with zeroes
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
void InitEcap1ForTicker(void); // Initialize ECAP1 as system ticker
void InitCpuTimers12(void) ; // Timers initialization
void InitAdc(void) ; // ADC initialization
void InitSpiApp(void) ; // Initialize the SPI communications app
void InitSpi4Host(void) ; // Initialize the SPI peripherial for host comm
void InitCan(void); // Initialize the CAN controllers
long unsigned GetUsec(); // Get usec timer

#define IND_PUMP_LASER  1
#define IND_PUMP_1  2
#define IND_PUMP_2  3
void SetAirPump( short unsigned index , short unsigned On );

short unsigned ArePumpsOn (void);
short IsMushroomRelease( ) ;

void SetChakalaka(  short unsigned On );
void SetFrontCamLight(  short unsigned On );
void SetRearCamLight(  short unsigned On );

short unsigned GetLimits( );
void SetRelayDrv(  short unsigned index , short unsigned On );
long unsigned GetOpenDrainStat();

void SetManError ( short unsigned exp , short unsigned src );

void ClearMemRpt( short unsigned * dst , short unsigned n ) ;
short IsNotInRange( float *x , float xmax , float xmin );

// Flash
short ReadFlashStruct ( long unsigned *Dest , long unsigned *Src , short unsigned len  );
void DealCalibrationPD (short unsigned rd);


unsigned short InitPwm4Converter( short unsigned PwmId ,  short usecFrame) ;
unsigned short InitPwm4OpenCollector(  short unsigned PwmId , short unsigned OutIndex , short usecFrame );
void EnableStarterGateDrive( short value );

void SetupMuxGpio(void);
//void Set12VRs485Tx ( short unsigned on );
//void Set24VRs485Tx ( short unsigned on );
void ActivateFan(short unsigned val )  ;

// System and exceptions
long unsigned LogExceptionPD ( short unsigned ID ,  short fatality , long unsigned exp );


// SPI communication
short RxSpiMessage( short unsigned * RxBuf);

// Motion queue handeling
short CheckQ( short unsigned ind);
short CheckQIndex( short unsigned ind);
short placeInQueue ( short unsigned * uPtr );

// Robot level
void CanStateMng(void) ; //!< CAN State manager
short IdleCanProc (void ); //!< Idle processing of CAN traps



void ApplyAdcCorrections(void) ;

void DealCalibrationManipPD (short unsigned rd);

#endif
