;***************************************************************
;* TMS320x280xx Control Law Accelerator G3 C/C++ Codegen                               PC v20.2.4.LTS *
;* Date/Time created: Sun Mar 13 23:53:33 2022                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320x280xx Control Law Accelerator G3 C/C++ Codegen PC v20.2.4.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\HolyShit\Sw1p5\BolshoyManipCpu2\CPU2")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("EncRsltBuf")
	.dwattr $C$DW$1, DW_AT_linkage_name("EncRsltBuf")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x73)
	.dwattr $C$DW$1, DW_AT_decl_column(0x19)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("ClaInput")
	.dwattr $C$DW$2, DW_AT_linkage_name("ClaInput")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x75)
	.dwattr $C$DW$2, DW_AT_decl_column(0x21)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("ClaState")
	.dwattr $C$DW$3, DW_AT_linkage_name("ClaState")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x76)
	.dwattr $C$DW$3, DW_AT_decl_column(0x2a)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("AdcaResultRegs")
	.dwattr $C$DW$4, DW_AT_linkage_name("AdcaResultRegs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x410)
	.dwattr $C$DW$4, DW_AT_decl_column(0x28)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("AdcbResultRegs")
	.dwattr $C$DW$5, DW_AT_linkage_name("AdcbResultRegs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x411)
	.dwattr $C$DW$5, DW_AT_decl_column(0x28)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("AdccResultRegs")
	.dwattr $C$DW$6, DW_AT_linkage_name("AdccResultRegs")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x412)
	.dwattr $C$DW$6, DW_AT_decl_column(0x28)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("ECap6Regs")
	.dwattr $C$DW$7, DW_AT_linkage_name("ECap6Regs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x129)
	.dwattr $C$DW$7, DW_AT_decl_column(0x22)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("EQep1Regs")
	.dwattr $C$DW$8, DW_AT_linkage_name("EQep1Regs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x132)
	.dwattr $C$DW$8, DW_AT_decl_column(0x22)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("EQep2Regs")
	.dwattr $C$DW$9, DW_AT_linkage_name("EQep2Regs")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x133)
	.dwattr $C$DW$9, DW_AT_decl_column(0x22)

;	C:\ti\ccs1030\ccs\tools\compiler\ti-cgt-c2000_20.2.4.LTS\bin\aciacla.exe -@C:\\Users\\YAHALI~1.COM\\AppData\\Local\\Temp\\{5713B4A0-7EC1-472E-B6BC-366347DEF1AA} 
	.sect	"Cla1Prog:Cla1Task1"
	.align	 2
	.clink
__claCla1Task1_sp	.usect	".scratchpad:Cla1Prog:Cla1Task1",34,0,1
	.global	Cla1Task1

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("Cla1Task1")
	.dwattr $C$DW$10, DW_AT_low_pc(Cla1Task1)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("Cla1Task1")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$10, DW_AT_decl_line(0x18)
	.dwattr $C$DW$10, DW_AT_decl_column(0x12)
	.dwattr $C$DW$10, DW_AT_TI_interrupt
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-34)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 25,column 1,is_stmt,address Cla1Task1,isa 0

	.dwfde $C$DW$CIE, Cla1Task1

;***************************************************************
;* FNAME: Cla1Task1                     FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           34 Auto,  0 SOE     *
;***************************************************************

Cla1Task1:
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("newT")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr __claCla1Task1_sp+0]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("lTemp1")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr __claCla1Task1_sp+2]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("lTemp2")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr __claCla1Task1_sp+4]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("useclapse")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr __claCla1Task1_sp+6]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("state")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr __claCla1Task1_sp+8]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("tlatL")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr __claCla1Task1_sp+10]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("tlatR")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr __claCla1Task1_sp+12]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("pdelta")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr __claCla1Task1_sp+14]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("tdelta")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr __claCla1Task1_sp+16]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("maxspeed")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr __claCla1Task1_sp+18]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("newpR")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr __claCla1Task1_sp+20]

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("newpL")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr __claCla1Task1_sp+22]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("tempL")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr __claCla1Task1_sp+24]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("tempT")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr __claCla1Task1_sp+26]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("dist")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr __claCla1Task1_sp+28]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("distN")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr __claCla1Task1_sp+30]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("InvVpot")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr __claCla1Task1_sp+32]

	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 32,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |32| 
        MMOV32    MR0,@ClaState         ; [CPU_FPU] |32| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |32| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |32| 
        MMOV32    @ClaState,MR0         ; [CPU_FPU] |32| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 34,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcaResultRegs  ; [CPU_FPU] |34| 
        MMOV32    @ClaState+2,MR0       ; [CPU_FPU] |34| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 35,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcaResultRegs+1 ; [CPU_FPU] |35| 
        MMOV32    @ClaState+4,MR0       ; [CPU_FPU] |35| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 36,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcaResultRegs+2 ; [CPU_FPU] |36| 
        MMOV32    @ClaState+6,MR0       ; [CPU_FPU] |36| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 37,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcaResultRegs+3 ; [CPU_FPU] |37| 
        MMOV32    @ClaState+8,MR0       ; [CPU_FPU] |37| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 38,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcbResultRegs  ; [CPU_FPU] |38| 
        MMOV32    @ClaState+14,MR0      ; [CPU_FPU] |38| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 39,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcbResultRegs+1 ; [CPU_FPU] |39| 
        MMOV32    @ClaState+16,MR0      ; [CPU_FPU] |39| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 40,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcbResultRegs+2 ; [CPU_FPU] |40| 
        MMOV32    @ClaState+18,MR0      ; [CPU_FPU] |40| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 41,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcbResultRegs+3 ; [CPU_FPU] |41| 
        MMOV32    @ClaState+20,MR0      ; [CPU_FPU] |41| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 42,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcbResultRegs+4 ; [CPU_FPU] |42| 
        MMOV32    @ClaState+22,MR0      ; [CPU_FPU] |42| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 43,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdcbResultRegs+5 ; [CPU_FPU] |43| 
        MMOV32    @ClaState+24,MR0      ; [CPU_FPU] |43| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 45,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdccResultRegs  ; [CPU_FPU] |45| 
        MMOV32    @ClaState+26,MR0      ; [CPU_FPU] |45| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 46,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdccResultRegs+1 ; [CPU_FPU] |46| 
        MMOV32    @ClaState+28,MR0      ; [CPU_FPU] |46| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 47,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdccResultRegs+2 ; [CPU_FPU] |47| 
        MMOV32    @ClaState+30,MR0      ; [CPU_FPU] |47| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 48,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdccResultRegs+3 ; [CPU_FPU] |48| 
        MMOV32    @ClaState+10,MR0      ; [CPU_FPU] |48| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 49,column 5,is_stmt,isa 0
        MUI16TOF32 MR0,@AdccResultRegs+4 ; [CPU_FPU] |49| 
        MMOV32    @ClaState+12,MR0      ; [CPU_FPU] |49| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 52,column 5,is_stmt,isa 0
        MMOV32    MR0,@ECap6Regs        ; [CPU_FPU] |52| 
        MMOV32    @__claCla1Task1_sp+0,MR0 ; [CPU_FPU] |52| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 53,column 5,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+0 ; [CPU_FPU] |53| 
        MMOV32    MR0,@ClaState+64      ; [CPU_FPU] |53| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |53| 
        MMOVIZ    MR1,#15267            ; [CPU_FPU] |53| 
        MUI32TOF32 MR0,MR0              ; [CPU_FPU] |53| 
        MMOVXI    MR1,#55050            ; [CPU_FPU] |53| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |53| 
        MF32TOUI32 MR0,MR0              ; [CPU_FPU] |53| 
        MMOV32    @__claCla1Task1_sp+6,MR0 ; [CPU_FPU] |53| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 55,column 5,is_stmt,isa 0
        MUI32TOF32 MR1,@__claCla1Task1_sp+6 ; [CPU_FPU] |55| 
        MMPYF32   MR1,MR1,#17224        ; [CPU_FPU] |55| 
        MF32TOUI32 MR1,MR1              ; [CPU_FPU] |55| 
        MMOV32    MR0,@ClaState+64      ; [CPU_FPU] |55| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |55| 
        MMOV32    @__claCla1Task1_sp+24,MR0 ; [CPU_FPU] |55| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 56,column 5,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+6 ; [CPU_FPU] |56| 
        MMOV32    MR0,@ClaState+66      ; [CPU_FPU] |56| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |56| 
        MMOV32    @__claCla1Task1_sp+26,MR0 ; [CPU_FPU] |56| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 57,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |57| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |57| 
        MMOV32    MR0,@ClaState+62      ; [CPU_FPU] |57| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |57| 
        MMOV32    @ClaState+62,MR0      ; [CPU_FPU] |57| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 58,column 5,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+24 ; [CPU_FPU] |58| 
        MMOV32    @ClaState+64,MR0      ; [CPU_FPU] |58| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 59,column 5,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+26 ; [CPU_FPU] |59| 
        MMOV32    @ClaState+66,MR0      ; [CPU_FPU] |59| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 60,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |60| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |60| 
        MMOV32    MR0,@ClaState+62      ; [CPU_FPU] |60| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |60| 
        MMOV32    @ClaState+62,MR0      ; [CPU_FPU] |60| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 62,column 5,is_stmt,isa 0
        MUI32TOF32 MR1,@__claCla1Task1_sp+6 ; [CPU_FPU] |62| 
        MMOV32    MR0,@ClaState+68      ; [CPU_FPU] |62| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |62| 
        MMOV32    @ClaState+68,MR0      ; [CPU_FPU] |62| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 63,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+68      ; [CPU_FPU] |63| 
        MCMPF32   MR0,#17530            ; [CPU_FPU] |63| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L1,LT              ; [CPU_FPU] |63| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |63| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 65,column 9,is_stmt,isa 0
        MMOV32    MR0,@ClaState+68      ; [CPU_FPU] |65| 
        MADDF32   MR0,MR0,#50298        ; [CPU_FPU] |65| 
        MMOV32    @ClaState+68,MR0      ; [CPU_FPU] |65| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 66,column 9,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |66| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |66| 
        MMOV32    MR0,@ClaState+70      ; [CPU_FPU] |66| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |66| 
        MMOV32    @ClaState+70,MR0      ; [CPU_FPU] |66| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 67,column 9,is_stmt,isa 0
        MMOV32    MR0,@ClaState+72      ; [CPU_FPU] |67| 
        MADDF32   MR0,MR0,#16256        ; [CPU_FPU] |67| 
        MMOV32    @ClaState+72,MR0      ; [CPU_FPU] |67| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 68,column 9,is_stmt,isa 0
        MMOV32    MR0,@ClaState+72      ; [CPU_FPU] |68| 
        MCMPF32   MR0,#17530            ; [CPU_FPU] |68| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L1,LT              ; [CPU_FPU] |68| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |68| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 70,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+72      ; [CPU_FPU] |70| 
        MADDF32   MR0,MR0,#50298        ; [CPU_FPU] |70| 
        MMOV32    @ClaState+72,MR0      ; [CPU_FPU] |70| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 71,column 13,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |71| 
        MMOVXI    MR1,#1                ; [CPU_FPU] |71| 
        MMOV32    MR0,@ClaState+74      ; [CPU_FPU] |71| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |71| 
        MMOV32    @ClaState+74,MR0      ; [CPU_FPU] |71| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$L1:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 75,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |75| 
        MMOV32    MR0,@ClaState+32      ; [CPU_FPU] |75| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |75| 

        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |75| 
