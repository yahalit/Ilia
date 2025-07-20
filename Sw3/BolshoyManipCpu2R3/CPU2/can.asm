;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:11 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1218)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)

	.dwendtag $C$DW$1

;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{29F1D79C-DADB-421B-B105-14F208ECDF5C} 
	.sect	".text:CAN_initRAM"
	.clink

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("CAN_initRAM")
	.dwattr $C$DW$3, DW_AT_low_pc(||CAN_initRAM||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("CAN_initRAM")
	.dwattr $C$DW$3, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x148)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\can.h",line 329,column 1,is_stmt,address ||CAN_initRAM||,isa 0

	.dwfde $C$DW$CIE, ||CAN_initRAM||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("base")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: CAN_initRAM                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||CAN_initRAM||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("base")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |329| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\can.h",line 335,column 5,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |335| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |335| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |335| 
        MOVB      *+XAR4[0],#26,UNC     ; [CPU_ALU] |335| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\can.h",line 338,column 5,is_stmt,isa 0
||$C$L1||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\can.h",line 338,column 11,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |338| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |338| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |338| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |338| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |338| 
        CMPB      AL,#37                ; [CPU_ALU] |338| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\can.h",line 346,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:CAN_writeDataReg"
	.clink
	.global	||CAN_writeDataReg||

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("CAN_writeDataReg")
	.dwattr $C$DW$7, DW_AT_low_pc(||CAN_writeDataReg||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("CAN_writeDataReg")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x43)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 69,column 1,is_stmt,address ||CAN_writeDataReg||,isa 0

	.dwfde $C$DW$CIE, ||CAN_writeDataReg||
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("data")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("address")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg0]

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("size")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: CAN_writeDataReg              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||CAN_writeDataReg||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("data")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("address")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -4]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("idx")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -6]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("dataReg")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[4],ACC           ; [CPU_ALU] |69| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |69| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 71,column 22,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |71| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 76,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |76| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |76| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 76,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |76| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |76| 
        B         ||$C$L4||,LOS         ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 81,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |81| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 83,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |83| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |83| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |83| 
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |83| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |83| 
        MOVB      *+XAR5[0],AL.LSB      ; [CPU_ALU] |83| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 85,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |85| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |85| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |85| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 76,column 31,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |76| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |76| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |76| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 76,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |76| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |76| 
        B         ||$C$L2||,HI          ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 88,column 1,is_stmt,isa 0
||$C$L4||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:CAN_readDataReg"
	.clink

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("CAN_readDataReg")
	.dwattr $C$DW$16, DW_AT_low_pc(||CAN_readDataReg||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("CAN_readDataReg")
	.dwattr $C$DW$16, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x70)
	.dwattr $C$DW$16, DW_AT_decl_column(0x01)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 113,column 1,is_stmt,address ||CAN_readDataReg||,isa 0

	.dwfde $C$DW$CIE, ||CAN_readDataReg||
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("data")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("address")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("size")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: CAN_readDataReg               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||CAN_readDataReg||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("data")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -2]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("address")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -4]

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("idx")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -6]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("dataReg")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[4],ACC           ; [CPU_ALU] |113| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |113| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 115,column 22,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |115| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 120,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |120| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |120| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 120,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |120| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |120| 
        B         ||$C$L6||,LOS         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 125,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |125| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |125| 
        MOVZ      AR6,AL                ; [CPU_ALU] |125| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |125| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |125| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |125| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |125| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 127,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |127| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |127| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |127| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 120,column 31,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |120| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |120| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |120| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 120,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |120| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |120| 
        B         ||$C$L5||,HI          ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 129,column 1,is_stmt,isa 0
