#ifndef BH_AXES_DEFINED
#define BH_AXES_DEFINED

#define InteralPosUnits2M 7.692307692307693e-05f // 1/13000; linear axis report distance at 1/13000 meter (13000 is an axis constant)
#define InteralAngleUnits2Rad 9.587379924285257e-05f // pi/2^15 angular axis report angle at 2^15/pi meter (2^15/pi is an axis constant)


#define FLOAT_OBJ_INDEX 0x2225
#define CFG_Float_Pot1Rat2Rad 1
#define CFG_Float_Pot2Rat2Rad 2
#define CFG_Float_Pot1RatCenter 3
#define CFG_Float_Pot2RatCenter 4
#define CFG_Float_PhaseOverCurrent 5
#define CFG_Float_VDcMax 6
#define CFG_Float_VDcMin 7
#define CFG_Float_LowAutoMotorOffThold 8
#define CFG_Float_HiAutoMotorOffThold 9
#define CFG_Float_DeltaTestUser 10
#define CFG_Float_DeltaTestTol 11
#define CFG_Float_MaxPotentiometerPositionDeviation 12
#define CFG_Float_UserPosOnHomingFW 13
#define CFG_Float_UserPosOnHomingRev 14
#define CFG_Float_MotionConvergeWindow 15
#define CFG_Float_MotionConvergeTime 16
#define CFG_Float_SpeedConvergeWindow 17
#define CFG_Float_MinPositionFb 18
#define CFG_Float_MaxPositionFb 19
#define CFG_Float_ProfileAcceleration 20
#define CFG_Float_SlowVmax 21
#define CFG_Float_KGyroMerge 22
#define CFG_Float_PosErrorExtRelGain 23
#define CFG_Float_PosErrorExtLimit 24
#define CFG_Float_WheelAddZ 25
#define CFG_Float_SteeringColumnDistRatio 26
#define CFG_Float_PdoCurrentReportScale 27
#define CFG_Float_ExtCutCst 28


#define CFG_OBJ_INDEX 0x220d

// Configuration objects
#define CFG_CONFIRM 0 //     { .ind = 0 ,  .Flags = CFG_FLOAT | CFG_MUST_INIT | CFG_RECALC , .ptr = (float*) &SysState.ConfigDone, .lower =  0.0f,.upper = 2.0f, .defaultVal = 0.0f },// :ConfigDone [Management] {Approve configuration is done}
#define CFG_MinInterMessage 1  //    { .ind = 1 ,  .Flags = CFG_FLOAT | CFG_MUST_AUTO | CFG_KILLS_CFG , .ptr = (float*) &SysState.MCanSupport.MinInterMessage, .lower =  0.002f,.upper = 0.1f, .defaultVal = 0.006f },// :MinInterMessage [Timing] {minimum estimate for communication cycle}
#define CFG_MaxInterMessage 2 //  { .ind = 2 ,  .Flags = CFG_FLOAT | CFG_MUST_AUTO | CFG_KILLS_CFG , .ptr = (float*) &SysState.MCanSupport.MaxInterMessage, .lower =  0.002f,.upper = 0.1f, .defaultVal = 0.010f },// :MaxInterMessage [Timing] {maximum estimate for communication cycle}
#define CFG_NomInterMessageTime  3  // { .ind = 3 ,  .Flags = CFG_FLOAT | CFG_MUST_AUTO | CFG_KILLS_CFG , .ptr = (float*) &SysState.MCanSupport.NomInterMessageTime, .lower =  0.002f,.upper = 0.1f, .defaultVal = 0.008192},// :NomInterMessageTime [Timing] {Nominal time for communication cycle}
#define CFG_GRef_Amp  4
#define CFG_GRef_F  5
#define CFG_GRef_Dc  6
#define CFG_GRef_Duty 7
#define CFG_GRef_bAngleSpeed  8
#define CFG_GRef_AnglePeriod  9
#define CFG_TRef_Amp  10
#define CFG_TRef_F 11
#define CFG_TRef_Dc 12
#define CFG_TRef_Duty  13
#define CFG_MaxRawCommChangeInCycle 14
#define CFG_CommutationMode 15
#define CFG_UserPosOnHome 16
#define CFG_MaxSupportedClosure 17
#define CFG_qf0PBw 18
#define CFG_qf0PXi 19
#define CFG_qf0ZBw 20
#define CFG_qf0ZXi 21
#define CFG_qf0Cfg 22
#define CFG_qf1PBw 23
#define CFG_qf1PXi 24
#define CFG_qf1ZBw 25
#define CFG_qf1ZXi 26
#define CFG_qf1Cfg 27
#define CFG_SpeedKp 28
#define CFG_SpeedKi 29
#define CFG_PosKp 30
#define CFG_MaxAcc 31
#define CFG_ProfileSpeed 32
#define CFG_ProfileAcc 33
#define CFG_ProfileDec 34
#define CFG_ProfileTau 35
#define CFG_OuterSensorBit2User 36
#define CFG_MotionConvergeWindow 37
#define CFG_PosErrorLimit 38
#define CFG_BrakeReleaseDelay 39
#define CFG_BrakeReleaseOverlap 40 // Delay from brake release to start of motion referencing
#define CFG_UseCase 41
#define CFG_OuterMergeCst 42
#define CFG_FloatParRevision 43

