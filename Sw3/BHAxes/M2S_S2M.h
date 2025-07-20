
struct CManipControlWord
{
    int unsigned Automatic  : 1 ; // !< 1 for automatic action , 0 for manual (1)
    int unsigned MotorsOn   : 1 ; // !< Active manipulator motors (2)
    int unsigned Standby    : 1 ; // !< 1: Standby  position (4)
    int unsigned DealPackage    : 1 ; // !< 1: deal Package (8)
    int unsigned PackageGet : 1 ; // !< 1 get package, 0: Put package (16)
    int unsigned Side       : 2 ; // !< Access side: 0: Straight back (undefined), 1: Left , 2: Right (32)
    int unsigned KillHoming : 1 ; // !< 1 to kill an existing homing (128)
    int unsigned GoToCoord  : 1 ; // !< 1 to command axes individually (not as part of package handeling procedure) (256)
    int unsigned ForceLaser : 1 ; // !< 1 to force the laser to the ON state (512)
    int unsigned ForcePump : 1 ; // !< 1 to force pump activation (1024)
    int unsigned RepeatAction: 1 ; // !< Set if repeated action (e.g. re-push package) (2048)
    int unsigned DoHoming   : 1 ; // !< Do homing command (4096)
    int unsigned ControlWordModifyCounter  : 2 ; // !< Incrementing this counter prompts core #2 to fetch and process a new coherent command (8192)
    int unsigned OnRail : 1 ; // !< 1: //was UnProcFromPdo (32768)
};





union UModeWord
{
    short unsigned us  ;
    struct
    {
        int unsigned rsvd2 : 5 ;
        int unsigned StoEnabled : 1 ; // Flag that STO is enabled
        int unsigned StopCan : 1 ; // Command that all the CAN communication be stopped
        int unsigned LeftPinCmd : 2 ;
        int unsigned RightPinCmd : 2 ;
        int unsigned CommRestart : 1 ;
        int unsigned ObsoleteLaserPsOn : 1 ;
        int unsigned RecorderTimeBasis : 1 ;
        int unsigned testRs485 : 2 ;
    } bit ;
};

union UConfigWord
{
    short unsigned us  ;
    struct
    {
        int unsigned rsvd :      9 ;
        int unsigned WheelArmExist : 1 ;
        int unsigned ManipType:  6 ;
    } bit ;
 };



struct CPsStatus1
{
    int unsigned PsWakeState : 5 ;
    int unsigned ManOnState : 4 ;
    int unsigned Reserved : 7 ; // Was R2 , but this field name is forbidden by assembler
};


union UPsStatus
{
    struct CPsStatus1 bit ;
    short unsigned    us[2] ;
    long  unsigned ul ;
};

struct CCoreId
{
    short unsigned RobotType : 4  ;
    short unsigned PDInBoot  : 1  ;
    short unsigned Reserved  : 11 ;
};

union UCoreId
{
    struct CCoreId bit ;
    short unsigned    us[2] ;
    long  unsigned ul ;
};


union UPsCmd
{
    struct
    {
        int unsigned Unused : 1 ;
        int unsigned RebootPsCntr : 4 ;
        int unsigned ManipulatorAxesReboot: 3 ;
        int unsigned Rsvd : 8 ;
    } items ;
    short unsigned us ;
};


struct CSlaveStatus
{
    unsigned int  InPackage: 1 ; //if in package handling process,
    unsigned int NeckMotorOn: 1 ;
    unsigned int NeckFault: 1 ;
    unsigned int NeckProfileConverged: 1 ;
    unsigned int NeckMotionConverged: 1 ;
};

union USlaveStatus
{
    struct CSlaveStatus Status;
    short unsigned us ;
};


union UIPCMaster2Slave
{
    long lbuf[512] ;
    struct {
        union
        {
            struct
            {
                short unsigned index ;
                short unsigned subindex ;
                short unsigned data_type ;
                short data_len ;
                short isset      ;
                short unused ;
                long unsigned counter  ;
                long unsigned errcode  ;
                //union Udatabuf data ;
            }msg;
            long buf[8] ;
        }USlaveObject ;
        union
        {
            struct{
                short AxesActive ; //!< 1 if 24v & 12v is stable, and axes are supposed to respond
                short unsigned ObsoletePumpsOn    ; //!< 1 to activate pump (only useful for SCARA and manual action)
                short unsigned StateResetCnt ;
                short unsigned PackDir ;
                short unsigned ControlWord ; // Actually struct CManipControlWord
                short unsigned ResetMotors;
                short unsigned ForceManualBrakeMode ;
                short unsigned ManualBrakeReleaseCmd ;
                float PinMotorCurrentAmp ;
                short PalletAngle ;
                short Flexmm ;
                short unsigned DoorAngle ;
                short GoToCntr  ;
                union UPsCmd  PsCmd  ;
                short unsigned FlashPumpRequest ; // Request control og flash memory charge pump, enabling burning of core flash memory 
                short unsigned bSerialFlashOwner ; // Mark that core #1 is owner of the serial flash 
                short unsigned bSerialFlashRequest ; // Request ownership of the serial flash from core #2 
                long  MalinkiSetCmd ;
                long unsigned ObsoletePdCommandPdo[2] ;
				float AssumedPackagePositionX ; // X position of assumed package location, measured from robot center (negative) 
				float AssumedPackagePositionY ; // Y position of assumed package location, measured from robot center to the right
				short bGrantNeckControl   ; // 1 to grant neck control
                short bGrantWheelControl  ; // 1 to grant wheel control
                float NeckAngle  ; // Neck angle in radians
                float PlatRoll   ; // Platform roll in radians
                float PlatPitch   ; // Platform pitch in radians
                float RobotPositionM[2] ; // Robot position coordinates
                float NeckIncidenceAngle ; // Reflection of host command for tray incidence angle while handling package
                float WheelArmTiltCompensation ; // Neck compensation for tilt induced by wheel-arm asymmetry
                short PackageSide ; // 1 for left 0 for ground 2 for right
                union USlaveStatus SlaveStatus  ; // Bit field: .0 if in package handling process,
                long  rsvd[4] ;
                long  unsigned LifeCheck ;
                union UModeWord ModeWord ;
                union UConfigWord ConfigWord ;
                long unsigned  Checksum ;
                short unsigned InternalBufOffset ;
                short unsigned InterBufCnt      ;
            } cmd ;
            long buf[32] ;
        }ActCmd;
        union
        {
            long buf[216] ;
        } Spare ;
        union
        {
            long buf[256] ;
        }DataBlock ;
    } Items ;
};