||$C$L6||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x81)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:CAN_initModule"
	.clink
	.global	||CAN_initModule||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("CAN_initModule")
	.dwattr $C$DW$25, DW_AT_low_pc(||CAN_initModule||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("CAN_initModule")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 139,column 1,is_stmt,address ||CAN_initModule||,isa 0

	.dwfde $C$DW$CIE, ||CAN_initModule||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: CAN_initModule                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||CAN_initModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("base")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |139| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 150,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |150| 
        OR        *+XAR4[0],#0x1401     ; [CPU_ALU] |150| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 156,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |156| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("CAN_initRAM")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||CAN_initRAM||      ; [CPU_ALU] |156| 
        ; call occurs [#||CAN_initRAM||] ; [] |156| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 161,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |161| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 163,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |163| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |163| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 164,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 169,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |169| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |169| 
        ; call occurs [#||SysCtl_delay||] ; [] |169| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 174,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |174| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |174| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 175,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0xaf)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:CAN_setBitRate"
	.clink
	.global	||CAN_setBitRate||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("CAN_setBitRate")
	.dwattr $C$DW$31, DW_AT_low_pc(||CAN_setBitRate||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("CAN_setBitRate")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 185,column 1,is_stmt,address ||CAN_setBitRate||,isa 0

	.dwfde $C$DW$CIE, ||CAN_setBitRate||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("clock")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -22]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("bitRate")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -24]

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("bitTime")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: CAN_setBitRate                FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter, 14 Auto,  0 SOE     *
;***************************************************************

||CAN_setBitRate||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#18                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -20
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -6]

$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("bitTime")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -7]

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("brp")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -8]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("tPhase")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -9]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("phaseSeg2")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -10]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("tSync")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -11]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("tProp")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -12]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("tSeg1")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -13]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("tSeg2")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -14]

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("sjw")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -15]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("prescaler")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -16]

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("prescalerExtension")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -17]

        MOV       *-SP[7],AR4           ; [CPU_ALU] |185| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |185| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 189,column 20,is_stmt,isa 0
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |189| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 190,column 20,is_stmt,isa 0
        MOVB      *-SP[12],#2,UNC       ; [CPU_ALU] |190| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 207,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[7]           ; [CPU_ALU] |207| 
        MOVL      XT,ACC                ; [CPU_ALU] |207| 
        IMPYXUL   P,XT,*-SP[24]         ; [CPU_ALU] |207| 
        MOV32     R3H,P                 ; [CPU_FPU] |207| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ZERO      R2                    ; [CPU_FPU] |207| 
        MOV32     R1H,*-SP[22]          ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |207| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |207| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |207| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 208,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |208| 
        SUB       AL,*-SP[11]           ; [CPU_ALU] |208| 
        SUB       AL,*-SP[12]           ; [CPU_ALU] |208| 
        MOV       *-SP[9],AL            ; [CPU_ALU] |208| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 209,column 5,is_stmt,isa 0
        UI16TOF32 R1H,*-SP[9]           ; [CPU_FPU] |209| 
        ZERO      R2                    ; [CPU_FPU] |209| 
        MPYF32    R1H,R1H,#18304        ; [CPU_FPU] |209| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |209| 
        F32TOUI32 R1H,R1H               ; [CPU_FPU] |209| 
        MOVXI     R3H,#2                ; [CPU_FPU] |209| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |209| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |209| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |209| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |209| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |209| 
        CMPB      AL,#8                 ; [CPU_ALU] |209| 
        B         ||$C$L7||,HI          ; [CPU_ALU] |209| 
        ; branchcc occurs ; [] |209| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 211,column 9,is_stmt,isa 0
        UI16TOF32 R1H,*-SP[9]           ; [CPU_FPU] |211| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |211| 
        MPYF32    R1H,R1H,#18304        ; [CPU_FPU] |211| 
        ZERO      R2                    ; [CPU_FPU] |211| 
        F32TOUI32 R1H,R1H               ; [CPU_FPU] |211| 
        MOVXI     R3H,#2                ; [CPU_FPU] |211| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |211| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |211| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |211| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |211| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |211| 
        MOV       *-SP[10],AL           ; [CPU_ALU] |211| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 215,column 9,is_stmt,isa 0
        MOVB      *-SP[10],#8,UNC       ; [CPU_ALU] |215| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 217,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |217| 
        SUB       AL,*-SP[10]           ; [CPU_ALU] |217| 
        ADD       AL,*-SP[12]           ; [CPU_ALU] |217| 
        ADDB      AL,#-1                ; [CPU_ALU] |217| 
        MOV       *-SP[13],AL           ; [CPU_ALU] |217| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 218,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |218| 
        ADDB      AL,#-1                ; [CPU_ALU] |218| 
        MOV       *-SP[14],AL           ; [CPU_ALU] |218| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 219,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |219| 
        CMPB      AL,#4                 ; [CPU_ALU] |219| 
        B         ||$C$L9||,LOS         ; [CPU_ALU] |219| 
        ; branchcc occurs ; [] |219| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 221,column 9,is_stmt,isa 0
        MOVB      *-SP[15],#3,UNC       ; [CPU_ALU] |221| 
        B         ||$C$L10||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 225,column 9,is_stmt,isa 0
        MOV       AL,*-SP[14]           ; [CPU_ALU] |225| 
        MOV       *-SP[15],AL           ; [CPU_ALU] |225| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 227,column 5,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |227| 
        ADDB      AL,#-1                ; [CPU_ALU] |227| 
        MOVZ      AR6,AL                ; [CPU_ALU] |227| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |227| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI16TOF32 R1H,R1H               ; [CPU_FPU] |227| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |227| 
        MPYF32    R1H,R1H,#18304        ; [CPU_FPU] |227| 
        ZERO      R2                    ; [CPU_FPU] |227| 
        F32TOUI32 R1H,R1H               ; [CPU_FPU] |227| 
        MOVXI     R3H,#64               ; [CPU_FPU] |227| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |227| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |227| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |227| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |227| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |227| 
        MOV       *-SP[17],AL           ; [CPU_ALU] |227| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 228,column 5,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |228| 
        ADDB      AL,#-1                ; [CPU_ALU] |228| 
        MOVZ      AR6,AL                ; [CPU_ALU] |228| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |228| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI16TOF32 R1H,R1H               ; [CPU_FPU] |228| 
        ZERO      R2                    ; [CPU_FPU] |228| 
        MPYF32    R1H,R1H,#18304        ; [CPU_FPU] |228| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |228| 
        F32TOUI32 R1H,R1H               ; [CPU_FPU] |228| 
        MOVXI     R3H,#64               ; [CPU_FPU] |228| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |228| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |228| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |228| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |228| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |228| 
        MOV       *-SP[16],AL           ; [CPU_ALU] |228| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 233,column 5,is_stmt,isa 0
        MOV       AL,*-SP[13]           ; [CPU_ALU] |233| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |233| 
        MOV       AL,*-SP[14]           ; [CPU_ALU] |233| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |233| 
        MOV       AL,*-SP[15]           ; [CPU_ALU] |233| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |233| 
        MOVZ      AR5,*-SP[17]          ; [CPU_ALU] |233| 
        MOVZ      AR4,*-SP[16]          ; [CPU_ALU] |233| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |233| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("CAN_setBitTiming")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #||CAN_setBitTiming|| ; [CPU_ALU] |233| 
        ; call occurs [#||CAN_setBitTiming||] ; [] |233| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 234,column 1,is_stmt,isa 0
        SUBB      SP,#18                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:CAN_setBitTiming"
	.clink
	.global	||CAN_setBitTiming||

$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("CAN_setBitTiming")
	.dwattr $C$DW$50, DW_AT_low_pc(||CAN_setBitTiming||)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_linkage_name("CAN_setBitTiming")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$50, DW_AT_decl_column(0x01)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 245,column 1,is_stmt,address ||CAN_setBitTiming||,isa 0

	.dwfde $C$DW$CIE, ||CAN_setBitTiming||
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("base")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg0]