/*
#define MODE_OF_OPERATION_PROFILED_POSITION 1
#define MODE_OF_OPERATION_PROFILED_VELOCITY 3
#define MODE_OF_OPERATION_PROFILED_TORQUE 4
#define MODE_OF_OPERATION_HOMING 6
#define MODE_OF_OPERATION_PROFILED_CSP 8
#define MODE_OF_OPERATION_PROFILED_CSV 9
*/

#define PDO3_CONFIG_ROTARY_POT 0
#define PDO3_CONFIG_LINEAR 1
#define PDO3_CONFIG_WHEEL  2
#define PDO3_CONFIG_STEERING  3
#define PDO3_CONFIG_NECK  4


// Modes
enum E_LoopClosureMode
{
    E_LC_Voltage_Mode = 0 ,
    E_LC_OpenLoopField_Mode = 1 ,
    E_LC_Torque_Mode = 2 ,
    E_LC_Speed_Mode = 3 ,
    E_LC_Pos_Mode = 4 , // Position mode on encoder
    E_LC_Dual_Pos_Mode = 5 ,// Position mode: speed on encoder , position on potentiometer
    E_LC_EXTDual_Pos_Mode = 6 // Position mode: external pos error and speed reference
} ;

enum E_ReferenceModes
{
    E_PosModeNothing = 0 ,
    E_PosModeDebugGen = 1 ,
    E_PosModeStayInPlace = 2 ,
    E_PosModePTP = 3 ,
    E_PosModePT = 4 ,
    E_RefModeSpeed = 5,
    E_RefModeSpeed2Home = 6
};


struct CSdoListMng
{
    short state ; // !< State - 0: Init , 1: New SDO , 2: Wait completion , -1: Failure
    short done ; // !< -1: Error  0: Executing 1: Normal done 2: Not installed
    short unsigned SdoCounter ; //!< Advance counter of transmitted SDO
    short unsigned RetryCtr  ; //  !< Retry counter
};

struct CPdBitGen
{
    int unsigned ObsoleteWheelBrakeRelease : 1 ;
    int unsigned ObosleteSteerBrakeRelease : 1 ;
    int unsigned ObosleteNeckBrakeRelease : 1 ;
    int unsigned ObosleteShuntActive : 1 ;
    int unsigned ObosleteServoGateDriveOn : 1 ;
    int unsigned LaserPsSwOn : 1 ;
    int unsigned Pump1SwOn : 1 ;
    int unsigned Pump2SwOn : 1 ;
    int unsigned ChakalakaOn : 1 ;
    int unsigned StopBrakeReleased : 1 ;
    int unsigned StopRelaySwOn : 1 ;
    int unsigned FanSwOn : 1  ;
    int unsigned TailLampSwOn : 1 ;
    int unsigned Disc1On : 1 ;
    int unsigned ServoPowerOn : 1 ;
    int unsigned Reserved : 1 ;
};


