;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:58 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{1FD89CAD-F465-49CB-AC05-A7DBF27EC394} 
	.sect	".text:XBAR_setOutputMuxConfig"
	.clink
	.global	||XBAR_setOutputMuxConfig||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$1, DW_AT_low_pc(||XBAR_setOutputMuxConfig||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 53,column 1,is_stmt,address ||XBAR_setOutputMuxConfig||,isa 0

	.dwfde $C$DW$CIE, ||XBAR_setOutputMuxConfig||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("output")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("muxConfig")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: XBAR_setOutputMuxConfig       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||XBAR_setOutputMuxConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("base")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("shift")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -4]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("output")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -5]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("muxConfig")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -6]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("offset")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |53| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |53| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |53| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 66,column 5,is_stmt,isa 0
        TBIT      *-SP[6],#13           ; [CPU_ALU] |66| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |66| 
        ; branchcc occurs ; [] |66| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 68,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[5] << #1     ; [CPU_ALU] |68| 
        ADDB      AL,#2                 ; [CPU_ALU] |68| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |68| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 72,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[5] << #1     ; [CPU_ALU] |72| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |72| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 78,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[6]           ; [CPU_ALU] |78| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,8                 ; [CPU_ALU] |78| 
        MOVB      AH,#0                 ; [CPU_ALU] |78| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |78| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |78| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 83,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |83| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 85,column 5,is_stmt,isa 0
        MOV       T,*-SP[4]             ; [CPU_ALU] |85| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |85| 
        MOVB      ACC,#3                ; [CPU_ALU] |85| 
        LSLL      ACC,T                 ; [CPU_ALU] |85| 
        NOT       ACC                   ; [CPU_ALU] |85| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |85| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |85| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |85| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |85| 
        MOVZ      AR0,*-SP[7]           ; [CPU_ALU] |85| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |85| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |85| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |85| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |85| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |85| 
        MOVB      ACC,#3                ; [CPU_ALU] |85| 
        AND       ACC,*-SP[6]           ; [CPU_ALU] |85| 
        LSLL      ACC,T                 ; [CPU_ALU] |85| 
        MOVL      P,ACC                 ; [CPU_ALU] |85| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |85| 
        OR        AL,PL                 ; [CPU_ALU] |85| 
        OR        AH,PH                 ; [CPU_ALU] |85| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |85| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 89,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |89| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 90,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:XBAR_setEPWMMuxConfig"
	.clink
	.global	||XBAR_setEPWMMuxConfig||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$11, DW_AT_low_pc(||XBAR_setEPWMMuxConfig||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x62)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 99,column 1,is_stmt,address ||XBAR_setEPWMMuxConfig||,isa 0

	.dwfde $C$DW$CIE, ||XBAR_setEPWMMuxConfig||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("trip")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("muxConfig")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: XBAR_setEPWMMuxConfig         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||XBAR_setEPWMMuxConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("shift")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -2]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("trip")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -3]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("muxConfig")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -4]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("offset")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AH            ; [CPU_ALU] |99| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |99| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 107,column 5,is_stmt,isa 0
        TBIT      *-SP[4],#13           ; [CPU_ALU] |107| 
        B         ||$C$L3||,NTC         ; [CPU_ALU] |107| 
        ; branchcc occurs ; [] |107| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 109,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |109| 
        ADDB      AL,#2                 ; [CPU_ALU] |109| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |109| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 113,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |113| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |113| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 119,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[4]           ; [CPU_ALU] |119| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,8                 ; [CPU_ALU] |119| 
        MOVB      AH,#0                 ; [CPU_ALU] |119| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |119| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |119| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 124,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |124| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 126,column 5,is_stmt,isa 0
        MOVZ      AR7,*-SP[5]           ; [CPU_ALU] |126| 
        ADD       AR7,#31232            ; [CPU_ALU] |126| 
        MOV       T,*-SP[2]             ; [CPU_ALU] |126| 
        MOVZ      AR4,AR7               ; [CPU_ALU] |126| 
        MOVZ      AR7,*-SP[5]           ; [CPU_ALU] |126| 
        MOVB      ACC,#3                ; [CPU_ALU] |126| 
        LSLL      ACC,T                 ; [CPU_ALU] |126| 
        NOT       ACC                   ; [CPU_ALU] |126| 
        ADD       AR7,#31232            ; [CPU_ALU] |126| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |126| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |126| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |126| 
        MOVB      ACC,#3                ; [CPU_ALU] |126| 
        AND       ACC,*-SP[4]           ; [CPU_ALU] |126| 
        MOVZ      AR4,AR7               ; [CPU_FPU] |126| 
        LSLL      ACC,T                 ; [CPU_ALU] |126| 
        MOVL      P,ACC                 ; [CPU_ALU] |126| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |126| 
        OR        AL,PL                 ; [CPU_ALU] |126| 
        OR        AH,PH                 ; [CPU_ALU] |126| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |126| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 130,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |130| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 131,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:XBAR_getInputFlagStatus"
	.clink
	.global	||XBAR_getInputFlagStatus||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("XBAR_getInputFlagStatus")
	.dwattr $C$DW$19, DW_AT_low_pc(||XBAR_getInputFlagStatus||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("XBAR_getInputFlagStatus")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$19, DW_AT_decl_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 140,column 1,is_stmt,address ||XBAR_getInputFlagStatus||,isa 0

	.dwfde $C$DW$CIE, ||XBAR_getInputFlagStatus||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("inputFlag")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: XBAR_getInputFlagStatus       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||XBAR_getInputFlagStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("offset")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -2]

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("inputMask")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -4]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("inputFlag")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AL            ; [CPU_ALU] |140| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 147,column 5,is_stmt,isa 0
        B         ||$C$L10||,UNC        ; [CPU_ALU] |147| 
        ; branch occurs ; [] |147| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 150,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |150| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |150| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 151,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |151| 
        ; branch occurs ; [] |151| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 154,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |154| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |154| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 155,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |155| 
        ; branch occurs ; [] |155| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 158,column 13,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |158| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |158| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 159,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |159| 
        ; branch occurs ; [] |159| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 162,column 13,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |162| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |162| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 163,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |163| 
        ; branch occurs ; [] |163| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 169,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |169| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |169| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 170,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |170| 
        ; branch occurs ; [] |170| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 147,column 5,is_stmt,isa 0
        AND       AL,*-SP[5],#0xff00    ; [CPU_ALU] |147| 
        MOVZ      AR6,AL                ; [CPU_ALU] |147| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |147| 
        MOV       ACC,#256              ; [CPU_ALU] |147| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |147| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |147| 
        MOV       ACC,#512              ; [CPU_ALU] |147| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |147| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |147| 
        MOV       ACC,#768              ; [CPU_ALU] |147| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |147| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
        B         ||$C$L9||,UNC         ; [CPU_ALU] |147| 
        ; branch occurs ; [] |147| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 176,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |176| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |176| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |176| 
        ANDB      AL,#0xff              ; [CPU_ALU] |176| 
        MOV       T,AL                  ; [CPU_ALU] |176| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |176| 
        LSLL      ACC,T                 ; [CPU_ALU] |176| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |176| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 178,column 5,is_stmt,isa 0
        MOV       ACC,#31008            ; [CPU_ALU] |178| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |178| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |178| 
        MOVB      XAR6,#0               ; [CPU_ALU] |178| 
        MOVB      XAR7,#0               ; [CPU_ALU] |178| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |178| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |178| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |178| 
        TEST      ACC                   ; [CPU_ALU] |178| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
        MOVB      XAR7,#1               ; [CPU_ALU] |178| 
||$C$L12||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
        MOVB      XAR6,#1               ; [CPU_ALU] |178| 
||$C$L13||:    
        MOV       AL,AR6                ; [CPU_ALU] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 179,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xb3)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:XBAR_clearInputFlag"
	.clink
	.global	||XBAR_clearInputFlag||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("XBAR_clearInputFlag")
	.dwattr $C$DW$25, DW_AT_low_pc(||XBAR_clearInputFlag||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("XBAR_clearInputFlag")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 188,column 1,is_stmt,address ||XBAR_clearInputFlag||,isa 0

	.dwfde $C$DW$CIE, ||XBAR_clearInputFlag||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("inputFlag")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: XBAR_clearInputFlag           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||XBAR_clearInputFlag||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("offset")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("inputMask")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -4]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("inputFlag")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AL            ; [CPU_ALU] |188| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 195,column 5,is_stmt,isa 0
        B         ||$C$L19||,UNC        ; [CPU_ALU] |195| 
        ; branch occurs ; [] |195| 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 198,column 13,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |198| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |198| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 199,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |199| 
        ; branch occurs ; [] |199| 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 202,column 13,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |202| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |202| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 203,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |203| 
        ; branch occurs ; [] |203| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 206,column 13,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |206| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |206| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 207,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |207| 
        ; branch occurs ; [] |207| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 210,column 13,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |210| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 211,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |211| 
        ; branch occurs ; [] |211| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 217,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |217| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |217| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 218,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |218| 
        ; branch occurs ; [] |218| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 195,column 5,is_stmt,isa 0
        AND       AL,*-SP[5],#0xff00    ; [CPU_ALU] |195| 
        MOVZ      AR6,AL                ; [CPU_ALU] |195| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |195| 
        MOV       ACC,#256              ; [CPU_ALU] |195| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |195| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        MOVZ      AR7,AR6               ; [CPU_ALU] |195| 
        MOV       ACC,#512              ; [CPU_ALU] |195| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |195| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |195| 
        MOV       ACC,#768              ; [CPU_ALU] |195| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |195| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] |195| 
        ; branch occurs ; [] |195| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 224,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |224| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |224| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |224| 
        ANDB      AL,#0xff              ; [CPU_ALU] |224| 
        MOV       T,AL                  ; [CPU_ALU] |224| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |224| 
        LSLL      ACC,T                 ; [CPU_ALU] |224| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |224| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |224| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 225,column 5,is_stmt,isa 0
        MOV       ACC,#31008            ; [CPU_ALU] |225| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |225| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |225| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/xbar.c",line 226,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/xbar.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0xe2)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25


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
$C$DW$31	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$31, DW_AT_name("XBAR_OUTPUT1")
	.dwattr $C$DW$31, DW_AT_const_value(0x00)
	.dwattr $C$DW$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x94)
	.dwattr $C$DW$31, DW_AT_decl_column(0x05)

