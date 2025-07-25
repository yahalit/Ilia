/*
 * PDTimerAlloc.h
 *
 *  Created on: Dec 20, 2016
 *      Author: Yahali Theodor
 */

#ifndef PD_APPLICATION_TIMERALLOC_H_
#define PD_APPLICATION_TIMERALLOC_H_

// Total number of allocated timers

// Timers
#define TIMER_ARR_STAM_WAIT_IDLE 0
#define TIMER_ARR_RESET_BOOTUP  1
#define TIMER_ARR_RESET_TOTAL_BOOTUP  2
#define TIMER_ARR_GEN_WAIT_CAN_MGR  3
#define TIMER_RS485_24V_TOUT  4
#define TIMER_RS485_24V_TWAIT 5
#define TIMER_RS485_12V_TWAIT 6
#define TIMER_RS485_24V_TWAIT_RT 7
#define TIMER_POWER_UP_SEQUENCER 8


#define TIMER_SUPPLYOFF_12 31
#define TIMER_SUPPLYOFF_24 32
#define TIMER_SUPPLYOFF_54 33
#define TIMER_RS485_12V_TOUT  34

#define TIMER_PBIT 37

#define TMR_MUSHROOM_PRESS 41

#define TMR_24V_RESTART 46
#define TMR_LASER_START 47


#define TIMER_REBOOT_TIME12 49
#define TIMER_REBOOT_TIME24 50

#define TIMER_MAN_RECOVERY 51


#define TMR_WAIT_MAN_FPOS 54
#define TMR_ATP_RS485 55
//#define TIMER_MANUAL_MAN_CMD_TIMEOUT 42

#endif /* APPLICATION_TIMERALLOC_H_ */
