/*
 * CanDriver.h
 *
 *  Created on: Sep 19, 2016
 *      Author: Yahali Theodor
 */

#ifndef APPFILES_CANDRIVER_H_
#define APPFILES_CANDRIVER_H_

#ifdef _LPSIM
#define CAN_REGSA ((volatile unsigned long *) &CanA )
#define CAN_REGSB ((volatile unsigned long *) &CanB )
#else
#define CAN_REGSA ((volatile unsigned long *) 0x48000)
#define CAN_REGSB ((volatile unsigned long *) 0x4a000)
#endif

// Functions of CAN hardware
short SetCanMsg2Hardware( volatile long unsigned * pCan ,struct CCanMsg * msg , short unsigned mbox );
short GetCanMsgFromHardware(volatile long unsigned * pCan ,struct CCanMsg * msg);
short unsigned GetRxBoxLoad(volatile long unsigned * pCan ) ;

#endif /* APPFILES_CANDRIVER_H_ */
