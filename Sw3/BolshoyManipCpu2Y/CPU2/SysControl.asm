;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.5.LTS *
;* Date/Time created: Mon Jul  4 19:16:24 2022                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Drivers/SysControl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw1p5\BolshoyManipCpu2\CPU2")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$1, DW_AT_linkage_name("Flash_initModule")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x656)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$200)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$200)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$202)

	.dwendtag $C$DW$1

	.global	||WatchDogKickPermission||
	.bss	||WatchDogKickPermission||,1,1,0
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("WatchDogKickPermission")
	.dwattr $C$DW$5, DW_AT_linkage_name("WatchDogKickPermission")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||WatchDogKickPermission||]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x27)
	.dwattr $C$DW$5, DW_AT_decl_column(0x07)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("Flash0EccRegs")
	.dwattr $C$DW$6, DW_AT_linkage_name("Flash0EccRegs")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x27)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("WdRegs")
	.dwattr $C$DW$7, DW_AT_linkage_name("WdRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x81)
	.dwattr $C$DW$7, DW_AT_decl_column(0x20)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("DcsmZ2Regs")
	.dwattr $C$DW$8, DW_AT_linkage_name("DcsmZ2Regs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x397)
	.dwattr $C$DW$8, DW_AT_decl_column(0x25)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("ClkCfgRegs")
	.dwattr $C$DW$9, DW_AT_linkage_name("ClkCfgRegs")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0xcb4)
	.dwattr $C$DW$9, DW_AT_decl_column(0x25)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("DcsmZ1Regs")
	.dwattr $C$DW$10, DW_AT_linkage_name("DcsmZ1Regs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x396)
	.dwattr $C$DW$10, DW_AT_decl_column(0x25)

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("Flash0CtrlRegs")
	.dwattr $C$DW$11, DW_AT_linkage_name("Flash0CtrlRegs")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$11, DW_AT_decl_column(0x28)

	.sblock	".bss"
;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-c2000_20.2.5.LTS\bin\acia2000.exe -@C:\\Users\\User\\AppData\\Local\\Temp\\{5D81FF87-5618-4E47-B87B-9E5887E30202} 
	.sect	".TI.ramfunc:InitFlash_Bank0"
	.clink
	.global	||InitFlash_Bank0||

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("InitFlash_Bank0")
	.dwattr $C$DW$12, DW_AT_low_pc(||InitFlash_Bank0||)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_linkage_name("InitFlash_Bank0")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x54)
	.dwattr $C$DW$12, DW_AT_decl_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 85,column 1,is_stmt,address ||InitFlash_Bank0||,isa 0

	.dwfde $C$DW$CIE, ||InitFlash_Bank0||

;***************************************************************
;* FNAME: InitFlash_Bank0               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||InitFlash_Bank0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 86,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 107,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+36 ; [CPU_ARAU] 
        OR        @$BLOCKED(||Flash0CtrlRegs||)+36,#0x0001 ; [CPU_ALU] |107| 
	.dwpsn	file "../Drivers/SysControl.c",line 108,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||Flash0CtrlRegs||)+32,#0x0003 ; [CPU_ALU] |108| 
	.dwpsn	file "../Drivers/SysControl.c",line 113,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+384 ; [CPU_ARAU] 
        AND       @$BLOCKED(||Flash0CtrlRegs||)+384,#0xfffd ; [CPU_ALU] |113| 
	.dwpsn	file "../Drivers/SysControl.c",line 114,column 5,is_stmt,isa 0
        AND       @$BLOCKED(||Flash0CtrlRegs||)+384,#0xfffe ; [CPU_ALU] |114| 
	.dwpsn	file "../Drivers/SysControl.c",line 125,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs|| ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||Flash0CtrlRegs||),#0xf0ff ; [CPU_ALU] |125| 
        OR        AL,#0x0300            ; [CPU_ALU] |125| 
        MOV       @$BLOCKED(||Flash0CtrlRegs||),AL ; [CPU_ALU] |125| 
	.dwpsn	file "../Drivers/SysControl.c",line 140,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+384 ; [CPU_ARAU] 
        OR        @$BLOCKED(||Flash0CtrlRegs||)+384,#0x0002 ; [CPU_ALU] |140| 
	.dwpsn	file "../Drivers/SysControl.c",line 141,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||Flash0CtrlRegs||)+384,#0x0001 ; [CPU_ALU] |141| 
	.dwpsn	file "../Drivers/SysControl.c",line 147,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0EccRegs|| ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||Flash0EccRegs||),#0xfff0 ; [CPU_ALU] |147| 
        ORB       AL,#0x0a              ; [CPU_ALU] |147| 
        MOV       @$BLOCKED(||Flash0EccRegs||),AL ; [CPU_ALU] |147| 
	.dwpsn	file "../Drivers/SysControl.c",line 149,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 155,column 5,is_stmt,isa 0
 RPT #7 || NOP
	.dwpsn	file "../Drivers/SysControl.c",line 156,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x9c)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".TI.ramfunc:FlashOff_Bank0"
	.clink
	.global	||FlashOff_Bank0||

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("FlashOff_Bank0")
	.dwattr $C$DW$14, DW_AT_low_pc(||FlashOff_Bank0||)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_linkage_name("FlashOff_Bank0")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 176,column 1,is_stmt,address ||FlashOff_Bank0||,isa 0

	.dwfde $C$DW$CIE, ||FlashOff_Bank0||

;***************************************************************
;* FNAME: FlashOff_Bank0                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FlashOff_Bank0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 177,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 190,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+32 ; [CPU_ARAU] 
        AND       @$BLOCKED(||Flash0CtrlRegs||)+32,#0xfffc ; [CPU_ALU] |190| 
	.dwpsn	file "../Drivers/SysControl.c",line 195,column 5,is_stmt,isa 0
        AND       @$BLOCKED(||Flash0CtrlRegs||)+36,#0xfffe ; [CPU_ALU] |195| 
	.dwpsn	file "../Drivers/SysControl.c",line 197,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 198,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xc6)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".TI.ramfunc:InitFlash"
	.clink
	.global	||InitFlash||

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("InitFlash")
	.dwattr $C$DW$16, DW_AT_low_pc(||InitFlash||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("InitFlash")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl.c",line 212,column 1,is_stmt,address ||InitFlash||,isa 0

	.dwfde $C$DW$CIE, ||InitFlash||

;***************************************************************
;* FNAME: InitFlash                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||InitFlash||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Drivers/SysControl.c",line 213,column 5,is_stmt,isa 0
        MOVL      XAR4,#391936          ; [CPU_ARAU] |213| 
        MOVL      XAR5,#391168          ; [CPU_ARAU] |213| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |213| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |213| 
        MOVB      XAR4,#3               ; [CPU_ALU] |213| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #||Flash_initModule|| ; [CPU_ALU] |213| 
        ; call occurs [#||Flash_initModule||] ; [] |213| 
	.dwpsn	file "../Drivers/SysControl.c",line 214,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xd6)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:KickDog"
	.clink
	.global	||KickDog||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("KickDog")
	.dwattr $C$DW$19, DW_AT_low_pc(||KickDog||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("KickDog")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x137)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 312,column 1,is_stmt,address ||KickDog||,isa 0

	.dwfde $C$DW$CIE, ||KickDog||

;***************************************************************
;* FNAME: KickDog                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||KickDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 313,column 5,is_stmt,isa 0
        MOVW      DP,#||WatchDogKickPermission|| ; [CPU_ARAU] 
        MOV       AL,@||WatchDogKickPermission|| ; [CPU_ALU] |313| 
        CMPB      AL,#1                 ; [CPU_ALU] |313| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |313| 
        ; branchcc occurs ; [] |313| 
	.dwpsn	file "../Drivers/SysControl.c",line 315,column 9,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 316,column 9,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+37     ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |316| 
        ORB       AL,#0x55              ; [CPU_ALU] |316| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |316| 
	.dwpsn	file "../Drivers/SysControl.c",line 317,column 9,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |317| 
        ORB       AL,#0xaa              ; [CPU_ALU] |317| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |317| 
	.dwpsn	file "../Drivers/SysControl.c",line 318,column 9,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 319,column 9,is_stmt,isa 0
        MOVW      DP,#||WatchDogKickPermission|| ; [CPU_ARAU] 
        MOV       @||WatchDogKickPermission||,#0 ; [CPU_ALU] |319| 
	.dwpsn	file "../Drivers/SysControl.c",line 321,column 1,is_stmt,isa 0
||$C$L1||:    
        SPM       #0                    ; [CPU_ALU] 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x141)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:DisableDog"
	.clink
	.global	||DisableDog||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("DisableDog")
	.dwattr $C$DW$21, DW_AT_low_pc(||DisableDog||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("DisableDog")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$21, DW_AT_decl_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl.c",line 336,column 1,is_stmt,address ||DisableDog||,isa 0

	.dwfde $C$DW$CIE, ||DisableDog||

;***************************************************************
;* FNAME: DisableDog                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||DisableDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("temp")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../Drivers/SysControl.c",line 342,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 343,column 5,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+41     ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||WdRegs||)+41 ; [CPU_ALU] |343| 
        ANDB      AL,#0x07              ; [CPU_ALU] |343| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |343| 
	.dwpsn	file "../Drivers/SysControl.c",line 344,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |344| 
        ORB       AL,#0x68              ; [CPU_ALU] |344| 
        MOV       @$BLOCKED(||WdRegs||)+41,AL ; [CPU_ALU] |344| 
	.dwpsn	file "../Drivers/SysControl.c",line 345,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 346,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:EnableDog"
	.clink
	.global	||EnableDog||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("EnableDog")
	.dwattr $C$DW$24, DW_AT_low_pc(||EnableDog||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("EnableDog")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x160)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl.c",line 353,column 1,is_stmt,address ||EnableDog||,isa 0

	.dwfde $C$DW$CIE, ||EnableDog||

;***************************************************************
;* FNAME: EnableDog                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||EnableDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("temp")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../Drivers/SysControl.c",line 355,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 356,column 5,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+42     ; [CPU_ARAU] 
        MOV       @$BLOCKED(||WdRegs||)+42,#0 ; [CPU_ALU] |356| 
	.dwpsn	file "../Drivers/SysControl.c",line 357,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |357| 
        ORB       AL,#0x55              ; [CPU_ALU] |357| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |357| 
	.dwpsn	file "../Drivers/SysControl.c",line 358,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |358| 
        ORB       AL,#0xaa              ; [CPU_ALU] |358| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |358| 
	.dwpsn	file "../Drivers/SysControl.c",line 360,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||WdRegs||)+41 ; [CPU_ALU] |360| 
        ANDB      AL,#0x07              ; [CPU_ALU] |360| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |360| 
	.dwpsn	file "../Drivers/SysControl.c",line 361,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |361| 
        ORB       AL,#0x28              ; [CPU_ALU] |361| 
        MOV       @$BLOCKED(||WdRegs||)+41,AL ; [CPU_ALU] |361| 
	.dwpsn	file "../Drivers/SysControl.c",line 362,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 363,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x16b)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:ResetByDog"
	.clink
	.global	||ResetByDog||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("ResetByDog")
	.dwattr $C$DW$27, DW_AT_low_pc(||ResetByDog||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("ResetByDog")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x171)
	.dwattr $C$DW$27, DW_AT_decl_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl.c",line 370,column 1,is_stmt,address ||ResetByDog||,isa 0

	.dwfde $C$DW$CIE, ||ResetByDog||

;***************************************************************
;* FNAME: ResetByDog                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||ResetByDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("temp")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../Drivers/SysControl.c",line 373,column 9,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 376,column 9,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+41     ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||WdRegs||)+41 ; [CPU_ALU] |376| 
        ANDB      AL,#0x07              ; [CPU_ALU] |376| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |376| 
	.dwpsn	file "../Drivers/SysControl.c",line 377,column 9,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |377| 
        ORB       AL,#0x20              ; [CPU_ALU] |377| 
        MOV       @$BLOCKED(||WdRegs||)+41,AL ; [CPU_ALU] |377| 
	.dwpsn	file "../Drivers/SysControl.c",line 379,column 9,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 380,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x17c)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:SysXtalOscSel"
	.clink
	.global	||SysXtalOscSel||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("SysXtalOscSel")
	.dwattr $C$DW$30, DW_AT_low_pc(||SysXtalOscSel||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("SysXtalOscSel")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x181)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 386,column 1,is_stmt,address ||SysXtalOscSel||,isa 0

	.dwfde $C$DW$CIE, ||SysXtalOscSel||

;***************************************************************
;* FNAME: SysXtalOscSel                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysXtalOscSel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 387,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 388,column 5,is_stmt,isa 0
        MOVW      DP,#||ClkCfgRegs||+8  ; [CPU_ARAU] 
        AND       @$BLOCKED(||ClkCfgRegs||)+8,#0xffef ; [CPU_ALU] |388| 
	.dwpsn	file "../Drivers/SysControl.c",line 389,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||ClkCfgRegs||)+8,#0xfffc ; [CPU_ALU] |389| 
        ORB       AL,#0x01              ; [CPU_ALU] |389| 
        MOV       @$BLOCKED(||ClkCfgRegs||)+8,AL ; [CPU_ALU] |389| 
	.dwpsn	file "../Drivers/SysControl.c",line 390,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 391,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x187)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:ServiceDog"
	.clink
	.global	||ServiceDog||

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("ServiceDog")
	.dwattr $C$DW$32, DW_AT_low_pc(||ServiceDog||)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_linkage_name("ServiceDog")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 399,column 1,is_stmt,address ||ServiceDog||,isa 0

	.dwfde $C$DW$CIE, ||ServiceDog||

;***************************************************************
;* FNAME: ServiceDog                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||ServiceDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 400,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 401,column 5,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+37     ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |401| 
        ORB       AL,#0x55              ; [CPU_ALU] |401| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |401| 
	.dwpsn	file "../Drivers/SysControl.c",line 402,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |402| 
        ORB       AL,#0xaa              ; [CPU_ALU] |402| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |402| 
	.dwpsn	file "../Drivers/SysControl.c",line 403,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 404,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x194)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text:GetLcpClk"
	.clink
	.global	||GetLcpClk||

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("GetLcpClk")
	.dwattr $C$DW$34, DW_AT_low_pc(||GetLcpClk||)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_linkage_name("GetLcpClk")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$34, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x2ca)
	.dwattr $C$DW$34, DW_AT_decl_column(0x06)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 715,column 1,is_stmt,address ||GetLcpClk||,isa 0

	.dwfde $C$DW$CIE, ||GetLcpClk||