$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("prescaler")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg12]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("prescalerExtension")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg14]

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("tSeg1")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -11]

$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_name("tSeg2")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -12]

$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("sjw")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -13]


;***************************************************************
;* FNAME: CAN_setBitTiming              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||CAN_setBitTiming||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("base")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -2]

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("bitReg")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -4]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("prescaler")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -5]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("prescalerExtension")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -6]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("savedInit")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |245| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |245| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |245| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 264,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |264| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |264| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |264| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 265,column 5,is_stmt,isa 0
        ORB       AL,#0x41              ; [CPU_ALU] |265| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |265| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 270,column 5,is_stmt,isa 0
        MOVB      ACC,#63               ; [CPU_ALU] |270| 
        AND       ACC,*-SP[5]           ; [CPU_ALU] |270| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |270| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 271,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[13] << 6     ; [CPU_ALU] |271| 
        MOVB      AH,#0                 ; [CPU_ALU] |271| 
        ANDB      AL,#0xc0              ; [CPU_ALU] |271| 
        OR        *-SP[4],AL            ; [CPU_ALU] |271| 
        OR        *-SP[3],AH            ; [CPU_ALU] |271| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 272,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[11] << 8     ; [CPU_ALU] |272| 
        AND       AL,#3840              ; [CPU_ALU] |272| 
        ANDB      AH,#0                 ; [CPU_ALU] |272| 
        OR        *-SP[4],AL            ; [CPU_FPU] |272| 
        OR        *-SP[3],AH            ; [CPU_ALU] |272| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 274,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[12] << 12    ; [CPU_ALU] |274| 
        AND       AL,#28672             ; [CPU_ALU] |274| 
        ANDB      AH,#0                 ; [CPU_ALU] |274| 
        OR        *-SP[4],AL            ; [CPU_FPU] |274| 
        OR        *-SP[3],AH            ; [CPU_ALU] |274| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 276,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[6] << 16     ; [CPU_ALU] |276| 
        ANDB      AL,#0                 ; [CPU_ALU] |276| 
        ANDB      AH,#15                ; [CPU_ALU] |276| 
        OR        *-SP[4],AL            ; [CPU_FPU] |276| 
        OR        *-SP[3],AH            ; [CPU_ALU] |276| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 279,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |279| 
        MOVB      ACC,#12               ; [CPU_ALU] |279| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |279| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |279| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 284,column 5,is_stmt,isa 0
        AND       *-SP[7],#0xffbf       ; [CPU_ALU] |284| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 289,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |289| 
        ANDB      AL,#0x01              ; [CPU_ALU] |289| 
        CMPB      AL,#1                 ; [CPU_ALU] |289| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |289| 
        ; branchcc occurs ; [] |289| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 291,column 9,is_stmt,isa 0
        AND       *-SP[7],#0xfffe       ; [CPU_ALU] |291| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 293,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |293| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |293| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |293| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 294,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$50, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x126)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text:CAN_clearInterruptStatus"
	.clink
	.global	||CAN_clearInterruptStatus||

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("CAN_clearInterruptStatus")
	.dwattr $C$DW$63, DW_AT_low_pc(||CAN_clearInterruptStatus||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("CAN_clearInterruptStatus")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$63, DW_AT_decl_column(0x01)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 304,column 1,is_stmt,address ||CAN_clearInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||CAN_clearInterruptStatus||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("base")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("intClr")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: CAN_clearInterruptStatus      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||CAN_clearInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("base")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |304| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 312,column 5,is_stmt,isa 0
        MOVL      XAR4,#32768           ; [CPU_ARAU] |312| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |312| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |312| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |312| 
        ; branchcc occurs ; [] |312| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 317,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |317| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |317| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 324,column 15,is_stmt,isa 0
        MOV       ACC,#256              ; [CPU_ALU] |324| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |324| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |324| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |324| 
        MOVZ      AR6,AL                ; [CPU_ALU] |324| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |324| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |324| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 335,column 9,is_stmt,isa 0
        MOVL      P,*-SP[6]             ; [CPU_ALU] |335| 
        MOV       AL,PL                 ; [CPU_ALU] |335| 
        ANDB      AL,#0xff              ; [CPU_ALU] |335| 
        MOV       PL,AL                 ; [CPU_ALU] |335| 
        MOV       ACC,#256              ; [CPU_ALU] |335| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |335| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |335| 
        MOV       PH,#0                 ; [CPU_ALU] |335| 
        OR        PH,#8                 ; [CPU_ALU] |335| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |335| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 341,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 341,column 15,is_stmt,isa 0
        MOV       ACC,#256              ; [CPU_ALU] |341| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |341| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |341| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |341| 
        MOVZ      AR6,AL                ; [CPU_ALU] |341| 
        MOV       ACC,#32768            ; [CPU_ALU] |341| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |341| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |341| 
        ; branchcc occurs ; [] |341| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 346,column 1,is_stmt,isa 0
||$C$L14||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:CAN_setupMessageObject"
	.clink
	.global	||CAN_setupMessageObject||

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("CAN_setupMessageObject")
	.dwattr $C$DW$68, DW_AT_low_pc(||CAN_setupMessageObject||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("CAN_setupMessageObject")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x162)
	.dwattr $C$DW$68, DW_AT_decl_column(0x01)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 357,column 1,is_stmt,address ||CAN_setupMessageObject||,isa 0

	.dwfde $C$DW$CIE, ||CAN_setupMessageObject||
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("base")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg0]

