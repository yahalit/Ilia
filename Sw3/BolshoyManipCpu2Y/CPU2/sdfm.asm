;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:56 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{FE1D5762-CE13-416E-8B63-1A5745665E8E} 
	.sect	".text:SDFM_enableFilter"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SDFM_enableFilter")
	.dwattr $C$DW$1, DW_AT_low_pc(||SDFM_enableFilter||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("SDFM_enableFilter")
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x277)
	.dwattr $C$DW$1, DW_AT_decl_column(0x14)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 633,column 1,is_stmt,address ||SDFM_enableFilter||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_enableFilter||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("filterNumber")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SDFM_enableFilter             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SDFM_enableFilter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("base")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -2]

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("filterNumber")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |633| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |633| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 639,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |639| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 640,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[3] << 4      ; [CPU_ALU] |640| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |640| 
        ADDB      ACC,#17               ; [CPU_ALU] |640| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |640| 
        OR        *+XAR4[0],#0x0100     ; [CPU_ALU] |640| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 642,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |642| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 643,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x283)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:SDFM_disableFilter"
	.clink

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("SDFM_disableFilter")
	.dwattr $C$DW$7, DW_AT_low_pc(||SDFM_disableFilter||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("SDFM_disableFilter")
	.dwattr $C$DW$7, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x291)
	.dwattr $C$DW$7, DW_AT_decl_column(0x14)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 659,column 1,is_stmt,address ||SDFM_disableFilter||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_disableFilter||
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("base")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("filterNumber")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SDFM_disableFilter            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SDFM_disableFilter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -2]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("filterNumber")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |659| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |659| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 665,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |665| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 666,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[3] << 4      ; [CPU_ALU] |666| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |666| 
        ADDB      ACC,#17               ; [CPU_ALU] |666| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |666| 
        AND       *+XAR4[0],#0xfeff     ; [CPU_ALU] |666| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 668,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |668| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 669,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x29d)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:SDFM_enableFIFOBuffer"
	.clink

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("SDFM_enableFIFOBuffer")
	.dwattr $C$DW$13, DW_AT_low_pc(||SDFM_enableFIFOBuffer||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("SDFM_enableFIFOBuffer")
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x2ac)
	.dwattr $C$DW$13, DW_AT_decl_column(0x14)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 686,column 1,is_stmt,address ||SDFM_enableFIFOBuffer||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_enableFIFOBuffer||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("filterNumber")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SDFM_enableFIFOBuffer         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SDFM_enableFIFOBuffer||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("base")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -2]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("filterNumber")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |686| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |686| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 692,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |692| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 693,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[3] << 4      ; [CPU_ALU] |693| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |693| 
        ADDB      ACC,#29               ; [CPU_ALU] |693| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |693| 
        OR        *+XAR4[0],#0x2000     ; [CPU_ALU] |693| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 695,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |695| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 696,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x2b8)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:SDFM_setFilterType"
	.clink

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("SDFM_setFilterType")
	.dwattr $C$DW$19, DW_AT_low_pc(||SDFM_setFilterType||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("SDFM_setFilterType")
	.dwattr $C$DW$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x3b9)
	.dwattr $C$DW$19, DW_AT_decl_column(0x14)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 956,column 1,is_stmt,address ||SDFM_setFilterType||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setFilterType||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("base")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("filterNumber")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("filterType")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setFilterType            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setFilterType||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -2]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("address")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -4]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("filterNumber")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -5]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("filterType")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |956| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |956| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |956| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 961,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |961| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |961| 
        ADDB      ACC,#17               ; [CPU_ALU] |961| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |961| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 966,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |966| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 967,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |967| 
        AND       AL,*+XAR4[0],#0xf3ff  ; [CPU_ALU] |967| 
        MOVZ      AR6,AL                ; [CPU_ALU] |967| 
        MOV       ACC,*-SP[6] << #6     ; [CPU_ALU] |967| 
        OR        AL,AR6                ; [CPU_ALU] |967| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |967| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 969,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |969| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 970,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x3ca)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:SDFM_setFilterOverSamplingRatio"
	.clink

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("SDFM_setFilterOverSamplingRatio")
	.dwattr $C$DW$28, DW_AT_low_pc(||SDFM_setFilterOverSamplingRatio||)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_linkage_name("SDFM_setFilterOverSamplingRatio")
	.dwattr $C$DW$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x3db)
	.dwattr $C$DW$28, DW_AT_decl_column(0x14)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 990,column 1,is_stmt,address ||SDFM_setFilterOverSamplingRatio||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setFilterOverSamplingRatio||
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("base")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("filterNumber")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("overSamplingRatio")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setFilterOverSamplingRatio FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setFilterOverSamplingRatio||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -2]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("address")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -4]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("filterNumber")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -5]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("overSamplingRatio")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |990| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |990| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |990| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 996,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |996| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |996| 
        ADDB      ACC,#17               ; [CPU_ALU] |996| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |996| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1001,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1001| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1002,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1002| 
        AND       AL,*+XAR4[0],#0xff00  ; [CPU_ALU] |1002| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |1002| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1002| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1004,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1004| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1005,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x3ed)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text:SDFM_setOutputDataFormat"
	.clink

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("SDFM_setOutputDataFormat")
	.dwattr $C$DW$37, DW_AT_low_pc(||SDFM_setOutputDataFormat||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("SDFM_setOutputDataFormat")
	.dwattr $C$DW$37, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x41d)
	.dwattr $C$DW$37, DW_AT_decl_column(0x14)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1056,column 1,is_stmt,address ||SDFM_setOutputDataFormat||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setOutputDataFormat||
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("filterNumber")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("dataFormat")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setOutputDataFormat      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setOutputDataFormat||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("base")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -2]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("address")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -4]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("filterNumber")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -5]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("dataFormat")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |1056| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |1056| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1056| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1061,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1061| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1061| 
        ADDB      ACC,#18               ; [CPU_ALU] |1061| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1061| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1066,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1066| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1067,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1067| 
        AND       AL,*+XAR4[0],#0xfbff  ; [CPU_ALU] |1067| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1067| 
        MOV       ACC,*-SP[6] << #10    ; [CPU_ALU] |1067| 
        OR        AL,AR6                ; [CPU_ALU] |1067| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1067| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1069,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1069| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1070,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x42e)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:SDFM_setDataShiftValue"
	.clink

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("SDFM_setDataShiftValue")
	.dwattr $C$DW$46, DW_AT_low_pc(||SDFM_setDataShiftValue||)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_linkage_name("SDFM_setDataShiftValue")
	.dwattr $C$DW$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x440)
	.dwattr $C$DW$46, DW_AT_decl_column(0x14)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1091,column 1,is_stmt,address ||SDFM_setDataShiftValue||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setDataShiftValue||
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("base")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("filterNumber")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg12]

