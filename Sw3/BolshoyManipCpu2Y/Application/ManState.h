#ifndef MANSTATE_H_DEFINED
#define MANSTATE_H_DEFINED

#define NOMINAL_TS_SEC 32e-3f

#define STDBY_SHOULDER_ANGLE 0.2f








enum
{
    PIN_AXIS_RIGHT_RELATIVE = 0 ,
    PIN_AXIS_LEFT_RELATIVE = 1
};


//#else
enum
{
    MAN_AXIS_LSTOP = 0,
    MAN_AXIS_RSTOP = 1
};
enum
{
    MAN_AXIS_SHOULDER = 0,
    MAN_AXIS_ELBOW = 1,
    MAN_AXIS_WRIST = 2
};



enum
{
    AXIS_ID_ELBOWPIN_R = 6,
    AXIS_ID_ELBOWPIN_L = 7
};

enum
{
    AXIS_ID_SHOULDER = 3,
    AXIS_ID_ELBOW = 4,
    AXIS_ID_WRIST = 5,
    AXIS_ID_LSTOP = 1, // Left stop door
    AXIS_ID_RSTOP = 2  // Right stop door
};

#define DYN12_PIN_ERROR_MASK 0x1c

#define ERROR_SRC_SYS 10

#ifdef PD_VARS_OWNER
#define MAN_EXTERN_TAG
#else
#define MAN_EXTERN_TAG extern
#endif






#define MAN_AX_ERROR_NO_COMM -2

typedef  void (*AlarmFunc)(short error, short unsigned id) ;




MAN_EXTERN_TAG struct CProfiler XProfile ; // !< Line speed profiler for coordinated mode

struct CSpaceMotion
{
    float Xstart;
    float Xend;
    float Ystart;
    float Yend;
    float s ; // !< Total travel
    float Xnow;
    float Ynow;
};
MAN_EXTERN_TAG struct CSpaceMotion TTProfile; // Ainao

//void SetTimeTarget ( short unsigned ID , long unsigned usec );
//short IsTimeElapse( short id ) ;

struct LinkSpecific24
{
    float Kp ; // !< Position gain
    float StopPos ; // !< Position w.r.t which stopped condition is evaluated
};

struct LinkSpecific12
{
    float acc ;
    float Kpp ;
    float PosTarget ; // !< Poisition target
 };


struct LinkControl
{
    float Pos     ; // !< Link position in radians
    float Speed   ; // !< Link speed in rad/sec
    float SpeedCmd; // !< Speed command rad/sec
    float PosErr ; // !< Position error
    float FeedFwdCommand; // !< rad/sec
    float MaxSpeedCmd ; // !< Maximum speed command for controller
    float AccelerationTime ; // !< Time to reach max speed
    float tau ;
    struct CProfiler  Profiler ; // !< Motion profiler
    float StopDec ; // !< Stopping deceleration, rad/sec^2
    float StopSpeedThold ; // !< Threshold of speed for stopping decision
    float StopWindow ; // !< Stopping position window
    long unsigned StopWindowTimeUsec ; // !< Time for stopping position window
    float StabilizationTime ;
    float StandByPosition ; // !< Position for axis stand by
    float dT    ; // !< Time interval between consecutive controller runs
    short unsigned MotorOn   ; // !< Torque on or off status
    short unsigned AlgnMotorOn ; // !< Zero extension to motor on
    long  unsigned IsStopped ; // !< Boolean: 1 if axis is stopped
    long  unsigned IsPosDone ; // !< Boolean: 1 if position target is reached stably
    short unsigned TimerID ; // !< ID of internal management timer
    short unsigned AxisId    ; // !< The ID of the axis in the networks
    short unsigned MotorOnRequest ; // !< Torque on request
    short Error ; //!< Error indication
    short LastError ; //!< Last error indication (not necessarily accepted)
    short IsPos ; // !< 1 if axis is position control
    long unsigned ErrorTimeUsec ; // !< Time for error decision debouncer
    unsigned long long LastVistTime ; // !< The last time axis is visited
    short  GoTimerID  ;
    short  StabilizeTimerID ;
    struct CBitIntegrateStr OverErrorBit ; // !< BIT counter for over position error
    struct LinkSpecific24 L24 ;
    struct LinkSpecific12 L12 ;
};




