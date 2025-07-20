/*
 * LowLevel.h
 *
 *  Created on: May 12, 2023
 *      Author: Gal Lior
 */

#ifndef DRIVERS_LOWLEVEL_H_
#define DRIVERS_LOWLEVEL_H_


#include "..\driverlib\eqep.h"
#include "..\driverlib\epwm.h"
#include "..\driverlib\cputimer.h"
#include "..\driverlib\gpio.h"
#include "..\driverlib\adc.h"
#include "..\driverlib\cmpss.h"
#include "..\driverlib\dma.h"
#include "..\driverlib\mcan.h"
#include "..\driverlib\lin.h"
#include "..\driverlib\pin_map.h"
#include "..\driverlib\asysctl.h"
#include "..\driverlib\flash.h"
#include "..\driverlib\memcfg.h"
#include "..\driverlib\cla.h"
#include "..\driverlib\ecap.h"
#include "..\driverlib\dac.h"
#include "..\driverlib\spi.h"
#include "..\driverlib\fsi.h"

#include "device.h"

#ifndef CLA_FILETYPE
#include "..\Ti\libraries\flash_api\f28003x\include\FlashAPI\F021_F28003x_C28x.h"
#include "..\Ti\flash_programming_f28003x.h"
#endif

//
// Function Prototypes
//
__attribute__((interrupt))  void Cla1Task1();
__attribute__((interrupt))  void Cla1Task2();
__attribute__((interrupt))  void Cla1Task3();
__attribute__((interrupt))  void Cla1Task4();
__attribute__((interrupt))  void Cla1Task5();
__attribute__((interrupt))  void Cla1Task6();
__attribute__((interrupt))  void Cla1Task7();
__attribute__((interrupt))  void Cla1Task8();



#define MCAN0_BASE MCANA_MSG_RAM_BASE

#endif /* DRIVERS_LOWLEVEL_H_ */