struct CAxisCBit
{
    int unsigned MotorOn    : 1 ; // (0) PWM is on
    int unsigned MotorReady : 1 ; // (1) Ready for motion control (not in brake or emergency release/engage sequence)
    int unsigned StoEvent   : 1 ; // !< (2) Braking in anticipation for disable by STO
    int unsigned ProfileConverged : 1 ; // !< (3) Indication that profile has converged
    int unsigned MotionConverged : 1 ; // !< (4) Indication that motion tracks with desired precision
    int unsigned MotorFault : 1 ;  // (5) Fault indication, general
    int unsigned QuickStop : 1 ;  // (6) In quick (emergency) stop
    int unsigned BrakesReleaseCmd : 1 ; // (7) 1 if brakes are released
    int unsigned PotRefFail : 1 ; // (8) Failure of potentiometer reference voltage
    int unsigned LoopClosureMode : 3 ; // (9..11) Loop closure tell back
    int unsigned SystemMode : 3 ; // (12..14) Automation mode (see above E_SysMode)
    int unsigned CurrentLimit : 1 ; // (15) 1 if current is limited
    int unsigned NoCalib : 1 ; // (16) Calib failure
    int unsigned GyroNotReady : 1 ; // (17) Gyro still calibrates its offset
    int unsigned RecorderWaitTrigger : 1 ; // (18) Recorder awaits trigger
    int unsigned RecorderActive : 1 ;// (19) Recorder activated (wait for trigger or collecting data)
    int unsigned RecorderReady  : 1 ; // (20) Recorder data ready for upload
    int unsigned RefGenOn  : 1 ; //(21)
    int unsigned TRefGenOn  : 1 ;//(22)
    int unsigned IsTemperature : 1 ;//(23)
    int unsigned ReferenceMode  : 3 ;//(24..26)
    int unsigned Pdo3IsPotDiff : 1 ; // (27)
    int unsigned Configured      : 1 ; //(28)
    int unsigned Homed : 1 ; // (29)
    int unsigned Din1 : 1 ; // (30)
    int unsigned Din2 : 1 ; //(31)
};




union UAxisCBit
{
    struct CAxisCBit  bit ;
    long unsigned all ;
    short unsigned us[2] ;
};

struct CAxisCBit2
{
    int unsigned bAutoBlocked : 1 ;
    int unsigned NodeStopped :1 ;
    int unsigned InAutoBrakeEngage: 1 ; // Brake is automatically engaged as motion is converged
    int unsigned EnableAutoBrakeEngage: 1 ; // Brake is authorized to automatically engage as motion is converged
    int unsigned bRsvd : 12 ;
};

union UAxisCBit2
{
    struct CAxisCBit2  bit ;
    short unsigned all ;
};

// Control Word (CW) for BH servo axes
struct CBHAxisCW
{
    int unsigned MotorOnCmd: 1 ; // 1 for motor on
    int unsigned FaultReset: 1 ; // 1 to reset fault (must be rising edge to restart motor after fault)
    int unsigned LoopClosure: 3 ; // see loop closure enumeration (E_LoopClosureMode), NEVER update directly, use pAxis->BH.LoopClosureMode
    int unsigned ReferenceMode: 3 ; // See reference method enumeration , NEVER update directly, use pAxis->BH.ReferenceMode (E_ReferenceModes)
    int unsigned ReleaseBrake : 1 ; // 1 to release brakes, if automatic operation is bypassed, see BrakeOverride bit below
    int unsigned DisableAutoBrake : 1 ; // 1 to disable automatic motor off + brake on target arrival
    int unsigned WheelTracksSteering : 1 ; // 1 to make the wheel track the steering
    int unsigned SwitchSizeSelect : 2 ; // Select a switch size option (wheels only)
    int unsigned KillHoming : 1 ;   // 1 to kill an existing homing process, NEVER update directly
    int unsigned GoSlow : 1  ;      // 1 if motion profiles are to go by the slow speed
    int unsigned BrakeOverride : 1 ; // 1 to overide brake automation
};



#define ReleaseBrake_MASK (1U<<8)
#define BrakeOverride_MASK (1U<<15)


// Control Word (CW) for BH servo axes
union UBHAxisCW
{
    struct CBHAxisCW bit;
    short  unsigned all ;
};



struct CBHLimitSw
{
    float SwitchWidth ;
    float DistIntoWidth ;
    short ValidCounter ;
    short SwitchDir ;
    long  WheelEncoder ;
    long  WheelEncoderAtCenter ;
    unsigned long  StatusAsPdo ;
    short unsigned RiseMarker ;
    short unsigned FallMarker ;
    short unsigned PresentValue ;
    short SwitchRequestDir  ;
    short unsigned SwitchDetectMarker; //
    short unsigned SwitchDetectValidUsed ; //
};

union UI2CCntr
{
    long all ;
    struct
    {
        short unsigned I2tCntr  ;
        short unsigned I2tBeanCntr ;
    } fields ;
};