$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_name("objID")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg20 -16]

$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("msgID")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_breg20 -18]

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("frame")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("msgType")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg14]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("msgIDMask")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -20]

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("flags")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -22]

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("msgLen")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -23]


;***************************************************************
;* FNAME: CAN_setupMessageObject        FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 12 Auto,  0 SOE     *
;***************************************************************

||CAN_setupMessageObject||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("base")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -2]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("cmdMaskReg")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg20 -4]

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("maskReg")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -6]

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("arbReg")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -8]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("msgCtrl")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -10]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("frame")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -11]

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("msgType")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -12]

        MOV       *-SP[12],AR5          ; [CPU_ALU] |357| 
        MOV       *-SP[11],AR4          ; [CPU_ALU] |357| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |357| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 358,column 25,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |358| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |358| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 359,column 22,is_stmt,isa 0
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |359| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 360,column 21,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |360| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 361,column 22,is_stmt,isa 0
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |361| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 373,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 373,column 11,is_stmt,isa 0
        MOV       ACC,#256              ; [CPU_ALU] |373| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |373| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |373| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |373| 
        MOVZ      AR6,AL                ; [CPU_ALU] |373| 
        MOV       ACC,#32768            ; [CPU_ALU] |373| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |373| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 377,column 5,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |377| 
        ; branch occurs ; [] |377| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 387,column 13,is_stmt,isa 0
        MOV       ACC,#16384 << 15      ; [CPU_ALU] |387| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |387| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 388,column 13,is_stmt,isa 0
        B         ||$C$L19||,UNC        ; [CPU_ALU] |388| 
        ; branch occurs ; [] |388| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 399,column 13,is_stmt,isa 0
        MOV       ACC,#16384 << 15      ; [CPU_ALU] |399| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |399| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 404,column 13,is_stmt,isa 0
        MOVL      XAR4,#4608            ; [CPU_ARAU] |404| 
        MOVL      *-SP[10],XAR4         ; [CPU_ALU] |404| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 407,column 13,is_stmt,isa 0
        B         ||$C$L19||,UNC        ; [CPU_ALU] |407| 
        ; branch occurs ; [] |407| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 377,column 5,is_stmt,isa 0
        MOV       AL,*-SP[12]           ; [CPU_ALU] |377| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
        CMPB      AL,#3                 ; [CPU_ALU] |377| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 428,column 5,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |428| 
        CMPB      AL,#1                 ; [CPU_ALU] |428| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |428| 
        ; branchcc occurs ; [] |428| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 433,column 9,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |433| 
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |433| 
        MOVB      AH,#0                 ; [CPU_ALU] |433| 
        ANDB      AL,#0x01              ; [CPU_ALU] |433| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |433| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |433| 
        ; branchcc occurs ; [] |433| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 435,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[20]          ; [CPU_ALU] |435| 
        AND       AH,#8191              ; [CPU_ALU] |435| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |435| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 442,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |442| 
        AND       AH,#8191              ; [CPU_ALU] |442| 
        OR        AL,*-SP[8]            ; [CPU_ALU] |442| 
        OR        AH,*-SP[7]            ; [CPU_ALU] |442| 
        OR        AH,#49152             ; [CPU_ALU] |442| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |442| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 450,column 9,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |450| 
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |450| 
        MOVB      AH,#0                 ; [CPU_ALU] |450| 
        ANDB      AL,#0x01              ; [CPU_ALU] |450| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |450| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |450| 
        ; branchcc occurs ; [] |450| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 452,column 12,is_stmt,isa 0
        MOVL      ACC,*-SP[20]          ; [CPU_ALU] |452| 
        MOV       T,#18                 ; [CPU_ALU] |452| 
        LSLL      ACC,T                 ; [CPU_ALU] |452| 
        ANDB      AL,#0                 ; [CPU_ALU] |452| 
        AND       AH,#8188              ; [CPU_ALU] |452| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |452| 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 461,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |461| 
        MOV       T,#18                 ; [CPU_ALU] |461| 
        LSLL      ACC,T                 ; [CPU_ALU] |461| 
        AND       AH,#8188              ; [CPU_ALU] |461| 
        ANDB      AL,#0                 ; [CPU_ALU] |461| 
        OR        AH,*-SP[7]            ; [CPU_ALU] |461| 
        OR        AL,*-SP[8]            ; [CPU_ALU] |461| 
        OR        AH,#32768             ; [CPU_ALU] |461| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |461| 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 468,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |468| 
        ANDB      AL,#0                 ; [CPU_ALU] |468| 
        AND       AH,#32768             ; [CPU_ALU] |468| 
        OR        *-SP[6],AL            ; [CPU_FPU] |468| 
        OR        *-SP[5],AH            ; [CPU_ALU] |468| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 473,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |473| 
        ANDB      AL,#0                 ; [CPU_ALU] |473| 
        AND       AH,#16384             ; [CPU_ALU] |473| 
        OR        *-SP[6],AL            ; [CPU_FPU] |473| 
        OR        *-SP[5],AH            ; [CPU_ALU] |473| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 478,column 5,is_stmt,isa 0
        MOVL      P,*-SP[22]            ; [CPU_ALU] |478| 
        AND       PH,#16384             ; [CPU_ALU] |478| 
        MOVL      ACC,*-SP[22]          ; [CPU_FPU] |478| 
        AND       PL,#0                 ; [CPU_ALU] |478| 
        MOVB      AH,#0                 ; [CPU_FPU] |478| 
        ANDB      AL,#0x01              ; [CPU_ALU] |478| 
        OR        AH,PH                 ; [CPU_ALU] |478| 
        OR        AL,PL                 ; [CPU_ALU] |478| 
        MOVL      P,*-SP[22]            ; [CPU_FPU] |478| 
        AND       PL,#0                 ; [CPU_ALU] |478| 
        AND       PH,#32768             ; [CPU_ALU] |478| 
        OR        AL,PL                 ; [CPU_ALU] |478| 
        OR        AH,PH                 ; [CPU_ALU] |478| 
        TEST      ACC                   ; [CPU_ALU] |478| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |478| 
        ; branchcc occurs ; [] |478| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 482,column 9,is_stmt,isa 0
        OR        *-SP[10],#4096        ; [CPU_ALU] |482| 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 489,column 5,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |489| 
        AND       ACC,*-SP[23]          ; [CPU_ALU] |489| 
        OR        *-SP[10],AL           ; [CPU_ALU] |489| 
        OR        *-SP[9],AH            ; [CPU_ALU] |489| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 494,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |494| 
        TBIT      AL,#1                 ; [CPU_ALU] |494| 
        B         ||$C$L25||,TC         ; [CPU_ALU] |494| 
        ; branchcc occurs ; [] |494| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 496,column 9,is_stmt,isa 0
        OR        *-SP[10],#128         ; [CPU_ALU] |496| 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 502,column 5,is_stmt,isa 0
        AND       AL,#2048              ; [CPU_ALU] |502| 
        ANDB      AH,#0                 ; [CPU_ALU] |502| 
        OR        *-SP[10],AL           ; [CPU_FPU] |502| 
        OR        *-SP[9],AH            ; [CPU_ALU] |502| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 507,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |507| 
        AND       AL,#1024              ; [CPU_ALU] |507| 
        ANDB      AH,#0                 ; [CPU_ALU] |507| 
        OR        *-SP[10],AL           ; [CPU_FPU] |507| 
        OR        *-SP[9],AH            ; [CPU_ALU] |507| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 513,column 5,is_stmt,isa 0
        OR        *-SP[3],#32           ; [CPU_ALU] |513| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 514,column 5,is_stmt,isa 0
        OR        *-SP[3],#16           ; [CPU_ALU] |514| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 515,column 5,is_stmt,isa 0
        OR        *-SP[3],#64           ; [CPU_ALU] |515| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 516,column 5,is_stmt,isa 0
        OR        *-SP[3],#128          ; [CPU_ALU] |516| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 521,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |521| 
        MOV       ACC,#260              ; [CPU_ALU] |521| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |521| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |521| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |521| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 522,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |522| 
        MOV       ACC,#264              ; [CPU_ALU] |522| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |522| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |522| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |522| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 523,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[10]         ; [CPU_ALU] |523| 
        MOV       ACC,#268              ; [CPU_ALU] |523| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |523| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |523| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |523| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 528,column 5,is_stmt,isa 0
        MOVL      P,*-SP[16]            ; [CPU_ALU] |528| 
        MOV       PH,#0                 ; [CPU_ALU] |528| 
        MOV       AL,PL                 ; [CPU_ALU] |528| 
        ANDB      AL,#0xff              ; [CPU_ALU] |528| 
        MOV       PL,AL                 ; [CPU_ALU] |528| 
        MOVL      ACC,P                 ; [CPU_ALU] |528| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |528| 
        OR        AH,*-SP[3]            ; [CPU_ALU] |528| 
        MOVL      P,ACC                 ; [CPU_ALU] |528| 
        MOV       ACC,#256              ; [CPU_ALU] |528| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |528| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |528| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |528| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 530,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x212)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:CAN_sendMessage"
	.clink
	.global	||CAN_sendMessage||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("CAN_sendMessage")
	.dwattr $C$DW$85, DW_AT_low_pc(||CAN_sendMessage||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("CAN_sendMessage")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$85, DW_AT_decl_column(0x01)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 540,column 1,is_stmt,address ||CAN_sendMessage||,isa 0

	.dwfde $C$DW$CIE, ||CAN_sendMessage||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("base")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]