$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("shiftValue")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setDataShiftValue        FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setDataShiftValue||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("base")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("address")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -4]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("filterNumber")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -5]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("shiftValue")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |1091| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |1091| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1091| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1097,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1097| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1097| 
        ADDB      ACC,#18               ; [CPU_ALU] |1097| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1097| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1102,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1102| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1103,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1103| 
        AND       AL,*+XAR4[0],#0x07ff  ; [CPU_ALU] |1103| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1103| 
        MOV       ACC,*-SP[6] << #11    ; [CPU_ALU] |1103| 
        OR        AL,AR6                ; [CPU_ALU] |1103| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1103| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1105,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1105| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1106,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x452)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:SDFM_setCompFilterHighThreshold"
	.clink

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("SDFM_setCompFilterHighThreshold")
	.dwattr $C$DW$55, DW_AT_low_pc(||SDFM_setCompFilterHighThreshold||)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_linkage_name("SDFM_setCompFilterHighThreshold")
	.dwattr $C$DW$55, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x467)
	.dwattr $C$DW$55, DW_AT_decl_column(0x14)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1130,column 1,is_stmt,address ||SDFM_setCompFilterHighThreshold||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setCompFilterHighThreshold||
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("base")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg0]

$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("filterNumber")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("highThreshold")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: SDFM_setCompFilterHighThreshold FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||SDFM_setCompFilterHighThreshold||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("base")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -2]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("address")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -4]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("filterNumber")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AR4           ; [CPU_ALU] |1130| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1130| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1137,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1137| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1137| 
        ADDB      ACC,#19               ; [CPU_ALU] |1137| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1137| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1143,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1143| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1144,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1144| 
        AND       AL,*+XAR4[0],#0x8000  ; [CPU_ALU] |1144| 
        OR        AL,*-SP[10]           ; [CPU_ALU] |1144| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1144| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1146,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1146| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |1146| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1146| 
        AND       AL,*+XAR4[0],#0x8000  ; [CPU_ALU] |1146| 
        OR        AL,*-SP[9]            ; [CPU_ALU] |1146| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1146| 
        MOVB      ACC,#8                ; [CPU_ALU] |1146| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |1146| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1146| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1146| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1150,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1150| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1151,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x47f)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:SDFM_setCompFilterLowThreshold"
	.clink

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("SDFM_setCompFilterLowThreshold")
	.dwattr $C$DW$63, DW_AT_low_pc(||SDFM_setCompFilterLowThreshold||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("SDFM_setCompFilterLowThreshold")
	.dwattr $C$DW$63, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x493)
	.dwattr $C$DW$63, DW_AT_decl_column(0x14)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1174,column 1,is_stmt,address ||SDFM_setCompFilterLowThreshold||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setCompFilterLowThreshold||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("base")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("filterNumber")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("lowThreshold")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: SDFM_setCompFilterLowThreshold FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||SDFM_setCompFilterLowThreshold||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("base")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -2]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("address")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -4]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("filterNumber")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AR4           ; [CPU_ALU] |1174| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1174| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1181,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1181| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1181| 
        ADDB      ACC,#20               ; [CPU_ALU] |1181| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1181| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1187,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1187| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1188,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1188| 
        AND       AL,*+XAR4[0],#0x8000  ; [CPU_ALU] |1188| 
        OR        AL,*-SP[10]           ; [CPU_ALU] |1188| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1188| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1190,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |1190| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |1190| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1190| 
        AND       AL,*+XAR4[0],#0x8000  ; [CPU_ALU] |1190| 
        OR        AL,*-SP[9]            ; [CPU_ALU] |1190| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1190| 
        MOVB      ACC,#11               ; [CPU_ALU] |1190| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |1190| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1190| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1190| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1194,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1194| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1195,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x4ab)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:SDFM_setCompFilterZeroCrossThreshold"
	.clink

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("SDFM_setCompFilterZeroCrossThreshold")
	.dwattr $C$DW$71, DW_AT_low_pc(||SDFM_setCompFilterZeroCrossThreshold||)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_linkage_name("SDFM_setCompFilterZeroCrossThreshold")
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x4ba)
	.dwattr $C$DW$71, DW_AT_decl_column(0x14)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1213,column 1,is_stmt,address ||SDFM_setCompFilterZeroCrossThreshold||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setCompFilterZeroCrossThreshold||
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("base")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("filterNumber")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("zeroCrossThreshold")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setCompFilterZeroCrossThreshold FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setCompFilterZeroCrossThreshold||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("base")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -2]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("address")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -4]

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("filterNumber")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -5]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("zeroCrossThreshold")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |1213| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |1213| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1213| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1219,column 1,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1219| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1219| 
        ADDB      ACC,#28               ; [CPU_ALU] |1219| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1219| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1224,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1224| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1225,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1225| 
        AND       AL,*+XAR4[0],#0x8000  ; [CPU_ALU] |1225| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |1225| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1225| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1229,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1229| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1230,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x4ce)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text:SDFM_enableZeroCrossEdgeDetect"
	.clink