;***************************************************************
;* FNAME: GetLcpClk                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetLcpClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 716,column 5,is_stmt,isa 0
        MOV       AL,#57600             ; [CPU_ALU] |716| 
        MOV       AH,#1525              ; [CPU_ALU] |716| 
	.dwpsn	file "../Drivers/SysControl.c",line 717,column 1,is_stmt,isa 0
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x2cd)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text:GetPerClk"
	.clink
	.global	||GetPerClk||

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("GetPerClk")
	.dwattr $C$DW$36, DW_AT_low_pc(||GetPerClk||)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_linkage_name("GetPerClk")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$36, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x2d1)
	.dwattr $C$DW$36, DW_AT_decl_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 722,column 1,is_stmt,address ||GetPerClk||,isa 0

	.dwfde $C$DW$CIE, ||GetPerClk||

;***************************************************************
;* FNAME: GetPerClk                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetPerClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 723,column 5,is_stmt,isa 0
        MOV       AL,#49664             ; [CPU_ALU] |723| 
        MOV       AH,#3051              ; [CPU_ALU] |723| 
	.dwpsn	file "../Drivers/SysControl.c",line 724,column 1,is_stmt,isa 0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x2d4)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text:GetPerPWMClk"
	.clink
	.global	||GetPerPWMClk||

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("GetPerPWMClk")
	.dwattr $C$DW$38, DW_AT_low_pc(||GetPerPWMClk||)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_linkage_name("GetPerPWMClk")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$38, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x2d8)
	.dwattr $C$DW$38, DW_AT_decl_column(0x06)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 729,column 1,is_stmt,address ||GetPerPWMClk||,isa 0

	.dwfde $C$DW$CIE, ||GetPerPWMClk||

;***************************************************************
;* FNAME: GetPerPWMClk                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetPerPWMClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 730,column 5,is_stmt,isa 0
        MOV       AL,#49664             ; [CPU_ALU] |730| 
        MOV       AH,#3051              ; [CPU_ALU] |730| 
	.dwpsn	file "../Drivers/SysControl.c",line 731,column 1,is_stmt,isa 0
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x2db)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text:CsmUnlock"
	.clink
	.global	||CsmUnlock||

$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("CsmUnlock")
	.dwattr $C$DW$40, DW_AT_low_pc(||CsmUnlock||)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_linkage_name("CsmUnlock")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_decl_file("../Drivers/SysControl.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0x2e1)
	.dwattr $C$DW$40, DW_AT_decl_column(0x08)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl.c",line 738,column 1,is_stmt,address ||CsmUnlock||,isa 0

	.dwfde $C$DW$CIE, ||CsmUnlock||

;***************************************************************
;* FNAME: CsmUnlock                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||CsmUnlock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl.c",line 746,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl.c",line 747,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |747| 
        MOVW      DP,#||DcsmZ1Regs||+16 ; [CPU_ARAU] 
        SUBB      ACC,#1                ; [CPU_ALU] |747| 
        MOVL      @$BLOCKED(||DcsmZ1Regs||)+16,ACC ; [CPU_ALU] |747| 
	.dwpsn	file "../Drivers/SysControl.c",line 748,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |748| 
        SUBB      ACC,#1                ; [CPU_ALU] |748| 
        MOVL      @$BLOCKED(||DcsmZ1Regs||)+18,ACC ; [CPU_ALU] |748| 
	.dwpsn	file "../Drivers/SysControl.c",line 749,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |749| 
        SUBB      ACC,#1                ; [CPU_ALU] |749| 
        MOVL      @$BLOCKED(||DcsmZ1Regs||)+20,ACC ; [CPU_ALU] |749| 
	.dwpsn	file "../Drivers/SysControl.c",line 750,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |750| 
        SUBB      ACC,#1                ; [CPU_ALU] |750| 
        MOVL      @$BLOCKED(||DcsmZ1Regs||)+22,ACC ; [CPU_ALU] |750| 
	.dwpsn	file "../Drivers/SysControl.c",line 752,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |752| 
        MOVW      DP,#||DcsmZ2Regs||+16 ; [CPU_ARAU] 
        SUBB      ACC,#1                ; [CPU_ALU] |752| 
        MOVL      @$BLOCKED(||DcsmZ2Regs||)+16,ACC ; [CPU_ALU] |752| 
	.dwpsn	file "../Drivers/SysControl.c",line 753,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |753| 
        SUBB      ACC,#1                ; [CPU_ALU] |753| 
        MOVL      @$BLOCKED(||DcsmZ2Regs||)+18,ACC ; [CPU_ALU] |753| 
	.dwpsn	file "../Drivers/SysControl.c",line 754,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |754| 
        SUBB      ACC,#1                ; [CPU_ALU] |754| 
        MOVL      @$BLOCKED(||DcsmZ2Regs||)+20,ACC ; [CPU_ALU] |754| 
	.dwpsn	file "../Drivers/SysControl.c",line 755,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |755| 
        SUBB      ACC,#1                ; [CPU_ALU] |755| 
        MOVL      @$BLOCKED(||DcsmZ2Regs||)+22,ACC ; [CPU_ALU] |755| 
	.dwpsn	file "../Drivers/SysControl.c",line 756,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl.c",line 758,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |758| 
	.dwpsn	file "../Drivers/SysControl.c",line 759,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("../Drivers/SysControl.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x2f7)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Flash_initModule||
	.global	||Flash0EccRegs||
	.global	||WdRegs||
	.global	||DcsmZ2Regs||
	.global	||ClkCfgRegs||
	.global	||DcsmZ1Regs||
	.global	||Flash0CtrlRegs||

;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(0)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(0)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry
	.dwendtag $C$DW$CU


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("AUXCLKDIVSEL_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("AUXPLLDIV")
	.dwattr $C$DW$42, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$42, DW_AT_bit_size(0x03)
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$42, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xef)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0c)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_name("rsvd1")
	.dwattr $C$DW$43, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$43, DW_AT_bit_size(0x05)
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0c)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("MCANCLKDIV")
	.dwattr $C$DW$44, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$44, DW_AT_bit_size(0x05)
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0c)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("rsvd2")
	.dwattr $C$DW$45, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$45, DW_AT_bit_size(0x03)
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0c)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("rsvd3")
	.dwattr $C$DW$46, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$46, DW_AT_bit_size(0x10)
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$20, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xee)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("AUXCLKDIVSEL_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$47, DW_AT_name("all")
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0d)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_name("bit")
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$48, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("AUXPLLCTL1_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("PLLEN")
	.dwattr $C$DW$49, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$49, DW_AT_bit_size(0x01)
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0c)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("PLLCLKEN")
	.dwattr $C$DW$50, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$50, DW_AT_bit_size(0x01)
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$50, DW_AT_decl_column(0x0c)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("VCO_PWDN")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$51, DW_AT_bit_size(0x01)
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$51, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0c)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("AVG_SLIP_FLTR_EN")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$52, DW_AT_bit_size(0x01)
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0c)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("REF_LOST_EN")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$53, DW_AT_bit_size(0x01)
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0xba)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0c)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("rsvd1")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$54, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0c)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("rsvd2")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$55, DW_AT_bit_size(0x10)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$55, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("AUXPLLCTL1_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$56, DW_AT_name("all")
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$56, DW_AT_decl_column(0x0d)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_name("bit")
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$57, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("AUXPLLMULT_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("IMULT")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$58, DW_AT_bit_size(0x08)
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0c)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("FMULT")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$59, DW_AT_bit_size(0x02)
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0c)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("rsvd1")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$60, DW_AT_bit_size(0x02)
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0c)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("rsvd2")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$61, DW_AT_bit_size(0x02)
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0c)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("rsvd3")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$62, DW_AT_bit_size(0x02)
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0c)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("ODIV")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$63, DW_AT_bit_size(0x05)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xca)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0c)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("rsvd4")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$64, DW_AT_bit_size(0x03)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0c)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("REFDIV")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$65, DW_AT_bit_size(0x05)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0c)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("rsvd5")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$66, DW_AT_bit_size(0x03)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("AUXPLLMULT_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x02)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$67, DW_AT_name("all")
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0d)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$68, DW_AT_name("bit")
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$68, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("AUXPLLSTS_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("LOCKS")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$69, DW_AT_decl_column(0x0c)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("SLIPS")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0c)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("QSLIPS")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$71, DW_AT_bit_size(0x01)
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0c)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("REF_LOSTS")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0c)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("rsvd1")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$73, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xda)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0c)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("rsvd2")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$74, DW_AT_bit_size(0x10)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$27, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("AUXPLLSTS_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$75, DW_AT_name("all")
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0d)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$76, DW_AT_name("bit")
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$76, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xde)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("CLKCFGLOCK1_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("CLKSRCCTL1")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x42)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0c)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("CLKSRCCTL2")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$78, DW_AT_bit_size(0x01)
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x43)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0c)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("CLKSRCCTL3")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x44)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0c)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("SYSPLLCTL1")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x45)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0c)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("SYSPLLCTL2")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x46)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0c)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("SYSPLLCTL3")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x47)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0c)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("SYSPLLMULT")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x48)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0c)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("AUXPLLCTL1")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x49)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("rsvd1")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0c)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("rsvd2")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0c)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("AUXPLLMULT")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0c)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("SYSCLKDIVSEL")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0c)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("AUXCLKDIVSEL")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0c)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("PERCLKDIVSEL")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0c)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("rsvd3")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x50)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0c)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("LOSPCP")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x51)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0c)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("XTALCR")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x52)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0c)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("ETHERCATCLKCTL")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x53)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0c)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("CMCLKCTL")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x54)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0c)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("rsvd4")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$96, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x55)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("CLKCFGLOCK1_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$97, DW_AT_name("all")
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x59)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0d)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$98, DW_AT_name("bit")
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$98, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$30, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("CLKSEM_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("SEM")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$99, DW_AT_bit_size(0x02)
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x37)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0c)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("rsvd1")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$100, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x38)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0c)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("KEY")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$101, DW_AT_bit_size(0x10)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x39)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$31, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("CLKSEM_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$102, DW_AT_name("all")
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0d)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$103, DW_AT_name("bit")
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$103, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$32, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("CLKSRCCTL1_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("OSCCLKSRCSEL")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$104, DW_AT_bit_size(0x02)
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0c)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("rsvd1")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0c)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("INTOSC2OFF")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x60)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0c)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("XTALOFF")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x61)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0c)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("rsvd2")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x62)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0c)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("rsvd3")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$109, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x63)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0c)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("rsvd4")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$110, DW_AT_bit_size(0x10)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x64)
	.dwattr $C$DW$110, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$33, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("CLKSRCCTL1_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$111, DW_AT_name("all")
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x68)
	.dwattr $C$DW$111, DW_AT_decl_column(0x0d)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$112, DW_AT_name("bit")
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x69)
	.dwattr $C$DW$112, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$34, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("CLKSRCCTL2_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("AUXOSCCLKSRCSEL")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$113, DW_AT_bit_size(0x02)
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0c)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("CANABCLKSEL")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$114, DW_AT_bit_size(0x02)
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0c)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("CANBBCLKSEL")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$115, DW_AT_bit_size(0x02)
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("rsvd1")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$116, DW_AT_bit_size(0x02)
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x70)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("rsvd2")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$117, DW_AT_bit_size(0x02)
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x71)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("MCANABITCLKSEL")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$118, DW_AT_bit_size(0x02)
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x72)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0c)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("rsvd3")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$119, DW_AT_bit_size(0x04)
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x73)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0c)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("rsvd4")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$120, DW_AT_bit_size(0x10)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x74)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("CLKSRCCTL2_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$121, DW_AT_name("all")
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0x78)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0d)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$122, DW_AT_name("bit")
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x79)
	.dwattr $C$DW$122, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$36, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("CLKSRCCTL3_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("XCLKOUTSEL")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$123, DW_AT_bit_size(0x04)
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0c)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("rsvd1")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$124, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0c)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("rsvd2")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$125, DW_AT_bit_size(0x10)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$37, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("CLKSRCCTL3_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$126, DW_AT_name("all")
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x83)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0d)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$127, DW_AT_name("bit")
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x84)
	.dwattr $C$DW$127, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("CLK_CFG_REGS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x3a)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$128, DW_AT_name("CLKSEM")
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x164)
	.dwattr $C$DW$128, DW_AT_decl_column(0x2e)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$129, DW_AT_name("CLKCFGLOCK1")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x165)
	.dwattr $C$DW$129, DW_AT_decl_column(0x2e)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$130, DW_AT_name("rsvd1")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x166)
	.dwattr $C$DW$130, DW_AT_decl_column(0x2e)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$131, DW_AT_name("CLKSRCCTL1")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x167)
	.dwattr $C$DW$131, DW_AT_decl_column(0x2e)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$132, DW_AT_name("CLKSRCCTL2")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x168)
	.dwattr $C$DW$132, DW_AT_decl_column(0x2e)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$133, DW_AT_name("CLKSRCCTL3")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x169)
	.dwattr $C$DW$133, DW_AT_decl_column(0x2e)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$134, DW_AT_name("SYSPLLCTL1")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$134, DW_AT_decl_column(0x2e)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$135, DW_AT_name("rsvd2")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$135, DW_AT_decl_column(0x2e)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$136, DW_AT_name("SYSPLLMULT")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$136, DW_AT_decl_column(0x2e)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$137, DW_AT_name("SYSPLLSTS")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$137, DW_AT_decl_column(0x2e)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$138, DW_AT_name("AUXPLLCTL1")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$138, DW_AT_decl_column(0x2e)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$139, DW_AT_name("rsvd3")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$139, DW_AT_decl_column(0x2e)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$140, DW_AT_name("AUXPLLMULT")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x170)
	.dwattr $C$DW$140, DW_AT_decl_column(0x2e)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$141, DW_AT_name("AUXPLLSTS")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x171)
	.dwattr $C$DW$141, DW_AT_decl_column(0x2e)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$142, DW_AT_name("SYSCLKDIVSEL")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x172)
	.dwattr $C$DW$142, DW_AT_decl_column(0x2e)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$143, DW_AT_name("AUXCLKDIVSEL")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x173)
	.dwattr $C$DW$143, DW_AT_decl_column(0x2e)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$144, DW_AT_name("PERCLKDIVSEL")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x174)
	.dwattr $C$DW$144, DW_AT_decl_column(0x2e)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$145, DW_AT_name("XCLKOUTDIVSEL")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x175)
	.dwattr $C$DW$145, DW_AT_decl_column(0x2e)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$146, DW_AT_name("rsvd4")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x176)
	.dwattr $C$DW$146, DW_AT_decl_column(0x2e)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$147, DW_AT_name("LOSPCP")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x177)
	.dwattr $C$DW$147, DW_AT_decl_column(0x2e)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$148, DW_AT_name("MCDCR")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x178)
	.dwattr $C$DW$148, DW_AT_decl_column(0x2e)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$149, DW_AT_name("X1CNT")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x179)
	.dwattr $C$DW$149, DW_AT_decl_column(0x2e)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$150, DW_AT_name("XTALCR")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$150, DW_AT_decl_column(0x2e)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$151, DW_AT_name("rsvd5")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$151, DW_AT_decl_column(0x2e)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$152, DW_AT_name("ETHERCATCLKCTL")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$152, DW_AT_decl_column(0x2e)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$153, DW_AT_name("CMCLKCTL")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$153, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$41, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x163)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$179	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$179
