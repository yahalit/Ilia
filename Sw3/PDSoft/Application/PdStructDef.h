// File PdStructDef.h
#ifndef PD_STRUCTDEF_H_DEFINED
#define PD_STRUCTDEF_H_DEFINED



#define PD_N_CALIB_PARS 18


#define FIRM_YR 2022
#define FIRM_MONTH 12
#define FIRM_DAY 29
#define FIRM_VER 9
#define FIRM_SUBVER 3
#define FIRM_PATCH 0
#define FIRM_XX 0

#define PD_FIRM_VER (( (long)FIRM_YR << 20 ) + ((long)FIRM_MONTH<<16) + ((long)FIRM_DAY <<8) + (long) FIRM_SUBVER ) ;
#define PD_PROJ_TYPE 0x8200L // PD

/*
 * 21-3-2019 fix: On calculation failure with package on, retreat position will not throw the package out
 * 27-3-2019 fix: Brake neck responser kills back camera light
 * 25-6-2019 CBIT counter for 12V shelf communication error extended
 * 14-7-2019 Bug fix for left package
 * 27-9-2019 Accelerated times for package handling
 *             Bug fix: Extra time allowed for shut off shelf motor, so it will not free-wheel when motor is cut off
 * 4-2-2020  Support for manipulator calibration
 * 6-5-2020 Added error diagnostics for manipulator, reboot manipulator option
 * 26-10-2020 Several bugs fixed
 * 26-11-2020 Optional communications for gripper motor
 * 29-1-2021 Bug fix initialization of ManGeo struct (was erasure)
 * 5-3-21 Added manipulator width calculation
 * 12-3-21 Removed not needed TX PDO and manipulator error functions , revised manipulator error codes to differentiate source ID
 * 01-06-21 new version type (standard semantic versioning: ver.subver.pach.xx): case 6 GetFwCmdPD
 * 20-07-21 Added filter for KnowWhereIAm report (all axes)
 * 24-11-21 Corrected laser emergency response on changing side before "Get"
 * 06-1-22 staggered power supply wake for reset PS problem - 24V dont wake
 * 30-3-22 Manipulator capabilities removed (passed to 2nd core or LB)
 */

#include "PdCanSlave.h"
#include "PDTimerAlloc.h"
#include "..\PdLpShared\TimerArr.h"
#include "PdCanResponser.h"
//#include "..\PdLpShared\TrapezeProfiler.h"
#include "..\PdLpShared\SysUtils.h"
#include "..\PdLpShared\Interpreter\Recorder.h"
#include "..\PdLpShared\SharedStruct.h"
#include "..\PdLpShared\DCanStruct.h"
//#include "..\PdLpShared\ErrorCodes.h"
#include "..\TiSoft\F28x_Project.h"

#include "..\CLA\ClaShared.h"
//#include "Dynamixel.h"
//#include "..\Drivers\F2837x_YDCAN.h"

#ifdef EXTERN_TAG
#undef EXTERN_TAG
#endif

#ifdef PD_VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern 
#endif 

#define PROJECT_SLAVE_ID 126

#define CPU_CLK_MHZ 200  // CPU frequency MHz
#define  PWM_CLK_MHZ  (CPU_CLK_MHZ/2)

#define LP_MHZ CPU_CLK_MHZ
#define DYN24_BAUD_RATE 115200
#define DYN12_BAUD_RATE 57600

#define FCPU_CLK ((float)CPU_CLK_MHZ*1.0e6F)    // CPU frequency MHz
#define SPI_CYC_IN_C 64 // Number of fast cycle within a long one
#define FAST_INTS_IN_C SPI_CYC_IN_C
#define FAST_TS_USEC 16 // Length of short cycle
#define INFINEON_PERIOD_US 50 // Time for Infineon switches PWM period
#define C_TS_CLOCKS ((long)CPU_CLK_MHZ*(long)SPI_CYC_IN_C*(long)FAST_TS_USEC) // Clocks in full proc interrupt
#define F_TS  (FCPU_CLK / (float)C_TS_CLOCKS);



#define CPU_LP_CLK_MHZ 50 // Low speed clock - SCI, McBsp, SPI

#define SDO_BUF_LEN_LONGS 128
#define EBSS_START 0xc000	// EBSS section markers (for pre-run clearing)
#define EBSS_END   0x17000

#define DB_USEC 0.1F




EXTERN_TAG struct CSysTimerStr PDSysTimerStr ;

enum EDyn24States
{
	DYN_NET_WAKE_WAIT = 0 , //!< Wait wakeup
	DYN_RUN_RT = 5  ,		  //!< Real time runs - periodic interrogatoions and control (or motor off) substitutions
	DYN_STATE_FAIL = 6, 	  //!< Failure
	DYN_STATE_REBOOT = 7 ,
	DYN_STATE_REBOOT_WAIT = 8 ,
	DYN_MANUAL_EXT = 10 	  //!< Command by external command through CAN objects
};




EXTERN_TAG struct CPdCBit PdCBit ;




