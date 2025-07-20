/*
 * InternalFlash.c
 *
 *  Created on: Aug 20, 2021
 *      Author: Yahali
 */
#include "..\..\Application\StructDef.h"

/*!
    \brief Define to map the direct access to the FMC registers.
*/

#define F021_CPU0_REGISTER_ADDRESS 0x0005F800

//
// Include Flash API include file
//
#include "F021_F2838x_C28x.h"

//
// Include Flash API example header file
//




//
// Defines
//

//
// Length (in 16-bit words) of data buffer used for program
//
#define  WORDS_IN_FLASH_BUFFER    0x100

//
// Globals
//

//
// Data Buffers used for program operation using the flash API program function
//


//
// Prototype of the functions used in this example
//
void FMSTAT_Fail(void);

//
// Main
//
#pragma CODE_SECTION(PrepFlash4Burn, ".TI.ramfunc");
short PrepFlash4Burn(void)
{
    Fapi_StatusType  oReturnCheck;
    long unsigned sem ;
    sem = GetSemaphore() ;
    while ( sem == FLASH_CPU2_WRAPPER)
    { // CPU 1 has the flash , ask permission to use it
        M2S.Items.ActCmd.cmd.FlashPumpRequest = 1 ;
        sem = GetSemaphore() ;
    }
    M2S.Items.ActCmd.cmd.FlashPumpRequest = 0 ;
    //
    // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    //
    EINT;
    ERTM;

    //
    // At 200MHz, execution wait-states for external oscillator is 3. Modify the
    // wait-states when the system clock frequency is changed.
    //
    Flash_initModule(FLASH0CTRL_BASE, FLASH0ECC_BASE, 3);

    //
    // Pump access must be gained by the core using pump semaphore
    //
    Flash_claimPumpSemaphore(FLASH_CPU1_WRAPPER);

    //
    // Initialize the Flash API by providing the Flash register base address
    // and operating frequency(in MHz).
    // This function is required to initialize the Flash API based on System
    // frequency before any other Flash API operation can be performed.
    // This function must also be called whenever System frequency or RWAIT is
    // changed.
    //
    oReturnCheck = Fapi_initializeAPI(F021_CPU0_BASE_ADDRESS,CPU_CLK_MHZ);

    if(oReturnCheck != Fapi_Status_Success)
    {
        //
        // Check Flash API documentation for possible errors
        //
        return -1;
    }

    //
    // Initialize the Flash banks and FMC for erase and program operations.
    // Fapi_setActiveFlashBank() function sets the Flash banks and FMC for
    // further Flash operations to be performed on the banks.
    //
    oReturnCheck = Fapi_setActiveFlashBank(Fapi_FlashBank0);

    if(oReturnCheck != Fapi_Status_Success)
    {
        //
        // Check Flash API documentation for possible errors
        //
        return -1 ;
    }

    return 0;
}

void ReleaseFlashBurn(void)
{
    Flash_releasePumpSemaphore();
    Flash_powerDown(FLASH0CTRL_BASE);
}

//*****************************************************************************
//  EraseSector
//
//  Example function to Erase data of a sector in Flash.
//  Flash API functions used in this function are executed from RAM in this
//  example.
//*****************************************************************************
#pragma CODE_SECTION(EraseSector, ".TI.ramfunc");
short EraseSector(uint32 sector_start , long unsigned WordLen )
{
    Fapi_StatusType  oReturnCheck;
    Fapi_FlashStatusType  oFlashStatus;
    Fapi_FlashStatusWordType  oFlashStatusWord;

    //
    // Erase the sector that is programmed in the above example
    // Erase Sector6
    //
    oReturnCheck = Fapi_issueAsyncCommandWithAddress(Fapi_EraseSector,(uint32 *) sector_start) ;

    //
    // Wait until FSM is done with erase sector operation
    //
    while (Fapi_checkFsmForReady() != Fapi_Status_FsmReady){}

    if(oReturnCheck != Fapi_Status_Success)
    {
        //
        // Check Flash API documentation for possible errors
        //
        return -1 ;
    }

    //
    // Read FMSTAT register contents to know the status of FSM after
    // erase command to see if there are any erase operation related errors
    //
    oFlashStatus = Fapi_getFsmStatus();
    if(oFlashStatus != 0)
    {
        //
        // Check Flash API documentation for FMSTAT and debug accordingly
        // Fapi_getFsmStatus() function gives the FMSTAT register contents.
        // Check to see if any of the EV bit, ESUSP bit, CSTAT bit or
        // VOLTSTAT bit is set (Refer to API documentation for more details).
        //
        FMSTAT_Fail();
        return -1 ;
    }

    //
    // Verify that Sector  is erased
    //
    if ( WordLen)
    {
    oReturnCheck = Fapi_doBlankCheck((uint32 *)sector_start,
                                     WordLen>>1,
                   &oFlashStatusWord);
    }

    if(oReturnCheck != Fapi_Status_Success)
    {
        return -1;
    }
    return 0 ;
}