$C$DW$154	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$41)

$C$DW$T$179	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$154)

	.dwendtag $C$DW$TU$179


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("CMCLKCTL_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("CMDIVSRCSEL")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x156)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0c)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("CMCLKDIV")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$156, DW_AT_bit_size(0x03)
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x157)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0c)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("ETHDIVSRCSEL")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x158)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0c)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("ETHDIV")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$158, DW_AT_bit_size(0x03)
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x159)
	.dwattr $C$DW$158, DW_AT_decl_column(0x0c)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("rsvd1")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$159, DW_AT_bit_size(0x08)
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("rsvd2")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$160, DW_AT_bit_size(0x10)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$42, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("CMCLKCTL_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$161, DW_AT_name("all")
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0d)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$162, DW_AT_name("bit")
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x160)
	.dwattr $C$DW$162, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("DCSM_Z1_REGS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x3e)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$163, DW_AT_name("Z1_LINKPOINTER")
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$163, DW_AT_decl_column(0x2e)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$164, DW_AT_name("Z1_OTPSECLOCK")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$164, DW_AT_decl_column(0x2e)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$165, DW_AT_name("Z1_JLM_ENABLE")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$165, DW_AT_decl_column(0x2e)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$166, DW_AT_name("Z1_LINKPOINTERERR")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$166, DW_AT_decl_column(0x2e)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$167, DW_AT_name("Z1_GPREG1")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$167, DW_AT_decl_column(0x2e)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$168, DW_AT_name("Z1_GPREG2")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x180)
	.dwattr $C$DW$168, DW_AT_decl_column(0x2e)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$169, DW_AT_name("Z1_GPREG3")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x181)
	.dwattr $C$DW$169, DW_AT_decl_column(0x2e)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$170, DW_AT_name("Z1_GPREG4")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x182)
	.dwattr $C$DW$170, DW_AT_decl_column(0x2e)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$171, DW_AT_name("Z1_CSMKEY0")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x183)
	.dwattr $C$DW$171, DW_AT_decl_column(0x2e)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$172, DW_AT_name("Z1_CSMKEY1")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x184)
	.dwattr $C$DW$172, DW_AT_decl_column(0x2e)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$173, DW_AT_name("Z1_CSMKEY2")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x185)
	.dwattr $C$DW$173, DW_AT_decl_column(0x2e)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$174, DW_AT_name("Z1_CSMKEY3")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x186)
	.dwattr $C$DW$174, DW_AT_decl_column(0x2e)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$175, DW_AT_name("Z1_CR")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x187)
	.dwattr $C$DW$175, DW_AT_decl_column(0x2e)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$176, DW_AT_name("Z1_GRABSECT1R")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x188)
	.dwattr $C$DW$176, DW_AT_decl_column(0x2e)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$177, DW_AT_name("Z1_GRABSECT2R")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x189)
	.dwattr $C$DW$177, DW_AT_decl_column(0x2e)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$178, DW_AT_name("Z1_GRABSECT3R")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$178, DW_AT_decl_column(0x2e)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$179, DW_AT_name("Z1_GRABRAM1R")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$179, DW_AT_decl_column(0x2e)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$180, DW_AT_name("Z1_GRABRAM2R")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$180, DW_AT_decl_column(0x2e)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$181, DW_AT_name("Z1_GRABRAM3R")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$181, DW_AT_decl_column(0x2e)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$182, DW_AT_name("Z1_EXEONLYSECT1R")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$182, DW_AT_decl_column(0x2e)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$183, DW_AT_name("Z1_EXEONLYSECT2R")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$183, DW_AT_decl_column(0x2e)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$184, DW_AT_name("Z1_EXEONLYRAM1R")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x190)
	.dwattr $C$DW$184, DW_AT_decl_column(0x2e)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$185, DW_AT_name("rsvd1")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x191)
	.dwattr $C$DW$185, DW_AT_decl_column(0x2e)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$186, DW_AT_name("Z1_JTAGKEY0")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x192)
	.dwattr $C$DW$186, DW_AT_decl_column(0x2e)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$187, DW_AT_name("Z1_JTAGKEY1")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x193)
	.dwattr $C$DW$187, DW_AT_decl_column(0x2e)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$188, DW_AT_name("Z1_JTAGKEY2")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x194)
	.dwattr $C$DW$188, DW_AT_decl_column(0x2e)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$189, DW_AT_name("Z1_JTAGKEY3")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x195)
	.dwattr $C$DW$189, DW_AT_decl_column(0x2e)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$190, DW_AT_name("Z1_CMACKEY0")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x196)
	.dwattr $C$DW$190, DW_AT_decl_column(0x2e)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$191, DW_AT_name("Z1_CMACKEY1")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x197)
	.dwattr $C$DW$191, DW_AT_decl_column(0x2e)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$192, DW_AT_name("Z1_CMACKEY2")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x198)
	.dwattr $C$DW$192, DW_AT_decl_column(0x2e)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$193, DW_AT_name("Z1_CMACKEY3")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x199)
	.dwattr $C$DW$193, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$180	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$180
$C$DW$194	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$44)

$C$DW$T$180	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$194)

	.dwendtag $C$DW$TU$180


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("DCSM_Z2_REGS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x2c)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$195, DW_AT_name("Z2_LINKPOINTER")
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x2b6)
	.dwattr $C$DW$195, DW_AT_decl_column(0x2e)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$196, DW_AT_name("Z2_OTPSECLOCK")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x2b7)
	.dwattr $C$DW$196, DW_AT_decl_column(0x2e)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$197, DW_AT_name("rsvd1")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x2b8)
	.dwattr $C$DW$197, DW_AT_decl_column(0x2e)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$198, DW_AT_name("Z2_LINKPOINTERERR")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x2b9)
	.dwattr $C$DW$198, DW_AT_decl_column(0x2e)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$199, DW_AT_name("Z2_GPREG1")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x2ba)
	.dwattr $C$DW$199, DW_AT_decl_column(0x2e)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$200, DW_AT_name("Z2_GPREG2")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x2bb)
	.dwattr $C$DW$200, DW_AT_decl_column(0x2e)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$201, DW_AT_name("Z2_GPREG3")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x2bc)
	.dwattr $C$DW$201, DW_AT_decl_column(0x2e)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$202, DW_AT_name("Z2_GPREG4")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x2bd)
	.dwattr $C$DW$202, DW_AT_decl_column(0x2e)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$203, DW_AT_name("Z2_CSMKEY0")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x2be)
	.dwattr $C$DW$203, DW_AT_decl_column(0x2e)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$204, DW_AT_name("Z2_CSMKEY1")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x2bf)
	.dwattr $C$DW$204, DW_AT_decl_column(0x2e)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$205, DW_AT_name("Z2_CSMKEY2")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x2c0)
	.dwattr $C$DW$205, DW_AT_decl_column(0x2e)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$206, DW_AT_name("Z2_CSMKEY3")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x2c1)
	.dwattr $C$DW$206, DW_AT_decl_column(0x2e)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$207, DW_AT_name("Z2_CR")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x2c2)
	.dwattr $C$DW$207, DW_AT_decl_column(0x2e)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$208, DW_AT_name("Z2_GRABSECT1R")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x2c3)
	.dwattr $C$DW$208, DW_AT_decl_column(0x2e)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$209, DW_AT_name("Z2_GRABSECT2R")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x2c4)
	.dwattr $C$DW$209, DW_AT_decl_column(0x2e)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$210, DW_AT_name("Z2_GRABSECT3R")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x2c5)
	.dwattr $C$DW$210, DW_AT_decl_column(0x2e)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$211, DW_AT_name("Z2_GRABRAM1R")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x2c6)
	.dwattr $C$DW$211, DW_AT_decl_column(0x2e)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$212, DW_AT_name("Z2_GRABRAM2R")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x2c7)
	.dwattr $C$DW$212, DW_AT_decl_column(0x2e)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$213, DW_AT_name("Z2_GRABRAM3R")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x2c8)
	.dwattr $C$DW$213, DW_AT_decl_column(0x2e)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$214, DW_AT_name("Z2_EXEONLYSECT1R")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x2c9)
	.dwattr $C$DW$214, DW_AT_decl_column(0x2e)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$215, DW_AT_name("Z2_EXEONLYSECT2R")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x2ca)
	.dwattr $C$DW$215, DW_AT_decl_column(0x2e)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$216, DW_AT_name("Z2_EXEONLYRAM1R")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x2cb)
	.dwattr $C$DW$216, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$45, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x2b5)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$181	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$181
$C$DW$217	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$45)

