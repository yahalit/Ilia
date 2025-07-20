/*
 * Encoders.c
 *
 *  Created on: Jul 1, 2023
 *      Author: yahal
 */
#include "..\Application\StructDef.h"


void setupQEP1(void)
{
  //
  // Configure the decoder for quadrature count mode
  //
  EQEP_setDecoderConfig(EQEP1_BASE, (EQEP_CONFIG_2X_RESOLUTION |
                                     EQEP_CONFIG_QUADRATURE |
                                     EQEP_CONFIG_NO_SWAP));

  EQEP_setEmulationMode(EQEP1_BASE, EQEP_EMULATIONMODE_RUNFREE);

  //
  // Configure the position counter to be latched on a unit time out
  //

  EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT);

  // Enable the unit timer, setting the frequency to the control interrupt
  //
  EQEP_enableUnitTimer(EQEP1_BASE, (unsigned short) (CPU_CLK_MHZ * CUR_SAMPLE_TIME_USEC) );

  // Disables the eQEP module position-compare unit
  EQEP_disableCompare(EQEP1_BASE);

  //
  // Configure and enable the edge-capture unit. The capture clock divider is
  // SYSCLKOUT/64. The unit-position event divider is QCLK/32.
  //
  EQEP_setCaptureConfig(EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_32, EQEP_UNIT_POS_EVNT_DIV_1);

  EQEP_enableCapture(EQEP1_BASE);

  EALLOW ;
  HWREG(EQEP1_BASE + EQEP_O_QPOSMAX) = 0xffffffff ;
  HWREG(EQEP1_BASE + EQEP_O_QUPRD) = CPU_CLK_MHZ * ( CUR_SAMPLE_TIME_USEC - 1 ) ;
  //
  // Enable the eQEP module
  //

  EQEP_enableModule(EQEP1_BASE);

  return;
}


void setupQEP2(void)
{
  //
  // Configure the decoder for quadrature count mode
  //
  EQEP_setDecoderConfig(EQEP2_BASE, (EQEP_CONFIG_2X_RESOLUTION |
                                     EQEP_CONFIG_QUADRATURE |
                                     EQEP_CONFIG_NO_SWAP));

  EQEP_setEmulationMode(EQEP2_BASE, EQEP_EMULATIONMODE_RUNFREE);

  //
  // Configure the position counter to be latched on a unit time out
  //

  EQEP_setLatchMode(EQEP2_BASE, EQEP_LATCH_UNIT_TIME_OUT);

  // Enable the unit timer, setting the frequency to the control interrupt
  //
  EQEP_enableUnitTimer(EQEP2_BASE, (unsigned short) (CPU_CLK_MHZ * CUR_SAMPLE_TIME_USEC) );

  // Disables the eQEP module position-compare unit
  EQEP_disableCompare(EQEP2_BASE);

  //
  // Configure and enable the edge-capture unit. The capture clock divider is
  // SYSCLKOUT/32.
  //
  EQEP_setCaptureConfig(EQEP2_BASE, EQEP_CAPTURE_CLK_DIV_32, EQEP_UNIT_POS_EVNT_DIV_1);

  EQEP_enableCapture(EQEP2_BASE);

  EALLOW ;
  HWREG(EQEP2_BASE + EQEP_O_QPOSMAX) = 0xffffffff ;
  HWREG(EQEP2_BASE + EQEP_O_QUPRD) = CPU_CLK_MHZ * ( CUR_SAMPLE_TIME_USEC - 1 ) ;
  //
  // Enable the eQEP module
  //

  EQEP_enableModule(EQEP2_BASE);

  return;
}