$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("objID")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -14]

$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("msgLen")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg14]

$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("msgData")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: CAN_sendMessage               FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||CAN_sendMessage||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("base")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -4]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("msgData")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -6]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("msgCtrl")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -8]

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("msgLen")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -9]

        MOV       *-SP[9],AR5           ; [CPU_ALU] |540| 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |540| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |540| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 541,column 22,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |541| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |541| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 556,column 5,is_stmt,isa 0
        MOVL      P,*-SP[14]            ; [CPU_ALU] |556| 
        MOV       AL,PL                 ; [CPU_ALU] |556| 
        ANDB      AL,#0xff              ; [CPU_ALU] |556| 
        MOV       PL,AL                 ; [CPU_ALU] |556| 
        MOV       ACC,#256              ; [CPU_ALU] |556| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |556| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |556| 
        MOV       PH,#0                 ; [CPU_ALU] |556| 
        OR        PH,#16                ; [CPU_ALU] |556| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |556| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 562,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 562,column 11,is_stmt,isa 0
        MOV       ACC,#256              ; [CPU_ALU] |562| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |562| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |562| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |562| 
        MOVZ      AR6,AL                ; [CPU_ALU] |562| 
        MOV       ACC,#32768            ; [CPU_ALU] |562| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |562| 
        B         ||$C$L26||,EQ         ; [CPU_ALU] |562| 
        ; branchcc occurs ; [] |562| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 569,column 5,is_stmt,isa 0
        MOV       ACC,#268              ; [CPU_ALU] |569| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |569| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |569| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |569| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |569| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 579,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |579| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |579| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |579| 
        MOV       ACC,#272              ; [CPU_ALU] |579| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |579| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |579| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("CAN_writeDataReg")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||CAN_writeDataReg|| ; [CPU_ALU] |579| 
        ; call occurs [#||CAN_writeDataReg||] ; [] |579| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 585,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |585| 
        B         ||$C$L27||,EQ         ; [CPU_ALU] |585| 
        ; branchcc occurs ; [] |585| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 587,column 9,is_stmt,isa 0
        MOVL      XAR4,#196608          ; [CPU_ARAU] |587| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |587| 
        B         ||$C$L28||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 591,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |591| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |591| 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 602,column 5,is_stmt,isa 0
        MOVL      P,*-SP[14]            ; [CPU_ALU] |602| 
        MOV       AL,PL                 ; [CPU_ALU] |602| 
        MOV       PH,#0                 ; [CPU_ALU] |602| 
        ANDB      AL,#0xff              ; [CPU_ALU] |602| 
        MOV       PL,AL                 ; [CPU_ALU] |602| 
        MOVL      ACC,P                 ; [CPU_ALU] |602| 
        OR        AL,*-SP[8]            ; [CPU_ALU] |602| 
        OR        AH,*-SP[7]            ; [CPU_ALU] |602| 
        MOVL      P,ACC                 ; [CPU_ALU] |602| 
        MOV       ACC,#256              ; [CPU_ALU] |602| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |602| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |602| 
        OR        PH,#132               ; [CPU_ALU] |602| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |602| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 605,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x25d)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:CAN_readMessage"
	.clink
	.global	||CAN_readMessage||

$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("CAN_readMessage")
	.dwattr $C$DW$96, DW_AT_low_pc(||CAN_readMessage||)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_linkage_name("CAN_readMessage")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$96, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0x265)
	.dwattr $C$DW$96, DW_AT_decl_column(0x01)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 615,column 1,is_stmt,address ||CAN_readMessage||,isa 0

	.dwfde $C$DW$CIE, ||CAN_readMessage||
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("base")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg0]

