;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:14 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/eqep.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{E3BF5D2F-E750-429A-B2D8-FC9164644D5A} 
	.sect	".text:EQEP_setCompareConfig"
	.clink
	.global	||EQEP_setCompareConfig||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("EQEP_setCompareConfig")
	.dwattr $C$DW$1, DW_AT_low_pc(||EQEP_setCompareConfig||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("EQEP_setCompareConfig")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/eqep.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 53,column 1,is_stmt,address ||EQEP_setCompareConfig||,isa 0

	.dwfde $C$DW$CIE, ||EQEP_setCompareConfig||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("config")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("compareValue")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -10]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("cycles")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: EQEP_setCompareConfig         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||EQEP_setCompareConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("base")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -2]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("config")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -3]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("cycles")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -4]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("regValue")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |53| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |53| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |53| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 65,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |65| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |65| 
        MOVL      *+XAR4[6],ACC         ; [CPU_ALU] |65| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 70,column 5,is_stmt,isa 0
        MOV       AH,*-SP[4]            ; [CPU_ALU] |70| 
        AND       AL,*-SP[3],#0xc000    ; [CPU_ALU] |70| 
        ADDB      AH,#-1                ; [CPU_ALU] |70| 
        OR        AH,AL                 ; [CPU_ALU] |70| 
        MOV       *-SP[5],AH            ; [CPU_ALU] |70| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 73,column 5,is_stmt,isa 0
        MOVB      ACC,#23               ; [CPU_ALU] |73| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |73| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |73| 
        AND       AL,*+XAR4[0],#0x3000  ; [CPU_ALU] |73| 
        OR        AL,*-SP[5]            ; [CPU_ALU] |73| 
        MOVZ      AR6,AL                ; [CPU_ALU] |73| 
        MOVB      ACC,#23               ; [CPU_ALU] |73| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |73| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |73| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |73| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 81,column 5,is_stmt,isa 0
        AND       AL,*-SP[3],#0x3000    ; [CPU_ALU] |81| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |81| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 83,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |83| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |83| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |83| 
        AND       AL,*+XAR4[0],#0xcfff  ; [CPU_ALU] |83| 
        OR        AL,*-SP[5]            ; [CPU_ALU] |83| 
        MOVZ      AR6,AL                ; [CPU_ALU] |83| 
        MOVB      ACC,#20               ; [CPU_ALU] |83| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |83| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |83| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |83| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 86,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/eqep.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:EQEP_setInputPolarity"
	.clink
	.global	||EQEP_setInputPolarity||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("EQEP_setInputPolarity")
	.dwattr $C$DW$11, DW_AT_low_pc(||EQEP_setInputPolarity||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("EQEP_setInputPolarity")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../F2838x_driverlib/driverlib/eqep.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 96,column 1,is_stmt,address ||EQEP_setInputPolarity||,isa 0

	.dwfde $C$DW$CIE, ||EQEP_setInputPolarity||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("base")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("invertQEPA")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg12]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("invertQEPB")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg14]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("invertIndex")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -7]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("invertStrobe")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: EQEP_setInputPolarity         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||EQEP_setInputPolarity||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("base")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -2]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("invertQEPA")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -3]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("invertQEPB")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |96| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |96| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |96| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 105,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |105| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |105| 
        ; branchcc occurs ; [] |105| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 107,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |107| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |107| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |107| 
        OR        *+XAR4[0],#0x0100     ; [CPU_ALU] |107| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 111,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |111| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |111| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |111| 
        AND       *+XAR4[0],#0xfeff     ; [CPU_ALU] |111| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 117,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |117| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 119,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |119| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |119| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |119| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |119| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 123,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |123| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |123| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |123| 
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |123| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 129,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |129| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 131,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |131| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |131| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |131| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |131| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 135,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |135| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |135| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |135| 
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |135| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 141,column 5,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |141| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |141| 
        ; branchcc occurs ; [] |141| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 143,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |143| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |143| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |143| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |143| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 147,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |147| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |147| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |147| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |147| 
	.dwpsn	file "../F2838x_driverlib/driverlib/eqep.c",line 149,column 1,is_stmt,isa 0
||$C$L8||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/eqep.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11


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

