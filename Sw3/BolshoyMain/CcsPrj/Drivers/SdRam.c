#include "F28x_DeviceConfig.h"
#include "sdram_emif_defines.h"
/*
 * SdRam.c
 *
 *  Created on: Aug 14, 2021
 *      Author: Yahali
 */
#define SDRAM_DATA_START 0x80000000

#define TEST_PASS            0xABCDABCD
#define TEST_FAIL            0xDEADDEAD
#define ASRAM_CS2_START_ADDR 0x100000
#define ASRAM_CS2_SIZE       0x8000
#define EMIF1                0
#define EMIF2                1
#define MEM_D_WIDTH          1            // 16Bit Memory Interface
#define TURN_AROUND_TIME     0            // Turn Around time of 2 Emif Clock
#define RD_SETUP_TIME        0            // Read Setup time of 1 Emif Clock
#define RD_STROBE_TIME       3            // Read Strobe time of 4 Emif Clock
#define RD_HOLD_TIME         0            // Read Hold time of 1 Emif Clock
#define WR_SETUP_TIME        0            // Write Hold time of 1 Emif Clock
#define WR_STROBE_TIME       0            // Write Setup time of 1 Emif Clock
#define WR_HOLD_TIME         0            // Write Hold time of 1 Emif Clock
#define EXTEND_WAIT          0            // Disable Extended Wait
#define STROBE_SEL           0            // Disable Strobe Mode.
#define WAIT_POLAR_INV       0
#define WAIT_COUNT           0
//
// Globals
//
Uint16  ErrCount = 0;
Uint32  TEST_STATUS;


//
// Function Prototypes
//
//
// mem_read_write - This function performs simple read/write word accesses
//                  to memory.
//
#ifdef _LPSIM
unsigned long* volatile XM_p;
unsigned long* volatile XMEM_p;
unsigned short* volatile XMEM_ps;
unsigned long* volatile XMEM_pl;
unsigned long  volatile xSdRam[16];
#else
__attribute__((far)) unsigned long  * volatile XM_p;
__attribute__((far)) unsigned long  * volatile XMEM_p;
__attribute__((far)) unsigned short  * volatile XMEM_ps;
__attribute__((far)) unsigned long  * volatile XMEM_pl;

#pragma DATA_SECTION(xSdRam,".farbss");
__attribute__((far)) unsigned long  volatile xSdRam[16];
#endif 
unsigned long x[16] ;

/*
char
mem_read_write(Uint32 start_addr, Uint32 mem_size)
{
    unsigned long cnt ;
    for ( cnt = 0; cnt < 16 ; cnt++)
    {
        xSdRam[cnt] = 12345600 + cnt ;
    }
    for ( cnt = 0; cnt < 16 ; cnt++)
    {
        x[cnt] = xSdRam[cnt] ;
    }
    return 0 ;
}

char
mem_read_write(Uint32 start_addr, Uint32 mem_size)
{
    unsigned long mem_rds;
    unsigned long mem_wds;
    unsigned int i;

    //
    //Write data
    //
    XMEM_ps = (unsigned short *)start_addr;

    //
    //Fill memory
    //
    mem_wds = 0x01234567;
    for (i=0; i < mem_size; i++)
    {
        *XMEM_ps++ = mem_wds;
        mem_wds += 0x11111111;
    }

    //
    //Verify memory
    //
    mem_wds = 0x01234567;
    XMEM_ps = (unsigned short *)start_addr;
    for (i=0; i < mem_size; i++)
    {
        mem_rds = *XMEM_ps;
        if( mem_rds != mem_wds)
        {
            return(1);
        }
        XMEM_ps++;
        mem_wds += 0x11111111;
    }
    return(0);
}
*/
//
//  mem_data_walk - This function performs a walking 0 & 1 on data lines for
//                  SRAM RD & WR
//
char
mem_data_walk(Uint32 start_addr, Uint32 mem_size)
{
    unsigned long sram_rd;
    unsigned long sram_wd;
    unsigned long i;
    int k;
    int m;

    XM_p = (unsigned long *)start_addr;

    for (i=0; i < mem_size; i=i+64)
    {
        for (m=0; m < 2; m++)
        {
            //
            //Write loop
            //
            XMEM_p = XM_p;
            sram_wd = 0x01;
            for (k=0; k < 32; k++)
            {
                if(m==0)
                {
                    *XMEM_p++ =  sram_wd;
                }
                else
                {
                    *XMEM_p++ = ~sram_wd;
                }
                sram_wd   = sram_wd<<1;
            }

            //
            //Read loop
            //
            XMEM_p = XM_p;
            sram_wd = 0x01;
            for (k=0; k < 32; k++)
            {
                sram_rd = *XMEM_p;
                if(m==1)
                {
                    sram_rd = ~sram_rd;
                }
                if(sram_rd != sram_wd)
                {
                    return(1);
                }
                XMEM_p++;
                sram_wd=sram_wd<<1;
            }
        }
        XM_p = XMEM_p;
    }
    return(0);
}

