;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:15 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{1478FD85-1732-46C5-8458-E6012C9F42D7} 
	.sect	".text:FSI_sendTxFlush"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("FSI_sendTxFlush")
	.dwattr $C$DW$1, DW_AT_low_pc(||FSI_sendTxFlush||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("FSI_sendTxFlush")
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 415,column 1,is_stmt,address ||FSI_sendTxFlush||,isa 0

	.dwfde $C$DW$CIE, ||FSI_sendTxFlush||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: FSI_sendTxFlush               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||FSI_sendTxFlush||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("base")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |415| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 421,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |421| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 422,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |422| 
        OR        *+XAR4[0],#0xa502     ; [CPU_ALU] |422| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 425,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |425| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 426,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:FSI_stopTxFlush"
	.clink

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("FSI_stopTxFlush")
	.dwattr $C$DW$5, DW_AT_low_pc(||FSI_stopTxFlush||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("FSI_stopTxFlush")
	.dwattr $C$DW$5, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 443,column 1,is_stmt,address ||FSI_stopTxFlush||,isa 0

	.dwfde $C$DW$CIE, ||FSI_stopTxFlush||
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("base")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: FSI_stopTxFlush               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||FSI_stopTxFlush||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |443| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 449,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |449| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 450,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |450| 
        AND       AL,*+XAR4[0],#0xfffd  ; [CPU_ALU] |450| 
        OR        AL,#0xa500            ; [CPU_ALU] |450| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |450| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 454,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |454| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 455,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x1c7)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:FSI_selectTxPLLClock"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("FSI_selectTxPLLClock")
	.dwattr $C$DW$9, DW_AT_low_pc(||FSI_selectTxPLLClock||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("FSI_selectTxPLLClock")
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 468,column 1,is_stmt,address ||FSI_selectTxPLLClock||,isa 0

	.dwfde $C$DW$CIE, ||FSI_selectTxPLLClock||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: FSI_selectTxPLLClock          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||FSI_selectTxPLLClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("base")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |468| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 474,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |474| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 478,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |478| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |478| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |478| 
        OR        *+XAR4[0],#0x0100     ; [CPU_ALU] |478| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 480,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |480| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 481,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x1e1)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:FSI_enableTxClock"
	.clink

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("FSI_enableTxClock")
	.dwattr $C$DW$13, DW_AT_low_pc(||FSI_enableTxClock||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("FSI_enableTxClock")
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 496,column 1,is_stmt,address ||FSI_enableTxClock||,isa 0

	.dwfde $C$DW$CIE, ||FSI_enableTxClock||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("preScaleValue")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_enableTxClock             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_enableTxClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("base")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -2]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("preScaleValue")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |496| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |496| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 503,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |503| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 508,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |508| 
        AND       AL,*+XAR4[2],#0xfc03  ; [CPU_ALU] |508| 
        MOVZ      AR6,AL                ; [CPU_ALU] |508| 
        MOV       ACC,*-SP[3] << #2     ; [CPU_ALU] |508| 
        OR        AL,AR6                ; [CPU_ALU] |508| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |508| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 515,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |515| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |515| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |515| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |515| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 516,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |516| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 517,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x205)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:FSI_clearTxEvents"
	.clink

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("FSI_clearTxEvents")
	.dwattr $C$DW$19, DW_AT_low_pc(||FSI_clearTxEvents||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("FSI_clearTxEvents")
	.dwattr $C$DW$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x527)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 1320,column 1,is_stmt,address ||FSI_clearTxEvents||,isa 0

	.dwfde $C$DW$CIE, ||FSI_clearTxEvents||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("base")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("evtFlags")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_clearTxEvents             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_clearTxEvents||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -2]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("evtFlags")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1320| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1320| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 1326,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1326| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 1327,column 5,is_stmt,isa 0
        MOVB      ACC,#22               ; [CPU_ALU] |1327| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1327| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1327| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1327| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |1327| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1327| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 1328,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1328| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 1329,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x531)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:FSI_clearRxEvents"
	.clink

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("FSI_clearRxEvents")
	.dwattr $C$DW$25, DW_AT_low_pc(||FSI_clearRxEvents||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("FSI_clearRxEvents")
	.dwattr $C$DW$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x7f8)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 2041,column 1,is_stmt,address ||FSI_clearRxEvents||,isa 0

	.dwfde $C$DW$CIE, ||FSI_clearRxEvents||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("evtFlags")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_clearRxEvents             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_clearRxEvents||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("base")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -2]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("evtFlags")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2041| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2041| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 2047,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |2047| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 2048,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |2048| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2048| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2048| 
        AND       AL,*-SP[3],#0x7fff    ; [CPU_ALU] |2048| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |2048| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 2049,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |2049| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\fsi.h",line 2050,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x802)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:FSI_delayWait"
	.clink

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("FSI_delayWait")
	.dwattr $C$DW$31, DW_AT_low_pc(||FSI_delayWait||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("FSI_delayWait")
	.dwattr $C$DW$31, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x35)
	.dwattr $C$DW$31, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 54,column 1,is_stmt,address ||FSI_delayWait||,isa 0

	.dwfde $C$DW$CIE, ||FSI_delayWait||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("n")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: FSI_delayWait                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||FSI_delayWait||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("n")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -2]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("temp")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |54| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 60,column 9,is_stmt,isa 0
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |60| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 60,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |60| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |60| 
        ; branchcc occurs ; [] |60| 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 60,column 30,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |60| 
        SUBL      *-SP[4],ACC           ; [CPU_ALU] |60| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 60,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |60| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |60| 
        ; branchcc occurs ; [] |60| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 63,column 1,is_stmt,isa 0
