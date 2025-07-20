/*
 * Dynamixel.h
 *
 *  Created on: Dec 11, 2016
 *      Author: Yahali Theodor
 */

#ifndef APPLICATION_DYNAMIXEL_H_
#define APPLICATION_DYNAMIXEL_H_

// Manipulator reads 361368 cnt / rev
#define MAN_POS_SCALE_LP 1.738722107983990e-05f // 2 * pi /361368
#define MAN_POS_SCALE_HP 6.259112759506524e-06f // 2 * pi /1003846

#define MAN_SPEED_SCALE_LP 2.04523403288642417e-4f // 2Pi/30721.106759172063882536082870486 empirically calculated
#define MAN_SPEED_SCALE_HP 0.001047197551197f      // 0.01 rev/minute to rad

#define MAN_ACC_SCALE_HP 0.001745329251994f // 1 rev/minute^2 to rad/sec^2

#define MAN_CUR_SCALE_HP 0.001f // 1mA for bit
#define MAN_CUR_SCALE_LP 16.11328e-3f // 16.1mA for bit

#define MAX_ARM_CURRENT_LP 4.0f
#define MAX_ARM_CURRENT_HP 8.0f


#define STOP_POS_SCALE 0.001533980787886F


#define DEF_NUM_12V_MANIP_AXES 0 // Number of MX430 axes allocated to the manipulator
//#define DEF_12V_WHEELARM_AXES 2
#define DEF_NUM_24V_GEOM_AXES 3
#define DEF_NUM_24V_FLEX_AXES 0
#define DEF_NUM_MAX_24V_AXES 5
#define DEF_NUM_MAX_12V_AXES 5




#ifdef DYNAMIXEL_OWNER
#define DX_EXTERN_TAG
#else
#define DX_EXTERN_TAG extern
#endif



#define N_MAX_DYN_TX_STR 64u
#define N_MAX_DYN_RX_STR 256u


enum EDyn24States
{
    DYN_NET_WAKE_WAIT = 0 , //!< Wait wakeup
    DYN_RUN_RT = 5  ,         //!< Real time runs - periodic interrogatoions and control (or motor off) substitutions
    DYN_STATE_FAIL = 6,       //!< Failure
    DYN_STATE_REBOOT = 7 ,
    DYN_STATE_REBOOT_WAIT = 8 ,
    DYN_MANUAL_EXT = 10       //!< Command by external command through CAN objects
};


struct CDynamixelMsg
{
    short unsigned ID ;
    short unsigned PayloadLen  ;
    short unsigned inst ;
    short unsigned Error ;
    short unsigned *pPay  ;
};


// One line of pre-prepared Dynamixel setup table
struct CDynControlTableLine
{
    short unsigned Offset ;   // !< Offset of parameter in dynamixel memory space
    short unsigned LenBytes ; // !< Object length in bytes
    long Data ;               // !< Object data
    short unsigned Rights ;   // !< 1 If object may be written
    short unsigned TargetId ; // !< ID of target dynamixel
    short unsigned TargetType ;   // !< Target type as read from the motor
};

struct CDxInitState
{
    short unsigned ProgCnt ;
    short unsigned ProgState ;
    short unsigned Net ; // !< 12 or 24
    short unsigned TimerId ; // !< ID of timer
    short unsigned FailStat ; // !< Fail status
    short unsigned Stop4Debug ; // !< For enabling ESTOP0 break point
    short unsigned MaxFails ; // Maximum allowed number of consecutive fails
    long  unsigned TimeBetweenComsUsec ; // !< Time between consecutive events
    struct CDynControlTableLine * pTable ; // !< Dictionary for initial programming
    struct CDynamixelMsg InitMsg ; // DX message used for initialization
    struct CDynamixelProt2 * pProt; // !< Network protocol struct
};

DX_EXTERN_TAG struct CDxInitState DxInitState12;
DX_EXTERN_TAG struct CDxInitState DxInitState24;

/*
 * Struct for management of dynamixel network
 */
