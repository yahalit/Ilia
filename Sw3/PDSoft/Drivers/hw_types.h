//###########################################################################
//
// FILE:   hw_types.h
//
// TITLE:  Type definitions used in ALL driverlib functions.
//
//###########################################################################
// $TI Release: F2837xS Support Library v191 $
// $Release Date: Fri Mar 11 15:58:35 CST 2016 $
// $Copyright: Copyright (C) 2014-2016 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

#ifndef HW_TYPES_H
#define HW_TYPES_H

//*****************************************************************************
//
// Define fake 8 bit types for USB related code.
//
//*****************************************************************************

typedef uint16_t uint8_t;
typedef int16_t int8_t;
	 
//*****************************************************************************
//
// Macros for hardware access, both direct and via the bit-band region.
//
//*****************************************************************************
#define HWREG(x)                                                              \
        (*((volatile uint32_t *)(x)))
#define HWREGH(x)                                                             \
        (*((volatile uint16_t *)(x)))
#define HWREGB(x)                                                            \
        __byte((int *)(x),0)
//Emulated Bitbanded write        
#define HWREGBITW(address, mask, value)                                       \
        (*(volatile uint32_t *)(address)) =                              \
       ((*(volatile uint32_t *)(address)) & ~((uint32_t)1 << mask)) \
       | ((uint32_t)value << mask)
//Emulated Bitbanded read      
#define HWREGBITR(address, mask)                                              \
        (((*(volatile uint32_t *)(address)) & ((uint32_t)1 << mask)) >> mask)

//Emulated Bitbanded write
#define HWREGBITHW(address, mask, value)                                       \
        (*(volatile uint16_t *)(address)) =                              \
       ((*(volatile uint16_t *)(address)) & ~((uint16_t)1 << mask)) \
       | ((uint16_t)value << mask)
//Emulated Bitbanded read
#define HWREGBITHR(address, mask)                                              \
        (((*(volatile uint16_t *)(address)) & ((uint16_t)1 << mask)) >> mask)



#endif // __HW_TYPES_H__