struct CManCmdSamp
{
    short GetSide; //!< The side to get the package, can be -1:left or 1:right
    short PackageGet ; // !< 1 for Get , 0 for set
    short IsRepeated ; // !< 1 if asked action is repeated (like repush)
};
MAN_EXTERN_TAG struct CManCmdSamp  ManCmdSamp ;


// Manipulator error recovery management
struct CManRecovery
{
    short unsigned RecoveryAttemptCounter ; // !< Counter for recovery attempts
    short unsigned RecoveryState          ; // !< State for recovery attempts
    float TargetX ; // !< Recovery data for Cartesian motions
    float TargetY ;
    float LineSpeed ;
    float PosTarget[DEF_NUM_MAX_24V_AXES] ;
    float SpeedFac      ; // Speed reduction factot
};

struct CDebug
{
    short unsigned Wait ;
    short unsigned WaitEnable ;
    float WaitTimer ;
};


struct CGoToState
{
    float length ;
    float angle  ;
    float SpacerFinal  ;
    float SpacerTarget ;
    short unsigned Flags ;
    short Error  ;
    short State  ;
    short IsActive ;
};

struct CSuckRequest
{
    short unsigned DoSuck : 1 ; // Command to perform sucking
    short unsigned DoNotTestSuction : 1 ; // Command not to test actual suction
    short unsigned RestartTimerAnyway  : 1 ; // Command to restart timer regardless how much time elapsed
} ;

union USuckRequest
{
    struct CSuckRequest items ;
    short  unsigned us  ;
    long   unsigned ul  ;
};

struct CTapeArmCmdSamp
{
    short unsigned PackageGet ;  // Package GET command
    short unsigned IsRepeated ; // Is repeated access attempt
};

struct CTapeArmCmd
{
    float x  ; // X coordinate of manipulator
    float y  ; // Y coordinate of manipulator
    float theta ; // Angle of manipulator
    float ThetaTarget ; // The target for rotator angle
    float DTarget ; // Expected distance of the package from robot center
    float DFinalApproach ; // Distance to stand and first measure package before the final approach
    float YTarget ; // Y axis (perpendicular to robot line) motion target
    float YTargetRepush ; // Last seen position of package, as target for start of re push
    float YOrigin ; // Y axis origin (shelf line) w.r.t robot center
    short unsigned ServoStopped ;
    short unsigned ProfilerStopped ;
    unsigned short ServoMotorOn ; // 1 if all the servo motors are on
    short unsigned DoorsMotorsOn ; // Indication that all the motors in the DXL chain are working
    short unsigned HomingState  ; // !< State of the tape arm homing process
    short unsigned HomingSubState  ; // !< SubState of the tape arm homing process
    short unsigned StdbyRequest ; // !< Request to stand by
    short FailedPackageGrip ; // Indicate that a package grip has been lost
    short GetSide  ; // The package side: 0 : Undefined 1: Left 2: Right
    short StopError ; // Log of the error code that stopped package handling
    short State  ;
    struct CTapeArmControlWord ControlWord ; // Manipulator command word
    struct CTapeArmControlWord ControlWordCopy ; // Copy of the command word in use
    struct CGoToState GoTo ;  // Manage posture change state machine
    struct CTapeArmCmdSamp CmdSamp ; // Sampled master command for execution
};

MAN_EXTERN_TAG struct CTapeArmCmd TapeArmCmd ;