$C$DW$32	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$32, DW_AT_name("XBAR_OUTPUT2")
	.dwattr $C$DW$32, DW_AT_const_value(0x02)
	.dwattr $C$DW$32, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x95)
	.dwattr $C$DW$32, DW_AT_decl_column(0x05)

$C$DW$33	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$33, DW_AT_name("XBAR_OUTPUT3")
	.dwattr $C$DW$33, DW_AT_const_value(0x04)
	.dwattr $C$DW$33, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x96)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)

$C$DW$34	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$34, DW_AT_name("XBAR_OUTPUT4")
	.dwattr $C$DW$34, DW_AT_const_value(0x06)
	.dwattr $C$DW$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x97)
	.dwattr $C$DW$34, DW_AT_decl_column(0x05)

$C$DW$35	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$35, DW_AT_name("XBAR_OUTPUT5")
	.dwattr $C$DW$35, DW_AT_const_value(0x08)
	.dwattr $C$DW$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x98)
	.dwattr $C$DW$35, DW_AT_decl_column(0x05)

$C$DW$36	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$36, DW_AT_name("XBAR_OUTPUT6")
	.dwattr $C$DW$36, DW_AT_const_value(0x0a)
	.dwattr $C$DW$36, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x99)
	.dwattr $C$DW$36, DW_AT_decl_column(0x05)

$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("XBAR_OUTPUT7")
	.dwattr $C$DW$37, DW_AT_const_value(0x0c)
	.dwattr $C$DW$37, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$37, DW_AT_decl_column(0x05)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("XBAR_OUTPUT8")
	.dwattr $C$DW$38, DW_AT_const_value(0x0e)
	.dwattr $C$DW$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$38, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("XBAR_OutputNum")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH")
	.dwattr $C$DW$39, DW_AT_const_value(0x00)
	.dwattr $C$DW$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH_OR_L")
	.dwattr $C$DW$40, DW_AT_const_value(0x01)
	.dwattr $C$DW$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$40, DW_AT_decl_column(0x05)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("XBAR_OUT_MUX00_ADCAEVT1")
	.dwattr $C$DW$41, DW_AT_const_value(0x02)
	.dwattr $C$DW$41, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("XBAR_OUT_MUX00_ECAP1_OUT")
	.dwattr $C$DW$42, DW_AT_const_value(0x03)
	.dwattr $C$DW$42, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("XBAR_OUT_MUX01_CMPSS1_CTRIPOUTL")
	.dwattr $C$DW$43, DW_AT_const_value(0x200)
	.dwattr $C$DW$43, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$43, DW_AT_decl_column(0x05)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("XBAR_OUT_MUX01_INPUTXBAR1")
	.dwattr $C$DW$44, DW_AT_const_value(0x201)
	.dwattr $C$DW$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0xda)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("XBAR_OUT_MUX01_ADCCEVT1")
	.dwattr $C$DW$45, DW_AT_const_value(0x203)
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH")
	.dwattr $C$DW$46, DW_AT_const_value(0x400)
	.dwattr $C$DW$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH_OR_L")
	.dwattr $C$DW$47, DW_AT_const_value(0x401)
	.dwattr $C$DW$47, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("XBAR_OUT_MUX02_ADCAEVT2")
	.dwattr $C$DW$48, DW_AT_const_value(0x402)
	.dwattr $C$DW$48, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xde)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

$C$DW$49	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$49, DW_AT_name("XBAR_OUT_MUX02_ECAP2_OUT")
	.dwattr $C$DW$49, DW_AT_const_value(0x403)
	.dwattr $C$DW$49, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)

$C$DW$50	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$50, DW_AT_name("XBAR_OUT_MUX03_CMPSS2_CTRIPOUTL")
	.dwattr $C$DW$50, DW_AT_const_value(0x600)
	.dwattr $C$DW$50, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$50, DW_AT_decl_column(0x05)

$C$DW$51	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$51, DW_AT_name("XBAR_OUT_MUX03_INPUTXBAR2")
	.dwattr $C$DW$51, DW_AT_const_value(0x601)
	.dwattr $C$DW$51, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$51, DW_AT_decl_column(0x05)

$C$DW$52	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$52, DW_AT_name("XBAR_OUT_MUX03_ADCCEVT2")
	.dwattr $C$DW$52, DW_AT_const_value(0x603)
	.dwattr $C$DW$52, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$52, DW_AT_decl_column(0x05)

$C$DW$53	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$53, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH")
	.dwattr $C$DW$53, DW_AT_const_value(0x800)
	.dwattr $C$DW$53, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$53, DW_AT_decl_column(0x05)

$C$DW$54	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$54, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH_OR_L")
	.dwattr $C$DW$54, DW_AT_const_value(0x801)
	.dwattr $C$DW$54, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$54, DW_AT_decl_column(0x05)

$C$DW$55	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$55, DW_AT_name("XBAR_OUT_MUX04_ADCAEVT3")
	.dwattr $C$DW$55, DW_AT_const_value(0x802)
	.dwattr $C$DW$55, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$55, DW_AT_decl_column(0x05)

$C$DW$56	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$56, DW_AT_name("XBAR_OUT_MUX04_ECAP3_OUT")
	.dwattr $C$DW$56, DW_AT_const_value(0x803)
	.dwattr $C$DW$56, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$56, DW_AT_decl_column(0x05)

$C$DW$57	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$57, DW_AT_name("XBAR_OUT_MUX05_CMPSS3_CTRIPOUTL")
	.dwattr $C$DW$57, DW_AT_const_value(0xa00)
	.dwattr $C$DW$57, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$57, DW_AT_decl_column(0x05)

$C$DW$58	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$58, DW_AT_name("XBAR_OUT_MUX05_INPUTXBAR3")
	.dwattr $C$DW$58, DW_AT_const_value(0xa01)
	.dwattr $C$DW$58, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$58, DW_AT_decl_column(0x05)

$C$DW$59	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$59, DW_AT_name("XBAR_OUT_MUX05_ADCCEVT3")
	.dwattr $C$DW$59, DW_AT_const_value(0xa03)
	.dwattr $C$DW$59, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$59, DW_AT_decl_column(0x05)

$C$DW$60	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$60, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH")
	.dwattr $C$DW$60, DW_AT_const_value(0xc00)
	.dwattr $C$DW$60, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xea)
	.dwattr $C$DW$60, DW_AT_decl_column(0x05)

$C$DW$61	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$61, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH_OR_L")
	.dwattr $C$DW$61, DW_AT_const_value(0xc01)
	.dwattr $C$DW$61, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$61, DW_AT_decl_column(0x05)

$C$DW$62	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$62, DW_AT_name("XBAR_OUT_MUX06_ADCAEVT4")
	.dwattr $C$DW$62, DW_AT_const_value(0xc02)
	.dwattr $C$DW$62, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xec)
	.dwattr $C$DW$62, DW_AT_decl_column(0x05)

$C$DW$63	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$63, DW_AT_name("XBAR_OUT_MUX06_ECAP4_OUT")
	.dwattr $C$DW$63, DW_AT_const_value(0xc03)
	.dwattr $C$DW$63, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xed)
	.dwattr $C$DW$63, DW_AT_decl_column(0x05)

$C$DW$64	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$64, DW_AT_name("XBAR_OUT_MUX07_CMPSS4_CTRIPOUTL")
	.dwattr $C$DW$64, DW_AT_const_value(0xe00)
	.dwattr $C$DW$64, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xee)
	.dwattr $C$DW$64, DW_AT_decl_column(0x05)

$C$DW$65	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$65, DW_AT_name("XBAR_OUT_MUX07_INPUTXBAR4")
	.dwattr $C$DW$65, DW_AT_const_value(0xe01)
	.dwattr $C$DW$65, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0xef)
	.dwattr $C$DW$65, DW_AT_decl_column(0x05)

$C$DW$66	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$66, DW_AT_name("XBAR_OUT_MUX07_ADCCEVT4")
	.dwattr $C$DW$66, DW_AT_const_value(0xe03)
	.dwattr $C$DW$66, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$66, DW_AT_decl_column(0x05)