||      MMOV32    MR2,@ClaState+2       ; [CPU_FPU] |75| 

        MMOVIZ    MR1,#15820            ; [CPU_FPU] |75| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |75| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |75| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |75| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |75| 
        MMOV32    @ClaState+32,MR0      ; [CPU_FPU] |75| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 76,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |76| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |76| 
        MMOV32    MR0,@ClaState+34      ; [CPU_FPU] |76| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |76| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |76| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |76| 
        MMOV32    MR2,@ClaState+4       ; [CPU_FPU] |76| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |76| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |76| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |76| 
        MMOV32    @ClaState+34,MR0      ; [CPU_FPU] |76| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 77,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |77| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |77| 
        MMOV32    MR0,@ClaState+36      ; [CPU_FPU] |77| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |77| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |77| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |77| 
        MMOV32    MR2,@ClaState+6       ; [CPU_FPU] |77| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |77| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |77| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |77| 
        MMOV32    @ClaState+36,MR0      ; [CPU_FPU] |77| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 78,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |78| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |78| 
        MMOV32    MR0,@ClaState+38      ; [CPU_FPU] |78| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |78| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |78| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |78| 
        MMOV32    MR2,@ClaState+8       ; [CPU_FPU] |78| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |78| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |78| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |78| 
        MMOV32    @ClaState+38,MR0      ; [CPU_FPU] |78| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 79,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |79| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |79| 
        MMOV32    MR0,@ClaState+44      ; [CPU_FPU] |79| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |79| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |79| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |79| 
        MMOV32    MR2,@ClaState+14      ; [CPU_FPU] |79| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |79| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |79| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |79| 
        MMOV32    @ClaState+44,MR0      ; [CPU_FPU] |79| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 81,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |81| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |81| 
        MMOV32    MR0,@ClaState+46      ; [CPU_FPU] |81| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |81| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |81| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |81| 
        MMOV32    MR2,@ClaState+16      ; [CPU_FPU] |81| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |81| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |81| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |81| 
        MMOV32    @ClaState+46,MR0      ; [CPU_FPU] |81| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 82,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |82| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |82| 
        MMOV32    MR0,@ClaState+48      ; [CPU_FPU] |82| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |82| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |82| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |82| 
        MMOV32    MR2,@ClaState+18      ; [CPU_FPU] |82| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |82| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |82| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |82| 
        MMOV32    @ClaState+48,MR0      ; [CPU_FPU] |82| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 83,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |83| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |83| 
        MMOV32    MR0,@ClaState+50      ; [CPU_FPU] |83| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |83| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |83| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |83| 
        MMOV32    MR2,@ClaState+20      ; [CPU_FPU] |83| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |83| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |83| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |83| 
        MMOV32    @ClaState+50,MR0      ; [CPU_FPU] |83| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 84,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |84| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |84| 
        MMOV32    MR0,@ClaState+52      ; [CPU_FPU] |84| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |84| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |84| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |84| 
        MMOV32    MR2,@ClaState+22      ; [CPU_FPU] |84| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |84| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |84| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |84| 
        MMOV32    @ClaState+52,MR0      ; [CPU_FPU] |84| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 85,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |85| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |85| 
        MMOV32    MR0,@ClaState+54      ; [CPU_FPU] |85| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |85| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |85| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |85| 
        MMOV32    MR2,@ClaState+24      ; [CPU_FPU] |85| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |85| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |85| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |85| 
        MMOV32    @ClaState+54,MR0      ; [CPU_FPU] |85| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 87,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |87| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |87| 
        MMOV32    MR0,@ClaState+56      ; [CPU_FPU] |87| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |87| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |87| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |87| 
        MMOV32    MR2,@ClaState+26      ; [CPU_FPU] |87| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |87| 
        MMOVIZ    MR2,#14724            ; [CPU_FPU] |87| 
        MMOVXI    MR2,#62914            ; [CPU_FPU] |87| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |87| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |87| 
        MMOV32    @ClaState+56,MR0      ; [CPU_FPU] |87| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 88,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |88| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |88| 
        MMOV32    MR0,@ClaState+58      ; [CPU_FPU] |88| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |88| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |88| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |88| 
        MMOV32    MR2,@ClaState+28      ; [CPU_FPU] |88| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |88| 
        MMPYF32   MR1,MR1,#14528        ; [CPU_FPU] |88| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |88| 
        MMOV32    @ClaState+58,MR0      ; [CPU_FPU] |88| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 89,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |89| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |89| 
        MMOV32    MR0,@ClaState+60      ; [CPU_FPU] |89| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |89| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |89| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |89| 
        MMOV32    MR2,@ClaState+30      ; [CPU_FPU] |89| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |89| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |89| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |89| 
        MMOV32    @ClaState+60,MR0      ; [CPU_FPU] |89| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 90,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |90| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |90| 
        MMOV32    MR0,@ClaState+40      ; [CPU_FPU] |90| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |90| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |90| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |90| 
        MMOV32    MR2,@ClaState+10      ; [CPU_FPU] |90| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |90| 
        MMPYF32   MR1,MR1,#14528        ; [CPU_FPU] |90| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |90| 
        MMOV32    @ClaState+40,MR0      ; [CPU_FPU] |90| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 91,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16230            ; [CPU_FPU] |91| 
        MMOVXI    MR1,#26214            ; [CPU_FPU] |91| 
        MMOV32    MR0,@ClaState+42      ; [CPU_FPU] |91| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |91| 
        MMOVIZ    MR1,#15820            ; [CPU_FPU] |91| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |91| 
        MMOV32    MR2,@ClaState+12      ; [CPU_FPU] |91| 
        MMPYF32   MR1,MR2,MR1           ; [CPU_FPU] |91| 
        MMPYF32   MR1,MR1,#14400        ; [CPU_FPU] |91| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |91| 
        MMOV32    @ClaState+42,MR0      ; [CPU_FPU] |91| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 93,column 5,is_stmt,isa 0
        MMOVIZ    MR1,#16256            ; [CPU_FPU] |93| 
        MMOV32    MR0,@ClaState+40      ; [CPU_FPU] |93| 
        MMAXF32   MR0,#16384            ; [CPU_FPU] |93| 
        MEINVF32  MR3,MR0               ; [CPU_FPU] |93| 
        MMPYF32   MR2,MR0,MR3           ; [CPU_FPU] |93| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |93| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |93| 
        MMPYF32   MR2,MR3,MR0           ; [CPU_FPU] |93| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |93| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |93| 
        MMPYF32   MR2,MR3,MR1           ; [CPU_FPU] |93| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 94,column 5,is_stmt,isa 0
        MMOV32    MR1,MR2               ; [CPU_FPU] |94| 
        MMOV32    MR0,@ClaState+44      ; [CPU_FPU] |94| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |94| 
        MMOV32    @ClaState+138,MR0     ; [CPU_FPU] |94| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 95,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+42      ; [CPU_FPU] |95| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |95| 
        MMOV32    @ClaState+140,MR0     ; [CPU_FPU] |95| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 96,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+36      ; [CPU_FPU] |96| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |96| 
        MMOV32    @ClaState+142,MR0     ; [CPU_FPU] |96| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 97,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+38      ; [CPU_FPU] |97| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |97| 
        MMOV32    @ClaState+144,MR0     ; [CPU_FPU] |97| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 101,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+64      ; [CPU_FPU] |101| 
        MMOV32    @EncRsltBuf+4,MR0     ; [CPU_FPU] |101| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 102,column 5,is_stmt,isa 0
        MMOV32    MR0,@EQep1Regs        ; [CPU_FPU] |102| 
        MMOV32    @__claCla1Task1_sp+2,MR0 ; [CPU_FPU] |102| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 105,column 5,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+2 ; [CPU_FPU] |105| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 103,column 5,is_stmt,isa 0
        MMOVZ16   MR0,@EQep1Regs+31     ; [CPU_FPU] |103| 
        MLSL32    MR0,#16               ; [CPU_FPU] |103| 
        MLSR32    MR0,#16               ; [CPU_FPU] |103| 
        MMOV32    @EncRsltBuf+2,MR0     ; [CPU_FPU] |103| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 104,column 5,is_stmt,isa 0
        MMOV32    MR0,@EQep1Regs        ; [CPU_FPU] |104| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 105,column 5,is_stmt,isa 0
        MCMP32    MR0,MR1               ; [CPU_FPU] |105| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 104,column 5,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+4,MR0 ; [CPU_FPU] |104| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 105,column 5,is_stmt,isa 0
        MBCNDD    $C$L2,EQ              ; [CPU_FPU] |105| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 93,column 5,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+32,MR2 ; [CPU_FPU] |93| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 105,column 5,is_stmt,isa 0
        ; branchcc occurs ; [] |105| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 107,column 9,is_stmt,isa 0
        MMOVZ16   MR0,@EQep1Regs+31     ; [CPU_FPU] |107| 
        MLSL32    MR0,#16               ; [CPU_FPU] |107| 
        MLSR32    MR0,#16               ; [CPU_FPU] |107| 
        MMOV32    @EncRsltBuf+2,MR0     ; [CPU_FPU] |107| 
$C$L2:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 109,column 5,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+4 ; [CPU_FPU] |109| 
        MMOV32    @EncRsltBuf,MR0       ; [CPU_FPU] |109| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 110,column 5,is_stmt,isa 0
        MMOV32    MR0,@EncRsltBuf+4     ; [CPU_FPU] |110| 
        MMOV32    @EncRsltBuf+10,MR0    ; [CPU_FPU] |110| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 111,column 5,is_stmt,isa 0
        MMOV32    MR0,@EQep2Regs        ; [CPU_FPU] |111| 
        MMOV32    @__claCla1Task1_sp+2,MR0 ; [CPU_FPU] |111| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 112,column 5,is_stmt,isa 0
        MMOVZ16   MR0,@EQep2Regs+31     ; [CPU_FPU] |112| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 114,column 5,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+2 ; [CPU_FPU] |114| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 112,column 5,is_stmt,isa 0
        MLSL32    MR0,#16               ; [CPU_FPU] |112| 
        MLSR32    MR0,#16               ; [CPU_FPU] |112| 
        MMOV32    @EncRsltBuf+8,MR0     ; [CPU_FPU] |112| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 113,column 5,is_stmt,isa 0
        MMOV32    MR0,@EQep2Regs        ; [CPU_FPU] |113| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 114,column 5,is_stmt,isa 0
        MCMP32    MR0,MR1               ; [CPU_FPU] |114| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 113,column 5,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+4,MR0 ; [CPU_FPU] |113| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 114,column 5,is_stmt,isa 0
        MBCNDD    $C$L3,EQ              ; [CPU_FPU] |114| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |114| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 116,column 9,is_stmt,isa 0
        MMOVZ16   MR0,@EQep2Regs+31     ; [CPU_FPU] |116| 
        MLSL32    MR0,#16               ; [CPU_FPU] |116| 
        MLSR32    MR0,#16               ; [CPU_FPU] |116| 
        MMOV32    @EncRsltBuf+8,MR0     ; [CPU_FPU] |116| 
$C$L3:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 118,column 5,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+4 ; [CPU_FPU] |118| 
        MMOV32    @EncRsltBuf+6,MR0     ; [CPU_FPU] |118| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 122,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+34      ; [CPU_FPU] |122| 
        MCMPF32   MR0,#16400            ; [CPU_FPU] |122| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L4,LEQ             ; [CPU_FPU] |122| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |122| 
        MBCNDD    $C$L5,UNC             ; [CPU_FPU] |122| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |122| 
        ; branch occurs ; [] |122| 
