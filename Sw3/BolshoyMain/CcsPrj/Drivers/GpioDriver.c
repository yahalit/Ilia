/*
 * GpioDriver.c
 *
 *  Created on: Aug 10, 2021
 *      Author: Yahali
 */


// File: dsp_Gpio.c
// 28377S-specific (boot)
#include "F28x_DeviceConfig.h"

void DisableSTO(void) ;
/*
Purpose:
This routine configure the chip pin multiplexers.
*/
#ifdef CPU1
/// Utilities
//
// InitGpio - Sets all pins to be muxed to GPIO in input mode with pull-ups
//            enabled. Also disables open drain and polarity inversion and sets
//            the qualification to synchronous. Also unlocks all GPIOs
//
void InitGpioDefault()
{
//    volatile Uint32 *gpioBaseAddr;
//    Uint16 regOffset;

    //
    //Disable pin locks
    //
    EALLOW;
    GpioCtrlRegs.GPALOCK.all = 0x00000000;
    GpioCtrlRegs.GPBLOCK.all = 0x00000000;
    //GpioCtrlRegs.GPHLOCK.all = 0x00000000;
    GpioCtrlRegs.GPDLOCK.all = 0x00000000;
    GpioCtrlRegs.GPELOCK.all = 0x00000000;
    GpioCtrlRegs.GPFLOCK.all = 0x00000000;
    GpioCtrlRegs.GPCLOCK.all = 0x00000000;
/**
    //
    //Fill all registers with zeros. Writing to each register separately
    //for six GPIO modules would make this function *very* long. Fortunately,
    //we'd be writing them all with zeros anyway, so this saves a lot of space.
    //
    gpioBaseAddr = (Uint32 *)&GpioCtrlRegs;
    for (regOffset = 0; regOffset < sizeof(GpioCtrlRegs)/2; regOffset++)
    {
        //
        //Hack to avoid enabling pull-ups on all pins. GPyPUD is offset
        //0x0C in each register group of 0x40 words. Since this is a
        //32-bit pointer, the addresses must be divided by 2.
        //
        if (regOffset % (0x40/2) != (0x0C/2))
        {
            gpioBaseAddr[regOffset] = 0x00000000;
        }
    }

    gpioBaseAddr = (Uint32 *)&GpioDataRegs;
    for (regOffset = 0; regOffset < sizeof(GpioDataRegs)/2; regOffset++)
    {
        gpioBaseAddr[regOffset] = 0x00000000;
    }
    */

    EDIS;
}


//
// GPIO_SetupPinMux - Set the peripheral muxing for the specified pin. The
//                    appropriate parameters can be found in the GPIO Muxed
//                    Pins table in the datasheet. Use the GPIO index row
//                   (0 to 15) to select a muxing option for the GPIO.
//
void GPIO_SetupPinMux(Uint16 pin, Uint16 cpu, Uint16 peripheral)
{
#ifdef _LPSIM
    (void) pin ;
    (void) cpu ;
    (void) peripheral ;
#else
    volatile Uint32 *gpioBaseAddr;
    volatile Uint32 *mux, *gmux, *csel;
    Uint16 pin32, pin16, pin8;

    pin32 = pin % 32;
    pin16 = pin % 16;
    pin8 = pin % 8;
    gpioBaseAddr = (Uint32 *)&GpioCtrlRegs + (pin/32)*GPY_CTRL_OFFSET;

    //
    //Sanity check for valid cpu and peripheral values
    //
    if (cpu > GPIO_MUX_CPU2CLA || peripheral > 0xF)
    {
        return;
    }

    //
    //Create pointers to the appropriate registers. This is a workaround
    //for the way GPIO registers are defined. The standard definition
    //in the header file makes it very easy to do named accesses of one
    //register or bit, but hard to do arbitrary numerical accesses. It's
    //easier to have an array of GPIO modules with identical registers,
    //including arrays for multi-register groups like GPyCSEL1-4. But
    //the header file doesn't define anything we can turn into an array,
    //so manual pointer arithmetic is used instead.
    //
    mux = gpioBaseAddr + GPYMUX + pin32/16;
    gmux = gpioBaseAddr + GPYGMUX + pin32/16;
    csel = gpioBaseAddr + GPYCSEL + pin32/8;

    //
    //Now for the actual function
    //
    EALLOW;

    //
    //To change the muxing, set the peripheral mux to 0/GPIO first to avoid
    //glitches, then change the group mux, then set the peripheral mux to
    //its target value. Finally, set the CPU select. This procedure is
    //described in the TRM. Unfortunately, since we don't know the pin in
    //advance we can't hardcode a bitfield reference, so there's some tricky
    //bit twiddling here.
    //
    *mux &= ~(0x3UL << (2*pin16));
    *gmux &= ~(0x3UL << (2*pin16));
    *gmux |= (Uint32)((peripheral >> 2) & 0x3UL) << (2*pin16);
    *mux |= (Uint32)(peripheral & 0x3UL) << (2*pin16);

    *csel &= ~(0x3L << (4*pin8));
    *csel |= (Uint32)(cpu & 0x3L) << (4*pin8);

    //
    //WARNING: This code does not touch the analog mode select registers,
    //which are needed to give the USB module control of its IOs.
    //

    EDIS;
#endif
}