struct CSpiHandleStrPD
{
	short unsigned IsrLock		 ; //!< Lock for preventing ISR preemption
	short unsigned CycleCntr	; //!< Cycle counter per interrupt slow handling
	short unsigned MajorCFlag ; // !< Flag for major interrupt
} ;
EXTERN_TAG struct CSpiHandleStrPD 	SpiHandleStrPD ;






EXTERN_TAG struct CCanStat CanStat ;
EXTERN_TAG struct CCAN_IF CAN_IFRx ;



struct CIsrTimerPD
{
	long UsecTimer ;
    long FastUsecTimer ;
    long long UsecTimerLL ;
    long long PumpOpTimer ;
} ;

EXTERN_TAG struct CIsrTimerPD IsrTimerPD;





struct CPdSysState
{
	short  WakeupState ; //!< State of the wakeup process
	short  WakeupSubState ; //!< Sub State of the wakeup process
	short unsigned SdoCounter ; //!< Counts the SDO transmitted in the wake-up proc
	short unsigned CanRxEnable ; //!<Enable the reception of CAN messages
	short unsigned LastErrorCode ;// !< Last recorded error code
	short unsigned Status ; 	// !< Status detail
	short unsigned DisablePdoProc ; // !< Flag to diable PDO processing
	short unsigned  uPdCmd2 ;
    short unsigned  uPdCmd2Old ;
};
EXTERN_TAG struct CPdSysState SysStatePD;



// NEVER change the order of the elements of this struct
struct CSw54Control
{
	float IoutMax ; // !< Max current
	float VinMin  ; // !< Minimum allowed input voltage
	float VinMax  ; // !< Maximum allowed input voltage
	float  VoltageInputExp ; // !< Captured out of range input voltage
    float  CurrentAtExp ; // !< Captured current exception
	float  ValOut ; // !< Value to set in duty
    float  Val2PWM ; // !< Value to multply duty to set in PWM
    float Tpwm ;
    float StartVout ;
    long  StartingCtr ;
	short unsigned Exception ; // !< Exception trapped
	short unsigned MotorOn ;
	short MotorOnRequest ; // !< Request to start action
	short unsigned Ready ; // !< 1 if servo switch is ready
    short pwm ; // !< 1 if servo switch is ready
    short unsigned pwmFrame ; // !< TBPRD
    short unsigned StartPwm ;
};
EXTERN_TAG struct CSw54Control Sw54Control;

#ifdef PD_VARS_OWNER
#pragma DATA_ALIGN ( Sw54Control , 64 )
#endif



enum ECalibLocalParArr
{
    LCalibPar_V36Gain   = 0 ,
    LCalibPar_V36Offset = 1 ,
    LCalibPar_V24Gain   = 2 ,
    LCalibPar_V24Offset = 3 ,
    LCalibPar_V12Gain   = 4 ,
    LCalibPar_V12Offset = 5 ,
    LCalibPar_VBatGain   = 6 ,
    LCalibPar_VBatOffset = 7 ,
    LCalibPar_VSrvGain   = 8 ,
    LCalibPar_VSrvOffset = 9
 };


EXTERN_TAG float AdcCalibArray[16] ;


struct CCalibPD
{
    float ParArr[PD_N_CALIB_PARS] ; // Use for whatever comes to your mind
	long  CalibDate		  ; // !< Calibration revision date
	long  CalibData		  ; // !< Calibration additional revision data
	long  Password0x12345678 ; // !< Must be 0x12345678
	long  cs ; // !< Long checksum
	long  Stam[ 32 - PD_N_CALIB_PARS - 4  ] ;
};




EXTERN_TAG struct CCalibPD CalibPD ;
EXTERN_TAG struct CCalibPD MaipCalibPD ;




struct CCalibProgPD
{
	unsigned long PassWord ;
	struct CCalibPD Calib ;
};
EXTERN_TAG struct CCalibProgPD CalibProgPD;
EXTERN_TAG struct CCalibProgPD ManipCalibProgPD;

EXTERN_TAG struct CCalibPD * FlashCalibPD ;
EXTERN_TAG struct CCalibPD * FlashCalibManipPD ;





EXTERN_TAG struct CCanQueue CanSlaveInQueuePD ;
EXTERN_TAG struct CCanQueue CanSlaveOutQueuePD ;





EXTERN_TAG struct CCanMsg SyncMsg ;

//EXTERN_TAG long unsigned CanInMsgCntr ;
//EXTERN_TAG struct CCanMsg canHistory[32] ;
EXTERN_TAG long unsigned DebugVec[8] ;


EXTERN_TAG long SlaveSdoBufPD[SDO_BUF_LEN_LONGS];
EXTERN_TAG long HostSlaveSdoBufPD[SDO_BUF_LEN_LONGS];



EXTERN_TAG struct CSdo SlaveSdoPD ;
EXTERN_TAG struct CSdo PdHostSdo ;

#include "PdFunctions.h"



struct CPBit
{
    short unsigned DynRebootRequest  ;
	short unsigned State ;
	short unsigned Dynamixel12On ;
	short unsigned Dynamixel24On ;
};
EXTERN_TAG struct CPBit PBit ;