$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("objID")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg20 -12]

$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("msgData")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: CAN_readMessage               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||CAN_readMessage||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("base")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg20 -4]

$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("msgData")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_breg20 -6]

$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("status")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_breg20 -7]

$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("msgCtrl")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |615| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |615| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 617,column 22,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |617| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 631,column 5,is_stmt,isa 0
        MOVL      P,*-SP[12]            ; [CPU_ALU] |631| 
        MOV       AL,PL                 ; [CPU_ALU] |631| 
        ANDB      AL,#0xff              ; [CPU_ALU] |631| 
        MOV       PL,AL                 ; [CPU_ALU] |631| 
        MOV       ACC,#288              ; [CPU_ALU] |631| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |631| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |631| 
        MOV       PH,#0                 ; [CPU_ALU] |631| 
        OR        PH,#19                ; [CPU_ALU] |631| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |631| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 638,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 638,column 11,is_stmt,isa 0
        MOV       ACC,#288              ; [CPU_ALU] |638| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |638| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |638| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |638| 
        MOVZ      AR6,AL                ; [CPU_ALU] |638| 
        MOV       ACC,#32768            ; [CPU_ALU] |638| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |638| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |638| 
        ; branchcc occurs ; [] |638| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 645,column 5,is_stmt,isa 0
        MOV       ACC,#300              ; [CPU_ALU] |645| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |645| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |645| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |645| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |645| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 650,column 5,is_stmt,isa 0
        AND       AL,*-SP[8],#0x8000    ; [CPU_ALU] |650| 
        MOVZ      AR6,AL                ; [CPU_ALU] |650| 
        MOV       ACC,#32768            ; [CPU_ALU] |650| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |650| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |650| 
        ; branchcc occurs ; [] |650| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 655,column 9,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |655| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |655| 
        MOVZ      AR6,AL                ; [CPU_ALU] |655| 
        MOV       ACC,#304              ; [CPU_ALU] |655| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |655| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |655| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |655| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("CAN_readDataReg")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||CAN_readDataReg||  ; [CPU_ALU] |655| 
        ; call occurs [#||CAN_readDataReg||] ; [] |655| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 658,column 9,is_stmt,isa 0
        MOVB      *-SP[7],#1,UNC        ; [CPU_ALU] |658| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 663,column 9,is_stmt,isa 0
        MOVL      P,*-SP[12]            ; [CPU_ALU] |663| 
        MOV       AL,PL                 ; [CPU_ALU] |663| 
        ANDB      AL,#0xff              ; [CPU_ALU] |663| 
        MOV       PL,AL                 ; [CPU_ALU] |663| 
        MOV       ACC,#288              ; [CPU_ALU] |663| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |663| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |663| 
        MOV       PH,#0                 ; [CPU_ALU] |663| 
        OR        PH,#4                 ; [CPU_ALU] |663| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |663| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 669,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 669,column 15,is_stmt,isa 0
        MOV       ACC,#288              ; [CPU_ALU] |669| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |669| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |669| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |669| 
        MOVZ      AR6,AL                ; [CPU_ALU] |669| 
        MOV       ACC,#32768            ; [CPU_ALU] |669| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |669| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |669| 
        ; branchcc occurs ; [] |669| 
        B         ||$C$L32||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 676,column 9,is_stmt,isa 0
        MOV       *-SP[7],#0            ; [CPU_ALU] |676| 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 679,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |679| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 680,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x2a8)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text:CAN_transferMessage"
	.clink
	.global	||CAN_transferMessage||

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("CAN_transferMessage")
	.dwattr $C$DW$106, DW_AT_low_pc(||CAN_transferMessage||)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_linkage_name("CAN_transferMessage")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x2b0)
	.dwattr $C$DW$106, DW_AT_decl_column(0x01)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 690,column 1,is_stmt,address ||CAN_transferMessage||,isa 0

	.dwfde $C$DW$CIE, ||CAN_transferMessage||
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("base")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]