$C$DW$T$181	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$217)

	.dwendtag $C$DW$TU$181


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("ECC_ENABLE_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("ENABLE")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$218, DW_AT_bit_size(0x04)
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0c)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("rsvd1")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$219, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0c)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("rsvd2")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$220, DW_AT_bit_size(0x10)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$46, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("ECC_ENABLE_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$221, DW_AT_name("all")
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xac)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0d)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$222, DW_AT_name("bit")
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0xad)
	.dwattr $C$DW$222, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$47, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("ERR_CNT_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("ERR_CNT")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$223, DW_AT_bit_size(0x10)
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0c)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("rsvd1")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$224, DW_AT_bit_size(0x10)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$48, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("ERR_CNT_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$225, DW_AT_name("all")
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0d)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$226, DW_AT_name("bit")
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$226, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$49, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("ERR_INTCLR_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("SINGLE_ERR_INTCLR")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x101)
	.dwattr $C$DW$227, DW_AT_decl_column(0x0c)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("UNC_ERR_INTCLR")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x102)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0c)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("rsvd1")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$229, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x103)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0c)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("rsvd2")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$230, DW_AT_bit_size(0x10)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x104)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$50, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("ERR_INTCLR_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$231, DW_AT_name("all")
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x108)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0d)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$232, DW_AT_name("bit")
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x109)
	.dwattr $C$DW$232, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$51, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x107)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("ERR_INTFLG_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("SINGLE_ERR_INTFLG")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0c)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("UNC_ERR_INTFLG")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$234, DW_AT_decl_column(0x0c)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("rsvd1")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$235, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$235, DW_AT_decl_column(0x0c)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("rsvd2")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$236, DW_AT_bit_size(0x10)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$236, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$52, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("ERR_INTFLG_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$237, DW_AT_name("all")
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$237, DW_AT_decl_column(0x0d)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$238, DW_AT_name("bit")
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$238, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$53, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("ERR_POS_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("ERR_POS_L")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$239, DW_AT_bit_size(0x06)
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$239, DW_AT_decl_column(0x0c)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("rsvd1")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$240, DW_AT_bit_size(0x02)
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$240, DW_AT_decl_column(0x0c)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("ERR_TYPE_L")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$241, DW_AT_decl_column(0x0c)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("rsvd2")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$242, DW_AT_bit_size(0x07)
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$242, DW_AT_decl_column(0x0c)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("ERR_POS_H")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$243, DW_AT_bit_size(0x06)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$243, DW_AT_decl_column(0x0c)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("rsvd3")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$244, DW_AT_bit_size(0x02)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$244, DW_AT_decl_column(0x0c)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("ERR_TYPE_H")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$245, DW_AT_decl_column(0x0c)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("rsvd4")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$246, DW_AT_bit_size(0x07)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$246, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$54, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("ERR_POS_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$247, DW_AT_name("all")
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$247, DW_AT_decl_column(0x0d)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$248, DW_AT_name("bit")
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$248, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$55, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("ERR_STATUS_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("FAIL_0_L")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$249, DW_AT_decl_column(0x0c)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("FAIL_1_L")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$250, DW_AT_decl_column(0x0c)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("UNC_ERR_L")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$251, DW_AT_decl_column(0x0c)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("rsvd1")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$252, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$252, DW_AT_decl_column(0x0c)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("FAIL_0_H")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$253, DW_AT_decl_column(0x0c)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("FAIL_1_H")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$254, DW_AT_decl_column(0x0c)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("UNC_ERR_H")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$255, DW_AT_decl_column(0x0c)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("rsvd2")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$256, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$256, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$56, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("ERR_STATUS_CLR_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("FAIL_0_L_CLR")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$257, DW_AT_decl_column(0x0c)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("FAIL_1_L_CLR")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$258, DW_AT_decl_column(0x0c)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("UNC_ERR_L_CLR")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$259, DW_AT_decl_column(0x0c)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("rsvd1")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$260, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$260, DW_AT_decl_column(0x0c)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("FAIL_0_H_CLR")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$261, DW_AT_decl_column(0x0c)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("FAIL_1_H_CLR")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$262, DW_AT_decl_column(0x0c)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("UNC_ERR_H_CLR")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$263, DW_AT_decl_column(0x0c)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("rsvd2")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$264, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$264, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("ERR_STATUS_CLR_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$265, DW_AT_name("all")
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$265, DW_AT_decl_column(0x0d)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$266, DW_AT_name("bit")
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$266, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$58, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("ERR_STATUS_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$267, DW_AT_name("all")
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$267, DW_AT_decl_column(0x0d)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$268, DW_AT_name("bit")
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$268, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$59, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("ERR_THRESHOLD_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("ERR_THRESHOLD")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$269, DW_AT_bit_size(0x10)
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0c)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("rsvd1")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$270, DW_AT_bit_size(0x10)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0xec)
	.dwattr $C$DW$270, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$60, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("ERR_THRESHOLD_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$271, DW_AT_name("all")
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$271, DW_AT_decl_column(0x0d)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$272, DW_AT_name("bit")
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$272, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$61, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0xef)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("ETHERCATCLKCTL_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("DIVSRCSEL")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x148)
	.dwattr $C$DW$273, DW_AT_decl_column(0x0c)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("ECATDIV")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$274, DW_AT_bit_size(0x03)
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x149)
	.dwattr $C$DW$274, DW_AT_decl_column(0x0c)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("rsvd1")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$275, DW_AT_bit_size(0x04)
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$275, DW_AT_decl_column(0x0c)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("PHYCLKEN")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$276, DW_AT_decl_column(0x0c)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("rsvd2")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$277, DW_AT_bit_size(0x07)
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$277, DW_AT_decl_column(0x0c)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("rsvd3")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$278, DW_AT_bit_size(0x10)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$278, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("ETHERCATCLKCTL_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$279, DW_AT_name("all")
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x151)
	.dwattr $C$DW$279, DW_AT_decl_column(0x0d)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$280, DW_AT_name("bit")
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x152)
	.dwattr $C$DW$280, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$63, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("FADDR_TEST_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("rsvd1")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$281, DW_AT_bit_size(0x03)
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0c)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("ADDRL")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$282, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$282, DW_AT_decl_column(0x0c)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("ADDRH")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$283, DW_AT_bit_size(0x06)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$283, DW_AT_decl_column(0x0c)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("rsvd2")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$284, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x110)
	.dwattr $C$DW$284, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("FADDR_TEST_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$285, DW_AT_name("all")
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x114)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0d)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$286, DW_AT_name("bit")
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x115)
	.dwattr $C$DW$286, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$65, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x113)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("FBAC_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("rsvd1")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$287, DW_AT_bit_size(0x08)
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x43)
	.dwattr $C$DW$287, DW_AT_decl_column(0x0c)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("BAGP")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$288, DW_AT_bit_size(0x08)
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x44)
	.dwattr $C$DW$288, DW_AT_decl_column(0x0c)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("rsvd2")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$289, DW_AT_bit_size(0x10)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x45)
	.dwattr $C$DW$289, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$66, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("FBAC_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$290, DW_AT_name("all")
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x49)
	.dwattr $C$DW$290, DW_AT_decl_column(0x0d)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$291, DW_AT_name("bit")
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$291, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$67, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("FBFALLBACK_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("BNKPWR0")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$292, DW_AT_bit_size(0x02)
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$292, DW_AT_decl_column(0x0c)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("rsvd1")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$293, DW_AT_bit_size(0x02)
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0c)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("rsvd2")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$294, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x50)
	.dwattr $C$DW$294, DW_AT_decl_column(0x0c)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("rsvd3")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$295, DW_AT_bit_size(0x10)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x51)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$68, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("FBFALLBACK_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$296, DW_AT_name("all")
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x55)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0d)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$297, DW_AT_name("bit")
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x56)
	.dwattr $C$DW$297, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$69, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("FBPRDY_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x02)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("BANKRDY")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0c)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("rsvd1")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$299, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$299, DW_AT_decl_column(0x0c)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("PUMPRDY")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0c)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("rsvd2")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$301, DW_AT_bit_size(0x10)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("FBPRDY_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x02)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$302, DW_AT_name("all")
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x61)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0d)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$303, DW_AT_name("bit")
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x62)
	.dwattr $C$DW$303, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$71, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("FECC_CTRL_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("ECC_TEST_EN")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x124)
	.dwattr $C$DW$304, DW_AT_decl_column(0x0c)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("ECC_SELECT")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x125)
	.dwattr $C$DW$305, DW_AT_decl_column(0x0c)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("DO_ECC_CALC")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x126)
	.dwattr $C$DW$306, DW_AT_decl_column(0x0c)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("rsvd1")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$307, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x127)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0c)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("rsvd2")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$308, DW_AT_bit_size(0x10)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x128)
	.dwattr $C$DW$308, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("FECC_CTRL_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x02)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$309, DW_AT_name("all")
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$309, DW_AT_decl_column(0x0d)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$310, DW_AT_name("bit")
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$310, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$73, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("FECC_STATUS_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("SINGLE_ERR")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x131)
	.dwattr $C$DW$311, DW_AT_decl_column(0x0c)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("UNC_ERR")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x132)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0c)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("DATA_ERR_POS")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$313, DW_AT_bit_size(0x06)
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x133)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0c)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("ERR_TYPE")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x134)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0c)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("rsvd1")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$315, DW_AT_bit_size(0x07)
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x135)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0c)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("rsvd2")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$316, DW_AT_bit_size(0x10)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x136)
	.dwattr $C$DW$316, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x130)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("FECC_STATUS_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$317, DW_AT_name("all")
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0d)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$318, DW_AT_name("bit")
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$318, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$75, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x139)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("FECC_TEST_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x02)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("ECC")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$319, DW_AT_bit_size(0x08)
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x119)
	.dwattr $C$DW$319, DW_AT_decl_column(0x0c)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("rsvd1")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$320, DW_AT_bit_size(0x08)
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$320, DW_AT_decl_column(0x0c)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("rsvd2")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$321, DW_AT_bit_size(0x10)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$321, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$76, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x118)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("FECC_TEST_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x02)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$322, DW_AT_name("all")
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$322, DW_AT_decl_column(0x0d)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$323, DW_AT_name("bit")
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x120)
	.dwattr $C$DW$323, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$77, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("FLASH_CTRL_REGS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x182)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$324, DW_AT_name("FRDCNTL")
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x99)
	.dwattr $C$DW$324, DW_AT_decl_column(0x2e)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$325, DW_AT_name("rsvd1")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$325, DW_AT_decl_column(0x2e)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$326, DW_AT_name("FBAC")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$326, DW_AT_decl_column(0x2e)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$327, DW_AT_name("FBFALLBACK")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$327, DW_AT_decl_column(0x2e)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$328, DW_AT_name("FBPRDY")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$328, DW_AT_decl_column(0x2e)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$329, DW_AT_name("FPAC1")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$329, DW_AT_decl_column(0x2e)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$330, DW_AT_name("rsvd2")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$330, DW_AT_decl_column(0x2e)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$331, DW_AT_name("FMSTAT")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$331, DW_AT_decl_column(0x2e)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$332, DW_AT_name("rsvd3")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$332, DW_AT_decl_column(0x2e)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$333, DW_AT_name("FRD_INTF_CTRL")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$333, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$80, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$186	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$186
$C$DW$334	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$80)

$C$DW$T$186	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$334)

	.dwendtag $C$DW$TU$186


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("FLASH_ECC_REGS")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x28)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$335, DW_AT_name("ECC_ENABLE")
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$335, DW_AT_decl_column(0x2e)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$336, DW_AT_name("SINGLE_ERR_ADDR_LOW")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x140)
	.dwattr $C$DW$336, DW_AT_decl_column(0x2e)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$337, DW_AT_name("SINGLE_ERR_ADDR_HIGH")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x141)
	.dwattr $C$DW$337, DW_AT_decl_column(0x2e)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$338, DW_AT_name("UNC_ERR_ADDR_LOW")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x142)
	.dwattr $C$DW$338, DW_AT_decl_column(0x2e)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$339, DW_AT_name("UNC_ERR_ADDR_HIGH")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x143)
	.dwattr $C$DW$339, DW_AT_decl_column(0x2e)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$340, DW_AT_name("ERR_STATUS")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x144)
	.dwattr $C$DW$340, DW_AT_decl_column(0x2e)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$341, DW_AT_name("ERR_POS")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x145)
	.dwattr $C$DW$341, DW_AT_decl_column(0x2e)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$342, DW_AT_name("ERR_STATUS_CLR")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x146)
	.dwattr $C$DW$342, DW_AT_decl_column(0x2e)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$343, DW_AT_name("ERR_CNT")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x147)
	.dwattr $C$DW$343, DW_AT_decl_column(0x2e)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$344, DW_AT_name("ERR_THRESHOLD")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x148)
	.dwattr $C$DW$344, DW_AT_decl_column(0x2e)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$345, DW_AT_name("ERR_INTFLG")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x149)
	.dwattr $C$DW$345, DW_AT_decl_column(0x2e)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$346, DW_AT_name("ERR_INTCLR")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$346, DW_AT_decl_column(0x2e)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$347, DW_AT_name("FDATAH_TEST")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$347, DW_AT_decl_column(0x2e)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$348, DW_AT_name("FDATAL_TEST")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$348, DW_AT_decl_column(0x2e)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$349, DW_AT_name("FADDR_TEST")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$349, DW_AT_decl_column(0x2e)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$350, DW_AT_name("FECC_TEST")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$350, DW_AT_decl_column(0x2e)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$351, DW_AT_name("FECC_CTRL")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$351, DW_AT_decl_column(0x2e)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$352, DW_AT_name("FOUTH_TEST")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x150)
	.dwattr $C$DW$352, DW_AT_decl_column(0x2e)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("FOUTL_TEST")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x151)
	.dwattr $C$DW$353, DW_AT_decl_column(0x2e)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$354, DW_AT_name("FECC_STATUS")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x152)
	.dwattr $C$DW$354, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$81, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$187	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$187
$C$DW$355	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$81)

$C$DW$T$187	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$355)

	.dwendtag $C$DW$TU$187


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("FMSTAT_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x02)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("rsvd1")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x72)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0c)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("rsvd2")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x73)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("rsvd3")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x74)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("VOLTSTAT")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x75)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("CSTAT")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x76)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0c)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("INVDAT")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x77)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0c)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("PGM")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x78)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0c)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("ERS")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x79)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("Busy")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("rsvd4")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0c)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("EV")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0c)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("rsvd5")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("PGV")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("rsvd6")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("ILA")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x80)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("rsvd7")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x81)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("rsvd8")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x82)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0c)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("rsvd9")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x83)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("rsvd10")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$374, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x84)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$82, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("FMSTAT_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x02)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$375, DW_AT_name("all")
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x88)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0d)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$376, DW_AT_name("bit")
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x89)
	.dwattr $C$DW$376, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$83, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("FPAC1_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x02)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("PMPPWR")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x66)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0c)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("rsvd1")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$378, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x67)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0c)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("PSLEEP")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$379, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x68)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0c)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("rsvd2")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$380, DW_AT_bit_size(0x04)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x69)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$84, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("FPAC1_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x02)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$381, DW_AT_name("all")
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0d)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$382, DW_AT_name("bit")
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$382, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$85, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("FRDCNTL_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x02)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("rsvd1")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$383, DW_AT_bit_size(0x08)
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x37)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("RWAIT")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$384, DW_AT_bit_size(0x04)
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x38)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("rsvd2")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$385, DW_AT_bit_size(0x04)
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x39)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0c)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("rsvd3")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$386, DW_AT_bit_size(0x10)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$86, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("FRDCNTL_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x02)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$387, DW_AT_name("all")
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0d)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$388, DW_AT_name("bit")
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$388, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$87, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("FRD_INTF_CTRL_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x02)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("PREFETCH_EN")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("DATA_CACHE_EN")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("rsvd1")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$391, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("rsvd2")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$392, DW_AT_bit_size(0x10)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x90)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$88, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("FRD_INTF_CTRL_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x02)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$393, DW_AT_name("all")
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x94)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0d)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$394, DW_AT_name("bit")
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x95)
	.dwattr $C$DW$394, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$89, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("LOSPCP_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x02)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("LSPCLKDIV")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$395, DW_AT_bit_size(0x03)
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x116)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0c)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("rsvd1")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$396, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x117)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("rsvd2")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$397, DW_AT_bit_size(0x10)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x118)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$90, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$90

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("LOSPCP_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$398, DW_AT_name("all")
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0d)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$399, DW_AT_name("bit")
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$399, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$91, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92

$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("MCDCR_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x02)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("MCLKSTS")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x121)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0c)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("MCLKCLR")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x122)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0c)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("MCLKOFF")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x123)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("OSCOFF")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x124)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("rsvd1")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$404, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x125)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("rsvd2")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$405, DW_AT_bit_size(0x10)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x126)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$92, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x120)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$92

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("MCDCR_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$406, DW_AT_name("all")
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0d)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$407, DW_AT_name("bit")
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$407, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$93, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("PERCLKDIVSEL_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x02)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("EPWMCLKDIV")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$408, DW_AT_bit_size(0x02)
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0c)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("rsvd1")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$409, DW_AT_bit_size(0x02)
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0c)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("EMIF1CLKDIV")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("rsvd2")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0xff)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("EMIF2CLKDIV")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x100)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("rsvd3")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$413, DW_AT_bit_size(0x09)
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x101)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("rsvd4")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$414, DW_AT_bit_size(0x10)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x102)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$94, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$94

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("PERCLKDIVSEL_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x02)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$415, DW_AT_name("all")
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x106)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0d)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$416, DW_AT_name("bit")
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x107)
	.dwattr $C$DW$416, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$95, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x105)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96

$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("SCSR_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("WDOVERRIDE")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x37)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0c)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("WDENINT")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x38)
	.dwattr $C$DW$418, DW_AT_decl_column(0x0c)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("WDINTS")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x39)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0c)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("rsvd1")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$420, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$420, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$96, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$96

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("SCSR_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("all")
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0d)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$422, DW_AT_name("bit")
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$422, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$97, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98

$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("SYSCLKDIVSEL_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x02)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("PLLSYSCLKDIV")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$423, DW_AT_bit_size(0x06)
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("rsvd1")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$424, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("rsvd2")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$425, DW_AT_bit_size(0x10)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$98, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$98

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("SYSCLKDIVSEL_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x02)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$426, DW_AT_name("all")
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0xea)
	.dwattr $C$DW$426, DW_AT_decl_column(0x0d)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$427, DW_AT_name("bit")
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$427, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$99, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100

$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("SYSPLLCTL1_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x02)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("PLLEN")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x88)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("PLLCLKEN")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x89)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0c)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("VCO_PWDN")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0c)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("AVG_SLIP_FLTR_EN")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("REF_LOST_EN")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0c)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("rsvd1")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$433, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0c)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("rsvd2")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$434, DW_AT_bit_size(0x10)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$100, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$100

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("SYSPLLCTL1_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x02)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$435, DW_AT_name("all")
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x92)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0d)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$436, DW_AT_name("bit")
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x93)
	.dwattr $C$DW$436, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$101, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("SYSPLLMULT_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x02)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("IMULT")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$437, DW_AT_bit_size(0x08)
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x97)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0c)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("FMULT")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$438, DW_AT_bit_size(0x02)
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x98)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0c)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("rsvd1")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$439, DW_AT_bit_size(0x02)
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x99)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("rsvd2")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$440, DW_AT_bit_size(0x02)
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("rsvd3")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$441, DW_AT_bit_size(0x02)
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("ODIV")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$442, DW_AT_bit_size(0x05)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$442, DW_AT_decl_column(0x0c)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("rsvd4")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$443, DW_AT_bit_size(0x03)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("REFDIV")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$444, DW_AT_bit_size(0x05)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0c)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("rsvd5")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$445, DW_AT_bit_size(0x03)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$445, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$102, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$102

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("SYSPLLMULT_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x02)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$446, DW_AT_name("all")
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0d)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$447, DW_AT_name("bit")
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$447, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$103, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104

