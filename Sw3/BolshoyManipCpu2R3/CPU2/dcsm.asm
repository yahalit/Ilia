;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:12 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{F292C0F7-4F3C-43A1-97D1-57D825AB41FC} 
	.sect	".text:DCSM_getRAMZone"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DCSM_getRAMZone")
	.dwattr $C$DW$1, DW_AT_low_pc(||DCSM_getRAMZone||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("DCSM_getRAMZone")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 558,column 1,is_stmt,address ||DCSM_getRAMZone||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_getRAMZone||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("module")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("cpuInst")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: DCSM_getRAMZone               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||DCSM_getRAMZone||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("module")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -1]

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("cpuInst")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("shift")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -3]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("moduleCM")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[2],AH            ; [CPU_ALU] |558| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |558| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 559,column 20,is_stmt,isa 0
        MOV       ACC,*-SP[1] << #1     ; [CPU_ALU] |559| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |559| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 565,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |565| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 569,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |569| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |569| 
        ; branchcc occurs ; [] |569| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 574,column 9,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |574| 
        ADDB      AL,#-11               ; [CPU_ALU] |574| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |574| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 575,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[4] << #1     ; [CPU_ALU] |575| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |575| 
||$C$L1||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 582,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[2] << #1     ; [CPU_ALU] |582| 
        MOVZ      AR0,AL                ; [CPU_ALU] |582| 
        MOVL      XAR4,#389328          ; [CPU_ARAU] |582| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |582| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |582| 
        LSRL      ACC,T                 ; [CPU_ALU] |582| 
        ANDB      AL,#0x03              ; [CPU_ALU] |582| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 587,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x24b)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:DCSM_getFlashSectorZone"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("DCSM_getFlashSectorZone")
	.dwattr $C$DW$9, DW_AT_low_pc(||DCSM_getFlashSectorZone||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("DCSM_getFlashSectorZone")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x263)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 612,column 1,is_stmt,address ||DCSM_getFlashSectorZone||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_getFlashSectorZone||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("sector")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("cpuInst")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: DCSM_getFlashSectorZone       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||DCSM_getFlashSectorZone||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("sectStat")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -2]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("sector")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -3]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("cpuInst")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -4]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("shift")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AH            ; [CPU_ALU] |612| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |612| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 619,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[4] << #1     ; [CPU_ALU] |619| 
        MOVZ      AR0,AL                ; [CPU_ALU] |619| 
        MOVL      XAR4,#389320          ; [CPU_ARAU] |619| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |619| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |619| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 621,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |621| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |621| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 626,column 5,is_stmt,isa 0
        MOV       T,*-SP[5]             ; [CPU_ALU] |626| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |626| 
        LSRL      ACC,T                 ; [CPU_ALU] |626| 
        ANDB      AL,#0x03              ; [CPU_ALU] |626| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcsm.h",line 627,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x273)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:DCSM_unlockZone1CSM"
	.clink
	.global	||DCSM_unlockZone1CSM||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("DCSM_unlockZone1CSM")
	.dwattr $C$DW$17, DW_AT_low_pc(||DCSM_unlockZone1CSM||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("DCSM_unlockZone1CSM")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x33)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 52,column 1,is_stmt,address ||DCSM_unlockZone1CSM||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_unlockZone1CSM||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("psCMDKey")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCSM_unlockZone1CSM           FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************

||DCSM_unlockZone1CSM||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("psCMDKey")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("linkPointer")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -4]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("zsbBase")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -6]

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("bitPos")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -8]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("zeroFound")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -10]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |52| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 54,column 23,is_stmt,isa 0
        MOVL      XAR4,#491552          ; [CPU_ARAU] |54| 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |54| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 55,column 20,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |55| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |55| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 56,column 23,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |56| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |56| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 63,column 5,is_stmt,isa 0
        MOVL      XAR4,#389120          ; [CPU_ARAU] |63| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |63| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |63| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 68,column 5,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |68| 
        LSLL      ACC,T                 ; [CPU_ALU] |68| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |68| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 74,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |74| 
        ; branch occurs ; [] |74| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 80,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |80| 
        ANDB      AL,#0                 ; [CPU_ALU] |80| 
        AND       AH,#32768             ; [CPU_ALU] |80| 
        TEST      ACC                   ; [CPU_ALU] |80| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |80| 
        ; branchcc occurs ; [] |80| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 82,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |82| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 88,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |88| 
        LSL       ACC,5                 ; [CPU_ALU] |88| 
        ADD       ACC,#7681 << 6        ; [CPU_ALU] |88| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |88| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 96,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |96| 
        SUBL      *-SP[8],ACC           ; [CPU_ALU] |96| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 97,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |97| 
        LSL       ACC,1                 ; [CPU_ALU] |97| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |97| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 74,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |74| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |74| 
        B         ||$C$L2||,GEQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 105,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |105| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |105| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |105| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 106,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |106| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |106| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |106| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 107,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |107| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |107| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 108,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |108| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |108| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 110,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |110| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |110| 
        ; branchcc occurs ; [] |110| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 112,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |112| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |112| 
        MOVL      XAR4,#389136          ; [CPU_ARAU] |112| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |112| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 113,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |113| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |113| 
        MOVL      XAR4,#389138          ; [CPU_ARAU] |113| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |113| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 114,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |114| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |114| 
        MOVL      XAR4,#389140          ; [CPU_ARAU] |114| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |114| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 115,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |115| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |115| 
        MOVL      XAR4,#389142          ; [CPU_ARAU] |115| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |115| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 117,column 1,is_stmt,isa 0