$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("SDFM_enableZeroCrossEdgeDetect")
	.dwattr $C$DW$80, DW_AT_low_pc(||SDFM_enableZeroCrossEdgeDetect||)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_linkage_name("SDFM_enableZeroCrossEdgeDetect")
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x4dc)
	.dwattr $C$DW$80, DW_AT_decl_column(0x14)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1246,column 1,is_stmt,address ||SDFM_enableZeroCrossEdgeDetect||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_enableZeroCrossEdgeDetect||
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("base")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg0]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("filterNumber")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SDFM_enableZeroCrossEdgeDetect FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SDFM_enableZeroCrossEdgeDetect||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("base")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -2]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("filterNumber")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1246| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1246| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1252,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1252| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1253,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[3] << 4      ; [CPU_ALU] |1253| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1253| 
        ADDB      ACC,#21               ; [CPU_ALU] |1253| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1253| 
        OR        *+XAR4[0],#0x0400     ; [CPU_ALU] |1253| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1255,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1255| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1256,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$80, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x4e8)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text:SDFM_setComparatorFilterType"
	.clink

$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("SDFM_setComparatorFilterType")
	.dwattr $C$DW$86, DW_AT_low_pc(||SDFM_setComparatorFilterType||)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_linkage_name("SDFM_setComparatorFilterType")
	.dwattr $C$DW$86, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x59d)
	.dwattr $C$DW$86, DW_AT_decl_column(0x14)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1440,column 1,is_stmt,address ||SDFM_setComparatorFilterType||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setComparatorFilterType||
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("base")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg0]

$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("filterNumber")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg12]

$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("filterType")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setComparatorFilterType  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setComparatorFilterType||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("base")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -2]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("address")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -4]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("filterNumber")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -5]

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("filterType")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |1440| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |1440| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1440| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1445,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1445| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1445| 
        ADDB      ACC,#21               ; [CPU_ALU] |1445| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1445| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1450,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1450| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1451,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1451| 
        AND       AL,*+XAR4[0],#0xfe7f  ; [CPU_ALU] |1451| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1451| 
        MOV       ACC,*-SP[6] << #3     ; [CPU_ALU] |1451| 
        OR        AL,AR6                ; [CPU_ALU] |1451| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1451| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1453,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1453| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1454,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x5ae)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text:SDFM_setCompFilterOverSamplingRatio"
	.clink

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("SDFM_setCompFilterOverSamplingRatio")
	.dwattr $C$DW$95, DW_AT_low_pc(||SDFM_setCompFilterOverSamplingRatio||)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_linkage_name("SDFM_setCompFilterOverSamplingRatio")
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x5bf)
	.dwattr $C$DW$95, DW_AT_decl_column(0x14)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1474,column 1,is_stmt,address ||SDFM_setCompFilterOverSamplingRatio||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setCompFilterOverSamplingRatio||
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("base")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg0]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("filterNumber")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg12]

$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("overSamplingRatio")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setCompFilterOverSamplingRatio FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setCompFilterOverSamplingRatio||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("base")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -2]

$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("address")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg20 -4]

$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("filterNumber")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_breg20 -5]

$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("overSamplingRatio")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |1474| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |1474| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1474| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1480,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1480| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1480| 
        ADDB      ACC,#21               ; [CPU_ALU] |1480| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1480| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1485,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1485| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1486,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1486| 
        AND       AL,*+XAR4[0],#0xffe0  ; [CPU_ALU] |1486| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |1486| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1486| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1488,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1488| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1489,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x5d1)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text:SDFM_setFIFOInterruptLevel"
	.clink

$C$DW$104	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$104, DW_AT_name("SDFM_setFIFOInterruptLevel")
	.dwattr $C$DW$104, DW_AT_low_pc(||SDFM_setFIFOInterruptLevel||)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_linkage_name("SDFM_setFIFOInterruptLevel")
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x760)
	.dwattr $C$DW$104, DW_AT_decl_column(0x14)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1891,column 1,is_stmt,address ||SDFM_setFIFOInterruptLevel||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_setFIFOInterruptLevel||
$C$DW$105	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$105, DW_AT_name("base")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg0]

$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("filterNumber")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]

$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("fifoLevel")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_setFIFOInterruptLevel    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SDFM_setFIFOInterruptLevel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("base")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg20 -2]

$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("address")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -4]

$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("filterNumber")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -5]

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("fifoLevel")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |1891| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |1891| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1891| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1897,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 4      ; [CPU_ALU] |1897| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1897| 
        ADDB      ACC,#29               ; [CPU_ALU] |1897| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1897| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1902,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1902| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1903,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1903| 
        AND       AL,*+XAR4[0],#0xffe0  ; [CPU_ALU] |1903| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |1903| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1903| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1905,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1905| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sdfm.h",line 1906,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$104, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x772)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text:SDFM_configComparator"
	.clink
	.global	||SDFM_configComparator||

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("SDFM_configComparator")
	.dwattr $C$DW$113, DW_AT_low_pc(||SDFM_configComparator||)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_linkage_name("SDFM_configComparator")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$113, DW_AT_decl_column(0x06)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 93,column 1,is_stmt,address ||SDFM_configComparator||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configComparator||
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("base")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("config1")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg12]

$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("config2")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -14]

$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("config3")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_configComparator         FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||SDFM_configComparator||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("base")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -4]

