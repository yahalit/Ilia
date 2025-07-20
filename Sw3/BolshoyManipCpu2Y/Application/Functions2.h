#ifndef DEF_FUNCTIONS_DEFINED
#define DEF_FUNCTIONS_DEFINED


#define fSat(x,s) (__fmax(__fmin(x,s),-(s)))
#define fMax(x,y) (__fmax(x,y))
#define fMaxMin(x,xmax,xmin) (__fmax(__fmin(x,xmax),xmin))

// Application level functions
void InitApp();

// Synchronization
//////////////////////////////////////
short unsigned BlockInts() ;
void RestoreInts( short unsigned sr );

void FastRtUS1SciHandler(void);
void FastRtUS2SciHandler(void);
void CopyFlashFuncs2Ram(void);
float GetUnalignedFloat( short unsigned *uPtr);
long GetUnalignedLong( short unsigned *uPtr);
void CopyLong ( short unsigned * src , short unsigned * dst );
float Invsqrt(float x); // Inverse sqrt (returned 0 if operand is 0)
void ReadAngle( short unsigned al , long * pLong );// Read int angle into float
        // [0] = frac, [1] = sin , [2] = cos array
void InstallAxes(void);

short PowerOnSetup(void);
void CANStateMachine ( void );

short InterpretCmd ( short unsigned *rec );
void    UpdateIsrTimer( void) ; // Update real time usec and msec and sec timer

long unsigned  GetBitStatusBody( unsigned long * data , short unsigned si );
short OperSyncReport( void );
// Low level and initialization
//////////////////////////////
short InitPeripherals(void);

void InitEbss(void) ; // Initialize the Ebss with zeroes
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
void InitEcap1ForTicker(long unsigned us ); // Initialize ECAP1 as system ticker
void InitCpuTimers12(void) ; // Timers initialization
void InitAdc(void) ; // ADC initialization
void InitCanB(void);// Initialize the CAN controllers
long unsigned GetUsec(); // Get usec timer
void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags );
void ApplyLaser();
void SetupMuxGpio(void);
short unsigned SciTester( short unsigned ind  , short unsigned c);
void TapeArmGetManipulatorLimits (float *x1_out, float *y1_out , float *ymin_out , float *ymax_out  );
// General math
float Yfabs( float );
float Ysqrt( float) ;
float Ysin( float) ;
float Ycos( float) ;
float aYcos( float x) ;
float aYsin( float x) ;
short Ysign( float x ) ;
float Yatan2 ( float x , float y );
float mod2piS( float x );
float HYpot( float x , float y ) ;
float AngleItoF( short x );
short unsigned FtoAngle(float );

void ManageWheelArmPin(void) ;

void CopyMemRpt( short unsigned * dst , short unsigned * src , short unsigned n ) ;
void ClearMemRpt( short unsigned * dst , short unsigned n ) ;
short unsigned IsEqualBinary ( void *p1 , void *p2 , short unsigned n ) ;

// System and exceptions
void IdleCbitResponse(void);
void IdleCbit(void);

// SPI communication
short RxSpiMessage( short unsigned * RxBuf);
short PrepSpiMessage( short unsigned * TxBuf) ;

// Robot level
void MotionStateMng(void) ; //!< CAN State manager
short IdleCanProc (void ); //!< Idle processing of CAN traps
void IdleTask (void) ; // Idle task


// Navigation
float Normalize( float *x , float *y , float * z );


void CanCBit(void);

short Copy4Transmission(short unsigned * uPtr, short unsigned length , short opcode , long unsigned time );
void SetSpiInterpretError(short ErrCode , short unsigned txcntr );
void FastRtUsSciHandler(volatile struct SCI_REGS *pSci, volatile struct CUsMessageStr *pMsg,short unsigned *TxBuf,short unsigned *RxBuf, long unsigned portmask );
short IsManipulatorWell (void);

void ForceAdc(void);
void InitTimeOuts ( void );
short GetPlcIn(void);

short EraseSector(unsigned long sector_start, long unsigned WordLen );

short PrepFlash4Burn(void);
void ReleaseFlashBurn(void);
short ProgramPageAutoECC( unsigned short * , long unsigned, long unsigned buflen);

void CLA_configClaMemory(void);
void CLA_initCpu1Cla1(void);


void InitPwm4Pacer(void);
void InitEcap5AsUsecCounter (void);

short ReadSynAxesStat(struct CDynamixelProt2 *pProt, struct CDynamixelStat pDynArr[], short unsigned cnt);

// Interpreter and recorder
//////////////////////////////

float GetUnalignedFloatLittle( short unsigned *uPtr);
long GetUnalignedLongLittle( short unsigned *uPtr);

void CopyLong ( short unsigned * src , short unsigned * dst );
float Invsqrt(float x); // Inverse sqrt (returned 0 if operand is 0)
void ReadAngle( short unsigned al , long * pLong );// Read int angle into float
        // [0] = frac, [1] = sin , [2] = cos array

void RtCanHandlerTx(void);

