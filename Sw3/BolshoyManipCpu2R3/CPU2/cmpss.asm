;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:12 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{D450BE92-1256-4BAE-B980-CDC711DCDB1B} 
	.sect	".text:CMPSS_configFilterHigh"
	.clink
	.global	||CMPSS_configFilterHigh||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$1, DW_AT_low_pc(||CMPSS_configFilterHigh||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 53,column 1,is_stmt,address ||CMPSS_configFilterHigh||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configFilterHigh||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("samplePrescale")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("sampleWindow")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg14]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("threshold")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -9]


;***************************************************************
;* FNAME: CMPSS_configFilterHigh        FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||CMPSS_configFilterHigh||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("base")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -2]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("samplePrescale")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -3]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("sampleWindow")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -4]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("regValue")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |53| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |53| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |53| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 68,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |68| 
        ADDB      AL,#-1                ; [CPU_ALU] |68| 
        MOV       ACC,AL << #4          ; [CPU_ALU] |68| 
        MOVZ      AR6,AL                ; [CPU_ALU] |68| 
        MOV       ACC,*-SP[9] << #9     ; [CPU_ALU] |68| 
        OR        AL,AR6                ; [CPU_ALU] |68| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |68| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 71,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |71| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 73,column 5,is_stmt,isa 0
        MOVB      ACC,#24               ; [CPU_ALU] |73| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |73| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |73| 
        AND       AL,*+XAR4[0],#0xc00f  ; [CPU_ALU] |73| 
        OR        AL,*-SP[5]            ; [CPU_ALU] |73| 
        MOVZ      AR6,AL                ; [CPU_ALU] |73| 
        MOVB      ACC,#24               ; [CPU_ALU] |73| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |73| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |73| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |73| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 81,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_ALU] |81| 
        MOVB      ACC,#25               ; [CPU_ALU] |81| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |81| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |81| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |81| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 83,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |83| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 84,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:CMPSS_configFilterLow"
	.clink
	.global	||CMPSS_configFilterLow||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$11, DW_AT_low_pc(||CMPSS_configFilterLow||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("CMPSS_configFilterLow")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 94,column 1,is_stmt,address ||CMPSS_configFilterLow||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configFilterLow||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("base")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("samplePrescale")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg12]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("sampleWindow")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg14]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("threshold")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -9]


;***************************************************************
;* FNAME: CMPSS_configFilterLow         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||CMPSS_configFilterLow||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("base")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -2]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("samplePrescale")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -3]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("sampleWindow")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -4]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("regValue")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |94| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |94| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |94| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 109,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |109| 
        ADDB      AL,#-1                ; [CPU_ALU] |109| 
        MOV       ACC,AL << #4          ; [CPU_ALU] |109| 
        MOVZ      AR6,AL                ; [CPU_ALU] |109| 
        MOV       ACC,*-SP[9] << #9     ; [CPU_ALU] |109| 
        OR        AL,AR6                ; [CPU_ALU] |109| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |109| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 112,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |112| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 114,column 5,is_stmt,isa 0
        MOVB      ACC,#22               ; [CPU_ALU] |114| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |114| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |114| 
        AND       AL,*+XAR4[0],#0xc00f  ; [CPU_ALU] |114| 
        OR        AL,*-SP[5]            ; [CPU_ALU] |114| 
        MOVZ      AR6,AL                ; [CPU_ALU] |114| 
        MOVB      ACC,#22               ; [CPU_ALU] |114| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |114| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |114| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |114| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 122,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_ALU] |122| 
        MOVB      ACC,#23               ; [CPU_ALU] |122| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |122| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |122| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |122| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 124,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |124| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 125,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x7d)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:CMPSS_configLatchOnPWMSYNC"
	.clink
	.global	||CMPSS_configLatchOnPWMSYNC||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("CMPSS_configLatchOnPWMSYNC")
	.dwattr $C$DW$21, DW_AT_low_pc(||CMPSS_configLatchOnPWMSYNC||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("CMPSS_configLatchOnPWMSYNC")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x85)
	.dwattr $C$DW$21, DW_AT_decl_column(0x01)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 134,column 1,is_stmt,address ||CMPSS_configLatchOnPWMSYNC||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configLatchOnPWMSYNC||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("highEnable")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("lowEnable")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: CMPSS_configLatchOnPWMSYNC    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||CMPSS_configLatchOnPWMSYNC||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("base")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -2]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("highEnable")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -3]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("lowEnable")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |134| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |134| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 144,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |144| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 146,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |146| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 148,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |148| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |148| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |148| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |148| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 152,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |152| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |152| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |152| 
        AND       *+XAR4[0],#0xfffb     ; [CPU_ALU] |152| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 159,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |159| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |159| 
        ; branchcc occurs ; [] |159| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 161,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |161| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |161| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |161| 
        OR        *+XAR4[0],#0x0400     ; [CPU_ALU] |161| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 165,column 9,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |165| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |165| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |165| 
        AND       *+XAR4[0],#0xfbff     ; [CPU_ALU] |165| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 168,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |168| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 169,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:CMPSS_configRamp"
	.clink
	.global	||CMPSS_configRamp||

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("CMPSS_configRamp")
	.dwattr $C$DW$29, DW_AT_low_pc(||CMPSS_configRamp||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("CMPSS_configRamp")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$29, DW_AT_decl_column(0x01)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 179,column 1,is_stmt,address ||CMPSS_configRamp||,isa 0

	.dwfde $C$DW$CIE, ||CMPSS_configRamp||
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("base")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("maxRampVal")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("decrementVal")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg14]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("delayVal")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -7]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("pwmSyncSrc")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -8]

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("useRampValShdw")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -9]


;***************************************************************
;* FNAME: CMPSS_configRamp              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||CMPSS_configRamp||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -2]

$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("maxRampVal")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -3]

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("decrementVal")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |179| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |179| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 187,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |187| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 192,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |192| 
        AND       AL,*+XAR4[4],#0xffe1  ; [CPU_ALU] |192| 
        MOVZ      AR6,AL                ; [CPU_ALU] |192| 
        MOV       AH,*-SP[8]            ; [CPU_ALU] |192| 
        ADDB      AH,#-1                ; [CPU_ALU] |192| 
        MOV       ACC,AH << #1          ; [CPU_ALU] |192| 
        OR        AL,AR6                ; [CPU_ALU] |192| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |192| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 201,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |201| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 203,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |203| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |203| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |203| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |203| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 207,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |207| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |207| 
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |207| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 210,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 215,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_ALU] |215| 
        MOVB      ACC,#10               ; [CPU_ALU] |215| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |215| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |215| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |215| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 220,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |220| 
        MOVB      ACC,#14               ; [CPU_ALU] |220| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |220| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |220| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |220| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 225,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[7]           ; [CPU_ALU] |225| 
        MOVB      ACC,#21               ; [CPU_ALU] |225| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |225| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |225| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cmpss.c",line 226,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/cmpss.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0xe2)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29


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


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$22


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


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$24, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$24, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$24

