#ifndef SHARED_STRUCT_H_DEFINED 
#define SHARED_STRUCT_H_DEFINED 


struct CManControlWord
{
	int unsigned WasAutomatic  : 1 ; // !< 1 for automatic action , 0 for manual
	int unsigned WasMotorsOn	: 1 ; // !< Active manipulator motors
	int unsigned WasStandby	: 1 ; // !< 1: Standby  position
	int unsigned WasPackage	: 1 ; // !< 1: deal Package
	int unsigned WasPackageGet : 1 ; // !< 1 get package, 0: Put packge
	int unsigned WasSide		: 2 ; // !< Access side: 0: Straight back (undefined), 1: Left , 2: Right
	int unsigned WasLaserValid : 1 ; // !< Laser reading is valid
	int unsigned BrakeValid	: 1 ; // !< 1 if later brake control fields are valid
	int unsigned ReleaseWheels : 1 ; // !< 1 to release the wheels ( if BrakeValid )
	int unsigned ReleaseSteer : 1 ; // !< 1 to release the steering ( if BrakeValid )
	int unsigned ReleaseNeck : 1 ; // !< 1 to release the neck ( if BrakeValid )
	int unsigned LaserPsOn : 1 ; // !< Set on the laser PS (Switch 1)
	int unsigned RepeatAction: 1 ; // !< Set if repeated action (e.g. repush package)
	int unsigned PumpOn	: 1 ; // Set pump on regardless of mode management
	int unsigned UnProcFromPdo : 1 ; // !< 1: Do not process from PDO
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
    int unsigned RearCamLightOn : 1 ; // Front camera light
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
	int unsigned NoSuck2Unused : 1 ; // !< No sucking in sucker pump 2 0x1000
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
	int unsigned MotorOnMan : 3 ;
	int unsigned MotorOnStop : 2 ;
	int unsigned PbitDone : 1 ; //unused
	int unsigned IndividualAxControl : 1 ; // !< Manipulator axes controlled manually and individually. unused
};


struct CPdBitGen
{
	int unsigned SteerBrakeRelease : 1 ;
	int unsigned WheelBrakeRelease : 1 ;
	int unsigned NeckBrakeRelease : 1 ;
	int unsigned ShuntActive : 1 ;
	int unsigned ServoGateDriveOn : 1 ;
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




struct CFloatParRecord
{
    float * ptr ;
    short unsigned ind;
    float lower ;
    float upper ;
    float dflt ;
} ;


#endif

