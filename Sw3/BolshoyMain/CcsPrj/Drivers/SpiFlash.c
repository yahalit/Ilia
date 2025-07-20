#include "F28x_DeviceConfig.h"
#include "..\Application\StructDef.h"

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
#define MAX_TIME_WAIT_OWNERSHIP 40000


long unsigned NextFlashTime ;

inline void ReleaseSerialFlash(void)
{
    M2S.Items.ActCmd.cmd.bSerialFlashRequest = 0 ;
    //M2S.Items.ActCmd.cmd.bSerialFlashOwner   = 0 ;
}


void InitSpiB()
{
    short fac ;
    if ( ClkCfgRegs.LOSPCP.bit.LSPCLKDIV == 0 )
    {
        fac = 1 ;
    }
    else
    {
        fac = 1.0 / ( ClkCfgRegs.LOSPCP.bit.LSPCLKDIV * 2 ) ;
    }

    SpibRegs.SPICCR.all = 0xf ; // Reset for programming
    SpibRegs.SPICTL.all = 0xe ; // Phase =1 , Master , TX enable
    SpibRegs.SPISTS.all = 0x80 ; // Clear overrun flag
    SpibRegs.SPIBRR.all = (short unsigned) ( 48 * fac )    ; // 4MHz
    SpibRegs.SPIFFTX.all = 0x0040 ;
    SpibRegs.SPIFFRX.all = 0x4040 ;
    SpibRegs.SPIFFTX.all = 0xe04e ;
    SpibRegs.SPIFFRX.all = 0x2040 ;
    SpibRegs.SPIPRI.all = 0x30 ;
    SpibRegs.SPICCR.all = 0x8f ; // Enable, 16 bit word  , 0 polarity
}

