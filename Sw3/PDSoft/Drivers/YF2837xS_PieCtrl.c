//###########################################################################
//
// FILE:	F2837xS_PieCtrl.c
//
// TITLE:	F2837xS Device PIE Control Register Initialization Functions.
//
//###########################################################################
// $TI Release: F2837xS Support Library v180 $
// $Release Date: Fri Nov  6 16:27:58 CST 2015 $
// $Copyright: Copyright (C) 2014-2015 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

//#include "F2837xS_device.h"     // F2837xS Headerfile Include File
//#include "F2837xS_Examples.h"   // F2837xS Examples Include File
#include "..\..\TiSoft\include\F2837xS_device.h"
#include "..\..\TiSoft\F2837xS_common\include\F2837xS_Examples.h"

//---------------------------------------------------------------------------
// InitPieCtrl: 
//---------------------------------------------------------------------------
// This function initializes the PIE control registers to a known state.
//
void InitPieCtrl(void)
{
    // Disable Interrupts at the CPU level:
    DINT;

    // Disable the PIE
    PieCtrlRegs.PIECTRL.bit.ENPIE = 0;

	// Clear all PIEIER registers:
	PieCtrlRegs.PIEIER1.all = 0;
	PieCtrlRegs.PIEIER2.all = 0;
	PieCtrlRegs.PIEIER3.all = 0;	
	PieCtrlRegs.PIEIER4.all = 0;
	PieCtrlRegs.PIEIER5.all = 0;
	PieCtrlRegs.PIEIER6.all = 0;
	PieCtrlRegs.PIEIER7.all = 0;
	PieCtrlRegs.PIEIER8.all = 0;
	PieCtrlRegs.PIEIER9.all = 0;
	PieCtrlRegs.PIEIER10.all = 0;
	PieCtrlRegs.PIEIER11.all = 0;
	PieCtrlRegs.PIEIER12.all = 0;

	// Clear all PIEIFR registers:
	PieCtrlRegs.PIEIFR1.all = 0;
	PieCtrlRegs.PIEIFR2.all = 0;
	PieCtrlRegs.PIEIFR3.all = 0;	
	PieCtrlRegs.PIEIFR4.all = 0;
	PieCtrlRegs.PIEIFR5.all = 0;
	PieCtrlRegs.PIEIFR6.all = 0;
	PieCtrlRegs.PIEIFR7.all = 0;
	PieCtrlRegs.PIEIFR8.all = 0;
	PieCtrlRegs.PIEIFR9.all = 0;
	PieCtrlRegs.PIEIFR10.all = 0;
	PieCtrlRegs.PIEIFR11.all = 0;
	PieCtrlRegs.PIEIFR12.all = 0;

}	

//---------------------------------------------------------------------------
// EnableInterrupts: 
//---------------------------------------------------------------------------
// This function enables the PIE module and CPU __interrupts
// Description is in the Delfino manual p-86

interrupt void Epwm1IsrAsm( void);
//interrupt void Sci12IsrAsm( void);
//interrupt void Sci24IsrAsm( void);

void EnableInterrupts()
{
	DINT ;
	EALLOW ;

    DmaClaSrcSelRegs.CLA1TASKSRCSEL1.bit.TASK1 = 1 ; // ADCA int 1

    // Enable the PIE
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;
    PieVectTable.EPWM1_INT = Epwm1IsrAsm; // INT 3.1
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1 ;
    IER = (1<<2) ;

    // Enable PWM1 interrupt
       //ECap1Regs.ECEINT.bit.CTR_EQ_PRD = 1 ;
    EPwm1Regs.ETSEL.bit.INTSEL = 1 ; // TB = 0 ;
    EPwm1Regs.ETSEL.bit.INTEN = 1 ;
    EPwm1Regs.ETPS.bit.INTPRD = 1 ;

    ////////////////////////////////////////////////
    // Bug fix:
    // Following reboot (in FW download process), interrupts did not wake up.
    // The PWM interrupt must be re-acknowledged
    ///////////////////////////////////////////////
    EPwm1Regs.ETCLR.bit.INT = 1 ;

    ////////////////////////////////////////////////
    // End Bug fix
    ///////////////////////////////////////////////

    // Enable SCI B and SCI C RX interrupts
    //PieCtrlRegs.PIEIER8.bit.INTx5 = 1 ;
    //IER |= (1<<7) ;
    //PieCtrlRegs.PIEIER9.bit.INTx3 = 1 ;
    //IER |= (1<<8) ;

	//PieVectTable.SCIC_RX_INT = Sci12IsrAsm;
	//PieVectTable.SCIB_RX_INT = Sci24IsrAsm;

	//ScibRegs.SCIFFRX.bit.RXFFINTCLR = 1 ;
	//ScicRegs.SCIFFRX.bit.RXFFINTCLR = 1 ;
	//ScibRegs.SCIFFRX.bit.RXFFIENA = 1 ;
	//ScicRegs.SCIFFRX.bit.RXFFIENA = 1 ;


	// Enables PIE to drive a pulse into the CPU 
	PieCtrlRegs.PIEACK.all = 0xFFFF;  

	// Enable Interrupts at the CPU level 
	EDIS;
    EINT;
}

//===========================================================================
// End of file.
//===========================================================================