$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("interface")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]

$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("objID")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -10]

$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("direction")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg14]

$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("dmaRequest")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -11]


;***************************************************************
;* FNAME: CAN_transferMessage           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||CAN_transferMessage||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("base")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg20 -2]

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("cmdMaskReg")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg20 -4]

$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("interface")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg20 -5]

$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("direction")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |690| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |690| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |690| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 701,column 5,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |701| 
        B         ||$C$L33||,EQ         ; [CPU_ALU] |701| 
        ; branchcc occurs ; [] |701| 
        MOVB      AL,#0                 ; [CPU_ALU] |701| 
        MOV       AH,#128               ; [CPU_ALU] |701| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |701| 
        ; branch occurs ; [] |701| 
||$C$L33||:    
        MOVB      ACC,#0                ; [CPU_ALU] |701| 
||$C$L34||:    
        MOVL      XAR7,ACC              ; [CPU_ALU] |701| 
        MOV       AL,*-SP[11]           ; [CPU_ALU] |701| 
        B         ||$C$L35||,EQ         ; [CPU_ALU] |701| 
        ; branchcc occurs ; [] |701| 
        MOVL      XAR6,#16384           ; [CPU_ALU] |701| 
        B         ||$C$L36||,UNC        ; [CPU_ALU] |701| 
        ; branch occurs ; [] |701| 
||$C$L35||:    
        MOVB      XAR6,#0               ; [CPU_ALU] |701| 
||$C$L36||:    
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        OR        ACC,AR6               ; [CPU_ALU] |701| 
        OR        AH,#119               ; [CPU_ALU] |701| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |701| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 711,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 711,column 11,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |711| 
        CMPB      AL,#2                 ; [CPU_ALU] |711| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |711| 
        ; branchcc occurs ; [] |711| 
        MOVL      XAR0,#288             ; [CPU_ALU] |711| 
        B         ||$C$L39||,UNC        ; [CPU_ALU] |711| 
        ; branch occurs ; [] |711| 
||$C$L38||:    
        MOVL      XAR0,#256             ; [CPU_ALU] |711| 