$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("config1")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg20 -5]

$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("config3")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg20 -6]

$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("filter")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg20 -7]

$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("ratio")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_breg20 -8]

$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("filterType")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg20 -9]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |93| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |93| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |93| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 98,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |98| 
        ANDB      AL,#0x03              ; [CPU_ALU] |98| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |98| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 99,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |99| 
        LSR       AL,8                  ; [CPU_ALU] |99| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |99| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 100,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |100| 
        ANDB      AL,#0x30              ; [CPU_ALU] |100| 
        MOV       *-SP[9],AL            ; [CPU_ALU] |100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 105,column 5,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |105| 
        CMPB      AL,#31                ; [CPU_ALU] |105| 
        B         ||$C$L1||,LOS         ; [CPU_ALU] |105| 
        ; branchcc occurs ; [] |105| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 107,column 9,is_stmt,isa 0
        MOVB      *-SP[8],#31,UNC       ; [CPU_ALU] |107| 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 113,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |113| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |113| 
        MOVZ      AR5,*-SP[9]           ; [CPU_ALU] |113| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("SDFM_setComparatorFilterType")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #||SDFM_setComparatorFilterType|| ; [CPU_ALU] |113| 
        ; call occurs [#||SDFM_setComparatorFilterType||] ; [] |113| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 118,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |118| 
        MOVZ      AR5,*-SP[8]           ; [CPU_ALU] |118| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |118| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("SDFM_setCompFilterOverSamplingRatio")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterOverSamplingRatio|| ; [CPU_ALU] |118| 
        ; call occurs [#||SDFM_setCompFilterOverSamplingRatio||] ; [] |118| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 123,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[13]          ; [CPU_ALU] |123| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |123| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |123| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |123| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("SDFM_setCompFilterHighThreshold")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterHighThreshold|| ; [CPU_ALU] |123| 
        ; call occurs [#||SDFM_setCompFilterHighThreshold||] ; [] |123| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 129,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[14]          ; [CPU_ALU] |129| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |129| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |129| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |129| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("SDFM_setCompFilterLowThreshold")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterLowThreshold|| ; [CPU_ALU] |129| 
        ; call occurs [#||SDFM_setCompFilterLowThreshold||] ; [] |129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 136,column 5,is_stmt,isa 0
        TBIT      *-SP[6],#15           ; [CPU_ALU] |136| 
        B         ||$C$L2||,NTC         ; [CPU_ALU] |136| 
        ; branchcc occurs ; [] |136| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 138,column 9,is_stmt,isa 0
        AND       AL,*-SP[6],#0x7fff    ; [CPU_ALU] |138| 
        MOVZ      AR5,AL                ; [CPU_ALU] |138| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |138| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |138| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("SDFM_setCompFilterZeroCrossThreshold")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterZeroCrossThreshold|| ; [CPU_ALU] |138| 
        ; call occurs [#||SDFM_setCompFilterZeroCrossThreshold||] ; [] |138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 140,column 9,is_stmt,isa 0
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |140| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |140| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("SDFM_enableZeroCrossEdgeDetect")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #||SDFM_enableZeroCrossEdgeDetect|| ; [CPU_ALU] |140| 
        ; call occurs [#||SDFM_enableZeroCrossEdgeDetect||] ; [] |140| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 142,column 1,is_stmt,isa 0
||$C$L2||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text:SDFM_configEnhancedComparator"
	.clink
	.global	||SDFM_configEnhancedComparator||

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("SDFM_configEnhancedComparator")
	.dwattr $C$DW$131, DW_AT_low_pc(||SDFM_configEnhancedComparator||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_linkage_name("SDFM_configEnhancedComparator")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x95)
	.dwattr $C$DW$131, DW_AT_decl_column(0x06)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 153,column 1,is_stmt,address ||SDFM_configEnhancedComparator||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configEnhancedComparator||
$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("base")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg0]

$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("filterConfig")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg12]

$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("highLowThreshold1")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg20 -14]

$C$DW$135	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$135, DW_AT_name("highLowThreshold2")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_breg20 -16]

$C$DW$136	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$136, DW_AT_name("zeroCrossThreshold")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_configEnhancedComparator FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||SDFM_configEnhancedComparator||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("base")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_breg20 -4]

$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("filterConfig")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg20 -5]

$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("zeroCrossThreshold")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg20 -6]

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("filter")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg20 -7]

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("ratio")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg20 -8]