$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH")
	.dwattr $C$DW$67, DW_AT_const_value(0x1000)
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH_OR_L")
	.dwattr $C$DW$68, DW_AT_const_value(0x1001)
	.dwattr $C$DW$68, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("XBAR_OUT_MUX08_ADCBEVT1")
	.dwattr $C$DW$69, DW_AT_const_value(0x1002)
	.dwattr $C$DW$69, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("XBAR_OUT_MUX08_ECAP5_OUT")
	.dwattr $C$DW$70, DW_AT_const_value(0x1003)
	.dwattr $C$DW$70, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

$C$DW$71	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$71, DW_AT_name("XBAR_OUT_MUX09_CMPSS5_CTRIPOUTL")
	.dwattr $C$DW$71, DW_AT_const_value(0x1200)
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$71, DW_AT_decl_column(0x05)

$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("XBAR_OUT_MUX09_INPUTXBAR5")
	.dwattr $C$DW$72, DW_AT_const_value(0x1201)
	.dwattr $C$DW$72, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH")
	.dwattr $C$DW$73, DW_AT_const_value(0x1400)
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH_OR_L")
	.dwattr $C$DW$74, DW_AT_const_value(0x1401)
	.dwattr $C$DW$74, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("XBAR_OUT_MUX10_ADCBEVT2")
	.dwattr $C$DW$75, DW_AT_const_value(0x1402)
	.dwattr $C$DW$75, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("XBAR_OUT_MUX10_ECAP6_OUT")
	.dwattr $C$DW$76, DW_AT_const_value(0x1403)
	.dwattr $C$DW$76, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("XBAR_OUT_MUX11_CMPSS6_CTRIPOUTL")
	.dwattr $C$DW$77, DW_AT_const_value(0x1600)
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("XBAR_OUT_MUX11_INPUTXBAR6")
	.dwattr $C$DW$78, DW_AT_const_value(0x1601)
	.dwattr $C$DW$78, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH")
	.dwattr $C$DW$79, DW_AT_const_value(0x1800)
	.dwattr $C$DW$79, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH_OR_L")
	.dwattr $C$DW$80, DW_AT_const_value(0x1801)
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("XBAR_OUT_MUX12_ADCBEVT3")
	.dwattr $C$DW$81, DW_AT_const_value(0x1802)
	.dwattr $C$DW$81, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xff)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("XBAR_OUT_MUX12_ECAP7_OUT")
	.dwattr $C$DW$82, DW_AT_const_value(0x1803)
	.dwattr $C$DW$82, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x100)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("XBAR_OUT_MUX13_CMPSS7_CTRIPOUTL")
	.dwattr $C$DW$83, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$83, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x101)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("XBAR_OUT_MUX13_ADCSOCA")
	.dwattr $C$DW$84, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$84, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x102)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("XBAR_OUT_MUX14_ADCBEVT4")
	.dwattr $C$DW$85, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$85, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x103)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("XBAR_OUT_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$86, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$86, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x104)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("XBAR_OUT_MUX15_ADCSOCB")
	.dwattr $C$DW$87, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x105)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$88, DW_AT_const_value(0x2000)
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x106)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$89, DW_AT_const_value(0x2001)
	.dwattr $C$DW$89, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x107)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("XBAR_OUT_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$90, DW_AT_const_value(0x2200)
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x108)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("XBAR_OUT_MUX17_CLAHALT")
	.dwattr $C$DW$91, DW_AT_const_value(0x2203)
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x109)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$92, DW_AT_const_value(0x2400)
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$93, DW_AT_const_value(0x2401)
	.dwattr $C$DW$93, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("XBAR_OUT_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$94, DW_AT_const_value(0x2600)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$95, DW_AT_const_value(0x2800)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$96, DW_AT_const_value(0x2801)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("XBAR_OUT_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$97, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$98, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x110)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$99, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x111)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("XBAR_OUT_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$100, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x112)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$101, DW_AT_const_value(0x3000)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x113)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$102, DW_AT_const_value(0x3001)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x114)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("XBAR_OUT_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$103, DW_AT_const_value(0x3200)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x115)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$104, DW_AT_const_value(0x3400)
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x116)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$105, DW_AT_const_value(0x3401)
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x117)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("XBAR_OUT_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$106, DW_AT_const_value(0x3600)
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x118)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("XBAR_OUT_MUX27_ERRORSTS")
	.dwattr $C$DW$107, DW_AT_const_value(0x3602)
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x119)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$108, DW_AT_const_value(0x3800)
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$109, DW_AT_const_value(0x3801)
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("XBAR_OUT_MUX28_XCLKOUT")
	.dwattr $C$DW$110, DW_AT_const_value(0x3802)
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("XBAR_OUT_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$111, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$112, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$113, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("XBAR_OUT_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$114, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x120)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("XBAR_OutputMuxConfig")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("XBAR_TRIP4")
	.dwattr $C$DW$115, DW_AT_const_value(0x00)
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("XBAR_TRIP5")
	.dwattr $C$DW$116, DW_AT_const_value(0x02)
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("XBAR_TRIP7")
	.dwattr $C$DW$117, DW_AT_const_value(0x04)
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("XBAR_TRIP8")
	.dwattr $C$DW$118, DW_AT_const_value(0x06)
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("XBAR_TRIP9")
	.dwattr $C$DW$119, DW_AT_const_value(0x08)
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("XBAR_TRIP10")
	.dwattr $C$DW$120, DW_AT_const_value(0x0a)
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xab)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("XBAR_TRIP11")
	.dwattr $C$DW$121, DW_AT_const_value(0x0c)
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xac)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("XBAR_TRIP12")
	.dwattr $C$DW$122, DW_AT_const_value(0x0e)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xad)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("XBAR_TripNum")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xae)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH")
	.dwattr $C$DW$123, DW_AT_const_value(0x00)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH_OR_L")
	.dwattr $C$DW$124, DW_AT_const_value(0x01)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("XBAR_EPWM_MUX00_ADCAEVT1")
	.dwattr $C$DW$125, DW_AT_const_value(0x02)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("XBAR_EPWM_MUX00_ECAP1_OUT")
	.dwattr $C$DW$126, DW_AT_const_value(0x03)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("XBAR_EPWM_MUX01_CMPSS1_CTRIPL")
	.dwattr $C$DW$127, DW_AT_const_value(0x200)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

$C$DW$128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$128, DW_AT_name("XBAR_EPWM_MUX01_INPUTXBAR1")
	.dwattr $C$DW$128, DW_AT_const_value(0x201)
	.dwattr $C$DW$128, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x130)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)

$C$DW$129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$129, DW_AT_name("XBAR_EPWM_MUX01_ADCCEVT1")
	.dwattr $C$DW$129, DW_AT_const_value(0x203)
	.dwattr $C$DW$129, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x131)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)

$C$DW$130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$130, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH")
	.dwattr $C$DW$130, DW_AT_const_value(0x400)
	.dwattr $C$DW$130, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x132)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)

$C$DW$131	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$131, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH_OR_L")
	.dwattr $C$DW$131, DW_AT_const_value(0x401)
	.dwattr $C$DW$131, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x133)
	.dwattr $C$DW$131, DW_AT_decl_column(0x05)

$C$DW$132	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$132, DW_AT_name("XBAR_EPWM_MUX02_ADCAEVT2")
	.dwattr $C$DW$132, DW_AT_const_value(0x402)
	.dwattr $C$DW$132, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x134)
	.dwattr $C$DW$132, DW_AT_decl_column(0x05)

$C$DW$133	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$133, DW_AT_name("XBAR_EPWM_MUX02_ECAP2_OUT")
	.dwattr $C$DW$133, DW_AT_const_value(0x403)
	.dwattr $C$DW$133, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x135)
	.dwattr $C$DW$133, DW_AT_decl_column(0x05)

$C$DW$134	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$134, DW_AT_name("XBAR_EPWM_MUX03_CMPSS2_CTRIPL")
	.dwattr $C$DW$134, DW_AT_const_value(0x600)
	.dwattr $C$DW$134, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x136)
	.dwattr $C$DW$134, DW_AT_decl_column(0x05)

$C$DW$135	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$135, DW_AT_name("XBAR_EPWM_MUX03_INPUTXBAR2")
	.dwattr $C$DW$135, DW_AT_const_value(0x601)
	.dwattr $C$DW$135, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x137)
	.dwattr $C$DW$135, DW_AT_decl_column(0x05)

$C$DW$136	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$136, DW_AT_name("XBAR_EPWM_MUX03_ADCCEVT2")
	.dwattr $C$DW$136, DW_AT_const_value(0x603)
	.dwattr $C$DW$136, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x138)
	.dwattr $C$DW$136, DW_AT_decl_column(0x05)

$C$DW$137	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$137, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH")
	.dwattr $C$DW$137, DW_AT_const_value(0x800)
	.dwattr $C$DW$137, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x139)
	.dwattr $C$DW$137, DW_AT_decl_column(0x05)

$C$DW$138	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$138, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH_OR_L")
	.dwattr $C$DW$138, DW_AT_const_value(0x801)
	.dwattr $C$DW$138, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$138, DW_AT_decl_column(0x05)

