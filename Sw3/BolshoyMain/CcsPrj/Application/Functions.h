#ifndef DEF_FUNCTIONS_DEFINED
#define DEF_FUNCTIONS_DEFINED


#define fSat(x,s) (__fmax(__fmin(x,s),-(s)))
#define fMax(x,y) (__fmax(x,y))
#define fMaxMin(x,xmax,xmin) (__fmax(__fmin(x,xmax),xmin))

// Application level functions
void InitApp();

void SpiWaitStam(void);
void InitGyroComm(void);


void SetReferenceOperationalModes(void) ;

// Synchronization
//////////////////////////////////////
void SetRecorderStartFlag(short value);
short unsigned BlockInts() ;
void RestoreInts( short unsigned sr );
long unsigned HomePots( void );

long unsigned GetLongFromManip(short unsigned index_in , short unsigned subindex_in , long *data , short unsigned *nData);
long unsigned SendLong2Manip(short unsigned index , short unsigned subindex , long data );
long unsigned Object2ManipBody(short unsigned send , short unsigned *index , short unsigned *subindex , short unsigned *nbytes , long unsigned *buf);
float GetUnalignedFloat( short unsigned *uPtr);
long GetUnalignedLong( short unsigned *uPtr);
void CopyLong ( short unsigned * src , short unsigned * dst );
float Invsqrt(float x); // Inverse sqrt (returned 0 if operand is 0)
void ReadAngle( short unsigned al , long * pLong );// Read int angle into float
long SciSetRelativePositionReportBody(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci ); //OBB: not tested
short CommitCrabStateMachineRel2Robot( void );
inline void ProgramReportCatch();
short CatchRelPosReport();
void KillSteeringConvergence(void) ;
void RotateWheels2Azimuth (float RotationAzimuth); //OBB
float GetArcEntryLength();
        // [0] = frac, [1] = sin , [2] = cos array

void ConfigWheelArm( );
short IsCrabConverged(float absYewCmd) ;
short IsSteeringConverged(void);
void DetectFallByShoulderRollChange(void);

void ForcePosReport( float x , float y , float z , float az );

short CommitCrabStateMachineRelative(void);
short CommitCrabStateMachineNew(void);

short CommitUnCrabStateMachineRelative(void);
short CommitUnCrabStateMachine(void) ;
void    UpdateDeltaPos( long dpos[] );
void UpdateRobotPos(void);

void RtCanHandlerCanA(void);
void RtCanHandlerCanB(void);
short InterpretCmd ( short unsigned *rec );
void CanSlave( void);
void    UpdateIsrTimer( void) ; // Update real time usec and msec and sec timer
float GetWheelVelocityRatio(float s , short * zone , float *tilt, float *dtilt );
void SetMotionMode(short  x, short unsigned y);

void InitSpibPins(short unsigned IsManual);

void DiffModeIndependentWheelTravel(void ) ;
//short BuildRxPdo1Slave( short unsigned  LogicId);

// CAN handling
//////////////////////////////
void GetCanState(volatile long unsigned *pCan, struct CCanStat *pStat );
void WaitIfRdy(volatile long unsigned * if_address);
void ReadMboxNoKill (volatile long unsigned * if_address, short box);
void ReadMboxNormal (volatile long unsigned * if_address, short box);
long unsigned   GetReadyTransmitters(volatile long unsigned * pCan) ;

long unsigned UploadSdoFromSlave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId );


// Motion
/////////////////////////////////
short DirectSetCanAxisCommand( short unsigned LogicId , long value );
long DirectGetCanAxisCommand (short unsigned LogicId ) ;
float GetMinimalArcTravel();

// Low level and initialization
//////////////////////////////
short InitPeripherals(void);

void InitEbss(void) ; // Initialize the Ebss with zeroes
void MemClr(short unsigned *pTr, short unsigned siz); // Clear a memory chunk
void InitEcap1ForTicker(long unsigned us ); // Initialize ECAP1 as system ticker
void InitCpuTimers12(void) ; // Timers initialization
void InitAdc(void) ; // ADC initialization
void InitCan(void); // Initialize the CAN controllers
long unsigned GetUsec(); // Get usec timer
void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags );
void LedControlInit( void );
void SendPwm2Tlc( void );
void SetLedPwm( short unsigned ind , short unsigned PWM );
void SetupMuxGpio(void);
short unsigned SciTester( short unsigned ind  , short unsigned c);