||$C$L2||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:FSI_resetTxModule"
	.clink
	.global	||FSI_resetTxModule||

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("FSI_resetTxModule")
	.dwattr $C$DW$36, DW_AT_low_pc(||FSI_resetTxModule||)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_linkage_name("FSI_resetTxModule")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x47)
	.dwattr $C$DW$36, DW_AT_decl_column(0x01)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 72,column 1,is_stmt,address ||FSI_resetTxModule||,isa 0

	.dwfde $C$DW$CIE, ||FSI_resetTxModule||
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("base")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("submodule")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_resetTxModule             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_resetTxModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("base")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -2]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("submodule")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |72| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |72| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 78,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |78| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 79,column 5,is_stmt,isa 0
        B         ||$C$L6||,UNC         ; [CPU_ALU] |79| 
        ; branch occurs ; [] |79| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 82,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |82| 
        MOV       *+XAR4[0],#42241      ; [CPU_ALU] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 85,column 13,is_stmt,isa 0
        B         ||$C$L7||,UNC         ; [CPU_ALU] |85| 
        ; branch occurs ; [] |85| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 88,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |88| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |88| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |88| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |88| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 89,column 13,is_stmt,isa 0
        B         ||$C$L7||,UNC         ; [CPU_ALU] |89| 
        ; branch occurs ; [] |89| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 92,column 13,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |92| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |92| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |92| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |92| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 93,column 13,is_stmt,isa 0
        B         ||$C$L7||,UNC         ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 79,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |79| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        CMPB      AL,#1                 ; [CPU_ALU] |79| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        CMPB      AL,#2                 ; [CPU_ALU] |79| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 100,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 101,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text:FSI_clearTxModuleReset"
	.clink
	.global	||FSI_clearTxModuleReset||

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("FSI_clearTxModuleReset")
	.dwattr $C$DW$42, DW_AT_low_pc(||FSI_clearTxModuleReset||)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_linkage_name("FSI_clearTxModuleReset")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 110,column 1,is_stmt,address ||FSI_clearTxModuleReset||,isa 0

	.dwfde $C$DW$CIE, ||FSI_clearTxModuleReset||
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("base")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]