void SFSetNextTime(long unsigned usec)
{
    NextFlashTime = ~CpuTimer1Regs.TIM.all + usec ;
}
short SFIsNextTimeElapse()
{
    long unsigned now ;
    now = ~CpuTimer1Regs.TIM.all ;
    now -= NextFlashTime ;
    return (( now & 0x80000000 ) ? 0 : 1 ) ;
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



void SetSpiClockCycle(short unsigned n)
{
    short unsigned cnt ;
    for ( cnt = 0 ; cnt < n ; cnt++ )
    {
        SpiWaitStam() ;
        GpioDataRegs.GPASET.bit.GPIO22 = 1 ;  // Clock
        SpiWaitStam() ;
        GpioDataRegs.GPACLEAR.bit.GPIO22 = 1 ;  // Clock
    }
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

/*
 * Erase a 4096 byte block . Note that the address is in words, so it will be doubled
 * on flash interfaces
 */
short SFSectorErase( long unsigned add)
{
    short stat ;

    stat = OwnSerialFlash() ;
    if (  stat )
    {
        return stat ;
    }
    stat = SFSectorEraseBody(add);
    ReleaseSerialFlash() ;
    return stat ;
}


short unsigned swlen;
short SFInstructionReadBody(long unsigned add_in, short unsigned wlen, short unsigned * inbuf )
{
    short unsigned cnt    ;
    short unsigned * buf = inbuf ;
    long  unsigned byteadd ;
    swlen = wlen ;

    byteadd = (add_in<<1) ;
    if ( SFSetAddress(INSTRUCTION_READ , byteadd ,0) < 0 )
    {
        return -1  ;
    }
    if (swlen)
    {
        for ( cnt = 1 ; cnt <= swlen ; cnt++)
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
        return stat  ;
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
    stat = OwnSerialFlash();
    if ( stat  )
    {
        return stat ;
    }
    stat = SFInstructionWriteBufBody(wadd_in, wlen, inbuf );
    ReleaseSerialFlash() ;
    return stat ;
}

void SetSflashToSPI(void )
{
    // First make MOSI, MISO, CLK, CS as IO, all driven high

    // HOLD on
    GpioDataRegs.GPESET.bit.GPIO133 = 1 ;

    InitSpibPins(1) ;
    SpibRegs.SPICCR.bit.SPICHAR = 1 ;

    AssertCs() ;  // CS
    SpibRegs.SPITXBUF = 0xffff ;
    while (SpibRegs.SPIFFRX.bit.RXFFST == 0 ) ;
    deAssertCs();
    SpiWaitStam();
    ClearSpiRxBuf();

    AssertCs() ;  // CS
    SpibRegs.SPITXBUF = 0xffff ;
    while (SpibRegs.SPIFFRX.bit.RXFFST == 0 ) ;
    deAssertCs() ;  // CS
    SpiWaitStam();
    ClearSpiRxBuf();

    SpibRegs.SPICCR.bit.SPICHAR = 7 ;
    AssertCs() ;  // CS
    SpibRegs.SPITXBUF = 0xffff ;
    while (SpibRegs.SPIFFRX.bit.RXFFST == 0 ) ;
    deAssertCs();
    SpiWaitStam();
    ClearSpiRxBuf();

    AssertCs() ;  // CS
    SpibRegs.SPITXBUF = 0xffff ;
    while (SpibRegs.SPIFFRX.bit.RXFFST == 0 ) ;
    deAssertCs() ;  // CS
    SpiWaitStam();
    ClearSpiRxBuf();

    InitSpibPins(0) ;

    // Return IO to SPI mode
    // SFInstructionWrite(INSTRUCTION_RSTQIO,1) ;

    // Reset enable
    SFInstructionWrite(INSTRUCTION_RESET_ENABLE,1) ;
    SFInstructionWrite(INSTRUCTION_RESET,1) ;



}

/*
#define NNN 256
const short writeZF[16] = {10,11,12,14, 20,21,22,23,1030,1031,1032,1034, 0x2040,0x2041,0x2042,0x2043} ;
short writeZ[NNN] ;
short unsigned readZ[NNN] ;
short unsigned cnt  ;
short unsigned wlen  ;
*/

unsigned short stat ;
short SFInit(void)
{
    unsigned short JedecID;
    SetSflashToSPI( );


// Verify Jedec number
    stat = SFInstructionReadByte(INSTRUCTION_RDSR  );

    // Test the Jedec ID of the SF
    JedecID = SFInstructionReadByte(INSTRUCTION_JEDECID);
    if (JedecID != 0xBF  )
    {
        return -1 ;
    }

    SFWriteEnable() ;
    SFInstructionWrite(INSTRUCTION_ULBPR,1) ;

/*
#define START_ADD 8192UL
#define WLEN 2
    for ( cnt = 0 ; cnt < 16 ; cnt++ )
    {
        writeZ[cnt] = writeZF[cnt] ;
    }
    for ( cnt = 16; cnt < NNN ; cnt++ )
    {
        writeZ[cnt] = writeZ[cnt-1] + 1 ;
    }
    wlen = __min(128,NNN) ;
    SFSectorErase(START_ADD) ;

    SFInstructionRead(START_ADD, NNN , readZ );

    SFInstructionWriteBuf(START_ADD, wlen, (unsigned short *) &writeZ[0] ); // Write to 1st buffer

    SFInstructionRead(START_ADD, wlen , readZ );
*/
    return 0 ;
}


short OwnSerialFlash(void)
{
    short unsigned mask ;
    if ( SpiFlashFail )
    {
        return ERR_SFLASH_INIT_FAILED ;
    }
    if ( SysState.bPeriodicProcRunning == 0 )
    { // Arbiter not started yet, make own rule
        M2S.Items.ActCmd.cmd.bSerialFlashRequest = 1  ;
        M2S.Items.ActCmd.cmd.bSerialFlashOwner = 1 ;
        return 0 ;
    }

    // Stage 1: Null possible ownership and issue a request
    mask = BlockInts() ;
    M2S.Items.ActCmd.cmd.bSerialFlashRequest = 1  ;

    if ( M2S.Items.ActCmd.cmd.bSerialFlashOwner == 1 )
    {
        M2S.Items.ActCmd.cmd.bSerialFlashOwner = 0 ;
    }

    SetSpibOwner() ; // Most cases we don't need to wait

    RestoreInts(mask) ;

    // Stage 2: wait its grant
    SFSetNextTime(MAX_TIME_WAIT_OWNERSHIP) ;
    while (M2S.Items.ActCmd.cmd.bSerialFlashOwner != 1  )
    {
        if ( SFIsNextTimeElapse() )
        {
            ReleaseSerialFlash() ;
            return ERR_FAILED_TO_OWN_FLASH ;
        }
    } ;

    return 0 ;
}