||$C$L6||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:DCSM_unlockZone2CSM"
	.clink
	.global	||DCSM_unlockZone2CSM||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("DCSM_unlockZone2CSM")
	.dwattr $C$DW$25, DW_AT_low_pc(||DCSM_unlockZone2CSM||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("DCSM_unlockZone2CSM")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 126,column 1,is_stmt,address ||DCSM_unlockZone2CSM||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_unlockZone2CSM||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("psCMDKey")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCSM_unlockZone2CSM           FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************

||DCSM_unlockZone2CSM||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("psCMDKey")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("linkPointer")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -4]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("zsbBase")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -6]

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("bitPos")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_breg20 -8]

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("zeroFound")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -10]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |126| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 128,column 22,is_stmt,isa 0
        MOVL      XAR4,#492064          ; [CPU_ARAU] |128| 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |128| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 129,column 20,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |129| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 130,column 23,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |130| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |130| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 137,column 5,is_stmt,isa 0
        MOVL      XAR4,#389248          ; [CPU_ARAU] |137| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |137| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |137| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 142,column 5,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |142| 
        LSLL      ACC,T                 ; [CPU_ALU] |142| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |142| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 148,column 5,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |148| 
        ; branch occurs ; [] |148| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 154,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |154| 
        ANDB      AL,#0                 ; [CPU_ALU] |154| 
        AND       AH,#32768             ; [CPU_ALU] |154| 
        TEST      ACC                   ; [CPU_ALU] |154| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |154| 
        ; branchcc occurs ; [] |154| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 156,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |156| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |156| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 162,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |162| 
        LSL       ACC,5                 ; [CPU_ALU] |162| 
        ADD       ACC,#7689 << 6        ; [CPU_ALU] |162| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |162| 
        B         ||$C$L9||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 170,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |170| 
        SUBL      *-SP[8],ACC           ; [CPU_ALU] |170| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 171,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |171| 
        LSL       ACC,1                 ; [CPU_ALU] |171| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |171| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 148,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |148| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |148| 
        B         ||$C$L7||,GEQ         ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 179,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |179| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |179| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 180,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |180| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |180| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 181,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |181| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |181| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 182,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |182| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |182| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 184,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |184| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |184| 
        ; branchcc occurs ; [] |184| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 186,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |186| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |186| 
        MOVL      XAR4,#389264          ; [CPU_ARAU] |186| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |186| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 187,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |187| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |187| 
        MOVL      XAR4,#389266          ; [CPU_ARAU] |187| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |187| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 188,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |188| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |188| 
        MOVL      XAR4,#389268          ; [CPU_ARAU] |188| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |188| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 189,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |189| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |189| 
        MOVL      XAR4,#389270          ; [CPU_ARAU] |189| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |189| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 191,column 1,is_stmt,isa 0
||$C$L11||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0xbf)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:DCSM_writeZone1CSM"
	.clink
	.global	||DCSM_writeZone1CSM||

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("DCSM_writeZone1CSM")
	.dwattr $C$DW$33, DW_AT_low_pc(||DCSM_writeZone1CSM||)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_linkage_name("DCSM_writeZone1CSM")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$33, DW_AT_decl_column(0x01)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 199,column 1,is_stmt,address ||DCSM_writeZone1CSM||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_writeZone1CSM||
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("psCMDKey")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCSM_writeZone1CSM            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCSM_writeZone1CSM||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("psCMDKey")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |199| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 205,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |205| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 207,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |207| 
        MOVL      XAR4,#389136          ; [CPU_ARAU] |207| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |207| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 208,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |208| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |208| 
        MOVL      XAR4,#389138          ; [CPU_ARAU] |208| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |208| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 209,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |209| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |209| 
        MOVL      XAR4,#389140          ; [CPU_ARAU] |209| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |209| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 210,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |210| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |210| 
        MOVL      XAR4,#389142          ; [CPU_ARAU] |210| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 213,column 1,is_stmt,isa 0
