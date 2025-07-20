/*
 * SpiFlash.c
 *
 *  Created on: Apr 9, 2023
 *      Author: yahal
 */

#include "F28x_DeviceConfig.h"
#include "..\Application\StructDef2.h"

void InitSpibPins(short unsigned IsManual);

#define INSTRUCTION_WREN 6  // Write enable
#define INSTRUCTION_PAGE_PROGRAM 2
#define INSTRUCTION_READ 3
#define INSTRUCTION_RBPR 0x72  // Read block protection
#define INSTRUCTION_ULBPR 0x98 // Unlock block protection
#define INSTRUCTION_READ_JEDEC_ID 0x9f
#define INSTRUCTION_RESET_ENABLE 0x66
#define INSTRUCTION_RESET 0x99
#define INSTRUCTION_RDSR 0x5 // Read status reg
#define INSTRUCTION_WRSR 0x1 // Write status reg
#define INSTRUCTION_RDCR 0x35 // Write config reg
#define INSTRUCTION_RSTQIO 0xff // Set device to simple SPI mode
#define INSTRUCTION_JEDECID 0x9f
#define INSTRUCTION_SECTOR_ERASE 0x20
#define INSTRUCTION_ULBPR 0x98  // Global Block Protection Unlock


#define STATUS_BUSY 1
#define STATUS_WRITE_ENABLE 2
#define STATUS_TEST_WRITE_MASK 0x1f
#define STATUS_TEST_WRITE_VALUE 0x2

#define MAX_TIME_SECTOR_ERASE 28000
#define MAX_TIME_BLOCK_ERASE 28000
#define MAX_TIME_CHIP_ERASE 60000
#define MAX_TIME_PAGE_PROG 1800
#define MAX_TIME_WAIT_FLASH_OWN 60000


long unsigned NextFlashTime ;

inline void ReleaseSerialFlash(void)
{
    S2M.Items.UFlashToken.item.bSerialFlashRequest = 0 ;
    //S2M.Items.UFlashToken.item.bSerialFlashOwner   = 0 ;
}


void SFSetNextTime(long unsigned usec)
{
    NextFlashTime = ~CpuTimer1Regs.TIM.all + usec ;
}
short SFIsNextTimeElapse()
{
    long unsigned now , delta ;
    now = ~CpuTimer1Regs.TIM.all ;
    delta = now - NextFlashTime ;
    if ( delta & 0x80000000 )
    {
        return 0 ;
    }

    return 1 ;
}


static volatile short unsigned kuku ;

inline void AssertCs(void)
{
    GpioDataRegs.GPACLEAR.bit.GPIO27 = 1 ;  // CS
}
inline void deAssertCs(void)
{
    GpioDataRegs.GPASET.bit.GPIO27 = 1 ;  // CS
}

void SpiWaitStam(void)
{
    for ( kuku = 0 ; kuku < 10 ; kuku++) {} ;
}

inline void ClearSpiRxBuf()
{
    SpibRegs.SPIFFRX.bit.RXFIFORESET = 0 ;
    SpiWaitStam() ;
    SpibRegs.SPIFFRX.bit.RXFIFORESET = 1 ;
}



short SFInstructionWrite(short unsigned add , short unsigned PlayCs)
{
    if (PlayCs)
    {
        AssertCs() ;
    }
    SpibRegs.SPICCR.bit.SPICHAR = 7 ;
    ClearSpiRxBuf() ;
    SpibRegs.SPITXBUF = ( add << 8 ) | add ;
    while(SpibRegs.SPIFFRX.bit.RXFFST==0) ;
    if (PlayCs)
    {
        ClearSpiRxBuf() ;
        deAssertCs() ;
    }
    return 0 ;
}

short unsigned SFInstructionReadByte( short unsigned add )
{
    short unsigned w ;
    ClearSpiRxBuf() ;
    SpibRegs.SPICCR.bit.SPICHAR = 15 ;
    AssertCs() ;
    SpibRegs.SPITXBUF = (add<<8) ;
    SpiWaitStam() ;
    while(SpibRegs.SPIFFRX.bit.RXFFST == 0 ) ;
    deAssertCs() ;
    w = SpibRegs.SPIRXBUF ;
    return ( w & 0xff) ;
}

short SFWriteEnable(void)
{
    short unsigned stat ;
    SFInstructionWrite(INSTRUCTION_WREN,1) ;
    stat = SFInstructionReadByte(INSTRUCTION_RDSR  );
    if ((stat & STATUS_TEST_WRITE_MASK )^STATUS_TEST_WRITE_VALUE )
    {
        return -1 ; // Can't write
    }
    return 0 ;
}


short WaitNotBusy(  long unsigned tbusy )
{
    short unsigned stat ;
    SFSetNextTime(tbusy);
    do
    {
        stat = SFInstructionReadByte(INSTRUCTION_RDSR  );
        if ( (stat & STATUS_BUSY) == 0  )
        {
            return 0 ;
        }
    } while ( SFIsNextTimeElapse() == 0 );
    return -1 ;
}