struct CDynamixelProt2
{
    //volatile struct SCI_REGS  *pSci ; // !< SCI peripherial
    short unsigned TxRemain  ; //!< Remaining bytes to transmit
    short unsigned InTx ;    // !< Number of Bytes alreay transmitted
    short unsigned SciErrAcc ; // !< Rx error accumulator
    short unsigned InRx  ;     // !< Already received bytes
    short unsigned State ; // !< Protocol state
    short unsigned SubState ; // !< Protocol substate
    //short unsigned * EnableReg ;
    //short unsigned * DisableReg ;
    //short unsigned EnableMask;

    //void (*EnableFun) ( short unsigned ) ; //!< Function for enable/disable transmit
    short unsigned TxStr[N_MAX_DYN_TX_STR] ; //!< Transmit string
    short unsigned RxStr[N_MAX_DYN_RX_STR] ; //!< Receive string
    short unsigned MsgPload[N_MAX_DYN_TX_STR] ; // Message payload
    struct CDynamixelMsg Msg ;
    short unsigned MotorOnCnt[8] ;
    short unsigned MotorOffCnt[8] ;
    short unsigned IDList[8] ;
    short unsigned ModelList[8] ;
    short unsigned TorqueEnableAdd[8] ; // !< Driver address for torque enable
    short unsigned SpeedGoalAdd[8] ;    // !< Driver address for speed goal
    short unsigned CurrentGoalAdd[8] ;    // !< Driver address for current goal
    short unsigned nMembers ; // Number of members in the network
    short unsigned Net ; // !< The network
    short unsigned IndirectReadAdd ; // Address to read indirectly
    short InitState ; // !< The initialization stat (1=done)
    short NetByPass ; // !< 1 to bypass network operation (in tests and simulations)
    short unsigned NextAxis ; // The next axis to sample/control
    float CommCycleTimeSec ; // !< Communication cycle time, in seconds

    short unsigned NextRebootTarget ;
    short unsigned ControlConfirmCtr ;
    short unsigned ControlConfirmFailCtr ;
    short unsigned FeedbackCtr ;
    short unsigned FeedbackFailCtr ;
    long  DStatistic1 ;
    long  DStatistic2 ;
};

DX_EXTERN_TAG struct CDynamixelProt2 Dynamixel24 ;
DX_EXTERN_TAG struct CDynamixelProt2 Dynamixel12 ;

struct DecodeKey
{
    short unsigned * vPtr ;
    short unsigned ByteOffset ;
    short unsigned Len ;
};

struct CAxisSim
{
    float SimPositionCnt;
    float SimSpeedCnt;
    short unsigned SimMotorOn ;
} ;

/**
 * struct for definition of a single dynamixel axis
 *
 */
/* HardErrorStat
Bit 7   -   Not used, always ‘0’
Bit 6   -   Not used, always ‘0’
Bit 5   Overload Error(Default) Detect persistent load that exceeds maximum output
Bit 4   Electrical Shock Error(Default) Detect electric shock on the circuit or insufficient power to operate the motor
Bit 3   Motor Encoder Error(Default)    Detect malfunction of the motor encoder
Bit 2   OverHeating Error   Detect internal temperature exceeds the configured operating temperature
Bit 1   Motor Hall Sensor Error(Default)    Motor hall sensor value exceeds normal range
Bit 0   Input Voltage Error Detect input voltage exceeds the configured operating voltage
*/