$C$DW$139	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$139, DW_AT_name("XBAR_EPWM_MUX04_ADCAEVT3")
	.dwattr $C$DW$139, DW_AT_const_value(0x802)
	.dwattr $C$DW$139, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$139, DW_AT_decl_column(0x05)

$C$DW$140	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$140, DW_AT_name("XBAR_EPWM_MUX04_ECAP3_OUT")
	.dwattr $C$DW$140, DW_AT_const_value(0x803)
	.dwattr $C$DW$140, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$140, DW_AT_decl_column(0x05)

$C$DW$141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$141, DW_AT_name("XBAR_EPWM_MUX05_CMPSS3_CTRIPL")
	.dwattr $C$DW$141, DW_AT_const_value(0xa00)
	.dwattr $C$DW$141, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$141, DW_AT_decl_column(0x05)

$C$DW$142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$142, DW_AT_name("XBAR_EPWM_MUX05_INPUTXBAR3")
	.dwattr $C$DW$142, DW_AT_const_value(0xa01)
	.dwattr $C$DW$142, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$142, DW_AT_decl_column(0x05)

$C$DW$143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$143, DW_AT_name("XBAR_EPWM_MUX05_ADCCEVT3")
	.dwattr $C$DW$143, DW_AT_const_value(0xa03)
	.dwattr $C$DW$143, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$143, DW_AT_decl_column(0x05)

$C$DW$144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$144, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH")
	.dwattr $C$DW$144, DW_AT_const_value(0xc00)
	.dwattr $C$DW$144, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x140)
	.dwattr $C$DW$144, DW_AT_decl_column(0x05)

$C$DW$145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$145, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH_OR_L")
	.dwattr $C$DW$145, DW_AT_const_value(0xc01)
	.dwattr $C$DW$145, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x141)
	.dwattr $C$DW$145, DW_AT_decl_column(0x05)

$C$DW$146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$146, DW_AT_name("XBAR_EPWM_MUX06_ADCAEVT4")
	.dwattr $C$DW$146, DW_AT_const_value(0xc02)
	.dwattr $C$DW$146, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x142)
	.dwattr $C$DW$146, DW_AT_decl_column(0x05)

$C$DW$147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$147, DW_AT_name("XBAR_EPWM_MUX06_ECAP4_OUT")
	.dwattr $C$DW$147, DW_AT_const_value(0xc03)
	.dwattr $C$DW$147, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x143)
	.dwattr $C$DW$147, DW_AT_decl_column(0x05)

$C$DW$148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$148, DW_AT_name("XBAR_EPWM_MUX07_CMPSS4_CTRIPL")
	.dwattr $C$DW$148, DW_AT_const_value(0xe00)
	.dwattr $C$DW$148, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x144)
	.dwattr $C$DW$148, DW_AT_decl_column(0x05)

$C$DW$149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$149, DW_AT_name("XBAR_EPWM_MUX07_INPUTXBAR4")
	.dwattr $C$DW$149, DW_AT_const_value(0xe01)
	.dwattr $C$DW$149, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x145)
	.dwattr $C$DW$149, DW_AT_decl_column(0x05)

$C$DW$150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$150, DW_AT_name("XBAR_EPWM_MUX07_ADCCEVT4")
	.dwattr $C$DW$150, DW_AT_const_value(0xe03)
	.dwattr $C$DW$150, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x146)
	.dwattr $C$DW$150, DW_AT_decl_column(0x05)

$C$DW$151	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$151, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH")
	.dwattr $C$DW$151, DW_AT_const_value(0x1000)
	.dwattr $C$DW$151, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x147)
	.dwattr $C$DW$151, DW_AT_decl_column(0x05)

$C$DW$152	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$152, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH_OR_L")
	.dwattr $C$DW$152, DW_AT_const_value(0x1001)
	.dwattr $C$DW$152, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x148)
	.dwattr $C$DW$152, DW_AT_decl_column(0x05)

$C$DW$153	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$153, DW_AT_name("XBAR_EPWM_MUX08_ADCBEVT1")
	.dwattr $C$DW$153, DW_AT_const_value(0x1002)
	.dwattr $C$DW$153, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x149)
	.dwattr $C$DW$153, DW_AT_decl_column(0x05)

$C$DW$154	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$154, DW_AT_name("XBAR_EPWM_MUX08_ECAP5_OUT")
	.dwattr $C$DW$154, DW_AT_const_value(0x1003)
	.dwattr $C$DW$154, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$154, DW_AT_decl_column(0x05)

$C$DW$155	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$155, DW_AT_name("XBAR_EPWM_MUX09_CMPSS5_CTRIPL")
	.dwattr $C$DW$155, DW_AT_const_value(0x1200)
	.dwattr $C$DW$155, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$155, DW_AT_decl_column(0x05)

$C$DW$156	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$156, DW_AT_name("XBAR_EPWM_MUX09_INPUTXBAR5")
	.dwattr $C$DW$156, DW_AT_const_value(0x1201)
	.dwattr $C$DW$156, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$156, DW_AT_decl_column(0x05)

$C$DW$157	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$157, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH")
	.dwattr $C$DW$157, DW_AT_const_value(0x1400)
	.dwattr $C$DW$157, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$157, DW_AT_decl_column(0x05)

$C$DW$158	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$158, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH_OR_L")
	.dwattr $C$DW$158, DW_AT_const_value(0x1401)
	.dwattr $C$DW$158, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$158, DW_AT_decl_column(0x05)

$C$DW$159	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$159, DW_AT_name("XBAR_EPWM_MUX10_ADCBEVT2")
	.dwattr $C$DW$159, DW_AT_const_value(0x1402)
	.dwattr $C$DW$159, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$159, DW_AT_decl_column(0x05)

$C$DW$160	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$160, DW_AT_name("XBAR_EPWM_MUX10_ECAP6_OUT")
	.dwattr $C$DW$160, DW_AT_const_value(0x1403)
	.dwattr $C$DW$160, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x150)
	.dwattr $C$DW$160, DW_AT_decl_column(0x05)

$C$DW$161	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$161, DW_AT_name("XBAR_EPWM_MUX11_CMPSS6_CTRIPL")
	.dwattr $C$DW$161, DW_AT_const_value(0x1600)
	.dwattr $C$DW$161, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x151)
	.dwattr $C$DW$161, DW_AT_decl_column(0x05)

$C$DW$162	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$162, DW_AT_name("XBAR_EPWM_MUX11_INPUTXBAR6")
	.dwattr $C$DW$162, DW_AT_const_value(0x1601)
	.dwattr $C$DW$162, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x152)
	.dwattr $C$DW$162, DW_AT_decl_column(0x05)

$C$DW$163	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$163, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH")
	.dwattr $C$DW$163, DW_AT_const_value(0x1800)
	.dwattr $C$DW$163, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x153)
	.dwattr $C$DW$163, DW_AT_decl_column(0x05)

$C$DW$164	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$164, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH_OR_L")
	.dwattr $C$DW$164, DW_AT_const_value(0x1801)
	.dwattr $C$DW$164, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x154)
	.dwattr $C$DW$164, DW_AT_decl_column(0x05)

$C$DW$165	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$165, DW_AT_name("XBAR_EPWM_MUX12_ADCBEVT3")
	.dwattr $C$DW$165, DW_AT_const_value(0x1802)
	.dwattr $C$DW$165, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x155)
	.dwattr $C$DW$165, DW_AT_decl_column(0x05)

$C$DW$166	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$166, DW_AT_name("XBAR_EPWM_MUX12_ECAP7_OUT")
	.dwattr $C$DW$166, DW_AT_const_value(0x1803)
	.dwattr $C$DW$166, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x156)
	.dwattr $C$DW$166, DW_AT_decl_column(0x05)

$C$DW$167	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$167, DW_AT_name("XBAR_EPWM_MUX13_CMPSS7_CTRIPL")
	.dwattr $C$DW$167, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$167, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x157)
	.dwattr $C$DW$167, DW_AT_decl_column(0x05)

$C$DW$168	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$168, DW_AT_name("XBAR_EPWM_MUX13_ADCSOCA")
	.dwattr $C$DW$168, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$168, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x158)
	.dwattr $C$DW$168, DW_AT_decl_column(0x05)

$C$DW$169	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$169, DW_AT_name("XBAR_EPWM_MUX14_ADCBEVT4")
	.dwattr $C$DW$169, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$169, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x159)
	.dwattr $C$DW$169, DW_AT_decl_column(0x05)

$C$DW$170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$170, DW_AT_name("XBAR_EPWM_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$170, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$170, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$170, DW_AT_decl_column(0x05)

$C$DW$171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$171, DW_AT_name("XBAR_EPWM_MUX15_ADCSOCB")
	.dwattr $C$DW$171, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$171, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$171, DW_AT_decl_column(0x05)

$C$DW$172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$172, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$172, DW_AT_const_value(0x2000)
	.dwattr $C$DW$172, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$172, DW_AT_decl_column(0x05)

$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$173, DW_AT_const_value(0x2001)
	.dwattr $C$DW$173, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$173, DW_AT_decl_column(0x05)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("XBAR_EPWM_MUX16_ERRORSTS")
	.dwattr $C$DW$174, DW_AT_const_value(0x2003)
	.dwattr $C$DW$174, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$174, DW_AT_decl_column(0x05)

$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("XBAR_EPWM_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$175, DW_AT_const_value(0x2200)
	.dwattr $C$DW$175, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$175, DW_AT_decl_column(0x05)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("XBAR_EPWM_MUX17_INPUTXBAR7")
	.dwattr $C$DW$176, DW_AT_const_value(0x2201)
	.dwattr $C$DW$176, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x160)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("XBAR_EPWM_MUX17_CLAHALT")
	.dwattr $C$DW$177, DW_AT_const_value(0x2203)
	.dwattr $C$DW$177, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x161)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$178, DW_AT_const_value(0x2400)
	.dwattr $C$DW$178, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x162)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$179, DW_AT_const_value(0x2401)
	.dwattr $C$DW$179, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x163)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)

