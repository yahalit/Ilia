MEMORY
{
   BEGIN            : origin = 0x00083000, length = 0x00000002
   BOOT_RSVD        : origin = 0x00000002, length = 0x00000126

   RAMM0            : origin = 0x00000128, length = 0x000002D8 /* This memory is UNUSED! */
   RAMM1            : origin = 0x00000400, length = 0x000003F8
   // RAMM1_RSVD       : origin = 0x000007F8, length = 0x00000008 /* Reserve and do not use for code as per the errata advisory "Memory: Prefetching Beyond Valid Memory" */

   //RAMLS0           : origin = 0x00008000, length = 0x00000800
   //RAMLS1           : origin = 0x00008800, length = 0x00000800
   //RAMLS2           : origin = 0x00009000, length = 0x00000800

   RAMCLAPROG         : origin = 0x00008000, length = 0x00001000 // LS0 combined with LS1
   RAMCLADATA		  : origin = 0x00009000, length = 0x00000800 // LS2


   RAMLSNonCla        : origin = 0x00009800, length = 0x00002800
   //RAMLS3           : origin = 0x00009800, length = 0x00000800
   //RAMLS4          : origin = 0x0000A000, length = 0x00002000
   //RAMLS5           : origin = 0x0000A800, length = 0x00000800
   //RAMLS6           : origin = 0x0000B000, length = 0x00000800
   //RAMLS7           : origin = 0x0000B800, length = 0x00000800

   RAMGS0to3        : origin = 0x0000C000, length = 0x00003ff8
   //RAMGS1           : origin = 0x0000D000, length = 0x00001000
   //RAMGS2           : origin = 0x0000E000, length = 0x00001000
   //RAMGS3           : origin = 0x0000F000, length = 0x00000FF8
   // RAMGS3_RSVD      : origin = 0x0000FFF8, length = 0x00000008 /* Reserve and do not use for code as per the errata advisory "Memory: Prefetching Beyond Valid Memory" */

   BOOTROM          : origin = 0x003F8000, length = 0x00007FC0
   SECURE_ROM       : origin = 0x003F2000, length = 0x00006000

   RESET            : origin = 0x003FFFC0, length = 0x00000002

   /* Flash sectors */
   /* BANK 0 */
   FLASH_BANK0_SEC0  : origin = 0x083002, length = 0x000FFE
   FLASH_BANK0_SEC1  : origin = 0x084000, length = 0x001000
   FLASH_BANK0_SEC4AndNext  : origin = 0x085000, length = 0x00b000
 
   /* BANK 1 */
   FLASH_BANK1_SEC0  : origin = 0x090000, length = 0x001000
   FLASH_BANK1_SEC1  : origin = 0x091000, length = 0x001000
   FLASH_BANK1_SEC2  : origin = 0x092000, length = 0x001000
   FLASH_BANK1_SEC3  : origin = 0x093000, length = 0x001000
   FLASH_BANK1_SEC4  : origin = 0x094000, length = 0x001000
   FLASH_BANK1_SEC5  : origin = 0x095000, length = 0x001000
   FLASH_BANK1_SEC6  : origin = 0x096000, length = 0x001000
   FLASH_BANK1_SEC7  : origin = 0x097000, length = 0x001000
   FLASH_BANK1_SEC8  : origin = 0x098000, length = 0x001000
   FLASH_BANK1_SEC9  : origin = 0x099000, length = 0x001000
   FLASH_BANK1_SEC10 : origin = 0x09A000, length = 0x001000
   FLASH_BANK1_SEC11 : origin = 0x09B000, length = 0x001000
   FLASH_BANK1_SEC12a : origin = 0x09C000, length = 0x00400 // Parameters
   FLASH_BANK1_SEC12b : origin = 0x09C400, length = 0x00c00
   FLASH_BANK1_SEC13a : origin = 0x09D000, length = 0x0100 // Identity
   FLASH_BANK1_SEC13b : origin = 0x09D100, length = 0x00f00
   FLASH_BANK1_SEC14a : origin = 0x09E000, length = 0x00100  // Calibration
   FLASH_BANK1_SEC14b : origin = 0x09E100, length = 0x00f00
   FLASH_BANK1_SEC15a : origin = 0x09F000, length = 0x0004 // Code statistics
   FLASH_BANK1_SEC15b : origin = 0x09F004, length = 0x00ffc


// FLASH_BANK0_SEC15_RSVD     : origin = 0x0AFFF0, length = 0x000010  /* Reserve and do not use for code as per the errata advisory "Memory: Prefetching Beyond Valid Memory" */
   CLA1_MSGRAMLOW   : origin = 0x001480, length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500, length = 0x000080

}