||$C$L12||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0xd5)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text:DCSM_writeZone2CSM"
	.clink
	.global	||DCSM_writeZone2CSM||

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("DCSM_writeZone2CSM")
	.dwattr $C$DW$37, DW_AT_low_pc(||DCSM_writeZone2CSM||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("DCSM_writeZone2CSM")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$37, DW_AT_decl_column(0x01)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 222,column 1,is_stmt,address ||DCSM_writeZone2CSM||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_writeZone2CSM||
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("psCMDKey")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCSM_writeZone2CSM            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCSM_writeZone2CSM||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("psCMDKey")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |222| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 228,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |228| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |228| 
        ; branchcc occurs ; [] |228| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 230,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |230| 
        MOVL      XAR4,#389264          ; [CPU_ARAU] |230| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |230| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 231,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |231| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |231| 
        MOVL      XAR4,#389266          ; [CPU_ARAU] |231| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |231| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 232,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |232| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |232| 
        MOVL      XAR4,#389268          ; [CPU_ARAU] |232| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |232| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 233,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |233| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |233| 
        MOVL      XAR4,#389270          ; [CPU_ARAU] |233| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |233| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 236,column 1,is_stmt,isa 0
||$C$L13||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0xec)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:DCSM_getZone1FlashEXEStatus"
	.clink
	.global	||DCSM_getZone1FlashEXEStatus||

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("DCSM_getZone1FlashEXEStatus")
	.dwattr $C$DW$41, DW_AT_low_pc(||DCSM_getZone1FlashEXEStatus||)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("DCSM_getZone1FlashEXEStatus")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$41, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$41, DW_AT_decl_column(0x01)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 244,column 1,is_stmt,address ||DCSM_getZone1FlashEXEStatus||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_getZone1FlashEXEStatus||
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("sector")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg0]

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("cpuInst")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: DCSM_getZone1FlashEXEStatus   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||DCSM_getZone1FlashEXEStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("regintValue")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -2]

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("sector")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -3]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("cpuInst")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -4]

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("regValue")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -5]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("status")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[4],AH            ; [CPU_ALU] |244| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |244| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 252,column 5,is_stmt,isa 0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("DCSM_getFlashSectorZone")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #||DCSM_getFlashSectorZone|| ; [CPU_ALU] |252| 
        ; call occurs [#||DCSM_getFlashSectorZone||] ; [] |252| 
        CMPB      AL,#1                 ; [CPU_ALU] |252| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |252| 
        ; branchcc occurs ; [] |252| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 254,column 9,is_stmt,isa 0
        MOVB      *-SP[6],#2,UNC        ; [CPU_ALU] |254| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 261,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |261| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 263,column 9,is_stmt,isa 0
        MOVL      XAR4,#389158          ; [CPU_ARAU] |263| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |263| 
        ANDB      AH,#0                 ; [CPU_ALU] |263| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |263| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 267,column 9,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |267| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |267| 
        B         ||$C$L17||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 269,column 11,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |269| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |269| 
        ; branchcc occurs ; [] |269| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 271,column 9,is_stmt,isa 0
        MOVL      XAR4,#389158          ; [CPU_ARAU] |271| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |271| 
        MOVU      ACC,AH                ; [CPU_ALU] |271| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |271| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 274,column 9,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |274| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |274| 
        B         ||$C$L17||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 278,column 9,is_stmt,isa 0
        MOVL      XAR4,#389160          ; [CPU_ARAU] |278| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |278| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |278| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 285,column 9,is_stmt,isa 0
        MOV       T,*-SP[3]             ; [CPU_ALU] |285| 
        LSR       AL,T                  ; [CPU_ALU] |285| 
        ANDB      AL,#0x01              ; [CPU_ALU] |285| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |285| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 288,column 5,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |288| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 289,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x121)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:DCSM_getZone1RAMEXEStatus"
	.clink
	.global	||DCSM_getZone1RAMEXEStatus||

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("DCSM_getZone1RAMEXEStatus")
	.dwattr $C$DW$51, DW_AT_low_pc(||DCSM_getZone1RAMEXEStatus||)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_linkage_name("DCSM_getZone1RAMEXEStatus")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$51, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x129)
	.dwattr $C$DW$51, DW_AT_decl_column(0x01)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 298,column 1,is_stmt,address ||DCSM_getZone1RAMEXEStatus||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_getZone1RAMEXEStatus||
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("module")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("cpuInst")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: DCSM_getZone1RAMEXEStatus     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||DCSM_getZone1RAMEXEStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("module")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -1]

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("cpuInst")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -2]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("status")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -3]

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("moduleCM")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[2],AH            ; [CPU_ALU] |298| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |298| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 300,column 29,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |300| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 304,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |304| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 309,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |309| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |309| 
        ; branchcc occurs ; [] |309| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 314,column 9,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |314| 
        ADDB      AL,#-11               ; [CPU_ALU] |314| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |314| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 320,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |320| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("DCSM_getRAMZone")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #||DCSM_getRAMZone||  ; [CPU_ALU] |320| 
        ; call occurs [#||DCSM_getRAMZone||] ; [] |320| 
        CMPB      AL,#1                 ; [CPU_ALU] |320| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 322,column 9,is_stmt,isa 0
        MOVB      *-SP[3],#2,UNC        ; [CPU_ALU] |322| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 329,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |329| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |329| 
        ; branchcc occurs ; [] |329| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 331,column 9,is_stmt,isa 0
        MOVL      XAR4,#389162          ; [CPU_ARAU] |331| 
        MOV       T,*-SP[1]             ; [CPU_ALU] |331| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |331| 
        LSR       AL,T                  ; [CPU_ALU] |331| 
        ANDB      AL,#0x01              ; [CPU_ALU] |331| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |331| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 335,column 10,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |335| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |335| 
        ; branchcc occurs ; [] |335| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 337,column 9,is_stmt,isa 0
        MOVL      XAR4,#389162          ; [CPU_ARAU] |337| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |337| 
        MOVZ      AR4,*-SP[4]           ; [CPU_ALU] |337| 
        ADDB      XAR4,#16              ; [CPU_ALU] |337| 
        MOV       T,AR4                 ; [CPU_ALU] |337| 
        LSRL      ACC,T                 ; [CPU_ALU] |337| 
        ANDB      AL,#0x01              ; [CPU_ALU] |337| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |337| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 345,column 9,is_stmt,isa 0
        MOV       T,#31                 ; [CPU_ALU] |345| 
        MOVL      XAR4,#389162          ; [CPU_ARAU] |345| 
        MOV       AL,T                  ; [CPU_ALU] |345| 
        SUB       AL,*-SP[1]            ; [CPU_ALU] |345| 
        MOV       T,AL                  ; [CPU_ALU] |345| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |345| 
        LSRL      ACC,T                 ; [CPU_ALU] |345| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |345| 
        MOV       AL,AR6                ; [CPU_ALU] |345| 
        ANDB      AL,#0x01              ; [CPU_ALU] |345| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |345| 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 353,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |353| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 354,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x162)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text:DCSM_getZone2FlashEXEStatus"
	.clink
	.global	||DCSM_getZone2FlashEXEStatus||

$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("DCSM_getZone2FlashEXEStatus")
	.dwattr $C$DW$60, DW_AT_low_pc(||DCSM_getZone2FlashEXEStatus||)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_linkage_name("DCSM_getZone2FlashEXEStatus")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$60, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$60, DW_AT_decl_column(0x01)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 363,column 1,is_stmt,address ||DCSM_getZone2FlashEXEStatus||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_getZone2FlashEXEStatus||
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("sector")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]