short InterpretCmd ( short unsigned *rec );
void    UpdateIsrTimer( void) ; // Update real time usec and msec and sec timer


// Motion
/////////////////////////////////

void InitCpuTimers12(void) ; // Timers initialization
void InitAdc(void) ; // ADC initialization
void InitCan(void); // Initialize the CAN controllers
long unsigned GetUsec(); // Get usec timer
void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags );
void SetupMuxGpio(void);

short unsigned SciTester( short unsigned ind  , short unsigned c);

// Flash

// System and exceptions
long unsigned LogException ( short unsigned ID ,  short fatality , long unsigned exp );
void ClearExceptions( void );

short GetExpFatality(void);

void RunDynamixelSystem();
void InitManipulator( void );

// Robot level
short IdleCanProc (void ); //!< Idle processing of CAN traps
void IdleTask (void) ; // Idle task

void ObjectSlave (void);
// Navigation
float Normalize( float *x , float *y , float * z );
long unsigned GetManufacturerSpecificCode(long code);


long  unsigned   ActivateProgrammedRecorder(void);


void LogPackageFailure(short NextState);


short IsSteerReady(void);

void SlowHostSciHandler(void);
short BuildStatusReportBody ( short unsigned * uPtr , short unsigned type );

long SetVelocityMode(void);

void RtRecorder(void ) ;
//void FastRtUS1SciHandler(void);
//void FastRtUS2SciHandler(void);
void DealDynamixel24 (void);
void DealDynamixel12 (void);

short unsigned ArePumpsOn (void);


short CanExceptionKill( struct CCanTrap * me );
short CanExceptionNothing( struct CCanTrap * me );
short ProcessEmergency(struct CCanMsg *pMsg );
void SetMotorOffAll(void);


// Manipulator feedback and control
void SetAxisFeedback12 ( short unsigned cnt ,  float Pos , float Speed , short Err , short unsigned mon );
void SetAxisFeedback24 ( short unsigned cnt ,  float Pos , float Speed , short Err , short unsigned mon );
void SetMonRequest12( short unsigned cnt , short unsigned request );
void SetMonRequest24( short unsigned cnt , short unsigned request );
void UpdateManipulatorControl24 ( short unsigned UpdAxis , short unsigned * pMonRequest , float *pSpeedCmdRadSec ) ; // , float * pTargetRad );
void UpdateManipulatorControl12( short unsigned updAxis  );
void SetManipulatorIndividualRef12( short unsigned UpdAxis , float PRef  );
void SetManipulatorIndividualRef24( short unsigned UpdAxis , float PRef  , short unsigned reset);
void SetManipulatorIndividualMon12( short unsigned UpdAxis , short MotorOn   ) ;
void SetManipulatorIndividualMon24( short unsigned UpdAxis , short MotorOn   ) ;
void SetManipulatorMode( short mode );
void ProgramManipulator (  float Xref , float Ypack  ,  short unsigned mon );
void GetManipulatorProgram (  short * LaserValid ,  float *Xref ,  float *Ypack , float * Dlaser ,  short unsigned *mon );
void ProgramGripperMotion ( float value );
void InitDynState( short unsigned net , const struct CDynControlTableLine * pTable );
void ResetManRecovery24 ( void);
void ResetManRecovery12 ( void);
void SetManError ( short unsigned exp , short unsigned src );
void SetLaserRange( float laserRange , short laserValid );
float GetLpClk(void);
void  ApplyManCalibration(void);
long DealCalibrationManip (short unsigned rd);
long ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src_in   );


void ResetManipulatorMotors();
void SetManipulatorControlWord( short unsigned cw );

short unsigned GetTypeLength( short unsigned data_type) ;
struct CObjDictionaryItem
{
    short Index  ;
    short bytelen ;
    long unsigned  (*SetFunc)( struct CSdo * pSdo ,short unsigned nData) ;
    long unsigned  (*GetFunc)( struct CSdo * pSdo ,short unsigned *nData)  ;
};
typedef long unsigned  (*SetDictFunc)( struct CSdo * pSdo ,short unsigned  nData);
typedef long unsigned  (*GetDictFunc)( struct CSdo * pSdo ,short unsigned *nData);

long unsigned  NoSuchGetObject( struct CSdo * pSdo ,short unsigned *nData);
long unsigned  NoSuchSetObject( struct CSdo * pSdo ,short unsigned nData);

short GetObjIndex(short unsigned Index , struct CObjDictionaryItem **pObject_in, const struct CObjDictionaryItem *Dict);

float CalcManipulatorPos12 ( void );
float CalcManipulatorPos24 ( void );
void ScaraGetGripperRobotCoordBody ( float *x , float *y , float * wx , float *wy , float *theta , float s , float e , float w );

void ScaraGetGripperRobotCoord ( float *x , float *y  , float *theta ) ;
void FlexGetGripperRobotCoord ( float *x , float *y  , float *theta ) ;