SECTIONS
{
   codestart        : > BEGIN, ALIGN(8)
   .text            : > FLASH_BANK0_SEC4AndNext,   ALIGN(8)
   .cinit           : > FLASH_BANK0_SEC0,  ALIGN(8)
   .switch          : > FLASH_BANK0_SEC0,  ALIGN(8)
   .reset           : > RESET,                  TYPE = DSECT /* not used, */

   .stack           : > RAMM1

#if defined(__TI_EABI__)
   .init_array      : > FLASH_BANK0_SEC0,  ALIGN(8)
   .bss             : > RAMLSNonCla
   .bss:output      : > RAMLSNonCla // RAMLS1
   .bss:cio         : > RAMLSNonCla //RAMLS0
   .data            : > RAMLSNonCla
   .sysmem          : > RAMLSNonCla
   .const           : > FLASH_BANK0_SEC0,  ALIGN(8)
#else
   .pinit           : > FLASH_BANK0_SEC0,  ALIGN(8)
   .ebss            : > RAMLSNonCla
   .esysmem         : > RAMLSNonCla
   .cio             : > RAMLSNonCla // RAMLS0
   .econst          : > FLASH_BANK0_SEC0,  ALIGN(8)
#endif

	.statistics		: > FLASH_BANK1_SEC15a,  ALIGN(8)
	.identity		: > FLASH_BANK1_SEC14a,  ALIGN(8)

#if defined(__TI_EABI__)
    /* CLA specific sections */
    Cla1Prog        : LOAD = FLASH_BANK0_SEC1,
                      RUN = RAMCLAPROG,
                      LOAD_START(Cla1ProgLoadStart),
                      RUN_START(Cla1ProgRunStart),
                      LOAD_SIZE(Cla1ProgLoadSize),
                      ALIGN(4)
#else
    /* CLA specific sections */
    Cla1Prog        : LOAD = FLASH_BANK0_SEC1,
                      RUN = RAMCLAPROG,
                      LOAD_START(_Cla1ProgLoadStart),
                      RUN_START(_Cla1ProgRunStart),
                      LOAD_SIZE(_Cla1ProgLoadSize),
                      ALIGN(4)
#endif


    Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW
    CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH


   Cla1Prog         : > RAMCLAPROG
   .scratchpad      : > RAMCLADATA
   .bss_cla         : > RAMCLADATA

   Cla1DataRam      : > RAMCLADATA // RAMLS2
   cla_shared       : > RAMCLADATA
   CLADataLS1       : > RAMCLADATA

#if defined(__TI_EABI__)
   .const_cla      : LOAD = FLASH_BANK0_SEC1,
                      RUN = RAMCLADATA,
                      RUN_START(Cla1ConstRunStart),
                      LOAD_START(Cla1ConstLoadStart),
                      LOAD_SIZE(Cla1ConstLoadSize),
                      ALIGN(4)
#else
   .const_cla      : LOAD = FLASH_BANK0_SEC1,
                      RUN = RAMCLADATA,
                      RUN_START(_Cla1ConstRunStart),
                      LOAD_START(_Cla1ConstLoadStart),
                      LOAD_SIZE(_Cla1ConstLoadSize),
                      ALIGN(4)
#endif


    ramgs0to3 : > RAMGS0to3
    //ramgs1 : > RAMGS0

    /*  Allocate IQ math areas: */
   IQmath           : > FLASH_BANK0_SEC0, ALIGN(8)
   IQmathTables     : > FLASH_BANK0_SEC0, ALIGN(8)

//   .TI.ramfunc      : LOAD = FLASH_BANK0_SEC0,
     .TI.ramfunc      :{ -lFAPI_F28003x_EABI_v1.58.01.lib (.text) }
     				  LOAD = FLASH_BANK0_SEC4AndNext,
                      RUN = RAMLSNonCla, // RAMLS0,
                      LOAD_START(RamfuncsLoadStart),
                      LOAD_SIZE(RamfuncsLoadSize),
                      LOAD_END(RamfuncsLoadEnd),
                      RUN_START(RamfuncsRunStart),
                      RUN_SIZE(RamfuncsRunSize),
                      RUN_END(RamfuncsRunEnd),
                      ALIGN(8)


}

SECTIONS
{
//	dmaBuf_data			  : > RAMGS0
}