$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("cpuInst")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: DCSM_getZone2FlashEXEStatus   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||DCSM_getZone2FlashEXEStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("regintValue")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -2]

$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("sector")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg20 -3]

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("cpuInst")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -4]

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("regValue")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -5]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("status")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[4],AH            ; [CPU_ALU] |363| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |363| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 371,column 5,is_stmt,isa 0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("DCSM_getFlashSectorZone")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #||DCSM_getFlashSectorZone|| ; [CPU_ALU] |371| 
        ; call occurs [#||DCSM_getFlashSectorZone||] ; [] |371| 
        CMPB      AL,#2                 ; [CPU_ALU] |371| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |371| 
        ; branchcc occurs ; [] |371| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 373,column 9,is_stmt,isa 0
        MOVB      *-SP[6],#2,UNC        ; [CPU_ALU] |373| 
        B         ||$C$L28||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 380,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |380| 
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |380| 
        ; branchcc occurs ; [] |380| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 382,column 10,is_stmt,isa 0
        MOVL      XAR4,#389286          ; [CPU_ARAU] |382| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |382| 
        ANDB      AH,#0                 ; [CPU_ALU] |382| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |382| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 386,column 10,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |386| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |386| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 388,column 10,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |388| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |388| 
        ; branchcc occurs ; [] |388| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 390,column 10,is_stmt,isa 0
        MOVL      XAR4,#389286          ; [CPU_ARAU] |390| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |390| 
        MOVU      ACC,AH                ; [CPU_ALU] |390| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |390| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 393,column 10,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |393| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |393| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 397,column 9,is_stmt,isa 0
        MOVL      XAR4,#389288          ; [CPU_ARAU] |397| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |397| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |397| 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 404,column 9,is_stmt,isa 0
        MOV       T,*-SP[3]             ; [CPU_ALU] |404| 
        LSR       AL,T                  ; [CPU_ALU] |404| 
        ANDB      AL,#0x01              ; [CPU_ALU] |404| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |404| 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 408,column 5,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |408| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 409,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$60, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

	.sect	".text:DCSM_getZone2RAMEXEStatus"
	.clink
	.global	||DCSM_getZone2RAMEXEStatus||

$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("DCSM_getZone2RAMEXEStatus")
	.dwattr $C$DW$70, DW_AT_low_pc(||DCSM_getZone2RAMEXEStatus||)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_linkage_name("DCSM_getZone2RAMEXEStatus")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$70, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$70, DW_AT_decl_column(0x01)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 418,column 1,is_stmt,address ||DCSM_getZone2RAMEXEStatus||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_getZone2RAMEXEStatus||
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("module")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("cpuInst")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: DCSM_getZone2RAMEXEStatus     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||DCSM_getZone2RAMEXEStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("module")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -1]

