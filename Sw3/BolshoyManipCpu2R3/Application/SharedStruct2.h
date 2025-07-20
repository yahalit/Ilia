#ifndef SHARED_STRUCT_H_DEFINED
#define SHARED_STRUCT_H_DEFINED


#define MCW_AUTOMATIC 1
#define MCW_MOTORS_ON 2
#define MCW_STANDBY   4
#define MCW_PACKAGE   8
#define MCW_PACKAGEGET   0x10
#define MCW_SIDE_CENTER  0
#define MCW_SIDE_LEFT  0x20
#define MCW_SIDE_RIGHT  0x40
#define MCW_LASER_VALID  0x80
#define MCW_KILL_HOMING  0x100
#define MCW_GO_COORD  0x200
#define MCW_RPT_ACTION  0x2000
#define MCW_DO_HOMING   0x4000
#define MCW_UNPROC      0x8000



// TODO: make sure it is used for pump and laser activation of Flex EEF (or replace to another structure).
struct CPDControlWord //used to send CAN request from PD to operate the switches. In Gen3 there will
{
    int unsigned Reserved1  : 1 ; // !< 1 for automatic action , 0 for manual
    int unsigned Reserved2   : 1 ; // !< Active manipulator motors
    int unsigned Reserved3    : 1 ; // !< 1: Standby  position
    int unsigned Reserved4    : 1 ; // !< 1: deal Package
    int unsigned Reserved5 : 1 ; // !< 1 get package, 0: Put package
    int unsigned Reserved6_7       : 2 ; // !< Access side: 0: Straight back (undefined), 1: Left , 2: Right
    int unsigned Reserved8 : 1 ; // !< Laser reading is valid
    int unsigned Reserved9 : 1 ; // !< 1 if later brake control fields are valid
    int unsigned Reserved10 : 1 ; // !< 1 to release the wheels ( if BrakeValid )
    int unsigned Reserved11 : 1 ; // !< 1 to release the steering ( if BrakeValid )
    int unsigned Reserved12 : 1 ; // !< 1 to release the neck ( if BrakeValid )
    int unsigned LaserPsOn : 1 ; // !< Set on the laser PS (Switch 1)
    int unsigned Reserved14: 1 ; // !< Set if repeated action (e.g. re-push package)
    int unsigned PumpOn   : 1 ; // !< Reserved
    int unsigned Reserved16 : 1 ; // !< 1: Do not process from PDO
};



// Command word #2
struct CPdCmd2
{
    int unsigned ChakalakaOn : 1 ; // Chakalaka
    int unsigned FanOn : 1 ;
    int unsigned Power24V   : 1 ;
    int unsigned Power12V   : 1 ;
    int unsigned CommRestart : 1 ; // Restart manipulator communication
    int unsigned PowerEnter : 1 ; // <Enter> for Power commands
    int unsigned FrontCamLightOn : 1 ; // Front camera light
    int unsigned RearCamLightOn : 1 ; // Rear camera light
};

//Bit joined for both Flax and Scara manipulators (will be separated only is necessary).
struct CManCBit
{
    int unsigned GripFail : 1 ; // !< 1 if grip of package failed 0x10
    int unsigned ManFail: 3 ; // !< Motor errors: Shoulder , elbow , wrist 0x20,0x40,0x80, Plate - 0x01, TapeArm 0x02, Spacer 0x04
    int unsigned StopFail: 2 ; // !< Dynamixel errors:   left . right  0x100 0x200
    int unsigned NoSuck1 : 1 ; // !< No sucking in sucker pumps
    int unsigned Dyn12NetOn : 1 ;
    int unsigned Dyn12InitDone : 1 ;
    int unsigned Dyn24NetOn : 1 ;
    int unsigned Dyn24InitDone : 1 ;
    int unsigned MotorOnMan : 3 ;
    int unsigned MotorOnStop : 2 ;
};

// Descriptor for self test bits
struct CPdCBit
{
    int unsigned V24Fail : 1 ; //!< Failure of the 24V voltage
    int unsigned V12Fail : 1 ; //!< Failure of the 12V voltage
    int unsigned MushroomDepressed : 1 ; // !< Mushrum is depressed
    int unsigned ShuntFail : 1 ; // !< 1 if shunt fails to stabilize voltages (too hot) 0x8
    int unsigned GripFail : 1 ; // !< 1 if grip of package failed 0x10
    int unsigned ManFail: 3 ; // !< Dynamixel errors: Shoulder , elbow , wrist 0x20,0x40,0x80
    int unsigned StopFail: 2 ; // !< Dynamixel errors:   left . right  0x100 0x200
    int unsigned V54Fail : 1 ; // !< 54V failure 0x400
    int unsigned NoSuck1 : 1 ; // !< No sucking in sucker pump 1 0x800
    int unsigned V18Fail : 1 ; // !< Failure of the 18V supply
    int unsigned Reserved : 3 ; //!< Reserved
};



struct CPdCBit2
{
    int unsigned Active12V : 1 ;
    int unsigned FailCode12V : 3 ;
    int unsigned Active24V : 1 ;
    int unsigned FailCode24V : 3 ;
    int unsigned Active54V : 1 ;
    int unsigned FailCode54V : 3 ;
    int unsigned Active18V : 1 ;
    int unsigned FailCode18V : 3 ;
};


/*
 * This is a data structure reported to the Core#1 for handling the wheel arm.
 * The wheelarm operate the latches that are on the 12V/MX430 Dynnamixel network.
 */
struct CManCBitH
{
    int unsigned PbitDone : 1 ; // Communication with the MX430 network is established and axes are initialized
    int unsigned IndividualAxControl : 1 ; // !< Axes controlled manually and individually. unused
    int unsigned MotorOnPin  : 2; // 1: Wheel arm latch motors are ON
    int unsigned PinMotorIndex : 4  ; // The index in the Dynamixel motor descriptors in which the state of the wheel arm motors starts
    short unsigned reserved : 8;
};


struct CPdCBit3
{
    int unsigned ManSw1 : 1 ;
    int unsigned ManSw2 : 1 ;
    int unsigned StopSw1 : 1 ;
    int unsigned StopSw2 : 1 ;
    int unsigned Dyn12NetOn : 1 ;
    int unsigned Dyn12InitDone : 1 ;
    int unsigned Dyn24NetOn : 1 ;
    int unsigned Dyn24InitDone : 1 ;
    int unsigned Disc2In : 1  ;
    int unsigned MotorOnMan : 3 ; //unused
    int unsigned MotorOnStop : 2 ; //unused
    int unsigned PbitDone : 1 ; //unused
    int unsigned IndividualAxControl : 1 ; // !< Manipulator axes controlled manually and individually. unused
};


#define MAN_HOLDS_ACTIVE_STICKY 1
#define MAN_HOLDS_SUSPECT_CONTACT 2 // !< Object located in range short enough for holding a package (instantaneous report)
#define MAN_HOLDS_SUSPECT_CONTACT_W_PUMP 4 // !< Object located in range short enough for holding a package (instantaneous report), while pump is active
#define MAN_HOLDS_SUSPECT_CONTACT_STICKY 8 // !< Object located in range short enough for holding a package (sticky report)
#define MAN_HOLDS_SUSPECT_CONTACT_W_PUMP_STICKY 16 // !< Object located in range short enough for holding a package (sticky report), while pump is active
#define MAN_HOLDS_INACTIVE 32



struct CFloatParRecord
{
    float * ptr ;
    short unsigned ind;
    float lower ;
    float upper ;
    float dflt ;
} ;


#endif