//
// GPIO_SetupPinOptions - Setup up the GPIO input/output options for the
//                        specified pin.
//                        The flags are a 16-bit mask produced by ORing
//                        together options.
//                        For input pins, the valid flags are:
//                        GPIO_PULLUP  Enable pull-up
//                        GPIO_INVERT  Enable input polarity inversion
//                                     (default-you don't need to specify this)
//                        GPIO_QUAL3   Use 3-sample qualification
//                        GPIO_QUAL6   Use 6-sample qualification
//                        GPIO_ASYNC   Do not use synchronization or
//                                     qualification
//                        (Note: only one of SYNC, QUAL3, QUAL6, or ASYNC is
//                        GPIO_SYNC    Synchronize the input latch to PLLSYSCLK
//                         allowed)
//
//                        For output pins, the valid flags are:
//                        GPIO_OPENDRAIN   Output in open drain mode
//                        GPIO_PULLUP      If open drain enabled, also enable
//                                         the pull-up and the input
//                                         qualification flags
//                                        (SYNC/QUAL3/QUAL6/SYNC) listed above.
//
//                        With no flags, the default input state is synchronous
//                        with no pull-up or polarity inversion. The default
//                        output state is the standard digital output.
//
void GPIO_SetupPinOptions(Uint16 pin, Uint16 output, Uint16 flags)
{
#ifdef _LPSIM
    (void) pin ;
    (void) output ;
    (void) flags ;
#else
    volatile Uint32 *gpioBaseAddr;
    volatile Uint32 *dir, *pud, *inv, *odr, *qsel;
    Uint32 pin32, pin16, pinMask, qual;

    pin32 = pin % 32;
    pin16 = pin % 16;
    pinMask = 1UL << pin32;
    gpioBaseAddr = (Uint32 *)&GpioCtrlRegs + (pin/32)*GPY_CTRL_OFFSET;

    //
    //Create pointers to the appropriate registers. This is a workaround
    //for the way GPIO registers are defined. The standard definition
    //in the header file makes it very easy to do named accesses of one
    //register or bit, but hard to do arbitrary numerical accesses. It's
    //easier to have an array of GPIO modules with identical registers,
    //including arrays for multi-register groups like GPyQSEL1-2. But
    //the header file doesn't define anything we can turn into an array,
    //so manual pointer arithmetic is used instead.
    //
    dir = gpioBaseAddr + GPYDIR;
    pud = gpioBaseAddr + GPYPUD;
    inv = gpioBaseAddr + GPYINV;
    odr = gpioBaseAddr + GPYODR;
    qsel = gpioBaseAddr + GPYQSEL + pin32/16;

    EALLOW;

    //
    //Set the data direction
    //
    *dir &= ~pinMask;
    if (output == 1)
    {
        //
        //Output, with optional open drain mode and pull-up
        //
        *dir |= pinMask;

        //
        //Enable open drain if necessary
        //
        if (flags & GPIO_OPENDRAIN)
        {
            *odr |= pinMask;
        }
        else
        {
            *odr &= ~pinMask;
        }

        //
        //Enable pull-up if necessary. Open drain mode must be active.
        //
        if (flags & (GPIO_OPENDRAIN | GPIO_PULLUP))
        {
            *pud &= ~pinMask;
        }
        else
        {
            *pud |= pinMask;
        }
    }
    else
    {
        //
        //Input, with optional pull-up, qualification, and polarity inversion
        //
        *dir &= ~pinMask;

        //
        //Enable pull-up if necessary
        //
        if (flags & GPIO_PULLUP)
        {
            *pud &= ~pinMask;
        }
        else
        {
            *pud |= pinMask;
        }

        //
        //Invert polarity if necessary
        //
        if (flags & GPIO_INVERT)
        {
            *inv |= pinMask;
        }
        else
        {
            *inv &= ~pinMask;
        }
    }

    //
    //Extract the qualification parameter and load it into the register.
    //This is also needed for open drain outputs, so we might as well do it
    //all the time.
    //
    qual = (flags & GPIO_ASYNC) / GPIO_QUAL3;
    *qsel &= ~(0x3L << (2 * pin16));
    if (qual != 0x0)
    {
        *qsel |= qual << (2 * pin16);
    }

    EDIS;
#endif
}


