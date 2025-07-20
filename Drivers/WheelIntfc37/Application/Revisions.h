#define ParametersSetRevision 1.0f // The revision of the parameters set. Need be updated whenever parameters structure is changed
#define HwConfigRevision 2.1f // The revision of the hardware configuration parameters set. Need be updated whenever parameters structure is changed
#define IdentityParametersRevision (1U<<8)



#define nUserCfgPars 128

//Identity structures

struct CIdentity
{
    long  PassWord ; // A password replica
    long  HardwareRevision ; // Hardware revision (bytes)
    long  ProductionDate   ; // (YYYY-2000 ) , MM , DD Each a byte
    long  RevisionDate   ; // (YYYY-2000 ) , MM , DD Each a byte
    long  HardwareType        ; // Hardware Project identifier
    long  SerialNumber  ;
    long  ProductionBatchCode  ;
    long  IdentitySpare[7] ;
    long  IdentityRevision ;
    long  cs ; // !< Long checksum
};

struct CIdentityProg
{
    struct CIdentity Identity ;
    unsigned long PassWord ;
};

union UIdentity
{
    struct CIdentityProg C  ;
    long   unsigned Buf[16] ;
    short  unsigned us[32] ;
};


struct CFloatConfigParRecord
{
    short Flags ; // 2 for float, 0 for long
    short unsigned ind ;
    float * ptr ;
    float lower ;
    float upper ;
    float defaultVal ;
} ;


struct  CProjSpecificCtl
{
    float CtlPar0 ;
    float CtlPar1 ;
    float CtlPar2 ;
    short unsigned  UseCase ;
    short ProjIndex   ;
};




struct CProjSpecificData
{
    float ProjSpecificDataRevision  ;
    float WhMotEncoderCountsFullRev ; // !< # Wheel Motor encoder counts in full revolution
    float StMotEncoderAuxCountsFullRev ; // !< # Steering encoder counts in full revolution
    float AuxEncoderAuxCountsFullRev ; // !< #Aux encoder counts in full revolution
    short ProjIndex ;       // !< Index for project
    short CanId     ;       // !< CAN ID for project
};

// Total structure is 1024 long
struct CNVParams
{
    long   Password  ;
    short  ProjIndex ;
    short  UseParsConfig      ;
    long   Spare[1024 - (nUserCfgPars * sizeof(struct CFloatConfigParRecord)/2) - 6 - (sizeof(struct CProjSpecificData)/2 ) ] ;                  // Thats 384 long
    struct CProjSpecificData ProjSpecificData ;
    struct CFloatConfigParRecord UserCfgPars[nUserCfgPars] ; // Thats 128 * 5 = 640 long
    long   NVParamsEnding[3] ;
    long   cs  ;
};

union UNVParams
{
    long unsigned Buf[1024];
    struct CNVParams  NVParams ;
};

//calibration structures


struct CCalib
{
    long  PassWord ; // A password replica
    float PotCenter ; // Add this to the right neck pot for calibration
    float PotGainFac ; // Add this to the right neck pot gain for calibration
    float BrakeOutVoltBias  ;
    float BrakeOutVoltGain  ;
    float CalibSpareFloat[16] ;
    float CalibSpareLong[5]   ;
    long  CalibDate       ; // !< Calibration revision date
    long  CalibData       ; // !< Calibration additional revision data
    long  Password0x12345678 ; // !< Must be 0x12345678
    long  cs ; // !< Long checksum
};


struct CCalibProg
{
    unsigned long PassWord ;
    struct CCalib Calib ;
};


union UCalibProg
{
    struct CCalibProg C  ;
    short  unsigned us[64] ;
};

