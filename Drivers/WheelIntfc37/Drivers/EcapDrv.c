/*
 * EcapDrv.c
 *
 *  Created on: Jun 25, 2023
 *      Author: yahal
 */
#include "..\Application\StructDef.h"



//ECAP1_BASE



void SetupEcap(void )
{
    // ECAP1 captures interrupts from the servo unit
    EALLOW ;
    HWREG(ECAP1_BASE + ECAP_O_ECCTL0) = 2       ; // Input for capture
    HWREGH(ECAP1_BASE + ECAP_O_ECCTL1) = 0x410e ; // Enable capture 1 on fall, capture 2 on rise, both reset counter
    HWREGH(ECAP1_BASE + ECAP_O_ECCTL2) = 0x812  ; // Counter runs. continuous, wrap after 2 events

    // ECAP2 is just a free running counter NECK
    HWREGH(ECAP2_BASE + ECAP_O_ECCTL1) = 0x0 ; // Stop in emulation don't capture
    HWREG (ECAP2_BASE + ECAP_O_TSCTR ) = 0 ;
    HWREGH(ECAP2_BASE + ECAP_O_ECCTL2) = 0x10  ; // Just run
}

void EcapInterruptEna( void )
{
    EALLOW ;
    // Sync
    HWREGH(ECAP1_BASE + ECAP_O_ECCTL2) = 0x812  ; // Reset captures,  Counter runs. continuous, wrap after 2 events
    HWREGH(ECAP1_BASE + ECAP_O_ECEINT) = 6      ; // Each of the events shall interrupt
    HWREGH(ECAP1_BASE + ECAP_O_ECCLR ) = 0xff   ; // Each of the events shall interrupt
    HWREGH(PIECTRL_BASE + PIE_O_ACK) = INTERRUPT_ACK_GROUP4 ;
    IER |= INTERRUPT_ACK_GROUP4 ;
}