$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("SYSPLLSTS_BITS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x02)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("LOCKS")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("SLIPS")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0c)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("QSLIPS")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0c)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("REF_LOSTS")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0xab)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("rsvd1")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$452, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0xac)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("rsvd2")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$453, DW_AT_bit_size(0x10)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0xad)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$104, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$104

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_name("SYSPLLSTS_REG")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x02)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$454, DW_AT_name("all")
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0d)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$455, DW_AT_name("bit")
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$455, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$105, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("WDCNTR_BITS")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("WDCNTR")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$456, DW_AT_bit_size(0x08)
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x43)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0c)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("rsvd1")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$457, DW_AT_bit_size(0x08)
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x44)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$106, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$106

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_name("WDCNTR_REG")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("all")
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x48)
	.dwattr $C$DW$458, DW_AT_decl_column(0x0d)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$459, DW_AT_name("bit")
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x49)
	.dwattr $C$DW$459, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$107, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("WDCR_BITS")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("WDPS")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$460, DW_AT_bit_size(0x03)
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x57)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0c)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("WDCHK")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$461, DW_AT_bit_size(0x03)
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x58)
	.dwattr $C$DW$461, DW_AT_decl_column(0x0c)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("WDDIS")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x59)
	.dwattr $C$DW$462, DW_AT_decl_column(0x0c)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("WDFLG")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$463, DW_AT_decl_column(0x0c)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("WDPRECLKDIV")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$464, DW_AT_bit_size(0x04)
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0c)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("rsvd1")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$465, DW_AT_bit_size(0x04)
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$108, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$108

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_name("WDCR_REG")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("all")
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x60)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0d)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$467, DW_AT_name("bit")
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x61)
	.dwattr $C$DW$467, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$109, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("WDKEY_BITS")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("WDKEY")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$468, DW_AT_bit_size(0x08)
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0c)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("rsvd1")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$469, DW_AT_bit_size(0x08)
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$110, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_name("WDKEY_REG")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("all")
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x52)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0d)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$471, DW_AT_name("bit")
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x53)
	.dwattr $C$DW$471, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$111, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112

$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("WDWCR_BITS")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("MIN")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$472, DW_AT_bit_size(0x08)
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x65)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0c)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("FIRSTKEY")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x66)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0c)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("rsvd1")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$474, DW_AT_bit_size(0x07)
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x67)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$112, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$112

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$113, DW_AT_name("WDWCR_REG")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("all")
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0d)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$476, DW_AT_name("bit")
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$476, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$113, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("WD_REGS")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x2b)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$477, DW_AT_name("rsvd1")
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x70)
	.dwattr $C$DW$477, DW_AT_decl_column(0x2e)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$478, DW_AT_name("SCSR")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x71)
	.dwattr $C$DW$478, DW_AT_decl_column(0x2e)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$479, DW_AT_name("WDCNTR")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x72)
	.dwattr $C$DW$479, DW_AT_decl_column(0x2e)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("rsvd2")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x73)
	.dwattr $C$DW$480, DW_AT_decl_column(0x2e)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$481, DW_AT_name("WDKEY")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x74)
	.dwattr $C$DW$481, DW_AT_decl_column(0x2e)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$482, DW_AT_name("rsvd3")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x75)
	.dwattr $C$DW$482, DW_AT_decl_column(0x2e)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$483, DW_AT_name("WDCR")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x76)
	.dwattr $C$DW$483, DW_AT_decl_column(0x2e)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$484, DW_AT_name("WDWCR")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x77)
	.dwattr $C$DW$484, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$116, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$116

	.dwendtag $C$DW$TU$116


$C$DW$TU$198	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$198
$C$DW$485	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$116)

$C$DW$T$198	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$485)

	.dwendtag $C$DW$TU$198


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117

$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_name("X1CNT_BITS")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x02)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("X1CNT")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$486, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0c)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("rsvd1")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$487, DW_AT_bit_size(0x06)
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x130)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0c)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("CLR")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x131)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0c)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("rsvd2")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$489, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x132)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$117, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$117

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118

$C$DW$T$118	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$118, DW_AT_name("X1CNT_REG")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x02)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$490, DW_AT_name("all")
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x136)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0d)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$491, DW_AT_name("bit")
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x137)
	.dwattr $C$DW$491, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$118, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x135)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$118

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("XCLKOUTDIVSEL_BITS")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x02)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("XCLKOUTDIV")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$492, DW_AT_bit_size(0x02)
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$492, DW_AT_decl_column(0x0c)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("rsvd1")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$493, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0c)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("rsvd2")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$494, DW_AT_bit_size(0x10)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$494, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$119, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120

$C$DW$T$120	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$120, DW_AT_name("XCLKOUTDIVSEL_REG")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x02)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$495, DW_AT_name("all")
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x111)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0d)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$496, DW_AT_name("bit")
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x112)
	.dwattr $C$DW$496, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$120, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$120

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121

$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("XTALCR_BITS")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x02)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("OSCOFF")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0c)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("SE")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$498, DW_AT_decl_column(0x0c)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("SWH")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$499, DW_AT_decl_column(0x0c)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("rsvd1")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$500, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$500, DW_AT_decl_column(0x0c)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("rsvd2")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$501, DW_AT_bit_size(0x10)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$121, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$121

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122

$C$DW$T$122	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$122, DW_AT_name("XTALCR_REG")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x02)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$502, DW_AT_name("all")
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x143)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0d)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$503, DW_AT_name("bit")
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x144)
	.dwattr $C$DW$503, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$122, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x142)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$122

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123

$C$DW$T$123	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$123, DW_AT_name("Z1_CR_BITS")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x02)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("rsvd1")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x86)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0c)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("rsvd2")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x87)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0c)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("rsvd3")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x88)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0c)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("rsvd4")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x89)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0c)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("rsvd5")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$508, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0c)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("rsvd6")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$509, DW_AT_bit_size(0x03)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0c)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("ALLZERO")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$510, DW_AT_decl_column(0x0c)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("ALLONE")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0c)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("UNSECURE")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0c)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("ARMED")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0c)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("rsvd7")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x90)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0c)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("rsvd8")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$515, DW_AT_bit_size(0x07)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x91)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0c)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("FORCESEC")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x92)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$123, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$123

	.dwendtag $C$DW$TU$123


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124

$C$DW$T$124	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$124, DW_AT_name("Z1_CR_REG")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x02)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$517, DW_AT_name("all")
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x96)
	.dwattr $C$DW$517, DW_AT_decl_column(0x0d)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$518, DW_AT_name("bit")
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x97)
	.dwattr $C$DW$518, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$124, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$124

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125

$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("Z1_EXEONLYRAM1R_BITS")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x02)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("EXEONLY_RAM0")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0c)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("EXEONLY_RAM1")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0c)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("EXEONLY_RAM2")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$521, DW_AT_decl_column(0x0c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("EXEONLY_RAM3")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0c)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("EXEONLY_RAM4")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$523, DW_AT_decl_column(0x0c)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("EXEONLY_RAM5")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x160)
	.dwattr $C$DW$524, DW_AT_decl_column(0x0c)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("EXEONLY_RAM6")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x161)
	.dwattr $C$DW$525, DW_AT_decl_column(0x0c)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("EXEONLY_RAM7")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x162)
	.dwattr $C$DW$526, DW_AT_decl_column(0x0c)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("EXEONLY_RAM8")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x163)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0c)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("EXEONLY_RAM9")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x164)
	.dwattr $C$DW$528, DW_AT_decl_column(0x0c)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("rsvd1")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$529, DW_AT_bit_size(0x06)
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x165)
	.dwattr $C$DW$529, DW_AT_decl_column(0x0c)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("EXEONLY_RAM16")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x166)
	.dwattr $C$DW$530, DW_AT_decl_column(0x0c)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("EXEONLY_RAM17")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x167)
	.dwattr $C$DW$531, DW_AT_decl_column(0x0c)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("rsvd2")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$532, DW_AT_bit_size(0x04)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x168)
	.dwattr $C$DW$532, DW_AT_decl_column(0x0c)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("EXEONLY_RAM22")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x169)
	.dwattr $C$DW$533, DW_AT_decl_column(0x0c)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("EXEONLY_RAM23")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$534, DW_AT_decl_column(0x0c)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("EXEONLY_RAM24")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$535, DW_AT_decl_column(0x0c)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("EXEONLY_RAM25")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$536, DW_AT_decl_column(0x0c)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("EXEONLY_RAM26")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0c)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("EXEONLY_RAM27")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0c)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("EXEONLY_RAM28")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0c)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("EXEONLY_RAM29")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x170)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0c)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("EXEONLY_RAM30")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x171)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0c)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("EXEONLY_RAM31")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x172)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$125, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$125

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126

$C$DW$T$126	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$126, DW_AT_name("Z1_EXEONLYRAM1R_REG")
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x02)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$543, DW_AT_name("all")
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x176)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0d)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$544, DW_AT_name("bit")
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x177)
	.dwattr $C$DW$544, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$126, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x175)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$126

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$127, DW_AT_name("Z1_EXEONLYSECT1R_BITS")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x02)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("EXEONLY_CPU1_SECT0")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0c)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("EXEONLY_CPU1_SECT1")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0c)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("EXEONLY_CPU1_SECT2")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0c)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("EXEONLY_CPU1_SECT3")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x120)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0c)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("EXEONLY_CPU1_SECT4")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x121)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0c)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("EXEONLY_CPU1_SECT5")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x122)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0c)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("EXEONLY_CPU1_SECT6")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x123)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0c)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("EXEONLY_CPU1_SECT7")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x124)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0c)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("EXEONLY_CPU1_SECT8")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x125)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0c)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("EXEONLY_CPU1_SECT9")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x126)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0c)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("EXEONLY_CPU1_SECT10")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x127)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("EXEONLY_CPU1_SECT11")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x128)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0c)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("EXEONLY_CPU1_SECT12")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x129)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0c)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("EXEONLY_CPU1_SECT13")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0c)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("rsvd1")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$559, DW_AT_bit_size(0x02)
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$559, DW_AT_decl_column(0x0c)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("EXEONLY_CM_SECT0")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$560, DW_AT_decl_column(0x0c)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("EXEONLY_CM_SECT1")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$561, DW_AT_decl_column(0x0c)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("EXEONLY_CM_SECT2")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$562, DW_AT_decl_column(0x0c)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("EXEONLY_CM_SECT3")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$563, DW_AT_decl_column(0x0c)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("EXEONLY_CM_SECT4")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x130)
	.dwattr $C$DW$564, DW_AT_decl_column(0x0c)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("EXEONLY_CM_SECT5")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x131)
	.dwattr $C$DW$565, DW_AT_decl_column(0x0c)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("EXEONLY_CM_SECT6")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x132)
	.dwattr $C$DW$566, DW_AT_decl_column(0x0c)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("EXEONLY_CM_SECT7")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x133)
	.dwattr $C$DW$567, DW_AT_decl_column(0x0c)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("EXEONLY_CM_SECT8")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x134)
	.dwattr $C$DW$568, DW_AT_decl_column(0x0c)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("EXEONLY_CM_SECT9")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x135)
	.dwattr $C$DW$569, DW_AT_decl_column(0x0c)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("EXEONLY_CM_SECT10")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x136)
	.dwattr $C$DW$570, DW_AT_decl_column(0x0c)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("EXEONLY_CM_SECT11")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x137)
	.dwattr $C$DW$571, DW_AT_decl_column(0x0c)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("EXEONLY_CM_SECT12")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x138)
	.dwattr $C$DW$572, DW_AT_decl_column(0x0c)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("EXEONLY_CM_SECT13")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x139)
	.dwattr $C$DW$573, DW_AT_decl_column(0x0c)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("rsvd2")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$574, DW_AT_bit_size(0x02)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$574, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$127, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128

$C$DW$T$128	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$128, DW_AT_name("Z1_EXEONLYSECT1R_REG")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x02)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$575, DW_AT_name("all")
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$575, DW_AT_decl_column(0x0d)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$576, DW_AT_name("bit")
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$576, DW_AT_decl_column(0x24)

	.dwattr $C$DW$T$128, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$128

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129

$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("Z1_EXEONLYSECT2R_BITS")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x02)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("EXEONLY_CPU2_SECT0")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x143)
	.dwattr $C$DW$577, DW_AT_decl_column(0x0c)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("EXEONLY_CPU2_SECT1")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x144)
	.dwattr $C$DW$578, DW_AT_decl_column(0x0c)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("EXEONLY_CPU2_SECT2")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x145)
	.dwattr $C$DW$579, DW_AT_decl_column(0x0c)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("EXEONLY_CPU2_SECT3")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x146)
	.dwattr $C$DW$580, DW_AT_decl_column(0x0c)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("EXEONLY_CPU2_SECT4")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x147)
	.dwattr $C$DW$581, DW_AT_decl_column(0x0c)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("EXEONLY_CPU2_SECT5")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x148)
	.dwattr $C$DW$582, DW_AT_decl_column(0x0c)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("EXEONLY_CPU2_SECT6")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x149)
	.dwattr $C$DW$583, DW_AT_decl_column(0x0c)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("EXEONLY_CPU2_SECT7")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$584, DW_AT_decl_column(0x0c)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("EXEONLY_CPU2_SECT8")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$585, DW_AT_decl_column(0x0c)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("EXEONLY_CPU2_SECT9")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0c)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("EXEONLY_CPU2_SECT10")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$587, DW_AT_decl_column(0x0c)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("EXEONLY_CPU2_SECT11")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0c)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("EXEONLY_CPU2_SECT12")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$589, DW_AT_decl_column(0x0c)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("EXEONLY_CPU2_SECT13")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x150)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0c)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("rsvd1")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$591, DW_AT_bit_size(0x02)
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x151)
	.dwattr $C$DW$591, DW_AT_decl_column(0x0c)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("rsvd2")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$592, DW_AT_bit_size(0x10)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x152)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$129, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x142)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$129

	.dwendtag $C$DW$TU$129


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130

$C$DW$T$130	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$130, DW_AT_name("Z1_EXEONLYSECT2R_REG")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x02)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$593, DW_AT_name("all")
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x156)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0d)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$594, DW_AT_name("bit")
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x157)
	.dwattr $C$DW$594, DW_AT_decl_column(0x24)

	.dwattr $C$DW$T$130, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$130

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131