$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("cpuInst")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -2]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("status")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -3]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("moduleCM")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[2],AH            ; [CPU_ALU] |418| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |418| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 420,column 29,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |420| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 424,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |424| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 429,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |429| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |429| 
        ; branchcc occurs ; [] |429| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 434,column 9,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |434| 
        ADDB      AL,#-11               ; [CPU_ALU] |434| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |434| 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 440,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |440| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("DCSM_getRAMZone")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||DCSM_getRAMZone||  ; [CPU_ALU] |440| 
        ; call occurs [#||DCSM_getRAMZone||] ; [] |440| 
        CMPB      AL,#2                 ; [CPU_ALU] |440| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |440| 
        ; branchcc occurs ; [] |440| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 442,column 9,is_stmt,isa 0
        MOVB      *-SP[3],#2,UNC        ; [CPU_ALU] |442| 
        B         ||$C$L33||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 449,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |449| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |449| 
        ; branchcc occurs ; [] |449| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 451,column 9,is_stmt,isa 0
        MOVL      XAR4,#389290          ; [CPU_ARAU] |451| 
        MOV       T,*-SP[1]             ; [CPU_ALU] |451| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |451| 
        LSR       AL,T                  ; [CPU_ALU] |451| 
        ANDB      AL,#0x01              ; [CPU_ALU] |451| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |451| 
        B         ||$C$L33||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 455,column 10,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |455| 
        B         ||$C$L32||,NEQ        ; [CPU_ALU] |455| 
        ; branchcc occurs ; [] |455| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 457,column 9,is_stmt,isa 0
        MOVL      XAR4,#389290          ; [CPU_ARAU] |457| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |457| 
        MOVZ      AR4,*-SP[4]           ; [CPU_ALU] |457| 
        ADDB      XAR4,#16              ; [CPU_ALU] |457| 
        MOV       T,AR4                 ; [CPU_ALU] |457| 
        LSRL      ACC,T                 ; [CPU_ALU] |457| 
        ANDB      AL,#0x01              ; [CPU_ALU] |457| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |457| 
        B         ||$C$L33||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 465,column 9,is_stmt,isa 0
        MOV       T,#31                 ; [CPU_ALU] |465| 
        MOVL      XAR4,#389290          ; [CPU_ARAU] |465| 
        MOV       AL,T                  ; [CPU_ALU] |465| 
        SUB       AL,*-SP[1]            ; [CPU_ALU] |465| 
        MOV       T,AL                  ; [CPU_ALU] |465| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |465| 
        LSRL      ACC,T                 ; [CPU_ALU] |465| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |465| 
        MOV       AL,AR6                ; [CPU_ALU] |465| 
        ANDB      AL,#0x01              ; [CPU_ALU] |465| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |465| 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 472,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |472| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 473,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x1d9)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text:DCSM_claimZoneSemaphore"
	.clink
	.global	||DCSM_claimZoneSemaphore||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("DCSM_claimZoneSemaphore")
	.dwattr $C$DW$79, DW_AT_low_pc(||DCSM_claimZoneSemaphore||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("DCSM_claimZoneSemaphore")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$79, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$79, DW_AT_decl_column(0x01)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 482,column 1,is_stmt,address ||DCSM_claimZoneSemaphore||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_claimZoneSemaphore||
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("zone")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCSM_claimZoneSemaphore       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||DCSM_claimZoneSemaphore||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("regAddress")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -2]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("zone")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AL            ; [CPU_ALU] |482| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 486,column 25,is_stmt,isa 0
        MOVL      XAR4,#389312          ; [CPU_ARAU] |486| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |486| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 488,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |488| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 494,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |494| 
        OR        AL,#0xa500            ; [CPU_ALU] |494| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |494| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 496,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |496| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 502,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |502| 
        MOVZ      AR7,*-SP[3]           ; [CPU_ALU] |502| 
        MOV       PH,#0                 ; [CPU_ALU] |502| 
        MOVB      XAR6,#0               ; [CPU_ALU] |502| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |502| 
        ANDB      AL,#0x03              ; [CPU_ALU] |502| 
        MOV       PL,AL                 ; [CPU_ALU] |502| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |502| 
        CMPL      ACC,P                 ; [CPU_ALU] |502| 
        B         ||$C$L34||,NEQ        ; [CPU_ALU] |502| 
        ; branchcc occurs ; [] |502| 
        MOVB      AH,#1                 ; [CPU_ALU] |502| 
        B         ||$C$L35||,UNC        ; [CPU_ALU] |502| 
        ; branch occurs ; [] |502| 
||$C$L34||:    
        MOVB      AH,#0                 ; [CPU_ALU] |502| 
||$C$L35||:    
        CMPB      AH,#0                 ; [CPU_ALU] |502| 
        B         ||$C$L36||,EQ         ; [CPU_ALU] |502| 
        ; branchcc occurs ; [] |502| 
        MOVB      XAR6,#1               ; [CPU_ALU] |502| 
||$C$L36||:    
        MOV       AL,AR6                ; [CPU_ALU] |502| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 504,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x1f8)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:DCSM_releaseZoneSemaphore"
	.clink
	.global	||DCSM_releaseZoneSemaphore||

$C$DW$84	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$84, DW_AT_name("DCSM_releaseZoneSemaphore")
	.dwattr $C$DW$84, DW_AT_low_pc(||DCSM_releaseZoneSemaphore||)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_linkage_name("DCSM_releaseZoneSemaphore")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$84, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x200)
	.dwattr $C$DW$84, DW_AT_decl_column(0x01)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 513,column 1,is_stmt,address ||DCSM_releaseZoneSemaphore||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_releaseZoneSemaphore||

;***************************************************************
;* FNAME: DCSM_releaseZoneSemaphore     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCSM_releaseZoneSemaphore||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("regAddress")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -2]

	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 517,column 25,is_stmt,isa 0
        MOVL      XAR4,#389312          ; [CPU_ARAU] |517| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |517| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 519,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |519| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 525,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |525| 
        MOV       *+XAR4[0],#42240      ; [CPU_ALU] |525| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 526,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |526| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 532,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |532| 
        MOVB      AL,#0                 ; [CPU_ALU] |532| 
        MOV       AH,*+XAR4[0]          ; [CPU_ALU] |532| 
        ANDB      AH,#0x03              ; [CPU_ALU] |532| 
        CMPB      AH,#0                 ; [CPU_ALU] |532| 
        B         ||$C$L37||,NEQ        ; [CPU_ALU] |532| 
        ; branchcc occurs ; [] |532| 
        MOVB      AH,#1                 ; [CPU_ALU] |532| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] |532| 
        ; branch occurs ; [] |532| 