// Axis values special for the BH servo axes
struct CBH
{
    union UBHAxisCW BhCw ;// Control Word (CW) for BH servo axes
    float UserSpeed ; // !< Reported speed  (if applicable)
    float AvgIntervalSpeed ; // Averaged speed (actually delta position)
    float UserPos ; // !< Reported position (if applicable)
    float CurrentUseRatio ;// [0...1] factor of current usage relative to the rated
    float UserSpeedCmd ; // Set it as command to the axis
    float UserManualSpeedTarget ; // Set it as manual target command to the axis
    float UserPosCmd ; // Set it as command to the axis
    float UserExtPosError ; // Set it as external position error to the axis
    float CurrentCmd ; // Set it as command to the axis
    float UserProfileSpeed ; // Set it as command to the axis
    float UserProfileAcc ; // Set it as command to the axis
    float PotMean ; // Mean of potentiometers (or value if only one exists)
    float PotDifference ; // Neck reports difference between shoulder potentiometers (Valid only if 2 potentiometers exist, tension in rubber connection)
    float ReportPosCmd  ; // Report from axis of position command (Valid only on position loop closure)
    float ReportSpeedCmd  ; // Report from axis of speed command (Not valid if 2 potentiometers exist)
    float *ModalCmdPtr[8] ; // Helper : Tells what reference (position speed or current) to take by the loop closure mode
    float PosError ; // Position error
    float PosEncoder ; // Position of encoder (used to evaluate the difference between outer sensor and internal reading)
    float IndividualPosCmd ;// Debug : Set manual position command regardless of automation
    float IndividualSpeedCmd ;// Debug : Set manual speed command regardless of automation
    float Torque ; // !< Reported torque
    float TorqueFilt ; // !< Reported torque, filtered version
    float OneOverTs  ; // !< 1/System sampling time
    long  WheelEncoderCnt ;      // Wheel encoder count (Valid only on speed or lower loop closure)
    long  unsigned SwVersion ;
    long  unsigned FaultCode   ; // Last (or killing) captured error
    float Temperature ;
    //short HomingDirection  ;
    //short HomingMethod     ;
    struct CBitCountStr ComCbit ; // Communication error tracker
    union UAxisCBit AxisCbit ;
    union UAxisCBit2 AxisCbit2 ;
    struct CBHLimitSw LimitSw;
    short unsigned LoopClosureMode ;  // Loop closure mode,  enum E_LoopClosureMode
    short unsigned IndividualMode  ; // 1 if commanded individually
    short unsigned IndividualMotorOnCmd  ; // Motor on command for individual mode
    short NewCmdCnt   ; // Counter to set for ignoring 'converged" report, avoiding a convergence report before trajectory ever started
    short unsigned PositionLoopClosureMode ; // Loop closure mode for position actions (either single feedback of dual loop)
    short unsigned ResetFailRequestCnt ;
    short unsigned KillHomeRequestCnt ;
    short unsigned ResetFailUseCnt ;
    short unsigned KillHomeUseCnt ;
    short unsigned PDO3ReportStyle ; // DO3_CONFIG_ROTARY_POT : 0 , PDO3_CONFIG_LINEAR : 1 , PDO3_CONFIG_WHEEL
    short unsigned IsPosition ; // If axes make position control
    short unsigned ReferenceMode ; // The reference mode for this axis : method enumeration (E_ReferenceModes)
    short unsigned DisableAutoBrake ;
    short unsigned WheelTracksSteering ;
    short unsigned ForceMotorOffBrakeRelease ;
    short unsigned ForceMotorOnBrake ;
    short unsigned HomeCnt ;
    short BHAxisDirection ;
    long unsigned PerAxisExpectedPdoScoreBoard ; // The PDO hit marker expected for this axis
    float PosCommandOffset; // !< Offset for position command
    union UI2CCntr UI2tCntr ; // !< I2t counters
};


