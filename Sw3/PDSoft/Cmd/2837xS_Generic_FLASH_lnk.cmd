CLA_SCRATCHPAD_SIZE = 0x100;
--undef_sym=__cla_scratchpad_end
--undef_sym=__cla_scratchpad_start

MEMORY
{
PAGE 0 :  /* Program Memory */
          /* Memory (RAM/FLASH) blocks can be moved to PAGE1 for data allocation */
          /* BEGIN is used for the "boot to Flash" bootloader mode   */

   BEGIN           	: origin = 0x084000, length = 0x000002
   RAMM0           	: origin = 0x000122, length = 0x0002DE
   RAMD0           	: origin = 0x00B000, length = 0x000800

/*
Yahali fix: merge 3 physical RAM sectors, so that the flash library can fit in
*/
    RAMLS0          	: origin = 0x008000, length = 0x000800
	RAMLS1          	: origin = 0x008800, length = 0x000800
/*   RAMLS2      		: origin = 0x009000, length = 0x000800
    RAMLS3      		: origin = 0x009800, length = 0x000800*/
    RAMLS2_3      		: origin = 0x009000, length = 0x001000
   RAMLS4_5      		: origin = 0x00A000, length = 0x001000
  //RAMLS5      : origin = 0x00A800, length = 0x000800
  RESET           	: origin = 0x3FFFC0, length = 0x000002
   
   /* Flash sectors */
   FLASHA           : origin = 0x080002, length = 0x001FFE	/* on-chip Flash */
   FLASHB           : origin = 0x082000, length = 0x002000	/* on-chip Flash */
   FLASHC           : origin = 0x084002, length = 0x00BFFE	/* on-chip Flash */
   	/*FLASHD           : origin = 0x086000, length = 0x002000 on-chip Flash */
   /* FLASHE           : origin = 0x088000, length = 0x008000	on-chip Flash */
   FLASHF           : origin = 0x090000, length = 0x008000	/* on-chip Flash */
   FLASHG           : origin = 0x098000, length = 0x008000	/* on-chip Flash */
   FLASHH           : origin = 0x0A0000, length = 0x008000	/* on-chip Flash */
   FLASHI           : origin = 0x0A8000, length = 0x008000	/* on-chip Flash */
   FLASHJ           : origin = 0x0B0000, length = 0x008000	/* on-chip Flash */
   FLASHK           : origin = 0x0B8000, length = 0x002000	/* on-chip Flash */
   FLASHL           : origin = 0x0BA000, length = 0x002000	/* on-chip Flash */
   FLASHM           : origin = 0x0BC000, length = 0x002000	/* on-chip Flash */
   FLASHN           : origin = 0x0BE000, length = 0x002000	/* on-chip Flash */   

PAGE 1 : /* Data Memory */
         /* Memory (RAM/FLASH) blocks can be moved to PAGE0 for program allocation */

   BOOT_RSVD       : origin = 0x000002, length = 0x000120     /* Part of M0, BOOT rom will use this for stack */
   RAMM1           : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   RAMD1           : origin = 0x00B800, length = 0x000800


   RAMGS0      : origin = 0x00C000, length = 0x001000
   RAMGS1      : origin = 0x00D000, length = 0x001000
   RAMGS2      : origin = 0x00E000, length = 0x001000
   RAMGS3      : origin = 0x00F000, length = 0x001000
   RAMGS4      : origin = 0x010000, length = 0x007000
   /*RAMGS5      : origin = 0x011000, length = 0x001000
   RAMGS6      : origin = 0x012000, length = 0x001000
   RAMGS7      : origin = 0x013000, length = 0x001000
   RAMGS8      : origin = 0x014000, length = 0x001000
   RAMGS9      : origin = 0x015000, length = 0x001000
   RAMGS10     : origin = 0x016000, length = 0x001000*/
   RAMGS11     : origin = 0x017000, length = 0x001000

   //CLA1_MSGR_L : origin = 0x001480, length = 0x000080	  /* 128W data memory between CLA & CPU28x*/
   //CLA1_MSGR_H : origin = 0x001500, length = 0x000080	  /* 128W data memory between CLA & CPU28x*/
   CLA1_MSGRAMLOW   : origin = 0x001480,   length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500,   length = 0x000080

}