struct CManCmd
{
    long  unsigned State ; //!< State
    struct CManipControlWord ControlWord ; // !< Manipulator control word
    short  unsigned AlgnControlWord ; // Create a fixed zero extension to ControlWord
    struct CManipControlWord ControlWordCopy ; // !< Copy of Manipulator control word
    short  unsigned AlgnControlWordCopy ; // Create a fixed zero extension to ControlWordCopy
    short StopError ; // !< Error emitted from the stop mechanism
    short  unsigned AlgnStopError ; // Create a fixed zero extension to StopError
    short GetSide; //!< The side to get the package, can be -1:left or 1:right
    float DTarget; //!< Expected Y of target
    float XTarget; // !< X (bodyline) deviation of target
    float RTarget; // !< Radius vector of target
    float XTargetStack; // !< X (bodyline) deviation of target, store in stack
    float ThetaTarget; // !< LOS of target w.r.t. robot x axis (pointing forward). >0 on right-hand side.
    float DFinalApproach ; // !< The distance left for final approach
    float ElbowTarget ; // !< Target for the elbow
    float ShoulderTarget ; // !< Target position for the shoulder
    float WristTarget ; // !< Target position for the wrist
    short MotorOnMan      ; // !< Motor on flag for all the 3 manipulator motors
    short MotorOnStop     ; // !< Motor on flag for the stop motors
    short MotorAbsentMan      ; // !< Motor that remained off 3 manipulator motors
    short MotorAbsentStop     ; // !< Motor that remained stopped for the stop motors
    short MotorOnRequestMan   ; // !< Motor on request for all the 3 manipulator motors
    short MotorOnRequestStop      ; // !< Motor on request for the stop motors
    short MotorOffRequestMan      ; // !< Motor off request for all the 3 manipulator motors
    short MotorOffRequestStop     ; // !< Motor off request for the stop motors
    short ArmError ; // !< Error emitted from the arm mechanism
    short ArmErrorSrc ; // !< Specific motor id that emitted arm error
    short StopErrorSrc ; // !< Specific motor id that emitted stop error
    short FailedPackageGrip  ; // !< Counts package gripping failures
    short unsigned Stopped12 ; // !< 1 if stopped
    short unsigned Stopped24 ; // !< 1 if stopped
    short unsigned ProfilerStopped24 ; // !< 1 if profiler stopped

    //struct LinkControl24 ShoulderCtl  ; //!< Controller for the shoulder
    //struct LinkControl24 ElbowCtl  ; //!< Controller for the elbow
    //struct LinkControl24 WristCtl  ; //!< Controller for the wrist
    //struct LinkControl12 LeftLockCtl ; //!< Controller for the left lock
    //struct LinkControl12 RightLockCtl  ; //!< Controller for the right lock

    struct LinkControl Ctl24[DEF_NUM_MAX_24V_AXES]  ;  //!< Ordered vector of controller pointers
    struct LinkControl Ctl12[DEF_NUM_MAX_12V_AXES]  ;  //!< Ordered vector of controller pointers
    float YTarget ; // !< Position target on the robot Y axis
    float YTargetRepush ; // !< The Y target recorded at package contact, for the case the package need be repushed by emergency
    float YNow ; // !< Advance of Y while final approach

    float YOrigin ; // !< Gripper Y position when the package is in final place
    float YWindowPos ; // Stabilization window for Y motion
    float x ; // !< End effector: x, y, theta
    float y ;
    float theta ;
    float Ex ; // !< x of elbow
    float Ey ; // !< y of elbow
    float LineSpeedArr[8] ; // Array of line speeds
    float IntegralErrorThold ; // Error limit for actuator stall detection
    long unsigned YWindowTimeUsec ; // Stabilization window  time for Y motion
    long long TimeUsec12 ; // !< Now time in usec
    long long TimeUsec24 ; // !< Now time in usec
    short unsigned SimulationMode; // !< 1 if in simulation
    //short unsigned LockInhibit ; // !< 1 to inhibit locks and work manipulator only
    short unsigned ProfileMode ; // !< Enum profile mode
    short unsigned StdbyRequest ; // !< Request to stand by
    short unsigned StdbyDirection ; // !< Direction for standby command
    short unsigned ProfilerTest ;
    short unsigned Cartesian ; // !< Flag for Cartesian command mode
    short unsigned RdyNewAction ; // !< Flag that motion is properly programmed and can be executed
                                    //  4: Sticky Suspect contact with pump  5: Manipulator inactive
    short unsigned GoStandbyState  ; // State for stabilization at basic position
    //short unsigned PrepCommand  ; // Command for preliminary preperation