||$C$L37||:    
        MOVB      AH,#0                 ; [CPU_ALU] |532| 
||$C$L38||:    
        CMPB      AH,#0                 ; [CPU_ALU] |532| 
        B         ||$C$L39||,EQ         ; [CPU_ALU] |532| 
        ; branchcc occurs ; [] |532| 
        MOVB      AL,#1                 ; [CPU_ALU] |532| 
||$C$L39||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 533,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$84, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x215)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text:DCSM_readZone1CSMPwd"
	.clink
	.global	||DCSM_readZone1CSMPwd||

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("DCSM_readZone1CSMPwd")
	.dwattr $C$DW$87, DW_AT_low_pc(||DCSM_readZone1CSMPwd||)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_linkage_name("DCSM_readZone1CSMPwd")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$87, DW_AT_decl_column(0x01)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 542,column 1,is_stmt,address ||DCSM_readZone1CSMPwd||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_readZone1CSMPwd||

;***************************************************************
;* FNAME: DCSM_readZone1CSMPwd          FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||DCSM_readZone1CSMPwd||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("linkPointer")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -2]

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("zsbBase")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -4]

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("bitPos")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -6]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("zeroFound")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -8]

	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 544,column 23,is_stmt,isa 0
        MOVL      XAR4,#491552          ; [CPU_ARAU] |544| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |544| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 545,column 20,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |545| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |545| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 546,column 23,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |546| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |546| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 548,column 5,is_stmt,isa 0
        MOVL      XAR4,#389120          ; [CPU_ARAU] |548| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |548| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |548| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 552,column 5,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |552| 
        LSLL      ACC,T                 ; [CPU_ALU] |552| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |552| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 559,column 5,is_stmt,isa 0
        B         ||$C$L42||,UNC        ; [CPU_ALU] |559| 
        ; branch occurs ; [] |559| 
||$C$L40||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 565,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |565| 
        ANDB      AL,#0                 ; [CPU_ALU] |565| 
        AND       AH,#32768             ; [CPU_ALU] |565| 
        TEST      ACC                   ; [CPU_ALU] |565| 
        B         ||$C$L41||,NEQ        ; [CPU_ALU] |565| 
        ; branchcc occurs ; [] |565| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 567,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |567| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |567| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 573,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |573| 
        LSL       ACC,5                 ; [CPU_ALU] |573| 
        ADD       ACC,#7681 << 6        ; [CPU_ALU] |573| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |573| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L41||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 581,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |581| 
        SUBL      *-SP[6],ACC           ; [CPU_ALU] |581| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 582,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |582| 
        LSL       ACC,1                 ; [CPU_ALU] |582| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |582| 
||$C$L42||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 559,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |559| 
        B         ||$C$L43||,NEQ        ; [CPU_ALU] |559| 
        ; branchcc occurs ; [] |559| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |559| 
        B         ||$C$L40||,GEQ        ; [CPU_ALU] |559| 
        ; branchcc occurs ; [] |559| 
||$C$L43||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 590,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |590| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |590| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |590| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 591,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |591| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |591| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |591| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 592,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |592| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |592| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 593,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |593| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |593| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 595,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x253)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:DCSM_readZone2CSMPwd"
	.clink
	.global	||DCSM_readZone2CSMPwd||

$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("DCSM_readZone2CSMPwd")
	.dwattr $C$DW$93, DW_AT_low_pc(||DCSM_readZone2CSMPwd||)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_linkage_name("DCSM_readZone2CSMPwd")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$93, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$93, DW_AT_decl_column(0x01)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 604,column 1,is_stmt,address ||DCSM_readZone2CSMPwd||,isa 0

	.dwfde $C$DW$CIE, ||DCSM_readZone2CSMPwd||

;***************************************************************
;* FNAME: DCSM_readZone2CSMPwd          FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||DCSM_readZone2CSMPwd||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("linkPointer")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -2]

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("zsbBase")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -4]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("bitPos")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -6]

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("zeroFound")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg20 -8]

	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 606,column 22,is_stmt,isa 0
        MOVL      XAR4,#492064          ; [CPU_ARAU] |606| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |606| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 607,column 20,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |607| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |607| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 608,column 23,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |608| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |608| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 610,column 5,is_stmt,isa 0
        MOVL      XAR4,#389248          ; [CPU_ARAU] |610| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |610| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |610| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 614,column 5,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |614| 
        LSLL      ACC,T                 ; [CPU_ALU] |614| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |614| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 621,column 5,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |621| 
        ; branch occurs ; [] |621| 
||$C$L44||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 627,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |627| 
        ANDB      AL,#0                 ; [CPU_ALU] |627| 
        AND       AH,#32768             ; [CPU_ALU] |627| 
        TEST      ACC                   ; [CPU_ALU] |627| 
        B         ||$C$L45||,NEQ        ; [CPU_ALU] |627| 
        ; branchcc occurs ; [] |627| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 629,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |629| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |629| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 635,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |635| 
        LSL       ACC,5                 ; [CPU_ALU] |635| 
        ADD       ACC,#7689 << 6        ; [CPU_ALU] |635| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |635| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L45||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 643,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |643| 
        SUBL      *-SP[6],ACC           ; [CPU_ALU] |643| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 644,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |644| 
        LSL       ACC,1                 ; [CPU_ALU] |644| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |644| 