$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("submodule")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_clearTxModuleReset        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_clearTxModuleReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("base")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -2]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("submodule")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |110| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |110| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 116,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |116| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 117,column 5,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |117| 
        ; branch occurs ; [] |117| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 124,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |124| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |124| 
        OR        AL,#0xa500            ; [CPU_ALU] |124| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |124| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 128,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |128| 
        ; branch occurs ; [] |128| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 131,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |131| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |131| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |131| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |131| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 132,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |132| 
        ; branch occurs ; [] |132| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 135,column 13,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |135| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |135| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |135| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |135| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 136,column 13,is_stmt,isa 0
        B         ||$C$L12||,UNC        ; [CPU_ALU] |136| 
        ; branch occurs ; [] |136| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 117,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |117| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
        CMPB      AL,#1                 ; [CPU_ALU] |117| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
        CMPB      AL,#2                 ; [CPU_ALU] |117| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 143,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |143| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 144,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x90)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text:FSI_writeTxBuffer"
	.clink
	.global	||FSI_writeTxBuffer||

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("FSI_writeTxBuffer")
	.dwattr $C$DW$48, DW_AT_low_pc(||FSI_writeTxBuffer||)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_linkage_name("FSI_writeTxBuffer")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0x98)
	.dwattr $C$DW$48, DW_AT_decl_column(0x01)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 154,column 1,is_stmt,address ||FSI_writeTxBuffer||,isa 0

	.dwfde $C$DW$CIE, ||FSI_writeTxBuffer||
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("base")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("array")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg12]

$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("length")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg14]

$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("bufOffset")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -11]


;***************************************************************
;* FNAME: FSI_writeTxBuffer             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||FSI_writeTxBuffer||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("base")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -2]

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("array")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -4]

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("length")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -5]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("i")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -6]

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("j")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -7]

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("tempBufOffset")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[5],AR5           ; [CPU_ALU] |154| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |154| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |154| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 158,column 15,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |158| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 158,column 38,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |158| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |158| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 164,column 9,is_stmt,isa 0
        MOV       *-SP[7],#0            ; [CPU_ALU] |164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 164,column 17,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |164| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |164| 
        B         ||$C$L15||,LOS        ; [CPU_ALU] |164| 
        ; branchcc occurs ; [] |164| 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 170,column 9,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |170| 
        ADD       AL,*-SP[8]            ; [CPU_ALU] |170| 
        CMPB      AL,#15                ; [CPU_ALU] |170| 
        B         ||$C$L14||,LOS        ; [CPU_ALU] |170| 
        ; branchcc occurs ; [] |170| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 172,column 13,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |172| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 173,column 13,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |173| 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 179,column 9,is_stmt,isa 0
        MOVZ      AR4,*-SP[8]           ; [CPU_ALU] |179| 
        MOVZ      AR7,*-SP[7]           ; [CPU_ALU] |179| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |179| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |179| 
        ADDU      ACC,*-SP[6]           ; [CPU_ALU] |179| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |179| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |179| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |179| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |179| 
        MOVB      XAR0,#64              ; [CPU_ALU] |179| 
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |179| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 180,column 9,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 164,column 29,is_stmt,isa 0
        INC       *-SP[7]               ; [CPU_ALU] |164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 164,column 17,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |164| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |164| 
        B         ||$C$L13||,HI         ; [CPU_ALU] |164| 
        ; branchcc occurs ; [] |164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 182,column 1,is_stmt,isa 0
||$C$L15||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:FSI_resetRxModule"
	.clink
	.global	||FSI_resetRxModule||

$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("FSI_resetRxModule")
	.dwattr $C$DW$60, DW_AT_low_pc(||FSI_resetRxModule||)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_linkage_name("FSI_resetRxModule")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$60, DW_AT_decl_column(0x01)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 191,column 1,is_stmt,address ||FSI_resetRxModule||,isa 0

	.dwfde $C$DW$CIE, ||FSI_resetRxModule||
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("base")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]

$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("submodule")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_resetRxModule             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_resetRxModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("base")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -2]