$C$DW$180	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$180, DW_AT_name("XBAR_EPWM_MUX18_ECATSYNC0")
	.dwattr $C$DW$180, DW_AT_const_value(0x2403)
	.dwattr $C$DW$180, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x164)
	.dwattr $C$DW$180, DW_AT_decl_column(0x05)

$C$DW$181	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$181, DW_AT_name("XBAR_EPWM_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$181, DW_AT_const_value(0x2600)
	.dwattr $C$DW$181, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x165)
	.dwattr $C$DW$181, DW_AT_decl_column(0x05)

$C$DW$182	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$182, DW_AT_name("XBAR_EPWM_MUX19_INPUTXBAR8")
	.dwattr $C$DW$182, DW_AT_const_value(0x2601)
	.dwattr $C$DW$182, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x166)
	.dwattr $C$DW$182, DW_AT_decl_column(0x05)

$C$DW$183	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$183, DW_AT_name("XBAR_EPWM_MUX19_ECATSYNC1")
	.dwattr $C$DW$183, DW_AT_const_value(0x2603)
	.dwattr $C$DW$183, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x167)
	.dwattr $C$DW$183, DW_AT_decl_column(0x05)

$C$DW$184	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$184, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$184, DW_AT_const_value(0x2800)
	.dwattr $C$DW$184, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x168)
	.dwattr $C$DW$184, DW_AT_decl_column(0x05)

$C$DW$185	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$185, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$185, DW_AT_const_value(0x2801)
	.dwattr $C$DW$185, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x169)
	.dwattr $C$DW$185, DW_AT_decl_column(0x05)

$C$DW$186	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$186, DW_AT_name("XBAR_EPWM_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$186, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$186, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$186, DW_AT_decl_column(0x05)

$C$DW$187	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$187, DW_AT_name("XBAR_EPWM_MUX21_INPUTXBAR9")
	.dwattr $C$DW$187, DW_AT_const_value(0x2a01)
	.dwattr $C$DW$187, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$187, DW_AT_decl_column(0x05)

$C$DW$188	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$188, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$188, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$188, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$188, DW_AT_decl_column(0x05)

$C$DW$189	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$189, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$189, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$189, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$189, DW_AT_decl_column(0x05)

$C$DW$190	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$190, DW_AT_name("XBAR_EPWM_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$190, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$190, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$190, DW_AT_decl_column(0x05)

$C$DW$191	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$191, DW_AT_name("XBAR_EPWM_MUX23_INPUTXBAR10")
	.dwattr $C$DW$191, DW_AT_const_value(0x2e01)
	.dwattr $C$DW$191, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$191, DW_AT_decl_column(0x05)

$C$DW$192	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$192, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$192, DW_AT_const_value(0x3000)
	.dwattr $C$DW$192, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x170)
	.dwattr $C$DW$192, DW_AT_decl_column(0x05)

$C$DW$193	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$193, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$193, DW_AT_const_value(0x3001)
	.dwattr $C$DW$193, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x171)
	.dwattr $C$DW$193, DW_AT_decl_column(0x05)

$C$DW$194	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$194, DW_AT_name("XBAR_EPWM_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$194, DW_AT_const_value(0x3200)
	.dwattr $C$DW$194, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x172)
	.dwattr $C$DW$194, DW_AT_decl_column(0x05)

$C$DW$195	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$195, DW_AT_name("XBAR_EPWM_MUX25_MCANA_FEVT0")
	.dwattr $C$DW$195, DW_AT_const_value(0x3202)
	.dwattr $C$DW$195, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x173)
	.dwattr $C$DW$195, DW_AT_decl_column(0x05)

$C$DW$196	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$196, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$196, DW_AT_const_value(0x3400)
	.dwattr $C$DW$196, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x174)
	.dwattr $C$DW$196, DW_AT_decl_column(0x05)

$C$DW$197	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$197, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$197, DW_AT_const_value(0x3401)
	.dwattr $C$DW$197, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x175)
	.dwattr $C$DW$197, DW_AT_decl_column(0x05)

$C$DW$198	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$198, DW_AT_name("XBAR_EPWM_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$198, DW_AT_const_value(0x3600)
	.dwattr $C$DW$198, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x176)
	.dwattr $C$DW$198, DW_AT_decl_column(0x05)

$C$DW$199	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$199, DW_AT_name("XBAR_EPWM_MUX27_MCANA_FEVT1")
	.dwattr $C$DW$199, DW_AT_const_value(0x3602)
	.dwattr $C$DW$199, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x177)
	.dwattr $C$DW$199, DW_AT_decl_column(0x05)

$C$DW$200	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$200, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$200, DW_AT_const_value(0x3800)
	.dwattr $C$DW$200, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x178)
	.dwattr $C$DW$200, DW_AT_decl_column(0x05)

$C$DW$201	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$201, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$201, DW_AT_const_value(0x3801)
	.dwattr $C$DW$201, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x179)
	.dwattr $C$DW$201, DW_AT_decl_column(0x05)

$C$DW$202	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$202, DW_AT_name("XBAR_EPWM_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$202, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$202, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$202, DW_AT_decl_column(0x05)

$C$DW$203	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$203, DW_AT_name("XBAR_EPWM_MUX29_MCANA_FEVT2")
	.dwattr $C$DW$203, DW_AT_const_value(0x3a02)
	.dwattr $C$DW$203, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$203, DW_AT_decl_column(0x05)

$C$DW$204	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$204, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$204, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$204, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$204, DW_AT_decl_column(0x05)

$C$DW$205	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$205, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$205, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$205, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$205, DW_AT_decl_column(0x05)

$C$DW$206	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$206, DW_AT_name("XBAR_EPWM_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$206, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$206, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$206, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("XBAR_EPWMMuxConfig")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$207	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$207, DW_AT_name("XBAR_INPUT_FLG_CMPSS1_CTRIPL")
	.dwattr $C$DW$207, DW_AT_const_value(0x00)
	.dwattr $C$DW$207, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$207, DW_AT_decl_column(0x05)

$C$DW$208	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$208, DW_AT_name("XBAR_INPUT_FLG_CMPSS1_CTRIPH")
	.dwattr $C$DW$208, DW_AT_const_value(0x01)
	.dwattr $C$DW$208, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$208, DW_AT_decl_column(0x05)

$C$DW$209	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$209, DW_AT_name("XBAR_INPUT_FLG_CMPSS2_CTRIPL")
	.dwattr $C$DW$209, DW_AT_const_value(0x02)
	.dwattr $C$DW$209, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$209, DW_AT_decl_column(0x05)

$C$DW$210	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$210, DW_AT_name("XBAR_INPUT_FLG_CMPSS2_CTRIPH")
	.dwattr $C$DW$210, DW_AT_const_value(0x03)
	.dwattr $C$DW$210, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$210, DW_AT_decl_column(0x05)

$C$DW$211	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$211, DW_AT_name("XBAR_INPUT_FLG_CMPSS3_CTRIPL")
	.dwattr $C$DW$211, DW_AT_const_value(0x04)
	.dwattr $C$DW$211, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x190)
	.dwattr $C$DW$211, DW_AT_decl_column(0x05)

$C$DW$212	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$212, DW_AT_name("XBAR_INPUT_FLG_CMPSS3_CTRIPH")
	.dwattr $C$DW$212, DW_AT_const_value(0x05)
	.dwattr $C$DW$212, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x191)
	.dwattr $C$DW$212, DW_AT_decl_column(0x05)

$C$DW$213	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$213, DW_AT_name("XBAR_INPUT_FLG_CMPSS4_CTRIPL")
	.dwattr $C$DW$213, DW_AT_const_value(0x06)
	.dwattr $C$DW$213, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x192)
	.dwattr $C$DW$213, DW_AT_decl_column(0x05)

$C$DW$214	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$214, DW_AT_name("XBAR_INPUT_FLG_CMPSS4_CTRIPH")
	.dwattr $C$DW$214, DW_AT_const_value(0x07)
	.dwattr $C$DW$214, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x193)
	.dwattr $C$DW$214, DW_AT_decl_column(0x05)

$C$DW$215	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$215, DW_AT_name("XBAR_INPUT_FLG_CMPSS5_CTRIPL")
	.dwattr $C$DW$215, DW_AT_const_value(0x08)
	.dwattr $C$DW$215, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x194)
	.dwattr $C$DW$215, DW_AT_decl_column(0x05)

$C$DW$216	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$216, DW_AT_name("XBAR_INPUT_FLG_CMPSS5_CTRIPH")
	.dwattr $C$DW$216, DW_AT_const_value(0x09)
	.dwattr $C$DW$216, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x195)
	.dwattr $C$DW$216, DW_AT_decl_column(0x05)