$C$L4:    
        MMOVIZ    MR0,#0                ; [CPU_FPU] |122| 
$C$L5:    
        MMOV32    @__claCla1Task1_sp+8,MR0 ; [CPU_FPU] |122| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 126,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+80      ; [CPU_FPU] |126| 
        MMOV32    MR1,@__claCla1Task1_sp+8 ; [CPU_FPU] |126| 

        MMOV32    MR1,@ClaState+94      ; [CPU_FPU] |126| 
||      MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |126| 

        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |126| 
        MCMPF32   MR0,#0.0              ; [CPU_FPU] |126| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L7,EQ              ; [CPU_FPU] |126| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |126| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 128,column 9,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+8 ; [CPU_FPU] |128| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L6,EQ              ; [CPU_FPU] |128| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |128| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 130,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+82      ; [CPU_FPU] |130| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L7,NEQ             ; [CPU_FPU] |130| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |130| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 132,column 17,is_stmt,isa 0
        MMOV32    MR0,@EQep2Regs        ; [CPU_FPU] |132| 
        MMOV32    @ClaState+76,MR0      ; [CPU_FPU] |132| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 133,column 17,is_stmt,isa 0
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |133| 
        MBCNDD    $C$L7,UNC             ; [CPU_FPU] 
        MMOV32    @ClaState+82,MR0      ; [CPU_FPU] |133| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L6:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 138,column 13,is_stmt,isa 0
        MMOV32    MR0,@EQep2Regs        ; [CPU_FPU] |138| 
        MMOV32    @ClaState+78,MR0      ; [CPU_FPU] |138| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 139,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |139| 
        MMOV32    @ClaState+84,MR0      ; [CPU_FPU] |139| 
$C$L7:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 142,column 5,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+8 ; [CPU_FPU] |142| 
        MMOV32    @ClaState+80,MR0      ; [CPU_FPU] |142| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 145,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+32      ; [CPU_FPU] |145| 
        MCMPF32   MR0,#16400            ; [CPU_FPU] |145| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L8,LEQ             ; [CPU_FPU] |145| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |145| 
        MBCNDD    $C$L9,UNC             ; [CPU_FPU] |145| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |145| 
        ; branch occurs ; [] |145| 
$C$L8:    
        MMOVIZ    MR0,#0                ; [CPU_FPU] |145| 
$C$L9:    
        MMOV32    @__claCla1Task1_sp+8,MR0 ; [CPU_FPU] |145| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 146,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+102     ; [CPU_FPU] |146| 
        MMOV32    MR1,@__claCla1Task1_sp+8 ; [CPU_FPU] |146| 

        MMOV32    MR1,@ClaState+116     ; [CPU_FPU] |146| 
||      MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |146| 

        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |146| 
        MCMPF32   MR0,#0.0              ; [CPU_FPU] |146| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L11,EQ             ; [CPU_FPU] |146| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |146| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 148,column 9,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+8 ; [CPU_FPU] |148| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L10,EQ             ; [CPU_FPU] |148| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |148| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 150,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+104     ; [CPU_FPU] |150| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L11,NEQ            ; [CPU_FPU] |150| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |150| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 152,column 17,is_stmt,isa 0
        MMOV32    MR0,@EQep1Regs        ; [CPU_FPU] |152| 
        MMOV32    @ClaState+98,MR0      ; [CPU_FPU] |152| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 153,column 17,is_stmt,isa 0
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |153| 
        MBCNDD    $C$L11,UNC            ; [CPU_FPU] 
        MMOV32    @ClaState+104,MR0     ; [CPU_FPU] |153| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L10:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 158,column 13,is_stmt,isa 0
        MMOV32    MR0,@EQep1Regs        ; [CPU_FPU] |158| 
        MMOV32    @ClaState+100,MR0     ; [CPU_FPU] |158| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 159,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |159| 
        MMOV32    @ClaState+106,MR0     ; [CPU_FPU] |159| 
$C$L11:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 162,column 5,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+8 ; [CPU_FPU] |162| 
        MMOV32    @ClaState+102,MR0     ; [CPU_FPU] |162| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 171,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+120     ; [CPU_FPU] |171| 
        MADDF32   MR0,MR0,#16256        ; [CPU_FPU] |171| 
        MMOV32    @ClaState+120,MR0     ; [CPU_FPU] |171| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 172,column 5,is_stmt,isa 0
        MMOV32    MR0,@ClaState+120     ; [CPU_FPU] |172| 
        MCMPF32   MR0,#17280            ; [CPU_FPU] |172| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L13,GEQ            ; [CPU_FPU] |172| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |172| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 175,column 9,is_stmt,isa 0
        MMOV32    MR0,@ClaState+80      ; [CPU_FPU] |175| 
        MMOV32    MR1,@ClaState+82      ; [CPU_FPU] |175| 
        MSUBF32   MR0,#16256,MR0        ; [CPU_FPU] |175| 

        MMOV32    MR1,@ClaState+84      ; [CPU_FPU] |175| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |175| 

        MMOV32    MR1,@ClaState+94      ; [CPU_FPU] |175| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |175| 

        MMOV32    MR1,@ClaState+92      ; [CPU_FPU] |175| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |175| 

        MSUBF32   MR1,#16256,MR1        ; [CPU_FPU] |175| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |175| 
        MCMPF32   MR0,#16128            ; [CPU_FPU] |175| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L12,LEQ            ; [CPU_FPU] |175| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |175| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 178,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+76      ; [CPU_FPU] |178| 
        MMOV32    MR1,@ClaState+78      ; [CPU_FPU] |178| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |178| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |178| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 180,column 13,is_stmt,isa 0
        MMOV32    MR1,@ClaInput+4       ; [CPU_FPU] |180| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 178,column 13,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+28,MR0 ; [CPU_FPU] |178| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 180,column 13,is_stmt,isa 0

        MMOV32    MR1,@ClaState+96      ; [CPU_FPU] |180| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |180| 

        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |180| 
        MMOV32    @__claCla1Task1_sp+30,MR0 ; [CPU_FPU] |180| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 181,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#16051            ; [CPU_FPU] |181| 
        MMOVXI    MR0,#13107            ; [CPU_FPU] |181| 
        MMOV32    MR1,@__claCla1Task1_sp+30 ; [CPU_FPU] |181| 
        MCMPF32   MR1,MR0               ; [CPU_FPU] |181| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L12,LEQ            ; [CPU_FPU] |181| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |181| 
        MMOV32    MR0,MR1               ; [CPU_FPU] 
        MCMPF32   MR0,#16416            ; [CPU_FPU] |181| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L12,GEQ            ; [CPU_FPU] |181| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |181| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 183,column 17,is_stmt,isa 0
        MMOV32    @ClaState+86,MR0      ; [CPU_FPU] |183| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 184,column 17,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+28 ; [CPU_FPU] |184| 
        MMOV32    @ClaState+88,MR0      ; [CPU_FPU] |184| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 185,column 17,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+28 ; [CPU_FPU] |185| 
        MMPYF32   MR1,MR1,#16128        ; [CPU_FPU] |185| 
        MF32TOI32 MR1,MR1               ; [CPU_FPU] |185| 
        MMOV32    MR0,@ClaState+76      ; [CPU_FPU] |185| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |185| 
        MMOV32    @ClaState+90,MR0      ; [CPU_FPU] |185| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 186,column 17,is_stmt,isa 0
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |186| 
        MMOV32    @ClaState+92,MR0      ; [CPU_FPU] |186| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$L12:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 189,column 9,is_stmt,isa 0
        MMOV32    MR0,@ClaState+102     ; [CPU_FPU] |189| 
        MMOV32    MR1,@ClaState+104     ; [CPU_FPU] |189| 
        MSUBF32   MR0,#16256,MR0        ; [CPU_FPU] |189| 

        MMOV32    MR1,@ClaState+106     ; [CPU_FPU] |189| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |189| 

        MMOV32    MR1,@ClaState+116     ; [CPU_FPU] |189| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |189| 

        MMOV32    MR1,@ClaState+114     ; [CPU_FPU] |189| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |189| 

        MSUBF32   MR1,#16256,MR1        ; [CPU_FPU] |189| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |189| 
        MCMPF32   MR0,#16128            ; [CPU_FPU] |189| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L26,LEQ            ; [CPU_FPU] |189| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |189| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 192,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+98      ; [CPU_FPU] |192| 
        MMOV32    MR1,@ClaState+100     ; [CPU_FPU] |192| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |192| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |192| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 194,column 13,is_stmt,isa 0
        MMOV32    MR1,@ClaInput+4       ; [CPU_FPU] |194| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 192,column 13,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+28,MR0 ; [CPU_FPU] |192| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 194,column 13,is_stmt,isa 0

        MMOV32    MR1,@ClaState+118     ; [CPU_FPU] |194| 