short GetPlcIn()
{
    short RetVal ;
    RetVal = 0;
    if ( GpioDataRegs.GPCDAT.bit.GPIO85)
    {
        RetVal += 1;
    }
    if ( GpioDataRegs.GPEDAT.bit.GPIO145)
    {
        RetVal += 2;
    }
    return RetVal ;
}


#define N_ADD 13
const short unsigned EM_ADDRESS[N_ADD] = {35,38,39,40,44,45,46,47,48,49,50,51,52}  ;
const short unsigned EM_AMUXSET[N_ADD] = { 9, 9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}  ;

const short unsigned EM_DATA[16] = {55,56,57,58,59,62,69,70,71,72,73,74,75,76,78,79} ;
const short unsigned EM_DMUX[16] = { 9, 9, 9, 9, 9, 9,2, 2, 2, 2, 2, 2, 2, 2, 2, 2}  ;

void SpiWaitStam(void);
void InitSpibPins(short unsigned IsManual)
{
    GpioDataRegs.GPASET.bit.GPIO22 = 1 ;
    GPIO_SetupPinOptions(22, GPIO_INPUT, GPIO_PULLUP | GPIO_SYNC); // Clock as GPIO is output
    GPIO_SetupPinOptions(60, GPIO_INPUT, GPIO_PULLUP); // SIMO manual option is input with pullup
    GPIO_SetupPinOptions(61, GPIO_INPUT, GPIO_PULLUP | GPIO_SYNC);// SOMI manual option is input with pullup
    GPIO_SetupPinOptions(133, GPIO_INPUT, GPIO_PULLUP | GPIO_SYNC);// HOLD

    GpioDataRegs.GPBSET.bit.GPIO60 = 1 ; // SIMO
    GpioDataRegs.GPBSET.bit.GPIO61 = 1 ; // SOMI
    GpioDataRegs.GPASET.bit.GPIO27 = 1 ; // STE

    GpioDataRegs.GPESET.bit.GPIO133 = 1 ; // Hold

    GPIO_SetupPinOptions(27, GPIO_OUTPUT, GPIO_PUSHPULL); // STE

    // Set SPI registers
    if (IsManual  )
    {
        // GPIO60 is SPIB_SIMO
        GPIO_SetupPinMux(60, GPIO_MUX_CPU1, 0);
        // GPIO61 is SPIB_SOMI
        GPIO_SetupPinMux(61, GPIO_MUX_CPU1, 0);
    }
    else
    {
        // GPIO60 is SPIB_SIMO
        GPIO_SetupPinMux(60, GPIO_MUX_CPU1, 6);
        // GPIO61 is SPIB_SOMI
        GPIO_SetupPinMux(61, GPIO_MUX_CPU1, 6);
    }

    // GPIO22 SPIB CLK
    GPIO_SetupPinMux(22, GPIO_MUX_CPU1, 6);

    SpibRegs.SPIFFRX.bit.RXFIFORESET = 0 ;
    SpiWaitStam() ;
    SpibRegs.SPIFFRX.bit.RXFIFORESET = 1 ;
}

