/*
 * CanResponser.h
 *
 *  Created on: Sep 19, 2016
 *      Author: Yahali Theodor
 */

#ifndef APPFILES_CANRESPONSER_H_
#define APPFILES_CANRESPONSER_H_


#ifdef VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif

#define N_CAN_TRAPS 64
#define N_CAN_TRAPS_RESERVOIR 16





struct CSdo
{
    long unsigned  SlaveID ; //!< The slave to which the SDO is targeted (or own ID if thid id slave)
    short unsigned Index ;
    short unsigned SubIndex ;
    long  unsigned Lpayload  ;
    short Status    ; //!< 0 inactive, 1 continueing, -1 abrted
    short unsigned toggle ; //!< Toggle state for SDO segmented
    short unsigned Bytes2Dload ; // !< Bytes remaining to dload by SDO
    short unsigned DataType  ; //!< Cia DATA type - 5: Byte , 6: Word , 7: Long
    short unsigned ByteCnt   ; //!< Byte count for segmented SDO
    short unsigned ExpectedCs ; // !< Expected command specifier for the next transaction
    long  unsigned *SlaveBuf ; // !< Address of communication string in use
};

struct CSdoListMng
{
    short state ; // !< State - 0: Init , 1: New SDO , 2: Wait completion , -1: Failure
    short done ; // !< -1: Error  0: Executing 1: Normal done 2: Not installed
    short unsigned SdoCounter ; //!< Advance counter of transmitted SDO
    short unsigned RetryCtr  ; //  !< Retry counter
};


struct CCiaStatusWord
{
    int unsigned Ready2SwitchOn : 1 ;
    int unsigned SwitchedOn : 1 ;
    int unsigned MotorOn : 1 ;
    int unsigned Fault : 1 ;
    int unsigned VoltageEnabled : 1 ;
    int unsigned NormalNotInQStop : 1 ;
    int unsigned SwitchedOnDisabled : 1 ;
    int unsigned Warning : 1;
    int unsigned ManSpecific1 : 1 ;
    int unsigned Remote : 1 ;
    int unsigned TargetReached : 1 ;
    int unsigned InternalLimitActive : 1 ;
    int unsigned SpeedZeroOrSetPtAck : 1 ;
    int unsigned TooBigError : 1 ;
    int unsigned ManSpecific2 : 2 ;
};


struct CCiaControlWord
{
    int unsigned SwitchOn : 1 ;
    int unsigned EnableVoltage : 1 ;
    int unsigned NormalNotInQStop : 1 ;
    int unsigned MotorOn : 1 ;
    int unsigned NewSetPt : 1 ;
    int unsigned ApplySetPtImmediate : 1 ;
    int unsigned AbsoluteStPt : 1 ;
    int unsigned FaultReset : 1;
    int unsigned Halt : 1 ;
    int unsigned ChgOnSetPt : 1 ;
    int unsigned Reserved1 : 1 ;
    int unsigned ModuloTravelMode : 2 ;
    int unsigned Reserved2 : 3 ;
};


struct CCanAxis
{
    short unsigned CanId ; //!< CAN ID of the axis
    short BootAcknowledge ; //!< 1 if bootup message is correctly accepted from the axis
    short unsigned Installed ; // !< 1 if installed
    short unsigned NewSetPt  ; // !< 1 if new set point is manually ordered
    short Status ;
    struct CSdo Sdo ;
    struct CSdoListMng SdoMng ; // !< Sdo programming management struct
    long SdoBuf[8] ; // !< Short buffer for SDO management
    long long ReportTimeMsec ; // !< Most recent acceptance of entire axis data
    struct CCiaStatusWord StatusWord ; // !< Reported status word
    struct CCiaControlWord ControlWord ; // Commanded control word
//    short MotorOnToutCnt ; // !< Time out counter for motor on action
    short Torque ; // !< Reported torque
    long  PositionAct ; // !< Reported position (if applicable)
    long  PositionCmd ; // !< Commanded position (if applicable)
    long  SpeedCmd ; // !< Commanded speed (if applicable)
    long  SpeedAct ; // !< Reported speed  (if applicable)
    struct CCanMsg Pdo1RxMsg ; // Data to transmit to axis as PDO
};


EXTERN_TAG struct CCanMsg CanMsg2SpiHostBuf ;


#define N_EMCY_QUEUE 16


EXTERN_TAG struct CEmergencyLog EmergencyLog ;

short SendSdoExpeditDloadLong( struct CSdo * pSdo );
short SendResetComWaitBootup( short unsigned id);
short SendNMT( short unsigned id , short unsigned code);
short unsigned GetLeadingOne(long unsigned dat) ;
short unsigned GetTrailingOne( short unsigned  RxPend);
short GetLogicalId (short unsigned CanId );




#endif /* APPFILES_CANRESPONSER_H_ */