struct CCanAxis
{
    short unsigned CanId ; //!< CAN ID of the axis
    short unsigned AxisRole ;
    short unsigned AxisProj ;
    short BootAcknowledge ; //!< 1 if bootup message is correctly accepted from the axis
    short unsigned Installed ; // !< 1 if installed
    short Status ;
    short unsigned DigitalIn ; // !< Digital inputs, were applicable
    short unsigned InductiveSensor ;
    short unsigned AutoStartCnt ; // Counter for restart process
    short unsigned bPosSim ;
    short unsigned PdoTxScoreBoard ;
    long  EncOnInductiveSensor ; // !< Encoder value met on inductive sensor
    struct CSdo Sdo ; // !< The SDO to serve this axis
    struct CSdoListMng SdoMng ; // !< Sdo programming management struct
    long SdoBuf[8] ; // !< Short buffer for SDO management
//    struct CCiaControlWord ControlWord ; // Commanded control word
    short MotorOnToutCnt ; // !< Time out counter for motor on action
    //short IsManual;
    // short OperationEnabled ; // !< Axis in the operation enabled state
    //short IsFault ; // !< State is fault
    short PositionReached ; // !< Flag that position is reached
    short ConvergenceCnt ;
    short bHomeVerify  ; // !< Flag that home was verified by matching potentiometer and encoder moves
    short unsigned bRequiresPotHoming ; // !< Flag that an axis requires homing by potentiometer
    //float CurrentCmd ; // !< The current command (when applicable)
    //float SpeedTarget ; // !< Target for speed profiling, in radian/ second
    struct CCanMsg Pdo1RxMsg, Pdo2RxMsg ; // Data to transmit to axis as PDO 
    float OuterPos ; // Position as measured by outer sensor
    float MotCntRad ; // Motor encoder counts per 1 radian of axis motion
    float RatedCurrent ; // !< The current rating (continuous current) of the motor
    float PeakCurrentObj ; // !< The current maximum (peak current) of the motor, in promils of  RatedCurrent
    float InvPdoCurrentReportScale; // ! The scale by which a PDO shall report current
    long  PosHard  ;
    struct CBH BH ; // Specific data for "made in BH" axes
    //float AddSpeed ; // !< Speed correction
};

union UCia
{
    float f ;
    float *fPtr ;
    unsigned long ul ;
    unsigned short us[2] ;
} ;

struct CInitSdo
{
    short unsigned Index ;
    short unsigned SubIndex ;
    union UCia Lpayload  ; //!< Number to send
    short unsigned DataType    ; //!< Cia DATA type - 5: Byte , 6: Word , 7: Long or float , 8: Pointer to long or to float
};

// Functions
//////////////
// Process the PDO1 data from a BH axis (see in-line documentation for PDO contents)
short ProcessTxPdo1(short unsigned LogicId , struct CCanMsg *pMsg);

// Process the PDO2 data from a BH axis (see in-line documentation for PDO contents)
short ProcessTxPdo2(short unsigned LogicId , struct CCanMsg *pMsg);

// Process the PDO3 data from a BH axis (see in-line documentation for PDO contents)
short ProcessTxPdo3(short unsigned LogicId , struct CCanMsg *pMsg);

// Process the PDO4 data from a BH axis (see in-line documentation for PDO contents)
short ProcessTxPdo4(short unsigned LogicId , struct CCanMsg *pMsg);

// Shut a BH axis
void KillMotor(struct CCanAxis *pAxis);

// Start a BH axis
void EnableMotor(struct CCanAxis *pAxis);


// Transmit modal commands and reference values to BH axes
short BuildRxPdo1Slave( short unsigned  LogicId);

// Command all axes with potentiometers to align their  position reading with the potentiometer
long unsigned HomePots( void ) ;

// Read the current limits of CAN axes
short ReadAxesConfig ( void );

// Build an SDO from data in an initialization list
short ManageCfgSdoList (short unsigned axis , const struct CInitSdo *pList  );
short BuildSdoFromInit  ( short LogicId , const struct CInitSdo *pInit , struct CSdo *pSdo );

// Prepare an NMT, instructing an axis to reset communication and send bootup message
short SendResetComWaitBootup( short unsigned id);

// Trap driver to receive and approve extended boot up messages
short CanAcknowledgeBootUp( struct CCanTrap * me );

// Halt ot un-halt a motor
void HaltMotor(struct CCanAxis *pAxis, short unsigned value);

// Initialize the CAN drive data bases
void InitCanAxes(void);

// Go over all the motors and see if any of them failed
short unsigned  CbitManageMotorFaults(void);




inline
short IsSpeedCmdZero( struct CCanAxis *pAxis )
{
    return pAxis->BH.UserSpeedCmd ? 0 : 1 ;
}


// Reset an existing fault on an axis, enabling further actions.
// Use only when there is a fault to reset.
// If the motor it on, it will be turned off.
inline
void ResetAxisFaults(struct CCanAxis *pAxis)
{
    pAxis->BH.ResetFailRequestCnt += 1 ;
}