$C$DW$T$131	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$131, DW_AT_name("Z1_GRABRAM1R_BITS")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x02)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$595, DW_AT_bit_size(0x02)
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0c)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$596, DW_AT_bit_size(0x02)
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0c)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("GRAB_RAM2")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$597, DW_AT_bit_size(0x02)
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$597, DW_AT_decl_column(0x0c)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("GRAB_RAM3")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$598, DW_AT_bit_size(0x02)
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0c)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$599, DW_AT_bit_size(0x02)
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$599, DW_AT_decl_column(0x0c)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$600, DW_AT_bit_size(0x02)
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$600, DW_AT_decl_column(0x0c)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$601, DW_AT_bit_size(0x02)
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0c)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$602, DW_AT_bit_size(0x02)
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$602, DW_AT_decl_column(0x0c)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("GRAB_RAM8")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$603, DW_AT_bit_size(0x02)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$603, DW_AT_decl_column(0x0c)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("GRAB_RAM9")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$604, DW_AT_bit_size(0x02)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$604, DW_AT_decl_column(0x0c)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("rsvd1")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$605, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0xea)
	.dwattr $C$DW$605, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$131, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$131

	.dwendtag $C$DW$TU$131


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132

$C$DW$T$132	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$132, DW_AT_name("Z1_GRABRAM1R_REG")
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x02)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$606, DW_AT_name("all")
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0xee)
	.dwattr $C$DW$606, DW_AT_decl_column(0x0d)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$607, DW_AT_name("bit")
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0xef)
	.dwattr $C$DW$607, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$132, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0xed)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$132

	.dwendtag $C$DW$TU$132


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133

$C$DW$T$133	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$133, DW_AT_name("Z1_GRABRAM2R_BITS")
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x02)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$608, DW_AT_bit_size(0x02)
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$608, DW_AT_decl_column(0x0c)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$609, DW_AT_bit_size(0x02)
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$609, DW_AT_decl_column(0x0c)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("rsvd1")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$610, DW_AT_bit_size(0x04)
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$610, DW_AT_decl_column(0x0c)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$611, DW_AT_bit_size(0x02)
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$611, DW_AT_decl_column(0x0c)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$612, DW_AT_bit_size(0x02)
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$612, DW_AT_decl_column(0x0c)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$613, DW_AT_bit_size(0x02)
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$613, DW_AT_decl_column(0x0c)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$614, DW_AT_bit_size(0x02)
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$614, DW_AT_decl_column(0x0c)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("GRAB_RAM8")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$615, DW_AT_bit_size(0x02)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$615, DW_AT_decl_column(0x0c)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("GRAB_RAM9")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$616, DW_AT_bit_size(0x02)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$616, DW_AT_decl_column(0x0c)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("GRAB_RAM10")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$617, DW_AT_bit_size(0x02)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$617, DW_AT_decl_column(0x0c)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("GRAB_RAM11")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$618, DW_AT_bit_size(0x02)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$618, DW_AT_decl_column(0x0c)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("GRAB_RAM12")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$619, DW_AT_bit_size(0x02)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$619, DW_AT_decl_column(0x0c)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("GRAB_RAM13")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$620, DW_AT_bit_size(0x02)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0xff)
	.dwattr $C$DW$620, DW_AT_decl_column(0x0c)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("GRAB_RAM14")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$621, DW_AT_bit_size(0x02)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x100)
	.dwattr $C$DW$621, DW_AT_decl_column(0x0c)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("GRAB_RAM15")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$622, DW_AT_bit_size(0x02)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x101)
	.dwattr $C$DW$622, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$133, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$133

	.dwendtag $C$DW$TU$133


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134

$C$DW$T$134	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$134, DW_AT_name("Z1_GRABRAM2R_REG")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x02)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$623, DW_AT_name("all")
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x105)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0d)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$624, DW_AT_name("bit")
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x106)
	.dwattr $C$DW$624, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$134, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x104)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$134

	.dwendtag $C$DW$TU$134


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135

$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("Z1_GRABRAM3R_BITS")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x02)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$625, DW_AT_bit_size(0x02)
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$625, DW_AT_decl_column(0x0c)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$626, DW_AT_bit_size(0x02)
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$626, DW_AT_decl_column(0x0c)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("GRAB_RAM2")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$627, DW_AT_bit_size(0x02)
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$627, DW_AT_decl_column(0x0c)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("GRAB_RAM3")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$628, DW_AT_bit_size(0x02)
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$628, DW_AT_decl_column(0x0c)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$629, DW_AT_bit_size(0x02)
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0c)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$630, DW_AT_bit_size(0x02)
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0c)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$631, DW_AT_bit_size(0x02)
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x110)
	.dwattr $C$DW$631, DW_AT_decl_column(0x0c)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$632, DW_AT_bit_size(0x02)
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x111)
	.dwattr $C$DW$632, DW_AT_decl_column(0x0c)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("GRAB_RAM8")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$633, DW_AT_bit_size(0x02)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x112)
	.dwattr $C$DW$633, DW_AT_decl_column(0x0c)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("GRAB_RAM9")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$634, DW_AT_bit_size(0x02)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x113)
	.dwattr $C$DW$634, DW_AT_decl_column(0x0c)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("rsvd1")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$635, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x114)
	.dwattr $C$DW$635, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$135, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x109)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$135

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136

$C$DW$T$136	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$136, DW_AT_name("Z1_GRABRAM3R_REG")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x02)
$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$636, DW_AT_name("all")
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x118)
	.dwattr $C$DW$636, DW_AT_decl_column(0x0d)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$637, DW_AT_name("bit")
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x119)
	.dwattr $C$DW$637, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$136, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$136

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137

$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("Z1_GRABSECT1R_BITS")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x02)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("GRAB_SECT0")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$638, DW_AT_bit_size(0x02)
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0c)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("GRAB_SECT1")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$639, DW_AT_bit_size(0x02)
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$639, DW_AT_decl_column(0x0c)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("GRAB_SECT2")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$640, DW_AT_bit_size(0x02)
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$640, DW_AT_decl_column(0x0c)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("GRAB_SECT3")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$641, DW_AT_bit_size(0x02)
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0c)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("GRAB_SECT4")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$642, DW_AT_bit_size(0x02)
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$642, DW_AT_decl_column(0x0c)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("GRAB_SECT5")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$643, DW_AT_bit_size(0x02)
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$643, DW_AT_decl_column(0x0c)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("GRAB_SECT6")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$644, DW_AT_bit_size(0x02)
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0c)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("GRAB_SECT7")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$645, DW_AT_bit_size(0x02)
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$645, DW_AT_decl_column(0x0c)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("GRAB_SECT8")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$646, DW_AT_bit_size(0x02)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0c)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("GRAB_SECT9")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$647, DW_AT_bit_size(0x02)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0c)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("GRAB_SECT10")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$648, DW_AT_bit_size(0x02)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0c)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("GRAB_SECT11")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$649, DW_AT_bit_size(0x02)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("GRAB_SECT12")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$650, DW_AT_bit_size(0x02)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("GRAB_SECT13")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$651, DW_AT_bit_size(0x02)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("rsvd1")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$652, DW_AT_bit_size(0x04)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$137, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$137

	.dwendtag $C$DW$TU$137


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138

$C$DW$T$138	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$138, DW_AT_name("Z1_GRABSECT1R_REG")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x02)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$653, DW_AT_name("all")
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0xad)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0d)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$654, DW_AT_name("bit")
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0xae)
	.dwattr $C$DW$654, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$138, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$138

	.dwendtag $C$DW$TU$138


$C$DW$TU$139	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$139

$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("Z1_GRABSECT2R_BITS")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x02)
$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("GRAB_SECT0")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$655, DW_AT_bit_size(0x02)
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0c)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("GRAB_SECT1")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$656, DW_AT_bit_size(0x02)
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0c)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("GRAB_SECT2")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$657, DW_AT_bit_size(0x02)
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0c)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("GRAB_SECT3")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$658, DW_AT_bit_size(0x02)
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$658, DW_AT_decl_column(0x0c)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("GRAB_SECT4")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$659, DW_AT_bit_size(0x02)
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("GRAB_SECT5")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$660, DW_AT_bit_size(0x02)
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("GRAB_SECT6")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$661, DW_AT_bit_size(0x02)
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0c)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("GRAB_SECT7")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$662, DW_AT_bit_size(0x02)
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0c)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$663, DW_AT_name("GRAB_SECT8")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$663, DW_AT_bit_size(0x02)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0xba)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0c)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("GRAB_SECT9")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$664, DW_AT_bit_size(0x02)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("GRAB_SECT10")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$665, DW_AT_bit_size(0x02)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("GRAB_SECT11")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$666, DW_AT_bit_size(0x02)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("GRAB_SECT12")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$667, DW_AT_bit_size(0x02)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("GRAB_SECT13")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$668, DW_AT_bit_size(0x02)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0c)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("rsvd1")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$669, DW_AT_bit_size(0x04)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$139, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$139

	.dwendtag $C$DW$TU$139


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140

$C$DW$T$140	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$140, DW_AT_name("Z1_GRABSECT2R_REG")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x02)
$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$670, DW_AT_name("all")
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0d)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$671, DW_AT_name("bit")
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$671, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$140, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$140

	.dwendtag $C$DW$TU$140


$C$DW$TU$141	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$141

$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("Z1_GRABSECT3R_BITS")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x02)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$672, DW_AT_name("GRAB_SECT0")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$672, DW_AT_bit_size(0x02)
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0c)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("GRAB_SECT1")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$673, DW_AT_bit_size(0x02)
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0xca)
	.dwattr $C$DW$673, DW_AT_decl_column(0x0c)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("GRAB_SECT2")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$674, DW_AT_bit_size(0x02)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("GRAB_SECT3")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$675, DW_AT_bit_size(0x02)
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0c)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("GRAB_SECT4")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$676, DW_AT_bit_size(0x02)
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0c)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("GRAB_SECT5")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$677, DW_AT_bit_size(0x02)
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0xce)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0c)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_name("GRAB_SECT6")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$678, DW_AT_bit_size(0x02)
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("GRAB_SECT7")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$679, DW_AT_bit_size(0x02)
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0c)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("GRAB_SECT8")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$680, DW_AT_bit_size(0x02)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$681, DW_AT_name("GRAB_SECT9")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$681, DW_AT_bit_size(0x02)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("GRAB_SECT10")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$682, DW_AT_bit_size(0x02)
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$683, DW_AT_name("GRAB_SECT11")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$683, DW_AT_bit_size(0x02)
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$684, DW_AT_name("GRAB_SECT12")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$684, DW_AT_bit_size(0x02)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$685, DW_AT_name("GRAB_SECT13")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$685, DW_AT_bit_size(0x02)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("rsvd1")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$686, DW_AT_bit_size(0x04)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$141, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$141

	.dwendtag $C$DW$TU$141


$C$DW$TU$142	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$142

$C$DW$T$142	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$142, DW_AT_name("Z1_GRABSECT3R_REG")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x02)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$687, DW_AT_name("all")
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0d)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$688, DW_AT_name("bit")
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$688, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$142, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$142

	.dwendtag $C$DW$TU$142


$C$DW$TU$143	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$143

$C$DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$143, DW_AT_name("Z1_JLM_ENABLE_BITS")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x02)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("Z1_JLM_ENABLE")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$689, DW_AT_bit_size(0x04)
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x70)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("rsvd1")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$690, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x71)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0c)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("rsvd2")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$691, DW_AT_bit_size(0x10)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x72)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$143, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$143

	.dwendtag $C$DW$TU$143


$C$DW$TU$144	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$144

$C$DW$T$144	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$144, DW_AT_name("Z1_JLM_ENABLE_REG")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x02)
$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$692, DW_AT_name("all")
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x76)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0d)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$693, DW_AT_name("bit")
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x77)
	.dwattr $C$DW$693, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$144, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$144

	.dwendtag $C$DW$TU$144


$C$DW$TU$145	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$145

$C$DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$145, DW_AT_name("Z1_LINKPOINTERERR_BITS")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x02)
$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("Z1_LINKPOINTERERR")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$694, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0c)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("rsvd1")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$695, DW_AT_bit_size(0x02)
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0c)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("rsvd2")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$696, DW_AT_bit_size(0x10)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$145, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$145

	.dwendtag $C$DW$TU$145


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146

$C$DW$T$146	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$146, DW_AT_name("Z1_LINKPOINTERERR_REG")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x02)
$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$697, DW_AT_name("all")
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x81)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0d)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$698, DW_AT_name("bit")
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x82)
	.dwattr $C$DW$698, DW_AT_decl_column(0x25)

	.dwattr $C$DW$T$146, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$146

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147

$C$DW$T$147	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$147, DW_AT_name("Z1_LINKPOINTER_BITS")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x02)
$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("LINKPOINTER")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$699, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x57)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0c)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("rsvd1")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$700, DW_AT_bit_size(0x02)
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x58)
	.dwattr $C$DW$700, DW_AT_decl_column(0x0c)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("rsvd2")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$701, DW_AT_bit_size(0x10)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x59)
	.dwattr $C$DW$701, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$147, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$147

	.dwendtag $C$DW$TU$147


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148

$C$DW$T$148	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$148, DW_AT_name("Z1_LINKPOINTER_REG")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x02)
$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$702, DW_AT_name("all")
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$702, DW_AT_decl_column(0x0d)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$703, DW_AT_name("bit")
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$703, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$148, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$148

	.dwendtag $C$DW$TU$148


$C$DW$TU$149	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$149

$C$DW$T$149	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$149, DW_AT_name("Z1_OTPSECLOCK_BITS")
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x02)
$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("JTAGLOCK")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x62)
	.dwattr $C$DW$704, DW_AT_decl_column(0x0c)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("rsvd1")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$705, DW_AT_bit_size(0x03)
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x63)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0c)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("PSWDLOCK")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$706, DW_AT_bit_size(0x04)
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x64)
	.dwattr $C$DW$706, DW_AT_decl_column(0x0c)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("CRCLOCK")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$707, DW_AT_bit_size(0x04)
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x65)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0c)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("rsvd2")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$708, DW_AT_bit_size(0x04)
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x66)
	.dwattr $C$DW$708, DW_AT_decl_column(0x0c)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("rsvd3")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$709, DW_AT_bit_size(0x10)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x67)
	.dwattr $C$DW$709, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$149, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$149

	.dwendtag $C$DW$TU$149


$C$DW$TU$150	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$150

$C$DW$T$150	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$150, DW_AT_name("Z1_OTPSECLOCK_REG")
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x02)
$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$710, DW_AT_name("all")
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$710, DW_AT_decl_column(0x0d)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$711, DW_AT_name("bit")
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$711, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$150, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$150

	.dwendtag $C$DW$TU$150


$C$DW$TU$151	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$151