||      MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |194| 

        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |194| 
        MMOV32    @__claCla1Task1_sp+30,MR0 ; [CPU_FPU] |194| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 195,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#16051            ; [CPU_FPU] |195| 
        MMOVXI    MR0,#13107            ; [CPU_FPU] |195| 
        MMOV32    MR1,@__claCla1Task1_sp+30 ; [CPU_FPU] |195| 
        MCMPF32   MR1,MR0               ; [CPU_FPU] |195| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L26,LEQ            ; [CPU_FPU] |195| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |195| 
        MMOV32    MR0,MR1               ; [CPU_FPU] 
        MCMPF32   MR0,#16416            ; [CPU_FPU] |195| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L26,GEQ            ; [CPU_FPU] |195| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 197,column 17,is_stmt,isa 0
        MMOV32    @ClaState+108,MR0     ; [CPU_FPU] |197| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 198,column 17,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+28 ; [CPU_FPU] |198| 
        MMOV32    @ClaState+110,MR0     ; [CPU_FPU] |198| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 199,column 17,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+28 ; [CPU_FPU] |199| 
        MMPYF32   MR1,MR1,#16128        ; [CPU_FPU] |199| 
        MF32TOI32 MR1,MR1               ; [CPU_FPU] |199| 
        MMOV32    MR0,@ClaState+98      ; [CPU_FPU] |199| 
        MADD32    MR0,MR1,MR0           ; [CPU_FPU] |199| 
        MMOV32    @ClaState+112,MR0     ; [CPU_FPU] |199| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 200,column 17,is_stmt,isa 0
        MMOVIZ    MR0,#16256            ; [CPU_FPU] |200| 
        MBCNDD    $C$L26,UNC            ; [CPU_FPU] 
        MMOV32    @ClaState+114,MR0     ; [CPU_FPU] |200| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L13:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 206,column 9,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |206| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 207,column 9,is_stmt,isa 0
        MMOVIZ    MR1,#16163            ; [CPU_FPU] |207| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 206,column 9,is_stmt,isa 0
        MMOV32    @ClaState+120,MR0     ; [CPU_FPU] |206| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 207,column 9,is_stmt,isa 0
        MMOVXI    MR1,#55050            ; [CPU_FPU] |207| 
        MUI32TOF32 MR0,@EncRsltBuf+2    ; [CPU_FPU] |207| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |207| 
        MF32TOI32 MR0,MR0               ; [CPU_FPU] |207| 
        MMOV32    MR1,@ClaState+66      ; [CPU_FPU] |207| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |207| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |207| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 208,column 9,is_stmt,isa 0
        MMOVIZ    MR1,#16163            ; [CPU_FPU] |208| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 207,column 9,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+10,MR0 ; [CPU_FPU] |207| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 208,column 9,is_stmt,isa 0
        MMOVXI    MR1,#55050            ; [CPU_FPU] |208| 
        MUI32TOF32 MR0,@EncRsltBuf+8    ; [CPU_FPU] |208| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |208| 
        MF32TOI32 MR0,MR0               ; [CPU_FPU] |208| 
        MMOV32    MR1,@ClaState+66      ; [CPU_FPU] |208| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |208| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |208| 
        MMOV32    @__claCla1Task1_sp+12,MR0 ; [CPU_FPU] |208| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 209,column 9,is_stmt,isa 0
        MMOV32    MR0,@EncRsltBuf       ; [CPU_FPU] |209| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 212,column 9,is_stmt,isa 0
        MMOVIZ    MR1,#0                ; [CPU_FPU] |212| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 209,column 9,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+22,MR0 ; [CPU_FPU] |209| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 210,column 9,is_stmt,isa 0
        MMOV32    MR0,@EncRsltBuf+6     ; [CPU_FPU] |210| 
        MMOV32    @__claCla1Task1_sp+20,MR0 ; [CPU_FPU] |210| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 212,column 9,is_stmt,isa 0
        MMOVZ16   MR0,@ClaState+128     ; [CPU_FPU] |212| 
        MLSL32    MR0,#16               ; [CPU_FPU] |212| 
        MLSR32    MR0,#16               ; [CPU_FPU] |212| 
        MCMP32    MR1,MR0               ; [CPU_FPU] |212| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L14,EQ             ; [CPU_FPU] |212| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |212| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 214,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |214| 
        MMOV16    @ClaState+128,MR0     ; [CPU_FPU] |214| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 216,column 13,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+12 ; [CPU_FPU] |216| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 215,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |215| 
        MMOV32    @ClaState+122,MR0     ; [CPU_FPU] |215| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 216,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#17948            ; [CPU_FPU] |216| 
        MMOVXI    MR0,#16384            ; [CPU_FPU] |216| 
        MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |216| 
        MF32TOI32 MR0,MR0               ; [CPU_FPU] |216| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 219,column 13,is_stmt,isa 0
        MMOV32    MR1,@__claCla1Task1_sp+10 ; [CPU_FPU] |219| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 216,column 13,is_stmt,isa 0
        MMOV32    @ClaState+126,MR0     ; [CPU_FPU] |216| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 217,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |217| 
        MMOV16    @ClaState+136,MR0     ; [CPU_FPU] |217| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 218,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |218| 
        MMOV32    @ClaState+130,MR0     ; [CPU_FPU] |218| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 219,column 13,is_stmt,isa 0
        MMOVIZ    MR0,#17948            ; [CPU_FPU] |219| 
        MMOVXI    MR0,#16384            ; [CPU_FPU] |219| 
        MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |219| 
        MF32TOI32 MR0,MR0               ; [CPU_FPU] |219| 
        MMOV32    @ClaState+134,MR0     ; [CPU_FPU] |219| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 220,column 13,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+20 ; [CPU_FPU] |220| 
        MMOV32    @ClaState+124,MR0     ; [CPU_FPU] |220| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 221,column 13,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+22 ; [CPU_FPU] |221| 
        MBCNDD    $C$L26,UNC            ; [CPU_FPU] 
        MMOV32    @ClaState+132,MR0     ; [CPU_FPU] |221| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L14:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 225,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+124     ; [CPU_FPU] |225| 
        MMOV32    MR1,@__claCla1Task1_sp+20 ; [CPU_FPU] |225| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |225| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |225| 
        MMOV32    @__claCla1Task1_sp+14,MR0 ; [CPU_FPU] |225| 
        MNOP      ; [CPU_FPU] 
        MMOV32    MR0,MR1               ; [CPU_FPU] |225| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 226,column 13,is_stmt,isa 0
        MMOV32    @ClaState+124,MR0     ; [CPU_FPU] |226| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 227,column 13,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+14 ; [CPU_FPU] |227| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L16,NEQ            ; [CPU_FPU] |227| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |227| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 229,column 17,is_stmt,isa 0
        MMOV32    MR0,@ClaState+126     ; [CPU_FPU] |229| 
        MMOV32    MR1,@ClaState+66      ; [CPU_FPU] |229| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |229| 
        MMOVIZ    MR1,#13702            ; [CPU_FPU] |229| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |229| 
        MMOVXI    MR1,#14269            ; [CPU_FPU] |229| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |229| 
        MMOV32    @__claCla1Task1_sp+16,MR0 ; [CPU_FPU] |229| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 230,column 17,is_stmt,isa 0
        MMOVIZ    MR0,#15948            ; [CPU_FPU] |230| 
        MMOVXI    MR0,#52429            ; [CPU_FPU] |230| 
        MMOV32    MR1,@__claCla1Task1_sp+16 ; [CPU_FPU] |230| 
        MCMPF32   MR1,MR0               ; [CPU_FPU] |230| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L15,LEQ            ; [CPU_FPU] |230| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |230| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 232,column 21,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |232| 
        MMOV32    @ClaState+122,MR0     ; [CPU_FPU] |232| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 233,column 21,is_stmt,isa 0
        MMOVIZ    MR0,#3                ; [CPU_FPU] |233| 
        MMOV32    MR1,@ClaState+66      ; [CPU_FPU] |233| 
        MMOVXI    MR0,#3392             ; [CPU_FPU] |233| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |233| 
        MMOV32    @ClaState+126,MR0     ; [CPU_FPU] |233| 
        MBCNDD    $C$L20,UNC            ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L15:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 237,column 21,is_stmt,isa 0
        MMOVIZ    MR1,#15139            ; [CPU_FPU] |237| 
        MMOV32    MR0,@__claCla1Task1_sp+16 ; [CPU_FPU] |237| 
        MMOVXI    MR1,#55050            ; [CPU_FPU] |237| 
        MMAXF32   MR0,MR1               ; [CPU_FPU] |237| 
        MEINVF32  MR3,MR0               ; [CPU_FPU] |237| 
        MMPYF32   MR2,MR0,MR3           ; [CPU_FPU] |237| 
        MMOVIZ    MR1,#16256            ; [CPU_FPU] |237| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |237| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |237| 
        MMPYF32   MR2,MR3,MR0           ; [CPU_FPU] |237| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |237| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |237| 
        MMPYF32   MR2,MR3,MR1           ; [CPU_FPU] |237| 
        MMOV32    MR0,MR2               ; [CPU_FPU] |237| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 238,column 21,is_stmt,isa 0
        MNEGF32   MR1,MR0               ; [CPU_FPU] |238| 
        MMOV32    MR0,@ClaState+122     ; [CPU_FPU] |238| 
        MMAXF32   MR0,MR1               ; [CPU_FPU] |238| 
        MMOV32    MR1,MR2               ; [CPU_FPU] |238| 
        MMINF32   MR0,MR1               ; [CPU_FPU] |238| 
        MMOV32    @ClaState+122,MR0     ; [CPU_FPU] |238| 
        MBCNDD    $C$L20,UNC            ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 237,column 21,is_stmt,isa 0
        MMOV32    @__claCla1Task1_sp+18,MR2 ; [CPU_FPU] |237| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L16:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 243,column 17,is_stmt,isa 0
        MI32TOF32 MR0,@ClaState+126     ; [CPU_FPU] |243| 
        MMOV32    MR1,@__claCla1Task1_sp+12 ; [CPU_FPU] |243| 
        MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |243| 
        MMINF32   MR0,#17402            ; [CPU_FPU] |243| 
        MMOV32    @__claCla1Task1_sp+16,MR0 ; [CPU_FPU] |243| 
        MMOV32    MR0,MR1               ; [CPU_FPU] |243| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 244,column 17,is_stmt,isa 0
        MF32TOI32 MR0,MR0               ; [CPU_FPU] |244| 
        MMOV32    @ClaState+126,MR0     ; [CPU_FPU] |244| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 246,column 17,is_stmt,isa 0
        MMOV32    MR0,@ClaState+122     ; [CPU_FPU] |246| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L19,NEQ            ; [CPU_FPU] |246| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |246| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 248,column 21,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+14 ; [CPU_FPU] |248| 
        MABSF32   MR0,MR0               ; [CPU_FPU] |248| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L17,LEQ            ; [CPU_FPU] |248| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |248| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 250,column 25,is_stmt,isa 0
        MMOVIZ    MR0,#16204            ; [CPU_FPU] |250| 
        MBCNDD    $C$L18,UNC            ; [CPU_FPU] 
        MMOV32    MR1,@__claCla1Task1_sp+14 ; [CPU_FPU] |250| 
        MMOVXI    MR0,#52429            ; [CPU_FPU] |250| 
        MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |250| 
        ; branch occurs ; [] 
$C$L17:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 254,column 25,is_stmt,isa 0
        MMOVIZ    MR1,#16204            ; [CPU_FPU] |254| 
        MMOV32    MR0,@__claCla1Task1_sp+14 ; [CPU_FPU] |254| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |254| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |254| 
$C$L18:    
        MMOV32    @__claCla1Task1_sp+14,MR0 ; [CPU_FPU] |254| 
$C$L19:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 257,column 17,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+16 ; [CPU_FPU] |257| 
        MEINVF32  MR3,MR0               ; [CPU_FPU] |257| 
        MMPYF32   MR2,MR0,MR3           ; [CPU_FPU] |257| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |257| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |257| 
        MMPYF32   MR2,MR3,MR0           ; [CPU_FPU] |257| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |257| 

        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |257| 
