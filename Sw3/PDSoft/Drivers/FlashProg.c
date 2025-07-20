#include "..\TiSoft\F28x_Project.h"     // DSP28x Headerfile
#include <string.h>
#include "..\TiSoft\include\flash_programming_c28.h"      // Flash API example header file

#define CPU_CLK_MHZ 200

/*
#define Bzero_SectorB_start        0x82000
#define Bzero_SectorB_End	       0x83FFF

#define Bzero_SectorA_start	       0x80000
#define Bzero_SectorA_End          0x81FFF

#define Bzero_16KSector_u32length  0x1000
#define Bzero_64KSector_u32length  0x4000
*/

//#include "flash_programming_c28.h"      // Flash API example header file
#include "..\TiSoft\FlashAPI\F021_F2837xS_C28x.h"

// Flash programming

#define PUMPREQUEST *(unsigned long*)(0x00050024)

#define ramFuncSection ".TI.ramfunc"

// Fapi_serviceWatchdogTimer - Service Watchdog timer
//
#pragma CODE_SECTION(Fapi_serviceWatchdogTimer,ramFuncSection);

Fapi_StatusType Fapi_serviceWatchdogTimer(void)
{
   //
   // User to add their own watchdog servicing code here
   //

   return(Fapi_Status_Success);
}


short InitFlashAction()
{
    Fapi_StatusType oReturnCheck;
	//
	// Bank0 Erase Program
	//
	EALLOW;

	//
	//Give pump ownership to FMC0
	//
	PUMPREQUEST = 0x5A5A0002;
	//
	// This function is required to initialize the Flash API based on System
	// frequency before any other Flash API operation can be performed
	// Note that the FMC0 register base address is passed as the parameter
	//
	oReturnCheck = Fapi_initializeAPI(F021_CPU0_W0_BASE_ADDRESS, CPU_CLK_MHZ);

	if(oReturnCheck != Fapi_Status_Success)
	{
		//
		// Check Flash API documentation for possible errors
		//
		return -1 ;
	}

    //
    // Fapi_setActiveFlashBank function sets the Flash bank0 and FMC0 for
    // further Flash operations to be performed on the bank0.
    // Note that the parameter passed is Fapi_FlashBank0 since FMC0 register
    // base address is passed to Fapi_initializeAPI()
    //
    oReturnCheck = Fapi_setActiveFlashBank(Fapi_FlashBank0);
    if(oReturnCheck != Fapi_Status_Success)
    {
        //
        // Check Flash API documentation for possible errors
        //
        return -1 ;
    }
	return 0 ;
}


short FlashSectorClear( short unsigned sec  )
{
    Fapi_StatusType oReturnCheck;
    volatile Fapi_FlashStatusType oFlashStatus;
    Fapi_FlashStatusWordType oFlashStatusWord;

    long unsigned * uPtr ;

    if ( sec < 1 || sec >= 30  )
    {
    	return -1;
    }

    switch ( sec )
    {
    case 1:
    	uPtr = (unsigned long *) Bzero_SectorB_start ;
    	break ;
    case 2:
    	uPtr = (unsigned long *) Bzero_SectorC_start ;
    	break ;
    case 3:
    	uPtr = (unsigned long *) Bzero_SectorD_start ;
    	break ;
    case 4:
    	uPtr = (unsigned long *) Bzero_SectorE_start ;
    	break ;
    case 5:
    	uPtr = (unsigned long *) Bzero_SectorF_start ;
    	break ;
    case 6:
    	uPtr = (unsigned long *) Bzero_SectorG_start ;
    	break ;
    case 7:
    	uPtr = (unsigned long *) Bzero_SectorH_start ;
    	break ;
    case 8:
    	uPtr = (unsigned long *) Bzero_SectorI_start ;
    	break ;
    case 9:
    	uPtr = (unsigned long *) Bzero_SectorJ_start ;
    	break ;
    case 10:
    	uPtr = (unsigned long *) Bzero_SectorK_start ;
    	break ;
    case 11:
    	uPtr = (unsigned long *) Bzero_SectorL_start ;
    	break ;
    case 12:
    	uPtr = (unsigned long *) Bzero_SectorM_start ;
    	break ;
    case 13:
    	uPtr = (unsigned long *) Bzero_SectorN_start ;
    	break ;
    }

    EALLOW ;

    //
    // Erase Sector
    //
    oReturnCheck = Fapi_issueAsyncCommandWithAddress(Fapi_EraseSector, uPtr ) ;
    //
    // Wait until FSM is done with erase sector operation
    //
    while(Fapi_checkFsmForReady() != Fapi_Status_FsmReady){}

    //
    // Verify that SectorL is erased.  The Erase step itself does a
    // verify as it goes.  This verify is a 2nd verification that can be done.
    //
    oReturnCheck = Fapi_doBlankCheck(uPtr , Bzero_16KSector_u32length, &oFlashStatusWord);

    if(oReturnCheck != Fapi_Status_Success)
    {
        //
        // Check Flash API documentation for possible errors
        // If Erase command fails, use Fapi_getFsmStatus() function to get the
        // FMSTAT register contents to see if any of the EV bit, ESUSP bit,
        // CSTAT bit or VOLTSTAT bit is set (Refer to API documentation for
        // more details)
        //
        return -1 ;
    }
    return 0 ;
}

short FlashDataBurn( short unsigned *uData , long unsigned FlashAddress , short unsigned WordsInBuffer   )
{
	short unsigned i ;
	uint32   *Buffer32 ;
	uint32 u32Index ;

	Fapi_StatusType oReturnCheck;
    volatile Fapi_FlashStatusType oFlashStatus;
    Fapi_FlashStatusWordType oFlashStatusWord;

    oReturnCheck = Fapi_Status_Success;
	EALLOW ;

	Buffer32 = (uint32 *)uData;

    for(i=0, u32Index = FlashAddress;
        (u32Index < (FlashAddress + WordsInBuffer)) &&
        (oReturnCheck == Fapi_Status_Success); i+= 8, u32Index+= 8)
    {
        oReturnCheck = Fapi_issueProgrammingCommand((uint32 *)u32Index,(uint16 *)uData+i,
                                                    8,0,0,
                                                    Fapi_AutoEccGeneration);

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
        // program command for any debug
        //
        oFlashStatus = Fapi_getFsmStatus();

        //
        // Verify the values programmed.  The Program step itself does a verify
        // as it goes.  This verify is a 2nd verification that can be done.
        //
        oReturnCheck = Fapi_doVerify((uint32 *)u32Index,4,Buffer32+(i/2),
                                     &oFlashStatusWord);

        if(oReturnCheck != Fapi_Status_Success)
        {
            //
            // Check Flash API documentation for possible errors
            //
            return -1;
        }
    }
	return 0 ;
}

