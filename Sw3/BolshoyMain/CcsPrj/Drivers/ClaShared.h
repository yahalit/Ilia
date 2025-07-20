/*
 * ClaShared.h
 *
 *  Created on: Aug 20, 2021
 *      Author: Yahali
 */

#ifndef DRIVERS_CLASHARED_H_
#define DRIVERS_CLASHARED_H_


//
// Included Files
//
#include "f2838x_cla_defines.h"
#include <stdint.h>
#include "..\Application\ConstDef.h"


struct CClaInput
{
    long  IntentionallyZero[2] ; // Should be kept zero; using this field the CPU identifies wake from boot
    float CpuFrqMHz ;
    float OneOverCpuFrqMHz ;
};

struct CClaRslt
{
    float y;
};

struct CRawAnalogs
{
    float OLoadSt1 ;
    float OLoadSt2 ;
    float LaserSamp1 ;
    float OLoadNK ;
    float V12Out ;
    float V5Samp  ;
    float HardVer   ;
    float VPot ;
};

struct CClaState
{
    long unsigned ClaIntCntr ;
    struct CRawAnalogs Raw  ;
    struct CRawAnalogs Filt ;
    struct
    {
        long  upd ;
        long  RawEcapTimer ;
        long  UsecTimer ;        // !< usec timer (continuous, DOES NOT reset on second or milisecond boundaries)
        float UsecTimerAtMsec ;  // !< Value of usec timer at the last second switch
        long  mSecTimer ;        // !< msec timer (continuous, DOES NOT reset on second boundaries)
        float mSecTimerAtSec ;   // !< Value of msec timer at the last second switch
        long SecTimer ;         // !< Full seconds timer
    } Timer ;
    float WheelArmRatio[2] ;
};



#ifdef CLA_OWNER
#define CLA_EXTERN_TAG
#ifndef _LPSIM 
#pragma DATA_SECTION(ClaInput,"CpuToCla1MsgRAM");
#pragma DATA_SECTION(ClaRslt,"Cla1ToCpuMsgRAM");
#pragma DATA_SECTION(ClaState,".bss_cla") ;
//#pragma DATA_SECTION(DirectionOfMotors,".bss_cla") ;
#endif
#else
#define CLA_EXTERN_TAG extern
#endif


CLA_EXTERN_TAG struct CClaRslt ClaRslt;
CLA_EXTERN_TAG struct CClaInput ClaInput;
CLA_EXTERN_TAG volatile struct CClaState ClaState;
//CLA_EXTERN_TAG long   DirectionOfMotors[N_CAN_SLAVES] ;
// Defines
//

//
// Globals
//

//
//Task 1 (C) Variables
//

//
//Task 2 (C) Variables
//

//
//Task 3 (C) Variables
//

//
//Task 4 (C) Variables
//

//
//Task 5 (C) Variables
//

//
//Task 6 (C) Variables
//

//
//Task 7 (C) Variables
//

//
//Task 8 (C) Variables
//

//
//Common (C) Variables
//

//
// Function Prototypes
//
// The following are symbols defined in the CLA assembly code
// Including them in the shared header file makes them
// .global and the main CPU can make use of them.
//
__interrupt void Cla1Task1();
__interrupt void Cla1Task2();
__interrupt void Cla1Task3();
__interrupt void Cla1Task4();
__interrupt void Cla1Task5();
__interrupt void Cla1Task6();
__interrupt void Cla1Task7();
__interrupt void Cla1Task8();




#endif /* DRIVERS_CLASHARED_H_ */