||      MMOV32    MR1,@__claCla1Task1_sp+14 ; [CPU_FPU] |257| 

        MMPYF32   MR2,MR3,MR1           ; [CPU_FPU] |257| 
        MMOV32    @ClaState+122,MR2     ; [CPU_FPU] |257| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$L20:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 260,column 13,is_stmt,isa 0
        MMOV32    MR0,@ClaState+132     ; [CPU_FPU] |260| 
        MMOV32    MR1,@__claCla1Task1_sp+22 ; [CPU_FPU] |260| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |260| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |260| 
        MMOV32    @__claCla1Task1_sp+14,MR0 ; [CPU_FPU] |260| 
        MNOP      ; [CPU_FPU] 
        MMOV32    MR0,MR1               ; [CPU_FPU] |260| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 261,column 13,is_stmt,isa 0
        MMOV32    @ClaState+132,MR0     ; [CPU_FPU] |261| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 262,column 13,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+14 ; [CPU_FPU] |262| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L22,NEQ            ; [CPU_FPU] |262| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |262| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 264,column 17,is_stmt,isa 0
        MMOV32    MR0,@ClaState+134     ; [CPU_FPU] |264| 
        MMOV32    MR1,@ClaState+66      ; [CPU_FPU] |264| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |264| 
        MMOVIZ    MR1,#13702            ; [CPU_FPU] |264| 
        MI32TOF32 MR0,MR0               ; [CPU_FPU] |264| 
        MMOVXI    MR1,#14269            ; [CPU_FPU] |264| 
        MMPYF32   MR0,MR1,MR0           ; [CPU_FPU] |264| 
        MMOV32    @__claCla1Task1_sp+16,MR0 ; [CPU_FPU] |264| 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 265,column 17,is_stmt,isa 0
        MMOVIZ    MR0,#15948            ; [CPU_FPU] |265| 
        MMOVXI    MR0,#52429            ; [CPU_FPU] |265| 
        MMOV32    MR1,@__claCla1Task1_sp+16 ; [CPU_FPU] |265| 
        MCMPF32   MR1,MR0               ; [CPU_FPU] |265| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L21,LEQ            ; [CPU_FPU] |265| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 267,column 21,is_stmt,isa 0
        MMOVIZ    MR0,#0                ; [CPU_FPU] |267| 
        MMOV32    @ClaState+130,MR0     ; [CPU_FPU] |267| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 268,column 21,is_stmt,isa 0
        MMOVIZ    MR0,#3                ; [CPU_FPU] |268| 
        MMOV32    MR1,@ClaState+66      ; [CPU_FPU] |268| 
        MMOVXI    MR0,#3392             ; [CPU_FPU] |268| 
        MSUB32    MR0,MR1,MR0           ; [CPU_FPU] |268| 
        MBCNDD    $C$L26,UNC            ; [CPU_FPU] 
        MMOV32    @ClaState+134,MR0     ; [CPU_FPU] |268| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L21:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 272,column 21,is_stmt,isa 0
        MMOVIZ    MR1,#15139            ; [CPU_FPU] |272| 
        MMOV32    MR0,@__claCla1Task1_sp+16 ; [CPU_FPU] |272| 
        MMOVXI    MR1,#55050            ; [CPU_FPU] |272| 
        MMAXF32   MR0,MR1               ; [CPU_FPU] |272| 
        MEINVF32  MR3,MR0               ; [CPU_FPU] |272| 
        MMPYF32   MR2,MR0,MR3           ; [CPU_FPU] |272| 
        MMOVIZ    MR1,#16256            ; [CPU_FPU] |272| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |272| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |272| 
        MMPYF32   MR2,MR3,MR0           ; [CPU_FPU] |272| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |272| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |272| 
        MMPYF32   MR2,MR3,MR1           ; [CPU_FPU] |272| 
        MMOV32    MR0,MR2               ; [CPU_FPU] |272| 
        MMOV32    @__claCla1Task1_sp+18,MR2 ; [CPU_FPU] |272| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 273,column 21,is_stmt,isa 0
        MNEGF32   MR1,MR0               ; [CPU_FPU] |273| 
        MMOV32    MR0,@ClaState+130     ; [CPU_FPU] |273| 
        MMAXF32   MR0,MR1               ; [CPU_FPU] |273| 
        MMOV32    MR1,MR2               ; [CPU_FPU] |273| 
        MMINF32   MR0,MR1               ; [CPU_FPU] |273| 
        MBCNDD    $C$L26,UNC            ; [CPU_FPU] 
        MMOV32    @ClaState+130,MR0     ; [CPU_FPU] |273| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branch occurs ; [] 
$C$L22:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 278,column 17,is_stmt,isa 0
        MI32TOF32 MR0,@ClaState+134     ; [CPU_FPU] |278| 
        MMOV32    MR1,@__claCla1Task1_sp+10 ; [CPU_FPU] |278| 
        MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |278| 
        MMINF32   MR0,#17402            ; [CPU_FPU] |278| 
        MMOV32    @__claCla1Task1_sp+16,MR0 ; [CPU_FPU] |278| 
        MMOV32    MR0,MR1               ; [CPU_FPU] |278| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 279,column 17,is_stmt,isa 0
        MF32TOI32 MR0,MR0               ; [CPU_FPU] |279| 
        MMOV32    @ClaState+134,MR0     ; [CPU_FPU] |279| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 281,column 17,is_stmt,isa 0
        MMOV32    MR0,@ClaState+130     ; [CPU_FPU] |281| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L25,NEQ            ; [CPU_FPU] |281| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |281| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 283,column 21,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+14 ; [CPU_FPU] |283| 
        MABSF32   MR0,MR0               ; [CPU_FPU] |283| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MBCNDD    $C$L23,LEQ            ; [CPU_FPU] |283| 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        ; branchcc occurs ; [] |283| 
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 285,column 25,is_stmt,isa 0
        MMOVIZ    MR0,#16204            ; [CPU_FPU] |285| 
        MBCNDD    $C$L24,UNC            ; [CPU_FPU] 
        MMOV32    MR1,@__claCla1Task1_sp+14 ; [CPU_FPU] |285| 
        MMOVXI    MR0,#52429            ; [CPU_FPU] |285| 
        MSUBF32   MR0,MR1,MR0           ; [CPU_FPU] |285| 
        ; branch occurs ; [] 
$C$L23:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 289,column 25,is_stmt,isa 0
        MMOVIZ    MR1,#16204            ; [CPU_FPU] |289| 
        MMOV32    MR0,@__claCla1Task1_sp+14 ; [CPU_FPU] |289| 
        MMOVXI    MR1,#52429            ; [CPU_FPU] |289| 
        MADDF32   MR0,MR1,MR0           ; [CPU_FPU] |289| 
$C$L24:    
        MMOV32    @__claCla1Task1_sp+14,MR0 ; [CPU_FPU] |289| 
$C$L25:    
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 292,column 17,is_stmt,isa 0
        MMOV32    MR0,@__claCla1Task1_sp+16 ; [CPU_FPU] |292| 
        MEINVF32  MR3,MR0               ; [CPU_FPU] |292| 
        MMPYF32   MR2,MR0,MR3           ; [CPU_FPU] |292| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |292| 
        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |292| 
        MMPYF32   MR2,MR3,MR0           ; [CPU_FPU] |292| 
        MSUBF32   MR2,#16384,MR2        ; [CPU_FPU] |292| 

        MMPYF32   MR3,MR2,MR3           ; [CPU_FPU] |292| 
||      MMOV32    MR1,@__claCla1Task1_sp+14 ; [CPU_FPU] |292| 

        MMPYF32   MR2,MR3,MR1           ; [CPU_FPU] |292| 
        MMOV32    @ClaState+130,MR2     ; [CPU_FPU] |292| 
$C$L26:    
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x128)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	"Cla1Prog:Cla1Task2"
	.align	 2
	.clink
	.global	Cla1Task2

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("Cla1Task2")
	.dwattr $C$DW$29, DW_AT_low_pc(Cla1Task2)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("Cla1Task2")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$29, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$29, DW_AT_decl_column(0x10)
	.dwattr $C$DW$29, DW_AT_TI_interrupt
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 300,column 1,is_stmt,address Cla1Task2,isa 0

	.dwfde $C$DW$CIE, Cla1Task2

;***************************************************************
;* FNAME: Cla1Task2                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task2:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 302,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	"Cla1Prog:Cla1Task3"
	.align	 2
	.clink
	.global	Cla1Task3

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("Cla1Task3")
	.dwattr $C$DW$31, DW_AT_low_pc(Cla1Task3)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("Cla1Task3")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$31, DW_AT_decl_line(0x130)
	.dwattr $C$DW$31, DW_AT_decl_column(0x10)
	.dwattr $C$DW$31, DW_AT_TI_interrupt
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 305,column 1,is_stmt,address Cla1Task3,isa 0

	.dwfde $C$DW$CIE, Cla1Task3

;***************************************************************
;* FNAME: Cla1Task3                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task3:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 307,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x133)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	"Cla1Prog:Cla1Task4"
	.align	 2
	.clink
	.global	Cla1Task4

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("Cla1Task4")
	.dwattr $C$DW$33, DW_AT_low_pc(Cla1Task4)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_linkage_name("Cla1Task4")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$33, DW_AT_decl_line(0x135)
	.dwattr $C$DW$33, DW_AT_decl_column(0x10)
	.dwattr $C$DW$33, DW_AT_TI_interrupt
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 310,column 1,is_stmt,address Cla1Task4,isa 0

	.dwfde $C$DW$CIE, Cla1Task4

;***************************************************************
;* FNAME: Cla1Task4                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task4:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 312,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x138)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	"Cla1Prog:Cla1Task5"
	.align	 2
	.clink
	.global	Cla1Task5

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("Cla1Task5")
	.dwattr $C$DW$35, DW_AT_low_pc(Cla1Task5)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("Cla1Task5")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$35, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$35, DW_AT_decl_column(0x10)
	.dwattr $C$DW$35, DW_AT_TI_interrupt
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 315,column 1,is_stmt,address Cla1Task5,isa 0

	.dwfde $C$DW$CIE, Cla1Task5

;***************************************************************
;* FNAME: Cla1Task5                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task5:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 317,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x13d)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	"Cla1Prog:Cla1Task6"
	.align	 2
	.clink
	.global	Cla1Task6

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("Cla1Task6")
	.dwattr $C$DW$37, DW_AT_low_pc(Cla1Task6)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("Cla1Task6")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$37, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$37, DW_AT_decl_column(0x10)
	.dwattr $C$DW$37, DW_AT_TI_interrupt
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 320,column 1,is_stmt,address Cla1Task6,isa 0

	.dwfde $C$DW$CIE, Cla1Task6

;***************************************************************
;* FNAME: Cla1Task6                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task6:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 322,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x142)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	"Cla1Prog:Cla1Task7"
	.align	 2
	.clink
	.global	Cla1Task7

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("Cla1Task7")
	.dwattr $C$DW$39, DW_AT_low_pc(Cla1Task7)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("Cla1Task7")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$39, DW_AT_decl_line(0x144)
	.dwattr $C$DW$39, DW_AT_decl_column(0x10)
	.dwattr $C$DW$39, DW_AT_TI_interrupt
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 325,column 1,is_stmt,address Cla1Task7,isa 0

	.dwfde $C$DW$CIE, Cla1Task7

;***************************************************************
;* FNAME: Cla1Task7                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task7:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 327,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	"Cla1Prog:Cla1Task8"
	.align	 2
	.clink
	.global	Cla1Task8

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("Cla1Task8")
	.dwattr $C$DW$41, DW_AT_low_pc(Cla1Task8)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("Cla1Task8")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$41, DW_AT_decl_line(0x149)
	.dwattr $C$DW$41, DW_AT_decl_column(0x10)
	.dwattr $C$DW$41, DW_AT_TI_interrupt
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 330,column 1,is_stmt,address Cla1Task8,isa 0

	.dwfde $C$DW$CIE, Cla1Task8

;***************************************************************
;* FNAME: Cla1Task8                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Auto,  0 SOE     *
;***************************************************************