$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("submodule")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |191| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |191| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 197,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |197| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 198,column 5,is_stmt,isa 0
        B         ||$C$L19||,UNC        ; [CPU_ALU] |198| 
        ; branch occurs ; [] |198| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 201,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |201| 
        OR        *+XAR4[0],#0xa501     ; [CPU_ALU] |201| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 204,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |204| 
        ; branch occurs ; [] |204| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 207,column 13,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |207| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |207| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |207| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 208,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |208| 
        ; branch occurs ; [] |208| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 211,column 13,is_stmt,isa 0
        MOVB      ACC,#22               ; [CPU_ALU] |211| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |211| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |211| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |211| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 212,column 13,is_stmt,isa 0
        B         ||$C$L20||,UNC        ; [CPU_ALU] |212| 
        ; branch occurs ; [] |212| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 198,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |198| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |198| 
        ; branchcc occurs ; [] |198| 
        CMPB      AL,#1                 ; [CPU_ALU] |198| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |198| 
        ; branchcc occurs ; [] |198| 
        CMPB      AL,#2                 ; [CPU_ALU] |198| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |198| 
        ; branchcc occurs ; [] |198| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 219,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |219| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 220,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$60, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0xdc)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

	.sect	".text:FSI_clearRxModuleReset"
	.clink
	.global	||FSI_clearRxModuleReset||

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("FSI_clearRxModuleReset")
	.dwattr $C$DW$66, DW_AT_low_pc(||FSI_clearRxModuleReset||)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_linkage_name("FSI_clearRxModuleReset")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$66, DW_AT_decl_column(0x01)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 229,column 1,is_stmt,address ||FSI_clearRxModuleReset||,isa 0

	.dwfde $C$DW$CIE, ||FSI_clearRxModuleReset||
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("base")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]

$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("submodule")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_clearRxModuleReset        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_clearRxModuleReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("base")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -2]

$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("submodule")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |229| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |229| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 235,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 236,column 5,is_stmt,isa 0
        B         ||$C$L24||,UNC        ; [CPU_ALU] |236| 
        ; branch occurs ; [] |236| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 239,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |239| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |239| 
        OR        AL,#0xa500            ; [CPU_ALU] |239| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |239| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 243,column 13,is_stmt,isa 0
        B         ||$C$L25||,UNC        ; [CPU_ALU] |243| 
        ; branch occurs ; [] |243| 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 246,column 13,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |246| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |246| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |246| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |246| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 247,column 13,is_stmt,isa 0
        B         ||$C$L25||,UNC        ; [CPU_ALU] |247| 
        ; branch occurs ; [] |247| 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 250,column 13,is_stmt,isa 0
        MOVB      ACC,#22               ; [CPU_ALU] |250| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |250| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |250| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |250| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 251,column 13,is_stmt,isa 0
        B         ||$C$L25||,UNC        ; [CPU_ALU] |251| 
        ; branch occurs ; [] |251| 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 236,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |236| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |236| 
        ; branchcc occurs ; [] |236| 
        CMPB      AL,#1                 ; [CPU_ALU] |236| 
        B         ||$C$L22||,EQ         ; [CPU_ALU] |236| 
        ; branchcc occurs ; [] |236| 
        CMPB      AL,#2                 ; [CPU_ALU] |236| 
        B         ||$C$L23||,EQ         ; [CPU_ALU] |236| 
        ; branchcc occurs ; [] |236| 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 258,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |258| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 259,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x103)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text:FSI_readRxBuffer"
	.clink
	.global	||FSI_readRxBuffer||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("FSI_readRxBuffer")
	.dwattr $C$DW$72, DW_AT_low_pc(||FSI_readRxBuffer||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("FSI_readRxBuffer")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$72, DW_AT_decl_column(0x01)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 269,column 1,is_stmt,address ||FSI_readRxBuffer||,isa 0

	.dwfde $C$DW$CIE, ||FSI_readRxBuffer||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("base")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("array")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg12]

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("length")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg14]

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("bufOffset")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -11]