//
// mem_addr_walk - This function performs a toggle on each address bit.
//
char
mem_addr_walk(Uint32 start_addr, Uint32 addr_size)
{
    unsigned long sram_rd;
    unsigned long sram_wd;
    unsigned int k;
    unsigned long xshift;

    XM_p = (unsigned long *)start_addr;

    //
    //Write loop
    //
    xshift = 0x00000001;
    sram_wd = 0x00;
    for (k=0; k < addr_size; k++)
    {
        XMEM_p = (unsigned long *)(start_addr + xshift);
        *XMEM_p = sram_wd++;
        xshift = xshift<<1;
    }

    //
    //Read loop
    //
    XMEM_p = XM_p;
    xshift = 0x00000001;
    sram_wd = 0x00;
    for (k=0; k < addr_size; k++)
    {
        XMEM_p = (unsigned long *)(start_addr + xshift);
        sram_rd = *XMEM_p;
       if(sram_rd != sram_wd)
       {
           return(1);
       }

       xshift = xshift<<1;
       sram_wd++;
    }
    return(0);
}

//
// mem_data_size - This function performs different data type
//                (HALFWORD/WORD) access.
/*
char
mem_data_size(Uint32 start_addr, Uint32 size_to_check)
{
    unsigned short mem_rds;
    unsigned long  mem_rdl;
    unsigned short mem_wds;
    unsigned long  mem_wdl;
    int i;


    //
    //Write data short
    //
    XMEM_ps = (unsigned short *)start_addr;
    mem_wds = 0x0605;

    for (i=0; i < 2; i++)
    {
        *XMEM_ps++ = mem_wds;
        mem_wds += 0x0202;
    }

    //
    //Write data long
    //
    XMEM_pl = (unsigned long *)XMEM_ps;
    mem_wdl = 0x0C0B0A09;
    for (i=0; i < 2; i++)
    {
        *XMEM_pl++ = mem_wdl;
        mem_wdl += 0x04040404;
    }

    //
    //Read data short
    //
    XMEM_ps = (unsigned short *)start_addr;
    mem_wds = 0x0605;
    for (i=0; i < 6; i++)
    {
        mem_rds = *XMEM_ps;
        if( mem_rds != mem_wds)
        {
            return(1);
        }
        XMEM_ps++;
        mem_wds += 0x0202;
    }

    //
    //Read data long
    //
    XMEM_pl = (unsigned long *)start_addr;
    mem_wdl = 0x08070605;
    for (i=0; i < 3; i++)
    {
        mem_rdl = *XMEM_pl;
        if(mem_rdl != mem_wdl)
        {
            return(1);
        }
        XMEM_pl++;
        mem_wdl += 0x04040404;
    }
    return(0);
}
*/

#ifdef blb
//
// Setup EMIF1 Pinmux Sync 16Bit - This function configures pins for 16bit
// Synchronous EMIF1.
//
void setupEMIF1PinmuxSync16Bit(void)
{
    uint16_t i;

    if (ExtDevData.hwdnEtherCat)
        return ; // temporary

    GPIO_setPinConfig(GPIO_22_EMIF1_RAS);
    GPIO_setPinConfig(GPIO_23_EMIF1_CAS);
    GPIO_setPinConfig(GPIO_24_EMIF1_DQM0);
    GPIO_setPinConfig(GPIO_25_EMIF1_DQM1);

    GPIO_setPinConfig(GPIO_29_EMIF1_SDCKE);
    GPIO_setPinConfig(GPIO_30_EMIF1_CLK);
    GPIO_setPinConfig(GPIO_31_EMIF1_WEN);
    GPIO_setPinConfig(GPIO_32_EMIF1_CS0N);
    GPIO_setPinConfig(GPIO_33_EMIF1_BA0);
    GPIO_setPinConfig(GPIO_34_EMIF1_BA1);
    //
       // Selecting address lines.
    //
    GPIO_setPinConfig(GPIO_36_EMIF1_A1);
    GPIO_setPinConfig(GPIO_37_EMIF1_A2);
    GPIO_setPinConfig(GPIO_38_EMIF1_A0);
    GPIO_setPinConfig(GPIO_39_EMIF1_A4);

    GPIO_setPinConfig(GPIO_41_EMIF1_A3);

    GPIO_setPinConfig(GPIO_45_EMIF1_A5);
    GPIO_setPinConfig(GPIO_46_EMIF1_A6);
    GPIO_setPinConfig(GPIO_47_EMIF1_A7);
    GPIO_setPinConfig(GPIO_48_EMIF1_A8);
    GPIO_setPinConfig(GPIO_49_EMIF1_A9);
    GPIO_setPinConfig(GPIO_50_EMIF1_A10);
    GPIO_setPinConfig(GPIO_51_EMIF1_A11);
    GPIO_setPinConfig(GPIO_52_EMIF1_A12);

    //
    // Selecting Data Lines.
    //
    GPIO_setPinConfig(GPIO_69_EMIF1_D15);
    GPIO_setPinConfig(GPIO_70_EMIF1_D14);
    GPIO_setPinConfig(GPIO_71_EMIF1_D13);
    GPIO_setPinConfig(GPIO_72_EMIF1_D12);
    GPIO_setPinConfig(GPIO_73_EMIF1_D11);
    GPIO_setPinConfig(GPIO_74_EMIF1_D10);
    GPIO_setPinConfig(GPIO_75_EMIF1_D9);
    GPIO_setPinConfig(GPIO_76_EMIF1_D8);
    GPIO_setPinConfig(GPIO_77_EMIF1_D7);
    GPIO_setPinConfig(GPIO_78_EMIF1_D6);
    GPIO_setPinConfig(GPIO_79_EMIF1_D5);
    GPIO_setPinConfig(GPIO_80_EMIF1_D4);
    GPIO_setPinConfig(GPIO_81_EMIF1_D3);
    GPIO_setPinConfig(GPIO_82_EMIF1_D2);
    GPIO_setPinConfig(GPIO_83_EMIF1_D1);
    GPIO_setPinConfig(GPIO_85_EMIF1_D0);


    for(i = 69;i <= 85;i++)
    {
        if(i != 84)
        {
            GPIO_setPadConfig(i, GPIO_PIN_TYPE_PULLUP);
            GPIO_setQualificationMode(i, GPIO_QUAL_ASYNC);
        }
    }

    for(i = 24; i <= 25; i++)
    {
        GPIO_setPadConfig(i, GPIO_PIN_TYPE_PULLUP);
        GPIO_setQualificationMode(i, GPIO_QUAL_ASYNC);
    }

}