Cla1Task8:
	.dwpsn	file "../Drivers/ClaAdcDrv.cla",line 332,column 1,is_stmt,isa 0
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
        MNOP      ; [CPU_FPU] 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        MSTOP     ; [CPU_FPU] 
        ; ireturn occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../Drivers/ClaAdcDrv.cla")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x14c)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	EncRsltBuf
	.global	ClaInput
	.global	ClaState
	.global	AdcaResultRegs
	.global	AdcbResultRegs
	.global	AdccResultRegs
	.global	ECap6Regs
	.global	EQep1Regs
	.global	EQep2Regs
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 7
	.dwcfi	cfa_register, 10
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 5
	.dwendentry
	.dwendtag $C$DW$CU


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x0e)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$43, DW_AT_name("upd")
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x48)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0f)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$44, DW_AT_name("RawEcapTimer")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x49)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0f)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$45, DW_AT_name("UsecTimer")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0f)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$46, DW_AT_name("UsecTimerAtMsec")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0f)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$47, DW_AT_name("mSecTimer")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0f)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$48, DW_AT_name("mSecTimerAtSec")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0f)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$49, DW_AT_name("SecTimer")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$50, DW_AT_name("Speed")
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x55)
	.dwattr $C$DW$50, DW_AT_decl_column(0x11)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$51, DW_AT_name("Position")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$51, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x56)
	.dwattr $C$DW$51, DW_AT_decl_column(0x11)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$52, DW_AT_name("Time")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x57)
	.dwattr $C$DW$52, DW_AT_decl_column(0x11)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$53, DW_AT_name("Init")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x58)
	.dwattr $C$DW$53, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$20, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x08)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$54, DW_AT_name("Speed")
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$54, DW_AT_decl_column(0x11)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$55, DW_AT_name("Position")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$55, DW_AT_decl_column(0x11)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$56, DW_AT_name("Time")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$56, DW_AT_decl_column(0x11)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$57, DW_AT_name("Init")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$57, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("ADCPPB1RESULT_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$58, DW_AT_bit_size(0x10)
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x3ce)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0c)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$59, DW_AT_name("SIGN")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$59, DW_AT_bit_size(0x10)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x3cf)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$51, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x3cd)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("ADCPPB1RESULT_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$60, DW_AT_name("all")
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x3d3)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0d)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$61, DW_AT_name("bit")
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x3d4)
	.dwattr $C$DW$61, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$52, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x3d2)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("ADCPPB2RESULT_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$62, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$62, DW_AT_bit_size(0x10)
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x3d8)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0c)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$63, DW_AT_name("SIGN")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$63, DW_AT_bit_size(0x10)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x3d9)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$53, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x3d7)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("ADCPPB2RESULT_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$64, DW_AT_name("all")
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x3dd)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0d)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$65, DW_AT_name("bit")
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x3de)
	.dwattr $C$DW$65, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$54, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x3dc)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("ADCPPB3RESULT_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$66, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$66, DW_AT_bit_size(0x10)
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x3e2)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0c)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$67, DW_AT_name("SIGN")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$67, DW_AT_bit_size(0x10)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x3e3)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x3e1)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("ADCPPB3RESULT_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$68, DW_AT_name("all")
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x3e7)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0d)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$69, DW_AT_name("bit")
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x3e8)
	.dwattr $C$DW$69, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$56, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x3e6)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("ADCPPB4RESULT_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$70, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$70, DW_AT_bit_size(0x10)
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x3ec)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0c)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$71, DW_AT_name("SIGN")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$71, DW_AT_bit_size(0x10)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x3ed)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x3eb)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("ADCPPB4RESULT_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$72, DW_AT_name("all")
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x3f1)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0d)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$73, DW_AT_name("bit")
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x3f2)
	.dwattr $C$DW$73, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$58, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x3f0)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("ADC_RESULT_REGS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x18)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$74, DW_AT_name("ADCRESULT0")
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x3f6)
	.dwattr $C$DW$74, DW_AT_decl_column(0x2e)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$75, DW_AT_name("ADCRESULT1")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x3f7)
	.dwattr $C$DW$75, DW_AT_decl_column(0x2e)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$76, DW_AT_name("ADCRESULT2")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x3f8)
	.dwattr $C$DW$76, DW_AT_decl_column(0x2e)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$77, DW_AT_name("ADCRESULT3")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x3f9)
	.dwattr $C$DW$77, DW_AT_decl_column(0x2e)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$78, DW_AT_name("ADCRESULT4")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x3fa)
	.dwattr $C$DW$78, DW_AT_decl_column(0x2e)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$79, DW_AT_name("ADCRESULT5")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x3fb)
	.dwattr $C$DW$79, DW_AT_decl_column(0x2e)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$80, DW_AT_name("ADCRESULT6")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x3fc)
	.dwattr $C$DW$80, DW_AT_decl_column(0x2e)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$81, DW_AT_name("ADCRESULT7")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x3fd)
	.dwattr $C$DW$81, DW_AT_decl_column(0x2e)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$82, DW_AT_name("ADCRESULT8")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x3fe)
	.dwattr $C$DW$82, DW_AT_decl_column(0x2e)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$83, DW_AT_name("ADCRESULT9")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x3ff)
	.dwattr $C$DW$83, DW_AT_decl_column(0x2e)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$84, DW_AT_name("ADCRESULT10")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x400)
	.dwattr $C$DW$84, DW_AT_decl_column(0x2e)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$85, DW_AT_name("ADCRESULT11")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x401)
	.dwattr $C$DW$85, DW_AT_decl_column(0x2e)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$86, DW_AT_name("ADCRESULT12")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x402)
	.dwattr $C$DW$86, DW_AT_decl_column(0x2e)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$87, DW_AT_name("ADCRESULT13")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x403)
	.dwattr $C$DW$87, DW_AT_decl_column(0x2e)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$88, DW_AT_name("ADCRESULT14")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x404)
	.dwattr $C$DW$88, DW_AT_decl_column(0x2e)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$89, DW_AT_name("ADCRESULT15")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x405)
	.dwattr $C$DW$89, DW_AT_decl_column(0x2e)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$90, DW_AT_name("ADCPPB1RESULT")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x406)
	.dwattr $C$DW$90, DW_AT_decl_column(0x2e)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$91, DW_AT_name("ADCPPB2RESULT")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x407)
	.dwattr $C$DW$91, DW_AT_decl_column(0x2e)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$92, DW_AT_name("ADCPPB3RESULT")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x408)
	.dwattr $C$DW$92, DW_AT_decl_column(0x2e)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$93, DW_AT_name("ADCPPB4RESULT")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x409)
	.dwattr $C$DW$93, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$59, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_adc.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x3f5)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$94	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$59)

$C$DW$T$91	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$94)

	.dwendtag $C$DW$TU$91


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("CClaInput")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x06)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$95, DW_AT_name("IntentionallyZero")
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x15)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0b)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$96, DW_AT_name("InvLimitSwWidthWhEncoderAct")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x16)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$48, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("CClaLimit")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x16)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$97, DW_AT_name("CaptEncoderH")
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x33)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0b)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$98, DW_AT_name("CaptEncoderL")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x34)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0b)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$99, DW_AT_name("PresentValue")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x35)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0b)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$100, DW_AT_name("RiseMarker")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x36)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0b)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$101, DW_AT_name("FallMarker")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x37)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0b)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$102, DW_AT_name("DetectWidthN")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x38)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0b)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$103, DW_AT_name("DetectWidthRaw")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x39)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0b)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$104, DW_AT_name("EncoderAtSwitch")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0b)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$105, DW_AT_name("SwitchDetectValid")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0b)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$106, DW_AT_name("SwitchRequest")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0b)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$107, DW_AT_name("SwitchRequestDir")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$49, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("CClaState")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x92)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$108, DW_AT_name("ClaIntCntr")
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x43)
	.dwattr $C$DW$108, DW_AT_decl_column(0x13)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$109, DW_AT_name("Raw")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x44)
	.dwattr $C$DW$109, DW_AT_decl_column(0x18)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$110, DW_AT_name("Filt")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x45)
	.dwattr $C$DW$110, DW_AT_decl_column(0x18)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("Timer")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$111, DW_AT_decl_column(0x07)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$112, DW_AT_name("RLimit")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x50)
	.dwattr $C$DW$112, DW_AT_decl_column(0x18)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$113, DW_AT_name("LLimit")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x51)
	.dwattr $C$DW$113, DW_AT_decl_column(0x18)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$114, DW_AT_name("SpeedEstCnt")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x52)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0d)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("WheelEncR")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x59)
	.dwattr $C$DW$115, DW_AT_decl_column(0x09)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$116, DW_AT_name("WheelEncL")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x60)
	.dwattr $C$DW$116, DW_AT_decl_column(0x09)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$117, DW_AT_name("Nk1PotRatio")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x61)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0d)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$118, DW_AT_name("Nk2PotRatio")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x62)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0d)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$119, DW_AT_name("PotSt1Ratio")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x63)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0d)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$120, DW_AT_name("PotSt2Ratio")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x64)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$50, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$121	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$50)

$C$DW$T$90	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$121)

	.dwendtag $C$DW$TU$90


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("CRawAnalogs")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x1e)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$122, DW_AT_name("IndSenW1")
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x20)
	.dwattr $C$DW$122, DW_AT_decl_column(0x0b)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$123, DW_AT_name("IndSenW2")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x21)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0b)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$124, DW_AT_name("PotSt1")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x22)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0b)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$125, DW_AT_name("PotSt2")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x23)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0b)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$126, DW_AT_name("VPot")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x24)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0b)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$127, DW_AT_name("NK2Pot")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x25)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0b)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$128, DW_AT_name("NK1Pot")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x26)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0b)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$129, DW_AT_name("OLoadSt1")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x27)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0b)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$130, DW_AT_name("OLoadSt2")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x28)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0b)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$131, DW_AT_name("LaserSamp1")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x29)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0b)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$132, DW_AT_name("LaserSamp2")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0b)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$133, DW_AT_name("OLoadNK")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0b)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$134, DW_AT_name("V12Out")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0b)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$135, DW_AT_name("V5Samp")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0b)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$136, DW_AT_name("HardVer")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$84, DW_AT_decl_file("..\Drivers\ClaShared.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("ECAPSYNCINSEL_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$137, DW_AT_name("SEL")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$137, DW_AT_bit_size(0x05)
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0c)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$138, DW_AT_name("rsvd1")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$138, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$139, DW_AT_name("rsvd2")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$139, DW_AT_bit_size(0x10)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("ECAPSYNCINSEL_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$140, DW_AT_name("all")
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0d)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$141, DW_AT_name("bit")
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$141, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$27, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("ECAP_REGS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x20)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$142, DW_AT_name("TSCTR")
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$142, DW_AT_decl_column(0x2e)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$143, DW_AT_name("CTRPHS")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$143, DW_AT_decl_column(0x2e)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$144, DW_AT_name("CAP1")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$144, DW_AT_decl_column(0x2e)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$145, DW_AT_name("CAP2")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$145, DW_AT_decl_column(0x2e)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$146, DW_AT_name("CAP3")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$146, DW_AT_decl_column(0x2e)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$147, DW_AT_name("CAP4")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$147, DW_AT_decl_column(0x2e)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$148, DW_AT_name("rsvd1")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$148, DW_AT_decl_column(0x2e)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$149, DW_AT_name("ECCTL0")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$149, DW_AT_decl_column(0x2e)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$150, DW_AT_name("ECCTL1")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$150, DW_AT_decl_column(0x2e)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$151, DW_AT_name("ECCTL2")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$151, DW_AT_decl_column(0x2e)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$152, DW_AT_name("ECEINT")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$152, DW_AT_decl_column(0x2e)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$153, DW_AT_name("ECFLG")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$153, DW_AT_decl_column(0x2e)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$154, DW_AT_name("ECCLR")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$154, DW_AT_decl_column(0x2e)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$155, DW_AT_name("ECFRC")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$155, DW_AT_decl_column(0x2e)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$156, DW_AT_name("rsvd2")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0xca)
	.dwattr $C$DW$156, DW_AT_decl_column(0x2e)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$157, DW_AT_name("ECAPSYNCINSEL")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$157, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$30, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$158	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$30)