// General math

float Ysin( float) ;
float Ycos( float) ;
float aYcos( float x) ;
float aYsin( float x) ;


//float Yatan2 ( float x , float y );
float mod2piS( float x );
float HYpot( float x , float y ) ;
short unsigned IsNear( float x , float y ) ;
float AngletoF( short x );
short unsigned FtoAngle(float );


void CopyMemRpt( short unsigned * dst , short unsigned * src , short unsigned n ) ;
void ClearMemRpt( short unsigned * dst , short unsigned n ) ;

// System and exceptions
void CBit (void);

// SPI communication
short RxSpiMessage( short unsigned * RxBuf);
short PrepSpiMessage( short unsigned * TxBuf) ;
short unsigned IsArcSegmentCompensation(void) ;

// Motion queue handeling
short CheckQ( short unsigned ind);
short CheckQIndex( short unsigned ind);
short placeInQueue ( short unsigned * uPtr );

// Robot level
void CanStateMng(void) ; //!< CAN State manager
short IdleCanProc (void ); //!< Idle processing of CAN traps
void IdleTask (void) ; // Idle task


// Navigation
float Normalize( float *x , float *y , float * z );

short SetCanMsg2Hardware( volatile long unsigned * pCan ,struct CCanMsg * msg , short unsigned mbox );

short GetCanMsgFromHardwareA(struct CCanMsg * msg);
short GetCanMsgFromHardwareB(struct CCanMsg * msg);

short InitEMIF( void) ;

void InitCan(void);
void InitSci(short unsigned ind , float f );
void FastRtHostSciHandler(void);
void FastRtGyroSciHandler(void);
short Copy4Transmission(short unsigned * uPtr, short unsigned length , short opcode , long unsigned time );
void SetSpiInterpretError(short ErrCode , short unsigned txcntr );
//void FastRtUsSciHandler(volatile struct SCI_REGS *pSci, volatile struct CUsMessageStr *pMsg,short unsigned *TxBuf,short unsigned *RxBuf, long unsigned portmask );


void     InterpSciMessages(void) ;

void ReadQuadEncsRt(void);
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
//void InitPwm13ForSTO(void);
void InitEcap6AsUsecCounter (void);

short IsInPack(void);
//void StoDisable(short unsigned StoDisableNow );

// Interpreter and recorder
//////////////////////////////
short EmptyRecorderTrigger(void);
short ImmediateRecorderTrigger(void);

float GetUnalignedFloatLittle( short unsigned *uPtr);
long GetUnalignedLongLittle( short unsigned *uPtr);

void CopyLong ( short unsigned * src , short unsigned * dst );
float Invsqrt(float x); // Inverse sqrt (returned 0 if operand is 0)
void ReadAngle( short unsigned al , long * pLong );// Read int angle into float
        // [0] = frac, [1] = sin , [2] = cos array

void RtCanHandler(void);
void RtCanHandlerTx(void);

short InterpretCmd ( short unsigned *rec );
void CanSlave( void);
void ManipSlave(void) ;
void    UpdateIsrTimer( void) ; // Update real time usec and msec and sec timer
void DealDelayedSpiActions(void);


// CAN handling
//////////////////////////////
void GetCanState(volatile long unsigned *pCan, struct CCanStat * pStat);
void WaitIfRdy(volatile long unsigned * if_address);
void ReadMboxNoKill (volatile long unsigned * if_address, short box);
void ReadMboxNormal (volatile long unsigned * if_address, short box);
long unsigned   GetReadyTransmitters(volatile long unsigned * pCan) ;
long unsigned   GetAllReadyTransmitters(volatile long unsigned * pCan) ;

long unsigned SendSdo2Slave ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId );

long unsigned SendSdo2Manip ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short nretries );
long unsigned SetAxisDefaultMode( short unsigned LogicId ) ;
long  unsigned SetAxisMode( short unsigned LogicId , long mode6060 ) ;

// Motion
/////////////////////////////////
void CorrectVerticalTargetBySwitch(short Leader , short Follower , short godir );
short DirectSetCanAxisCommand( short unsigned LogicId , long value );
long DirectGetCanAxisCommand (short unsigned LogicId ) ;
float FDirectGetCanAxisCommand( short unsigned LogicId) ;
float WheelMeter2Mot(void);