;***************************************************************
;* FNAME: FSI_readRxBuffer              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||FSI_readRxBuffer||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("base")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -2]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("array")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg20 -4]

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("length")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -5]

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("i")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -6]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("j")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -7]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("tempBufOffset")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[5],AR5           ; [CPU_ALU] |269| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |269| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |269| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 273,column 16,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |273| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 273,column 39,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |273| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |273| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 279,column 9,is_stmt,isa 0
        MOV       *-SP[7],#0            ; [CPU_ALU] |279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 279,column 17,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |279| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |279| 
        B         ||$C$L28||,LOS        ; [CPU_ALU] |279| 
        ; branchcc occurs ; [] |279| 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 285,column 9,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |285| 
        ADD       AL,*-SP[8]            ; [CPU_ALU] |285| 
        CMPB      AL,#15                ; [CPU_ALU] |285| 
        B         ||$C$L27||,LOS        ; [CPU_ALU] |285| 
        ; branchcc occurs ; [] |285| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 287,column 13,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |287| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 288,column 13,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |288| 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 294,column 9,is_stmt,isa 0
        MOVZ      AR4,*-SP[8]           ; [CPU_ALU] |294| 
        MOVZ      AR7,*-SP[7]           ; [CPU_ALU] |294| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |294| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |294| 
        ADDU      ACC,*-SP[6]           ; [CPU_ALU] |294| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |294| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |294| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |294| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |294| 
        MOVB      XAR0,#64              ; [CPU_ALU] |294| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |294| 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |294| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 295,column 9,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 279,column 29,is_stmt,isa 0
        INC       *-SP[7]               ; [CPU_ALU] |279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 279,column 17,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |279| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |279| 
        B         ||$C$L26||,HI         ; [CPU_ALU] |279| 
        ; branchcc occurs ; [] |279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 297,column 1,is_stmt,isa 0
||$C$L28||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x129)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:FSI_configRxDelayLine"
	.clink
	.global	||FSI_configRxDelayLine||

$C$DW$84	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$84, DW_AT_name("FSI_configRxDelayLine")
	.dwattr $C$DW$84, DW_AT_low_pc(||FSI_configRxDelayLine||)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_linkage_name("FSI_configRxDelayLine")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x131)
	.dwattr $C$DW$84, DW_AT_decl_column(0x01)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 307,column 1,is_stmt,address ||FSI_configRxDelayLine||,isa 0

	.dwfde $C$DW$CIE, ||FSI_configRxDelayLine||
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_name("base")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg0]

$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("delayTapType")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg12]

$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("tapValue")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: FSI_configRxDelayLine         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||FSI_configRxDelayLine||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("base")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -2]

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("delayTapType")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -3]

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("tapValue")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |307| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |307| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |307| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 314,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |314| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 315,column 5,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |315| 
        ; branch occurs ; [] |315| 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 318,column 13,is_stmt,isa 0
        MOVB      ACC,#48               ; [CPU_ALU] |318| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |318| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |318| 
        AND       AL,*+XAR4[0],#0xffe0  ; [CPU_ALU] |318| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |318| 
        MOVZ      AR6,AL                ; [CPU_ALU] |318| 
        MOVB      ACC,#48               ; [CPU_ALU] |318| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |318| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |318| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |318| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 322,column 13,is_stmt,isa 0
        B         ||$C$L33||,UNC        ; [CPU_ALU] |322| 
        ; branch occurs ; [] |322| 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 325,column 13,is_stmt,isa 0
        MOVB      ACC,#48               ; [CPU_ALU] |325| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |325| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |325| 
        AND       AL,*+XAR4[0],#0xfc1f  ; [CPU_ALU] |325| 
        MOVZ      AR7,AL                ; [CPU_ALU] |325| 
        MOV       ACC,*-SP[4] << #5     ; [CPU_ALU] |325| 
        OR        AL,AR7                ; [CPU_ALU] |325| 
        MOVZ      AR6,AL                ; [CPU_ALU] |325| 
        MOVB      ACC,#48               ; [CPU_ALU] |325| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |325| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |325| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |325| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 329,column 13,is_stmt,isa 0
        B         ||$C$L33||,UNC        ; [CPU_ALU] |329| 
        ; branch occurs ; [] |329| 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 332,column 13,is_stmt,isa 0
        MOVB      ACC,#48               ; [CPU_ALU] |332| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |332| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |332| 
        AND       AL,*+XAR4[0],#0x83ff  ; [CPU_ALU] |332| 
        MOVZ      AR7,AL                ; [CPU_ALU] |332| 
        MOV       ACC,*-SP[4] << #10    ; [CPU_ALU] |332| 
        OR        AL,AR7                ; [CPU_ALU] |332| 
        MOVZ      AR6,AL                ; [CPU_ALU] |332| 
        MOVB      ACC,#48               ; [CPU_ALU] |332| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |332| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |332| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |332| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 336,column 13,is_stmt,isa 0
        B         ||$C$L33||,UNC        ; [CPU_ALU] |336| 
        ; branch occurs ; [] |336| 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 315,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |315| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |315| 
        ; branchcc occurs ; [] |315| 
        CMPB      AL,#1                 ; [CPU_ALU] |315| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |315| 
        ; branchcc occurs ; [] |315| 
        CMPB      AL,#2                 ; [CPU_ALU] |315| 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |315| 
        ; branchcc occurs ; [] |315| 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 345,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |345| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 346,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$84, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text:FSI_performTxInitialization"
	.clink
	.global	||FSI_performTxInitialization||