    struct CManRecovery Recovery24 ; // Manipulator error recovery management
    struct CDebug  Debug ;
};
MAN_EXTERN_TAG struct CManCmd ManCmd ;


struct CNoElbowCmd
{
    short unsigned Algn       ;
    short unsigned NoElbowMon ;
};
MAN_EXTERN_TAG struct CNoElbowCmd NoElbowCmd ;


struct CUnreachableLog
        {
    float x ;
    float y ;
    float theta ;
    float Ytarget ;
    float Dtarget ;
    short side  ;
    short code ;
        };

MAN_EXTERN_TAG struct CUnreachableLog  UnreachableLog ;



#define SIMFLAGS_MASK 0xF
enum
{
    SIMFLAG_MANIPULATOR = 1,
    SIMFLAG_LASER = 2
};

struct CManGeo
{
    float LHumerus ; //!< Length of humerus (shoulder to elbow)
    float LRadius  ; //!< Length of the radius (elbow to wrist)
    float LHand  ; // !< Length of hand (wrist to gripper)
    float LSucker  ; // !< Length of flexible part of hand (rubber)
    float WHumerus ; // !< Width of humerus
    float WHand ; // !< Width of hand
    float PiHalf ;  // !< Pi/2
    float BaseAcc[DEF_NUM_MAX_24V_AXES] ; // !< Basic acceleration limit
    float BaseSpeed[DEF_NUM_MAX_24V_AXES] ; // !< Basic speed limit
    float BaseTau[DEF_NUM_MAX_24V_AXES] ; // !< Basic delay
    float MaxSpeed[DEF_NUM_MAX_24V_AXES] ; // !< Maximum speed
    float SideShelfDnPos;  // !< Stop position when down
    float SideShelfUpPos; // !< Stop position when up
    float XDistWheelShoulderPivot ; // !< Distance on the X axis between the shoulder pivot and the wheel
    float YDistWheelShoulderPivot ; // !< Distance on the Y axis between the shoulder pivot and the wheel
    float MinLaserRange ; // !< Minimum valid laser read (m)
    float MaxLaserRange ; // !< Maximum valid laser read (m)
    float Offset4LaserDistance ; // !< Difference between laser read and suck-package distance. Positive if laser is behind suction cups
    float MaxLaser4PushContact ; // !< Maximum laser distance still assuming contact on push
    float TimeInGoodCurrent4Pull ; // !< Time in good vacuum for starting the pull back
    float StandbyY4Elbow ; // !< Stand by distance on the Y axis between the elbow and the shoulder (for right access the elbow will be at negative Y and vice versa)
    float TimeForEntireSuck ; // !< Time for the entire suck action
    float TimeForEntireSuckRelease; // !< Time for the entire suck release action
    float MaxLaserDistOnHold; // !<  Maximum laser reading on laser hold
    float SuckFilterThold ; // !< If sucking filter output exceeds this value, the sucker is active
    float RDoorCenter ; // !< Zero position range for right door
    float LDoorCenter ; // !< Zero position range for left door
    float RDoorGainFac ; // !< Right door , transition / encoder
    float LDoorGainFac ; // !< Left door , transition / encoder
    float FlexRDoorCenter ; // !< Tape arm Zero position range for right door
    float FlexLDoorCenter ; // !< Tape arm Zero position range for left door
    float FlexRDoorGainFac ; // !< Tape arm Right door , transition / encoder
    float FlexLDoorGainFac ; // !< Tape arm Left door , transition / encoder
    //float ShulderCenter; // !< Zero position for shoulder
    //float ElbowCenter;  // !< Zero position for elbow
    //float WristCenter;    // !< Zero position for wrist
    float ShoulderMaxSpeed; //  Max speed for the shoulder
    float ElbowMaxSpeed;// Maximum speed for the elbow
    float WristMaxSpeed; // //Max speed for the wrist
    float GripperMaxSpeed ; // Max speed for the gripper
    float ManipulatorAccTime ; // Acceleration to max speed time , any joint
    float FlexAccTime ; // Acceleration to max speed time , tape arm
    float ManipulatorAccTimeWithPack ; // Acceleration to max speed time , any joint, with package
    float StandbyXTarget; // Standby target for longitudinal position
    float ScaraStandbyYTarget; // Standby target for traverse position
    float WaitLaserStabilizationTime ; // Time of waiting in rough position till laser is at hand
    float UnsuckPackReleaseTime ; // Time allowed for suction under-pressure release
    float ManipulatorAccTimeReleasePack ; // Acceleration time to full speed, for releasing package from hold at the end of push
    float ManipulatorRetreatDistReleasePack ; // Initial retreat distance, for releasing package from hold at the end of push
    float DecelerationDelayTau; // Deceleration delay for stopping curve
    float FlexStandbyYTarget; // Standby target for traverse position
    float FlexManipMaxLength; // Maximum length of flex manipulator
    float FlexManipMaxPos4Push ; // Flex manipulator maximum position for push
    float FlexManipAngleTol ; // Maximum angle tolerance for start of push / pull action
    float FlexManipPlatePos2Enc ; // Position to encoder translation for the plate
    float FlexPlateSpeed ; // Speed for manipulator rotator
    float FlexDoorPosDown  ; // Flex door down position
    float FlexDoorPosUp  ; // Flex door up position
    float FlexMaxSpeed   ; // Max speed for Flex axis
    float FlexDiscSpeed   ; // Max speed for Flex disc
    float FlexDoorScale  ; // Rotation of door convert
    float FlexArmHomingRet2Area ; // Return to area depth after tape homing completion
    float FlexRetreatDist4SuctRelease; // // Flex arm retreat for pressure release
    float FlexSpacerOperationalPos  ; // Flex arm spacer operational position
    float FlexArmMaxTravel   ; // Maximum flex arm travel
    float FlexArmMaxAngle   ; // Maximum flex arm angle
    float FlexArmMaxLinearTravel ; // Maximum linear axis angle
    float FlexXDistWheelShoulderPivot ; // !< Distance on the X axis between the shoulder pivot and the wheel, for tape arm
    float FlexSpacerHomingSpeed    ; // Homing speed for flex arm spacer
    float FlexSpacerStandbyPos ;
    float FlexPlateColideAngle; // The angle of plate where collision occurred if spacer is not in place
};
MAN_EXTERN_TAG struct CManGeo ManGeo ;



struct CManualManCmd
{
    float LineSpeed ;
    unsigned short SuctionOn;
    unsigned short Done ; // !< Flag action complete
};
MAN_EXTERN_TAG struct CManualManCmd ManualManCmd;

struct CIndividualAxCtl
{
    float SpeedTarget ; // Speed command
    float PosTarget ;
    short MotorOnRequest ;
} ;

MAN_EXTERN_TAG struct CIndividualAxCtl IndividualAxCtl24[DEF_NUM_MAX_24V_AXES] ;
MAN_EXTERN_TAG struct CIndividualAxCtl IndividualAxCtl12[DEF_NUM_MAX_12V_AXES] ;

// Profiler
short GetThetaTarget(float * ThetaTarget);
void SetProfilingMode( enum  E_ProfileMode mode );

#endif
