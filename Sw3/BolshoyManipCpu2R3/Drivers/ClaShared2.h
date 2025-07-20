/*
 * ClaShared.h
 *
 *  Created on: Aug 20, 2021
 *      Author: Yahali
 */

#ifndef DRIVERS_CLASHARED2_H_
#define DRIVERS_CLASHARED2_H_


//
// Included Files
//
#include "f2838x_cla_defines.h"
#include <stdint.h>


struct CClaInput
{
    long  IntentionallyZero[2] ; // Should be kept zero; using this field the CPU identifies wake from boot
};

struct CClaRslt
{
    float y;
};



struct CClaState
{
    long unsigned ClaIntCntr ;
};



#ifdef CLA_OWNER
#define CLA_EXTERN_TAG
#ifndef WINSIM
#pragma DATA_SECTION(ClaInput,"CpuToCla1MsgRAM");
#pragma DATA_SECTION(ClaRslt,"Cla1ToCpuMsgRAM");
#pragma DATA_SECTION(ClaState,".bss_cla") ;
#endif
#else
#define CLA_EXTERN_TAG extern
#endif

CLA_EXTERN_TAG struct CClaRslt ClaRslt;
CLA_EXTERN_TAG struct CClaInput ClaInput;
CLA_EXTERN_TAG volatile struct CClaState ClaState;

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
#ifndef WINSIM
__interrupt void Cla1Task1();
__interrupt void Cla1Task2();
__interrupt void Cla1Task3();
__interrupt void Cla1Task4();
__interrupt void Cla1Task5();
__interrupt void Cla1Task6();
__interrupt void Cla1Task7();
__interrupt void Cla1Task8();
#endif




#endif /* DRIVERS_CLASHARED2_H_ */