struct CDynamixelStat{
    long  PositionAccum ; // !< Accumulate position
    long  PositionCnt ; //!< Actual position as read from actuator
    float PositionOffset; //!< The position count when the actuator angle is zero
    float PositionScale; // !< Position scale from encoder counts to radians
    float SpeedScale; //!< Speed scale from encoder counts to radians
    float CurrentScale; //!< Current scale command to amp
    float CurrentLimit; //!< Current limit for torque axes amp
    float InvCurrentScale; //!< Current scale amp to command
    float MaxArmCurrent ; // Maximum current
    float PositionActual ; //!< Actual position as read from actuator
    float SpeedCmdRadSec  ; //!< Speed command in radians/second
    float OuterPos ; // Position measured by external absolute device
    long  NominalEncoderOffset; // !< Nominal encoder reading at zero position
    short unsigned MotorOn ;    //!< 1 if the motor is on
    short unsigned AlgnMotorOn ;
    short unsigned HardErrorStat ;
    short unsigned AlgnHardErrorStat ;
    short Temperature ; //!< Actuator temperature C
    short unsigned MotorOnRequest ; // !< 1 if motor is desired to be on
    short unsigned Moving;
    short unsigned CommErrorStatus ; // 1: Processing failure, 2 instruction error, 3 CRC error, 4 data range, 5 data length, 6 data limit 7 access violation
    long  unsigned CombinedState    ; // !< Combined status
    short unsigned AlertCnt ;
    short unsigned PosInit ;
    short unsigned bPosModulo  ;
    short unsigned bPinAxis    ;
    short unsigned bIgnoreErrorMask  ;
    short CurrentGoalRequest ;
    long  CurrentGoal ;
    float CurrentCmd   ;
    float CurrentActual ;//!< Actual current as read from actuator
    float SpeedActual ;//!< Actual speed as read from actuator
    long  PositionGoal ; //!< Position goal as set to actuator
    long  SpeedGoal ;
    long  Statistic1 ;
    //float PosTargetRad ; //!< Position target in radians
    struct CAxisSim Sim ; // !< For Dynamixel simulation
    short IsOuterPos ; // !< 1 if axis is homed by external position
    short InHoming ; // !< 1 if in homing process
    short IsPosLimit ;
    short IsDxlPosLoop   ;
    long  MinPosRefLimit ;
    long  MaxPosRefLimit ;
};


void inline EnableRs485Tx_2()
{
    GpioDataRegs.GPESET.bit.GPIO143 = 1 ;
}
void inline DisableRs485Tx_2()
{
    GpioDataRegs.GPECLEAR.bit.GPIO143 = 1 ;
}

void inline EnableRs485Tx_1()
{
    GpioDataRegs.GPESET.bit.GPIO144 = 1 ;
}
void inline DisableRs485Tx_1()
{
    GpioDataRegs.GPECLEAR.bit.GPIO144 = 1 ;
}



DX_EXTERN_TAG struct CDynamixelStat DynStat24[DEF_NUM_MAX_24V_AXES];
DX_EXTERN_TAG struct CDynamixelStat DynStat12[DEF_NUM_MAX_12V_AXES];

long unsigned  GetDxlPayload( short unsigned si ,short unsigned *nData,
        struct CDynamixelProt2 *pProt , long unsigned *pRslt );


short ConstructReadSyncMsg ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short ReadLen , short unsigned nDyn , short unsigned SlaveIdList[] ,
        short unsigned Net  );

short ConstructReadMsg ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short unsigned ReadLen , short unsigned ID , short unsigned net );

short ConstructWriteMsg ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short unsigned bytes , long data , short unsigned ID  );


short ConstructWriteSyncMsgSingleItem ( struct CDynamixelMsg * Msg ,
        short unsigned StartAdd , short WriteLen , short unsigned nDyn , short unsigned SlaveIdList[] ,
        long Item[] , short unsigned net );
short DynamixelTx ( struct  CDynamixelProt2 *pDyn , struct CDynamixelMsg *pMsg );


short unsigned * GetDynamixelString(short unsigned *sPtrIn , struct CDynamixelMsg *pMsg
        , short unsigned lmax);

short unsigned StructDecode ( short unsigned *buf  , const struct DecodeKey * key , short unsigned offset );

short DxReadControlConfirm( struct CDynamixelProt2 *pProt , short unsigned cnt );

short InitDynamixelNet ( struct  CDynamixelProt2 *pDyn ,short unsigned net , short unsigned NumAxes  );

void Dyn24StateMachine ( void );
void Dyn12StateMachine ( void );


#endif /* APPLICATION_DYNAMIXEL_H_ */