$C$DW$92	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$92, DW_AT_name("FSI_performTxInitialization")
	.dwattr $C$DW$92, DW_AT_low_pc(||FSI_performTxInitialization||)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_linkage_name("FSI_performTxInitialization")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x161)
	.dwattr $C$DW$92, DW_AT_decl_column(0x06)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 354,column 1,is_stmt,address ||FSI_performTxInitialization||,isa 0

	.dwfde $C$DW$CIE, ||FSI_performTxInitialization||
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_name("base")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg0]

$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("prescalar")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_performTxInitialization   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_performTxInitialization||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("base")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -2]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("prescalar")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |354| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |354| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 364,column 5,is_stmt,isa 0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("FSI_selectTxPLLClock")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||FSI_selectTxPLLClock|| ; [CPU_ALU] |364| 
        ; call occurs [#||FSI_selectTxPLLClock||] ; [] |364| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 370,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |370| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |370| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("FSI_resetTxModule")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||FSI_resetTxModule|| ; [CPU_ALU] |370| 
        ; call occurs [#||FSI_resetTxModule||] ; [] |370| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 371,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |371| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("FSI_delayWait")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||FSI_delayWait||    ; [CPU_ALU] |371| 
        ; call occurs [#||FSI_delayWait||] ; [] |371| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 372,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |372| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |372| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("FSI_clearTxModuleReset")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #||FSI_clearTxModuleReset|| ; [CPU_ALU] |372| 
        ; call occurs [#||FSI_clearTxModuleReset||] ; [] |372| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 373,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[3]           ; [CPU_ALU] |373| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |373| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("FSI_enableTxClock")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #||FSI_enableTxClock|| ; [CPU_ALU] |373| 
        ; call occurs [#||FSI_enableTxClock||] ; [] |373| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 378,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |378| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |378| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("FSI_resetTxModule")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #||FSI_resetTxModule|| ; [CPU_ALU] |378| 
        ; call occurs [#||FSI_resetTxModule||] ; [] |378| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 379,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[3]           ; [CPU_ALU] |379| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("FSI_delayWait")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #||FSI_delayWait||    ; [CPU_ALU] |379| 
        ; call occurs [#||FSI_delayWait||] ; [] |379| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 381,column 5,is_stmt,isa 0
        MOVB      XAR4,#15              ; [CPU_ALU] |381| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |381| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("FSI_clearTxEvents")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||FSI_clearTxEvents|| ; [CPU_ALU] |381| 
        ; call occurs [#||FSI_clearTxEvents||] ; [] |381| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 383,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |383| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |383| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("FSI_clearTxModuleReset")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #||FSI_clearTxModuleReset|| ; [CPU_ALU] |383| 
        ; call occurs [#||FSI_clearTxModuleReset||] ; [] |383| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 384,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$92, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x180)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text:FSI_performRxInitialization"
	.clink
	.global	||FSI_performRxInitialization||

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("FSI_performRxInitialization")
	.dwattr $C$DW$107, DW_AT_low_pc(||FSI_performRxInitialization||)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_linkage_name("FSI_performRxInitialization")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0x187)
	.dwattr $C$DW$107, DW_AT_decl_column(0x06)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 392,column 1,is_stmt,address ||FSI_performRxInitialization||,isa 0

	.dwfde $C$DW$CIE, ||FSI_performRxInitialization||
$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("base")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: FSI_performRxInitialization   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||FSI_performRxInitialization||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("base")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |392| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 398,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |398| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("FSI_resetRxModule")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #||FSI_resetRxModule|| ; [CPU_ALU] |398| 
        ; call occurs [#||FSI_resetRxModule||] ; [] |398| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 400,column 5,is_stmt,isa 0
        MOVL      XAR4,#32767           ; [CPU_ALU] |400| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |400| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("FSI_clearRxEvents")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #||FSI_clearRxEvents|| ; [CPU_ALU] |400| 
        ; call occurs [#||FSI_clearRxEvents||] ; [] |400| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 410,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |410| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |410| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("FSI_clearRxModuleReset")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #||FSI_clearRxModuleReset|| ; [CPU_ALU] |410| 
        ; call occurs [#||FSI_clearRxModuleReset||] ; [] |410| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 411,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text:FSI_executeTxFlushSequence"
	.clink
	.global	||FSI_executeTxFlushSequence||

$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("FSI_executeTxFlushSequence")
	.dwattr $C$DW$114, DW_AT_low_pc(||FSI_executeTxFlushSequence||)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_linkage_name("FSI_executeTxFlushSequence")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$114, DW_AT_decl_column(0x06)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 419,column 1,is_stmt,address ||FSI_executeTxFlushSequence||,isa 0

	.dwfde $C$DW$CIE, ||FSI_executeTxFlushSequence||
$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("base")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]

$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("prescalar")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: FSI_executeTxFlushSequence    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||FSI_executeTxFlushSequence||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("base")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -2]

$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("prescalar")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |419| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |419| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 426,column 5,is_stmt,isa 0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("FSI_sendTxFlush")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #||FSI_sendTxFlush||  ; [CPU_ALU] |426| 
        ; call occurs [#||FSI_sendTxFlush||] ; [] |426| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 430,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |430| 
        MOVU      ACC,AL                ; [CPU_ALU] |430| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("FSI_delayWait")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #||FSI_delayWait||    ; [CPU_ALU] |430| 
        ; call occurs [#||FSI_delayWait||] ; [] |430| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 432,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |432| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("FSI_stopTxFlush")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #||FSI_stopTxFlush||  ; [CPU_ALU] |432| 
        ; call occurs [#||FSI_stopTxFlush||] ; [] |432| 
	.dwpsn	file "../F2838x_driverlib/driverlib/fsi.c",line 433,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/fsi.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x1b1)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114


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
$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("FSI_TX_MASTER_CORE_RESET")
	.dwattr $C$DW$123, DW_AT_const_value(0x00)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("FSI_TX_CLOCK_RESET")
	.dwattr $C$DW$124, DW_AT_const_value(0x01)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("FSI_TX_PING_TIMEOUT_CNT_RESET")
	.dwattr $C$DW$125, DW_AT_const_value(0x02)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("FSI_TxSubmoduleInReset")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("FSI_RX_MASTER_CORE_RESET")
	.dwattr $C$DW$126, DW_AT_const_value(0x00)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x138)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("FSI_RX_FRAME_WD_CNT_RESET")
	.dwattr $C$DW$127, DW_AT_const_value(0x01)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x139)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

$C$DW$128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$128, DW_AT_name("FSI_RX_PING_WD_CNT_RESET")
	.dwattr $C$DW$128, DW_AT_const_value(0x02)
	.dwattr $C$DW$128, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("FSI_RxSubmoduleInReset")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$129, DW_AT_name("FSI_RX_DELAY_CLK")
	.dwattr $C$DW$129, DW_AT_const_value(0x00)
	.dwattr $C$DW$129, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x143)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)

$C$DW$130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$130, DW_AT_name("FSI_RX_DELAY_D0")
	.dwattr $C$DW$130, DW_AT_const_value(0x01)
	.dwattr $C$DW$130, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x144)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)

$C$DW$131	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$131, DW_AT_name("FSI_RX_DELAY_D1")
	.dwattr $C$DW$131, DW_AT_const_value(0x02)
	.dwattr $C$DW$131, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x145)
	.dwattr $C$DW$131, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x142)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("FSI_RxDelayTapType")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\fsi.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x146)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


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


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$30


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$40


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$132	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$30)

$C$DW$T$35	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$132)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$36


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


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x15)

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