$C$DW$T$88	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$158)

	.dwendtag $C$DW$TU$88


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("ECCLR_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$159, DW_AT_name("INT")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$160, DW_AT_name("CEVT1")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0c)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$161, DW_AT_name("CEVT2")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0c)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$162, DW_AT_name("CEVT3")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x90)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0c)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$163, DW_AT_name("CEVT4")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x91)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0c)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$164, DW_AT_name("CTROVF")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x92)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0c)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$165, DW_AT_name("CTR_PRD")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x93)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0c)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$166, DW_AT_name("CTR_CMP")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x94)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0c)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$167, DW_AT_name("rsvd1")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x95)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0c)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$168, DW_AT_name("rsvd2")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$168, DW_AT_bit_size(0x07)
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x96)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$31, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("ECCLR_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$169, DW_AT_name("all")
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0d)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$170, DW_AT_name("bit")
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$170, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$32, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("ECCTL0_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$171, DW_AT_name("INPUTSEL")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$171, DW_AT_bit_size(0x07)
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x37)
	.dwattr $C$DW$171, DW_AT_decl_column(0x0c)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$172, DW_AT_name("rsvd1")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$172, DW_AT_bit_size(0x09)
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x38)
	.dwattr $C$DW$172, DW_AT_decl_column(0x0c)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$173, DW_AT_name("rsvd2")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$173, DW_AT_bit_size(0x10)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x39)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$33, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("ECCTL0_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$174, DW_AT_name("all")
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0d)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$175, DW_AT_name("bit")
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$175, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$34, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("ECCTL1_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$176, DW_AT_name("CAP1POL")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x42)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0c)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$177, DW_AT_name("CTRRST1")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x43)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0c)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$178, DW_AT_name("CAP2POL")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x44)
	.dwattr $C$DW$178, DW_AT_decl_column(0x0c)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$179, DW_AT_name("CTRRST2")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x45)
	.dwattr $C$DW$179, DW_AT_decl_column(0x0c)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$180, DW_AT_name("CAP3POL")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x46)
	.dwattr $C$DW$180, DW_AT_decl_column(0x0c)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$181, DW_AT_name("CTRRST3")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x47)
	.dwattr $C$DW$181, DW_AT_decl_column(0x0c)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$182, DW_AT_name("CAP4POL")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x48)
	.dwattr $C$DW$182, DW_AT_decl_column(0x0c)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$183, DW_AT_name("CTRRST4")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x49)
	.dwattr $C$DW$183, DW_AT_decl_column(0x0c)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$184, DW_AT_name("CAPLDEN")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$184, DW_AT_decl_column(0x0c)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$185, DW_AT_name("PRESCALE")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$185, DW_AT_bit_size(0x05)
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$185, DW_AT_decl_column(0x0c)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$186, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$186, DW_AT_bit_size(0x02)
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("ECCTL1_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_name("all")
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x50)
	.dwattr $C$DW$187, DW_AT_decl_column(0x0d)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$188, DW_AT_name("bit")
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x51)
	.dwattr $C$DW$188, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$36, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("ECCTL2_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$189, DW_AT_name("CONT_ONESHT")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x55)
	.dwattr $C$DW$189, DW_AT_decl_column(0x0c)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$190, DW_AT_name("STOP_WRAP")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$190, DW_AT_bit_size(0x02)
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x56)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0c)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$191, DW_AT_name("REARM")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x57)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0c)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$192, DW_AT_name("TSCTRSTOP")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x58)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0c)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$193, DW_AT_name("SYNCI_EN")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x59)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0c)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$194, DW_AT_name("SYNCO_SEL")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$194, DW_AT_bit_size(0x02)
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0c)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$195, DW_AT_name("SWSYNC")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0c)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$196, DW_AT_name("CAP_APWM")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0c)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$197, DW_AT_name("APWMPOL")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0c)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$198, DW_AT_name("CTRFILTRESET")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$198, DW_AT_decl_column(0x0c)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$199, DW_AT_name("DMAEVTSEL")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$199, DW_AT_bit_size(0x02)
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0c)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$200, DW_AT_name("MODCNTRSTS")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$200, DW_AT_bit_size(0x02)
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x60)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$37, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("ECCTL2_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$201, DW_AT_name("all")
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x64)
	.dwattr $C$DW$201, DW_AT_decl_column(0x0d)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$202, DW_AT_name("bit")
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x65)
	.dwattr $C$DW$202, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("ECEINT_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$203, DW_AT_name("rsvd1")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x69)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0c)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$204, DW_AT_name("CEVT1")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0c)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$205, DW_AT_name("CEVT2")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0c)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$206, DW_AT_name("CEVT3")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0c)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$207, DW_AT_name("CEVT4")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0c)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$208, DW_AT_name("CTROVF")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0c)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$209, DW_AT_name("CTR_EQ_PRD")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0c)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$210, DW_AT_name("CTR_EQ_CMP")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x70)
	.dwattr $C$DW$210, DW_AT_decl_column(0x0c)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$211, DW_AT_name("rsvd2")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x71)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0c)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$212, DW_AT_name("rsvd3")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$212, DW_AT_bit_size(0x07)
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x72)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("ECEINT_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$213, DW_AT_name("all")
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x76)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0d)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$214, DW_AT_name("bit")
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x77)
	.dwattr $C$DW$214, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$40, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("ECFLG_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$215, DW_AT_name("INT")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0c)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$216, DW_AT_name("CEVT1")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0c)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$217, DW_AT_name("CEVT2")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0c)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$218, DW_AT_name("CEVT3")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0c)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$219, DW_AT_name("CEVT4")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0c)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$220, DW_AT_name("CTROVF")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x80)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0c)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$221, DW_AT_name("CTR_PRD")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x81)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0c)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$222, DW_AT_name("CTR_CMP")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0x82)
	.dwattr $C$DW$222, DW_AT_decl_column(0x0c)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$223, DW_AT_name("rsvd1")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x83)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0c)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$224, DW_AT_name("rsvd2")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$224, DW_AT_bit_size(0x07)
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x84)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$41, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("ECFLG_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$225, DW_AT_name("all")
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0x88)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0d)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$226, DW_AT_name("bit")
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0x89)
	.dwattr $C$DW$226, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$42, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("ECFRC_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$227, DW_AT_name("rsvd1")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$227, DW_AT_decl_column(0x0c)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$228, DW_AT_name("CEVT1")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0c)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$229, DW_AT_name("CEVT2")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0c)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$230, DW_AT_name("CEVT3")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0c)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$231, DW_AT_name("CEVT4")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0c)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$232, DW_AT_name("CTROVF")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$232, DW_AT_decl_column(0x0c)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$233, DW_AT_name("CTR_PRD")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0c)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$234, DW_AT_name("CTR_CMP")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$234, DW_AT_decl_column(0x0c)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$235, DW_AT_name("rsvd2")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$235, DW_AT_decl_column(0x0c)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$236, DW_AT_name("rsvd3")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$236, DW_AT_bit_size(0x07)
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$236, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("ECFRC_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$237, DW_AT_name("all")
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0xac)
	.dwattr $C$DW$237, DW_AT_decl_column(0x0d)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$238, DW_AT_name("bit")
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0xad)
	.dwattr $C$DW$238, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x38)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$239, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$239, DW_AT_decl_column(0x2e)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$240, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x110)
	.dwattr $C$DW$240, DW_AT_decl_column(0x2e)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$241, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x111)
	.dwattr $C$DW$241, DW_AT_decl_column(0x2e)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$242, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x112)
	.dwattr $C$DW$242, DW_AT_decl_column(0x2e)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$243, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x113)
	.dwattr $C$DW$243, DW_AT_decl_column(0x2e)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$244, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x114)
	.dwattr $C$DW$244, DW_AT_decl_column(0x2e)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$245, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x115)
	.dwattr $C$DW$245, DW_AT_decl_column(0x2e)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$246, DW_AT_name("QUTMR")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x116)
	.dwattr $C$DW$246, DW_AT_decl_column(0x2e)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$247, DW_AT_name("QUPRD")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x117)
	.dwattr $C$DW$247, DW_AT_decl_column(0x2e)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$248, DW_AT_name("QWDTMR")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x118)
	.dwattr $C$DW$248, DW_AT_decl_column(0x2e)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$249, DW_AT_name("QWDPRD")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x119)
	.dwattr $C$DW$249, DW_AT_decl_column(0x2e)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$250, DW_AT_name("QDECCTL")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$250, DW_AT_decl_column(0x2e)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$251, DW_AT_name("QEPCTL")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$251, DW_AT_decl_column(0x2e)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$252, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$252, DW_AT_decl_column(0x2e)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$253, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$253, DW_AT_decl_column(0x2e)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$254, DW_AT_name("QEINT")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$254, DW_AT_decl_column(0x2e)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$255, DW_AT_name("QFLG")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$255, DW_AT_decl_column(0x2e)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$256, DW_AT_name("QCLR")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x120)
	.dwattr $C$DW$256, DW_AT_decl_column(0x2e)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$257, DW_AT_name("QFRC")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x121)
	.dwattr $C$DW$257, DW_AT_decl_column(0x2e)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$258, DW_AT_name("QEPSTS")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x122)
	.dwattr $C$DW$258, DW_AT_decl_column(0x2e)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$259, DW_AT_name("QCTMR")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x123)
	.dwattr $C$DW$259, DW_AT_decl_column(0x2e)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$260, DW_AT_name("QCPRD")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x124)
	.dwattr $C$DW$260, DW_AT_decl_column(0x2e)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$261, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x125)
	.dwattr $C$DW$261, DW_AT_decl_column(0x2e)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$262, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x126)
	.dwattr $C$DW$262, DW_AT_decl_column(0x2e)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$263, DW_AT_name("rsvd1")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x127)
	.dwattr $C$DW$263, DW_AT_decl_column(0x2e)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$264, DW_AT_name("REV")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x128)
	.dwattr $C$DW$264, DW_AT_decl_column(0x2e)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$265, DW_AT_name("QEPSTROBESEL")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x129)
	.dwattr $C$DW$265, DW_AT_decl_column(0x2e)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$266, DW_AT_name("QMACTRL")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$266, DW_AT_decl_column(0x2e)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$267, DW_AT_name("QEPSRCSEL")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$267, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$83, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$268	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$83)

