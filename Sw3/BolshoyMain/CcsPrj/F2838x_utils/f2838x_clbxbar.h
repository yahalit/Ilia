//###########################################################################
//
// FILE:    f2838x_clbxbar.h
//
// TITLE:   Definitions for the XBAR registers.
//
//###########################################################################
// $TI Release: F2838x Support Library v2.00.00.02 $
// $Release Date: Fri May 24 03:44:36 CDT 2019 $
// $Copyright:
// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
//
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions 
// are met:
// 
//   Redistributions of source code must retain the above copyright 
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the 
//   documentation and/or other materials provided with the   
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//###########################################################################

#ifndef F2838x_CLBXBAR_H
#define F2838x_CLBXBAR_H

#ifdef __cplusplus 
extern "C" {
#endif 


//---------------------------------------------------------------------------
// XBAR Individual Register Bit Definitions:

struct AUXSIG0MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG0 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG0 of CLB-XBAR
};

union AUXSIG0MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG0MUX0TO15CFG_BITS  bit;
};

struct AUXSIG1MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG1 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG1 of CLB-XBAR
};

union AUXSIG1MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG1MUX0TO15CFG_BITS  bit;
};

struct AUXSIG2MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG2 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG2 of CLB-XBAR
};

union AUXSIG2MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG2MUX0TO15CFG_BITS  bit;
};

struct AUXSIG3MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG3 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG3 of CLB-XBAR
};

union AUXSIG3MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG3MUX0TO15CFG_BITS  bit;
};

struct AUXSIG4MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG4 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG4 of CLB-XBAR
};

union AUXSIG4MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG4MUX0TO15CFG_BITS  bit;
};

struct AUXSIG5MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG5 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG5 of CLB-XBAR
};

union AUXSIG5MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG5MUX0TO15CFG_BITS  bit;
};

struct AUXSIG6MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG6 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG6 of CLB-XBAR
};

union AUXSIG6MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG6MUX0TO15CFG_BITS  bit;
};

struct AUXSIG7MUX0TO15CFG_BITS {        // bits description
    Uint16 Mux0:2;                      // 1:0 Mux0 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux1:2;                      // 3:2 Mux1 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux2:2;                      // 5:4 Mux2 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux3:2;                      // 7:6 Mux3 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux4:2;                      // 9:8 Mux4 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux5:2;                      // 11:10 Mux5 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux6:2;                      // 13:12 Mux6 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux7:2;                      // 15:14 Mux7 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux8:2;                      // 17:16 Mux8 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux9:2;                      // 19:18 Mux9 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux10:2;                     // 21:20 Mux10 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux11:2;                     // 23:22 Mux11 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux12:2;                     // 25:24 Mux12 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux13:2;                     // 27:26 Mux13 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux14:2;                     // 29:28 Mux14 Configuration for AUXSIG7 of CLB-XBAR
    Uint16 Mux15:2;                     // 31:30 Mux15 Configuration for AUXSIG7 of CLB-XBAR
};

union AUXSIG7MUX0TO15CFG_REG {
    Uint32  all;
    struct  AUXSIG7MUX0TO15CFG_BITS  bit;
};

struct AUXSIG0MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG0 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG0 of CLB-XBAR
};

union AUXSIG0MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG0MUXENABLE_BITS  bit;
};

struct AUXSIG1MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG1 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG1 of CLB-XBAR
};

union AUXSIG1MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG1MUXENABLE_BITS  bit;
};

struct AUXSIG2MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG2 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG2 of CLB-XBAR
};

union AUXSIG2MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG2MUXENABLE_BITS  bit;
};

struct AUXSIG3MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG3 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG3 of CLB-XBAR
};

union AUXSIG3MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG3MUXENABLE_BITS  bit;
};

struct AUXSIG4MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG4 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG4 of CLB-XBAR
};

union AUXSIG4MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG4MUXENABLE_BITS  bit;
};

struct AUXSIG5MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG5 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG5 of CLB-XBAR
};

union AUXSIG5MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG5MUXENABLE_BITS  bit;
};

struct AUXSIG6MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG6 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG6 of CLB-XBAR
};

union AUXSIG6MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG6MUXENABLE_BITS  bit;
};

struct AUXSIG7MUXENABLE_BITS {          // bits description
    Uint16 Mux0:1;                      // 0 mux0 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux1:1;                      // 1 Mux1 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux2:1;                      // 2 Mux2 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux3:1;                      // 3 Mux3 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux4:1;                      // 4 Mux4 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux5:1;                      // 5 Mux5 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux6:1;                      // 6 Mux6 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux7:1;                      // 7 Mux7 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux8:1;                      // 8 Mux8 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux9:1;                      // 9 Mux9 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux10:1;                     // 10 Mux10 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux11:1;                     // 11 Mux11 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux12:1;                     // 12 Mux12 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux13:1;                     // 13 Mux13 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux14:1;                     // 14 Mux14 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux15:1;                     // 15 Mux15 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux16:1;                     // 16 Mux16 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux17:1;                     // 17 Mux17 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux18:1;                     // 18 Mux18 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux19:1;                     // 19 Mux19 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux20:1;                     // 20 Mux20 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux21:1;                     // 21 Mux21 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux22:1;                     // 22 Mux22 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux23:1;                     // 23 Mux23 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux24:1;                     // 24 Mux24 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux25:1;                     // 25 Mux25 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux26:1;                     // 26 Mux26 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux27:1;                     // 27 Mux27 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux28:1;                     // 28 Mux28 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux29:1;                     // 29 Mux29 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux30:1;                     // 30 Mux30 to drive AUXSIG7 of CLB-XBAR
    Uint16 Mux31:1;                     // 31 Mux31 to drive AUXSIG7 of CLB-XBAR
};