void ScaraSetPackageNew(float dT , short unsigned updAxis, short suckResult , short IsRepush );
void ScaraGetPackageNew(float dT , short unsigned updAxis, short suckResult );
void ScaraGetTargetRobotCoord ( float *x , float *y  , float dist );
//void FlexGetTargetRobotCoord ( float *x , float *y  , float dist );
short GoPointNew( short unsigned mode , short unsigned updAxis , float speedfac  );
void ApplyPosControl(unsigned short updAxis  );
void ApplyPosControl12(unsigned short updAxis  );
short ResetManipulatorLogics(void);
short TapeArmAreDoorsConverged(void);
short ScaraIsShelfConverged(void);
short unsigned StopMan(float dT );
short unsigned EmcStopMan( );
void CalcAutoManipulatorState24( float  dT , short unsigned updAxis  );
void CalcAutoManipulatorState12( float  dT , short unsigned updAxis  );

short ProgramPerAxisMotion ( float vec1[] , short unsigned reset , short unsigned SetCoordinated , short mode );
void SafeTransitManState( short DesiredState);
void SevereBugUnknownManipualtor();

void SetHomePosition24(  float posnow , short unsigned cnt );
void SetHomePosition12(  float posnow , short unsigned cnt );

short TransmitRxPdo1Slave( short unsigned  LogicId);

void  LogHoldingState(void);
void Prep2PaletteBack(void);

void ProcessLaser(float laserRange);

// SpiFlash2.h
short SFInstructionWriteBuf(long unsigned wadd_in, short unsigned wlen, short unsigned * inbuf );
short SFInstructionRead(long unsigned add_in, short unsigned wlen, short unsigned * inbuf );
short SFSectorErase( long unsigned add);
short OwnSerialFlash(void) ;

// PsMgr.c
void CanStateMng(void);
void SleepRequestManager(void);
short PdWakeUpPs( void );
void SetManipulatorOn(void );
short IsGen3(void);

// MalinkiMgr.c
void SendPwm2Tlc( void );

// CanResponser2.c
struct CCanTrap * AllocateTrap (short *Id);
short CanExceptionSdoFail( struct CCanTrap * me );
short SendSdoExpeditUloadLong(  struct CSdo * pSdo);
short SendSdoExpeditDloadLong( struct CSdo * pSdo );
short CanAcnowledgeSdoUloadExpedit( struct CCanTrap * me );
short CanAcnowledgeSdoDloadExpedit( struct CCanTrap * me );
short unsigned GetLogicalId (short unsigned CanId );
short SendResetComWaitBootup( short unsigned id);
short SendNMT( short unsigned id , short unsigned code);
short CanAcknowledgeBootUp( struct CCanTrap * me );
short CanExceptionSdoFail( struct CCanTrap * me );
struct CCanTrap * AllocateTrap (short *Id);
short SendTrap2Queue (struct CCanTrap * pTrap , short FreeId , short unsigned *GetCobId);
short TestIfTrapped(short unsigned CobId);

// CanDriver2.c
void GetCanState(volatile long unsigned *pCan,struct CCanStat *pStat );
long unsigned   GetAllReadyTransmitters(volatile long unsigned * pCan);
short SetCanMsg2Hardware( volatile long unsigned * pCan ,VOLATILE struct CCanMsg * msg , short unsigned mbox );
short SetCanMsg2HardwareBG( volatile long unsigned * pCan ,struct CCanMsg * msg , short unsigned mbox );
short GetCanMsgFromHardwareB(struct CCanMsg * msg);

// CanMaster.c
long unsigned SendSdo2Slave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId );
long unsigned SendSdo2PD ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes );
long unsigned SendSdo2PDRetry ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short nretries );
short BuildSdoFromInit  ( short LogicId , const struct CInitSdo *pInit , struct CSdo *pSdo );
short IdleCanProc (void );
short ReadAxesConfig ( void );
long unsigned UploadSdoFromSlave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId );
short SendSdoExpeditUloadLong(  struct CSdo * pSdo);
long unsigned GetSdoFromPD ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned *nBytes );

// System.c
void SetMotionMode(short  x, short unsigned y);
long unsigned HomePots( void );
void CanIdleTask (void);
void SetMotRestart( short unsigned us);
void InitCtlModule(void);


// FlexManState
void FlexSetPackageNew( short suckResult , short IsRepush );
void FlexGetPackageNew( short suckResult );
short FlexIsMotionDone( short unsigned Id );
void TapeArmHandleOperations(void ) ;
void  FlexHoming(void);
short ResetTapeArmManipulatorLogics(void);
short TapeArmGetThetaTarget(float * ThetaTarget);

// General manipulator utility routines
short FlexIsStabilized(void);
void FlexShutMan(void );
void TapeArmGoto( short unsigned Id , float PosTarget , short unsigned flags  );
short unsigned TapeArmStopMan(void );
void TapeArmSetManOn(void );


short ProcessTxPdo1(short unsigned LogicId , struct CCanMsg *pMsg);
short ProcessTxPdo2(short unsigned LogicId , struct CCanMsg *pMsg);
short ProcessTxPdo3(short unsigned LogicId , struct CCanMsg *pMsg);



#endif
