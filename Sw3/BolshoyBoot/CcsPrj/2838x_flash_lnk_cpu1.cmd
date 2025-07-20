
MEMORY
{
   /* BEGIN is used for the "boot to Flash" bootloader mode   */
   BEGIN            : origin = 0x080000, length = 0x000004
   BOOT_RSVD        : origin = 0x000002, length = 0x0001AE     /* Part of M0, BOOT rom will use this for stack */
   RAMM0            : origin = 0x0001B0, length = 0x000250
   RAMM1            : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   RAMD0            : origin = 0x00C000, length = 0x000800
   RAMD1            : origin = 0x00C800, length = 0x000800
   RAMLS0           : origin = 0x008000, length = 0x000800
   RAMLS1           : origin = 0x008800, length = 0x000800
   RAMLS2           : origin = 0x009000, length = 0x000800
   RAMLS3           : origin = 0x009800, length = 0x000800
   RAMLS4          : origin = 0x00a000, length = 0x002000
   RAMLBSS           : origin = 0x00D000, length = 0x004000
   RAMGS4           : origin = 0x011000, length = 0x001000
   RAMGS5           : origin = 0x012000, length = 0x001000
   RAMGS6           : origin = 0x013000, length = 0x001000
   RAMGS7           : origin = 0x014000, length = 0x001000
   RAMGS8           : origin = 0x015000, length = 0x001000
   RAMGS9           : origin = 0x016000, length = 0x001000
   RAMGS10          : origin = 0x017000, length = 0x001000
   RAMGS11          : origin = 0x018000, length = 0x001000

/*
   RAMGS12          : origin = 0x019000, length = 0x001000
   RAMGS13          : origin = 0x01A000, length = 0x001000
   RAMGS14          : origin = 0x01B000, length = 0x001000
   RAMGS15          : origin = 0x01C000, length = 0x001000
*/
   /* Flash sectors */
   BOOT_CODE           : origin = 0x080004, length = 0x005FFc  /* on-chip Flash */
/*
   FLASH1           : origin = 0x082000, length = 0x002000
   FLASH2           : origin = 0x084000, length = 0x002000
*/
   FLASH3           : origin = 0x086000, length = 0x002000  /* on-chip Flash */
   FLASH4           : origin = 0x088000, length = 0x008000  /* on-chip Flash */
   FLASH5           : origin = 0x090000, length = 0x008000  /* on-chip Flash */
   FLASH6           : origin = 0x098000, length = 0x008000  /* on-chip Flash */
   FLASH7           : origin = 0x0A0000, length = 0x008000  /* on-chip Flash */
   FLASH8           : origin = 0x0A8000, length = 0x008000  /* on-chip Flash */
   FLASH9           : origin = 0x0B0000, length = 0x008000  /* on-chip Flash */
   FLASH10          : origin = 0x0B8000, length = 0x002000  /* on-chip Flash */
   FLASH11          : origin = 0x0BA000, length = 0x002000  /* on-chip Flash */
   FLASH12          : origin = 0x0BC000, length = 0x002000  /* on-chip Flash */
   FLASH13          : origin = 0x0BE000, length = 0x002000  /* on-chip Flash */

   CPU1TOCPU2RAM   : origin = 0x03A000, length = 0x000800
   CPU2TOCPU1RAM   : origin = 0x03B000, length = 0x000800
   CPUTOCMRAM      : origin = 0x039000, length = 0x000800
   CMTOCPURAM      : origin = 0x038000, length = 0x000800

   CANA_MSG_RAM     : origin = 0x049000, length = 0x000800
   CANB_MSG_RAM     : origin = 0x04B000, length = 0x000800

   CLA1_MSGRAMLOW   : origin = 0x001480,   length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500,   length = 0x000080

   RESET            : origin = 0x3FFFC0, length = 0x000002

PAGE 1 :   /* Data Memory */
   BootRam			: origin = 0x011000, length = 0x004000
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

 	#define _BootEntryFromProgram BootEntryFromProgram
 	#define _DataRamLastAddr DataRamLastAddr
 	#define _DataRamStartAddr DataRamStartAddr
 	#define _TiRamfuncsLoadEnd TiRamfuncsLoadEnd
 	#define _TiRamfuncsLoadStart TiRamfuncsLoadStart
 	#define _TiRamfuncsRunStart TiRamfuncsRunStart


 	#define _Cla1BssEndAddr Cla1BssEndAddr
	 #define _Cla1BssStartAddr         Cla1BssStartAddr
	 #define _ClaProgRamfuncsLoadEnd   ClaProgRamfuncsLoadEnd
	 #define _ClaProgRamfuncsLoadStart ClaProgRamfuncsLoadStart
	 #define _ClaProgRamfuncsRunStart  ClaProgRamfuncsRunStart
	 #define _ClaRamVarsLoadEnd        ClaRamVarsLoadEnd
	 #define _ClaRamVarsLoadStart      ClaRamVarsLoadStart
	 #define _ClaRamVarsRunStart       ClaRamVarsRunStart
	 #define _ClaRamfuncsLoadEnd       ClaRamfuncsLoadEnd
	 #define _ClaRamfuncsLoadStart     ClaRamfuncsLoadStart
	 #define _ClaRamfuncsRunStart      ClaRamfuncsRunStart

	#define _AppFirmawareCs AppFirmawareCs
	#define	_AppFirmawareEnd	AppFirmawareEnd
	#define _AppFirmawareStart	AppFirmawareStart
	#define _OperEntryPointX OperEntryPointX
#endif


SECTIONS
{
   codestart           : > BEGIN, ALIGN(4)
   .text               : >> BOOT_CODE, ALIGN(4)
//  .text               : >> FLASH1 | FLASH2 | FLASH3 | FLASH4, ALIGN(4)
   .cinit              : > BOOT_CODE, ALIGN(4)
   .switch             : > BOOT_CODE, ALIGN(4)
   .reset              : > RESET, TYPE = DSECT /* not used, */
   .stack              : > RAMM1

#if defined(__TI_EABI__)
   .init_array      : > BOOT_CODE, ALIGN(4)
   .bss             : > RAMLBSS
   	START(DataRamStartAddr) ,
   	END (DataRamLastAddr)
//   .bss:output      : > RAMLS3
//   .bss:cio         : > RAMLBSS
   .data            : > RAMLBSS
   .sysmem          : > RAMLBSS
//   .statistics		: > RAMLBSS
   /* Initalized sections go in Flash */
   .const           : > BOOT_CODE, ALIGN(4)

	.TI.ramfunc : { -l F2838x_C28x_FlashAPI.lib (.text)}

    LOAD = BOOT_CODE  PAGE = 0,
	 RUN = BootRam     PAGE = 1,
	 LOAD_START(_TiRamfuncsLoadStart),
	 LOAD_END(_TiRamfuncsLoadEnd),
	 RUN_START(_TiRamfuncsRunStart),
	 RUN_SIZE(_TiRamfuncsRunSize),
	 RUN_END(_TiRamfuncsRunEnd),
	 ALIGN(8)




#else
   .pinit           : > FLASH1, ALIGN(4)
   .ebss            : > RAMLBSS
   .esysmem         : > RAMLBSS
   .cio             : > RAMLBSS
   /* Initalized sections go in Flash */
   .econst          : >> BOOT_CODE, ALIGN(4)
#endif

/*
   ramgs0 : > RAMGS0, type=NOINIT
   ramgs1 : > RAMGS1, type=NOINIT
*/
   MSGRAM_CPU1_TO_CPU2 : > CPU1TOCPU2RAM, type=NOINIT
   MSGRAM_CPU2_TO_CPU1 : > CPU2TOCPU1RAM, type=NOINIT
   MSGRAM_CPU_TO_CM    : > CPUTOCMRAM, type=NOINIT
   MSGRAM_CM_TO_CPU    : > CMTOCPURAM, type=NOINIT

   Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW, type=NOINIT
   CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH, type=NOINIT


}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
