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





EXTERN_TAG struct CCanMsg CanMsg2SpiHostBuf ;

/*
struct CHeartBeat
{
    short unsigned Ctr ;
    short unsigned CtrMax ;
    short unsigned HeartBeatInhibit ; // Inhibit Heart-beat sends for test purposes
    short unsigned Align ;
    struct CCanMsg Msg ;    // Message to be sent as heart beat
} ;
EXTERN_TAG struct CHeartBeat HeartBeat ;
*/

EXTERN_TAG struct CEmergencyLog EmergencyLog ;
EXTERN_TAG struct CCanTrapQueue CanTrapQueue ; //!< Main CAN handeling queue
EXTERN_TAG struct CCanTrapQueueReservoir CanTrapQueueReservoir ;//!< Trap array reservoire for temporary allocation

#define N_EMCY_QUEUE 16


EXTERN_TAG struct CEmergencyLog EmergencyLog ;

short SendSdoExpeditDloadLong( struct CSdo * pSdo );
short SendResetComWaitBootup( short unsigned id);
short SendNMT( short unsigned id , short unsigned code);
short unsigned GetLeadingOne(long unsigned dat) ;
short unsigned GetTrailingOne( short unsigned  RxPend);
short unsigned GetLogicalId (short unsigned CanId );




#endif /* APPFILES_CANRESPONSER_H_ */