$C$DW$217	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$217, DW_AT_name("XBAR_INPUT_FLG_CMPSS6_CTRIPL")
	.dwattr $C$DW$217, DW_AT_const_value(0x0a)
	.dwattr $C$DW$217, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x196)
	.dwattr $C$DW$217, DW_AT_decl_column(0x05)

$C$DW$218	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$218, DW_AT_name("XBAR_INPUT_FLG_CMPSS6_CTRIPH")
	.dwattr $C$DW$218, DW_AT_const_value(0x0b)
	.dwattr $C$DW$218, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x197)
	.dwattr $C$DW$218, DW_AT_decl_column(0x05)

$C$DW$219	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$219, DW_AT_name("XBAR_INPUT_FLG_CMPSS7_CTRIPL")
	.dwattr $C$DW$219, DW_AT_const_value(0x0c)
	.dwattr $C$DW$219, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x198)
	.dwattr $C$DW$219, DW_AT_decl_column(0x05)

$C$DW$220	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$220, DW_AT_name("XBAR_INPUT_FLG_CMPSS7_CTRIPH")
	.dwattr $C$DW$220, DW_AT_const_value(0x0d)
	.dwattr $C$DW$220, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x199)
	.dwattr $C$DW$220, DW_AT_decl_column(0x05)

$C$DW$221	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$221, DW_AT_name("XBAR_INPUT_FLG_CMPSS8_CTRIPL")
	.dwattr $C$DW$221, DW_AT_const_value(0x0e)
	.dwattr $C$DW$221, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$221, DW_AT_decl_column(0x05)

$C$DW$222	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$222, DW_AT_name("XBAR_INPUT_FLG_CMPSS8_CTRIPH")
	.dwattr $C$DW$222, DW_AT_const_value(0x0f)
	.dwattr $C$DW$222, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$222, DW_AT_decl_column(0x05)

$C$DW$223	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$223, DW_AT_name("XBAR_INPUT_FLG_CMPSS1_CTRIPOUTL")
	.dwattr $C$DW$223, DW_AT_const_value(0x10)
	.dwattr $C$DW$223, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$223, DW_AT_decl_column(0x05)

$C$DW$224	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$224, DW_AT_name("XBAR_INPUT_FLG_CMPSS1_CTRIPOUTH")
	.dwattr $C$DW$224, DW_AT_const_value(0x11)
	.dwattr $C$DW$224, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$224, DW_AT_decl_column(0x05)

$C$DW$225	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$225, DW_AT_name("XBAR_INPUT_FLG_CMPSS2_CTRIPOUTL")
	.dwattr $C$DW$225, DW_AT_const_value(0x12)
	.dwattr $C$DW$225, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$225, DW_AT_decl_column(0x05)

$C$DW$226	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$226, DW_AT_name("XBAR_INPUT_FLG_CMPSS2_CTRIPOUTH")
	.dwattr $C$DW$226, DW_AT_const_value(0x13)
	.dwattr $C$DW$226, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$226, DW_AT_decl_column(0x05)

$C$DW$227	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$227, DW_AT_name("XBAR_INPUT_FLG_CMPSS3_CTRIPOUTL")
	.dwattr $C$DW$227, DW_AT_const_value(0x14)
	.dwattr $C$DW$227, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$227, DW_AT_decl_column(0x05)

$C$DW$228	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$228, DW_AT_name("XBAR_INPUT_FLG_CMPSS3_CTRIPOUTH")
	.dwattr $C$DW$228, DW_AT_const_value(0x15)
	.dwattr $C$DW$228, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$228, DW_AT_decl_column(0x05)

$C$DW$229	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$229, DW_AT_name("XBAR_INPUT_FLG_CMPSS4_CTRIPOUTL")
	.dwattr $C$DW$229, DW_AT_const_value(0x16)
	.dwattr $C$DW$229, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$229, DW_AT_decl_column(0x05)

$C$DW$230	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$230, DW_AT_name("XBAR_INPUT_FLG_CMPSS4_CTRIPOUTH")
	.dwattr $C$DW$230, DW_AT_const_value(0x17)
	.dwattr $C$DW$230, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$230, DW_AT_decl_column(0x05)

$C$DW$231	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$231, DW_AT_name("XBAR_INPUT_FLG_CMPSS5_CTRIPOUTL")
	.dwattr $C$DW$231, DW_AT_const_value(0x18)
	.dwattr $C$DW$231, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$231, DW_AT_decl_column(0x05)

$C$DW$232	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$232, DW_AT_name("XBAR_INPUT_FLG_CMPSS5_CTRIPOUTH")
	.dwattr $C$DW$232, DW_AT_const_value(0x19)
	.dwattr $C$DW$232, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$232, DW_AT_decl_column(0x05)

$C$DW$233	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$233, DW_AT_name("XBAR_INPUT_FLG_CMPSS6_CTRIPOUTL")
	.dwattr $C$DW$233, DW_AT_const_value(0x1a)
	.dwattr $C$DW$233, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$233, DW_AT_decl_column(0x05)

$C$DW$234	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$234, DW_AT_name("XBAR_INPUT_FLG_CMPSS6_CTRIPOUTH")
	.dwattr $C$DW$234, DW_AT_const_value(0x1b)
	.dwattr $C$DW$234, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$234, DW_AT_decl_column(0x05)

$C$DW$235	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$235, DW_AT_name("XBAR_INPUT_FLG_CMPSS7_CTRIPOUTL")
	.dwattr $C$DW$235, DW_AT_const_value(0x1c)
	.dwattr $C$DW$235, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$235, DW_AT_decl_column(0x05)

$C$DW$236	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$236, DW_AT_name("XBAR_INPUT_FLG_CMPSS7_CTRIPOUTH")
	.dwattr $C$DW$236, DW_AT_const_value(0x1d)
	.dwattr $C$DW$236, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$236, DW_AT_decl_column(0x05)

$C$DW$237	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$237, DW_AT_name("XBAR_INPUT_FLG_CMPSS8_CTRIPOUTL")
	.dwattr $C$DW$237, DW_AT_const_value(0x1e)
	.dwattr $C$DW$237, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$237, DW_AT_decl_column(0x05)

$C$DW$238	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$238, DW_AT_name("XBAR_INPUT_FLG_CMPSS8_CTRIPOUTH")
	.dwattr $C$DW$238, DW_AT_const_value(0x1f)
	.dwattr $C$DW$238, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$238, DW_AT_decl_column(0x05)

$C$DW$239	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$239, DW_AT_name("XBAR_INPUT_FLG_INPUT1")
	.dwattr $C$DW$239, DW_AT_const_value(0x100)
	.dwattr $C$DW$239, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$239, DW_AT_decl_column(0x05)

$C$DW$240	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$240, DW_AT_name("XBAR_INPUT_FLG_INPUT2")
	.dwattr $C$DW$240, DW_AT_const_value(0x101)
	.dwattr $C$DW$240, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$240, DW_AT_decl_column(0x05)

$C$DW$241	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$241, DW_AT_name("XBAR_INPUT_FLG_INPUT3")
	.dwattr $C$DW$241, DW_AT_const_value(0x102)
	.dwattr $C$DW$241, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$241, DW_AT_decl_column(0x05)

$C$DW$242	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$242, DW_AT_name("XBAR_INPUT_FLG_INPUT4")
	.dwattr $C$DW$242, DW_AT_const_value(0x103)
	.dwattr $C$DW$242, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$242, DW_AT_decl_column(0x05)

$C$DW$243	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$243, DW_AT_name("XBAR_INPUT_FLG_INPUT5")
	.dwattr $C$DW$243, DW_AT_const_value(0x104)
	.dwattr $C$DW$243, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$243, DW_AT_decl_column(0x05)

$C$DW$244	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$244, DW_AT_name("XBAR_INPUT_FLG_INPUT6")
	.dwattr $C$DW$244, DW_AT_const_value(0x105)
	.dwattr $C$DW$244, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$244, DW_AT_decl_column(0x05)

$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("XBAR_INPUT_FLG_ADCSOCA")
	.dwattr $C$DW$245, DW_AT_const_value(0x106)
	.dwattr $C$DW$245, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$245, DW_AT_decl_column(0x05)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("XBAR_INPUT_FLG_ADCSOCB")
	.dwattr $C$DW$246, DW_AT_const_value(0x107)
	.dwattr $C$DW$246, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$246, DW_AT_decl_column(0x05)

$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("XBAR_INPUT_FLG_INPUT7")
	.dwattr $C$DW$247, DW_AT_const_value(0x108)
	.dwattr $C$DW$247, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$247, DW_AT_decl_column(0x05)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("XBAR_INPUT_FLG_INPUT8")
	.dwattr $C$DW$248, DW_AT_const_value(0x109)
	.dwattr $C$DW$248, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$248, DW_AT_decl_column(0x05)

