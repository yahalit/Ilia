CLA_SCRATCHPAD_SIZE = 0x200;
--undef_sym=__cla_scratchpad_end
--undef_sym=__cla_scratchpad_start

MEMORY
{
   /* BEGIN is used for the "boot to Flash" bootloader mode   */
   BEGIN            : origin = 0x086000, length = 0x000004
   BOOT_RSVD        : origin = 0x000002, length = 0x0001AE     /* Part of M0, BOOT rom will use this for stack */
   RAMM0            : origin = 0x0001B0, length = 0x000250
   RAMM1            : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   //RAMD0            : origin = 0x00C000, length = 0x000800
   //RAMD1            : origin = 0x00C800, length = 0x000800
   RAMLS0           : origin = 0x008000, length = 0x000800
   RAMLS1           : origin = 0x008800, length = 0x000800
   RAMLS2           : origin = 0x009000, length = 0x000800
   RAMLS3           : origin = 0x009800, length = 0x000800
   RAMLS4            : origin = 0x00a000, length = 0x001000
   //RAMLS5            : origin = 0x00a800, length = 0x000800
   RAMLBSS           : origin = 0x00b000, length = 0x007000
   //RAMGS4           : origin = 0x011000, length = 0x001000
   //RAMGS5           : origin = 0x012000, length = 0x001000
   //RAMGS6           : origin = 0x013000, length = 0x001000
   //RAMGS7           : origin = 0x014000, length = 0x001000
/* The memories GS8 to GS15 belong to CPU2
   RAMGS8           : origin = 0x015000, length = 0x001000
   RAMGS9           : origin = 0x016000, length = 0x001000
   RAMGS10          : origin = 0x017000, length = 0x001000
   RAMGS11          : origin = 0x018000, length = 0x001000


   RAMGS12          : origin = 0x019000, length = 0x001000
   RAMGS13          : origin = 0x01A000, length = 0x001000
   RAMGS14          : origin = 0x01B000, length = 0x001000
   RAMGS15          : origin = 0x01C000, length = 0x001000
*/
   /* Flash sectors */
   MAIN_CODE           : origin = 0x086004, length = 0x035FFc  /* on-chip Flash */
/*
   FLASH1           : origin = 0x082000, length = 0x002000
   FLASH2           : origin = 0x084000, length = 0x002000

   FLASH3           : origin = 0x086004, length = 0x001ffc
   FLASH4           : origin = 0x088000, length = 0x008000
   FLASH5           : origin = 0x090000, length = 0x008000
   FLASH6           : origin = 0x098000, length = 0x008000
   FLASH7           : origin = 0x0A0000, length = 0x008000
   FLASH8           : origin = 0x0A8000, length = 0x008000
   FLASH9           : origin = 0x0B0000, length = 0x008000
   FLASH10          : origin = 0x0B8000, length = 0x002000
   FLASH11          : origin = 0x0BA000, length = 0x002000
*/
   FLASH12          : origin = 0x0BC000, length = 0x002000  /* on-chip Flash */
   FLASH13          : origin = 0x0BE000, length = 0x000010  /* on-chip Flash */
   FLASH13p1		: origin = 0x0BE010, length = 0x0000f0
   FLASH13p2		: origin = 0x0BE100, length = 0x001f00

   CPU1TOCPU2RAM   : origin = 0x03A000, length = 0x000800
   CPU2TOCPU1RAM   : origin = 0x03B000, length = 0x000800
   CPUTOCMRAM      : origin = 0x039000, length = 0x000800
   CMTOCPURAM      : origin = 0x038000, length = 0x000800

   CANA_MSG_RAM     : origin = 0x049000, length = 0x000800
   CANB_MSG_RAM     : origin = 0x04B000, length = 0x000800

   RESET            : origin = 0x3FFFC0, length = 0x000002

   CLA1_MSGRAMLOW   : origin = 0x001480,   length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500,   length = 0x000080

   //EMIF1_CS0n      : origin = 0x80000000, length = 0x1000000  // SDRAM EMIF address space
   EMIF1_CS0n      : origin = 0x80000000, length = 0x800000  // SDRAM EMIF address space
   EMIF1_CS0nS     : origin = 0x80800000, length = 0x800000  // SDRAM EMIF address space
//PAGE 1 :   /* Data Memory */
   BootRam			: origin = 0x013000, length = 0x002000
}