#endif

volatile short kukustam ;

#define SDRAM_CR_SR_BIT 0x80000000U
short InitEMIF(void)
{
    short cnt ;
    EALLOW ;
    //
    // Configure to run EMIF1 on half Rate. (EMIF1CLK = CPU1SYSCLK/2)
    //
    //
    // Grab EMIF1 For CPU1.
    //
    EMIF_selectMaster(EMIF1CONFIG_BASE, EMIF_MASTER_CPU1_G);

    //
    // Disable Access Protection. (CPU_FETCH/CPU_WR/DMA_WR)
    //
    EMIF_setAccessProtection(EMIF1CONFIG_BASE, 0x0);

    //
    // Commit the configuration related to protection. Till this bit remains
    // set content of EMIF1ACCPROT0 register can't be changed.
    //
    EMIF_commitAccessConfig(EMIF1CONFIG_BASE);

    //
    // Lock the configuration so that EMIF1COMMIT register can't be changed
    // any more.
    //
    EMIF_lockAccessConfig(EMIF1CONFIG_BASE);


    // Follow procedure 12.6.2.1.1 p.1358
    // Set SR to 1
    Emif1Regs.SDRAM_CR.all = SDRAM_CR_SR_BIT + 0x4721 ;

    // Wait
    for ( cnt = 0 ; cnt < 500 ; cnt++ )
    {
        kukustam = cnt ;
    }

    // Set interface frequency to SYSCLK/2
    ClkCfgRegs.PERCLKDIVSEL.bit.EMIF1CLKDIV = 0x1;

    // Wait
    for ( cnt = 0 ; cnt < 1000 ; cnt++ )
    {
        kukustam = cnt ;
    }

    // Set SR to back to zero
    Emif1Regs.SDRAM_CR.all = 0x4721;

    // Set timing register by vendor data AS4C16M16SA-6TIN (Aliance) p.19
    Emif1Regs.SDRAM_TR.all = 0x31114610 ;

    Emif1Regs.SDR_EXT_TMNG.all = 6 ;

    // Refresh control - 8192 cycles at 64msec, CLC at 100MHz
    Emif1Regs.SDRAM_RCR.all = 0x30d ;

    // CAS  latency = 3 , 4 banks , 512 word/page
    Emif1Regs.SDRAM_CR.all = 0x4721;

    //Configure the access timing for CS2 space

    EDIS ;

    // Wait
    for ( cnt = 0 ; cnt < 500 ; cnt++ )
    {
        kukustam = cnt ;
    }

    return 0 ;
}

/*
 * From TI example project
 short sdram_test(void)
{
    char ErrCount_local;
    TEST_STATUS = TEST_FAIL;

//
    ErrCount = 0 ;

//
//Check basic RD/WR access to CS2 space
//
  ErrCount_local = mem_read_write(ASRAM_CS2_START_ADDR, ASRAM_CS2_SIZE);
  ErrCount = ErrCount + ErrCount_local;

//
//Address walk checks (Tested for Memory with address width of 16bit)
//
  ErrCount_local = mem_addr_walk(ASRAM_CS2_START_ADDR, 16);
  ErrCount = ErrCount + ErrCount_local;

//
//Data walk checks
//
  ErrCount_local = mem_data_walk(ASRAM_CS2_START_ADDR, ASRAM_CS2_SIZE);
  ErrCount = ErrCount + ErrCount_local;

//
//Data size checks
//
  ErrCount_local = mem_data_size(ASRAM_CS2_START_ADDR, 4);
  ErrCount = ErrCount + ErrCount_local;

  if (ErrCount == 0x0)
  {
      TEST_STATUS = TEST_PASS;
  }

  return TEST_STATUS ;
}
*/