$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("XBAR_INPUT_FLG_INPUT9")
	.dwattr $C$DW$249, DW_AT_const_value(0x10a)
	.dwattr $C$DW$249, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$249, DW_AT_decl_column(0x05)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("XBAR_INPUT_FLG_INPUT10")
	.dwattr $C$DW$250, DW_AT_const_value(0x10b)
	.dwattr $C$DW$250, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$250, DW_AT_decl_column(0x05)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("XBAR_INPUT_FLG_INPUT11")
	.dwattr $C$DW$251, DW_AT_const_value(0x10c)
	.dwattr $C$DW$251, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$251, DW_AT_decl_column(0x05)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("XBAR_INPUT_FLG_INPUT12")
	.dwattr $C$DW$252, DW_AT_const_value(0x10d)
	.dwattr $C$DW$252, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$252, DW_AT_decl_column(0x05)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("XBAR_INPUT_FLG_INPUT13")
	.dwattr $C$DW$253, DW_AT_const_value(0x10e)
	.dwattr $C$DW$253, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$253, DW_AT_decl_column(0x05)

$C$DW$254	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$254, DW_AT_name("XBAR_INPUT_FLG_INPUT14")
	.dwattr $C$DW$254, DW_AT_const_value(0x10f)
	.dwattr $C$DW$254, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$254, DW_AT_decl_column(0x05)

$C$DW$255	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$255, DW_AT_name("XBAR_INPUT_FLG_ECAP1_OUT")
	.dwattr $C$DW$255, DW_AT_const_value(0x110)
	.dwattr $C$DW$255, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$255, DW_AT_decl_column(0x05)

$C$DW$256	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$256, DW_AT_name("XBAR_INPUT_FLG_ECAP2_OUT")
	.dwattr $C$DW$256, DW_AT_const_value(0x111)
	.dwattr $C$DW$256, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$256, DW_AT_decl_column(0x05)

$C$DW$257	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$257, DW_AT_name("XBAR_INPUT_FLG_ECAP3_OUT")
	.dwattr $C$DW$257, DW_AT_const_value(0x112)
	.dwattr $C$DW$257, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$257, DW_AT_decl_column(0x05)

$C$DW$258	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$258, DW_AT_name("XBAR_INPUT_FLG_ECAP4_OUT")
	.dwattr $C$DW$258, DW_AT_const_value(0x113)
	.dwattr $C$DW$258, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$258, DW_AT_decl_column(0x05)

$C$DW$259	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$259, DW_AT_name("XBAR_INPUT_FLG_ECAP5_OUT")
	.dwattr $C$DW$259, DW_AT_const_value(0x114)
	.dwattr $C$DW$259, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$259, DW_AT_decl_column(0x05)

$C$DW$260	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$260, DW_AT_name("XBAR_INPUT_FLG_ECAP6_OUT")
	.dwattr $C$DW$260, DW_AT_const_value(0x115)
	.dwattr $C$DW$260, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$260, DW_AT_decl_column(0x05)

$C$DW$261	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$261, DW_AT_name("XBAR_INPUT_FLG_EXTSYNCOUT")
	.dwattr $C$DW$261, DW_AT_const_value(0x116)
	.dwattr $C$DW$261, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$261, DW_AT_decl_column(0x05)

$C$DW$262	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$262, DW_AT_name("XBAR_INPUT_FLG_ADCAEVT1")
	.dwattr $C$DW$262, DW_AT_const_value(0x117)
	.dwattr $C$DW$262, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$262, DW_AT_decl_column(0x05)

$C$DW$263	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$263, DW_AT_name("XBAR_INPUT_FLG_ADCAEVT2")
	.dwattr $C$DW$263, DW_AT_const_value(0x118)
	.dwattr $C$DW$263, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$263, DW_AT_decl_column(0x05)

$C$DW$264	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$264, DW_AT_name("XBAR_INPUT_FLG_ADCAEVT3")
	.dwattr $C$DW$264, DW_AT_const_value(0x119)
	.dwattr $C$DW$264, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$264, DW_AT_decl_column(0x05)

$C$DW$265	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$265, DW_AT_name("XBAR_INPUT_FLG_ADCAEVT4")
	.dwattr $C$DW$265, DW_AT_const_value(0x11a)
	.dwattr $C$DW$265, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$265, DW_AT_decl_column(0x05)

$C$DW$266	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$266, DW_AT_name("XBAR_INPUT_FLG_ADCBEVT1")
	.dwattr $C$DW$266, DW_AT_const_value(0x11b)
	.dwattr $C$DW$266, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$266, DW_AT_decl_column(0x05)

$C$DW$267	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$267, DW_AT_name("XBAR_INPUT_FLG_ADCBEVT2")
	.dwattr $C$DW$267, DW_AT_const_value(0x11c)
	.dwattr $C$DW$267, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$267, DW_AT_decl_column(0x05)

$C$DW$268	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$268, DW_AT_name("XBAR_INPUT_FLG_ADCBEVT3")
	.dwattr $C$DW$268, DW_AT_const_value(0x11d)
	.dwattr $C$DW$268, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$268, DW_AT_decl_column(0x05)

$C$DW$269	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$269, DW_AT_name("XBAR_INPUT_FLG_ADCBEVT4")
	.dwattr $C$DW$269, DW_AT_const_value(0x11e)
	.dwattr $C$DW$269, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$269, DW_AT_decl_column(0x05)

$C$DW$270	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$270, DW_AT_name("XBAR_INPUT_FLG_ADCCEVT1")
	.dwattr $C$DW$270, DW_AT_const_value(0x11f)
	.dwattr $C$DW$270, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$270, DW_AT_decl_column(0x05)

$C$DW$271	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$271, DW_AT_name("XBAR_INPUT_FLG_ADCCEVT2")
	.dwattr $C$DW$271, DW_AT_const_value(0x200)
	.dwattr $C$DW$271, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$271, DW_AT_decl_column(0x05)

$C$DW$272	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$272, DW_AT_name("XBAR_INPUT_FLG_ADCCEVT3")
	.dwattr $C$DW$272, DW_AT_const_value(0x201)
	.dwattr $C$DW$272, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$272, DW_AT_decl_column(0x05)

$C$DW$273	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$273, DW_AT_name("XBAR_INPUT_FLG_ADCCEVT4")
	.dwattr $C$DW$273, DW_AT_const_value(0x202)
	.dwattr $C$DW$273, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$273, DW_AT_decl_column(0x05)

$C$DW$274	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$274, DW_AT_name("XBAR_INPUT_FLG_ADCDEVT1")
	.dwattr $C$DW$274, DW_AT_const_value(0x203)
	.dwattr $C$DW$274, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$274, DW_AT_decl_column(0x05)

$C$DW$275	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$275, DW_AT_name("XBAR_INPUT_FLG_ADCDEVT2")
	.dwattr $C$DW$275, DW_AT_const_value(0x204)
	.dwattr $C$DW$275, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$275, DW_AT_decl_column(0x05)

$C$DW$276	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$276, DW_AT_name("XBAR_INPUT_FLG_ADCDEVT3")
	.dwattr $C$DW$276, DW_AT_const_value(0x205)
	.dwattr $C$DW$276, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$276, DW_AT_decl_column(0x05)

$C$DW$277	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$277, DW_AT_name("XBAR_INPUT_FLG_ADCDEVT4")
	.dwattr $C$DW$277, DW_AT_const_value(0x206)
	.dwattr $C$DW$277, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$277, DW_AT_decl_column(0x05)

$C$DW$278	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$278, DW_AT_name("XBAR_INPUT_FLG_SD1FLT1_COMPL")
	.dwattr $C$DW$278, DW_AT_const_value(0x207)
	.dwattr $C$DW$278, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$278, DW_AT_decl_column(0x05)

$C$DW$279	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$279, DW_AT_name("XBAR_INPUT_FLG_SD1FLT1_COMPH")
	.dwattr $C$DW$279, DW_AT_const_value(0x208)
	.dwattr $C$DW$279, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$279, DW_AT_decl_column(0x05)

$C$DW$280	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$280, DW_AT_name("XBAR_INPUT_FLG_SD1FLT2_COMPL")
	.dwattr $C$DW$280, DW_AT_const_value(0x209)
	.dwattr $C$DW$280, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$280, DW_AT_decl_column(0x05)

$C$DW$281	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$281, DW_AT_name("XBAR_INPUT_FLG_SD1FLT2_COMPH")
	.dwattr $C$DW$281, DW_AT_const_value(0x20a)
	.dwattr $C$DW$281, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$281, DW_AT_decl_column(0x05)

$C$DW$282	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$282, DW_AT_name("XBAR_INPUT_FLG_SD1FLT3_COMPL")
	.dwattr $C$DW$282, DW_AT_const_value(0x20b)
	.dwattr $C$DW$282, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$282, DW_AT_decl_column(0x05)

$C$DW$283	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$283, DW_AT_name("XBAR_INPUT_FLG_SD1FLT3_COMPH")
	.dwattr $C$DW$283, DW_AT_const_value(0x20c)
	.dwattr $C$DW$283, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$283, DW_AT_decl_column(0x05)

$C$DW$284	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$284, DW_AT_name("XBAR_INPUT_FLG_SD1FLT4_COMPL")
	.dwattr $C$DW$284, DW_AT_const_value(0x20d)
	.dwattr $C$DW$284, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$284, DW_AT_decl_column(0x05)