$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("filterType")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_breg20 -9]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |153| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |153| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |153| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 158,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |158| 
        ANDB      AL,#0x03              ; [CPU_ALU] |158| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |158| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 159,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |159| 
        LSR       AL,8                  ; [CPU_ALU] |159| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |159| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 160,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |160| 
        ANDB      AL,#0x30              ; [CPU_ALU] |160| 
        MOV       *-SP[9],AL            ; [CPU_ALU] |160| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 165,column 5,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |165| 
        CMPB      AL,#31                ; [CPU_ALU] |165| 
        B         ||$C$L3||,LOS         ; [CPU_ALU] |165| 
        ; branchcc occurs ; [] |165| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 167,column 9,is_stmt,isa 0
        MOVB      *-SP[8],#31,UNC       ; [CPU_ALU] |167| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 173,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |173| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |173| 
        MOVZ      AR5,*-SP[9]           ; [CPU_ALU] |173| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("SDFM_setComparatorFilterType")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #||SDFM_setComparatorFilterType|| ; [CPU_ALU] |173| 
        ; call occurs [#||SDFM_setComparatorFilterType||] ; [] |173| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 178,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |178| 
        MOVZ      AR5,*-SP[8]           ; [CPU_ALU] |178| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |178| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("SDFM_setCompFilterOverSamplingRatio")
	.dwattr $C$DW$144, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterOverSamplingRatio|| ; [CPU_ALU] |178| 
        ; call occurs [#||SDFM_setCompFilterOverSamplingRatio||] ; [] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 183,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[15] << 16    ; [CPU_ALU] |183| 
        OR        ACC,*-SP[13]          ; [CPU_ALU] |183| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |183| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |183| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |183| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("SDFM_setCompFilterHighThreshold")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterHighThreshold|| ; [CPU_ALU] |183| 
        ; call occurs [#||SDFM_setCompFilterHighThreshold||] ; [] |183| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 190,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[16] << 16    ; [CPU_ALU] |190| 
        OR        ACC,*-SP[14]          ; [CPU_ALU] |190| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |190| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |190| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |190| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("SDFM_setCompFilterLowThreshold")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterLowThreshold|| ; [CPU_ALU] |190| 
        ; call occurs [#||SDFM_setCompFilterLowThreshold||] ; [] |190| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 197,column 5,is_stmt,isa 0
        TBIT      *-SP[6],#15           ; [CPU_ALU] |197| 
        B         ||$C$L4||,NTC         ; [CPU_ALU] |197| 
        ; branchcc occurs ; [] |197| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 199,column 9,is_stmt,isa 0
        AND       AL,*-SP[6],#0x7fff    ; [CPU_ALU] |199| 
        MOVZ      AR5,AL                ; [CPU_ALU] |199| 
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |199| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |199| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("SDFM_setCompFilterZeroCrossThreshold")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterZeroCrossThreshold|| ; [CPU_ALU] |199| 
        ; call occurs [#||SDFM_setCompFilterZeroCrossThreshold||] ; [] |199| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 201,column 9,is_stmt,isa 0
        MOVZ      AR4,*-SP[7]           ; [CPU_ALU] |201| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |201| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("SDFM_enableZeroCrossEdgeDetect")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #||SDFM_enableZeroCrossEdgeDetect|| ; [CPU_ALU] |201| 
        ; call occurs [#||SDFM_enableZeroCrossEdgeDetect||] ; [] |201| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 203,column 1,is_stmt,isa 0
||$C$L4||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:SDFM_configDataFilter"
	.clink
	.global	||SDFM_configDataFilter||

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("SDFM_configDataFilter")
	.dwattr $C$DW$150, DW_AT_low_pc(||SDFM_configDataFilter||)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_linkage_name("SDFM_configDataFilter")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$150, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$150, DW_AT_decl_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 210,column 1,is_stmt,address ||SDFM_configDataFilter||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configDataFilter||
$C$DW$151	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$151, DW_AT_name("base")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg0]

$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("config1")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg12]

$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("config2")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_configDataFilter         FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||SDFM_configDataFilter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("base")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg20 -2]

$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("config1")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_breg20 -3]

$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("config2")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_breg20 -4]

$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("filter")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_breg20 -5]

$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("ratio")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_breg20 -6]

$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("filterType")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |210| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |210| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 215,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |215| 
        ANDB      AL,#0x03              ; [CPU_ALU] |215| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |215| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 216,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |216| 
        LSR       AL,8                  ; [CPU_ALU] |216| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |216| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 217,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |217| 
        ANDB      AL,#0x30              ; [CPU_ALU] |217| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |217| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 222,column 5,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |222| 
        CMPB      AL,#255               ; [CPU_ALU] |222| 
        B         ||$C$L5||,LOS         ; [CPU_ALU] |222| 
        ; branchcc occurs ; [] |222| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 224,column 9,is_stmt,isa 0
        MOVB      *-SP[6],#255,UNC      ; [CPU_ALU] |224| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 230,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |230| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |230| 
        MOVZ      AR5,*-SP[7]           ; [CPU_ALU] |230| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("SDFM_setFilterType")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #||SDFM_setFilterType|| ; [CPU_ALU] |230| 
        ; call occurs [#||SDFM_setFilterType||] ; [] |230| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 235,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |235| 
        MOVZ      AR5,*-SP[6]           ; [CPU_ALU] |235| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |235| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("SDFM_setFilterOverSamplingRatio")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #||SDFM_setFilterOverSamplingRatio|| ; [CPU_ALU] |235| 
        ; call occurs [#||SDFM_setFilterOverSamplingRatio||] ; [] |235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 240,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |240| 
        ANDB      AL,#0x02              ; [CPU_ALU] |240| 
        CMPB      AL,#2                 ; [CPU_ALU] |240| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 242,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |242| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |242| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("SDFM_enableFilter")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #||SDFM_enableFilter|| ; [CPU_ALU] |242| 
        ; call occurs [#||SDFM_enableFilter||] ; [] |242| 
        B         ||$C$L7||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 246,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |246| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |246| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("SDFM_disableFilter")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #||SDFM_disableFilter|| ; [CPU_ALU] |246| 
        ; call occurs [#||SDFM_disableFilter||] ; [] |246| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 252,column 5,is_stmt,isa 0
        AND       AL,*-SP[4],#0x0001    ; [CPU_ALU] |252| 
        MOVZ      AR5,AL                ; [CPU_ALU] |252| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |252| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |252| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("SDFM_setOutputDataFormat")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #||SDFM_setOutputDataFormat|| ; [CPU_ALU] |252| 
        ; call occurs [#||SDFM_setOutputDataFormat||] ; [] |252| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 258,column 5,is_stmt,isa 0
        TBIT      *-SP[4],#0            ; [CPU_ALU] |258| 
        B         ||$C$L8||,TC          ; [CPU_ALU] |258| 
        ; branchcc occurs ; [] |258| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 260,column 9,is_stmt,isa 0
        AND       AL,*-SP[4],#0x007c    ; [CPU_ALU] |260| 
        LSR       AL,2                  ; [CPU_ALU] |260| 
        MOVZ      AR4,*-SP[5]           ; [CPU_FPU] |260| 
        MOVZ      AR5,AL                ; [CPU_ALU] |260| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |260| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("SDFM_setDataShiftValue")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #||SDFM_setDataShiftValue|| ; [CPU_ALU] |260| 
        ; call occurs [#||SDFM_setDataShiftValue||] ; [] |260| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 262,column 1,is_stmt,isa 0
||$C$L8||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text:SDFM_configZeroCrossComparator"
	.clink
	.global	||SDFM_configZeroCrossComparator||

$C$DW$167	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$167, DW_AT_name("SDFM_configZeroCrossComparator")
	.dwattr $C$DW$167, DW_AT_low_pc(||SDFM_configZeroCrossComparator||)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_linkage_name("SDFM_configZeroCrossComparator")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$167, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$167, DW_AT_decl_column(0x06)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 271,column 1,is_stmt,address ||SDFM_configZeroCrossComparator||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configZeroCrossComparator||
$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_name("base")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg0]

$C$DW$169	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$169, DW_AT_name("config1")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg12]

$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("config2")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_configZeroCrossComparator FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||SDFM_configZeroCrossComparator||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("base")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg20 -2]

$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("config1")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_breg20 -3]

$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("config2")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_breg20 -4]

$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("filter")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_breg20 -5]