$C$DW$T$92	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$268)

	.dwendtag $C$DW$TU$92


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$269, DW_AT_name("UPPS")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$269, DW_AT_bit_size(0x04)
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0c)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$270, DW_AT_name("CCPS")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$270, DW_AT_bit_size(0x03)
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$270, DW_AT_decl_column(0x0c)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$271, DW_AT_name("rsvd1")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$271, DW_AT_bit_size(0x08)
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x60)
	.dwattr $C$DW$271, DW_AT_decl_column(0x0c)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$272, DW_AT_name("CEN")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x61)
	.dwattr $C$DW$272, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$273, DW_AT_name("all")
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x65)
	.dwattr $C$DW$273, DW_AT_decl_column(0x0d)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$274, DW_AT_name("bit")
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x66)
	.dwattr $C$DW$274, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$275, DW_AT_name("INT")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$275, DW_AT_decl_column(0x0c)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$276, DW_AT_name("PCE")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$276, DW_AT_decl_column(0x0c)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$277, DW_AT_name("PHE")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$277, DW_AT_decl_column(0x0c)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$278, DW_AT_name("QDC")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$278, DW_AT_decl_column(0x0c)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$279, DW_AT_name("WTO")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$279, DW_AT_decl_column(0x0c)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$280, DW_AT_name("PCU")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$280, DW_AT_decl_column(0x0c)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$281, DW_AT_name("PCO")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0c)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$282, DW_AT_name("PCR")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$282, DW_AT_decl_column(0x0c)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$283, DW_AT_name("PCM")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0xab)
	.dwattr $C$DW$283, DW_AT_decl_column(0x0c)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$284, DW_AT_name("SEL")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0xac)
	.dwattr $C$DW$284, DW_AT_decl_column(0x0c)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$285, DW_AT_name("IEL")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0xad)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0c)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$286, DW_AT_name("UTO")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0xae)
	.dwattr $C$DW$286, DW_AT_decl_column(0x0c)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$287, DW_AT_name("QMAE")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$287, DW_AT_decl_column(0x0c)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$288, DW_AT_name("rsvd1")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$288, DW_AT_bit_size(0x03)
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$288, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$45, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$289, DW_AT_name("all")
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$289, DW_AT_decl_column(0x0d)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$290, DW_AT_name("bit")
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$290, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$46, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$291, DW_AT_name("QIDIRE")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x37)
	.dwattr $C$DW$291, DW_AT_decl_column(0x0c)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$292, DW_AT_name("rsvd1")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$292, DW_AT_bit_size(0x04)
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x38)
	.dwattr $C$DW$292, DW_AT_decl_column(0x0c)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$293, DW_AT_name("QSP")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x39)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0c)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$294, DW_AT_name("QIP")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$294, DW_AT_decl_column(0x0c)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$295, DW_AT_name("QBP")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0c)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$296, DW_AT_name("QAP")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0c)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$297, DW_AT_name("IGATE")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$297, DW_AT_decl_column(0x0c)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$298, DW_AT_name("SWAP")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0c)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$299, DW_AT_name("XCR")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$299, DW_AT_decl_column(0x0c)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$300, DW_AT_name("SPSEL")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x40)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0c)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$301, DW_AT_name("SOEN")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x41)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0c)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$302, DW_AT_name("QSRC")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$302, DW_AT_bit_size(0x02)
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x42)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$60, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$303, DW_AT_name("all")
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x46)
	.dwattr $C$DW$303, DW_AT_decl_column(0x0d)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$304, DW_AT_name("bit")
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x47)
	.dwattr $C$DW$304, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$61, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$305, DW_AT_name("rsvd1")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x77)
	.dwattr $C$DW$305, DW_AT_decl_column(0x0c)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$306, DW_AT_name("PCE")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x78)
	.dwattr $C$DW$306, DW_AT_decl_column(0x0c)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$307, DW_AT_name("QPE")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x79)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0c)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$308, DW_AT_name("QDC")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$308, DW_AT_decl_column(0x0c)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$309, DW_AT_name("WTO")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$309, DW_AT_decl_column(0x0c)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$310, DW_AT_name("PCU")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$310, DW_AT_decl_column(0x0c)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$311, DW_AT_name("PCO")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$311, DW_AT_decl_column(0x0c)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$312, DW_AT_name("PCR")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0c)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$313, DW_AT_name("PCM")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0c)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$314, DW_AT_name("SEL")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x80)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0c)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$315, DW_AT_name("IEL")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x81)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0c)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$316, DW_AT_name("UTO")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x82)
	.dwattr $C$DW$316, DW_AT_decl_column(0x0c)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$317, DW_AT_name("QMAE")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x83)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0c)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$318, DW_AT_name("rsvd2")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$318, DW_AT_bit_size(0x03)
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x84)
	.dwattr $C$DW$318, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$319, DW_AT_name("all")
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x88)
	.dwattr $C$DW$319, DW_AT_decl_column(0x0d)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$320, DW_AT_name("bit")
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x89)
	.dwattr $C$DW$320, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$63, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$321, DW_AT_name("WDE")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$321, DW_AT_decl_column(0x0c)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$322, DW_AT_name("UTE")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$322, DW_AT_decl_column(0x0c)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$323, DW_AT_name("QCLM")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$323, DW_AT_decl_column(0x0c)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$324, DW_AT_name("QPEN")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$324, DW_AT_decl_column(0x0c)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$325, DW_AT_name("IEL")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$325, DW_AT_bit_size(0x02)
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$325, DW_AT_decl_column(0x0c)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$326, DW_AT_name("SEL")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x50)
	.dwattr $C$DW$326, DW_AT_decl_column(0x0c)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$327, DW_AT_name("SWI")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x51)
	.dwattr $C$DW$327, DW_AT_decl_column(0x0c)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$328, DW_AT_name("IEI")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$328, DW_AT_bit_size(0x02)
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x52)
	.dwattr $C$DW$328, DW_AT_decl_column(0x0c)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$329, DW_AT_name("SEI")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$329, DW_AT_bit_size(0x02)
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x53)
	.dwattr $C$DW$329, DW_AT_decl_column(0x0c)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$330, DW_AT_name("PCRM")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$330, DW_AT_bit_size(0x02)
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x54)
	.dwattr $C$DW$330, DW_AT_decl_column(0x0c)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$331, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$331, DW_AT_bit_size(0x02)
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x55)
	.dwattr $C$DW$331, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$332, DW_AT_name("all")
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x59)
	.dwattr $C$DW$332, DW_AT_decl_column(0x0d)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$333, DW_AT_name("bit")
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$333, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$65, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("QEPSRCSEL_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$334, DW_AT_name("QEPASEL")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$334, DW_AT_bit_size(0x04)
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x102)
	.dwattr $C$DW$334, DW_AT_decl_column(0x0c)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$335, DW_AT_name("QEPBSEL")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$335, DW_AT_bit_size(0x04)
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x103)
	.dwattr $C$DW$335, DW_AT_decl_column(0x0c)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$336, DW_AT_name("QEPISEL")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$336, DW_AT_bit_size(0x04)
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x104)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0c)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$337, DW_AT_name("QEPSSEL")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$337, DW_AT_bit_size(0x04)
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x105)
	.dwattr $C$DW$337, DW_AT_decl_column(0x0c)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$338, DW_AT_name("rsvd1")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$338, DW_AT_bit_size(0x10)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x106)
	.dwattr $C$DW$338, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$66, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("QEPSRCSEL_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$339, DW_AT_name("all")
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$339, DW_AT_decl_column(0x0d)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$340, DW_AT_name("bit")
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$340, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$67, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x109)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("QEPSTROBESEL_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$341, DW_AT_name("STROBESEL")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$341, DW_AT_bit_size(0x02)
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xec)
	.dwattr $C$DW$341, DW_AT_decl_column(0x0c)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$342, DW_AT_name("rsvd1")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$342, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xed)
	.dwattr $C$DW$342, DW_AT_decl_column(0x0c)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$343, DW_AT_name("rsvd2")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$343, DW_AT_bit_size(0x10)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xee)
	.dwattr $C$DW$343, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$68, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("QEPSTROBESEL_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$344, DW_AT_name("all")
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$344, DW_AT_decl_column(0x0d)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$345, DW_AT_name("bit")
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$345, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$69, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$346, DW_AT_name("PCEF")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0c)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$347, DW_AT_name("FIMF")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0c)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$348, DW_AT_name("CDEF")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0c)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$349, DW_AT_name("COEF")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0c)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$350, DW_AT_name("QDLF")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0c)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$351, DW_AT_name("QDF")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$352, DW_AT_name("FIDF")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0c)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$353, DW_AT_name("UPEVNT")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0c)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$354, DW_AT_name("rsvd1")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$354, DW_AT_bit_size(0x08)
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$355, DW_AT_name("all")
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$355, DW_AT_decl_column(0x0d)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$356, DW_AT_name("bit")
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$356, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$71, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$357, DW_AT_name("INT")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$358, DW_AT_name("PCE")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$359, DW_AT_name("PHE")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$360, DW_AT_name("QDC")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x90)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0c)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$361, DW_AT_name("WTO")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x91)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0c)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$362, DW_AT_name("PCU")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x92)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0c)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$363, DW_AT_name("PCO")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x93)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$364, DW_AT_name("PCR")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x94)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$365, DW_AT_name("PCM")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x95)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0c)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$366, DW_AT_name("SEL")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x96)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0c)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$367, DW_AT_name("IEL")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x97)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$368, DW_AT_name("UTO")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x98)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$369, DW_AT_name("QMAE")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x99)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$370, DW_AT_name("rsvd1")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$370, DW_AT_bit_size(0x03)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$371, DW_AT_name("all")
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0d)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$372, DW_AT_name("bit")
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$372, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$75, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$373, DW_AT_name("rsvd1")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$374, DW_AT_name("PCE")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0xba)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$375, DW_AT_name("PHE")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$376, DW_AT_name("QDC")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$377, DW_AT_name("WTO")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0c)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$378, DW_AT_name("PCU")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0c)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$379, DW_AT_name("PCO")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0c)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$380, DW_AT_name("PCR")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$381, DW_AT_name("PCM")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$382, DW_AT_name("SEL")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$383, DW_AT_name("IEL")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$384, DW_AT_name("UTO")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$385, DW_AT_name("QMAE")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0c)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$386, DW_AT_name("rsvd2")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$386, DW_AT_bit_size(0x03)
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$76, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$387, DW_AT_name("all")
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0xca)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0d)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$388, DW_AT_name("bit")
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$388, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$77, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("QMACTRL_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$389, DW_AT_name("MODE")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$389, DW_AT_bit_size(0x03)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$390, DW_AT_name("rsvd1")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$390, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$391, DW_AT_name("rsvd2")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$391, DW_AT_bit_size(0x10)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$78, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("QMACTRL_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$392, DW_AT_name("all")
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0d)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$393, DW_AT_name("bit")
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$393, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$79, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$394, DW_AT_name("PCSPW")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$394, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$394, DW_AT_decl_column(0x0c)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$395, DW_AT_name("PCE")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0c)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$396, DW_AT_name("PCPOL")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$397, DW_AT_name("PCLOAD")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$398, DW_AT_name("PCSHDW")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$80, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$399, DW_AT_name("all")
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x72)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0d)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$400, DW_AT_name("bit")
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x73)
	.dwattr $C$DW$400, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$81, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("REV_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$401, DW_AT_name("MAJOR")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$401, DW_AT_bit_size(0x03)
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0c)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$402, DW_AT_name("MINOR")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$402, DW_AT_bit_size(0x03)
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$403, DW_AT_name("rsvd1")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$403, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$404, DW_AT_name("rsvd2")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$404, DW_AT_bit_size(0x10)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("REV_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x02)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$405, DW_AT_name("all")
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0d)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$406, DW_AT_name("bit")
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$406, DW_AT_decl_column(0x17)

	.dwattr $C$DW$T$73, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_eqep.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$4	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$4
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$4


$C$DW$TU$5	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$5
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$5


$C$DW$TU$6	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$6
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$6


$C$DW$TU$7	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$7
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$7


$C$DW$TU$8	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$8
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$8


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("Uint16")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_device.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x119)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$22


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x06)
$C$DW$407	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$407, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x04)
$C$DW$408	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$408, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x0f)
$C$DW$409	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$409, DW_AT_upper_bound(0x0e)

	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$10	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$10
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$10


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$11


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x04)
$C$DW$410	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$410, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x0c)
$C$DW$411	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$411, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("Uint32")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$26, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_device.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1f)

	.dwendtag $C$DW$TU$26


$C$DW$TU$14	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$14
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$14


$C$DW$TU$15	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$15
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$15


$C$DW$TU$16	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$16
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$16


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18