/* Allocate sections to memory blocks.
   Note:
         codestart user defined section in DSP28_CodeStartBranch.asm used to redirect code
                   execution when booting to flash
         ramfuncs  user defined section to store functions that will be copied from Flash into RAM
*/
#ifdef __TI_EABI__
// ATTENTION:
//	for EABI MUST define all Def* parameters structures with
//		  __attribute__((noblocked))
// 		Otherwise link may fail dur  to blocking !!!!!.


 	#define _FLTOC_start  FLTOC_start
 	#define _FLLADR_start FLLADR_start


#endif


SECTIONS
{
   codestart           : > BEGIN, ALIGN(4)
   .text               : >> MAIN_CODE, ALIGN(4)
   .cinit              : > MAIN_CODE, ALIGN(4)
   .switch             : > MAIN_CODE, ALIGN(4)
   .reset              : > RESET, TYPE = DSECT /* not used, */
   .stack              : > RAMM1

   .SectM              : > FLASH12      PAGE = 0, ALIGN(4)
   .SectN              : > FLASH13      PAGE = 0, ALIGN(4)
   .SecTab				: > FLASH13p2 	PAGE = 0, ALIGN(4)


   .init_array      : > MAIN_CODE, ALIGN(4)
   .bss             : > RAMLBSS
   	START(DataRamStartAddr) ,
   	END (DataRamLastAddr)
//   .bss:output      : > RAMLS3
//   .bss:cio         : > RAMLBSS
   .data            : > RAMLBSS
   .sysmem          : > RAMLBSS
   /* Initalized sections go in Flash */
   .const           : > MAIN_CODE, ALIGN(4)

	.TI.ramfunc : { -l F2838x_C28x_FlashAPI.lib (.text)}

    LOAD = MAIN_CODE  PAGE = 0,
	 RUN = BootRam     PAGE = 0,
	 LOAD_START(TiRamfuncsLoadStart),
	 LOAD_END(TiRamfuncsLoadEnd),
	 RUN_START(TiRamfuncsRunStart),
	 RUN_SIZE(TiRamfuncsRunSize),
	 RUN_END(TiRamfuncsRunEnd),
	 ALIGN(8)


/*
   ramgs0 : > RAMGS0, type=NOINIT
   ramgs1 : > RAMGS1, type=NOINIT
*/
   MSGRAM_CPU1_TO_CPU2 : > CPU1TOCPU2RAM, type=NOINIT
   MSGRAM_CPU2_TO_CPU1 : > CPU2TOCPU1RAM, type=NOINIT
   MSGRAM_CPU_TO_CM    : > CPUTOCMRAM, type=NOINIT
   MSGRAM_CM_TO_CPU    : > CMTOCPURAM, type=NOINIT

    /* CLA specific sections */
   Cla1Prog         :   LOAD = MAIN_CODE,
                        RUN = RAMLS4   ,
                        LOAD_START(Cla1funcsLoadStart),
                        LOAD_END(Cla1funcsLoadEnd),
                        RUN_START(Cla1funcsRunStart),
                        LOAD_SIZE(Cla1funcsLoadSize),
                        ALIGN(8)

   //CLADataLS0       : > RAMLS0
   //CLADataLS1       : > RAMLS1

   Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW, type=NOINIT
   CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH, type=NOINIT
   Cla1DataRam      : >> RAMLS0 | RAMLS1

   /* CLA C compiler sections */
   //
   // Must be allocated to memory the CLA has write access to
   //
   CLAscratch       :
                     { *.obj(CLAscratch)
                     . += CLA_SCRATCHPAD_SIZE;
                     *.obj(CLAscratch_end) } >  RAMLS1

   .scratchpad      : > RAMLS1
   .bss_cla		    : > RAMLS1
   .const_cla	    : > RAMLS1

	.farbss          : > EMIF1_CS0n
	.farbssS         : > EMIF1_CS0nS

}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