$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("ratio")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -6]

$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("filterType")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |271| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |271| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |271| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 276,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |276| 
        ANDB      AL,#0x03              ; [CPU_ALU] |276| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |276| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 277,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |277| 
        LSR       AL,8                  ; [CPU_ALU] |277| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |277| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 278,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |278| 
        ANDB      AL,#0x30              ; [CPU_ALU] |278| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |278| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 283,column 5,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |283| 
        CMPB      AL,#31                ; [CPU_ALU] |283| 
        B         ||$C$L9||,LOS         ; [CPU_ALU] |283| 
        ; branchcc occurs ; [] |283| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 285,column 9,is_stmt,isa 0
        MOVB      *-SP[6],#31,UNC       ; [CPU_ALU] |285| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 291,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |291| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |291| 
        MOVZ      AR5,*-SP[7]           ; [CPU_ALU] |291| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("SDFM_setComparatorFilterType")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #||SDFM_setComparatorFilterType|| ; [CPU_ALU] |291| 
        ; call occurs [#||SDFM_setComparatorFilterType||] ; [] |291| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 296,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |296| 
        MOVZ      AR5,*-SP[6]           ; [CPU_ALU] |296| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |296| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("SDFM_setCompFilterOverSamplingRatio")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterOverSamplingRatio|| ; [CPU_ALU] |296| 
        ; call occurs [#||SDFM_setCompFilterOverSamplingRatio||] ; [] |296| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 301,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |301| 
        MOVZ      AR5,*-SP[4]           ; [CPU_ALU] |301| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |301| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("SDFM_setCompFilterZeroCrossThreshold")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #||SDFM_setCompFilterZeroCrossThreshold|| ; [CPU_ALU] |301| 
        ; call occurs [#||SDFM_setCompFilterZeroCrossThreshold||] ; [] |301| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 302,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$167, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text:SDFM_configDataFilterFIFO"
	.clink
	.global	||SDFM_configDataFilterFIFO||

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("SDFM_configDataFilterFIFO")
	.dwattr $C$DW$181, DW_AT_low_pc(||SDFM_configDataFilterFIFO||)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_linkage_name("SDFM_configDataFilterFIFO")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$181, DW_AT_decl_line(0x135)
	.dwattr $C$DW$181, DW_AT_decl_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 311,column 1,is_stmt,address ||SDFM_configDataFilterFIFO||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configDataFilterFIFO||
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("base")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg0]

$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("config1")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg12]

$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("config2")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SDFM_configDataFilterFIFO     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||SDFM_configDataFilterFIFO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("base")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_breg20 -2]

$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("config1")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_breg20 -3]

$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("config2")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_breg20 -4]

$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("filter")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_breg20 -5]

$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("ratio")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_breg20 -6]

$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("fifoLevel")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_breg20 -7]