||$C$L39||:    
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |711| 
        AND       AL,*+XAR4[AR0],#0x8000 ; [CPU_ALU] |711| 
        MOVZ      AR6,AL                ; [CPU_ALU] |711| 
        MOV       ACC,#32768            ; [CPU_ALU] |711| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |711| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |711| 
        ; branchcc occurs ; [] |711| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 720,column 5,is_stmt,isa 0
        MOVL      P,*-SP[10]            ; [CPU_ALU] |720| 
        MOV       AL,PL                 ; [CPU_ALU] |720| 
        MOV       PH,#0                 ; [CPU_ALU] |720| 
        ANDB      AL,#0xff              ; [CPU_ALU] |720| 
        MOV       PL,AL                 ; [CPU_ALU] |720| 
        MOVL      ACC,P                 ; [CPU_ALU] |720| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |720| 
        OR        AH,*-SP[3]            ; [CPU_ALU] |720| 
        MOVL      P,ACC                 ; [CPU_ALU] |720| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |720| 
        CMPB      AL,#2                 ; [CPU_ALU] |720| 
        B         ||$C$L40||,NEQ        ; [CPU_ALU] |720| 
        ; branchcc occurs ; [] |720| 
        MOV       AL,#288               ; [CPU_ALU] |720| 
        B         ||$C$L41||,UNC        ; [CPU_ALU] |720| 
        ; branch occurs ; [] |720| 
||$C$L40||:    
        MOV       AL,#256               ; [CPU_ALU] |720| 
||$C$L41||:    
        MOVZ      AR4,AL                ; [CPU_ALU] |720| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |720| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |720| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |720| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |720| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 726,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L42||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 726,column 11,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |726| 
        CMPB      AL,#2                 ; [CPU_ALU] |726| 
        B         ||$C$L43||,NEQ        ; [CPU_ALU] |726| 
        ; branchcc occurs ; [] |726| 
        MOVL      XAR0,#288             ; [CPU_ALU] |726| 
        B         ||$C$L44||,UNC        ; [CPU_ALU] |726| 
        ; branch occurs ; [] |726| 
||$C$L43||:    
        MOVL      XAR0,#256             ; [CPU_ALU] |726| 
||$C$L44||:    
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |726| 
        AND       AL,*+XAR4[AR0],#0x8000 ; [CPU_ALU] |726| 
        MOVZ      AR6,AL                ; [CPU_ALU] |726| 
        MOV       ACC,#32768            ; [CPU_ALU] |726| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |726| 
        B         ||$C$L42||,EQ         ; [CPU_ALU] |726| 
        ; branchcc occurs ; [] |726| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 730,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x2da)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text:CAN_clearMessage"
	.clink
	.global	||CAN_clearMessage||

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("CAN_clearMessage")
	.dwattr $C$DW$117, DW_AT_low_pc(||CAN_clearMessage||)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_linkage_name("CAN_clearMessage")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_decl_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$117, DW_AT_decl_column(0x01)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 739,column 1,is_stmt,address ||CAN_clearMessage||,isa 0

	.dwfde $C$DW$CIE, ||CAN_clearMessage||
$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("base")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg0]

$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("objID")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: CAN_clearMessage              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||CAN_clearMessage||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("base")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |739| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 749,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L45||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 749,column 11,is_stmt,isa 0
        MOV       ACC,#256              ; [CPU_ALU] |749| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |749| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |749| 
        AND       AL,*+XAR5[0],#0x8000  ; [CPU_ALU] |749| 
        MOVZ      AR6,AL                ; [CPU_ALU] |749| 
        MOV       ACC,#32768            ; [CPU_ALU] |749| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |749| 
        B         ||$C$L45||,EQ         ; [CPU_ALU] |749| 
        ; branchcc occurs ; [] |749| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 757,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |757| 
        MOV       ACC,#264              ; [CPU_ALU] |757| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |757| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |757| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |757| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 762,column 5,is_stmt,isa 0
        MOVL      P,*-SP[6]             ; [CPU_ALU] |762| 
        MOV       AL,PL                 ; [CPU_ALU] |762| 
        ANDB      AL,#0xff              ; [CPU_ALU] |762| 
        MOV       PL,AL                 ; [CPU_ALU] |762| 
        MOV       ACC,#256              ; [CPU_ALU] |762| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |762| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |762| 
        MOV       PH,#0                 ; [CPU_ALU] |762| 
        OR        PH,#160               ; [CPU_ALU] |762| 
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |762| 
	.dwpsn	file "../F2838x_driverlib/driverlib/can.c",line 765,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/can.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x2fd)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||SysCtl_delay||

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

$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("CAN_MSG_FRAME_STD")
	.dwattr $C$DW$122, DW_AT_const_value(0x00)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("CAN_MSG_FRAME_EXT")
	.dwattr $C$DW$123, DW_AT_const_value(0x01)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("CAN_MsgFrameType")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("CAN_MSG_OBJ_TYPE_TX")
	.dwattr $C$DW$124, DW_AT_const_value(0x00)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x101)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("CAN_MSG_OBJ_TYPE_TX_REMOTE")
	.dwattr $C$DW$125, DW_AT_const_value(0x01)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x104)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("CAN_MSG_OBJ_TYPE_RX")
	.dwattr $C$DW$126, DW_AT_const_value(0x02)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x107)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("CAN_MSG_OBJ_TYPE_RXTX_REMOTE")
	.dwattr $C$DW$127, DW_AT_const_value(0x03)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xff)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("CAN_MsgObjType")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\can.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


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


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("int16_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$48


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$34


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$128	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$128)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$129	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$30)

$C$DW$T$31	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$129)

	.dwendtag $C$DW$TU$31


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


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$24


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$130	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$24)

$C$DW$T$35	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$130)

	.dwendtag $C$DW$TU$35


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


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$44, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$44, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$44