short SFSetAddress(short unsigned cmd ,long unsigned add_in, short  unsigned PrepWrite )
{
    if (WaitNotBusy(MAX_TIME_SECTOR_ERASE) )
    {
        return -1 ;
    }

    if ( PrepWrite )
    {
        if ( SFWriteEnable())
        {
            return -2 ;
        }
    }


    AssertCs() ;

    SFInstructionWrite(cmd&0xff , 0 ) ;
    SFInstructionWrite((short unsigned)((add_in>>16)&0xff) , 0 ) ;
    SFInstructionWrite((short unsigned)((add_in>>8)&0xff) , 0 ) ;
    SFInstructionWrite((short unsigned)(add_in&0xff) , 0 ) ;

    ClearSpiRxBuf();

    // After the address setting everything is 16bit
    SpibRegs.SPICCR.bit.SPICHAR = 15 ;

    return 0 ;
}

short OwnSerialFlash(void)
{
    // Stage 1: Null the request , verify non-grant
    S2M.Items.UFlashToken.item.bSerialFlashRequest = 0  ;
    while ( M2S.Items.ActCmd.cmd.bSerialFlashOwner == 2 );

    // Stage 2: Issue request and wait its grant
    S2M.Items.UFlashToken.item.bSerialFlashRequest = 1  ;

    SFSetNextTime(MAX_TIME_BLOCK_ERASE) ;
    do
    {
        if ( SFIsNextTimeElapse() )
        {
            ReleaseSerialFlash() ;
            return ERR_FAILED_TO_OWN_FLASH ;
        }
    } while (M2S.Items.ActCmd.cmd.bSerialFlashOwner != 2  ) ;

    return 0 ;
}

inline
short SFSectorEraseBody( long unsigned add)
{
    short stat ;
    stat = SFSetAddress(INSTRUCTION_SECTOR_ERASE,add<<1,1) ;
    if (stat)
    {
        return stat ;
    }
    deAssertCs() ;
    return 0 ;
}

short SFSectorErase( long unsigned add)
{
    short stat ;
    stat = OwnSerialFlash();
    if ( stat )
    {
        return stat  ;
    }
    stat = SFSectorEraseBody(add);
    ReleaseSerialFlash() ;
    return stat ;
}


inline
short SFInstructionReadBody(long unsigned add_in, short unsigned wlen, short unsigned * inbuf )
{
    short unsigned cnt    ;
    short unsigned * buf = inbuf ;
    long  unsigned byteadd ;


    byteadd = (add_in<<1) ;
    if ( SFSetAddress(INSTRUCTION_READ , byteadd ,0) < 0 )
    {
        return -1  ;
    }
    if (wlen)
    {
        for ( cnt = 1 ; cnt <= wlen ; cnt++)
        {
            SpibRegs.SPITXBUF = 0 ;
            while(SpibRegs.SPIFFRX.bit.RXFFST == 0  ) ;
            *buf++ = SpibRegs.SPIRXBUF ;
        }
    }
    deAssertCs() ;
    return 0 ;
}

short SFInstructionRead(long unsigned add_in, short unsigned wlen, short unsigned * inbuf )
{
    short stat ;
    stat = OwnSerialFlash();
    if ( stat  )
    {
        return stat ;
    }
    stat = SFInstructionReadBody(add_in,  wlen, inbuf );
    ReleaseSerialFlash() ;
    return stat ;
}

/*
 * Write a buffer into the serial flash
 * wadd_in : Word address in flash (half! of byte address)
 * wlen    : Writing length in words
 * inbuf   : buffer to write
 */
inline
short SFInstructionWriteBufBody(long unsigned wadd_in, short unsigned wlen, short unsigned * inbuf )
{
    short unsigned cnt  ;
    short unsigned * buf = inbuf ;
    long unsigned byteadd ;
    short stat , last ;


    byteadd = ( wadd_in << 1 ) ; // Addresses are word -wise
    if (wlen)
    {
        if (WaitNotBusy(MAX_TIME_SECTOR_ERASE) )
        {
            return -3 ;
        }

        cnt = 0 ;
        last = 0 ;

        stat = SFSetAddress(INSTRUCTION_PAGE_PROGRAM,byteadd,1) ;
        if ( stat )
        {
            return stat ;
        }


        for ( ; ; )
        {
            SpibRegs.SPITXBUF = *buf++ ;
            cnt  += 1 ;
            byteadd += 2 ; // Two bytes per word
            if ( cnt == wlen )
            {
                last = 1 ;
            }
            while(SpibRegs.SPIFFRX.bit.RXFFST == 0 ) ;
            ClearSpiRxBuf() ;

            if ( last )
            {
                break ; // If last, never write a next preamble
            }

            if ( (byteadd & 0xff) == 0 )
            { // Next write crosses buffer boundary
                deAssertCs() ;
                //SFSetNextTime(MAX_TIME_PAGE_PROG) ;
                stat = SFSetAddress(INSTRUCTION_PAGE_PROGRAM,byteadd,1) ;
                if ( stat )
                {
                    return stat ;
                }
            }
        }
        deAssertCs() ;
     }

    return 0 ;
}
short SFInstructionWriteBuf(long unsigned wadd_in, short unsigned wlen, short unsigned * inbuf )
{
    short stat ;
    stat = OwnSerialFlash() ;
    if ( stat  )
    {
        return -2 ;
    }
    stat = SFInstructionWriteBufBody(wadd_in, wlen, inbuf );
    ReleaseSerialFlash() ;
    return stat ;
}