void InitCpuTimers12(void) ; // Timers initialization
void InitAdc(void) ; // ADC initialization
void InitCan(void); // Initialize the CAN controllers
long unsigned GetUsec(); // Get usec timer
short ReadEncoder( short unsigned ind , struct CEncoder * pEnc);
void SetCpuPin ( short unsigned ID , short unsigned function , short unsigned dir , short unsigned flags );
void LedControlInit( void );
void SendPwm2Tlc( void );
void SetLedPwm( short unsigned ind , short unsigned PWM );
void SetupMuxGpio(void);
void InitSci( short unsigned SciInd , float f  );
short unsigned SciTester( short unsigned ind  , short unsigned c);

// Flash
short ReadCalibFromFlash ( long unsigned *Dest , long unsigned Src    );
short DealCalibration (short unsigned rd);
short ReadConfigFromFlash (   );



// System and exceptions
long unsigned LogException ( short unsigned ID ,  short fatality , long unsigned exp );
void ClearExceptions( void );
void CBit (void);
short GetExpFatality(void);

// SPI communication
short RxSpiMessage( short unsigned * RxBuf);

// Motion queue handling
short CheckQ( short unsigned ind);
short CheckQIndex( short unsigned ind);
short placeInQueue ( short unsigned * uPtr );
short   ClearMotionQueue ( );

// Robot level
void CanStateMng(void) ; //!< CAN State manager
short IdleCanProc (void ); //!< Idle processing of CAN traps
void IdleTask (void) ; // Idle task

long unsigned EnterShelfMotionCmd(short *CrawlImage, short NextMode, short NextSubMode, short unsigned overrideNewCrab);
float ReferShelfPos( long WheelPosEncReference , long WheelPosEncAct  , float speed , float Acc , float dT   );

// Navigation
float Normalize( float *x , float *y , float * z );
short CatchPosReport( void );
void SetPosReportCatch ( void);

// State machine
void SetPosReportCatch (void);
void SetPosReportCatchReduced(float dTime);
short CommitCrabStateMachine(void) ;
short CommitCrabStateMachineNew(void) ;
short CommitUnCrabStateMachine(void) ;

void ProgYaw2Crab( short CrabCrawl );


long  unsigned   ActivateProgrammedRecorder(void);
float TestSpline( struct CSpline *pS , float x , float acc , float v , short crawl  );
void KillDifferenceDrive(void);

short  IsSwDistValid   ( struct CBHLimitSw * , long *EncOnSwitch );
void ArmLimitSw(struct CCanAxis *pAxis ,short dir  );

short GetNextChgMode ( short unsigned *crab , short unsigned *juncRotate ,short unsigned *climb  );
short GetPosTarget( float *x , float *y , float *az );
short GetNextPosTarget( float *x , float *y , float *az );
short GetNextNextPosTarget( float *x , float *y , float *az , float *dist );

void PrepAutoShelfRun(void);
void EnterAutoShelfMotion(float dist , short IsLast  );

short IsManipulatorMotorOn (short test);
short IsManipulatorWell (void);

void SetManipulatorOn( );
short ManageWheelArmIBit(void);

float GetFollowerByLeader(float leaderPos, short * zone, short *armFollower);
void RestartServo( void);

void SetMotRestart( short unsigned us) ;
/**
 * \brief Modulo difference of two wheel encoder readings
 * returns: mod(w1-w2,2^18) ;
 */
long MotorWheelDifference( long w1 , long w2 );
void SleepRequestManager(void);
void TerminatePackageHandling(short NextState );
void SetRobotStationaryIndication(void);
void BGManageGyroActivation(void) ;
void DealCameraReports(void);
void RTOdometry ( void );


void SetSpibOwner(void) ;

short IsSteerReady(void);