union AUXSIG7MUXENABLE_REG {
    Uint32  all;
    struct  AUXSIG7MUXENABLE_BITS  bit;
};

struct AUXSIGOUTINV_BITS {              // bits description
    Uint16 OUT0:1;                      // 0 Selects polarity for AUXSIG0 of CLB-XBAR
    Uint16 OUT1:1;                      // 1 Selects polarity for AUXSIG1 of CLB-XBAR
    Uint16 OUT2:1;                      // 2 Selects polarity for AUXSIG2 of CLB-XBAR
    Uint16 OUT3:1;                      // 3 Selects polarity for AUXSIG3 of CLB-XBAR
    Uint16 OUT4:1;                      // 4 Selects polarity for AUXSIG4 of CLB-XBAR
    Uint16 OUT5:1;                      // 5 Selects polarity for AUXSIG5 of CLB-XBAR
    Uint16 OUT6:1;                      // 6 Selects polarity for AUXSIG6 of CLB-XBAR
    Uint16 OUT7:1;                      // 7 Selects polarity for AUXSIG7 of CLB-XBAR
    Uint16 rsvd1:8;                     // 15:8 Reserved
    Uint16 rsvd2:16;                    // 31:16 Reserved
};

union AUXSIGOUTINV_REG {
    Uint32  all;
    struct  AUXSIGOUTINV_BITS  bit;
};

struct AUXSIGLOCK_BITS {                // bits description
    Uint16 LOCK:1;                      // 0 Locks the configuration for CLB-XBAR
    Uint16 rsvd1:15;                    // 15:1 Reserved
    Uint16 KEY:16;                      // 31:16 Write Protection KEY
};

union AUXSIGLOCK_REG {
    Uint32  all;
    struct  AUXSIGLOCK_BITS  bit;
};

struct CLB_XBAR_REGS {
    union   AUXSIG0MUX0TO15CFG_REG           AUXSIG0MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-0
    Uint16                                   rsvd1[2];                     // Reserved
    union   AUXSIG1MUX0TO15CFG_REG           AUXSIG1MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-1
    Uint16                                   rsvd2[2];                     // Reserved
    union   AUXSIG2MUX0TO15CFG_REG           AUXSIG2MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-2
    Uint16                                   rsvd3[2];                     // Reserved
    union   AUXSIG3MUX0TO15CFG_REG           AUXSIG3MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-3
    Uint16                                   rsvd4[2];                     // Reserved
    union   AUXSIG4MUX0TO15CFG_REG           AUXSIG4MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-4
    Uint16                                   rsvd5[2];                     // Reserved
    union   AUXSIG5MUX0TO15CFG_REG           AUXSIG5MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-5
    Uint16                                   rsvd6[2];                     // Reserved
    union   AUXSIG6MUX0TO15CFG_REG           AUXSIG6MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-6
    Uint16                                   rsvd7[2];                     // Reserved
    union   AUXSIG7MUX0TO15CFG_REG           AUXSIG7MUX0TO15CFG;           // CLB XBAR Mux Configuration for Output-7
    Uint16                                   rsvd8[2];                     // Reserved
    union   AUXSIG0MUXENABLE_REG             AUXSIG0MUXENABLE;             // CLB XBAR Mux Enable Register for Output-0
    union   AUXSIG1MUXENABLE_REG             AUXSIG1MUXENABLE;             // CLB XBAR Mux Enable Register for Output-1
    union   AUXSIG2MUXENABLE_REG             AUXSIG2MUXENABLE;             // CLB XBAR Mux Enable Register for Output-2
    union   AUXSIG3MUXENABLE_REG             AUXSIG3MUXENABLE;             // CLB XBAR Mux Enable Register for Output-3
    union   AUXSIG4MUXENABLE_REG             AUXSIG4MUXENABLE;             // CLB XBAR Mux Enable Register for Output-4
    union   AUXSIG5MUXENABLE_REG             AUXSIG5MUXENABLE;             // CLB XBAR Mux Enable Register for Output-5
    union   AUXSIG6MUXENABLE_REG             AUXSIG6MUXENABLE;             // CLB XBAR Mux Enable Register for Output-6
    union   AUXSIG7MUXENABLE_REG             AUXSIG7MUXENABLE;             // CLB XBAR Mux Enable Register for Output-7
    Uint16                                   rsvd9[8];                     // Reserved
    union   AUXSIGOUTINV_REG                 AUXSIGOUTINV;                 // CLB XBAR Output Inversion Register
    Uint16                                   rsvd10[4];                    // Reserved
    union   AUXSIGLOCK_REG                   AUXSIGLOCK;                   // ClbXbar Configuration Lock register
};

//---------------------------------------------------------------------------
// CLB_Xbar External References & Function Declarations:
//
#if defined CPU1
extern volatile struct CLB_XBAR_REGS CLBXbarRegs;
#endif
#ifdef __cplusplus
}
#endif                                  /* extern "C" */

#endif

//===========================================================================
// End of file.
//===========================================================================