inline
void SetPosCmd2PosFeedback(struct CCanAxis *pAxis)
{
    pAxis->BH.UserPosCmd = pAxis->BH.UserPos ;
}



inline
void SetUserManualSpeedTarget( struct CCanAxis * pAxis , float v , float DriveFac )
{
    short unsigned mask ;
    mask = __disable_interrupts() ;
    pAxis->BH.UserManualSpeedTarget = v * DriveFac ;
    _restore_interrupts(mask) ;
}

inline
void SetWheelSpeedCmd( struct CCanAxis * pAxis , float v , float DriveFac )
{
    pAxis->BH.UserSpeedCmd = v * DriveFac ;
}


inline short
CanAxisIsPosition(struct CCanAxis *pAxis)
{
    return pAxis->BH.LoopClosureMode >= E_LC_Pos_Mode ;
}


inline
short unsigned IsMotorOn(struct CCanAxis *pAxis)
{
    return pAxis->BH.AxisCbit.bit.MotorOn * pAxis->Installed ;
}


inline
short unsigned IsMotorReady(struct CCanAxis *pAxis)
{
    //return pAxis->BH.AxisCbit.bit.MotorOn * pAxis->BH.AxisCbit.bit.MotorReady * pAxis->Installed ;
    return pAxis->BH.AxisCbit.bit.MotorReady * pAxis->Installed ;
}

inline
void SetCanAxisReferenceMode(struct CCanAxis *pAxis, enum E_ReferenceModes refmode)
{
    pAxis->BH.ReferenceMode = refmode ;
}

inline
void SetCanAxisPosTarget(struct CCanAxis *pAxis, float value)
{
    short unsigned mask ;
    mask = __disable_interrupts() ;
    pAxis->BH.UserPosCmd = value ;
    pAxis->BH.ReferenceMode=E_PosModePTP ;
    _restore_interrupts(mask) ;
}

inline
void SetCanAxisDisableAutoBrake(struct CCanAxis *pAxis, short unsigned value)
{
    pAxis->BH.DisableAutoBrake = value ;
}

inline
void ForceMotorOffAndBrakeRelease(struct CCanAxis *pAxis, short unsigned value)
{
    short unsigned mask ;
    mask = __disable_interrupts() ;
    pAxis->BH.ForceMotorOffBrakeRelease = value ;
    if ( value )
    {
        pAxis->BH.ForceMotorOnBrake = 0  ;
    }
    _restore_interrupts(mask) ;
}

/*
 * As in wheel arm process: Force a motor to brake under motor ON
 */
inline
void ForceMotorOnBrake(struct CCanAxis *pAxis, short unsigned value)
{
    short unsigned mask ;
    mask = __disable_interrupts() ;
    pAxis->BH.ForceMotorOnBrake = value ;
    if ( value )
    {
        pAxis->BH.ForceMotorOffBrakeRelease = 0 ;
    }
    _restore_interrupts(mask) ;
}

// Set the brake actions to NORMAL
inline
void SetBrakeActionAutomatic(struct CCanAxis *pAxis)
{
    short unsigned mask ;
    mask = __disable_interrupts() ;
    ForceMotorOnBrake(pAxis,0) ;
    ForceMotorOffAndBrakeRelease(pAxis,0) ;
    _restore_interrupts(mask) ;
}


inline
void SetCanAxisWheelTracksSteering(struct CCanAxis *pAxis, short unsigned value)
{
    pAxis->BH.WheelTracksSteering = value ;
}


inline
float GetCanAxisPosTarget(struct CCanAxis *pAxis)
{
    return pAxis->BH.UserPosCmd ;
}


/*
 * Test if an axis is in fault. Either it does not communicate or it flags a fault
 */
inline
short unsigned IsAtFault(struct CCanAxis *pAxis)
{
    if (pAxis->BH.ComCbit.ErrorCond )
    {
        return 1 ;
    }
    return pAxis->BH.AxisCbit.bit.MotorFault ? 1 : 0  ;

}

inline
short unsigned IsFaultFree(struct CCanAxis *pAxis)
{
    return pAxis->Installed * pAxis->BH.AxisCbit.bit.MotorFault ? 0 : 1  ;
}

void KillMotor(struct CCanAxis *pAxis);
void EnableMotor(struct CCanAxis *pAxis);

#endif