||$C$L46||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 621,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |621| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |621| 
        ; branchcc occurs ; [] |621| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |621| 
        B         ||$C$L44||,GEQ        ; [CPU_ALU] |621| 
        ; branchcc occurs ; [] |621| 
||$C$L47||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 652,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |652| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |652| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |652| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 653,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |653| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |653| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |653| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 654,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |654| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |654| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 655,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |655| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |655| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dcsm.c",line 657,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$93, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dcsm.c")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x291)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93


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

$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("DCSM_MEMORY_INACCESSIBLE")
	.dwattr $C$DW$99, DW_AT_const_value(0x00)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x79)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("DCSM_MEMORY_ZONE1")
	.dwattr $C$DW$100, DW_AT_const_value(0x01)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("DCSM_MEMORY_ZONE2")
	.dwattr $C$DW$101, DW_AT_const_value(0x02)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("DCSM_MEMORY_FULL_ACCESS")
	.dwattr $C$DW$102, DW_AT_const_value(0x03)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("DCSM_MemoryStatus")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("DCSM_RAMLS0")
	.dwattr $C$DW$103, DW_AT_const_value(0x00)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("DCSM_RAMLS1")
	.dwattr $C$DW$104, DW_AT_const_value(0x01)
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("DCSM_RAMLS2")
	.dwattr $C$DW$105, DW_AT_const_value(0x02)
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("DCSM_RAMLS3")
	.dwattr $C$DW$106, DW_AT_const_value(0x03)
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("DCSM_RAMLS4")
	.dwattr $C$DW$107, DW_AT_const_value(0x04)
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("DCSM_RAMLS5")
	.dwattr $C$DW$108, DW_AT_const_value(0x05)
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("DCSM_RAMLS6")
	.dwattr $C$DW$109, DW_AT_const_value(0x06)
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("DCSM_RAMLS7")
	.dwattr $C$DW$110, DW_AT_const_value(0x07)
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("DCSM_RAMD0")
	.dwattr $C$DW$111, DW_AT_const_value(0x08)
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("DCSM_RAMD1")
	.dwattr $C$DW$112, DW_AT_const_value(0x09)
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xca)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("DCSM_C28_RAM_END")
	.dwattr $C$DW$113, DW_AT_const_value(0x0a)
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("DCSM_RAM_CM_C0")
	.dwattr $C$DW$114, DW_AT_const_value(0x0b)
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("DCSM_RAM_CM_C1")
	.dwattr $C$DW$115, DW_AT_const_value(0x0c)
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("DCSM_RAM1_CPU1_CM")
	.dwattr $C$DW$116, DW_AT_const_value(0x0d)
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("DCSM_RAM2_CPU1_CM")
	.dwattr $C$DW$117, DW_AT_const_value(0x0e)
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("DCSM_RAM1_CM_CPU1")
	.dwattr $C$DW$118, DW_AT_const_value(0x0f)
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("DCSM_RAM2_CM_CPU1")
	.dwattr $C$DW$119, DW_AT_const_value(0x10)
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("DCSM_RAM1_CPU2_CM")
	.dwattr $C$DW$120, DW_AT_const_value(0x11)
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("DCSM_RAM2_CPU2_CM")
	.dwattr $C$DW$121, DW_AT_const_value(0x12)
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("DCSM_RAM1_CM_CPU2")
	.dwattr $C$DW$122, DW_AT_const_value(0x13)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("DCSM_RAM2_CM_CPU2")
	.dwattr $C$DW$123, DW_AT_const_value(0x14)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("DCSM_RAM1_CPU1_CPU2")
	.dwattr $C$DW$124, DW_AT_const_value(0x15)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("DCSM_RAM2_CPU1_CPU2")
	.dwattr $C$DW$125, DW_AT_const_value(0x16)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xda)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("DCSM_RAM1_CPU2_CPU1")
	.dwattr $C$DW$126, DW_AT_const_value(0x17)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("DCSM_RAM2_CPU2_CPU1")
	.dwattr $C$DW$127, DW_AT_const_value(0x18)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

$C$DW$128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$128, DW_AT_name("DCSM_CM_RAM_END")
	.dwattr $C$DW$128, DW_AT_const_value(0x19)
	.dwattr $C$DW$128, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("DCSM_RAMModule")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xde)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$129, DW_AT_name("DCSM_CPUSEL_CPU1")
	.dwattr $C$DW$129, DW_AT_const_value(0x00)
	.dwattr $C$DW$129, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x103)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)

$C$DW$130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$130, DW_AT_name("DCSM_CPUSEL_CPU2")
	.dwattr $C$DW$130, DW_AT_const_value(0x02)
	.dwattr $C$DW$130, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x105)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)

$C$DW$131	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$131, DW_AT_name("DCSM_CPUSEL_CM")
	.dwattr $C$DW$131, DW_AT_const_value(0x01)
	.dwattr $C$DW$131, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x107)
	.dwattr $C$DW$131, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("DCSM_CPUSel")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x109)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$132	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$132, DW_AT_name("DCSM_SECTOR_0")
	.dwattr $C$DW$132, DW_AT_const_value(0x00)
	.dwattr $C$DW$132, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$132, DW_AT_decl_column(0x05)