EXTERN_TAG union UIPCMaster2Slave M2S ;

union USlaveModeWord
{
    long unsigned ul  ;
    struct
    {
        short unsigned lo ;
        struct
        {
            int unsigned RecorderUpdating : 1 ;
            int unsigned ManipType : 6 ;
            int unsigned Homed: 1 ;
            int unsigned Individual: 1 ;
            int unsigned FlexArmHomed: 1 ;
            int unsigned SpacerHomed: 1 ;
            int unsigned rsvd : 5 ;
        } hi ;
    } bit ;
};


struct CWheelArmStat
{
    int unsigned MotorOn : 1 ;
    int unsigned MotorFault: 1 ;
    int unsigned KnowWhereAmI : 1  ;
    int unsigned Reserved : 5 ;
    int unsigned ErrCode  : 8 ;
};


union UWheelArmStat
{
    struct CWheelArmStat bit;
    short unsigned all ;
} ;

struct CRemoteCommand
{
    short RemoteCommandRequest  ; // 1 if core 2 request permission to control the robot
    short NeckCommandValid ;    // Take neck control from core 2
    short AutoCompensateLevel  ; // (0) Reset if the neck command is full, or (1) difference from the level, the level itself is maintained automatically
    short ReservedWheelsCommandValid ;  // Take wheels control from core 2, just unimplemented spare for now
    float NeckCommandRad   ;    // Neck control command to use when CPU1 granted neck control if NeckCommandValid. According to AutoCompensateLevel, this is only
                                // difference from the level, the level itself is maintained automatically
    float ReservedWheelPosCommand ;   // Reserved for wheel control command to use when CPU1 granted neck control if WheelsCommandValid
}  ;


union UIPCSlave2Master
{
    long lbuf[512] ;
    struct {
        struct
        {
            struct
            {
                short unsigned index ;
                short unsigned subindex ;
                short data_type ;
                short data_len ;
                short isset      ;
                short unused ;
                long unsigned counter  ;
                long unsigned errcode  ;
                //union Udatabuf data ;
            }msg;
            long buf[8] ;
        }USlaveObject ;
        union
        {
            struct
            {
                short PumpCmd ;
                short LaserCmd ;
                union UPsStatus PsStatus  ;
                union UCoreId CoreId ;
                float LaserDistance ;  // Measured distance of package from EEF 
                float ManipulatorX  ;  // X coordinate of EEF, measured from robot center (mid shoulders), always negative
                float ManipulatorY ; // Y coordinate of EEF, measured from robot center line. Positive to the right
                float ManipulatorAngleRad ; // Manipulator angle, zero when manipulator is aligned with robot, measured clockwise when looking from above.
                long unsigned  LifeTracker  ;
                float AxisReadout[10] ;
                long  ManipData1_L ;
                long  ManipData1_H ;
                long  ManipData1_HH ;
                long  ManipData2_L ;
                long  ManipData2_H ;
                long  ManipData3_L ;
                long  ManipData3_H ;
                long  ManipData4_L ;
                long  ManipData4_H ;
                long  ManipData5_L ;
                long  ManipData5_H ;

                union USlaveModeWord SlaveStat ;
                short IsOperational ;
                short RecorderTrigger  ;
                short unsigned FlashPumpRequest   ;

            }stat ;
            long buf[32] ;
        }ActStatus;
        struct
        {
            long unsigned buf[16];
            short unsigned flags[16] ;
        } Records ;
        union
        {
            long buf[8];
            struct
            {
                union UWheelArmStat RStatus ;
                short RPinPos ;
                union UWheelArmStat LStatus  ;
                short LPinPos  ;
            } stat ;
        } WheelArm ;
        union
        {
            long buf[2] ;
            struct
            {
                short unsigned bUnusedSerialFlashOwner ;
                short unsigned bSerialFlashRequest ;
            } item  ;
        } UFlashToken ;
        union
        {
            long buf[6] ;
            struct
            {
                long unsigned DataFromPd[4] ;
                 long Rsvd ;
                 short DataFromPdCtr ;
                 short ScoreBoard    ;
            } item ;
        } DataFromPd ;
        union
        {
            long buf[8] ;
            struct
            {
                long  unsigned  PdVerSubverPatch;
                long  unsigned MalinkiVerSubverPatch;
                long  unsigned EEFVer ;
                long  RotaryDriverVer ;
                long  TrayRev[4] ;
            } item ;
        } SlaveRevisions ;
        union
        {
            struct CRemoteCommand RemoteCommand ;
            long buf[8];
        } RobotControl ;
        union
        {
            long buf[160];
        } Spare ;
        union
        {
            long buf[256] ;
        }DataBlock ;
    } Items ;
};

EXTERN_TAG union UIPCSlave2Master S2M ;