$C$DW$285	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$285, DW_AT_name("XBAR_INPUT_FLG_SD1FLT4_COMPH")
	.dwattr $C$DW$285, DW_AT_const_value(0x20e)
	.dwattr $C$DW$285, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$285, DW_AT_decl_column(0x05)

$C$DW$286	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$286, DW_AT_name("XBAR_INPUT_FLG_SD2FLT1_COMPL")
	.dwattr $C$DW$286, DW_AT_const_value(0x20f)
	.dwattr $C$DW$286, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$286, DW_AT_decl_column(0x05)

$C$DW$287	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$287, DW_AT_name("XBAR_INPUT_FLG_SD2FLT1_COMPH")
	.dwattr $C$DW$287, DW_AT_const_value(0x210)
	.dwattr $C$DW$287, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$287, DW_AT_decl_column(0x05)

$C$DW$288	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$288, DW_AT_name("XBAR_INPUT_FLG_SD2FLT2_COMPL")
	.dwattr $C$DW$288, DW_AT_const_value(0x211)
	.dwattr $C$DW$288, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$288, DW_AT_decl_column(0x05)

$C$DW$289	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$289, DW_AT_name("XBAR_INPUT_FLG_SD2FLT2_COMPH")
	.dwattr $C$DW$289, DW_AT_const_value(0x212)
	.dwattr $C$DW$289, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$289, DW_AT_decl_column(0x05)

$C$DW$290	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$290, DW_AT_name("XBAR_INPUT_FLG_SD2FLT3_COMPL")
	.dwattr $C$DW$290, DW_AT_const_value(0x213)
	.dwattr $C$DW$290, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$290, DW_AT_decl_column(0x05)

$C$DW$291	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$291, DW_AT_name("XBAR_INPUT_FLG_SD2FLT3_COMPH")
	.dwattr $C$DW$291, DW_AT_const_value(0x214)
	.dwattr $C$DW$291, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$291, DW_AT_decl_column(0x05)

$C$DW$292	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$292, DW_AT_name("XBAR_INPUT_FLG_SD2FLT4_COMPL")
	.dwattr $C$DW$292, DW_AT_const_value(0x215)
	.dwattr $C$DW$292, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$292, DW_AT_decl_column(0x05)

$C$DW$293	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$293, DW_AT_name("XBAR_INPUT_FLG_SD2FLT4_COMPH")
	.dwattr $C$DW$293, DW_AT_const_value(0x216)
	.dwattr $C$DW$293, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$293, DW_AT_decl_column(0x05)

$C$DW$294	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$294, DW_AT_name("XBAR_INPUT_FLG_ECAP7_OUT")
	.dwattr $C$DW$294, DW_AT_const_value(0x217)
	.dwattr $C$DW$294, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$294, DW_AT_decl_column(0x05)

$C$DW$295	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$295, DW_AT_name("XBAR_INPUT_FLG_SD1FLT1_COMPZ")
	.dwattr $C$DW$295, DW_AT_const_value(0x218)
	.dwattr $C$DW$295, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$295, DW_AT_decl_column(0x05)

$C$DW$296	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$296, DW_AT_name("XBAR_INPUT_FLG_SD1FLT1_DRINT")
	.dwattr $C$DW$296, DW_AT_const_value(0x219)
	.dwattr $C$DW$296, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x1eb)
	.dwattr $C$DW$296, DW_AT_decl_column(0x05)

$C$DW$297	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$297, DW_AT_name("XBAR_INPUT_FLG_SD1FLT2_COMPZ")
	.dwattr $C$DW$297, DW_AT_const_value(0x21a)
	.dwattr $C$DW$297, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$297, DW_AT_decl_column(0x05)

$C$DW$298	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$298, DW_AT_name("XBAR_INPUT_FLG_SD1FLT2_DRINT")
	.dwattr $C$DW$298, DW_AT_const_value(0x21b)
	.dwattr $C$DW$298, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$298, DW_AT_decl_column(0x05)

$C$DW$299	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$299, DW_AT_name("XBAR_INPUT_FLG_SD1FLT3_COMPZ")
	.dwattr $C$DW$299, DW_AT_const_value(0x21c)
	.dwattr $C$DW$299, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$299, DW_AT_decl_column(0x05)

$C$DW$300	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$300, DW_AT_name("XBAR_INPUT_FLG_SD1FLT3_DRINT")
	.dwattr $C$DW$300, DW_AT_const_value(0x21d)
	.dwattr $C$DW$300, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$300, DW_AT_decl_column(0x05)

$C$DW$301	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$301, DW_AT_name("XBAR_INPUT_FLG_SD1FLT4_COMPZ")
	.dwattr $C$DW$301, DW_AT_const_value(0x21e)
	.dwattr $C$DW$301, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$301, DW_AT_decl_column(0x05)

$C$DW$302	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$302, DW_AT_name("XBAR_INPUT_FLG_SD1FLT4_DRINT")
	.dwattr $C$DW$302, DW_AT_const_value(0x21f)
	.dwattr $C$DW$302, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$302, DW_AT_decl_column(0x05)

$C$DW$303	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$303, DW_AT_name("XBAR_INPUT_FLG_SD2FLT1_COMPZ")
	.dwattr $C$DW$303, DW_AT_const_value(0x300)
	.dwattr $C$DW$303, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$303, DW_AT_decl_column(0x05)

$C$DW$304	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$304, DW_AT_name("XBAR_INPUT_FLG_SD2FLT1_DRINT")
	.dwattr $C$DW$304, DW_AT_const_value(0x301)
	.dwattr $C$DW$304, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$304, DW_AT_decl_column(0x05)

$C$DW$305	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$305, DW_AT_name("XBAR_INPUT_FLG_SD2FLT2_COMPZ")
	.dwattr $C$DW$305, DW_AT_const_value(0x302)
	.dwattr $C$DW$305, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$305, DW_AT_decl_column(0x05)

$C$DW$306	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$306, DW_AT_name("XBAR_INPUT_FLG_SD2FLT2_DRINT")
	.dwattr $C$DW$306, DW_AT_const_value(0x303)
	.dwattr $C$DW$306, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$306, DW_AT_decl_column(0x05)

$C$DW$307	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$307, DW_AT_name("XBAR_INPUT_FLG_SD2FLT3_COMPZ")
	.dwattr $C$DW$307, DW_AT_const_value(0x304)
	.dwattr $C$DW$307, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$307, DW_AT_decl_column(0x05)

$C$DW$308	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$308, DW_AT_name("XBAR_INPUT_FLG_SD2FLT3_DRINT")
	.dwattr $C$DW$308, DW_AT_const_value(0x305)
	.dwattr $C$DW$308, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$308, DW_AT_decl_column(0x05)

$C$DW$309	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$309, DW_AT_name("XBAR_INPUT_FLG_SD2FLT4_COMPZ")
	.dwattr $C$DW$309, DW_AT_const_value(0x306)
	.dwattr $C$DW$309, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$309, DW_AT_decl_column(0x05)

$C$DW$310	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$310, DW_AT_name("XBAR_INPUT_FLG_SD2FLT4_DRINT")
	.dwattr $C$DW$310, DW_AT_const_value(0x307)
	.dwattr $C$DW$310, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$310, DW_AT_decl_column(0x05)

$C$DW$311	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$311, DW_AT_name("XBAR_INPUT_FLG_EMAC_PPS0")
	.dwattr $C$DW$311, DW_AT_const_value(0x308)
	.dwattr $C$DW$311, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$311, DW_AT_decl_column(0x05)

$C$DW$312	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$312, DW_AT_name("XBAR_INPUT_FLG_MCANA_FEVT0")
	.dwattr $C$DW$312, DW_AT_const_value(0x309)
	.dwattr $C$DW$312, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$312, DW_AT_decl_column(0x05)

$C$DW$313	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$313, DW_AT_name("XBAR_INPUT_FLG_MCANA_FEVT1")
	.dwattr $C$DW$313, DW_AT_const_value(0x30a)
	.dwattr $C$DW$313, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x1ff)
	.dwattr $C$DW$313, DW_AT_decl_column(0x05)

$C$DW$314	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$314, DW_AT_name("XBAR_INPUT_FLG_ERRORSTS_ERROR")
	.dwattr $C$DW$314, DW_AT_const_value(0x31c)
	.dwattr $C$DW$314, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x200)
	.dwattr $C$DW$314, DW_AT_decl_column(0x05)

$C$DW$315	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$315, DW_AT_name("XBAR_INPUT_FLG_ECATSYNC0")
	.dwattr $C$DW$315, DW_AT_const_value(0x31d)
	.dwattr $C$DW$315, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x201)
	.dwattr $C$DW$315, DW_AT_decl_column(0x05)

$C$DW$316	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$316, DW_AT_name("XBAR_INPUT_FLG_ECATSYNC1")
	.dwattr $C$DW$316, DW_AT_const_value(0x31e)
	.dwattr $C$DW$316, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x202)
	.dwattr $C$DW$316, DW_AT_decl_column(0x05)

$C$DW$317	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$317, DW_AT_name("XBAR_INPUT_FLG_CLAHALT")
	.dwattr $C$DW$317, DW_AT_const_value(0x31f)
	.dwattr $C$DW$317, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x203)
	.dwattr $C$DW$317, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("XBAR_InputFlag")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x204)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


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


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$35


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


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$30


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


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$38, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$38, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$38

