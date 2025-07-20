/*
 * CmpSS.c
 *
 *  Created on: Dec 2, 2021
 *      Author: Yahali
 */


#include "..\Application\PdStructDef.h"
#include "..\..\TiSoft\F2837xS_common\include\F28x_Project.h"     // DSP28x Headerfile
//#include "F2837x_YDCAN.h"
#include "..\Drivers\F2837x_YDCAN.h"


#include "hw_memmap.h"
#include "hw_types.h"
#include "..\driverlib\cmpss.h"

#define CMPSS_FILTER_PRESCALAR    10
#define CMPSS_FILTER_WINDOW     15
#define CMPSS_FILTER_THESHOLD    10

#define FWD_THRESHOLD          2000 // Cut at about 30A


void InitCMPSS(void)
{
    CMPSS_enableModule(CMPSS1_BASE);
    CMPSS_configDAC(CMPSS1_BASE, CMPSS_DACREF_VDDA | CMPSS_DACVAL_SYSCLK | CMPSS_DACSRC_SHDW);

    CMPSS_configHighComparator(CMPSS1_BASE, CMPSS_INSRC_DAC);
    CMPSS_configFilterHigh(CMPSS1_BASE , CMPSS_FILTER_PRESCALAR, CMPSS_FILTER_WINDOW, CMPSS_FILTER_THESHOLD);
    CMPSS_initFilterHigh(CMPSS1_BASE);

    CMPSS_setDACValueHigh(CMPSS1_BASE, FWD_THRESHOLD);
    CMPSS_configOutputsHigh(CMPSS1_BASE, CMPSS_TRIP_FILTER);
    CMPSS_clearFilterLatchHigh(CMPSS1_BASE);
}