$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("filterType")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |311| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |311| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |311| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 317,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |317| 
        ANDB      AL,#0x03              ; [CPU_ALU] |317| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |317| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 318,column 5,is_stmt,isa 0
        AND       AL,*-SP[4],#0x0f80    ; [CPU_ALU] |318| 
        LSR       AL,7                  ; [CPU_ALU] |318| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |318| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 319,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |319| 
        LSR       AL,8                  ; [CPU_ALU] |319| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |319| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 320,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |320| 
        ANDB      AL,#0x30              ; [CPU_ALU] |320| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |320| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 325,column 5,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |325| 
        CMPB      AL,#255               ; [CPU_ALU] |325| 
        B         ||$C$L10||,LOS        ; [CPU_ALU] |325| 
        ; branchcc occurs ; [] |325| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 327,column 9,is_stmt,isa 0
        MOVB      *-SP[6],#255,UNC      ; [CPU_ALU] |327| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 333,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |333| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |333| 
        MOVZ      AR5,*-SP[8]           ; [CPU_ALU] |333| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("SDFM_setFilterType")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #||SDFM_setFilterType|| ; [CPU_ALU] |333| 
        ; call occurs [#||SDFM_setFilterType||] ; [] |333| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 338,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |338| 
        MOVZ      AR5,*-SP[6]           ; [CPU_ALU] |338| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |338| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("SDFM_setFilterOverSamplingRatio")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #||SDFM_setFilterOverSamplingRatio|| ; [CPU_ALU] |338| 
        ; call occurs [#||SDFM_setFilterOverSamplingRatio||] ; [] |338| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 343,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |343| 
        ANDB      AL,#0x02              ; [CPU_ALU] |343| 
        CMPB      AL,#2                 ; [CPU_ALU] |343| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |343| 
        ; branchcc occurs ; [] |343| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 345,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |345| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |345| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("SDFM_enableFilter")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #||SDFM_enableFilter|| ; [CPU_ALU] |345| 
        ; call occurs [#||SDFM_enableFilter||] ; [] |345| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 349,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |349| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |349| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("SDFM_disableFilter")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #||SDFM_disableFilter|| ; [CPU_ALU] |349| 
        ; call occurs [#||SDFM_disableFilter||] ; [] |349| 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 355,column 5,is_stmt,isa 0
        AND       AL,*-SP[4],#0x0001    ; [CPU_ALU] |355| 
        MOVZ      AR5,AL                ; [CPU_ALU] |355| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |355| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |355| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("SDFM_setOutputDataFormat")
	.dwattr $C$DW$196, DW_AT_TI_call

        LCR       #||SDFM_setOutputDataFormat|| ; [CPU_ALU] |355| 
        ; call occurs [#||SDFM_setOutputDataFormat||] ; [] |355| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 361,column 5,is_stmt,isa 0
        TBIT      *-SP[4],#0            ; [CPU_ALU] |361| 
        B         ||$C$L13||,TC         ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 363,column 9,is_stmt,isa 0
        AND       AL,*-SP[4],#0x007c    ; [CPU_ALU] |363| 
        LSR       AL,2                  ; [CPU_ALU] |363| 
        MOVZ      AR4,*-SP[5]           ; [CPU_FPU] |363| 
        MOVZ      AR5,AL                ; [CPU_ALU] |363| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |363| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("SDFM_setDataShiftValue")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #||SDFM_setDataShiftValue|| ; [CPU_ALU] |363| 
        ; call occurs [#||SDFM_setDataShiftValue||] ; [] |363| 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 369,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |369| 
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |369| 
        MOVZ      AR5,*-SP[7]           ; [CPU_ALU] |369| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("SDFM_setFIFOInterruptLevel")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #||SDFM_setFIFOInterruptLevel|| ; [CPU_ALU] |369| 
        ; call occurs [#||SDFM_setFIFOInterruptLevel||] ; [] |369| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 370,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[5]           ; [CPU_ALU] |370| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |370| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("SDFM_enableFIFOBuffer")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #||SDFM_enableFIFOBuffer|| ; [CPU_ALU] |370| 
        ; call occurs [#||SDFM_enableFIFOBuffer||] ; [] |370| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 371,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x173)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text:SDFM_configCompEventLowFilter"
	.clink
	.global	||SDFM_configCompEventLowFilter||

$C$DW$201	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$201, DW_AT_name("SDFM_configCompEventLowFilter")
	.dwattr $C$DW$201, DW_AT_low_pc(||SDFM_configCompEventLowFilter||)
	.dwattr $C$DW$201, DW_AT_high_pc(0x00)
	.dwattr $C$DW$201, DW_AT_linkage_name("SDFM_configCompEventLowFilter")
	.dwattr $C$DW$201, DW_AT_external
	.dwattr $C$DW$201, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$201, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$201, DW_AT_decl_column(0x01)
	.dwattr $C$DW$201, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 381,column 1,is_stmt,address ||SDFM_configCompEventLowFilter||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configCompEventLowFilter||
$C$DW$202	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$202, DW_AT_name("base")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg0]

$C$DW$203	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$203, DW_AT_name("filterNumber")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg14]

$C$DW$204	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$204, DW_AT_name("config")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SDFM_configCompEventLowFilter FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||SDFM_configCompEventLowFilter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("base")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_breg20 -2]

$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("config")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_breg20 -4]

$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("address")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_breg20 -6]

$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("filterNumber")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[7],AR5           ; [CPU_ALU] |381| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |381| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |381| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 391,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[7] << 3      ; [CPU_ALU] |391| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |391| 
        ADDB      ACC,#97               ; [CPU_ALU] |391| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |391| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 397,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |397| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 398,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |398| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |398| 
        MOV       AH,*+XAR5[0]          ; [CPU_ALU] |398| 
        AND       AL,*+XAR4[0],#0xc00f  ; [CPU_ALU] |398| 
        MOVZ      AR7,AL                ; [CPU_ALU] |398| 
        ADDB      AH,#-1                ; [CPU_ALU] |398| 
        MOVL      XAR4,*-SP[4]          ; [CPU_FPU] |398| 
        MOV       ACC,AH << #4          ; [CPU_ALU] |398| 
        OR        AL,AR7                ; [CPU_ALU] |398| 
        MOVZ      AR6,AL                ; [CPU_ALU] |398| 
        MOV       ACC,*+XAR4[1] << #9   ; [CPU_ALU] |398| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |398| 
        OR        AL,AR6                ; [CPU_ALU] |398| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |398| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 405,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[7] << 3      ; [CPU_ALU] |405| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |405| 
        ADDB      ACC,#98               ; [CPU_ALU] |405| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |405| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 407,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[6]          ; [CPU_ALU] |407| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |407| 
        AND       AL,*+XAR5[0],#0xfc00  ; [CPU_ALU] |407| 
        OR        AL,*+XAR4[2]          ; [CPU_ALU] |407| 
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |407| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 410,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |410| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 411,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$201, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$201, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$201, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$201

	.sect	".text:SDFM_configCompEventHighFilter"
	.clink
	.global	||SDFM_configCompEventHighFilter||

$C$DW$210	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$210, DW_AT_name("SDFM_configCompEventHighFilter")
	.dwattr $C$DW$210, DW_AT_low_pc(||SDFM_configCompEventHighFilter||)
	.dwattr $C$DW$210, DW_AT_high_pc(0x00)
	.dwattr $C$DW$210, DW_AT_linkage_name("SDFM_configCompEventHighFilter")
	.dwattr $C$DW$210, DW_AT_external
	.dwattr $C$DW$210, DW_AT_decl_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$210, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$210, DW_AT_decl_column(0x01)
	.dwattr $C$DW$210, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 421,column 1,is_stmt,address ||SDFM_configCompEventHighFilter||,isa 0

	.dwfde $C$DW$CIE, ||SDFM_configCompEventHighFilter||
$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_name("base")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg0]

$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_name("filterNumber")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg14]

$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("config")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SDFM_configCompEventHighFilter FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||SDFM_configCompEventHighFilter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("base")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_breg20 -2]