#pragma CODE_SECTION(ProgramPageAutoECCBody, ".TI.ramfunc");
short ProgramPageAutoECCBody(uint32 page_start , uint16 *buf )
{

    uint32 u32Index = 0;
    uint16 i = 0;
    Fapi_StatusType  oReturnCheck;
    Fapi_FlashStatusType  oFlashStatus;
    Fapi_FlashStatusWordType  oFlashStatusWord;

    //
    // A data buffer of max 8 16-bit words can be supplied to the program
    // function.
    // Each word is programmed until the whole buffer is programmed or a
    // problem is found. However to program a buffer that has more than 8
    // words, program function can be called in a loop to program 8 words for
    // each loop iteration until the whole buffer is programmed.
    //
    // Remember that the main array flash programming must be aligned to
    // 64-bit address boundaries and each 64 bit word may only be programmed
    // once per write/erase cycle.  Meaning the length of the data buffer
    // (3rd parameter for Fapi_issueProgrammingCommand() function) passed
    // to the program function can only be either 4 or 8.
    //
    // Program data in Flash using "AutoEccGeneration" option.
    // When AutoEccGeneration option is used, Flash API calculates ECC for the
    // given 64-bit data and programs it along with the 64-bit main array data.
    // Note that any unprovided data with in a 64-bit data slice
    // will be assumed as 1s for calculating ECC and will be programmed.
    //
    // Note that data buffer (Buffer) is aligned on 64-bit boundary for verify
    // reasons.
    //
    // Monitor ECC address for Sector6 while programming with AutoEcc mode.
    //
    // In this example, 0x100 bytes are programmed in Flash Sector6
    // along with auto-generated ECC.
    //

    for(i=0, u32Index = page_start;
       (u32Index < (page_start + WORDS_IN_FLASH_BUFFER));
       i+= 8, u32Index+= 8)
    {
        oReturnCheck = Fapi_issueProgrammingCommand((uint32 *)u32Index,buf+i,
                                               8, 0, 0, Fapi_AutoEccGeneration);

        //
        // Wait until the Flash program operation is over
        //
        while(Fapi_checkFsmForReady() == Fapi_Status_FsmBusy);

        if(oReturnCheck != Fapi_Status_Success)
        {
            //
            // Check Flash API documentation for possible errors
            //
            return -1;
        }

        //
        // Read FMSTAT register contents to know the status of FSM after
        // program command to see if there are any program operation related
        // errors
        //
        oFlashStatus = Fapi_getFsmStatus();
        if(oFlashStatus != 0)
        {
            //
            // Check FMSTAT and debug accordingly
            //
            FMSTAT_Fail();
            return -1;
        }

        //
        // Verify the programmed values.  Check for any ECC errors.
        //
        oReturnCheck = Fapi_doVerify((uint32 *)u32Index,
                                     4, (uint32 *)buf +(i/2),
                                     &oFlashStatusWord);

        if(oReturnCheck != Fapi_Status_Success)
        {
            //
            // Check Flash API documentation for possible errors
            //
            return -1 ;
        }
    }
    return 0 ;
}


//*****************************************************************************
//  ProgramUsingAutoECC
//
//  Example function to Program data in Flash using "AutoEccGeneration" option.
//  Flash API functions used in this function are executed from RAM.
//  Page must be aligned to 256W boundary , buffer size must be 256
//*****************************************************************************
#pragma CODE_SECTION(ProgramPageAutoECC, ".TI.ramfunc");

short ProgramPageAutoECC( short unsigned *buf , long unsigned page_start ,long unsigned buflen)
{
    long mask ;
    long unsigned nSects , cnt ;
    short stat ;
    if ( buflen == 0 )
    {
        return 0 ;
    }
    if ( buflen & 0xff )
    {
        return -1 ;
    }
    mask = BlockInts() ;
    nSects = buflen >> 8 ;
    for ( cnt = 0 ; cnt < nSects ; cnt++ )
    {
        stat = ProgramPageAutoECCBody((uint32) page_start , ( uint16 *) buf + (cnt << 8 ) ) ;
        if ( stat )
        {
            break  ;
        }
        page_start += 256 ;
    }
    RestoreInts(mask) ;
    return stat  ;
//    return ProgramPageAutoECCBody((uint32) page_start , ( uint16 *) buf ) ;
}


//******************************************************************************
// For this example, just stop here if FMSTAT fail occurs
//******************************************************************************
void FMSTAT_Fail(void)
{
    __asm("    ESTOP0");
}

//
// End of File
//