/**
 * \brief Initialize GPIO. Called after the InitPeripheralClocks()
 */
void InitGpio(void)
{
    short unsigned cnt ,next;
    ///extern unsigned long  BaseAddrDCan[2];
#ifdef CPU1
    InitGpioDefault();

    // SDRAM address
    for ( cnt = 0 ; cnt < N_ADD ; cnt++)
    {
        next = EM_ADDRESS[cnt];
        GPIO_SetupPinMux(next, GPIO_MUX_CPU1, EM_AMUXSET[cnt]);
        GPIO_SetupPinOptions(next, GPIO_INPUT, GPIO_ASYNC|GPIO_PULLUP);
    }
    // SDRAM data
    for ( cnt = 0 ; cnt < 16 ; cnt++)
    {
        next = EM_DATA[cnt];
        GPIO_SetupPinMux(next, GPIO_MUX_CPU1, EM_DMUX[cnt]);
        GPIO_SetupPinOptions(next, GPIO_INPUT, GPIO_ASYNC|GPIO_PULLUP);
    }

    // GPIO0..3 unused

    // GPIO4 is reserved for MCAN TX. For the time, just an output of permanent 1
    GPIO_SetupPinMux(4, GPIO_MUX_CPU1, 0);
    GpioDataRegs.GPASET.bit.GPIO4 = 1 ;
    GPIO_SetupPinOptions(4, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO5 is reserved for CAN A RX.
    GPIO_SetupPinMux(5, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(5, GPIO_INPUT, GPIO_SYNC);

    // GPIO6 is reserved for CAN B TX.
    GPIO_SetupPinMux(6, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPASET.bit.GPIO6 = 1 ;
    GPIO_SetupPinOptions(6, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO7 is reserved for CAN B RX.
    GPIO_SetupPinMux(7, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(7, GPIO_INPUT, GPIO_SYNC);

    // GPIO 8 - 9 Unused

    // GPIO10 for SCI B TX.
    GPIO_SetupPinMux(10, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPASET.bit.GPIO10 = 1 ;
    GPIO_SetupPinOptions(10, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO11 for SCI B RX
    GPIO_SetupPinMux(11, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(11, GPIO_INPUT, GPIO_SYNC);

    // GPIO12 for SCI C TX
    GPIO_SetupPinMux(12, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPASET.bit.GPIO12 = 1 ;
    GPIO_SetupPinOptions(12, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO13-19 unused

    // GPIO20 EQEP1A
    GPIO_SetupPinMux(20, GPIO_MUX_CPU1, 1);
    GPIO_SetupPinOptions(20, GPIO_INPUT, GPIO_QUAL6);

    // GPIO21 EQEP1B
    GPIO_SetupPinMux(21, GPIO_MUX_CPU1, 1);
    GPIO_SetupPinOptions(21, GPIO_INPUT, GPIO_QUAL6);

    // GPIO22 as SPI , see InitSpibPins()

    // GPIO23 EMIF1_CAS
    GPIO_SetupPinMux(23, GPIO_MUX_CPU1, 10);
    GpioDataRegs.GPASET.bit.GPIO23 = 1 ;
    GPIO_SetupPinOptions(23, GPIO_INPUT, GPIO_ASYNC|GPIO_PULLUP);

    // GPIO24 DQM0
    GPIO_SetupPinMux(24, GPIO_MUX_CPU1, 10);
    GpioDataRegs.GPASET.bit.GPIO24 = 1 ;
    GPIO_SetupPinOptions(24, GPIO_INPUT, GPIO_ASYNC|GPIO_PULLUP);

    // GPIO25 DQM1
    GPIO_SetupPinMux(25, GPIO_MUX_CPU1, 10);
    GpioDataRegs.GPASET.bit.GPIO25 = 1 ;
    GPIO_SetupPinOptions(25, GPIO_INPUT, GPIO_ASYNC|GPIO_PULLUP);

    // GPIO26 not used
    // GPIO27 SPI B STE, always as output. It is driven manually as long sessions need be managed
    GPIO_SetupPinMux(27, GPIO_MUX_CPU1, 0);
    GpioDataRegs.GPASET.bit.GPIO27 = 1 ;
    GPIO_SetupPinOptions(27, GPIO_OUTPUT, GPIO_PUSHPULL);
    InitSpibPins ( 0) ; // GPIO 22,60,61


    // GPIO29 EMIF1_SDCKE
    GPIO_SetupPinMux(29, GPIO_MUX_CPU1, 2);
    GpioDataRegs.GPASET.bit.GPIO29 = 1 ;
    GPIO_SetupPinOptions(29, GPIO_INPUT, GPIO_ASYNC|GPIO_PULLUP);

    // GPIO30 EMIF1_CLK
    GPIO_SetupPinMux(30, GPIO_MUX_CPU1, 2);
    GpioDataRegs.GPASET.bit.GPIO30 = 1 ;
    GPIO_SetupPinOptions(30, GPIO_INPUT,GPIO_ASYNC|GPIO_PULLUP);

    // GPIO31 EMIF1_WEn
    GPIO_SetupPinMux(31, GPIO_MUX_CPU1, 2);
    GpioDataRegs.GPASET.bit.GPIO31 = 1 ;
    GPIO_SetupPinOptions(31, GPIO_INPUT,GPIO_ASYNC|GPIO_PULLUP);

    // GPIO32 EMIF1_CS0
    GPIO_SetupPinMux(32, GPIO_MUX_CPU1, 2);
    GpioDataRegs.GPBSET.bit.GPIO32 = 1 ;
    GPIO_SetupPinOptions(32, GPIO_INPUT,GPIO_ASYNC|GPIO_PULLUP);

    // GPIO33 EMIF1_BA0
    GPIO_SetupPinMux(33, GPIO_MUX_CPU1, 9);
    GpioDataRegs.GPBSET.bit.GPIO33 = 1 ;
    GPIO_SetupPinOptions(33, GPIO_INPUT,GPIO_ASYNC|GPIO_PULLUP);
    // GPIO34 EMIF1_BA1
    GPIO_SetupPinMux(34, GPIO_MUX_CPU1, 9);
    GpioDataRegs.GPBSET.bit.GPIO34 = 1 ;
    GPIO_SetupPinOptions(34, GPIO_INPUT,GPIO_ASYNC|GPIO_PULLUP);

    // GPIO35 to GPIO59 are unused or address or data

    // GPIO60 as SPI , see InitSpibPins()
    // GPIO61 as SPI , see InitSpibPins()

    // GPIO62 is D7

    // GPIO63 is CANA_TX
    GPIO_SetupPinMux(63, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPBSET.bit.GPIO63 = 1 ;
    GPIO_SetupPinOptions(63, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO64 to GPIO80 is unused or data

    // GPIO81 and 82 are spare actuator outputs
    GpioDataRegs.GPCCLEAR.bit.GPIO81 = 1 ;
    GpioDataRegs.GPCCLEAR.bit.GPIO82 = 1 ;

    GPIO_SetupPinMux(81, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(81, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(82, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(82, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO83 unused
    // GPIO84 unused (boot)
    // GPIO85 is input PLC 2
    GPIO_SetupPinMux(85, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(85, GPIO_INPUT, GPIO_SYNC);
    // GPIO86 to GPIO89 unused (boot)

    // GPIO90 is RAS
    GPIO_SetupPinMux(90, GPIO_MUX_CPU1, 9);
    GpioDataRegs.GPCSET.bit.GPIO90 = 1 ;
    GPIO_SetupPinOptions(90, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO91 to GPIO99 unused
    // GPIO100 to GPIO101 EQEP B
    GPIO_SetupPinMux(100, GPIO_MUX_CPU1, 5);
    GPIO_SetupPinOptions(100, GPIO_INPUT, GPIO_QUAL3);
    GPIO_SetupPinMux(101, GPIO_MUX_CPU1, 5);
    GPIO_SetupPinOptions(101, GPIO_INPUT, GPIO_QUAL3);

    // GPIO102 to GPIO103 unused

    // GPIO104 SCID TX
    GPIO_SetupPinMux(104, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPCSET.bit.GPIO90 = 1 ;
    GPIO_SetupPinOptions(104, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO105 to GPIO106 unused
    // GPIO107 SCIC RX
    GPIO_SetupPinMux(107, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(107, GPIO_INPUT, GPIO_SYNC);

    // GPIO108 to GPIO124 unused
    // GPIO125 manipulator light 2
    GPIO_SetupPinMux(125, GPIO_MUX_CPU1, 0);
    GpioDataRegs.GPDCLEAR.bit.GPIO125 = 1 ;
    GPIO_SetupPinOptions(125, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO126 to GPIO129 unused
    // GPIO130 IMU sync
    GPIO_SetupPinMux(130, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(130, GPIO_INPUT, GPIO_SYNC);

    // GPIO131 unused
    // GPIO132 IMU reset
    GPIO_SetupPinMux(132, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPESET.bit.GPIO132 = 1 ;
    GPIO_SetupPinOptions(132, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO133 Serial flash hold
    GPIO_SetupPinMux(133, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPESET.bit.GPIO133 = 1 ;
    GPIO_SetupPinOptions(133, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO134 unused
    // GPIO135 SCIA TX
    GPIO_SetupPinMux(135, GPIO_MUX_CPU1, 6);
    GpioDataRegs.GPESET.bit.GPIO135 = 1 ;
    GPIO_SetupPinOptions(135, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO136 SCIA RX
    GPIO_SetupPinMux(136, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(136, GPIO_INPUT, GPIO_SYNC);

    // GPIO137 VAC REL
    GPIO_SetupPinMux(137, GPIO_MUX_CPU1, 0);
    DisableSTO() ;
    GPIO_SetupPinOptions(137, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO138 Manipulator light 1
    GPIO_SetupPinMux(138, GPIO_MUX_CPU1, 0);
    GpioDataRegs.GPECLEAR.bit.GPIO138 = 1 ;
    GPIO_SetupPinOptions(138, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO 139 140 unused
    // GPIO141 SCID RX
    GPIO_SetupPinMux(141, GPIO_MUX_CPU1, 6);
    GPIO_SetupPinOptions(141, GPIO_INPUT, GPIO_SYNC);

    // GPIO 142 unused
    // GPIO 143 to 144: SCIC TX ENA , SCID TX ENA
    GPIO_SetupPinMux(143, GPIO_MUX_CPU1, 0);
    GpioDataRegs.GPECLEAR.bit.GPIO143 = 1 ;
    GPIO_SetupPinOptions(143, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(144, GPIO_MUX_CPU1, 0);
    GpioDataRegs.GPECLEAR.bit.GPIO144 = 1 ;
    GPIO_SetupPinOptions(144, GPIO_OUTPUT, GPIO_PUSHPULL);

    // GPIO 145 PLC input 1
    GPIO_SetupPinMux(145, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(145, GPIO_INPUT, GPIO_SYNC);

    // GPIO >= 146 are unused

#endif
}

// Set control of the STE pin for the relevant CPU
// Owner: 0: CPU1
//        1: CPU2
void SetSF_STEOwnership(short owner)
{
    if ( owner)
    {
        GPIO_SetupPinMux(27, GPIO_MUX_CPU2, 0);
    }
    else
    {
        GPIO_SetupPinMux(27, GPIO_MUX_CPU1, 0);
    }
}


#endif