long SetSpiInterpretErrorTx(long  ErrCode , short unsigned txcntr , short unsigned OpCode , short unsigned IsSci );
void SlowHostSciHandler(void);
long SciSetParameter(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciSetPositionReport(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciSetRelativePositionReport(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciSetDeviationReport(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciGetAck(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciClearQueue(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciSetQueueEntry(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciSetEmergencyStop(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciSetHandlePackage(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciStartManualMode(short unsigned* buf, long MessageTime, short unsigned txcntr, short unsigned IsSci);
long SciSetCalibrationData(short unsigned* buf, long MessageTime, short unsigned txcntr, short unsigned IsSci);
long SciSaveCalibrationData(short unsigned* buf, long MessageTime, short unsigned txcntr, short unsigned IsSci);
long SciRequestReport(short unsigned* buf, long MessageTime, short unsigned txcntr, short unsigned IsSci);
void SetSpiInterpretError(short ErrCode, short unsigned txcntr);
short BuildStatusReportBody(short unsigned* uPtr, short unsigned type);
void ResetSciStateMachine(void);
long HostProtocolSimulation(short unsigned* buf);
long SetLongParameter(short unsigned index, short unsigned subindex, long value);
long SetFloatParameter(short unsigned index, short unsigned subindex, float value);
long SetShortParameter(short unsigned Index, short unsigned subindex, long value);
long GetFloatParameter(short unsigned Index, short unsigned subindex, float* value);
long GetLongParameter(short unsigned Index, short unsigned subindex, long* value);
void PoleTrackWidthAdjust(float dT );
short  IsWheelArmDone(void);
short IsWheelArmGoodToGo(short);
void InitWheelArm(void) ;
void SetWheelArmPinState( enum E_LogicalAxe Axis , enum  E_WheelArmPinDirection Direction  );
short InitTrackWidthAdjust(short unsigned NextSubMode, enum E_TrackWidthType Target, enum E_LogicalAxe Axis   );

void ProcessIMUTransformation(void);

short ImuManager(void);
long SetVelocityMode(void);
void AbortVelocityMode(void);

void RtRecorder(void);
void ClearDebugVars(void) ;
//void FastRtUS1SciHandler(void);
//void FastRtUS2SciHandler(void);
void SetControlOper(short unsigned* cw, short unsigned on);
float SolveActualTrackWidth(float L, float r, float theta1, float theta2, float* tilt);
short SolveArmOpen(float L, float M, float r, float* theta);
void ChangeCrabSubState(short newSub);

long unsigned GetManufacturerSpecificCode(long code);
void  RunRescueShelf(short unsigned Leader, short unsigned Follower, float dT);
void CalcGeomData(void);

void CheckWheelArmPosition(void) ;
void GetWheelArmWidthIBIT(void);
void CheckWheelArmPositionBody(short unsigned IsIbit);

long TestWheelArmCheatConditions(long mode , short *dir , enum E_TrackWidthType *Target);
void ManPackage ( short IsStandBy);
void ManageSpecialModes(void);
short RestartShelfRescueNavigation(float Height, short IsShelf );
void  ShelfPlayEndGame(void) ;
struct CMotionItem * AdvanceMotionQueue(void);
void EnterRescueCommand(struct CMotionItem * pItem);
short IsWheelArmActive(void);
short unsigned  AlignPitchOnShelf( short mode );
void   ManageSpecialModeShelfAlign(void);

void DisableGyroDriftCorrection (void);

short ProcessTxPdo1(short unsigned LogicId , struct CCanMsg *pMsg);
short ProcessTxPdo2(short unsigned LogicId , struct CCanMsg *pMsg);
short ProcessTxPdo3(short unsigned LogicId , struct CCanMsg *pMsg);
short ProcessTxPdo4(short unsigned LogicId , struct CCanMsg *pMsg);


/*
 * AppIsr.c
 */

/*
 * Functions of CanResponser.c
 */
short MalinkiProcessTxPdo1(struct CCanMsg *pMsg);
void InvertSpeed4Shelf( short dir);
short IsGen3(void);

// BitVars.c
void InitTunnelMsg(void) ;
short MakeBitBuffer( long unsigned *buf);


/*
 * Function of HostCommunication.c
 */
short IsSteerTargetDirection( float steertarget,float lsteertarget , float tol );
short IsInMission(void);

long SetFineMotion( float movef );

long SciStartManualMode(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci);
long SciSetVelocityCommand(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci);
long RotateTapeArm(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci);
long FinePositionCommand(short unsigned * buf , long MessageTime , short unsigned txcntr, short unsigned IsSci);

long SciSetQueueExecutionPointer(short unsigned* buf, long MessageTime, short unsigned ctr, short unsigned IsSci);
long SciTunnelPacket(short unsigned * buf , long MessageTime , short unsigned ctr  , short unsigned IsSci );
long SciNullFun(short unsigned * buf , long MessageTime , short unsigned ctr  , short unsigned IsSci );
long SciSetManualMotion(short unsigned * buf , long MessageTime , short unsigned ctr  , short unsigned IsSci );
long SciSetConfiguration(short unsigned * buf , long MessageTime , short unsigned ctr  , short unsigned IsSci );

/*
 * Functions if SpiFlash.c
 */
void InitSpiB() ;
short SFInit(void);
short SFInstructionWriteBuf(long unsigned wadd_in, short unsigned wlen, short unsigned * inbuf );
short SFInstructionRead(long unsigned add_in, short unsigned wlen, short unsigned * inbuf );
short SFSectorErase( long unsigned add);
short OwnSerialFlash(void) ;

/*
 * Functions of SelfTest.c
 */
void SetUserWait(short unsigned key , short unsigned value ) ;

/*
 * Functions of ShelfStates.c
 */
void  GoManualShelf( float dT  );
void RecordShelfDebugVars(void) ;
void  RunAutoShelf(short unsigned Leader, short unsigned Follower, float dT);

/*
 * Functions of WaksMachine.c
 */
long unsigned SetAxisHoming(short unsigned axis , float Cnt2Rad , long mode , short UsePot );
long unsigned UploadSdoFromInterfaceCard ( short unsigned Index , short unsigned SubIndex , long * PayLoad , short unsigned nBytes , short unsigned LogicId );

/*
 * Functions of WheelArm.c
 */
void GetWheelEncoders(long encs[2]);
void RecordWheelArmVars(void);
void PoleTrackWidthAdjustFailure( short unsigned exp);
long unsigned GetWArmModes();
float GetTargetWidth(short Width);
short IsTrackWidthMisMatch(short Width);

// BHAxes
struct CCanTrap * AllocateTrap (short *Id);
short CanExceptionKill( struct CCanTrap * me );
short SendTrap2Queue (struct CCanTrap * pTrap , short FreeId , short unsigned *GetCobId);
short BuildSdoFromInit  ( short LogicId , const struct CInitSdo *pInit , struct CSdo *pSdo );
/*
 * BH- DFT conversion
 */

#ifdef _LPSIM


inline
unsigned short __disable_interrupts( void)
{
    return 0; 
}

inline
void __restore_interrupts(unsigned int val )
{
    (void) val ;
}

inline float __fmax(float x, float y)
{
    return (x > y) ? x : y;
}
inline float __fmin(float x, float y)
{
    return (x < y) ? x : y;
}
inline float __fracf32(float x)
{
    return x - (float)((long)x);
}
inline float __atan2(float y, float x)
{
    return (float)atan2(y, x);
}

inline float __sqrt(float x)
{
    return (float)sqrt(x);
}

inline float __sin(float x)
{
    return (float)sin(x);
}

inline float __cos(float x)
{
    return (float)cos(x);
}
inline float __div2pif32(float x)
{
    return x * 0.159154943091895f;
}
inline float __mpy2pif32(float x)
{
    return x * 6.283185307179586f;
}
inline
short unsigned __flip16(short unsigned x)
{
    short unsigned y, cnt;
    y = 0;
    for (cnt = 0; cnt < 16; cnt++)
    {
        y += (((x >> cnt) & 1) << (15 - cnt));
    }
    return y; 
}

inline __norm32(long unsignednum, int * t)
{
    short cnt;
    for (cnt = 31; cnt > 0; cnt--)
    {
        if (((unsignednum >> cnt) & 1) != ((unsignednum >> (cnt - 1)) & 1))  
        {
            return cnt; 
        }
    }
    return 0; 
}

inline long __lmax(long a, long b)
{
    return a > b ? a : b; 
}

inline long __lmin(long a, long b)
{
    return a < b ? a : b;
}

#include <stdlib.h>
//#define __max( a,b ) (a>b? a: b) 
//#define __min( a,b ) (a<b? a: b) 

#endif 

inline
short unsigned BlockInts(void)
{
    return (unsigned short) __disable_interrupts( );
}


inline
void RestoreInts(short unsigned d)
{
    __restore_interrupts(d) ;
}
inline short __neg16(short d)
{
    return (-__max(d, -32767));
}

inline float ReverseSteering(float  x , short crab )
{
#ifdef DIFFERENTIAL_CRAB
    if ( crab == 0 )
    {
        return x ;
    }
    return -x ;
#else
    return x ;
#endif
}

inline float ReflectSteering(float  x)
{
#ifdef DIFFERENTIAL_CRAB
    return ( x > 0 ) ? x - Pi : x + Pi ;
#else
    return x ;
#endif
}



#endif