$C$DW$133	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$133, DW_AT_name("DCSM_SECTOR_1")
	.dwattr $C$DW$133, DW_AT_const_value(0x01)
	.dwattr $C$DW$133, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0xea)
	.dwattr $C$DW$133, DW_AT_decl_column(0x05)

$C$DW$134	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$134, DW_AT_name("DCSM_SECTOR_2")
	.dwattr $C$DW$134, DW_AT_const_value(0x02)
	.dwattr $C$DW$134, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$134, DW_AT_decl_column(0x05)

$C$DW$135	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$135, DW_AT_name("DCSM_SECTOR_3")
	.dwattr $C$DW$135, DW_AT_const_value(0x03)
	.dwattr $C$DW$135, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0xec)
	.dwattr $C$DW$135, DW_AT_decl_column(0x05)

$C$DW$136	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$136, DW_AT_name("DCSM_SECTOR_4")
	.dwattr $C$DW$136, DW_AT_const_value(0x04)
	.dwattr $C$DW$136, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0xed)
	.dwattr $C$DW$136, DW_AT_decl_column(0x05)

$C$DW$137	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$137, DW_AT_name("DCSM_SECTOR_5")
	.dwattr $C$DW$137, DW_AT_const_value(0x05)
	.dwattr $C$DW$137, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0xee)
	.dwattr $C$DW$137, DW_AT_decl_column(0x05)

$C$DW$138	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$138, DW_AT_name("DCSM_SECTOR_6")
	.dwattr $C$DW$138, DW_AT_const_value(0x06)
	.dwattr $C$DW$138, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xef)
	.dwattr $C$DW$138, DW_AT_decl_column(0x05)

$C$DW$139	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$139, DW_AT_name("DCSM_SECTOR_7")
	.dwattr $C$DW$139, DW_AT_const_value(0x07)
	.dwattr $C$DW$139, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$139, DW_AT_decl_column(0x05)

$C$DW$140	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$140, DW_AT_name("DCSM_SECTOR_8")
	.dwattr $C$DW$140, DW_AT_const_value(0x08)
	.dwattr $C$DW$140, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$140, DW_AT_decl_column(0x05)

$C$DW$141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$141, DW_AT_name("DCSM_SECTOR_9")
	.dwattr $C$DW$141, DW_AT_const_value(0x09)
	.dwattr $C$DW$141, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$141, DW_AT_decl_column(0x05)

$C$DW$142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$142, DW_AT_name("DCSM_SECTOR_10")
	.dwattr $C$DW$142, DW_AT_const_value(0x0a)
	.dwattr $C$DW$142, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$142, DW_AT_decl_column(0x05)

$C$DW$143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$143, DW_AT_name("DCSM_SECTOR_11")
	.dwattr $C$DW$143, DW_AT_const_value(0x0b)
	.dwattr $C$DW$143, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$143, DW_AT_decl_column(0x05)

$C$DW$144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$144, DW_AT_name("DCSM_SECTOR_12")
	.dwattr $C$DW$144, DW_AT_const_value(0x0c)
	.dwattr $C$DW$144, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$144, DW_AT_decl_column(0x05)

$C$DW$145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$145, DW_AT_name("DCSM_SECTOR_13")
	.dwattr $C$DW$145, DW_AT_const_value(0x0d)
	.dwattr $C$DW$145, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$145, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$30, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("DCSM_Sector")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$31


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$146, DW_AT_name("DCSM_PROTECTED")
	.dwattr $C$DW$146, DW_AT_const_value(0x00)
	.dwattr $C$DW$146, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$146, DW_AT_decl_column(0x05)

$C$DW$147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$147, DW_AT_name("DCSM_UNPROTECTED")
	.dwattr $C$DW$147, DW_AT_const_value(0x01)
	.dwattr $C$DW$147, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$147, DW_AT_decl_column(0x05)

$C$DW$148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$148, DW_AT_name("DCSM_INCORRECT_ZONE")
	.dwattr $C$DW$148, DW_AT_const_value(0x02)
	.dwattr $C$DW$148, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$148, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("DCSM_EXEOnlyStatus")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$35


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$149, DW_AT_name("DCSM_FLSEM_ZONE1")
	.dwattr $C$DW$149, DW_AT_const_value(0x01)
	.dwattr $C$DW$149, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x87)
	.dwattr $C$DW$149, DW_AT_decl_column(0x05)

$C$DW$150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$150, DW_AT_name("DCSM_FLSEM_ZONE2")
	.dwattr $C$DW$150, DW_AT_const_value(0x02)
	.dwattr $C$DW$150, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x88)
	.dwattr $C$DW$150, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("DCSM_SemaphoreZone")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$39


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x08)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("csmKey0")
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x69)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0e)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$152, DW_AT_name("csmKey1")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0e)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_name("csmKey2")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0e)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$154, DW_AT_name("csmKey3")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("DCSM_CSMPasswordKey")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcsm.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$155	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$40)

$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$155)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$156	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$42)

$C$DW$T$43	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$156)

	.dwendtag $C$DW$TU$43


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


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$47


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("int32_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$51


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


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


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$T$55	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$55, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$55, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$55

