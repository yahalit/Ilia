//#############################################################################
//
// FILE:   F021.h
//
// TITLE:  Main include file for F021 devices.
//
//#############################################################################
// $TI Release: F2838x Support Library v3.02.00.00 $
// $Release Date: Tue May 26 17:21:56 IST 2020 $
// $Copyright:
// Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
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
//#############################################################################

#ifndef F021_H
#define F021_H


#include "Types.h"

/*  Flash Configuration Registers */
typedef volatile struct FMC_REGISTERS
{
    uint32 u32Register[300];
} Fapi_FmcRegistersType;

typedef struct
{
   Fapi_FmcRegistersType *m_poFlashControlRegisters;
   uint8 m_u8MainBankWidth;
   uint8 m_u8EeBankWidth;
   uint8 m_u8MainEccWidth;
   uint8 m_u8EeEccWidth;
   uint8 m_u8CurrentRwait;
   uint8 m_u8CurrentEwait;
   uint16 m_u16HclkFrequency;
} Fapi_InitStruct;


/*!
        \brief Define to map the direct access to the TI OTP memory.
    */
    #define F021_TIOTP_BASE_ADDRESS ((Fapi_TiOtpBytesType *)(F021_PROGRAM_TIOTP_OFFSET + F021_TIOTP_SETTINGS_BASE))

    /*!
        \brief Define to map the direct access to the FMC registers.
    */
    #define F021_CPU0_BASE_ADDRESS ((Fapi_FmcRegistersType *)F021_CPU0_REGISTER_ADDRESS)

#if !defined(F021)
   #define F021
#endif

/* Flash C API functions*/

/* Flash State Machine commands */
extern Fapi_FlashStatusType Fapi_getFsmStatus(void);

extern Fapi_StatusType Fapi_checkFsmForReady(void);

extern Fapi_StatusType Fapi_setActiveFlashBank(Fapi_FlashBankType oNewFlashBank);

extern Fapi_StatusType Fapi_issueFsmSuspendCommand(void);

extern void Fapi_flushPipeline(void);

/* Device Family Dependent FSM commands */
extern uint32 * Fapi_remapEccAddress(uint32 u32EccAddress);

extern boolean Fapi_isAddressEcc(uint32 u32Address);

/* Async Commands */
extern Fapi_StatusType Fapi_issueAsyncCommandWithAddress(
                                                        Fapi_FlashStateCommandsType oCommand,
                                                        uint32 *pu32StartAddress
                                                        );

extern Fapi_StatusType Fapi_issueAsyncCommand(Fapi_FlashStateCommandsType oCommand);

/* Info Commands */
extern Fapi_LibraryInfoType Fapi_getLibraryInfo(void);

/* Init */
extern Fapi_InitStruct Fapi_GlobalInit;
extern Fapi_StatusType Fapi_initializeAPI(
                                         Fapi_FmcRegistersType *poFlashControlRegister,
                                         uint32 u32HclkFrequency
                                         );

/* Read commands */
extern Fapi_StatusType Fapi_doBlankCheck(
                                        uint32 *pu32StartAddress,
                                        uint32 u32Length,
                                        Fapi_FlashStatusWordType *poFlashStatusWord
                                        );

extern Fapi_StatusType Fapi_doVerify(
                                    uint32 *pu32StartAddress,
                                    uint32 u32Length,
                                    uint32 *pu32CheckValueBuffer,
                                    Fapi_FlashStatusWordType *poFlashStatusWord
                                    );

extern Fapi_StatusType Fapi_doVerifyBy16bits(
                             uint16 *pu16StartAddress,
                             uint32 u16Length,
                             uint16 *pu16CheckValueBuffer,
                             Fapi_FlashStatusWordType *poFlashStatusWord
                             );

extern uint32 Fapi_calculatePsa(
                                uint32 *pu32StartAddress,
                                uint32 u32Length,
                                uint32 u32PsaSeed,
                                Fapi_FlashReadMarginModeType oReadMode
                               );

extern Fapi_StatusType Fapi_doPsaVerify(
                                       uint32 *pu32StartAddress,
                                       uint32 u32Length,
                                       uint32 u32PsaValue,
                                       Fapi_FlashStatusWordType *poFlashStatusWord
                                       );


/* Programming Commands */
#if defined(_C28X)
extern Fapi_StatusType Fapi_issueProgrammingCommand(
                                            uint32 *pu32StartAddress,
                                            uint16 *pu16DataBuffer,
                                            uint16  u16DataBufferSizeInWords,
                                            uint16 *pu16EccBuffer,
                                            uint16  u16EccBufferSizeInBytes,
                                            Fapi_FlashProgrammingCommandsType oMode
                                            );

extern Fapi_StatusType Fapi_issueProgrammingCommandForEccAddresses(
                                                           uint32 *pu32StartAddress,
                                                           uint16 *pu16EccBuffer,
                                                           uint16 u16EccBufferSizeInBytes
                                                           );
#else
extern Fapi_StatusType Fapi_issueProgrammingCommand(
                                                   uint32 *pu32StartAddress,
                                                   uint8  *pu8DataBuffer,
                                                   uint8  u8DataBufferSizeInBytes,
                                                   uint8  *pu8EccBuffer,
                                                   uint8  u8EccBufferSizeInBytes,
                                                   Fapi_FlashProgrammingCommandsType oMode
                                                   );

extern Fapi_StatusType Fapi_issueProgrammingCommandForEccAddresses(
                                                                  uint32 *pu32StartAddress,
                                                                  uint8 *pu8EccBuffer,
                                                                  uint8 u8EccBufferSizeInBytes
                                                                  );
#endif

/* Utility Commands */
extern uint32 Fapi_calculateFletcherChecksum(
                                            uint16 const * pu16Data,
                                            uint16 u16Length
                                            );

extern uint8 Fapi_calculateEcc(
                               uint32 u32Address,
                               uint64 u64Data
                               );


#endif /*F021_H*/
