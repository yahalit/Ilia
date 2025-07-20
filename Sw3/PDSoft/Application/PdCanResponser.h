/*
 * CanResponser.h
 *
 *  Created on: Sep 19, 2016
 *      Author: Yahali Theodor
 */
//\Sw1p5\PDSoft\Application\PdCanResponser.h

#ifndef PD_APPFILES_CANRESPONSER_H_
#define PD_APPFILES_CANRESPONSER_H_


#ifdef PD_VARS_OWNER
#define EXTERN_TAG
#else
#define EXTERN_TAG extern
#endif

#include "..\PdLpShared\SysUtils.h"
#include "..\PdLpShared\DCanStruct.h"


EXTERN_TAG struct CEmergencyLog EmergencyLogPD ;
EXTERN_TAG struct CCanTrapQueue CanTrapQueuePD ; //!< Main CAN handeling queue
EXTERN_TAG struct CCanTrapQueueReservoir CanTrapQueueReservoirPD ;//!< Trap array reservoire for temporary allocation





#endif /* APPFILES_CANRESPONSER_H_ */