$C$DW$T$151	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$151, DW_AT_name("Z2_CR_BITS")
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x02)
$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("rsvd1")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$712, DW_AT_decl_column(0x0c)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("rsvd2")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$713, DW_AT_decl_column(0x0c)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("rsvd3")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0c)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("rsvd4")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0c)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("rsvd5")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$716, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$716, DW_AT_decl_column(0x0c)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("rsvd6")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$717, DW_AT_bit_size(0x03)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$717, DW_AT_decl_column(0x0c)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("ALLZERO")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$718, DW_AT_decl_column(0x0c)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("ALLONE")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0c)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("UNSECURE")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$720, DW_AT_decl_column(0x0c)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("ARMED")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0c)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("rsvd7")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0c)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("rsvd8")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$723, DW_AT_bit_size(0x07)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0c)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("FORCESEC")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$151, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$151

	.dwendtag $C$DW$TU$151


$C$DW$TU$152	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$152

$C$DW$T$152	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$152, DW_AT_name("Z2_CR_REG")
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x02)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$725, DW_AT_name("all")
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0d)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$726, DW_AT_name("bit")
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$726, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$152, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$152

	.dwendtag $C$DW$TU$152


$C$DW$TU$153	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$153

$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("Z2_EXEONLYRAM1R_BITS")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x02)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("EXEONLY_RAM0")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x296)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0c)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("EXEONLY_RAM1")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x297)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0c)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("EXEONLY_RAM2")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x298)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0c)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("EXEONLY_RAM3")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x299)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0c)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("EXEONLY_RAM4")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$731, DW_AT_decl_column(0x0c)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("EXEONLY_RAM5")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0c)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("EXEONLY_RAM6")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x29c)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0c)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("EXEONLY_RAM7")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0c)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("EXEONLY_RAM8")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0c)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("EXEONLY_RAM9")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0c)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("rsvd1")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$737, DW_AT_bit_size(0x06)
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x2a0)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0c)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("EXEONLY_RAM16")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x2a1)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0c)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("EXEONLY_RAM17")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x2a2)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0c)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("rsvd2")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$740, DW_AT_bit_size(0x04)
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0c)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("EXEONLY_RAM22")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x2a4)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0c)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("EXEONLY_RAM23")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x2a5)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0c)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("EXEONLY_RAM24")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x2a6)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0c)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("EXEONLY_RAM25")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x2a7)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0c)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("EXEONLY_RAM26")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0c)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("EXEONLY_RAM27")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x2a9)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0c)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("EXEONLY_RAM28")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x2aa)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0c)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("EXEONLY_RAM29")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0c)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("EXEONLY_RAM30")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x2ac)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0c)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("EXEONLY_RAM31")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x2ad)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$153, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x295)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$153

	.dwendtag $C$DW$TU$153


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154

$C$DW$T$154	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$154, DW_AT_name("Z2_EXEONLYRAM1R_REG")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x02)
$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$751, DW_AT_name("all")
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x2b1)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0d)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$752, DW_AT_name("bit")
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x2b2)
	.dwattr $C$DW$752, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$154, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x2b0)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$154

	.dwendtag $C$DW$TU$154


$C$DW$TU$155	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$155

$C$DW$T$155	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$155, DW_AT_name("Z2_EXEONLYSECT1R_BITS")
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x02)
$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("EXEONLY_CPU1_SECT0")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x258)
	.dwattr $C$DW$753, DW_AT_decl_column(0x0c)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("EXEONLY_CPU1_SECT1")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x259)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0c)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("EXEONLY_CPU1_SECT2")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x25a)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0c)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("EXEONLY_CPU1_SECT3")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0c)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("EXEONLY_CPU1_SECT4")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x25c)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0c)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("EXEONLY_CPU1_SECT5")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0c)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("EXEONLY_CPU1_SECT6")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x25e)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0c)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("EXEONLY_CPU1_SECT7")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x25f)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0c)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("EXEONLY_CPU1_SECT8")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x260)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0c)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("EXEONLY_CPU1_SECT9")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x261)
	.dwattr $C$DW$762, DW_AT_decl_column(0x0c)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("EXEONLY_CPU1_SECT10")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x262)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0c)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("EXEONLY_CPU1_SECT11")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x263)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0c)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("EXEONLY_CPU1_SECT12")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x264)
	.dwattr $C$DW$765, DW_AT_decl_column(0x0c)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("EXEONLY_CPU1_SECT13")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$766, DW_AT_bit_size(0x01)
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x265)
	.dwattr $C$DW$766, DW_AT_decl_column(0x0c)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("rsvd1")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$767, DW_AT_bit_size(0x02)
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x266)
	.dwattr $C$DW$767, DW_AT_decl_column(0x0c)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("EXEONLY_CM_SECT0")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x267)
	.dwattr $C$DW$768, DW_AT_decl_column(0x0c)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$769, DW_AT_name("EXEONLY_CM_SECT1")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x268)
	.dwattr $C$DW$769, DW_AT_decl_column(0x0c)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$770, DW_AT_name("EXEONLY_CM_SECT2")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x269)
	.dwattr $C$DW$770, DW_AT_decl_column(0x0c)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("EXEONLY_CM_SECT3")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0c)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("EXEONLY_CM_SECT4")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x26b)
	.dwattr $C$DW$772, DW_AT_decl_column(0x0c)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$773, DW_AT_name("EXEONLY_CM_SECT5")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$773, DW_AT_decl_column(0x0c)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("EXEONLY_CM_SECT6")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0c)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("EXEONLY_CM_SECT7")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0c)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("EXEONLY_CM_SECT8")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x26f)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0c)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("EXEONLY_CM_SECT9")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x270)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0c)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("EXEONLY_CM_SECT10")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x271)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0c)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("EXEONLY_CM_SECT11")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x272)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0c)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("EXEONLY_CM_SECT12")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x273)
	.dwattr $C$DW$780, DW_AT_decl_column(0x0c)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("EXEONLY_CM_SECT13")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x274)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0c)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("rsvd2")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$782, DW_AT_bit_size(0x02)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x275)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$155, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x257)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$155

	.dwendtag $C$DW$TU$155


$C$DW$TU$156	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$156

$C$DW$T$156	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$156, DW_AT_name("Z2_EXEONLYSECT1R_REG")
	.dwattr $C$DW$T$156, DW_AT_byte_size(0x02)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$783, DW_AT_name("all")
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x279)
	.dwattr $C$DW$783, DW_AT_decl_column(0x0d)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$784, DW_AT_name("bit")
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$784, DW_AT_decl_column(0x24)

	.dwattr $C$DW$T$156, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x278)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$156

	.dwendtag $C$DW$TU$156


$C$DW$TU$157	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$157

$C$DW$T$157	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$157, DW_AT_name("Z2_EXEONLYSECT2R_BITS")
	.dwattr $C$DW$T$157, DW_AT_byte_size(0x02)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("EXEONLY_CPU2_SECT0")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x27e)
	.dwattr $C$DW$785, DW_AT_decl_column(0x0c)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("EXEONLY_CPU2_SECT1")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x27f)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0c)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("EXEONLY_CPU2_SECT2")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x280)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0c)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$788, DW_AT_name("EXEONLY_CPU2_SECT3")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x281)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0c)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("EXEONLY_CPU2_SECT4")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x282)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0c)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("EXEONLY_CPU2_SECT5")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x283)
	.dwattr $C$DW$790, DW_AT_decl_column(0x0c)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("EXEONLY_CPU2_SECT6")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x284)
	.dwattr $C$DW$791, DW_AT_decl_column(0x0c)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("EXEONLY_CPU2_SECT7")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x285)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0c)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("EXEONLY_CPU2_SECT8")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x286)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0c)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("EXEONLY_CPU2_SECT9")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x287)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0c)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("EXEONLY_CPU2_SECT10")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x288)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0c)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("EXEONLY_CPU2_SECT11")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x289)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0c)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("EXEONLY_CPU2_SECT12")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x28a)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0c)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("EXEONLY_CPU2_SECT13")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x28b)
	.dwattr $C$DW$798, DW_AT_decl_column(0x0c)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("rsvd1")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$799, DW_AT_bit_size(0x02)
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x28c)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0c)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("rsvd2")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$800, DW_AT_bit_size(0x10)
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x28d)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$157, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x27d)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$157

	.dwendtag $C$DW$TU$157


$C$DW$TU$158	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$158

$C$DW$T$158	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$158, DW_AT_name("Z2_EXEONLYSECT2R_REG")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x02)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$801, DW_AT_name("all")
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x291)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0d)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$802, DW_AT_name("bit")
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x292)
	.dwattr $C$DW$802, DW_AT_decl_column(0x24)

	.dwattr $C$DW$T$158, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x290)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$158

	.dwendtag $C$DW$TU$158


$C$DW$TU$159	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$159

$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("Z2_GRABRAM1R_BITS")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x02)
$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$803, DW_AT_bit_size(0x02)
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x21b)
	.dwattr $C$DW$803, DW_AT_decl_column(0x0c)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$804, DW_AT_bit_size(0x02)
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x21c)
	.dwattr $C$DW$804, DW_AT_decl_column(0x0c)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("GRAB_RAM2")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$805, DW_AT_bit_size(0x02)
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0c)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("GRAB_RAM3")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$806, DW_AT_bit_size(0x02)
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$806, DW_AT_decl_column(0x0c)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$807, DW_AT_bit_size(0x02)
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$807, DW_AT_decl_column(0x0c)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$808, DW_AT_bit_size(0x02)
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x220)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0c)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$809, DW_AT_bit_size(0x02)
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x221)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0c)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$810, DW_AT_bit_size(0x02)
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x222)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0c)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("GRAB_RAM8")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$811, DW_AT_bit_size(0x02)
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x223)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0c)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("GRAB_RAM9")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$812, DW_AT_bit_size(0x02)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x224)
	.dwattr $C$DW$812, DW_AT_decl_column(0x0c)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("rsvd1")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$813, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x225)
	.dwattr $C$DW$813, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$159, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$159

	.dwendtag $C$DW$TU$159


$C$DW$TU$160	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$160

$C$DW$T$160	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$160, DW_AT_name("Z2_GRABRAM1R_REG")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x02)
$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$814, DW_AT_name("all")
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x229)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0d)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$815, DW_AT_name("bit")
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$815, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$160, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x228)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$160

	.dwendtag $C$DW$TU$160


$C$DW$TU$161	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$161

$C$DW$T$161	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$161, DW_AT_name("Z2_GRABRAM2R_BITS")
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x02)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$816, DW_AT_bit_size(0x02)
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0x22e)
	.dwattr $C$DW$816, DW_AT_decl_column(0x0c)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$817, DW_AT_bit_size(0x02)
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0x22f)
	.dwattr $C$DW$817, DW_AT_decl_column(0x0c)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("rsvd1")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$818, DW_AT_bit_size(0x04)
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0x230)
	.dwattr $C$DW$818, DW_AT_decl_column(0x0c)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$819, DW_AT_bit_size(0x02)
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0x231)
	.dwattr $C$DW$819, DW_AT_decl_column(0x0c)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$820, DW_AT_bit_size(0x02)
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0x232)
	.dwattr $C$DW$820, DW_AT_decl_column(0x0c)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$821, DW_AT_bit_size(0x02)
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$821, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0x233)
	.dwattr $C$DW$821, DW_AT_decl_column(0x0c)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$822, DW_AT_bit_size(0x02)
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$822, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0x234)
	.dwattr $C$DW$822, DW_AT_decl_column(0x0c)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("GRAB_RAM8")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$823, DW_AT_bit_size(0x02)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0x235)
	.dwattr $C$DW$823, DW_AT_decl_column(0x0c)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("GRAB_RAM9")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$824, DW_AT_bit_size(0x02)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0x236)
	.dwattr $C$DW$824, DW_AT_decl_column(0x0c)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("GRAB_RAM10")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$825, DW_AT_bit_size(0x02)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0x237)
	.dwattr $C$DW$825, DW_AT_decl_column(0x0c)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("GRAB_RAM11")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$826, DW_AT_bit_size(0x02)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0x238)
	.dwattr $C$DW$826, DW_AT_decl_column(0x0c)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$827, DW_AT_name("GRAB_RAM12")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$827, DW_AT_bit_size(0x02)
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0x239)
	.dwattr $C$DW$827, DW_AT_decl_column(0x0c)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("GRAB_RAM13")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$828, DW_AT_bit_size(0x02)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$828, DW_AT_decl_column(0x0c)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("GRAB_RAM14")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$829, DW_AT_bit_size(0x02)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$829, DW_AT_decl_column(0x0c)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("GRAB_RAM15")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$830, DW_AT_bit_size(0x02)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$830, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$161, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$161

	.dwendtag $C$DW$TU$161


$C$DW$TU$162	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$162

$C$DW$T$162	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$162, DW_AT_name("Z2_GRABRAM2R_REG")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x02)
$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$831, DW_AT_name("all")
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0x240)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0d)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$832, DW_AT_name("bit")
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0x241)
	.dwattr $C$DW$832, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$162, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$162

	.dwendtag $C$DW$TU$162


$C$DW$TU$163	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$163

$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("Z2_GRABRAM3R_BITS")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x02)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$833, DW_AT_bit_size(0x02)
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0x245)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0c)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$834, DW_AT_bit_size(0x02)
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0x246)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0c)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("GRAB_RAM2")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$835, DW_AT_bit_size(0x02)
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0x247)
	.dwattr $C$DW$835, DW_AT_decl_column(0x0c)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("GRAB_RAM3")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$836, DW_AT_bit_size(0x02)
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0x248)
	.dwattr $C$DW$836, DW_AT_decl_column(0x0c)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$837, DW_AT_bit_size(0x02)
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0x249)
	.dwattr $C$DW$837, DW_AT_decl_column(0x0c)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$838, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$838, DW_AT_bit_size(0x02)
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$838, DW_AT_decl_column(0x0c)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$839, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$839, DW_AT_bit_size(0x02)
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$839, DW_AT_decl_column(0x0c)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$840, DW_AT_bit_size(0x02)
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0x24c)
	.dwattr $C$DW$840, DW_AT_decl_column(0x0c)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("GRAB_RAM8")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$841, DW_AT_bit_size(0x02)
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$841, DW_AT_decl_column(0x0c)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("GRAB_RAM9")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$842, DW_AT_bit_size(0x02)
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$842, DW_AT_decl_column(0x0c)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("rsvd1")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$843, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$843, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$843, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$163, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x244)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$163

	.dwendtag $C$DW$TU$163


$C$DW$TU$164	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$164

$C$DW$T$164	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$164, DW_AT_name("Z2_GRABRAM3R_REG")
	.dwattr $C$DW$T$164, DW_AT_byte_size(0x02)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$844, DW_AT_name("all")
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0x253)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0d)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$845, DW_AT_name("bit")
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0x254)
	.dwattr $C$DW$845, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$164, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x252)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$164

	.dwendtag $C$DW$TU$164