struct CCanStatistics
{
    short SdoCobCnt  ;
    short DloadSdoCnt  ;
    short UloadSdoCnt  ;
    short DloadSdoResponseCnt  ;
    short UloadSdoResponseCnt  ;
     long  MaxRxBoxLoad ;
     long  TotalRxCnt ;
} ;
EXTERN_TAG struct CCanStatistics CanStatistics ;



struct CManCmd
{
    struct CManControlWord ControlWord ; // !< Manipulator control word
    struct CManControlWord ControlWordCopy ; // !< Copy of Manipulator control word
    short State ; //!< State
    short SuckRequest; // !< Request for suck commend
    short SuckCmd; // !< Command for suck pumps
    short LaserRequest; // !< 0: off, 1: on
    long long TimeUsec ; // !< Now time in usec                                    //  4: Sticky Suspect contact with pump  5: Manipulator inactive
};
EXTERN_TAG struct CManCmd ManCmd ;


EXTERN_TAG float Debug[16] ;


EXTERN_TAG short unsigned MV8 ;
EXTERN_TAG short OverRideMushroom ;
EXTERN_TAG short OverRideSwitches ;
EXTERN_TAG short Tx12_24_ForCardTest ;

//must be equivalent to what is programmed in System.c, currently 20000 cnt/sec taking 1000cnt=1deg
#define MAN_DEFAULT_MAX_SPEED_CMD 0.350F
//currently 80000 in System.c, max value is 1.396264
#define MAN_DEFAULT_ACC_TIME 0.5f

#ifdef PD_VARS_OWNER

#ifndef _LPSIM
#pragma DATA_SECTION(BurnPass,".SectN");
const long unsigned BurnPass = 0x90abcdef ;
#endif






#define MAN_DEFAULT_KP 1.2f

const struct CFloatParRecord ParTablePD [] =
{
#include "PdParRecords.h"
{( float *)0,0xffff}
};
const short unsigned N_ParTablePD = sizeof(ParTablePD) / sizeof( struct CFloatParRecord ) ;

const float CalibLimitLo[PD_N_CALIB_PARS] = {-3000,-3e-4f,-3000,-3e-4f,-30000,-30000,-30000,-1000,-1000,-1,-1,-1,-1,-1,-1,-1,-1,-1};
const float CalibLimitHi[PD_N_CALIB_PARS] = { 3000,3e-4f, 3000,3e-4f,30000,30000,30000,1000,1000,1,1,1,1,1,1,1,1,1};

const float ManCalibLimitLo[PD_N_CALIB_PARS] = {-3000,-7e-4f,-3000,-7e-4f,-30000,-30000,-30000,-1000,-1000,-1,-1,-1,-1,-1,-1,-1,-1,-1};
const float ManCalibLimitHi[PD_N_CALIB_PARS] = { 3000,7e-4f, 3000,7e-4f,30000,30000,30000,1000,1000,1,1,1,1,1,1,1,1,1};

const float NomAdcGains[16] = {
0.008961881144663f ,  // , 0, 0.98f, &PdAnalogs.Volts24);
0.0138f , // , [1]  &PdAnalogs.V36);
0.0146f , // , [2], 0.98f, &PdAnalogs.CurServo);
3.4877e-04f ,  // [3] , 0, 0.2f, &PdAnalogs.CurAirPump[1]);
3.4877e-04f ,  // [4], 0.2f, &PdAnalogs.CurAirPump[2]);
0.0262f ,   // , [5], 0.5f, &PdAnalogs.VServo);
0.0262f , // [6] , 0.5f, &PdAnalogs.VBat54[0]);
0.006773565807482f ,// [7] , 0.98f, &PdAnalogs.Volts12[0]);
3.4877e-04f , // , [8]  &PdAnalogs.CurAirPump[0]);
0.0029296,  // [9]  &PdAnalogs.Cur5);
0.001464843750000f, // [10] &PdAnalogs.Volts5); // 2A/V * 3/4096
0.003555216648524f,// [11] &PdAnalogs.IShunt);
0.001464843750000f,//  [12] , &PdAnalogs.Cur24);
0.00292968, // [13], &PdAnalogs.Cur12);
0.0262 , // [14] &PdAnalogs.VBat54[1]);
0.006773565807482f } ;  // [15] &PdAnalogs.Volts12[1]);



const short unsigned NCalibPars = PD_N_CALIB_PARS ;

#ifndef _LPSIM
const struct CRecorderSig RecorderSigRaw[] =
{
#include "..\Application\ProjRecorderSignals.h"
};
const short unsigned NREC_SIG = sizeof(RecorderSigRaw) / sizeof(struct CRecorderSig);
#endif

#else
extern const struct CFloatParRecord ParTablePD[] ;
extern const float CalibLimitLo[];
extern const float CalibLimitHi[];
extern const float ManCalibLimitLo[];
extern const float ManCalibLimitHi[];
extern const short unsigned NCalibPars;
extern const short unsigned N_ParTablePD ;
extern const float NomAdcGains ;
#endif


#include "..\PdLpShared\Interpreter\Recorder.h"

#include "PdFunctions.h"


#endif