SECTIONS
{
   /* Allocate program areas: */
   .cinit              : > FLASHC      PAGE = 0, ALIGN(4)
   .pinit              : > FLASHC,     PAGE = 0, ALIGN(4)
   .text               : >> FLASHC     PAGE = 0, ALIGN(4)
   .SectN              : > FLASHN      PAGE = 0, ALIGN(4)
   codestart           : > BEGIN       PAGE = 0, ALIGN(4)

   /* Yahali: ramfuncs must be in first flash sector, otherwise flash handlers crash!!! */


   /* Bug fix: The entire Flash library must be loaded to RAM
   */
           GROUP
        {
            .TI.ramfunc
            { -l ..\TiSoft\Libs\F021_API_F2837xS_FPU32.lib(.text)}

        } LOAD = FLASHC, RUN = RAMLS2_3  ,
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_SIZE(_RamfuncsLoadSize),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         RUN_SIZE(_RamfuncsRunSize),
                         RUN_END(_RamfuncsRunEnd),
                         PAGE = 0, ALIGN(4)
/*
   ramgs0 : > RAMGS0, type=NOINIT
   ramgs1 : > RAMGS1, type=NOINIT
*/


    /* CLA specific sections */
   Cla1Prog         :   LOAD = FLASHC,
                        RUN = RAMLS4_5,
                        LOAD_START(_Cla1funcsLoadStart),
                        LOAD_END(_Cla1funcsLoadEnd),
                        RUN_START(_Cla1funcsRunStart),
                        LOAD_SIZE(_Cla1funcsLoadSize),
                        ALIGN(8)

   CLADataLS0       : > RAMLS0
   CLADataLS1       : > RAMLS1

   Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW, type=NOINIT
   CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH, type=NOINIT
   Cla1DataRam      : >> RAMLS0 | RAMLS1

   CLAscratch       :
                     { *.obj(CLAscratch)
                     . += CLA_SCRATCHPAD_SIZE;
                     *.obj(CLAscratch_end) } >  RAMLS1

   .scratchpad      : > RAMLS1
   .bss_cla		    : > RAMLS1
   .const_cla	    : > RAMLS1

   /*
   ramfuncs            : LOAD = FLASHC,
                         RUN = RAMLS0 | RAMLS1 | RAMLS2 |RAMLS3,
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_SIZE(_RamfuncsLoadSize),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         RUN_SIZE(_RamfuncsRunSize),
                         RUN_END(_RamfuncsRunEnd),
                         PAGE = 0, ALIGN(4)
	*/


						 
   /* Allocate uninitalized data sections: */
   .stack              : > RAMM1        PAGE = 1
   .ebss               : >> RAMGS0 | RAMGS1 | RAMGS2 |  RAMGS3 |  RAMGS4    PAGE = 1
   /*.esysmem            : > RAMLS5       PAGE = 1 */
   .esysmem			 : > RAMGS11,        PAGE = 1
   .cio              : > RAMGS11,        PAGE = 1

   /* Initalized sections go in Flash */
   .econst             : >> FLASHF     PAGE = 0, ALIGN(4)
   .switch             : > FLASHC      PAGE = 0, ALIGN(4)
   
   .reset              : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */


   // Must be allocated to memory the CLA has write access to
   //

/*

   Cla1Code		       : LOAD = DataFlash,
                         RUN = RAMLS4,
                         LOAD_START(_ClaRamfuncsLoadStart),
                         LOAD_END(_ClaRamfuncsLoadEnd),
                         RUN_START(_ClaRamfuncsRunStart),
                         PAGE = 0

   Cla1Bss		   	   :  RUN  = RAMLS5 ,
   						RUN_START(_Cla1BssStartAddr),
   						RUN_END(_Cla1BssEndAddr),
   						PAGE = 0



#ifdef __TI_COMPILER_VERSION
   #if __TI_COMPILER_VERSION >= 15009000
    .TI.ramfunc : {} LOAD = FLASHD,
                         RUN = RAMLS0 | RAMLS1 | RAMLS2 |RAMLS3,
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_SIZE(_RamfuncsLoadSize),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         RUN_SIZE(_RamfuncsRunSize),
                         RUN_END(_RamfuncsRunEnd),
                         PAGE = 0, ALIGN(4)
   #endif
#endif
*/

/*
   ramgs0           : > RAMGS0,    PAGE = 1
   ramgs1           : > RAMGS1,    PAGE = 1
*/
   /* The following section definitions are for SDFM examples
   Filter1_RegsFile : > RAMGS1,	PAGE = 1, fill=0x1111
   Filter2_RegsFile : > RAMGS2,	PAGE = 1, fill=0x2222
   Filter3_RegsFile : > RAMGS3,	PAGE = 1, fill=0x3333
   Filter4_RegsFile : > RAMGS4,	PAGE = 1, fill=0x4444
   Difference_RegsFile : >RAMGS5, 	PAGE = 1, fill=0x3333 */
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