$C$DW$TU$165	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$165

$C$DW$T$165	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$165, DW_AT_name("Z2_GRABSECT1R_BITS")
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x02)
$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("GRAB_SECT0")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$846, DW_AT_bit_size(0x02)
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0c)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("GRAB_SECT1")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$847, DW_AT_bit_size(0x02)
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0c)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("GRAB_SECT2")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$848, DW_AT_bit_size(0x02)
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0c)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("GRAB_SECT3")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$849, DW_AT_bit_size(0x02)
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$849, DW_AT_decl_column(0x0c)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("GRAB_SECT4")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$850, DW_AT_bit_size(0x02)
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0c)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("GRAB_SECT5")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$851, DW_AT_bit_size(0x02)
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0c)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("GRAB_SECT6")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$852, DW_AT_bit_size(0x02)
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0c)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("GRAB_SECT7")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$853, DW_AT_bit_size(0x02)
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0c)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("GRAB_SECT8")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$854, DW_AT_bit_size(0x02)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0c)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("GRAB_SECT9")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$855, DW_AT_bit_size(0x02)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0c)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("GRAB_SECT10")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$856, DW_AT_bit_size(0x02)
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0c)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("GRAB_SECT11")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$857, DW_AT_bit_size(0x02)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$857, DW_AT_decl_column(0x0c)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("GRAB_SECT12")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$858, DW_AT_bit_size(0x02)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0c)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("GRAB_SECT13")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$859, DW_AT_bit_size(0x02)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$859, DW_AT_decl_column(0x0c)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("rsvd1")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$860, DW_AT_bit_size(0x04)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$860, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$165, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$165

	.dwendtag $C$DW$TU$165


$C$DW$TU$166	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$166

$C$DW$T$166	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$166, DW_AT_name("Z2_GRABSECT1R_REG")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x02)
$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$861, DW_AT_name("all")
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$861, DW_AT_decl_column(0x0d)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$862, DW_AT_name("bit")
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$862, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$166, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$166

	.dwendtag $C$DW$TU$166


$C$DW$TU$167	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$167

$C$DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$167, DW_AT_name("Z2_GRABSECT2R_BITS")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x02)
$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$863, DW_AT_name("GRAB_SECT0")
	.dwattr $C$DW$863, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$863, DW_AT_bit_size(0x02)
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$863, DW_AT_decl_column(0x0c)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("GRAB_SECT1")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$864, DW_AT_bit_size(0x02)
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$864, DW_AT_decl_column(0x0c)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("GRAB_SECT2")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$865, DW_AT_bit_size(0x02)
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$865, DW_AT_decl_column(0x0c)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("GRAB_SECT3")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$866, DW_AT_bit_size(0x02)
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$866, DW_AT_decl_column(0x0c)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$867, DW_AT_name("GRAB_SECT4")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$867, DW_AT_bit_size(0x02)
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$867, DW_AT_decl_column(0x0c)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_name("GRAB_SECT5")
	.dwattr $C$DW$868, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$868, DW_AT_bit_size(0x02)
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0c)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_name("GRAB_SECT6")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$869, DW_AT_bit_size(0x02)
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$869, DW_AT_decl_column(0x0c)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_name("GRAB_SECT7")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$870, DW_AT_bit_size(0x02)
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$870, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$870, DW_AT_decl_column(0x0c)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$871, DW_AT_name("GRAB_SECT8")
	.dwattr $C$DW$871, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$871, DW_AT_bit_size(0x02)
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$871, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$871, DW_AT_decl_column(0x0c)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$872, DW_AT_name("GRAB_SECT9")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$872, DW_AT_bit_size(0x02)
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$872, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$872, DW_AT_decl_column(0x0c)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("GRAB_SECT10")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$873, DW_AT_bit_size(0x02)
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$873, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$873, DW_AT_decl_column(0x0c)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$874, DW_AT_name("GRAB_SECT11")
	.dwattr $C$DW$874, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$874, DW_AT_bit_size(0x02)
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$874, DW_AT_decl_column(0x0c)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$875, DW_AT_name("GRAB_SECT12")
	.dwattr $C$DW$875, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$875, DW_AT_bit_size(0x02)
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$875, DW_AT_decl_column(0x0c)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$876, DW_AT_name("GRAB_SECT13")
	.dwattr $C$DW$876, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$876, DW_AT_bit_size(0x02)
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$876, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$876, DW_AT_decl_column(0x0c)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$877, DW_AT_name("rsvd1")
	.dwattr $C$DW$877, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$877, DW_AT_bit_size(0x04)
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$877, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$877, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$167, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$167

	.dwendtag $C$DW$TU$167


$C$DW$TU$168	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$168

$C$DW$T$168	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$168, DW_AT_name("Z2_GRABSECT2R_REG")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x02)
$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$878, DW_AT_name("all")
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$878, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0x1ff)
	.dwattr $C$DW$878, DW_AT_decl_column(0x0d)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$879, DW_AT_name("bit")
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$879, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0x200)
	.dwattr $C$DW$879, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$168, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$168, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$T$168, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$168

	.dwendtag $C$DW$TU$168


$C$DW$TU$169	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$169

$C$DW$T$169	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$169, DW_AT_name("Z2_GRABSECT3R_BITS")
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x02)
$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$880, DW_AT_name("GRAB_SECT0")
	.dwattr $C$DW$880, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$880, DW_AT_bit_size(0x02)
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0x204)
	.dwattr $C$DW$880, DW_AT_decl_column(0x0c)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_name("GRAB_SECT1")
	.dwattr $C$DW$881, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$881, DW_AT_bit_size(0x02)
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$881, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0x205)
	.dwattr $C$DW$881, DW_AT_decl_column(0x0c)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$882, DW_AT_name("GRAB_SECT2")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$882, DW_AT_bit_size(0x02)
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$882, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0x206)
	.dwattr $C$DW$882, DW_AT_decl_column(0x0c)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$883, DW_AT_name("GRAB_SECT3")
	.dwattr $C$DW$883, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$883, DW_AT_bit_size(0x02)
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$883, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0x207)
	.dwattr $C$DW$883, DW_AT_decl_column(0x0c)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$884, DW_AT_name("GRAB_SECT4")
	.dwattr $C$DW$884, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$884, DW_AT_bit_size(0x02)
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$884, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0x208)
	.dwattr $C$DW$884, DW_AT_decl_column(0x0c)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$885, DW_AT_name("GRAB_SECT5")
	.dwattr $C$DW$885, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$885, DW_AT_bit_size(0x02)
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$885, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0x209)
	.dwattr $C$DW$885, DW_AT_decl_column(0x0c)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$886, DW_AT_name("GRAB_SECT6")
	.dwattr $C$DW$886, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$886, DW_AT_bit_size(0x02)
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$886, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0x20a)
	.dwattr $C$DW$886, DW_AT_decl_column(0x0c)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$887, DW_AT_name("GRAB_SECT7")
	.dwattr $C$DW$887, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$887, DW_AT_bit_size(0x02)
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$887, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$887, DW_AT_decl_column(0x0c)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$888, DW_AT_name("GRAB_SECT8")
	.dwattr $C$DW$888, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$888, DW_AT_bit_size(0x02)
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$888, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0x20c)
	.dwattr $C$DW$888, DW_AT_decl_column(0x0c)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$889, DW_AT_name("GRAB_SECT9")
	.dwattr $C$DW$889, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$889, DW_AT_bit_size(0x02)
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$889, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0x20d)
	.dwattr $C$DW$889, DW_AT_decl_column(0x0c)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$890, DW_AT_name("GRAB_SECT10")
	.dwattr $C$DW$890, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$890, DW_AT_bit_size(0x02)
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0x20e)
	.dwattr $C$DW$890, DW_AT_decl_column(0x0c)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$891, DW_AT_name("GRAB_SECT11")
	.dwattr $C$DW$891, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$891, DW_AT_bit_size(0x02)
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0x20f)
	.dwattr $C$DW$891, DW_AT_decl_column(0x0c)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$892, DW_AT_name("GRAB_SECT12")
	.dwattr $C$DW$892, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$892, DW_AT_bit_size(0x02)
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0x210)
	.dwattr $C$DW$892, DW_AT_decl_column(0x0c)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$893, DW_AT_name("GRAB_SECT13")
	.dwattr $C$DW$893, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$893, DW_AT_bit_size(0x02)
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0x211)
	.dwattr $C$DW$893, DW_AT_decl_column(0x0c)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$894, DW_AT_name("rsvd1")
	.dwattr $C$DW$894, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$894, DW_AT_bit_size(0x04)
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x212)
	.dwattr $C$DW$894, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$169, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$169, DW_AT_decl_line(0x203)
	.dwattr $C$DW$T$169, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$169

	.dwendtag $C$DW$TU$169


$C$DW$TU$170	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$170

$C$DW$T$170	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$170, DW_AT_name("Z2_GRABSECT3R_REG")
	.dwattr $C$DW$T$170, DW_AT_byte_size(0x02)
$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$895, DW_AT_name("all")
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x216)
	.dwattr $C$DW$895, DW_AT_decl_column(0x0d)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$896, DW_AT_name("bit")
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x217)
	.dwattr $C$DW$896, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$170, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$170, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$170, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$170

	.dwendtag $C$DW$TU$170


$C$DW$TU$171	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$171

$C$DW$T$171	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$171, DW_AT_name("Z2_LINKPOINTERERR_BITS")
	.dwattr $C$DW$T$171, DW_AT_byte_size(0x02)
$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$897, DW_AT_name("Z2_LINKPOINTERERR")
	.dwattr $C$DW$897, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$897, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$897, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$897, DW_AT_decl_column(0x0c)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$898, DW_AT_name("rsvd1")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$898, DW_AT_bit_size(0x02)
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$898, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$898, DW_AT_decl_column(0x0c)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$899, DW_AT_name("rsvd2")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$899, DW_AT_bit_size(0x10)
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$899, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$899, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$171, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$171, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$T$171, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$171

	.dwendtag $C$DW$TU$171


$C$DW$TU$172	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$172

$C$DW$T$172	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$172, DW_AT_name("Z2_LINKPOINTERERR_REG")
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x02)
$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$900, DW_AT_name("all")
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$900, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$900, DW_AT_decl_column(0x0d)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$901, DW_AT_name("bit")
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$901, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$901, DW_AT_decl_column(0x25)

	.dwattr $C$DW$T$172, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$172, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$T$172, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$172

	.dwendtag $C$DW$TU$172


$C$DW$TU$173	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$173

$C$DW$T$173	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$173, DW_AT_name("Z2_LINKPOINTER_BITS")
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x02)
$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$902, DW_AT_name("LINKPOINTER")
	.dwattr $C$DW$902, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$902, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$902, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$902, DW_AT_decl_column(0x0c)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$903, DW_AT_name("rsvd1")
	.dwattr $C$DW$903, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$903, DW_AT_bit_size(0x02)
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$903, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$903, DW_AT_decl_column(0x0c)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$904, DW_AT_name("rsvd2")
	.dwattr $C$DW$904, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$904, DW_AT_bit_size(0x10)
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$904, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$904, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$173, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$173, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$T$173, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$173

	.dwendtag $C$DW$TU$173


$C$DW$TU$174	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$174

$C$DW$T$174	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$174, DW_AT_name("Z2_LINKPOINTER_REG")
	.dwattr $C$DW$T$174, DW_AT_byte_size(0x02)
$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$905, DW_AT_name("all")
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$905, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$905, DW_AT_decl_column(0x0d)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$906, DW_AT_name("bit")
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$906, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$906, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$174, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$174

	.dwendtag $C$DW$TU$174


$C$DW$TU$175	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$175

$C$DW$T$175	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$175, DW_AT_name("Z2_OTPSECLOCK_BITS")
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x02)
$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$907, DW_AT_name("JTAGLOCK")
	.dwattr $C$DW$907, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$907, DW_AT_bit_size(0x01)
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$907, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$907, DW_AT_decl_column(0x0c)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$908, DW_AT_name("rsvd1")
	.dwattr $C$DW$908, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$908, DW_AT_bit_size(0x03)
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$908, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$908, DW_AT_decl_column(0x0c)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$909, DW_AT_name("PSWDLOCK")
	.dwattr $C$DW$909, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$909, DW_AT_bit_size(0x04)
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$909, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$909, DW_AT_decl_column(0x0c)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$910, DW_AT_name("CRCLOCK")
	.dwattr $C$DW$910, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$910, DW_AT_bit_size(0x04)
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$910, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$910, DW_AT_decl_column(0x0c)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$911, DW_AT_name("rsvd2")
	.dwattr $C$DW$911, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$911, DW_AT_bit_size(0x04)
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$911, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$911, DW_AT_decl_column(0x0c)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$912, DW_AT_name("rsvd3")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$912, DW_AT_bit_size(0x10)
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$912, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$912, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$175, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$175, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$T$175, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$175

	.dwendtag $C$DW$TU$175


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176

$C$DW$T$176	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$176, DW_AT_name("Z2_OTPSECLOCK_REG")
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x02)
$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$913, DW_AT_name("all")
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$913, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$913, DW_AT_decl_column(0x0d)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$914, DW_AT_name("bit")
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$914, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$914, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$176, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_dcsm.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$176

	.dwendtag $C$DW$TU$176


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
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

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
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

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


$C$DW$TU$10	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$10
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$10


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_decl_file("..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$19


$C$DW$TU$206	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$206
$C$DW$915	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)

$C$DW$T$206	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$915)

	.dwendtag $C$DW$TU$206


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x04)
$C$DW$916	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$916, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$917	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$917, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x1c)
$C$DW$918	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$918, DW_AT_upper_bound(0x1b)

	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x154)
$C$DW$919	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$919, DW_AT_upper_bound(0x153)

	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114

$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x22)
$C$DW$920	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$920, DW_AT_upper_bound(0x21)

	.dwendtag $C$DW$T$114

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115

$C$DW$T$115	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x03)
$C$DW$921	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$921, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$115

	.dwendtag $C$DW$TU$115


$C$DW$TU$201	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$201
$C$DW$T$201	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$201, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$201, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$201, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$201, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$201


$C$DW$TU$202	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$202
$C$DW$T$202	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$202, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$202, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$202, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$202


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$21


$C$DW$TU$199	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$199
$C$DW$T$199	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$199, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$199, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$199, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$199, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$199


$C$DW$TU$200	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$200
$C$DW$T$200	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$200, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$T$200, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$200, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$200, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$200


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