$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("config")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_breg20 -4]

$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("address")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_breg20 -6]

$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("filterNumber")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[7],AR5           ; [CPU_ALU] |421| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |421| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |421| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 431,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[7] << 3      ; [CPU_ALU] |431| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |431| 
        ADDB      ACC,#99               ; [CPU_ALU] |431| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |431| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 437,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |437| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 438,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |438| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |438| 
        MOV       AH,*+XAR5[0]          ; [CPU_ALU] |438| 
        AND       AL,*+XAR4[0],#0xc00f  ; [CPU_ALU] |438| 
        MOVZ      AR7,AL                ; [CPU_ALU] |438| 
        ADDB      AH,#-1                ; [CPU_ALU] |438| 
        MOVL      XAR4,*-SP[4]          ; [CPU_FPU] |438| 
        MOV       ACC,AH << #4          ; [CPU_ALU] |438| 
        OR        AL,AR7                ; [CPU_ALU] |438| 
        MOVZ      AR6,AL                ; [CPU_ALU] |438| 
        MOV       ACC,*+XAR4[1] << #9   ; [CPU_ALU] |438| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |438| 
        OR        AL,AR6                ; [CPU_ALU] |438| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |438| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 445,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[7] << 3      ; [CPU_ALU] |445| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |445| 
        ADDB      ACC,#100              ; [CPU_ALU] |445| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |445| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 447,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[6]          ; [CPU_ALU] |447| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |447| 
        AND       AL,*+XAR5[0],#0xfc00  ; [CPU_ALU] |447| 
        OR        AL,*+XAR4[2]          ; [CPU_ALU] |447| 
        MOV       *+XAR5[0],AL          ; [CPU_ALU] |447| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 450,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |450| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sdfm.c",line 451,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$210, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sdfm.c")
	.dwattr $C$DW$210, DW_AT_TI_end_line(0x1c3)
	.dwattr $C$DW$210, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$210


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
$C$DW$219	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$219, DW_AT_name("SDFM_FILTER_1")
	.dwattr $C$DW$219, DW_AT_const_value(0x00)
	.dwattr $C$DW$219, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$219, DW_AT_decl_column(0x05)

$C$DW$220	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$220, DW_AT_name("SDFM_FILTER_2")
	.dwattr $C$DW$220, DW_AT_const_value(0x01)
	.dwattr $C$DW$220, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$220, DW_AT_decl_column(0x05)

$C$DW$221	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$221, DW_AT_name("SDFM_FILTER_3")
	.dwattr $C$DW$221, DW_AT_const_value(0x02)
	.dwattr $C$DW$221, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$221, DW_AT_decl_column(0x05)

$C$DW$222	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$222, DW_AT_name("SDFM_FILTER_4")
	.dwattr $C$DW$222, DW_AT_const_value(0x03)
	.dwattr $C$DW$222, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0xce)
	.dwattr $C$DW$222, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("SDFM_FilterNumber")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$223	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$223, DW_AT_name("SDFM_FILTER_SINC_FAST")
	.dwattr $C$DW$223, DW_AT_const_value(0x00)
	.dwattr $C$DW$223, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xda)
	.dwattr $C$DW$223, DW_AT_decl_column(0x05)

$C$DW$224	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$224, DW_AT_name("SDFM_FILTER_SINC_1")
	.dwattr $C$DW$224, DW_AT_const_value(0x10)
	.dwattr $C$DW$224, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$224, DW_AT_decl_column(0x05)

$C$DW$225	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$225, DW_AT_name("SDFM_FILTER_SINC_2")
	.dwattr $C$DW$225, DW_AT_const_value(0x20)
	.dwattr $C$DW$225, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xde)
	.dwattr $C$DW$225, DW_AT_decl_column(0x05)

$C$DW$226	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$226, DW_AT_name("SDFM_FILTER_SINC_3")
	.dwattr $C$DW$226, DW_AT_const_value(0x30)
	.dwattr $C$DW$226, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$226, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("SDFM_FilterType")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$227	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$227, DW_AT_name("SDFM_DATA_FORMAT_16_BIT")
	.dwattr $C$DW$227, DW_AT_const_value(0x00)
	.dwattr $C$DW$227, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$227, DW_AT_decl_column(0x04)

$C$DW$228	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$228, DW_AT_name("SDFM_DATA_FORMAT_32_BIT")
	.dwattr $C$DW$228, DW_AT_const_value(0x01)
	.dwattr $C$DW$228, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x100)
	.dwattr $C$DW$228, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("SDFM_OutputDataFormat")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_name("sampleWindow")
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0e)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$230, DW_AT_name("threshold")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0e)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$231, DW_AT_name("clkPrescale")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("SDFM_CompEventFilterConfig")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sdfm.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$232	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$232)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$30


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
	.dwattr $C$DW$T$19, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


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


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$32


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

