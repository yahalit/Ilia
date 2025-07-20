;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:16 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{6719057D-24EA-4230-B239-559CB05094C4} 
	.sect	".text:McBSP_disableLoopback"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("McBSP_disableLoopback")
	.dwattr $C$DW$1, DW_AT_low_pc(||McBSP_disableLoopback||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("McBSP_disableLoopback")
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x298)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 665,column 1,is_stmt,address ||McBSP_disableLoopback||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableLoopback||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_disableLoopback         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableLoopback||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("base")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |665| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 674,column 5,is_stmt,isa 0
        MOVB      ACC,#5                ; [CPU_ALU] |674| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |674| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |674| 
        AND       *+XAR4[0],#0x7fff     ; [CPU_ALU] |674| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 675,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x2a3)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:McBSP_enableLoopback"
	.clink

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("McBSP_enableLoopback")
	.dwattr $C$DW$5, DW_AT_low_pc(||McBSP_enableLoopback||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("McBSP_enableLoopback")
	.dwattr $C$DW$5, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x2b1)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 690,column 1,is_stmt,address ||McBSP_enableLoopback||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableLoopback||
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("base")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableLoopback          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableLoopback||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |690| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 699,column 5,is_stmt,isa 0
        MOVB      ACC,#5                ; [CPU_ALU] |699| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |699| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |699| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |699| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 700,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x2bc)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:McBSP_setRxSignExtension"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("McBSP_setRxSignExtension")
	.dwattr $C$DW$9, DW_AT_low_pc(||McBSP_setRxSignExtension||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("McBSP_setRxSignExtension")
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x2cf)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 720,column 1,is_stmt,address ||McBSP_setRxSignExtension||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxSignExtension||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("mode")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxSignExtension      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxSignExtension||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("base")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -2]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("mode")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |720| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |720| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 729,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |729| 
        AND       AL,*+XAR4[5],#0x9fff  ; [CPU_ALU] |729| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |729| 
        MOV       *+XAR4[5],AL          ; [CPU_ALU] |729| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 731,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x2db)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:McBSP_setClockStopMode"
	.clink

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("McBSP_setClockStopMode")
	.dwattr $C$DW$15, DW_AT_low_pc(||McBSP_setClockStopMode||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("McBSP_setClockStopMode")
	.dwattr $C$DW$15, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 753,column 1,is_stmt,address ||McBSP_setClockStopMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setClockStopMode||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("base")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("mode")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setClockStopMode        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setClockStopMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -2]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("mode")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |753| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |753| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 762,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |762| 
        AND       AL,*+XAR4[5],#0xe7ff  ; [CPU_ALU] |762| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |762| 
        MOV       *+XAR4[5],AL          ; [CPU_ALU] |762| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 764,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x2fc)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:McBSP_disableDxPinDelay"
	.clink

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("McBSP_disableDxPinDelay")
	.dwattr $C$DW$21, DW_AT_low_pc(||McBSP_disableDxPinDelay||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("McBSP_disableDxPinDelay")
	.dwattr $C$DW$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x30a)
	.dwattr $C$DW$21, DW_AT_decl_column(0x01)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 779,column 1,is_stmt,address ||McBSP_disableDxPinDelay||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableDxPinDelay||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_disableDxPinDelay       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableDxPinDelay||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |779| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 788,column 5,is_stmt,isa 0
        MOVB      ACC,#5                ; [CPU_ALU] |788| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |788| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |788| 
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |788| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 789,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x315)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:McBSP_enableDxPinDelay"
	.clink

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("McBSP_enableDxPinDelay")
	.dwattr $C$DW$25, DW_AT_low_pc(||McBSP_enableDxPinDelay||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("McBSP_enableDxPinDelay")
	.dwattr $C$DW$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x324)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 805,column 1,is_stmt,address ||McBSP_enableDxPinDelay||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableDxPinDelay||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableDxPinDelay        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableDxPinDelay||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("base")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |805| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 814,column 5,is_stmt,isa 0
        MOVB      ACC,#5                ; [CPU_ALU] |814| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |814| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |814| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |814| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 815,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x32f)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:McBSP_setRxInterruptSource"
	.clink

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("McBSP_setRxInterruptSource")
	.dwattr $C$DW$29, DW_AT_low_pc(||McBSP_setRxInterruptSource||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("McBSP_setRxInterruptSource")
	.dwattr $C$DW$29, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x343)
	.dwattr $C$DW$29, DW_AT_decl_column(0x01)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 837,column 1,is_stmt,address ||McBSP_setRxInterruptSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxInterruptSource||
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("base")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("interruptSource")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxInterruptSource    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxInterruptSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -2]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("interruptSource")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |837| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |837| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 846,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |846| 
        AND       AL,*+XAR4[5],#0xffcf  ; [CPU_ALU] |846| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |846| 
        MOV       *+XAR4[5],AL          ; [CPU_ALU] |846| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 849,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x351)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:McBSP_isRxReady"
	.clink

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("McBSP_isRxReady")
	.dwattr $C$DW$35, DW_AT_low_pc(||McBSP_isRxReady||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("McBSP_isRxReady")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x39a)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 923,column 1,is_stmt,address ||McBSP_isRxReady||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_isRxReady||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_isRxReady               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_isRxReady||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("base")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |923| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 932,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |932| 
        MOVB      AL,#0                 ; [CPU_ALU] |932| 
        MOVB      XAR6,#0               ; [CPU_ALU] |932| 
        MOV       AH,*+XAR4[5]          ; [CPU_ALU] |932| 
        ANDB      AH,#0x02              ; [CPU_ALU] |932| 
        CMPB      AH,#2                 ; [CPU_ALU] |932| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |932| 
        ; branchcc occurs ; [] |932| 
        MOVB      AL,#1                 ; [CPU_ALU] |932| 
||$C$L1||:    
        CMPB      AL,#0                 ; [CPU_ALU] |932| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |932| 
        ; branchcc occurs ; [] |932| 
        MOVB      XAR6,#1               ; [CPU_ALU] |932| 
||$C$L2||:    
        MOV       AL,AR6                ; [CPU_ALU] |932| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 934,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x3a6)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:McBSP_setTxInterruptSource"
	.clink

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("McBSP_setTxInterruptSource")
	.dwattr $C$DW$39, DW_AT_low_pc(||McBSP_setTxInterruptSource||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("McBSP_setTxInterruptSource")
	.dwattr $C$DW$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x474)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1142,column 1,is_stmt,address ||McBSP_setTxInterruptSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxInterruptSource||
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("base")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("interruptSource")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxInterruptSource    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxInterruptSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("base")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -2]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("interruptSource")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1142| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1142| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1151,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1151| 
        AND       AL,*+XAR4[4],#0xffcf  ; [CPU_ALU] |1151| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1151| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |1151| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1154,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x482)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:McBSP_isTxReady"
	.clink

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("McBSP_isTxReady")
	.dwattr $C$DW$45, DW_AT_low_pc(||McBSP_isTxReady||)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_linkage_name("McBSP_isTxReady")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x4ca)
	.dwattr $C$DW$45, DW_AT_decl_column(0x01)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1227,column 1,is_stmt,address ||McBSP_isTxReady||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_isTxReady||
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("base")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_isTxReady               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_isTxReady||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("base")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1227| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1236,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1236| 
        MOVB      AL,#0                 ; [CPU_ALU] |1236| 
        MOVB      XAR6,#0               ; [CPU_ALU] |1236| 
        MOV       AH,*+XAR4[4]          ; [CPU_ALU] |1236| 
        ANDB      AH,#0x02              ; [CPU_ALU] |1236| 
        CMPB      AH,#2                 ; [CPU_ALU] |1236| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |1236| 
        ; branchcc occurs ; [] |1236| 
        MOVB      AL,#1                 ; [CPU_ALU] |1236| 
||$C$L3||:    
        CMPB      AL,#0                 ; [CPU_ALU] |1236| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |1236| 
        ; branchcc occurs ; [] |1236| 
        MOVB      XAR6,#1               ; [CPU_ALU] |1236| 
||$C$L4||:    
        MOV       AL,AR6                ; [CPU_ALU] |1236| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1238,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x4d6)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text:McBSP_disableTwoPhaseRx"
	.clink

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("McBSP_disableTwoPhaseRx")
	.dwattr $C$DW$49, DW_AT_low_pc(||McBSP_disableTwoPhaseRx||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("McBSP_disableTwoPhaseRx")
	.dwattr $C$DW$49, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x516)
	.dwattr $C$DW$49, DW_AT_decl_column(0x01)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1303,column 1,is_stmt,address ||McBSP_disableTwoPhaseRx||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableTwoPhaseRx||
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("base")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_disableTwoPhaseRx       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableTwoPhaseRx||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("base")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1303| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1312,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |1312| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1312| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1312| 
        AND       *+XAR4[0],#0x7fff     ; [CPU_ALU] |1312| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1313,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x521)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:McBSP_enableTwoPhaseRx"
	.clink

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("McBSP_enableTwoPhaseRx")
	.dwattr $C$DW$53, DW_AT_low_pc(||McBSP_enableTwoPhaseRx||)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_linkage_name("McBSP_enableTwoPhaseRx")
	.dwattr $C$DW$53, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x52f)
	.dwattr $C$DW$53, DW_AT_decl_column(0x01)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1328,column 1,is_stmt,address ||McBSP_enableTwoPhaseRx||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableTwoPhaseRx||
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("base")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableTwoPhaseRx        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableTwoPhaseRx||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("base")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1328| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1337,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |1337| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1337| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1337| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |1337| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1338,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x53a)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text:McBSP_setRxCompandingMode"
	.clink

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("McBSP_setRxCompandingMode")
	.dwattr $C$DW$57, DW_AT_low_pc(||McBSP_setRxCompandingMode||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("McBSP_setRxCompandingMode")
	.dwattr $C$DW$57, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x550)
	.dwattr $C$DW$57, DW_AT_decl_column(0x01)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1362,column 1,is_stmt,address ||McBSP_setRxCompandingMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxCompandingMode||
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("base")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg0]

$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("compandingMode")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxCompandingMode     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxCompandingMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("base")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -2]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("compandingMode")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1362| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1362| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1371,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1371| 
        AND       AL,*+XAR4[6],#0xffe7  ; [CPU_ALU] |1371| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1371| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |1371| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1374,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x55e)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:McBSP_enableRxFrameSyncErrorDetection"
	.clink

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("McBSP_enableRxFrameSyncErrorDetection")
	.dwattr $C$DW$63, DW_AT_low_pc(||McBSP_enableRxFrameSyncErrorDetection||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("McBSP_enableRxFrameSyncErrorDetection")
	.dwattr $C$DW$63, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x588)
	.dwattr $C$DW$63, DW_AT_decl_column(0x01)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1417,column 1,is_stmt,address ||McBSP_enableRxFrameSyncErrorDetection||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableRxFrameSyncErrorDetection||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("base")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableRxFrameSyncErrorDetection FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableRxFrameSyncErrorDetection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("base")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1417| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1426,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |1426| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1426| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1426| 
        AND       *+XAR4[0],#0xfffb     ; [CPU_ALU] |1426| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1427,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x593)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:McBSP_setRxDataDelayBits"
	.clink

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("McBSP_setRxDataDelayBits")
	.dwattr $C$DW$67, DW_AT_low_pc(||McBSP_setRxDataDelayBits||)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_linkage_name("McBSP_setRxDataDelayBits")
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x5a5)
	.dwattr $C$DW$67, DW_AT_decl_column(0x01)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1446,column 1,is_stmt,address ||McBSP_setRxDataDelayBits||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxDataDelayBits||
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("base")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg0]

$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("delayBits")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxDataDelayBits      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxDataDelayBits||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("base")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg20 -2]

$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("delayBits")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1446| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1446| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1455,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1455| 
        AND       AL,*+XAR4[6],#0xfffc  ; [CPU_ALU] |1455| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1455| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |1455| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1458,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x5b2)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text:McBSP_disableTwoPhaseTx"
	.clink

$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("McBSP_disableTwoPhaseTx")
	.dwattr $C$DW$73, DW_AT_low_pc(||McBSP_disableTwoPhaseTx||)
	.dwattr $C$DW$73, DW_AT_high_pc(0x00)
	.dwattr $C$DW$73, DW_AT_linkage_name("McBSP_disableTwoPhaseTx")
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x5c0)
	.dwattr $C$DW$73, DW_AT_decl_column(0x01)
	.dwattr $C$DW$73, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1473,column 1,is_stmt,address ||McBSP_disableTwoPhaseTx||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableTwoPhaseTx||
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("base")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_disableTwoPhaseTx       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableTwoPhaseTx||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("base")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1473| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1482,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1482| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1482| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1482| 
        AND       *+XAR4[0],#0x7fff     ; [CPU_ALU] |1482| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1483,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$73, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x5cb)
	.dwattr $C$DW$73, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$73

	.sect	".text:McBSP_enableTwoPhaseTx"
	.clink

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("McBSP_enableTwoPhaseTx")
	.dwattr $C$DW$77, DW_AT_low_pc(||McBSP_enableTwoPhaseTx||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("McBSP_enableTwoPhaseTx")
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x5d9)
	.dwattr $C$DW$77, DW_AT_decl_column(0x01)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1498,column 1,is_stmt,address ||McBSP_enableTwoPhaseTx||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableTwoPhaseTx||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("base")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableTwoPhaseTx        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableTwoPhaseTx||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("base")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1498| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1507,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1507| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1507| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1507| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |1507| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1508,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x5e4)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:McBSP_setTxCompandingMode"
	.clink

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("McBSP_setTxCompandingMode")
	.dwattr $C$DW$81, DW_AT_low_pc(||McBSP_setTxCompandingMode||)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_linkage_name("McBSP_setTxCompandingMode")
	.dwattr $C$DW$81, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x5fa)
	.dwattr $C$DW$81, DW_AT_decl_column(0x01)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1532,column 1,is_stmt,address ||McBSP_setTxCompandingMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxCompandingMode||
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("base")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]

$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("compandingMode")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxCompandingMode     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxCompandingMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("base")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -2]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("compandingMode")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1532| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1532| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1541,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1541| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1541| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1541| 
        AND       AL,*+XAR4[0],#0xffe7  ; [CPU_ALU] |1541| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1541| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1541| 
        MOVB      ACC,#8                ; [CPU_ALU] |1541| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1541| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1541| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1541| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1544,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x608)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text:McBSP_disableTxFrameSyncErrorDetection"
	.clink

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("McBSP_disableTxFrameSyncErrorDetection")
	.dwattr $C$DW$87, DW_AT_low_pc(||McBSP_disableTxFrameSyncErrorDetection||)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_linkage_name("McBSP_disableTxFrameSyncErrorDetection")
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x617)
	.dwattr $C$DW$87, DW_AT_decl_column(0x01)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1560,column 1,is_stmt,address ||McBSP_disableTxFrameSyncErrorDetection||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableTxFrameSyncErrorDetection||
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("base")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_disableTxFrameSyncErrorDetection FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableTxFrameSyncErrorDetection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("base")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1560| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1569,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1569| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1569| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1569| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |1569| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1570,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x622)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:McBSP_enableTxFrameSyncErrorDetection"
	.clink

$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("McBSP_enableTxFrameSyncErrorDetection")
	.dwattr $C$DW$91, DW_AT_low_pc(||McBSP_enableTxFrameSyncErrorDetection||)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_linkage_name("McBSP_enableTxFrameSyncErrorDetection")
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x631)
	.dwattr $C$DW$91, DW_AT_decl_column(0x01)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1586,column 1,is_stmt,address ||McBSP_enableTxFrameSyncErrorDetection||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableTxFrameSyncErrorDetection||
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("base")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableTxFrameSyncErrorDetection FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableTxFrameSyncErrorDetection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("base")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1586| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1595,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1595| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1595| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1595| 
        AND       *+XAR4[0],#0xfffb     ; [CPU_ALU] |1595| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1596,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$91, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x63c)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text:McBSP_setTxDataDelayBits"
	.clink

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("McBSP_setTxDataDelayBits")
	.dwattr $C$DW$95, DW_AT_low_pc(||McBSP_setTxDataDelayBits||)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_linkage_name("McBSP_setTxDataDelayBits")
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x64e)
	.dwattr $C$DW$95, DW_AT_decl_column(0x01)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1615,column 1,is_stmt,address ||McBSP_setTxDataDelayBits||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxDataDelayBits||
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("base")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg0]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("delayBits")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxDataDelayBits      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxDataDelayBits||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("base")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg20 -2]

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("delayBits")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1615| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1615| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1624,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1624| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1624| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1624| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1624| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1624| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1624| 
        MOVB      ACC,#8                ; [CPU_ALU] |1624| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1624| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1624| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1624| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1627,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x65b)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text:McBSP_setFrameSyncPulsePeriod"
	.clink

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("McBSP_setFrameSyncPulsePeriod")
	.dwattr $C$DW$101, DW_AT_low_pc(||McBSP_setFrameSyncPulsePeriod||)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_linkage_name("McBSP_setFrameSyncPulsePeriod")
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x66d)
	.dwattr $C$DW$101, DW_AT_decl_column(0x01)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1646,column 1,is_stmt,address ||McBSP_setFrameSyncPulsePeriod||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setFrameSyncPulsePeriod||
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("base")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]

$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_name("frameClockDivider")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setFrameSyncPulsePeriod FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setFrameSyncPulsePeriod||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("base")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg20 -2]

$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("frameClockDivider")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1646| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1646| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1656,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1656| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1656| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1656| 
        AND       AL,*+XAR4[0],#0xf000  ; [CPU_ALU] |1656| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1656| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1656| 
        MOVB      ACC,#10               ; [CPU_ALU] |1656| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1656| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1656| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1656| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1658,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x67a)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text:McBSP_setFrameSyncPulseWidthDivider"
	.clink

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("McBSP_setFrameSyncPulseWidthDivider")
	.dwattr $C$DW$107, DW_AT_low_pc(||McBSP_setFrameSyncPulseWidthDivider||)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_linkage_name("McBSP_setFrameSyncPulseWidthDivider")
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x68c)
	.dwattr $C$DW$107, DW_AT_decl_column(0x01)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1677,column 1,is_stmt,address ||McBSP_setFrameSyncPulseWidthDivider||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setFrameSyncPulseWidthDivider||
$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("base")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg0]

$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("pulseWidthDivider")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setFrameSyncPulseWidthDivider FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setFrameSyncPulseWidthDivider||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("base")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -2]

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("pulseWidthDivider")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1677| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1677| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1687,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |1687| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1687| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1687| 
        MOVZ      AR7,*-SP[3]           ; [CPU_ALU] |1687| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1687| 
        MOVB      AL.MSB,AR7            ; [CPU_ALU] |1687| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1687| 
        MOVB      ACC,#11               ; [CPU_ALU] |1687| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1687| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1687| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1687| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1690,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x69a)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text:McBSP_setSRGDataClockDivider"
	.clink

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("McBSP_setSRGDataClockDivider")
	.dwattr $C$DW$113, DW_AT_low_pc(||McBSP_setSRGDataClockDivider||)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_linkage_name("McBSP_setSRGDataClockDivider")
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x6ac)
	.dwattr $C$DW$113, DW_AT_decl_column(0x01)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1709,column 1,is_stmt,address ||McBSP_setSRGDataClockDivider||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setSRGDataClockDivider||
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("base")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("dataClockDivider")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setSRGDataClockDivider  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setSRGDataClockDivider||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("base")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -2]

$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("dataClockDivider")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1709| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1709| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1719,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |1719| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1719| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1719| 
        AND       AL,*+XAR4[0],#0xff00  ; [CPU_ALU] |1719| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1719| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1719| 
        MOVB      ACC,#11               ; [CPU_ALU] |1719| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1719| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1719| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1719| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1722,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x6ba)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text:McBSP_disableSRGSyncFSR"
	.clink

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("McBSP_disableSRGSyncFSR")
	.dwattr $C$DW$119, DW_AT_low_pc(||McBSP_disableSRGSyncFSR||)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_linkage_name("McBSP_disableSRGSyncFSR")
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x6c9)
	.dwattr $C$DW$119, DW_AT_decl_column(0x01)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1738,column 1,is_stmt,address ||McBSP_disableSRGSyncFSR||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableSRGSyncFSR||
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("base")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_disableSRGSyncFSR       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableSRGSyncFSR||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("base")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1738| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1747,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1747| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1747| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1747| 
        AND       *+XAR4[0],#0x7fff     ; [CPU_ALU] |1747| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1748,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x6d4)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text:McBSP_enableSRGSyncFSR"
	.clink

$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("McBSP_enableSRGSyncFSR")
	.dwattr $C$DW$123, DW_AT_low_pc(||McBSP_enableSRGSyncFSR||)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_linkage_name("McBSP_enableSRGSyncFSR")
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x6e3)
	.dwattr $C$DW$123, DW_AT_decl_column(0x01)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1764,column 1,is_stmt,address ||McBSP_enableSRGSyncFSR||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableSRGSyncFSR||
$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("base")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_enableSRGSyncFSR        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableSRGSyncFSR||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("base")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1764| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1773,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1773| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1773| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1773| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |1773| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1774,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x6ee)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text:McBSP_setRxSRGClockSource"
	.clink

$C$DW$127	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$127, DW_AT_name("McBSP_setRxSRGClockSource")
	.dwattr $C$DW$127, DW_AT_low_pc(||McBSP_setRxSRGClockSource||)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_linkage_name("McBSP_setRxSRGClockSource")
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x701)
	.dwattr $C$DW$127, DW_AT_decl_column(0x01)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1795,column 1,is_stmt,address ||McBSP_setRxSRGClockSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxSRGClockSource||
$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("base")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg0]

$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("srgClockSource")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxSRGClockSource     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxSRGClockSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("base")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_breg20 -2]

$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("srgClockSource")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1795| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1795| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1804,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1804| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1804| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1804| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1804| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1804| 
        LSL       AL,13                 ; [CPU_ALU] |1804| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1804| 
        AND       AH,*+XAR4[0],#0xdfff  ; [CPU_ALU] |1804| 
        OR        AR6,AH                ; [CPU_ALU] |1804| 
        MOVB      ACC,#10               ; [CPU_ALU] |1804| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1804| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1804| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1804| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1811,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |1811| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1811| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1811| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1811| 
        LSR       AL,1                  ; [CPU_ALU] |1811| 
        LSL       AL,7                  ; [CPU_ALU] |1811| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1811| 
        AND       AH,*+XAR4[0],#0xff7f  ; [CPU_ALU] |1811| 
        OR        AR6,AH                ; [CPU_ALU] |1811| 
        MOVB      ACC,#18               ; [CPU_ALU] |1811| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1811| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1811| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1811| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1814,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$127, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x716)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text:McBSP_setTxSRGClockSource"
	.clink

$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("McBSP_setTxSRGClockSource")
	.dwattr $C$DW$133, DW_AT_low_pc(||McBSP_setTxSRGClockSource||)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_linkage_name("McBSP_setTxSRGClockSource")
	.dwattr $C$DW$133, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x729)
	.dwattr $C$DW$133, DW_AT_decl_column(0x01)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1835,column 1,is_stmt,address ||McBSP_setTxSRGClockSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxSRGClockSource||
$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("base")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg0]

$C$DW$135	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$135, DW_AT_name("srgClockSource")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxSRGClockSource     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxSRGClockSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("base")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_breg20 -2]

$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("srgClockSource")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1835| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1835| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1844,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1844| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1844| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1844| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1844| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1844| 
        LSL       AL,13                 ; [CPU_ALU] |1844| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1844| 
        AND       AH,*+XAR4[0],#0xdfff  ; [CPU_ALU] |1844| 
        OR        AR6,AH                ; [CPU_ALU] |1844| 
        MOVB      ACC,#10               ; [CPU_ALU] |1844| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1844| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1844| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1844| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1850,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |1850| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1850| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1850| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1850| 
        LSR       AL,1                  ; [CPU_ALU] |1850| 
        LSL       AL,7                  ; [CPU_ALU] |1850| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1850| 
        AND       AH,*+XAR4[0],#0xff7f  ; [CPU_ALU] |1850| 
        OR        AR6,AH                ; [CPU_ALU] |1850| 
        MOVB      ACC,#18               ; [CPU_ALU] |1850| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1850| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1850| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1850| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1853,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$133, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x73d)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text:McBSP_setTxInternalFrameSyncSource"
	.clink

$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("McBSP_setTxInternalFrameSyncSource")
	.dwattr $C$DW$139, DW_AT_low_pc(||McBSP_setTxInternalFrameSyncSource||)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_linkage_name("McBSP_setTxInternalFrameSyncSource")
	.dwattr $C$DW$139, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x758)
	.dwattr $C$DW$139, DW_AT_decl_column(0x01)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1882,column 1,is_stmt,address ||McBSP_setTxInternalFrameSyncSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxInternalFrameSyncSource||
$C$DW$140	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$140, DW_AT_name("base")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg0]

$C$DW$141	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$141, DW_AT_name("syncMode")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxInternalFrameSyncSource FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxInternalFrameSyncSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("base")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_breg20 -2]

$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("syncMode")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1882| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1882| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1891,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1891| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1891| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1891| 
        AND       AL,*+XAR4[0],#0xefff  ; [CPU_ALU] |1891| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1891| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1891| 
        MOVB      ACC,#10               ; [CPU_ALU] |1891| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1891| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1891| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1891| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1893,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$139, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x765)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text:McBSP_setRxMultichannelPartition"
	.clink

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("McBSP_setRxMultichannelPartition")
	.dwattr $C$DW$145, DW_AT_low_pc(||McBSP_setRxMultichannelPartition||)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_linkage_name("McBSP_setRxMultichannelPartition")
	.dwattr $C$DW$145, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x776)
	.dwattr $C$DW$145, DW_AT_decl_column(0x01)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1912,column 1,is_stmt,address ||McBSP_setRxMultichannelPartition||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxMultichannelPartition||
$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("base")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg0]

$C$DW$147	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$147, DW_AT_name("partition")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxMultichannelPartition FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxMultichannelPartition||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("base")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg20 -2]

$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("partition")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1912| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1912| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1921,column 5,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |1921| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1921| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1921| 
        AND       AL,*+XAR4[0],#0xfdff  ; [CPU_ALU] |1921| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |1921| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1921| 
        MOVB      ACC,#13               ; [CPU_ALU] |1921| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1921| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1921| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1921| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1923,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0x783)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text:McBSP_setRxTwoPartitionBlock"
	.clink

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("McBSP_setRxTwoPartitionBlock")
	.dwattr $C$DW$151, DW_AT_low_pc(||McBSP_setRxTwoPartitionBlock||)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_linkage_name("McBSP_setRxTwoPartitionBlock")
	.dwattr $C$DW$151, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x799)
	.dwattr $C$DW$151, DW_AT_decl_column(0x01)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1946,column 1,is_stmt,address ||McBSP_setRxTwoPartitionBlock||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxTwoPartitionBlock||
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("base")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg0]

$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("block")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxTwoPartitionBlock  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxTwoPartitionBlock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("base")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg20 -2]

$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("block")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1946| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1946| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1955,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1955| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |1955| 
        ; branchcc occurs ; [] |1955| 
        CMPB      AL,#2                 ; [CPU_ALU] |1955| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |1955| 
        ; branchcc occurs ; [] |1955| 
        CMPB      AL,#4                 ; [CPU_ALU] |1955| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |1955| 
        ; branchcc occurs ; [] |1955| 
        CMPB      AL,#6                 ; [CPU_ALU] |1955| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |1955| 
        ; branchcc occurs ; [] |1955| 
||$C$L5||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1963,column 9,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |1963| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1963| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1963| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1963| 
        LSR       AL,1                  ; [CPU_ALU] |1963| 
        LSL       AL,5                  ; [CPU_ALU] |1963| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1963| 
        AND       AH,*+XAR4[0],#0xff9f  ; [CPU_ALU] |1963| 
        OR        AR6,AH                ; [CPU_ALU] |1963| 
        MOVB      ACC,#13               ; [CPU_ALU] |1963| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1963| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1963| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1963| 
        B         ||$C$L7||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L6||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1972,column 9,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |1972| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1972| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1972| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1972| 
        LSR       AL,1                  ; [CPU_ALU] |1972| 
        LSL       AL,7                  ; [CPU_ALU] |1972| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1972| 
        AND       AH,*+XAR4[0],#0xfe7f  ; [CPU_ALU] |1972| 
        OR        AR6,AH                ; [CPU_ALU] |1972| 
        MOVB      ACC,#13               ; [CPU_ALU] |1972| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1972| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1972| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1972| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 1976,column 1,is_stmt,isa 0
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x7b8)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text:McBSP_setRxChannelMode"
	.clink

$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("McBSP_setRxChannelMode")
	.dwattr $C$DW$157, DW_AT_low_pc(||McBSP_setRxChannelMode||)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_linkage_name("McBSP_setRxChannelMode")
	.dwattr $C$DW$157, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x7e8)
	.dwattr $C$DW$157, DW_AT_decl_column(0x01)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2025,column 1,is_stmt,address ||McBSP_setRxChannelMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxChannelMode||
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("base")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg0]

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("channelMode")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxChannelMode        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxChannelMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("base")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_breg20 -2]

$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("channelMode")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2025| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2025| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2034,column 5,is_stmt,isa 0
        MOVB      ACC,#13               ; [CPU_ALU] |2034| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2034| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2034| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |2034| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2034| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2034| 
        MOVB      ACC,#13               ; [CPU_ALU] |2034| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2034| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2034| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2034| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2036,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$157, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x7f4)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	".text:McBSP_setTxMultichannelPartition"
	.clink

$C$DW$163	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$163, DW_AT_name("McBSP_setTxMultichannelPartition")
	.dwattr $C$DW$163, DW_AT_low_pc(||McBSP_setTxMultichannelPartition||)
	.dwattr $C$DW$163, DW_AT_high_pc(0x00)
	.dwattr $C$DW$163, DW_AT_linkage_name("McBSP_setTxMultichannelPartition")
	.dwattr $C$DW$163, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x805)
	.dwattr $C$DW$163, DW_AT_decl_column(0x01)
	.dwattr $C$DW$163, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2055,column 1,is_stmt,address ||McBSP_setTxMultichannelPartition||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxMultichannelPartition||
$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_name("base")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg0]

$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_name("partition")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxMultichannelPartition FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxMultichannelPartition||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("base")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_breg20 -2]

$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("partition")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2055| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2055| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2064,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |2064| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2064| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2064| 
        AND       AL,*+XAR4[0],#0xfdff  ; [CPU_ALU] |2064| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2064| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2064| 
        MOVB      ACC,#12               ; [CPU_ALU] |2064| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2064| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2064| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2064| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2066,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$163, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$163, DW_AT_TI_end_line(0x812)
	.dwattr $C$DW$163, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$163

	.sect	".text:McBSP_setTxTwoPartitionBlock"
	.clink

$C$DW$169	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$169, DW_AT_name("McBSP_setTxTwoPartitionBlock")
	.dwattr $C$DW$169, DW_AT_low_pc(||McBSP_setTxTwoPartitionBlock||)
	.dwattr $C$DW$169, DW_AT_high_pc(0x00)
	.dwattr $C$DW$169, DW_AT_linkage_name("McBSP_setTxTwoPartitionBlock")
	.dwattr $C$DW$169, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x828)
	.dwattr $C$DW$169, DW_AT_decl_column(0x01)
	.dwattr $C$DW$169, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2089,column 1,is_stmt,address ||McBSP_setTxTwoPartitionBlock||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxTwoPartitionBlock||
$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("base")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg0]

$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_name("block")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxTwoPartitionBlock  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxTwoPartitionBlock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("base")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_breg20 -2]

$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("block")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2089| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2089| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2095,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |2095| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |2095| 
        ; branchcc occurs ; [] |2095| 
        CMPB      AL,#2                 ; [CPU_ALU] |2095| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |2095| 
        ; branchcc occurs ; [] |2095| 
        CMPB      AL,#4                 ; [CPU_ALU] |2095| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |2095| 
        ; branchcc occurs ; [] |2095| 
        CMPB      AL,#6                 ; [CPU_ALU] |2095| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |2095| 
        ; branchcc occurs ; [] |2095| 
||$C$L8||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2103,column 9,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |2103| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2103| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2103| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |2103| 
        LSR       AL,1                  ; [CPU_ALU] |2103| 
        LSL       AL,5                  ; [CPU_ALU] |2103| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2103| 
        AND       AH,*+XAR4[0],#0xff9f  ; [CPU_ALU] |2103| 
        OR        AR6,AH                ; [CPU_ALU] |2103| 
        MOVB      ACC,#12               ; [CPU_ALU] |2103| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2103| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2103| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2103| 
        B         ||$C$L10||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L9||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2112,column 9,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |2112| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2112| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2112| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |2112| 
        LSR       AL,1                  ; [CPU_ALU] |2112| 
        LSL       AL,7                  ; [CPU_ALU] |2112| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2112| 
        AND       AH,*+XAR4[0],#0xfe7f  ; [CPU_ALU] |2112| 
        OR        AR6,AH                ; [CPU_ALU] |2112| 
        MOVB      ACC,#12               ; [CPU_ALU] |2112| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2112| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2112| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2112| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2116,column 1,is_stmt,isa 0
||$C$L10||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$169, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x844)
	.dwattr $C$DW$169, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$169

	.sect	".text:McBSP_setTxChannelMode"
	.clink

$C$DW$175	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$175, DW_AT_name("McBSP_setTxChannelMode")
	.dwattr $C$DW$175, DW_AT_low_pc(||McBSP_setTxChannelMode||)
	.dwattr $C$DW$175, DW_AT_high_pc(0x00)
	.dwattr $C$DW$175, DW_AT_linkage_name("McBSP_setTxChannelMode")
	.dwattr $C$DW$175, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x879)
	.dwattr $C$DW$175, DW_AT_decl_column(0x01)
	.dwattr $C$DW$175, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2170,column 1,is_stmt,address ||McBSP_setTxChannelMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxChannelMode||
$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_name("base")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg0]

$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("channelMode")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxChannelMode        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxChannelMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("base")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_breg20 -2]

$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("channelMode")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2170| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2170| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2179,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |2179| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2179| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2179| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |2179| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2179| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2179| 
        MOVB      ACC,#12               ; [CPU_ALU] |2179| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2179| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2179| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2179| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2182,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$175, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$175, DW_AT_TI_end_line(0x886)
	.dwattr $C$DW$175, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$175

	.sect	".text:McBSP_setTxFrameSyncSource"
	.clink

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("McBSP_setTxFrameSyncSource")
	.dwattr $C$DW$181, DW_AT_low_pc(||McBSP_setTxFrameSyncSource||)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_linkage_name("McBSP_setTxFrameSyncSource")
	.dwattr $C$DW$181, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x89b)
	.dwattr $C$DW$181, DW_AT_decl_column(0x01)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2205,column 1,is_stmt,address ||McBSP_setTxFrameSyncSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxFrameSyncSource||
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("base")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg0]

$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("syncSource")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxFrameSyncSource    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxFrameSyncSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("base")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_breg20 -2]

$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("syncSource")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2205| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2205| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2214,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2214| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2214| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2214| 
        AND       AL,*+XAR4[0],#0xf7ff  ; [CPU_ALU] |2214| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2214| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2214| 
        MOVB      ACC,#18               ; [CPU_ALU] |2214| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2214| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2214| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2214| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2216,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x8a8)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text:McBSP_setRxFrameSyncSource"
	.clink

$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("McBSP_setRxFrameSyncSource")
	.dwattr $C$DW$187, DW_AT_low_pc(||McBSP_setRxFrameSyncSource||)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_linkage_name("McBSP_setRxFrameSyncSource")
	.dwattr $C$DW$187, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x8bd)
	.dwattr $C$DW$187, DW_AT_decl_column(0x01)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2239,column 1,is_stmt,address ||McBSP_setRxFrameSyncSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxFrameSyncSource||
$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_name("base")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg0]

$C$DW$189	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$189, DW_AT_name("syncSource")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxFrameSyncSource    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxFrameSyncSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("base")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_breg20 -2]

$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("syncSource")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2239| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2239| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2248,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2248| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2248| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2248| 
        AND       AL,*+XAR4[0],#0xfbff  ; [CPU_ALU] |2248| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2248| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2248| 
        MOVB      ACC,#18               ; [CPU_ALU] |2248| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2248| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2248| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2248| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2250,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$187, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x8ca)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text:McBSP_setTxClockSource"
	.clink

$C$DW$193	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$193, DW_AT_name("McBSP_setTxClockSource")
	.dwattr $C$DW$193, DW_AT_low_pc(||McBSP_setTxClockSource||)
	.dwattr $C$DW$193, DW_AT_high_pc(0x00)
	.dwattr $C$DW$193, DW_AT_linkage_name("McBSP_setTxClockSource")
	.dwattr $C$DW$193, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x8dd)
	.dwattr $C$DW$193, DW_AT_decl_column(0x01)
	.dwattr $C$DW$193, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2270,column 1,is_stmt,address ||McBSP_setTxClockSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxClockSource||
$C$DW$194	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$194, DW_AT_name("base")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg0]

$C$DW$195	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$195, DW_AT_name("clockSource")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxClockSource        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxClockSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("base")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg20 -2]

$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("clockSource")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2270| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2270| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2279,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2279| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2279| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2279| 
        AND       AL,*+XAR4[0],#0xfdff  ; [CPU_ALU] |2279| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2279| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2279| 
        MOVB      ACC,#18               ; [CPU_ALU] |2279| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2279| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2279| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2279| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2281,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$193, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$193, DW_AT_TI_end_line(0x8e9)
	.dwattr $C$DW$193, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$193

	.sect	".text:McBSP_setRxClockSource"
	.clink

$C$DW$199	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$199, DW_AT_name("McBSP_setRxClockSource")
	.dwattr $C$DW$199, DW_AT_low_pc(||McBSP_setRxClockSource||)
	.dwattr $C$DW$199, DW_AT_high_pc(0x00)
	.dwattr $C$DW$199, DW_AT_linkage_name("McBSP_setRxClockSource")
	.dwattr $C$DW$199, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x8fc)
	.dwattr $C$DW$199, DW_AT_decl_column(0x01)
	.dwattr $C$DW$199, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2301,column 1,is_stmt,address ||McBSP_setRxClockSource||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxClockSource||
$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_name("base")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg0]

$C$DW$201	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$201, DW_AT_name("clockSource")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxClockSource        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxClockSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("base")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_breg20 -2]

$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("clockSource")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2301| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2301| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2310,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2310| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2310| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2310| 
        AND       AL,*+XAR4[0],#0xfeff  ; [CPU_ALU] |2310| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2310| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2310| 
        MOVB      ACC,#18               ; [CPU_ALU] |2310| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2310| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2310| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2310| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2312,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$199, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x908)
	.dwattr $C$DW$199, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$199

	.sect	".text:McBSP_setTxFrameSyncPolarity"
	.clink

$C$DW$205	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$205, DW_AT_name("McBSP_setTxFrameSyncPolarity")
	.dwattr $C$DW$205, DW_AT_low_pc(||McBSP_setTxFrameSyncPolarity||)
	.dwattr $C$DW$205, DW_AT_high_pc(0x00)
	.dwattr $C$DW$205, DW_AT_linkage_name("McBSP_setTxFrameSyncPolarity")
	.dwattr $C$DW$205, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x91a)
	.dwattr $C$DW$205, DW_AT_decl_column(0x01)
	.dwattr $C$DW$205, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2332,column 1,is_stmt,address ||McBSP_setTxFrameSyncPolarity||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxFrameSyncPolarity||
$C$DW$206	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$206, DW_AT_name("base")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg0]

$C$DW$207	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$207, DW_AT_name("syncPolarity")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxFrameSyncPolarity  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxFrameSyncPolarity||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("base")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_breg20 -2]

$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("syncPolarity")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2332| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2332| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2341,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2341| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2341| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2341| 
        AND       AL,*+XAR4[0],#0xfff7  ; [CPU_ALU] |2341| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2341| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2341| 
        MOVB      ACC,#18               ; [CPU_ALU] |2341| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2341| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2341| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2341| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2343,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$205, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$205, DW_AT_TI_end_line(0x927)
	.dwattr $C$DW$205, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$205

	.sect	".text:McBSP_setRxFrameSyncPolarity"
	.clink

$C$DW$211	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$211, DW_AT_name("McBSP_setRxFrameSyncPolarity")
	.dwattr $C$DW$211, DW_AT_low_pc(||McBSP_setRxFrameSyncPolarity||)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_linkage_name("McBSP_setRxFrameSyncPolarity")
	.dwattr $C$DW$211, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x938)
	.dwattr $C$DW$211, DW_AT_decl_column(0x01)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2362,column 1,is_stmt,address ||McBSP_setRxFrameSyncPolarity||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxFrameSyncPolarity||
$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_name("base")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg0]

$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("syncPolarity")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxFrameSyncPolarity  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxFrameSyncPolarity||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("base")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_breg20 -2]

$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("syncPolarity")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2362| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2362| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2371,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2371| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2371| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2371| 
        AND       AL,*+XAR4[0],#0xfffb  ; [CPU_ALU] |2371| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2371| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2371| 
        MOVB      ACC,#18               ; [CPU_ALU] |2371| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2371| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2371| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2371| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2373,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$211, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x945)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	".text:McBSP_setTxClockPolarity"
	.clink

$C$DW$217	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$217, DW_AT_name("McBSP_setTxClockPolarity")
	.dwattr $C$DW$217, DW_AT_low_pc(||McBSP_setTxClockPolarity||)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_linkage_name("McBSP_setTxClockPolarity")
	.dwattr $C$DW$217, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x957)
	.dwattr $C$DW$217, DW_AT_decl_column(0x01)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2393,column 1,is_stmt,address ||McBSP_setTxClockPolarity||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxClockPolarity||
$C$DW$218	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$218, DW_AT_name("base")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg0]

$C$DW$219	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$219, DW_AT_name("clockPolarity")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setTxClockPolarity      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxClockPolarity||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("base")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_breg20 -2]

$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("clockPolarity")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2393| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2393| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2402,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2402| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2402| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2402| 
        AND       AL,*+XAR4[0],#0xfffd  ; [CPU_ALU] |2402| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2402| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2402| 
        MOVB      ACC,#18               ; [CPU_ALU] |2402| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2402| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2402| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2402| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2405,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$217, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x965)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text:McBSP_setRxClockPolarity"
	.clink

$C$DW$223	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$223, DW_AT_name("McBSP_setRxClockPolarity")
	.dwattr $C$DW$223, DW_AT_low_pc(||McBSP_setRxClockPolarity||)
	.dwattr $C$DW$223, DW_AT_high_pc(0x00)
	.dwattr $C$DW$223, DW_AT_linkage_name("McBSP_setRxClockPolarity")
	.dwattr $C$DW$223, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x978)
	.dwattr $C$DW$223, DW_AT_decl_column(0x01)
	.dwattr $C$DW$223, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2426,column 1,is_stmt,address ||McBSP_setRxClockPolarity||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxClockPolarity||
$C$DW$224	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$224, DW_AT_name("base")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg0]

$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("clockPolarity")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_setRxClockPolarity      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxClockPolarity||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("base")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_breg20 -2]

$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("clockPolarity")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2426| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2426| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2435,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |2435| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2435| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2435| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |2435| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |2435| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2435| 
        MOVB      ACC,#18               ; [CPU_ALU] |2435| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2435| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2435| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |2435| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2438,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$223, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x986)
	.dwattr $C$DW$223, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$223

	.sect	".text:McBSP_read16bitData"
	.clink

$C$DW$229	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$229, DW_AT_name("McBSP_read16bitData")
	.dwattr $C$DW$229, DW_AT_low_pc(||McBSP_read16bitData||)
	.dwattr $C$DW$229, DW_AT_high_pc(0x00)
	.dwattr $C$DW$229, DW_AT_linkage_name("McBSP_read16bitData")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$229, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x994)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$229, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2453,column 1,is_stmt,address ||McBSP_read16bitData||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_read16bitData||
$C$DW$230	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$230, DW_AT_name("base")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_read16bitData           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_read16bitData||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$231	.dwtag  DW_TAG_variable
	.dwattr $C$DW$231, DW_AT_name("base")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2453| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2462,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |2462| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |2462| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2463,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$229, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$229, DW_AT_TI_end_line(0x99f)
	.dwattr $C$DW$229, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$229

	.sect	".text:McBSP_read32bitData"
	.clink

$C$DW$233	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$233, DW_AT_name("McBSP_read32bitData")
	.dwattr $C$DW$233, DW_AT_low_pc(||McBSP_read32bitData||)
	.dwattr $C$DW$233, DW_AT_high_pc(0x00)
	.dwattr $C$DW$233, DW_AT_linkage_name("McBSP_read32bitData")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$233, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x9ad)
	.dwattr $C$DW$233, DW_AT_decl_column(0x01)
	.dwattr $C$DW$233, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2478,column 1,is_stmt,address ||McBSP_read32bitData||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_read32bitData||
$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_name("base")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: McBSP_read32bitData           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_read32bitData||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("base")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2478| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2487,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |2487| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |2487| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*+XAR5[0] << 16   ; [CPU_ALU] |2487| 
        OR        ACC,*+XAR4[1]         ; [CPU_ALU] |2487| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2489,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$233, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x9b9)
	.dwattr $C$DW$233, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$233

	.sect	".text:McBSP_write16bitData"
	.clink

$C$DW$237	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$237, DW_AT_name("McBSP_write16bitData")
	.dwattr $C$DW$237, DW_AT_low_pc(||McBSP_write16bitData||)
	.dwattr $C$DW$237, DW_AT_high_pc(0x00)
	.dwattr $C$DW$237, DW_AT_linkage_name("McBSP_write16bitData")
	.dwattr $C$DW$237, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x9c8)
	.dwattr $C$DW$237, DW_AT_decl_column(0x01)
	.dwattr $C$DW$237, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2505,column 1,is_stmt,address ||McBSP_write16bitData||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_write16bitData||
$C$DW$238	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$238, DW_AT_name("base")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg0]

$C$DW$239	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$239, DW_AT_name("data")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_write16bitData          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_write16bitData||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("base")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_breg20 -2]

$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("data")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2505| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2505| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2514,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |2514| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |2514| 
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |2514| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2515,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$237, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$237, DW_AT_TI_end_line(0x9d3)
	.dwattr $C$DW$237, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$237

	.sect	".text:McBSP_write32bitData"
	.clink

$C$DW$243	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$243, DW_AT_name("McBSP_write32bitData")
	.dwattr $C$DW$243, DW_AT_low_pc(||McBSP_write32bitData||)
	.dwattr $C$DW$243, DW_AT_high_pc(0x00)
	.dwattr $C$DW$243, DW_AT_linkage_name("McBSP_write32bitData")
	.dwattr $C$DW$243, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x9e2)
	.dwattr $C$DW$243, DW_AT_decl_column(0x01)
	.dwattr $C$DW$243, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2531,column 1,is_stmt,address ||McBSP_write32bitData||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_write32bitData||
$C$DW$244	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$244, DW_AT_name("base")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg0]

$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_name("data")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: McBSP_write32bitData          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_write32bitData||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("base")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2531| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2540,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |2540| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |2540| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |2540| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2545,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |2545| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |2545| 
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |2545| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\mcbsp.h",line 2546,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$243, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$243, DW_AT_TI_end_line(0x9f2)
	.dwattr $C$DW$243, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$243

	.sect	".text:McBSP_transmit16BitDataNonBlocking"
	.clink
	.global	||McBSP_transmit16BitDataNonBlocking||

$C$DW$248	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$248, DW_AT_name("McBSP_transmit16BitDataNonBlocking")
	.dwattr $C$DW$248, DW_AT_low_pc(||McBSP_transmit16BitDataNonBlocking||)
	.dwattr $C$DW$248, DW_AT_high_pc(0x00)
	.dwattr $C$DW$248, DW_AT_linkage_name("McBSP_transmit16BitDataNonBlocking")
	.dwattr $C$DW$248, DW_AT_external
	.dwattr $C$DW$248, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$248, DW_AT_decl_line(0x35)
	.dwattr $C$DW$248, DW_AT_decl_column(0x01)
	.dwattr $C$DW$248, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 54,column 1,is_stmt,address ||McBSP_transmit16BitDataNonBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_transmit16BitDataNonBlocking||
$C$DW$249	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$249, DW_AT_name("base")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg0]

$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_name("data")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_transmit16BitDataNonBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_transmit16BitDataNonBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("base")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_breg20 -2]

$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("data")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |54| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |54| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 63,column 5,is_stmt,isa 0
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("McBSP_write16bitData")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #||McBSP_write16bitData|| ; [CPU_ALU] |63| 
        ; call occurs [#||McBSP_write16bitData||] ; [] |63| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 64,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$248, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$248, DW_AT_TI_end_line(0x40)
	.dwattr $C$DW$248, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$248

	.sect	".text:McBSP_transmit16BitDataBlocking"
	.clink
	.global	||McBSP_transmit16BitDataBlocking||

$C$DW$255	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$255, DW_AT_name("McBSP_transmit16BitDataBlocking")
	.dwattr $C$DW$255, DW_AT_low_pc(||McBSP_transmit16BitDataBlocking||)
	.dwattr $C$DW$255, DW_AT_high_pc(0x00)
	.dwattr $C$DW$255, DW_AT_linkage_name("McBSP_transmit16BitDataBlocking")
	.dwattr $C$DW$255, DW_AT_external
	.dwattr $C$DW$255, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$255, DW_AT_decl_line(0x48)
	.dwattr $C$DW$255, DW_AT_decl_column(0x01)
	.dwattr $C$DW$255, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 73,column 1,is_stmt,address ||McBSP_transmit16BitDataBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_transmit16BitDataBlocking||
$C$DW$256	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$256, DW_AT_name("base")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg0]

$C$DW$257	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$257, DW_AT_name("data")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_transmit16BitDataBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||McBSP_transmit16BitDataBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("base")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_breg20 -2]

$C$DW$259	.dwtag  DW_TAG_variable
	.dwattr $C$DW$259, DW_AT_name("data")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |73| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |73| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 82,column 5,is_stmt,isa 0
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 82,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |82| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("McBSP_isTxReady")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #||McBSP_isTxReady||  ; [CPU_ALU] |82| 
        ; call occurs [#||McBSP_isTxReady||] ; [] |82| 
        CMPB      AL,#0                 ; [CPU_ALU] |82| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 89,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |89| 
        MOVZ      AR4,*-SP[3]           ; [CPU_ALU] |89| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("McBSP_write16bitData")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #||McBSP_write16bitData|| ; [CPU_ALU] |89| 
        ; call occurs [#||McBSP_write16bitData||] ; [] |89| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 90,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$255, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$255, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$255, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$255

	.sect	".text:McBSP_transmit32BitDataNonBlocking"
	.clink
	.global	||McBSP_transmit32BitDataNonBlocking||

$C$DW$263	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$263, DW_AT_name("McBSP_transmit32BitDataNonBlocking")
	.dwattr $C$DW$263, DW_AT_low_pc(||McBSP_transmit32BitDataNonBlocking||)
	.dwattr $C$DW$263, DW_AT_high_pc(0x00)
	.dwattr $C$DW$263, DW_AT_linkage_name("McBSP_transmit32BitDataNonBlocking")
	.dwattr $C$DW$263, DW_AT_external
	.dwattr $C$DW$263, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$263, DW_AT_decl_line(0x62)
	.dwattr $C$DW$263, DW_AT_decl_column(0x01)
	.dwattr $C$DW$263, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 99,column 1,is_stmt,address ||McBSP_transmit32BitDataNonBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_transmit32BitDataNonBlocking||
$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_name("base")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg0]

$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_name("data")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: McBSP_transmit32BitDataNonBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_transmit32BitDataNonBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$266	.dwtag  DW_TAG_variable
	.dwattr $C$DW$266, DW_AT_name("base")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],ACC           ; [CPU_ALU] |99| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 108,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |108| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |108| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |108| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("McBSP_write32bitData")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #||McBSP_write32bitData|| ; [CPU_ALU] |108| 
        ; call occurs [#||McBSP_write32bitData||] ; [] |108| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 109,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$263, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$263, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$263, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$263

	.sect	".text:McBSP_transmit32BitDataBlocking"
	.clink
	.global	||McBSP_transmit32BitDataBlocking||

$C$DW$269	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$269, DW_AT_name("McBSP_transmit32BitDataBlocking")
	.dwattr $C$DW$269, DW_AT_low_pc(||McBSP_transmit32BitDataBlocking||)
	.dwattr $C$DW$269, DW_AT_high_pc(0x00)
	.dwattr $C$DW$269, DW_AT_linkage_name("McBSP_transmit32BitDataBlocking")
	.dwattr $C$DW$269, DW_AT_external
	.dwattr $C$DW$269, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$269, DW_AT_decl_line(0x75)
	.dwattr $C$DW$269, DW_AT_decl_column(0x01)
	.dwattr $C$DW$269, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 118,column 1,is_stmt,address ||McBSP_transmit32BitDataBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_transmit32BitDataBlocking||
$C$DW$270	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$270, DW_AT_name("base")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg0]

$C$DW$271	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$271, DW_AT_name("data")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: McBSP_transmit32BitDataBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||McBSP_transmit32BitDataBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$272	.dwtag  DW_TAG_variable
	.dwattr $C$DW$272, DW_AT_name("base")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],ACC           ; [CPU_ALU] |118| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 127,column 5,is_stmt,isa 0
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 127,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |127| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("McBSP_isTxReady")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #||McBSP_isTxReady||  ; [CPU_ALU] |127| 
        ; call occurs [#||McBSP_isTxReady||] ; [] |127| 
        CMPB      AL,#0                 ; [CPU_ALU] |127| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |127| 
        ; branchcc occurs ; [] |127| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 134,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |134| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |134| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |134| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("McBSP_write32bitData")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #||McBSP_write32bitData|| ; [CPU_ALU] |134| 
        ; call occurs [#||McBSP_write32bitData||] ; [] |134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 135,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$269, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$269, DW_AT_TI_end_line(0x87)
	.dwattr $C$DW$269, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$269

	.sect	".text:McBSP_receive16BitDataNonBlocking"
	.clink
	.global	||McBSP_receive16BitDataNonBlocking||

$C$DW$276	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$276, DW_AT_name("McBSP_receive16BitDataNonBlocking")
	.dwattr $C$DW$276, DW_AT_low_pc(||McBSP_receive16BitDataNonBlocking||)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_linkage_name("McBSP_receive16BitDataNonBlocking")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$276, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$276, DW_AT_decl_column(0x01)
	.dwattr $C$DW$276, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 144,column 1,is_stmt,address ||McBSP_receive16BitDataNonBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_receive16BitDataNonBlocking||
$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_name("base")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg0]

$C$DW$278	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$278, DW_AT_name("receiveData")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_receive16BitDataNonBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_receive16BitDataNonBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$279	.dwtag  DW_TAG_variable
	.dwattr $C$DW$279, DW_AT_name("base")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_breg20 -2]

$C$DW$280	.dwtag  DW_TAG_variable
	.dwattr $C$DW$280, DW_AT_name("receiveData")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |144| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |144| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 153,column 5,is_stmt,isa 0
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("McBSP_read16bitData")
	.dwattr $C$DW$281, DW_AT_TI_call

        LCR       #||McBSP_read16bitData|| ; [CPU_ALU] |153| 
        ; call occurs [#||McBSP_read16bitData||] ; [] |153| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |153| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |153| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 154,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$276, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$276

	.sect	".text:McBSP_receive16BitDataBlocking"
	.clink
	.global	||McBSP_receive16BitDataBlocking||

$C$DW$283	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$283, DW_AT_name("McBSP_receive16BitDataBlocking")
	.dwattr $C$DW$283, DW_AT_low_pc(||McBSP_receive16BitDataBlocking||)
	.dwattr $C$DW$283, DW_AT_high_pc(0x00)
	.dwattr $C$DW$283, DW_AT_linkage_name("McBSP_receive16BitDataBlocking")
	.dwattr $C$DW$283, DW_AT_external
	.dwattr $C$DW$283, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$283, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$283, DW_AT_decl_column(0x01)
	.dwattr $C$DW$283, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 163,column 1,is_stmt,address ||McBSP_receive16BitDataBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_receive16BitDataBlocking||
$C$DW$284	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$284, DW_AT_name("base")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg0]

$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_name("receiveData")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_receive16BitDataBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_receive16BitDataBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$286	.dwtag  DW_TAG_variable
	.dwattr $C$DW$286, DW_AT_name("base")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_breg20 -2]

$C$DW$287	.dwtag  DW_TAG_variable
	.dwattr $C$DW$287, DW_AT_name("receiveData")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |163| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |163| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 172,column 5,is_stmt,isa 0
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 172,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |172| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("McBSP_isRxReady")
	.dwattr $C$DW$288, DW_AT_TI_call

        LCR       #||McBSP_isRxReady||  ; [CPU_ALU] |172| 
        ; call occurs [#||McBSP_isRxReady||] ; [] |172| 
        CMPB      AL,#0                 ; [CPU_ALU] |172| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 179,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |179| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("McBSP_read16bitData")
	.dwattr $C$DW$289, DW_AT_TI_call

        LCR       #||McBSP_read16bitData|| ; [CPU_ALU] |179| 
        ; call occurs [#||McBSP_read16bitData||] ; [] |179| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |179| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 180,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$283, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$283, DW_AT_TI_end_line(0xb4)
	.dwattr $C$DW$283, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$283

	.sect	".text:McBSP_receive32BitDataNonBlocking"
	.clink
	.global	||McBSP_receive32BitDataNonBlocking||

$C$DW$291	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$291, DW_AT_name("McBSP_receive32BitDataNonBlocking")
	.dwattr $C$DW$291, DW_AT_low_pc(||McBSP_receive32BitDataNonBlocking||)
	.dwattr $C$DW$291, DW_AT_high_pc(0x00)
	.dwattr $C$DW$291, DW_AT_linkage_name("McBSP_receive32BitDataNonBlocking")
	.dwattr $C$DW$291, DW_AT_external
	.dwattr $C$DW$291, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$291, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$291, DW_AT_decl_column(0x01)
	.dwattr $C$DW$291, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 189,column 1,is_stmt,address ||McBSP_receive32BitDataNonBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_receive32BitDataNonBlocking||
$C$DW$292	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$292, DW_AT_name("base")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg0]

$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_name("receiveData")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_receive32BitDataNonBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_receive32BitDataNonBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("base")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_breg20 -2]

$C$DW$295	.dwtag  DW_TAG_variable
	.dwattr $C$DW$295, DW_AT_name("receiveData")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |189| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |189| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 198,column 5,is_stmt,isa 0
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("McBSP_read32bitData")
	.dwattr $C$DW$296, DW_AT_TI_call

        LCR       #||McBSP_read32bitData|| ; [CPU_ALU] |198| 
        ; call occurs [#||McBSP_read32bitData||] ; [] |198| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |198| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |198| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 199,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$291, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$291, DW_AT_TI_end_line(0xc7)
	.dwattr $C$DW$291, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$291

	.sect	".text:McBSP_receive32BitDataBlocking"
	.clink
	.global	||McBSP_receive32BitDataBlocking||

$C$DW$298	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$298, DW_AT_name("McBSP_receive32BitDataBlocking")
	.dwattr $C$DW$298, DW_AT_low_pc(||McBSP_receive32BitDataBlocking||)
	.dwattr $C$DW$298, DW_AT_high_pc(0x00)
	.dwattr $C$DW$298, DW_AT_linkage_name("McBSP_receive32BitDataBlocking")
	.dwattr $C$DW$298, DW_AT_external
	.dwattr $C$DW$298, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$298, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$298, DW_AT_decl_column(0x01)
	.dwattr $C$DW$298, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 208,column 1,is_stmt,address ||McBSP_receive32BitDataBlocking||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_receive32BitDataBlocking||
$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_name("base")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg0]

$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_name("receiveData")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_receive32BitDataBlocking FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_receive32BitDataBlocking||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$301	.dwtag  DW_TAG_variable
	.dwattr $C$DW$301, DW_AT_name("base")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_breg20 -2]

$C$DW$302	.dwtag  DW_TAG_variable
	.dwattr $C$DW$302, DW_AT_name("receiveData")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |208| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |208| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 217,column 5,is_stmt,isa 0
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 217,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |217| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("McBSP_isRxReady")
	.dwattr $C$DW$303, DW_AT_TI_call

        LCR       #||McBSP_isRxReady||  ; [CPU_ALU] |217| 
        ; call occurs [#||McBSP_isRxReady||] ; [] |217| 
        CMPB      AL,#0                 ; [CPU_ALU] |217| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |217| 
        ; branchcc occurs ; [] |217| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 224,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |224| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("McBSP_read32bitData")
	.dwattr $C$DW$304, DW_AT_TI_call

        LCR       #||McBSP_read32bitData|| ; [CPU_ALU] |224| 
        ; call occurs [#||McBSP_read32bitData||] ; [] |224| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |224| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |224| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 225,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$298, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$298, DW_AT_TI_end_line(0xe1)
	.dwattr $C$DW$298, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$298

	.sect	".text:McBSP_setRxDataSize"
	.clink
	.global	||McBSP_setRxDataSize||

$C$DW$306	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$306, DW_AT_name("McBSP_setRxDataSize")
	.dwattr $C$DW$306, DW_AT_low_pc(||McBSP_setRxDataSize||)
	.dwattr $C$DW$306, DW_AT_high_pc(0x00)
	.dwattr $C$DW$306, DW_AT_linkage_name("McBSP_setRxDataSize")
	.dwattr $C$DW$306, DW_AT_external
	.dwattr $C$DW$306, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$306, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$306, DW_AT_decl_column(0x01)
	.dwattr $C$DW$306, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 236,column 1,is_stmt,address ||McBSP_setRxDataSize||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setRxDataSize||
$C$DW$307	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$307, DW_AT_name("base")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg0]

$C$DW$308	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$308, DW_AT_name("dataFrame")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg12]

$C$DW$309	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$309, DW_AT_name("bitsPerWord")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg14]

$C$DW$310	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$310, DW_AT_name("wordsPerFrame")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_breg20 -7]


;***************************************************************
;* FNAME: McBSP_setRxDataSize           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_setRxDataSize||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$311	.dwtag  DW_TAG_variable
	.dwattr $C$DW$311, DW_AT_name("base")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_breg20 -2]

$C$DW$312	.dwtag  DW_TAG_variable
	.dwattr $C$DW$312, DW_AT_name("dataFrame")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_breg20 -3]

$C$DW$313	.dwtag  DW_TAG_variable
	.dwattr $C$DW$313, DW_AT_name("bitsPerWord")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |236| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |236| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |236| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 243,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |243| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |243| 
        ; branchcc occurs ; [] |243| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 249,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |249| 
        AND       AL,*+XAR4[7],#0x801f  ; [CPU_ALU] |249| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |249| 
        MOVZ      AR6,AL                ; [CPU_ALU] |249| 
        MOV       ACC,*-SP[7] << #8     ; [CPU_ALU] |249| 
        OR        AL,AR6                ; [CPU_ALU] |249| 
        MOV       *+XAR4[7],AL          ; [CPU_ALU] |249| 
        B         ||$C$L16||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 259,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |259| 
        AND       AL,*+XAR4[6],#0x801f  ; [CPU_ALU] |259| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |259| 
        MOVZ      AR6,AL                ; [CPU_ALU] |259| 
        MOV       ACC,*-SP[7] << #8     ; [CPU_ALU] |259| 
        OR        AL,AR6                ; [CPU_ALU] |259| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |259| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 263,column 1,is_stmt,isa 0
||$C$L16||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$306, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$306, DW_AT_TI_end_line(0x107)
	.dwattr $C$DW$306, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$306

	.sect	".text:McBSP_setTxDataSize"
	.clink
	.global	||McBSP_setTxDataSize||

$C$DW$315	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$315, DW_AT_name("McBSP_setTxDataSize")
	.dwattr $C$DW$315, DW_AT_low_pc(||McBSP_setTxDataSize||)
	.dwattr $C$DW$315, DW_AT_high_pc(0x00)
	.dwattr $C$DW$315, DW_AT_linkage_name("McBSP_setTxDataSize")
	.dwattr $C$DW$315, DW_AT_external
	.dwattr $C$DW$315, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$315, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$315, DW_AT_decl_column(0x01)
	.dwattr $C$DW$315, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 274,column 1,is_stmt,address ||McBSP_setTxDataSize||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_setTxDataSize||
$C$DW$316	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$316, DW_AT_name("base")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg0]

$C$DW$317	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$317, DW_AT_name("dataFrame")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg12]

$C$DW$318	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$318, DW_AT_name("bitsPerWord")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg14]

$C$DW$319	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$319, DW_AT_name("wordsPerFrame")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_breg20 -7]


;***************************************************************
;* FNAME: McBSP_setTxDataSize           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_setTxDataSize||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$320	.dwtag  DW_TAG_variable
	.dwattr $C$DW$320, DW_AT_name("base")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_breg20 -2]

$C$DW$321	.dwtag  DW_TAG_variable
	.dwattr $C$DW$321, DW_AT_name("dataFrame")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_breg20 -3]

$C$DW$322	.dwtag  DW_TAG_variable
	.dwattr $C$DW$322, DW_AT_name("bitsPerWord")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |274| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |274| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |274| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 281,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |281| 
        B         ||$C$L17||,NEQ        ; [CPU_ALU] |281| 
        ; branchcc occurs ; [] |281| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 286,column 9,is_stmt,isa 0
        MOVB      ACC,#9                ; [CPU_ALU] |286| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |286| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |286| 
        AND       AL,*+XAR4[0],#0x801f  ; [CPU_ALU] |286| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |286| 
        MOVZ      AR6,AL                ; [CPU_ALU] |286| 
        MOV       ACC,*-SP[7] << #8     ; [CPU_ALU] |286| 
        OR        AL,AR6                ; [CPU_ALU] |286| 
        MOVZ      AR7,AL                ; [CPU_ALU] |286| 
        MOVB      ACC,#9                ; [CPU_ALU] |286| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |286| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |286| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |286| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 295,column 9,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |295| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |295| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |295| 
        AND       AL,*+XAR4[0],#0x801f  ; [CPU_ALU] |295| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |295| 
        MOVZ      AR6,AL                ; [CPU_ALU] |295| 
        MOV       ACC,*-SP[7] << #8     ; [CPU_ALU] |295| 
        OR        AL,AR6                ; [CPU_ALU] |295| 
        MOVZ      AR7,AL                ; [CPU_ALU] |295| 
        MOVB      ACC,#8                ; [CPU_ALU] |295| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |295| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |295| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 299,column 1,is_stmt,isa 0
||$C$L18||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$315, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$315, DW_AT_TI_end_line(0x12b)
	.dwattr $C$DW$315, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$315

	.sect	".text:McBSP_disableRxChannel"
	.clink
	.global	||McBSP_disableRxChannel||

$C$DW$324	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$324, DW_AT_name("McBSP_disableRxChannel")
	.dwattr $C$DW$324, DW_AT_low_pc(||McBSP_disableRxChannel||)
	.dwattr $C$DW$324, DW_AT_high_pc(0x00)
	.dwattr $C$DW$324, DW_AT_linkage_name("McBSP_disableRxChannel")
	.dwattr $C$DW$324, DW_AT_external
	.dwattr $C$DW$324, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$324, DW_AT_decl_line(0x133)
	.dwattr $C$DW$324, DW_AT_decl_column(0x01)
	.dwattr $C$DW$324, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 310,column 1,is_stmt,address ||McBSP_disableRxChannel||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableRxChannel||
$C$DW$325	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$325, DW_AT_name("base")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg0]

$C$DW$326	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$326, DW_AT_name("partition")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg12]

$C$DW$327	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$327, DW_AT_name("channel")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: McBSP_disableRxChannel        FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableRxChannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$328	.dwtag  DW_TAG_variable
	.dwattr $C$DW$328, DW_AT_name("base")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_breg20 -2]

$C$DW$329	.dwtag  DW_TAG_variable
	.dwattr $C$DW$329, DW_AT_name("partition")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_breg20 -3]

$C$DW$330	.dwtag  DW_TAG_variable
	.dwattr $C$DW$330, DW_AT_name("channel")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_breg20 -4]

$C$DW$331	.dwtag  DW_TAG_variable
	.dwattr $C$DW$331, DW_AT_name("block")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_breg20 -5]

$C$DW$332	.dwtag  DW_TAG_variable
	.dwattr $C$DW$332, DW_AT_name("bitOffset")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_breg20 -6]

$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("registerOffset")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_breg20 -7]

$C$DW$334	.dwtag  DW_TAG_variable
	.dwattr $C$DW$334, DW_AT_name("oddBlock")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |310| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |310| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |310| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 325,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |325| 
        LSR       AL,4                  ; [CPU_ALU] |325| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |325| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 330,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |330| 
        MOV       ACC,*-SP[5] << #4     ; [CPU_ALU] |330| 
        SUB       AR6,AL                ; [CPU_ALU] |330| 
        MOV       *-SP[6],AR6           ; [CPU_ALU] |330| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 335,column 5,is_stmt,isa 0
        MOV       AL,#512               ; [CPU_ALU] |335| 
        CMP       AL,*-SP[3]            ; [CPU_ALU] |335| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |335| 
        ; branchcc occurs ; [] |335| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 340,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |340| 
        CMPB      AL,#32                ; [CPU_ALU] |340| 
        B         ||$C$L19||,HIS        ; [CPU_ALU] |340| 
        ; branchcc occurs ; [] |340| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 345,column 13,is_stmt,isa 0
        LSR       AL,4                  ; [CPU_ALU] |345| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |345| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 357,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |357| 
        ANDB      AL,#0x01              ; [CPU_ALU] |357| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |357| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 358,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |358| 
        SUB       AL,*-SP[8]            ; [CPU_ALU] |358| 
        ADDB      AL,#-2                ; [CPU_ALU] |358| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |358| 
        ADD       AL,*-SP[8]            ; [CPU_ALU] |358| 
        ADDB      AL,#5                 ; [CPU_ALU] |358| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |358| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 371,column 9,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |371| 
        ANDB      AL,#0x01              ; [CPU_ALU] |371| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |371| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 374,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[7]           ; [CPU_ALU] |374| 
        MOV       T,*-SP[6]             ; [CPU_ALU] |374| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |374| 
        ADDB      ACC,#14               ; [CPU_ALU] |374| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |374| 
        MOVB      AL,#1                 ; [CPU_ALU] |374| 
        LSL       AL,T                  ; [CPU_ALU] |374| 
        NOT       AL                    ; [CPU_ALU] |374| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |374| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 375,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$324, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$324, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$324, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$324

	.sect	".text:McBSP_enableRxChannel"
	.clink
	.global	||McBSP_enableRxChannel||

$C$DW$336	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$336, DW_AT_name("McBSP_enableRxChannel")
	.dwattr $C$DW$336, DW_AT_low_pc(||McBSP_enableRxChannel||)
	.dwattr $C$DW$336, DW_AT_high_pc(0x00)
	.dwattr $C$DW$336, DW_AT_linkage_name("McBSP_enableRxChannel")
	.dwattr $C$DW$336, DW_AT_external
	.dwattr $C$DW$336, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$336, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$336, DW_AT_decl_column(0x01)
	.dwattr $C$DW$336, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 386,column 1,is_stmt,address ||McBSP_enableRxChannel||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableRxChannel||
$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_name("base")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg0]

$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_name("partition")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg12]

$C$DW$339	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$339, DW_AT_name("channel")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: McBSP_enableRxChannel         FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableRxChannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$340	.dwtag  DW_TAG_variable
	.dwattr $C$DW$340, DW_AT_name("base")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_breg20 -2]

$C$DW$341	.dwtag  DW_TAG_variable
	.dwattr $C$DW$341, DW_AT_name("partition")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_breg20 -3]

$C$DW$342	.dwtag  DW_TAG_variable
	.dwattr $C$DW$342, DW_AT_name("channel")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_breg20 -4]

$C$DW$343	.dwtag  DW_TAG_variable
	.dwattr $C$DW$343, DW_AT_name("block")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_breg20 -5]

$C$DW$344	.dwtag  DW_TAG_variable
	.dwattr $C$DW$344, DW_AT_name("bitOffset")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_breg20 -6]

$C$DW$345	.dwtag  DW_TAG_variable
	.dwattr $C$DW$345, DW_AT_name("registerOffset")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_breg20 -7]

$C$DW$346	.dwtag  DW_TAG_variable
	.dwattr $C$DW$346, DW_AT_name("oddBlock")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |386| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |386| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |386| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 401,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |401| 
        LSR       AL,4                  ; [CPU_ALU] |401| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |401| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 406,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |406| 
        MOV       ACC,*-SP[5] << #4     ; [CPU_ALU] |406| 
        SUB       AR6,AL                ; [CPU_ALU] |406| 
        MOV       *-SP[6],AR6           ; [CPU_ALU] |406| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 411,column 5,is_stmt,isa 0
        MOV       AL,#512               ; [CPU_ALU] |411| 
        CMP       AL,*-SP[3]            ; [CPU_ALU] |411| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |411| 
        ; branchcc occurs ; [] |411| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 416,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |416| 
        CMPB      AL,#32                ; [CPU_ALU] |416| 
        B         ||$C$L22||,HIS        ; [CPU_ALU] |416| 
        ; branchcc occurs ; [] |416| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 421,column 13,is_stmt,isa 0
        LSR       AL,4                  ; [CPU_ALU] |421| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |421| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 433,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |433| 
        ANDB      AL,#0x01              ; [CPU_ALU] |433| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |433| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 434,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |434| 
        SUB       AL,*-SP[8]            ; [CPU_ALU] |434| 
        ADDB      AL,#-2                ; [CPU_ALU] |434| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |434| 
        ADD       AL,*-SP[8]            ; [CPU_ALU] |434| 
        ADDB      AL,#5                 ; [CPU_ALU] |434| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |434| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 447,column 9,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |447| 
        ANDB      AL,#0x01              ; [CPU_ALU] |447| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |447| 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 450,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[7]           ; [CPU_ALU] |450| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |450| 
        ADDB      ACC,#14               ; [CPU_ALU] |450| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |450| 
        MOV       T,*-SP[6]             ; [CPU_ALU] |450| 
        MOVB      AL,#1                 ; [CPU_ALU] |450| 
        LSL       AL,T                  ; [CPU_ALU] |450| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |450| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 451,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$336, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$336, DW_AT_TI_end_line(0x1c3)
	.dwattr $C$DW$336, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$336

	.sect	".text:McBSP_disableTxChannel"
	.clink
	.global	||McBSP_disableTxChannel||

$C$DW$348	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$348, DW_AT_name("McBSP_disableTxChannel")
	.dwattr $C$DW$348, DW_AT_low_pc(||McBSP_disableTxChannel||)
	.dwattr $C$DW$348, DW_AT_high_pc(0x00)
	.dwattr $C$DW$348, DW_AT_linkage_name("McBSP_disableTxChannel")
	.dwattr $C$DW$348, DW_AT_external
	.dwattr $C$DW$348, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$348, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$348, DW_AT_decl_column(0x01)
	.dwattr $C$DW$348, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 462,column 1,is_stmt,address ||McBSP_disableTxChannel||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_disableTxChannel||
$C$DW$349	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$349, DW_AT_name("base")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg0]

$C$DW$350	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$350, DW_AT_name("partition")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg12]

$C$DW$351	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$351, DW_AT_name("channel")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: McBSP_disableTxChannel        FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||McBSP_disableTxChannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$352	.dwtag  DW_TAG_variable
	.dwattr $C$DW$352, DW_AT_name("base")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_breg20 -2]

$C$DW$353	.dwtag  DW_TAG_variable
	.dwattr $C$DW$353, DW_AT_name("partition")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_breg20 -3]

$C$DW$354	.dwtag  DW_TAG_variable
	.dwattr $C$DW$354, DW_AT_name("channel")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_breg20 -4]

$C$DW$355	.dwtag  DW_TAG_variable
	.dwattr $C$DW$355, DW_AT_name("block")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_breg20 -5]

$C$DW$356	.dwtag  DW_TAG_variable
	.dwattr $C$DW$356, DW_AT_name("bitOffset")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_breg20 -6]

$C$DW$357	.dwtag  DW_TAG_variable
	.dwattr $C$DW$357, DW_AT_name("registerOffset")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_breg20 -7]

$C$DW$358	.dwtag  DW_TAG_variable
	.dwattr $C$DW$358, DW_AT_name("oddBlock")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |462| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |462| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |462| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 477,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |477| 
        LSR       AL,4                  ; [CPU_ALU] |477| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |477| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 482,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |482| 
        MOV       ACC,*-SP[5] << #4     ; [CPU_ALU] |482| 
        SUB       AR6,AL                ; [CPU_ALU] |482| 
        MOV       *-SP[6],AR6           ; [CPU_ALU] |482| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 487,column 5,is_stmt,isa 0
        MOV       AL,#512               ; [CPU_ALU] |487| 
        CMP       AL,*-SP[3]            ; [CPU_ALU] |487| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |487| 
        ; branchcc occurs ; [] |487| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 492,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |492| 
        CMPB      AL,#32                ; [CPU_ALU] |492| 
        B         ||$C$L25||,HIS        ; [CPU_ALU] |492| 
        ; branchcc occurs ; [] |492| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 497,column 13,is_stmt,isa 0
        LSR       AL,4                  ; [CPU_ALU] |497| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |497| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 509,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |509| 
        ANDB      AL,#0x01              ; [CPU_ALU] |509| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |509| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 510,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |510| 
        SUB       AL,*-SP[8]            ; [CPU_ALU] |510| 
        ADDB      AL,#-2                ; [CPU_ALU] |510| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |510| 
        ADD       AL,*-SP[8]            ; [CPU_ALU] |510| 
        ADDB      AL,#5                 ; [CPU_ALU] |510| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |510| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 523,column 9,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |523| 
        ANDB      AL,#0x01              ; [CPU_ALU] |523| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |523| 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 526,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[7]           ; [CPU_ALU] |526| 
        MOV       T,*-SP[6]             ; [CPU_ALU] |526| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |526| 
        ADDB      ACC,#16               ; [CPU_ALU] |526| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |526| 
        MOVB      AL,#1                 ; [CPU_ALU] |526| 
        LSL       AL,T                  ; [CPU_ALU] |526| 
        NOT       AL                    ; [CPU_ALU] |526| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |526| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 527,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$348, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$348, DW_AT_TI_end_line(0x20f)
	.dwattr $C$DW$348, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$348

	.sect	".text:McBSP_enableTxChannel"
	.clink
	.global	||McBSP_enableTxChannel||

$C$DW$360	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$360, DW_AT_name("McBSP_enableTxChannel")
	.dwattr $C$DW$360, DW_AT_low_pc(||McBSP_enableTxChannel||)
	.dwattr $C$DW$360, DW_AT_high_pc(0x00)
	.dwattr $C$DW$360, DW_AT_linkage_name("McBSP_enableTxChannel")
	.dwattr $C$DW$360, DW_AT_external
	.dwattr $C$DW$360, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$360, DW_AT_decl_line(0x216)
	.dwattr $C$DW$360, DW_AT_decl_column(0x06)
	.dwattr $C$DW$360, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 537,column 1,is_stmt,address ||McBSP_enableTxChannel||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_enableTxChannel||
$C$DW$361	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$361, DW_AT_name("base")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg0]

$C$DW$362	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$362, DW_AT_name("partition")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg12]

$C$DW$363	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$363, DW_AT_name("channel")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: McBSP_enableTxChannel         FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||McBSP_enableTxChannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$364	.dwtag  DW_TAG_variable
	.dwattr $C$DW$364, DW_AT_name("base")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_breg20 -2]

$C$DW$365	.dwtag  DW_TAG_variable
	.dwattr $C$DW$365, DW_AT_name("partition")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_breg20 -3]

$C$DW$366	.dwtag  DW_TAG_variable
	.dwattr $C$DW$366, DW_AT_name("channel")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_breg20 -4]

$C$DW$367	.dwtag  DW_TAG_variable
	.dwattr $C$DW$367, DW_AT_name("block")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_breg20 -5]

$C$DW$368	.dwtag  DW_TAG_variable
	.dwattr $C$DW$368, DW_AT_name("bitOffset")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_breg20 -6]

$C$DW$369	.dwtag  DW_TAG_variable
	.dwattr $C$DW$369, DW_AT_name("registerOffset")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_breg20 -7]

$C$DW$370	.dwtag  DW_TAG_variable
	.dwattr $C$DW$370, DW_AT_name("oddBlock")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_breg20 -8]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |537| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |537| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |537| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 552,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |552| 
        LSR       AL,4                  ; [CPU_ALU] |552| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |552| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 557,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |557| 
        MOV       ACC,*-SP[5] << #4     ; [CPU_ALU] |557| 
        SUB       AR6,AL                ; [CPU_ALU] |557| 
        MOV       *-SP[6],AR6           ; [CPU_ALU] |557| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 562,column 5,is_stmt,isa 0
        MOV       AL,#512               ; [CPU_ALU] |562| 
        CMP       AL,*-SP[3]            ; [CPU_ALU] |562| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |562| 
        ; branchcc occurs ; [] |562| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 567,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |567| 
        CMPB      AL,#32                ; [CPU_ALU] |567| 
        B         ||$C$L28||,HIS        ; [CPU_ALU] |567| 
        ; branchcc occurs ; [] |567| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 572,column 13,is_stmt,isa 0
        LSR       AL,4                  ; [CPU_ALU] |572| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |572| 
        B         ||$C$L30||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 584,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |584| 
        ANDB      AL,#0x01              ; [CPU_ALU] |584| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |584| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 585,column 13,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |585| 
        SUB       AL,*-SP[8]            ; [CPU_ALU] |585| 
        ADDB      AL,#-2                ; [CPU_ALU] |585| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |585| 
        ADD       AL,*-SP[8]            ; [CPU_ALU] |585| 
        ADDB      AL,#5                 ; [CPU_ALU] |585| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |585| 
        B         ||$C$L30||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 598,column 9,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |598| 
        ANDB      AL,#0x01              ; [CPU_ALU] |598| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |598| 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 601,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[7]           ; [CPU_ALU] |601| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |601| 
        ADDB      ACC,#16               ; [CPU_ALU] |601| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |601| 
        MOV       T,*-SP[6]             ; [CPU_ALU] |601| 
        MOVB      AL,#1                 ; [CPU_ALU] |601| 
        LSL       AL,T                  ; [CPU_ALU] |601| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |601| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 602,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$360, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$360, DW_AT_TI_end_line(0x25a)
	.dwattr $C$DW$360, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$360

	.sect	".text:McBSP_configureTxClock"
	.clink
	.global	||McBSP_configureTxClock||

$C$DW$372	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$372, DW_AT_name("McBSP_configureTxClock")
	.dwattr $C$DW$372, DW_AT_low_pc(||McBSP_configureTxClock||)
	.dwattr $C$DW$372, DW_AT_high_pc(0x00)
	.dwattr $C$DW$372, DW_AT_linkage_name("McBSP_configureTxClock")
	.dwattr $C$DW$372, DW_AT_external
	.dwattr $C$DW$372, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$372, DW_AT_decl_line(0x262)
	.dwattr $C$DW$372, DW_AT_decl_column(0x01)
	.dwattr $C$DW$372, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 611,column 1,is_stmt,address ||McBSP_configureTxClock||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureTxClock||
$C$DW$373	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$373, DW_AT_name("base")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg0]

$C$DW$374	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$374, DW_AT_name("ptrClockParams")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureTxClock        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureTxClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$375	.dwtag  DW_TAG_variable
	.dwattr $C$DW$375, DW_AT_name("base")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_breg20 -2]

$C$DW$376	.dwtag  DW_TAG_variable
	.dwattr $C$DW$376, DW_AT_name("ptrClockParams")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |611| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |611| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 620,column 5,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[2]         ; [CPU_ALU] |620| 
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("McBSP_setTxClockSource")
	.dwattr $C$DW$377, DW_AT_TI_call

        LCR       #||McBSP_setTxClockSource|| ; [CPU_ALU] |620| 
        ; call occurs [#||McBSP_setTxClockSource||] ; [] |620| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 626,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |626| 
        MOV       AL,#512               ; [CPU_ALU] |626| 
        CMP       AL,*+XAR4[2]          ; [CPU_ALU] |626| 
        B         ||$C$L33||,NEQ        ; [CPU_ALU] |626| 
        ; branchcc occurs ; [] |626| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 632,column 9,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[5]         ; [CPU_ALU] |632| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |632| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("McBSP_setTxSRGClockSource")
	.dwattr $C$DW$378, DW_AT_TI_call

        LCR       #||McBSP_setTxSRGClockSource|| ; [CPU_ALU] |632| 
        ; call occurs [#||McBSP_setTxSRGClockSource||] ; [] |632| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 639,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |639| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |639| 
        CMPB      AL,#2                 ; [CPU_ALU] |639| 
        B         ||$C$L32||,NEQ        ; [CPU_ALU] |639| 
        ; branchcc occurs ; [] |639| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 645,column 13,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[7]         ; [CPU_ALU] |645| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |645| 
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("McBSP_setRxClockPolarity")
	.dwattr $C$DW$379, DW_AT_TI_call

        LCR       #||McBSP_setRxClockPolarity|| ; [CPU_ALU] |645| 
        ; call occurs [#||McBSP_setRxClockPolarity||] ; [] |645| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 652,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |652| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |652| 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |652| 
        ; branchcc occurs ; [] |652| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 654,column 17,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |654| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("McBSP_enableSRGSyncFSR")
	.dwattr $C$DW$380, DW_AT_TI_call

        LCR       #||McBSP_enableSRGSyncFSR|| ; [CPU_ALU] |654| 
        ; call occurs [#||McBSP_enableSRGSyncFSR||] ; [] |654| 
        B         ||$C$L32||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 658,column 17,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |658| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("McBSP_disableSRGSyncFSR")
	.dwattr $C$DW$381, DW_AT_TI_call

        LCR       #||McBSP_disableSRGSyncFSR|| ; [CPU_ALU] |658| 
        ; call occurs [#||McBSP_disableSRGSyncFSR||] ; [] |658| 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 665,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |665| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |665| 
        MOVZ      AR4,*+XAR4[1]         ; [CPU_ALU] |665| 
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("McBSP_setSRGDataClockDivider")
	.dwattr $C$DW$382, DW_AT_TI_call

        LCR       #||McBSP_setSRGDataClockDivider|| ; [CPU_ALU] |665| 
        ; call occurs [#||McBSP_setSRGDataClockDivider||] ; [] |665| 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 673,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |673| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |673| 
        MOVZ      AR4,*+XAR4[6]         ; [CPU_ALU] |673| 
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("McBSP_setTxClockPolarity")
	.dwattr $C$DW$383, DW_AT_TI_call

        LCR       #||McBSP_setTxClockPolarity|| ; [CPU_ALU] |673| 
        ; call occurs [#||McBSP_setTxClockPolarity||] ; [] |673| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 675,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$372, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$372, DW_AT_TI_end_line(0x2a3)
	.dwattr $C$DW$372, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$372

	.sect	".text:McBSP_configureRxClock"
	.clink
	.global	||McBSP_configureRxClock||

$C$DW$385	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$385, DW_AT_name("McBSP_configureRxClock")
	.dwattr $C$DW$385, DW_AT_low_pc(||McBSP_configureRxClock||)
	.dwattr $C$DW$385, DW_AT_high_pc(0x00)
	.dwattr $C$DW$385, DW_AT_linkage_name("McBSP_configureRxClock")
	.dwattr $C$DW$385, DW_AT_external
	.dwattr $C$DW$385, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$385, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$385, DW_AT_decl_column(0x01)
	.dwattr $C$DW$385, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 684,column 1,is_stmt,address ||McBSP_configureRxClock||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureRxClock||
$C$DW$386	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$386, DW_AT_name("base")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg0]

$C$DW$387	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$387, DW_AT_name("ptrClockParams")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureRxClock        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureRxClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$388	.dwtag  DW_TAG_variable
	.dwattr $C$DW$388, DW_AT_name("base")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_breg20 -2]

$C$DW$389	.dwtag  DW_TAG_variable
	.dwattr $C$DW$389, DW_AT_name("ptrClockParams")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |684| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |684| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 693,column 5,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[3]         ; [CPU_ALU] |693| 
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("McBSP_setRxClockSource")
	.dwattr $C$DW$390, DW_AT_TI_call

        LCR       #||McBSP_setRxClockSource|| ; [CPU_ALU] |693| 
        ; call occurs [#||McBSP_setRxClockSource||] ; [] |693| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 699,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |699| 
        MOV       AL,#256               ; [CPU_ALU] |699| 
        CMP       AL,*+XAR4[3]          ; [CPU_ALU] |699| 
        B         ||$C$L35||,NEQ        ; [CPU_ALU] |699| 
        ; branchcc occurs ; [] |699| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 705,column 9,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[4]         ; [CPU_ALU] |705| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |705| 
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("McBSP_setRxSRGClockSource")
	.dwattr $C$DW$391, DW_AT_TI_call

        LCR       #||McBSP_setRxSRGClockSource|| ; [CPU_ALU] |705| 
        ; call occurs [#||McBSP_setRxSRGClockSource||] ; [] |705| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 713,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |713| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |713| 
        CMPB      AL,#3                 ; [CPU_ALU] |713| 
        B         ||$C$L34||,NEQ        ; [CPU_ALU] |713| 
        ; branchcc occurs ; [] |713| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 719,column 13,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[6]         ; [CPU_ALU] |719| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |719| 
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("McBSP_setTxClockPolarity")
	.dwattr $C$DW$392, DW_AT_TI_call

        LCR       #||McBSP_setTxClockPolarity|| ; [CPU_ALU] |719| 
        ; call occurs [#||McBSP_setTxClockPolarity||] ; [] |719| 
||$C$L34||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 726,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |726| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |726| 
        MOVZ      AR4,*+XAR4[1]         ; [CPU_ALU] |726| 
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("McBSP_setSRGDataClockDivider")
	.dwattr $C$DW$393, DW_AT_TI_call

        LCR       #||McBSP_setSRGDataClockDivider|| ; [CPU_ALU] |726| 
        ; call occurs [#||McBSP_setSRGDataClockDivider||] ; [] |726| 
||$C$L35||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 734,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |734| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |734| 
        MOVZ      AR4,*+XAR4[7]         ; [CPU_ALU] |734| 
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("McBSP_setRxClockPolarity")
	.dwattr $C$DW$394, DW_AT_TI_call

        LCR       #||McBSP_setRxClockPolarity|| ; [CPU_ALU] |734| 
        ; call occurs [#||McBSP_setRxClockPolarity||] ; [] |734| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 736,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$385, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$385, DW_AT_TI_end_line(0x2e0)
	.dwattr $C$DW$385, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$385

	.sect	".text:McBSP_configureTxFrameSync"
	.clink
	.global	||McBSP_configureTxFrameSync||

$C$DW$396	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$396, DW_AT_name("McBSP_configureTxFrameSync")
	.dwattr $C$DW$396, DW_AT_low_pc(||McBSP_configureTxFrameSync||)
	.dwattr $C$DW$396, DW_AT_high_pc(0x00)
	.dwattr $C$DW$396, DW_AT_linkage_name("McBSP_configureTxFrameSync")
	.dwattr $C$DW$396, DW_AT_external
	.dwattr $C$DW$396, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$396, DW_AT_decl_line(0x2e8)
	.dwattr $C$DW$396, DW_AT_decl_column(0x01)
	.dwattr $C$DW$396, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 746,column 1,is_stmt,address ||McBSP_configureTxFrameSync||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureTxFrameSync||
$C$DW$397	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$397, DW_AT_name("base")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg0]

$C$DW$398	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$398, DW_AT_name("ptrFsyncParams")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureTxFrameSync    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureTxFrameSync||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$399	.dwtag  DW_TAG_variable
	.dwattr $C$DW$399, DW_AT_name("base")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_breg20 -2]

$C$DW$400	.dwtag  DW_TAG_variable
	.dwattr $C$DW$400, DW_AT_name("ptrFsyncParams")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |746| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |746| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 755,column 5,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[4]         ; [CPU_ALU] |755| 
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_name("McBSP_setTxFrameSyncSource")
	.dwattr $C$DW$401, DW_AT_TI_call

        LCR       #||McBSP_setTxFrameSyncSource|| ; [CPU_ALU] |755| 
        ; call occurs [#||McBSP_setTxFrameSyncSource||] ; [] |755| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 761,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |761| 
        MOV       AL,#2048              ; [CPU_ALU] |761| 
        CMP       AL,*+XAR4[4]          ; [CPU_ALU] |761| 
        B         ||$C$L36||,NEQ        ; [CPU_ALU] |761| 
        ; branchcc occurs ; [] |761| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 767,column 9,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[5]         ; [CPU_ALU] |767| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |767| 
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_name("McBSP_setTxInternalFrameSyncSource")
	.dwattr $C$DW$402, DW_AT_TI_call

        LCR       #||McBSP_setTxInternalFrameSyncSource|| ; [CPU_ALU] |767| 
        ; call occurs [#||McBSP_setTxInternalFrameSyncSource||] ; [] |767| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 774,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |774| 
        MOV       AL,#4096              ; [CPU_ALU] |774| 
        CMP       AL,*+XAR4[5]          ; [CPU_ALU] |774| 
        B         ||$C$L36||,NEQ        ; [CPU_ALU] |774| 
        ; branchcc occurs ; [] |774| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |774| 
        B         ||$C$L36||,NEQ        ; [CPU_ALU] |774| 
        ; branchcc occurs ; [] |774| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 781,column 13,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[2]         ; [CPU_ALU] |781| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |781| 
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_name("McBSP_setFrameSyncPulsePeriod")
	.dwattr $C$DW$403, DW_AT_TI_call

        LCR       #||McBSP_setFrameSyncPulsePeriod|| ; [CPU_ALU] |781| 
        ; call occurs [#||McBSP_setFrameSyncPulsePeriod||] ; [] |781| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 783,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |783| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |783| 
        MOVZ      AR4,*+XAR4[3]         ; [CPU_ALU] |783| 
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_name("McBSP_setFrameSyncPulseWidthDivider")
	.dwattr $C$DW$404, DW_AT_TI_call

        LCR       #||McBSP_setFrameSyncPulseWidthDivider|| ; [CPU_ALU] |783| 
        ; call occurs [#||McBSP_setFrameSyncPulseWidthDivider||] ; [] |783| 
||$C$L36||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 791,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |791| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |791| 
        MOVZ      AR4,*+XAR4[6]         ; [CPU_ALU] |791| 
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_name("McBSP_setTxFrameSyncPolarity")
	.dwattr $C$DW$405, DW_AT_TI_call

        LCR       #||McBSP_setTxFrameSyncPolarity|| ; [CPU_ALU] |791| 
        ; call occurs [#||McBSP_setTxFrameSyncPolarity||] ; [] |791| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 797,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |797| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |797| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |797| 
        ; branchcc occurs ; [] |797| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 799,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |799| 
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_name("McBSP_enableTxFrameSyncErrorDetection")
	.dwattr $C$DW$406, DW_AT_TI_call

        LCR       #||McBSP_enableTxFrameSyncErrorDetection|| ; [CPU_ALU] |799| 
        ; call occurs [#||McBSP_enableTxFrameSyncErrorDetection||] ; [] |799| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 803,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |803| 
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("McBSP_disableTxFrameSyncErrorDetection")
	.dwattr $C$DW$407, DW_AT_TI_call

        LCR       #||McBSP_disableTxFrameSyncErrorDetection|| ; [CPU_ALU] |803| 
        ; call occurs [#||McBSP_disableTxFrameSyncErrorDetection||] ; [] |803| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 805,column 1,is_stmt,isa 0
||$C$L38||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$396, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$396, DW_AT_TI_end_line(0x325)
	.dwattr $C$DW$396, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$396

	.sect	".text:McBSP_configureRxFrameSync"
	.clink
	.global	||McBSP_configureRxFrameSync||

$C$DW$409	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$409, DW_AT_name("McBSP_configureRxFrameSync")
	.dwattr $C$DW$409, DW_AT_low_pc(||McBSP_configureRxFrameSync||)
	.dwattr $C$DW$409, DW_AT_high_pc(0x00)
	.dwattr $C$DW$409, DW_AT_linkage_name("McBSP_configureRxFrameSync")
	.dwattr $C$DW$409, DW_AT_external
	.dwattr $C$DW$409, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$409, DW_AT_decl_line(0x32d)
	.dwattr $C$DW$409, DW_AT_decl_column(0x01)
	.dwattr $C$DW$409, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 815,column 1,is_stmt,address ||McBSP_configureRxFrameSync||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureRxFrameSync||
$C$DW$410	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$410, DW_AT_name("base")
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$410, DW_AT_location[DW_OP_reg0]

$C$DW$411	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$411, DW_AT_name("ptrFsyncParams")
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$411, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureRxFrameSync    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureRxFrameSync||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$412	.dwtag  DW_TAG_variable
	.dwattr $C$DW$412, DW_AT_name("base")
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$412, DW_AT_location[DW_OP_breg20 -2]

$C$DW$413	.dwtag  DW_TAG_variable
	.dwattr $C$DW$413, DW_AT_name("ptrFsyncParams")
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$413, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |815| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |815| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 824,column 5,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[4]         ; [CPU_ALU] |824| 
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("McBSP_setRxFrameSyncSource")
	.dwattr $C$DW$414, DW_AT_TI_call

        LCR       #||McBSP_setRxFrameSyncSource|| ; [CPU_ALU] |824| 
        ; call occurs [#||McBSP_setRxFrameSyncSource||] ; [] |824| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 830,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |830| 
        MOV       AL,#1024              ; [CPU_ALU] |830| 
        CMP       AL,*+XAR4[4]          ; [CPU_ALU] |830| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |830| 
        ; branchcc occurs ; [] |830| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 836,column 9,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |836| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |836| 
        ; branchcc occurs ; [] |836| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 841,column 13,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[2]         ; [CPU_ALU] |841| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |841| 
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("McBSP_setFrameSyncPulsePeriod")
	.dwattr $C$DW$415, DW_AT_TI_call

        LCR       #||McBSP_setFrameSyncPulsePeriod|| ; [CPU_ALU] |841| 
        ; call occurs [#||McBSP_setFrameSyncPulsePeriod||] ; [] |841| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 843,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |843| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |843| 
        MOVZ      AR4,*+XAR4[3]         ; [CPU_ALU] |843| 
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("McBSP_setFrameSyncPulseWidthDivider")
	.dwattr $C$DW$416, DW_AT_TI_call

        LCR       #||McBSP_setFrameSyncPulseWidthDivider|| ; [CPU_ALU] |843| 
        ; call occurs [#||McBSP_setFrameSyncPulseWidthDivider||] ; [] |843| 
||$C$L39||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 851,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |851| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |851| 
        MOVZ      AR4,*+XAR4[5]         ; [CPU_ALU] |851| 
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("McBSP_setRxFrameSyncPolarity")
	.dwattr $C$DW$417, DW_AT_TI_call

        LCR       #||McBSP_setRxFrameSyncPolarity|| ; [CPU_ALU] |851| 
        ; call occurs [#||McBSP_setRxFrameSyncPolarity||] ; [] |851| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 857,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |857| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |857| 
        B         ||$C$L40||,EQ         ; [CPU_ALU] |857| 
        ; branchcc occurs ; [] |857| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 859,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |859| 
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("McBSP_enableRxFrameSyncErrorDetection")
	.dwattr $C$DW$418, DW_AT_TI_call

        LCR       #||McBSP_enableRxFrameSyncErrorDetection|| ; [CPU_ALU] |859| 
        ; call occurs [#||McBSP_enableRxFrameSyncErrorDetection||] ; [] |859| 
        B         ||$C$L41||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L40||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 863,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |863| 
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("McBSP_disableTxFrameSyncErrorDetection")
	.dwattr $C$DW$419, DW_AT_TI_call

        LCR       #||McBSP_disableTxFrameSyncErrorDetection|| ; [CPU_ALU] |863| 
        ; call occurs [#||McBSP_disableTxFrameSyncErrorDetection||] ; [] |863| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 865,column 1,is_stmt,isa 0
||$C$L41||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$409, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$409, DW_AT_TI_end_line(0x361)
	.dwattr $C$DW$409, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$409

	.sect	".text:McBSP_configureTxDataFormat"
	.clink
	.global	||McBSP_configureTxDataFormat||

$C$DW$421	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$421, DW_AT_name("McBSP_configureTxDataFormat")
	.dwattr $C$DW$421, DW_AT_low_pc(||McBSP_configureTxDataFormat||)
	.dwattr $C$DW$421, DW_AT_high_pc(0x00)
	.dwattr $C$DW$421, DW_AT_linkage_name("McBSP_configureTxDataFormat")
	.dwattr $C$DW$421, DW_AT_external
	.dwattr $C$DW$421, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$421, DW_AT_decl_line(0x369)
	.dwattr $C$DW$421, DW_AT_decl_column(0x01)
	.dwattr $C$DW$421, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 875,column 1,is_stmt,address ||McBSP_configureTxDataFormat||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureTxDataFormat||
$C$DW$422	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$422, DW_AT_name("base")
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$422, DW_AT_location[DW_OP_reg0]

$C$DW$423	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$423, DW_AT_name("ptrDataParams")
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$423, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureTxDataFormat   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureTxDataFormat||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$424	.dwtag  DW_TAG_variable
	.dwattr $C$DW$424, DW_AT_name("base")
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$424, DW_AT_location[DW_OP_breg20 -4]

$C$DW$425	.dwtag  DW_TAG_variable
	.dwattr $C$DW$425, DW_AT_name("ptrDataParams")
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$425, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |875| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |875| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 884,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |884| 
        B         ||$C$L42||,EQ         ; [CPU_ALU] |884| 
        ; branchcc occurs ; [] |884| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 886,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |886| 
$C$DW$426	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$426, DW_AT_low_pc(0x00)
	.dwattr $C$DW$426, DW_AT_name("McBSP_enableLoopback")
	.dwattr $C$DW$426, DW_AT_TI_call

        LCR       #||McBSP_enableLoopback|| ; [CPU_ALU] |886| 
        ; call occurs [#||McBSP_enableLoopback||] ; [] |886| 
        B         ||$C$L43||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L42||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 890,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |890| 
$C$DW$427	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$427, DW_AT_low_pc(0x00)
	.dwattr $C$DW$427, DW_AT_name("McBSP_disableLoopback")
	.dwattr $C$DW$427, DW_AT_TI_call

        LCR       #||McBSP_disableLoopback|| ; [CPU_ALU] |890| 
        ; call occurs [#||McBSP_disableLoopback||] ; [] |890| 
||$C$L43||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 896,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |896| 
        MOVB      XAR4,#0               ; [CPU_ALU] |896| 
$C$DW$428	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$428, DW_AT_low_pc(0x00)
	.dwattr $C$DW$428, DW_AT_name("McBSP_setClockStopMode")
	.dwattr $C$DW$428, DW_AT_TI_call

        LCR       #||McBSP_setClockStopMode|| ; [CPU_ALU] |896| 
        ; call occurs [#||McBSP_setClockStopMode||] ; [] |896| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 901,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |901| 
        MOV       AL,*+XAR4[3]          ; [CPU_ALU] |901| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |901| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |901| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |901| 
        MOVZ      AR5,*+XAR4[6]         ; [CPU_ALU] |901| 
        MOVB      XAR4,#0               ; [CPU_ALU] |901| 
$C$DW$429	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$429, DW_AT_low_pc(0x00)
	.dwattr $C$DW$429, DW_AT_name("McBSP_setTxDataSize")
	.dwattr $C$DW$429, DW_AT_TI_call

        LCR       #||McBSP_setTxDataSize|| ; [CPU_ALU] |901| 
        ; call occurs [#||McBSP_setTxDataSize||] ; [] |901| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 908,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |908| 
$C$DW$430	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$430, DW_AT_low_pc(0x00)
	.dwattr $C$DW$430, DW_AT_name("McBSP_disableTwoPhaseTx")
	.dwattr $C$DW$430, DW_AT_TI_call

        LCR       #||McBSP_disableTwoPhaseTx|| ; [CPU_ALU] |908| 
        ; call occurs [#||McBSP_disableTwoPhaseTx||] ; [] |908| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 913,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |913| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |913| 
        B         ||$C$L44||,EQ         ; [CPU_ALU] |913| 
        ; branchcc occurs ; [] |913| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 918,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |918| 
$C$DW$431	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$431, DW_AT_low_pc(0x00)
	.dwattr $C$DW$431, DW_AT_name("McBSP_enableTwoPhaseTx")
	.dwattr $C$DW$431, DW_AT_TI_call

        LCR       #||McBSP_enableTwoPhaseTx|| ; [CPU_ALU] |918| 
        ; call occurs [#||McBSP_enableTwoPhaseTx||] ; [] |918| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 923,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |923| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |923| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |923| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |923| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |923| 
        MOVZ      AR5,*+XAR4[7]         ; [CPU_ALU] |923| 
        MOVB      XAR4,#1               ; [CPU_ALU] |923| 
$C$DW$432	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$432, DW_AT_low_pc(0x00)
	.dwattr $C$DW$432, DW_AT_name("McBSP_setTxDataSize")
	.dwattr $C$DW$432, DW_AT_TI_call

        LCR       #||McBSP_setTxDataSize|| ; [CPU_ALU] |923| 
        ; call occurs [#||McBSP_setTxDataSize||] ; [] |923| 
||$C$L44||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 931,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |931| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |931| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |931| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |931| 
        MOVZ      AR4,*+XAR4[0]         ; [CPU_ALU] |931| 
$C$DW$433	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$433, DW_AT_low_pc(0x00)
	.dwattr $C$DW$433, DW_AT_name("McBSP_setTxCompandingMode")
	.dwattr $C$DW$433, DW_AT_TI_call

        LCR       #||McBSP_setTxCompandingMode|| ; [CPU_ALU] |931| 
        ; call occurs [#||McBSP_setTxCompandingMode||] ; [] |931| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 937,column 5,is_stmt,isa 0
        MOVB      ACC,#9                ; [CPU_ALU] |937| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |937| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |937| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |937| 
        MOVZ      AR4,*+XAR4[0]         ; [CPU_ALU] |937| 
$C$DW$434	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$434, DW_AT_low_pc(0x00)
	.dwattr $C$DW$434, DW_AT_name("McBSP_setTxDataDelayBits")
	.dwattr $C$DW$434, DW_AT_TI_call

        LCR       #||McBSP_setTxDataDelayBits|| ; [CPU_ALU] |937| 
        ; call occurs [#||McBSP_setTxDataDelayBits||] ; [] |937| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 943,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |943| 
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |943| 
        B         ||$C$L45||,EQ         ; [CPU_ALU] |943| 
        ; branchcc occurs ; [] |943| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 945,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |945| 
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_name("McBSP_enableDxPinDelay")
	.dwattr $C$DW$435, DW_AT_TI_call

        LCR       #||McBSP_enableDxPinDelay|| ; [CPU_ALU] |945| 
        ; call occurs [#||McBSP_enableDxPinDelay||] ; [] |945| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L45||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 949,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |949| 
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("McBSP_disableDxPinDelay")
	.dwattr $C$DW$436, DW_AT_TI_call

        LCR       #||McBSP_disableDxPinDelay|| ; [CPU_ALU] |949| 
        ; call occurs [#||McBSP_disableDxPinDelay||] ; [] |949| 
||$C$L46||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 955,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |955| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |955| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |955| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |955| 
        MOVZ      AR4,*+XAR4[0]         ; [CPU_ALU] |955| 
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("McBSP_setTxInterruptSource")
	.dwattr $C$DW$437, DW_AT_TI_call

        LCR       #||McBSP_setTxInterruptSource|| ; [CPU_ALU] |955| 
        ; call occurs [#||McBSP_setTxInterruptSource||] ; [] |955| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 957,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$421, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$421, DW_AT_TI_end_line(0x3bd)
	.dwattr $C$DW$421, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$421

	.sect	".text:McBSP_configureRxDataFormat"
	.clink
	.global	||McBSP_configureRxDataFormat||

$C$DW$439	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$439, DW_AT_name("McBSP_configureRxDataFormat")
	.dwattr $C$DW$439, DW_AT_low_pc(||McBSP_configureRxDataFormat||)
	.dwattr $C$DW$439, DW_AT_high_pc(0x00)
	.dwattr $C$DW$439, DW_AT_linkage_name("McBSP_configureRxDataFormat")
	.dwattr $C$DW$439, DW_AT_external
	.dwattr $C$DW$439, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$439, DW_AT_decl_line(0x3c5)
	.dwattr $C$DW$439, DW_AT_decl_column(0x01)
	.dwattr $C$DW$439, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 967,column 1,is_stmt,address ||McBSP_configureRxDataFormat||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureRxDataFormat||
$C$DW$440	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$440, DW_AT_name("base")
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$440, DW_AT_location[DW_OP_reg0]

$C$DW$441	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$441, DW_AT_name("ptrDataParams")
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$441, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureRxDataFormat   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureRxDataFormat||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$442	.dwtag  DW_TAG_variable
	.dwattr $C$DW$442, DW_AT_name("base")
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$442, DW_AT_location[DW_OP_breg20 -4]

$C$DW$443	.dwtag  DW_TAG_variable
	.dwattr $C$DW$443, DW_AT_name("ptrDataParams")
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$443, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |967| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |967| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 976,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |976| 
        B         ||$C$L47||,EQ         ; [CPU_ALU] |976| 
        ; branchcc occurs ; [] |976| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 978,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |978| 
$C$DW$444	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$444, DW_AT_low_pc(0x00)
	.dwattr $C$DW$444, DW_AT_name("McBSP_enableLoopback")
	.dwattr $C$DW$444, DW_AT_TI_call

        LCR       #||McBSP_enableLoopback|| ; [CPU_ALU] |978| 
        ; call occurs [#||McBSP_enableLoopback||] ; [] |978| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L47||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 982,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |982| 
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_name("McBSP_disableLoopback")
	.dwattr $C$DW$445, DW_AT_TI_call

        LCR       #||McBSP_disableLoopback|| ; [CPU_ALU] |982| 
        ; call occurs [#||McBSP_disableLoopback||] ; [] |982| 
||$C$L48||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 988,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |988| 
        MOVB      XAR4,#0               ; [CPU_ALU] |988| 
$C$DW$446	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$446, DW_AT_low_pc(0x00)
	.dwattr $C$DW$446, DW_AT_name("McBSP_setClockStopMode")
	.dwattr $C$DW$446, DW_AT_TI_call

        LCR       #||McBSP_setClockStopMode|| ; [CPU_ALU] |988| 
        ; call occurs [#||McBSP_setClockStopMode||] ; [] |988| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 993,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |993| 
        MOV       AL,*+XAR4[2]          ; [CPU_ALU] |993| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |993| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |993| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |993| 
        MOVZ      AR5,*+XAR4[5]         ; [CPU_ALU] |993| 
        MOVB      XAR4,#0               ; [CPU_ALU] |993| 
$C$DW$447	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$447, DW_AT_low_pc(0x00)
	.dwattr $C$DW$447, DW_AT_name("McBSP_setRxDataSize")
	.dwattr $C$DW$447, DW_AT_TI_call

        LCR       #||McBSP_setRxDataSize|| ; [CPU_ALU] |993| 
        ; call occurs [#||McBSP_setRxDataSize||] ; [] |993| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1000,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1000| 
$C$DW$448	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$448, DW_AT_low_pc(0x00)
	.dwattr $C$DW$448, DW_AT_name("McBSP_disableTwoPhaseRx")
	.dwattr $C$DW$448, DW_AT_TI_call

        LCR       #||McBSP_disableTwoPhaseRx|| ; [CPU_ALU] |1000| 
        ; call occurs [#||McBSP_disableTwoPhaseRx||] ; [] |1000| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1005,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1005| 
        MOV       AL,*+XAR4[1]          ; [CPU_ALU] |1005| 
        B         ||$C$L49||,EQ         ; [CPU_ALU] |1005| 
        ; branchcc occurs ; [] |1005| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1010,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1010| 
$C$DW$449	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$449, DW_AT_low_pc(0x00)
	.dwattr $C$DW$449, DW_AT_name("McBSP_enableTwoPhaseRx")
	.dwattr $C$DW$449, DW_AT_TI_call

        LCR       #||McBSP_enableTwoPhaseRx|| ; [CPU_ALU] |1010| 
        ; call occurs [#||McBSP_enableTwoPhaseRx||] ; [] |1010| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1015,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1015| 
        MOV       AL,*+XAR4[3]          ; [CPU_ALU] |1015| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |1015| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1015| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1015| 
        MOVZ      AR5,*+XAR4[6]         ; [CPU_ALU] |1015| 
        MOVB      XAR4,#1               ; [CPU_ALU] |1015| 
$C$DW$450	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$450, DW_AT_low_pc(0x00)
	.dwattr $C$DW$450, DW_AT_name("McBSP_setRxDataSize")
	.dwattr $C$DW$450, DW_AT_TI_call

        LCR       #||McBSP_setRxDataSize|| ; [CPU_ALU] |1015| 
        ; call occurs [#||McBSP_setRxDataSize||] ; [] |1015| 
||$C$L49||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1023,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1023| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1023| 
        MOVZ      AR4,*+XAR4[7]         ; [CPU_ALU] |1023| 
$C$DW$451	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$451, DW_AT_low_pc(0x00)
	.dwattr $C$DW$451, DW_AT_name("McBSP_setRxCompandingMode")
	.dwattr $C$DW$451, DW_AT_TI_call

        LCR       #||McBSP_setRxCompandingMode|| ; [CPU_ALU] |1023| 
        ; call occurs [#||McBSP_setRxCompandingMode||] ; [] |1023| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1029,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1029| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |1029| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1029| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1029| 
        MOVZ      AR4,*+XAR4[0]         ; [CPU_ALU] |1029| 
$C$DW$452	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$452, DW_AT_low_pc(0x00)
	.dwattr $C$DW$452, DW_AT_name("McBSP_setRxDataDelayBits")
	.dwattr $C$DW$452, DW_AT_TI_call

        LCR       #||McBSP_setRxDataDelayBits|| ; [CPU_ALU] |1029| 
        ; call occurs [#||McBSP_setRxDataDelayBits||] ; [] |1029| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1035,column 5,is_stmt,isa 0
        MOVB      ACC,#9                ; [CPU_ALU] |1035| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |1035| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1035| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1035| 
        MOVZ      AR4,*+XAR4[0]         ; [CPU_ALU] |1035| 
$C$DW$453	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$453, DW_AT_low_pc(0x00)
	.dwattr $C$DW$453, DW_AT_name("McBSP_setRxSignExtension")
	.dwattr $C$DW$453, DW_AT_TI_call

        LCR       #||McBSP_setRxSignExtension|| ; [CPU_ALU] |1035| 
        ; call occurs [#||McBSP_setRxSignExtension||] ; [] |1035| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1041,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |1041| 
        ADDL      ACC,*-SP[6]           ; [CPU_ALU] |1041| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1041| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1041| 
        MOVZ      AR4,*+XAR4[0]         ; [CPU_ALU] |1041| 
$C$DW$454	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$454, DW_AT_low_pc(0x00)
	.dwattr $C$DW$454, DW_AT_name("McBSP_setRxInterruptSource")
	.dwattr $C$DW$454, DW_AT_TI_call

        LCR       #||McBSP_setRxInterruptSource|| ; [CPU_ALU] |1041| 
        ; call occurs [#||McBSP_setRxInterruptSource||] ; [] |1041| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1043,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$455	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$455, DW_AT_low_pc(0x00)
	.dwattr $C$DW$455, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$439, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$439, DW_AT_TI_end_line(0x413)
	.dwattr $C$DW$439, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$439

	.sect	".text:McBSP_configureTxMultichannel"
	.clink
	.global	||McBSP_configureTxMultichannel||

$C$DW$456	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$456, DW_AT_name("McBSP_configureTxMultichannel")
	.dwattr $C$DW$456, DW_AT_low_pc(||McBSP_configureTxMultichannel||)
	.dwattr $C$DW$456, DW_AT_high_pc(0x00)
	.dwattr $C$DW$456, DW_AT_linkage_name("McBSP_configureTxMultichannel")
	.dwattr $C$DW$456, DW_AT_external
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$456, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$456, DW_AT_decl_line(0x41b)
	.dwattr $C$DW$456, DW_AT_decl_column(0x01)
	.dwattr $C$DW$456, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1053,column 1,is_stmt,address ||McBSP_configureTxMultichannel||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureTxMultichannel||
$C$DW$457	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$457, DW_AT_name("base")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_reg0]

$C$DW$458	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$458, DW_AT_name("ptrMchnParams")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureTxMultichannel FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 11 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureTxMultichannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$459	.dwtag  DW_TAG_variable
	.dwattr $C$DW$459, DW_AT_name("base")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_breg20 -2]

$C$DW$460	.dwtag  DW_TAG_variable
	.dwattr $C$DW$460, DW_AT_name("ptrMchnParams")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_breg20 -4]

$C$DW$461	.dwtag  DW_TAG_variable
	.dwattr $C$DW$461, DW_AT_name("index")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_breg20 -5]

$C$DW$462	.dwtag  DW_TAG_variable
	.dwattr $C$DW$462, DW_AT_name("block")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_breg20 -6]

$C$DW$463	.dwtag  DW_TAG_variable
	.dwattr $C$DW$463, DW_AT_name("partitionAblock")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_breg20 -7]

$C$DW$464	.dwtag  DW_TAG_variable
	.dwattr $C$DW$464, DW_AT_name("partitionBblock")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_breg20 -8]

$C$DW$465	.dwtag  DW_TAG_variable
	.dwattr $C$DW$465, DW_AT_name("partitionAflag")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_breg20 -9]

$C$DW$466	.dwtag  DW_TAG_variable
	.dwattr $C$DW$466, DW_AT_name("partitionBflag")
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$466, DW_AT_location[DW_OP_breg20 -10]

$C$DW$467	.dwtag  DW_TAG_variable
	.dwattr $C$DW$467, DW_AT_name("errorTx")
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$467, DW_AT_location[DW_OP_breg20 -11]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |1053| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1053| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1062,column 5,is_stmt,isa 0
        MOV       *-SP[11],#0           ; [CPU_ALU] |1062| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1063,column 5,is_stmt,isa 0
        MOV       *-SP[7],#0            ; [CPU_ALU] |1063| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1064,column 5,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |1064| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1074,column 5,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[4]         ; [CPU_ALU] |1074| 
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_name("McBSP_setTxChannelMode")
	.dwattr $C$DW$468, DW_AT_TI_call

        LCR       #||McBSP_setTxChannelMode|| ; [CPU_ALU] |1074| 
        ; call occurs [#||McBSP_setTxChannelMode||] ; [] |1074| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1083,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1083| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1083| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |1083| 
        ; branchcc occurs ; [] |1083| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1089,column 9,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[5]         ; [CPU_ALU] |1089| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1089| 
$C$DW$469	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$469, DW_AT_low_pc(0x00)
	.dwattr $C$DW$469, DW_AT_name("McBSP_setTxMultichannelPartition")
	.dwattr $C$DW$469, DW_AT_TI_call

        LCR       #||McBSP_setTxMultichannelPartition|| ; [CPU_ALU] |1089| 
        ; call occurs [#||McBSP_setTxMultichannelPartition||] ; [] |1089| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1095,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1095| 
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_name("McBSP_disableTwoPhaseTx")
	.dwattr $C$DW$470, DW_AT_TI_call

        LCR       #||McBSP_disableTwoPhaseTx|| ; [CPU_ALU] |1095| 
        ; call occurs [#||McBSP_disableTwoPhaseTx||] ; [] |1095| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1100,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1100| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |1100| 
        B         ||$C$L59||,NEQ        ; [CPU_ALU] |1100| 
        ; branchcc occurs ; [] |1100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1103,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1103| 
        CMPB      AL,#32                ; [CPU_ALU] |1103| 
        B         ||$C$L50||,LOS        ; [CPU_ALU] |1103| 
        ; branchcc occurs ; [] |1103| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1105,column 17,is_stmt,isa 0
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |1105| 
||$C$L50||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1107,column 13,is_stmt,isa 0
        MOV       *-SP[9],#0            ; [CPU_ALU] |1107| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1108,column 13,is_stmt,isa 0
        MOV       *-SP[10],#0           ; [CPU_ALU] |1108| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1115,column 17,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |1115| 
        B         ||$C$L58||,UNC        ; [CPU_ALU] |1115| 
        ; branch occurs ; [] |1115| 
||$C$L51||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1121,column 17,is_stmt,isa 0
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1121| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1121| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |1121| 
        LSR       AL,4                  ; [CPU_ALU] |1121| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |1121| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1128,column 17,is_stmt,isa 0
        TBIT      *-SP[6],#0            ; [CPU_ALU] |1128| 
        B         ||$C$L54||,TC         ; [CPU_ALU] |1128| 
        ; branchcc occurs ; [] |1128| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1133,column 21,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |1133| 
        B         ||$C$L52||,NEQ        ; [CPU_ALU] |1133| 
        ; branchcc occurs ; [] |1133| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1138,column 25,is_stmt,isa 0
        MOVZ      AR4,*-SP[6]           ; [CPU_ALU] |1138| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1138| 
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_name("McBSP_setTxTwoPartitionBlock")
	.dwattr $C$DW$471, DW_AT_TI_call

        LCR       #||McBSP_setTxTwoPartitionBlock|| ; [CPU_ALU] |1138| 
        ; call occurs [#||McBSP_setTxTwoPartitionBlock||] ; [] |1138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1146,column 25,is_stmt,isa 0
        MOVB      *-SP[9],#1,UNC        ; [CPU_ALU] |1146| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1147,column 25,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |1147| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |1147| 
||$C$L52||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1154,column 21,is_stmt,isa 0
        MOVZ      AR6,*-SP[7]           ; [CPU_ALU] |1154| 
        MOVU      ACC,*-SP[6]           ; [CPU_ALU] |1154| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1154| 
        B         ||$C$L53||,NEQ        ; [CPU_ALU] |1154| 
        ; branchcc occurs ; [] |1154| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1160,column 25,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1160| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1160| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |1160| 
        ADD       AL,*+XAR4[0]          ; [CPU_ALU] |1160| 
        MOVZ      AR5,AL                ; [CPU_ALU] |1160| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1160| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1160| 
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_name("McBSP_enableTxChannel")
	.dwattr $C$DW$472, DW_AT_TI_call

        LCR       #||McBSP_enableTxChannel|| ; [CPU_ALU] |1160| 
        ; call occurs [#||McBSP_enableTxChannel||] ; [] |1160| 
        B         ||$C$L57||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L53||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1167,column 25,is_stmt,isa 0
        MOVB      *-SP[11],#2,UNC       ; [CPU_ALU] |1167| 
        B         ||$C$L57||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L54||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1180,column 21,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |1180| 
        B         ||$C$L55||,NEQ        ; [CPU_ALU] |1180| 
        ; branchcc occurs ; [] |1180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1185,column 25,is_stmt,isa 0
        MOVZ      AR4,*-SP[6]           ; [CPU_ALU] |1185| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1185| 
$C$DW$473	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$473, DW_AT_low_pc(0x00)
	.dwattr $C$DW$473, DW_AT_name("McBSP_setTxTwoPartitionBlock")
	.dwattr $C$DW$473, DW_AT_TI_call

        LCR       #||McBSP_setTxTwoPartitionBlock|| ; [CPU_ALU] |1185| 
        ; call occurs [#||McBSP_setTxTwoPartitionBlock||] ; [] |1185| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1193,column 25,is_stmt,isa 0
        MOVB      *-SP[10],#1,UNC       ; [CPU_ALU] |1193| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1194,column 25,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |1194| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |1194| 
||$C$L55||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1201,column 21,is_stmt,isa 0
        MOVZ      AR6,*-SP[8]           ; [CPU_ALU] |1201| 
        MOVU      ACC,*-SP[6]           ; [CPU_ALU] |1201| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1201| 
        B         ||$C$L56||,NEQ        ; [CPU_ALU] |1201| 
        ; branchcc occurs ; [] |1201| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1207,column 25,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1207| 
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1207| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1207| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1207| 
        MOVZ      AR5,*+XAR4[AR0]       ; [CPU_ALU] |1207| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1207| 
$C$DW$474	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$474, DW_AT_low_pc(0x00)
	.dwattr $C$DW$474, DW_AT_name("McBSP_enableTxChannel")
	.dwattr $C$DW$474, DW_AT_TI_call

        LCR       #||McBSP_enableTxChannel|| ; [CPU_ALU] |1207| 
        ; call occurs [#||McBSP_enableTxChannel||] ; [] |1207| 
        B         ||$C$L57||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L56||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1214,column 25,is_stmt,isa 0
        OR        *-SP[11],#0x0004      ; [CPU_ALU] |1214| 
||$C$L57||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1116,column 17,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |1116| 
||$C$L58||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1115,column 29,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1115| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1115| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |1115| 
        B         ||$C$L51||,HI         ; [CPU_ALU] |1115| 
        ; branchcc occurs ; [] |1115| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L59||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1225,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1225| 
        CMPB      AL,#128               ; [CPU_ALU] |1225| 
        B         ||$C$L60||,LOS        ; [CPU_ALU] |1225| 
        ; branchcc occurs ; [] |1225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1227,column 17,is_stmt,isa 0
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |1227| 
||$C$L60||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1229,column 17,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |1229| 
        B         ||$C$L62||,UNC        ; [CPU_ALU] |1229| 
        ; branch occurs ; [] |1229| 
||$C$L61||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1235,column 17,is_stmt,isa 0
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1235| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1235| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1235| 
        MOVZ      AR5,*+XAR4[AR0]       ; [CPU_ALU] |1235| 
        MOVL      XAR4,#512             ; [CPU_ALU] |1235| 
$C$DW$475	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$475, DW_AT_low_pc(0x00)
	.dwattr $C$DW$475, DW_AT_name("McBSP_enableTxChannel")
	.dwattr $C$DW$475, DW_AT_TI_call

        LCR       #||McBSP_enableTxChannel|| ; [CPU_ALU] |1235| 
        ; call occurs [#||McBSP_enableTxChannel||] ; [] |1235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1230,column 17,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |1230| 
||$C$L62||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1229,column 29,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1229| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1229| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |1229| 
        B         ||$C$L61||,HI         ; [CPU_ALU] |1229| 
        ; branchcc occurs ; [] |1229| 
||$C$L63||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1241,column 5,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |1241| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1242,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$456, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$456, DW_AT_TI_end_line(0x4da)
	.dwattr $C$DW$456, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$456

	.sect	".text:McBSP_configureRxMultichannel"
	.clink
	.global	||McBSP_configureRxMultichannel||

$C$DW$477	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$477, DW_AT_name("McBSP_configureRxMultichannel")
	.dwattr $C$DW$477, DW_AT_low_pc(||McBSP_configureRxMultichannel||)
	.dwattr $C$DW$477, DW_AT_high_pc(0x00)
	.dwattr $C$DW$477, DW_AT_linkage_name("McBSP_configureRxMultichannel")
	.dwattr $C$DW$477, DW_AT_external
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$477, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$477, DW_AT_decl_line(0x4e2)
	.dwattr $C$DW$477, DW_AT_decl_column(0x01)
	.dwattr $C$DW$477, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1252,column 1,is_stmt,address ||McBSP_configureRxMultichannel||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureRxMultichannel||
$C$DW$478	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$478, DW_AT_name("base")
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$478, DW_AT_location[DW_OP_reg0]

$C$DW$479	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$479, DW_AT_name("ptrMchnParams")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureRxMultichannel FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 11 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureRxMultichannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$480	.dwtag  DW_TAG_variable
	.dwattr $C$DW$480, DW_AT_name("base")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_breg20 -2]

$C$DW$481	.dwtag  DW_TAG_variable
	.dwattr $C$DW$481, DW_AT_name("ptrMchnParams")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_breg20 -4]

$C$DW$482	.dwtag  DW_TAG_variable
	.dwattr $C$DW$482, DW_AT_name("index")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_breg20 -5]

$C$DW$483	.dwtag  DW_TAG_variable
	.dwattr $C$DW$483, DW_AT_name("block")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_breg20 -6]

$C$DW$484	.dwtag  DW_TAG_variable
	.dwattr $C$DW$484, DW_AT_name("partitionAblock")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_breg20 -7]

$C$DW$485	.dwtag  DW_TAG_variable
	.dwattr $C$DW$485, DW_AT_name("partitionBblock")
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$485, DW_AT_location[DW_OP_breg20 -8]

$C$DW$486	.dwtag  DW_TAG_variable
	.dwattr $C$DW$486, DW_AT_name("partitionAflag")
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$486, DW_AT_location[DW_OP_breg20 -9]

$C$DW$487	.dwtag  DW_TAG_variable
	.dwattr $C$DW$487, DW_AT_name("partitionBflag")
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$487, DW_AT_location[DW_OP_breg20 -10]

$C$DW$488	.dwtag  DW_TAG_variable
	.dwattr $C$DW$488, DW_AT_name("errorRx")
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$488, DW_AT_location[DW_OP_breg20 -11]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |1252| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1252| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1261,column 5,is_stmt,isa 0
        MOV       *-SP[11],#0           ; [CPU_ALU] |1261| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1262,column 5,is_stmt,isa 0
        MOV       *-SP[7],#0            ; [CPU_ALU] |1262| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1263,column 5,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |1263| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1273,column 5,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[4]         ; [CPU_ALU] |1273| 
$C$DW$489	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$489, DW_AT_low_pc(0x00)
	.dwattr $C$DW$489, DW_AT_name("McBSP_setRxChannelMode")
	.dwattr $C$DW$489, DW_AT_TI_call

        LCR       #||McBSP_setRxChannelMode|| ; [CPU_ALU] |1273| 
        ; call occurs [#||McBSP_setRxChannelMode||] ; [] |1273| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1279,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1279| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1279| 
        MOVZ      AR4,*+XAR4[5]         ; [CPU_ALU] |1279| 
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_name("McBSP_setRxMultichannelPartition")
	.dwattr $C$DW$490, DW_AT_TI_call

        LCR       #||McBSP_setRxMultichannelPartition|| ; [CPU_ALU] |1279| 
        ; call occurs [#||McBSP_setRxMultichannelPartition||] ; [] |1279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1286,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1286| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |1286| 
        CMPB      AL,#1                 ; [CPU_ALU] |1286| 
        B         ||$C$L77||,NEQ        ; [CPU_ALU] |1286| 
        ; branchcc occurs ; [] |1286| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1292,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1292| 
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_name("McBSP_disableTwoPhaseRx")
	.dwattr $C$DW$491, DW_AT_TI_call

        LCR       #||McBSP_disableTwoPhaseRx|| ; [CPU_ALU] |1292| 
        ; call occurs [#||McBSP_disableTwoPhaseRx||] ; [] |1292| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1297,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1297| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |1297| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |1297| 
        ; branchcc occurs ; [] |1297| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1300,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1300| 
        CMPB      AL,#32                ; [CPU_ALU] |1300| 
        B         ||$C$L64||,LOS        ; [CPU_ALU] |1300| 
        ; branchcc occurs ; [] |1300| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1302,column 17,is_stmt,isa 0
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |1302| 
||$C$L64||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1304,column 13,is_stmt,isa 0
        MOV       *-SP[9],#0            ; [CPU_ALU] |1304| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1305,column 13,is_stmt,isa 0
        MOV       *-SP[10],#0           ; [CPU_ALU] |1305| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1312,column 17,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |1312| 
        B         ||$C$L72||,UNC        ; [CPU_ALU] |1312| 
        ; branch occurs ; [] |1312| 
||$C$L65||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1318,column 17,is_stmt,isa 0
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1318| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1318| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |1318| 
        LSR       AL,4                  ; [CPU_ALU] |1318| 
        MOV       *-SP[6],AL            ; [CPU_ALU] |1318| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1324,column 17,is_stmt,isa 0
        TBIT      *-SP[6],#0            ; [CPU_ALU] |1324| 
        B         ||$C$L68||,TC         ; [CPU_ALU] |1324| 
        ; branchcc occurs ; [] |1324| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1329,column 21,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |1329| 
        B         ||$C$L66||,NEQ        ; [CPU_ALU] |1329| 
        ; branchcc occurs ; [] |1329| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1334,column 25,is_stmt,isa 0
        MOVZ      AR4,*-SP[6]           ; [CPU_ALU] |1334| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1334| 
$C$DW$492	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$492, DW_AT_low_pc(0x00)
	.dwattr $C$DW$492, DW_AT_name("McBSP_setRxTwoPartitionBlock")
	.dwattr $C$DW$492, DW_AT_TI_call

        LCR       #||McBSP_setRxTwoPartitionBlock|| ; [CPU_ALU] |1334| 
        ; call occurs [#||McBSP_setRxTwoPartitionBlock||] ; [] |1334| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1342,column 25,is_stmt,isa 0
        MOVB      *-SP[9],#1,UNC        ; [CPU_ALU] |1342| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1343,column 25,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |1343| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |1343| 
||$C$L66||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1350,column 21,is_stmt,isa 0
        MOVZ      AR6,*-SP[7]           ; [CPU_ALU] |1350| 
        MOVU      ACC,*-SP[6]           ; [CPU_ALU] |1350| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1350| 
        B         ||$C$L67||,NEQ        ; [CPU_ALU] |1350| 
        ; branchcc occurs ; [] |1350| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1356,column 25,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1356| 
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1356| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1356| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1356| 
        MOVZ      AR5,*+XAR4[AR0]       ; [CPU_ALU] |1356| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1356| 
$C$DW$493	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$493, DW_AT_low_pc(0x00)
	.dwattr $C$DW$493, DW_AT_name("McBSP_enableRxChannel")
	.dwattr $C$DW$493, DW_AT_TI_call

        LCR       #||McBSP_enableRxChannel|| ; [CPU_ALU] |1356| 
        ; call occurs [#||McBSP_enableRxChannel||] ; [] |1356| 
        B         ||$C$L71||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L67||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1363,column 25,is_stmt,isa 0
        MOVB      *-SP[11],#2,UNC       ; [CPU_ALU] |1363| 
        B         ||$C$L71||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L68||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1376,column 21,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |1376| 
        B         ||$C$L69||,NEQ        ; [CPU_ALU] |1376| 
        ; branchcc occurs ; [] |1376| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1381,column 25,is_stmt,isa 0
        MOVZ      AR4,*-SP[6]           ; [CPU_ALU] |1381| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1381| 
$C$DW$494	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$494, DW_AT_low_pc(0x00)
	.dwattr $C$DW$494, DW_AT_name("McBSP_setRxTwoPartitionBlock")
	.dwattr $C$DW$494, DW_AT_TI_call

        LCR       #||McBSP_setRxTwoPartitionBlock|| ; [CPU_ALU] |1381| 
        ; call occurs [#||McBSP_setRxTwoPartitionBlock||] ; [] |1381| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1388,column 25,is_stmt,isa 0
        MOVB      *-SP[10],#1,UNC       ; [CPU_ALU] |1388| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1389,column 25,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |1389| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |1389| 
||$C$L69||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1396,column 21,is_stmt,isa 0
        MOVZ      AR6,*-SP[8]           ; [CPU_ALU] |1396| 
        MOVU      ACC,*-SP[6]           ; [CPU_ALU] |1396| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1396| 
        B         ||$C$L70||,NEQ        ; [CPU_ALU] |1396| 
        ; branchcc occurs ; [] |1396| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1402,column 25,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1402| 
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1402| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1402| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1402| 
        MOVZ      AR5,*+XAR4[AR0]       ; [CPU_ALU] |1402| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1402| 
$C$DW$495	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$495, DW_AT_low_pc(0x00)
	.dwattr $C$DW$495, DW_AT_name("McBSP_enableRxChannel")
	.dwattr $C$DW$495, DW_AT_TI_call

        LCR       #||McBSP_enableRxChannel|| ; [CPU_ALU] |1402| 
        ; call occurs [#||McBSP_enableRxChannel||] ; [] |1402| 
        B         ||$C$L71||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L70||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1409,column 25,is_stmt,isa 0
        OR        *-SP[11],#0x0004      ; [CPU_ALU] |1409| 
||$C$L71||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1313,column 17,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |1313| 
||$C$L72||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1312,column 29,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1312| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1312| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |1312| 
        B         ||$C$L65||,HI         ; [CPU_ALU] |1312| 
        ; branchcc occurs ; [] |1312| 
        B         ||$C$L77||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L73||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1420,column 13,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1420| 
        CMPB      AL,#128               ; [CPU_ALU] |1420| 
        B         ||$C$L74||,LOS        ; [CPU_ALU] |1420| 
        ; branchcc occurs ; [] |1420| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1422,column 17,is_stmt,isa 0
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |1422| 
||$C$L74||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1424,column 17,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |1424| 
        B         ||$C$L76||,UNC        ; [CPU_ALU] |1424| 
        ; branch occurs ; [] |1424| 
||$C$L75||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1430,column 17,is_stmt,isa 0
        MOVZ      AR0,*-SP[5]           ; [CPU_ALU] |1430| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |1430| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1430| 
        MOVZ      AR5,*+XAR4[AR0]       ; [CPU_ALU] |1430| 
        MOVL      XAR4,#512             ; [CPU_ALU] |1430| 
$C$DW$496	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$496, DW_AT_low_pc(0x00)
	.dwattr $C$DW$496, DW_AT_name("McBSP_enableRxChannel")
	.dwattr $C$DW$496, DW_AT_TI_call

        LCR       #||McBSP_enableRxChannel|| ; [CPU_ALU] |1430| 
        ; call occurs [#||McBSP_enableRxChannel||] ; [] |1430| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1425,column 17,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |1425| 
||$C$L76||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1424,column 29,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1424| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1424| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |1424| 
        B         ||$C$L75||,HI         ; [CPU_ALU] |1424| 
        ; branchcc occurs ; [] |1424| 
||$C$L77||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1436,column 5,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |1436| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1437,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$497	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$497, DW_AT_low_pc(0x00)
	.dwattr $C$DW$497, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$477, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$477, DW_AT_TI_end_line(0x59d)
	.dwattr $C$DW$477, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$477

	.sect	".text:McBSP_configureSPIMasterMode"
	.clink
	.global	||McBSP_configureSPIMasterMode||

$C$DW$498	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$498, DW_AT_name("McBSP_configureSPIMasterMode")
	.dwattr $C$DW$498, DW_AT_low_pc(||McBSP_configureSPIMasterMode||)
	.dwattr $C$DW$498, DW_AT_high_pc(0x00)
	.dwattr $C$DW$498, DW_AT_linkage_name("McBSP_configureSPIMasterMode")
	.dwattr $C$DW$498, DW_AT_external
	.dwattr $C$DW$498, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$498, DW_AT_decl_line(0x5a5)
	.dwattr $C$DW$498, DW_AT_decl_column(0x01)
	.dwattr $C$DW$498, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1447,column 1,is_stmt,address ||McBSP_configureSPIMasterMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureSPIMasterMode||
$C$DW$499	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$499, DW_AT_name("base")
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$499, DW_AT_location[DW_OP_reg0]

$C$DW$500	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$500, DW_AT_name("ptrSPIMasterMode")
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$500, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureSPIMasterMode  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureSPIMasterMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$501	.dwtag  DW_TAG_variable
	.dwattr $C$DW$501, DW_AT_name("base")
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$501, DW_AT_location[DW_OP_breg20 -4]

$C$DW$502	.dwtag  DW_TAG_variable
	.dwattr $C$DW$502, DW_AT_name("ptrSPIMasterMode")
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$502, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |1447| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1447| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1451,column 5,is_stmt,isa 0
        MOV       AL,#4096              ; [CPU_ALU] |1451| 
        CMP       AL,*+XAR4[4]          ; [CPU_ALU] |1451| 
        B         ||$C$L78||,EQ         ; [CPU_ALU] |1451| 
        ; branchcc occurs ; [] |1451| 
        MOV       AL,#6144              ; [CPU_ALU] |1451| 
        CMP       AL,*+XAR4[4]          ; [CPU_ALU] |1451| 
        B         ||$C$L81||,NEQ        ; [CPU_ALU] |1451| 
        ; branchcc occurs ; [] |1451| 
||$C$L78||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1457,column 9,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[4]         ; [CPU_ALU] |1457| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1457| 
$C$DW$503	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$503, DW_AT_low_pc(0x00)
	.dwattr $C$DW$503, DW_AT_name("McBSP_setClockStopMode")
	.dwattr $C$DW$503, DW_AT_TI_call

        LCR       #||McBSP_setClockStopMode|| ; [CPU_ALU] |1457| 
        ; call occurs [#||McBSP_setClockStopMode||] ; [] |1457| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1463,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1463| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1463| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |1463| 
        ; branchcc occurs ; [] |1463| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1465,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1465| 
$C$DW$504	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$504, DW_AT_low_pc(0x00)
	.dwattr $C$DW$504, DW_AT_name("McBSP_enableLoopback")
	.dwattr $C$DW$504, DW_AT_TI_call

        LCR       #||McBSP_enableLoopback|| ; [CPU_ALU] |1465| 
        ; call occurs [#||McBSP_enableLoopback||] ; [] |1465| 
        B         ||$C$L80||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L79||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1469,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1469| 
$C$DW$505	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$505, DW_AT_low_pc(0x00)
	.dwattr $C$DW$505, DW_AT_name("McBSP_disableLoopback")
	.dwattr $C$DW$505, DW_AT_TI_call

        LCR       #||McBSP_disableLoopback|| ; [CPU_ALU] |1469| 
        ; call occurs [#||McBSP_disableLoopback||] ; [] |1469| 
||$C$L80||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1476,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1476| 
        MOVL      XAR4,#512             ; [CPU_ALU] |1476| 
$C$DW$506	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$506, DW_AT_low_pc(0x00)
	.dwattr $C$DW$506, DW_AT_name("McBSP_setTxClockSource")
	.dwattr $C$DW$506, DW_AT_TI_call

        LCR       #||McBSP_setTxClockSource|| ; [CPU_ALU] |1476| 
        ; call occurs [#||McBSP_setTxClockSource||] ; [] |1476| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1481,column 9,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1481| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1481| 
$C$DW$507	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$507, DW_AT_low_pc(0x00)
	.dwattr $C$DW$507, DW_AT_name("McBSP_setTxSRGClockSource")
	.dwattr $C$DW$507, DW_AT_TI_call

        LCR       #||McBSP_setTxSRGClockSource|| ; [CPU_ALU] |1481| 
        ; call occurs [#||McBSP_setTxSRGClockSource||] ; [] |1481| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1486,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1486| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1486| 
        MOVZ      AR4,*+XAR4[2]         ; [CPU_ALU] |1486| 
$C$DW$508	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$508, DW_AT_low_pc(0x00)
	.dwattr $C$DW$508, DW_AT_name("McBSP_setSRGDataClockDivider")
	.dwattr $C$DW$508, DW_AT_TI_call

        LCR       #||McBSP_setSRGDataClockDivider|| ; [CPU_ALU] |1486| 
        ; call occurs [#||McBSP_setSRGDataClockDivider||] ; [] |1486| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1492,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1492| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1492| 
        MOVZ      AR4,*+XAR4[6]         ; [CPU_ALU] |1492| 
$C$DW$509	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$509, DW_AT_low_pc(0x00)
	.dwattr $C$DW$509, DW_AT_name("McBSP_setTxClockPolarity")
	.dwattr $C$DW$509, DW_AT_TI_call

        LCR       #||McBSP_setTxClockPolarity|| ; [CPU_ALU] |1492| 
        ; call occurs [#||McBSP_setTxClockPolarity||] ; [] |1492| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1498,column 9,is_stmt,isa 0
        MOVL      XAR4,#2048            ; [CPU_ALU] |1498| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1498| 
$C$DW$510	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$510, DW_AT_low_pc(0x00)
	.dwattr $C$DW$510, DW_AT_name("McBSP_setTxFrameSyncSource")
	.dwattr $C$DW$510, DW_AT_TI_call

        LCR       #||McBSP_setTxFrameSyncSource|| ; [CPU_ALU] |1498| 
        ; call occurs [#||McBSP_setTxFrameSyncSource||] ; [] |1498| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1503,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1503| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1503| 
$C$DW$511	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$511, DW_AT_low_pc(0x00)
	.dwattr $C$DW$511, DW_AT_name("McBSP_setTxInternalFrameSyncSource")
	.dwattr $C$DW$511, DW_AT_TI_call

        LCR       #||McBSP_setTxInternalFrameSyncSource|| ; [CPU_ALU] |1503| 
        ; call occurs [#||McBSP_setTxInternalFrameSyncSource||] ; [] |1503| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1509,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1509| 
        MOVB      XAR4,#8               ; [CPU_ALU] |1509| 
$C$DW$512	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$512, DW_AT_low_pc(0x00)
	.dwattr $C$DW$512, DW_AT_name("McBSP_setTxFrameSyncPolarity")
	.dwattr $C$DW$512, DW_AT_TI_call

        LCR       #||McBSP_setTxFrameSyncPolarity|| ; [CPU_ALU] |1509| 
        ; call occurs [#||McBSP_setTxFrameSyncPolarity||] ; [] |1509| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1515,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1515| 
$C$DW$513	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$513, DW_AT_low_pc(0x00)
	.dwattr $C$DW$513, DW_AT_name("McBSP_disableTwoPhaseTx")
	.dwattr $C$DW$513, DW_AT_TI_call

        LCR       #||McBSP_disableTwoPhaseTx|| ; [CPU_ALU] |1515| 
        ; call occurs [#||McBSP_disableTwoPhaseTx||] ; [] |1515| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1520,column 9,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |1520| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1520| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1520| 
        MOVZ      AR5,*+XAR4[5]         ; [CPU_ALU] |1520| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1520| 
$C$DW$514	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$514, DW_AT_low_pc(0x00)
	.dwattr $C$DW$514, DW_AT_name("McBSP_setTxDataSize")
	.dwattr $C$DW$514, DW_AT_TI_call

        LCR       #||McBSP_setTxDataSize|| ; [CPU_ALU] |1520| 
        ; call occurs [#||McBSP_setTxDataSize||] ; [] |1520| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1522,column 9,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |1522| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1522| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1522| 
        MOVZ      AR5,*+XAR4[5]         ; [CPU_ALU] |1522| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1522| 
$C$DW$515	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$515, DW_AT_low_pc(0x00)
	.dwattr $C$DW$515, DW_AT_name("McBSP_setRxDataSize")
	.dwattr $C$DW$515, DW_AT_TI_call

        LCR       #||McBSP_setRxDataSize|| ; [CPU_ALU] |1522| 
        ; call occurs [#||McBSP_setRxDataSize||] ; [] |1522| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1529,column 9,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1529| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1529| 
$C$DW$516	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$516, DW_AT_low_pc(0x00)
	.dwattr $C$DW$516, DW_AT_name("McBSP_setTxDataDelayBits")
	.dwattr $C$DW$516, DW_AT_TI_call

        LCR       #||McBSP_setTxDataDelayBits|| ; [CPU_ALU] |1529| 
        ; call occurs [#||McBSP_setTxDataDelayBits||] ; [] |1529| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1530,column 9,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1530| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1530| 
$C$DW$517	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$517, DW_AT_low_pc(0x00)
	.dwattr $C$DW$517, DW_AT_name("McBSP_setRxDataDelayBits")
	.dwattr $C$DW$517, DW_AT_TI_call

        LCR       #||McBSP_setRxDataDelayBits|| ; [CPU_ALU] |1530| 
        ; call occurs [#||McBSP_setRxDataDelayBits||] ; [] |1530| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1532,column 1,is_stmt,isa 0
||$C$L81||:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$518	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$518, DW_AT_low_pc(0x00)
	.dwattr $C$DW$518, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$498, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$498, DW_AT_TI_end_line(0x5fc)
	.dwattr $C$DW$498, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$498

	.sect	".text:McBSP_configureSPISlaveMode"
	.clink
	.global	||McBSP_configureSPISlaveMode||

$C$DW$519	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$519, DW_AT_name("McBSP_configureSPISlaveMode")
	.dwattr $C$DW$519, DW_AT_low_pc(||McBSP_configureSPISlaveMode||)
	.dwattr $C$DW$519, DW_AT_high_pc(0x00)
	.dwattr $C$DW$519, DW_AT_linkage_name("McBSP_configureSPISlaveMode")
	.dwattr $C$DW$519, DW_AT_external
	.dwattr $C$DW$519, DW_AT_decl_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$519, DW_AT_decl_line(0x604)
	.dwattr $C$DW$519, DW_AT_decl_column(0x01)
	.dwattr $C$DW$519, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1542,column 1,is_stmt,address ||McBSP_configureSPISlaveMode||,isa 0

	.dwfde $C$DW$CIE, ||McBSP_configureSPISlaveMode||
$C$DW$520	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$520, DW_AT_name("base")
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$520, DW_AT_location[DW_OP_reg0]

$C$DW$521	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$521, DW_AT_name("ptrSPISlaveMode")
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$521, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: McBSP_configureSPISlaveMode   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||McBSP_configureSPISlaveMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$522	.dwtag  DW_TAG_variable
	.dwattr $C$DW$522, DW_AT_name("base")
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$522, DW_AT_location[DW_OP_breg20 -4]

$C$DW$523	.dwtag  DW_TAG_variable
	.dwattr $C$DW$523, DW_AT_name("ptrSPISlaveMode")
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$523, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |1542| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1542| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1547,column 5,is_stmt,isa 0
        MOV       AL,#4096              ; [CPU_ALU] |1547| 
        CMP       AL,*+XAR4[1]          ; [CPU_ALU] |1547| 
        B         ||$C$L82||,EQ         ; [CPU_ALU] |1547| 
        ; branchcc occurs ; [] |1547| 
        MOV       AL,#6144              ; [CPU_ALU] |1547| 
        CMP       AL,*+XAR4[1]          ; [CPU_ALU] |1547| 
        B         ||$C$L85||,NEQ        ; [CPU_ALU] |1547| 
        ; branchcc occurs ; [] |1547| 
||$C$L82||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1553,column 9,is_stmt,isa 0
        MOVZ      AR4,*+XAR4[1]         ; [CPU_ALU] |1553| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1553| 
$C$DW$524	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$524, DW_AT_low_pc(0x00)
	.dwattr $C$DW$524, DW_AT_name("McBSP_setClockStopMode")
	.dwattr $C$DW$524, DW_AT_TI_call

        LCR       #||McBSP_setClockStopMode|| ; [CPU_ALU] |1553| 
        ; call occurs [#||McBSP_setClockStopMode||] ; [] |1553| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1558,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1558| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1558| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |1558| 
        ; branchcc occurs ; [] |1558| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1560,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1560| 
$C$DW$525	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$525, DW_AT_low_pc(0x00)
	.dwattr $C$DW$525, DW_AT_name("McBSP_enableLoopback")
	.dwattr $C$DW$525, DW_AT_TI_call

        LCR       #||McBSP_enableLoopback|| ; [CPU_ALU] |1560| 
        ; call occurs [#||McBSP_enableLoopback||] ; [] |1560| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L83||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1564,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1564| 
$C$DW$526	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$526, DW_AT_low_pc(0x00)
	.dwattr $C$DW$526, DW_AT_name("McBSP_disableLoopback")
	.dwattr $C$DW$526, DW_AT_TI_call

        LCR       #||McBSP_disableLoopback|| ; [CPU_ALU] |1564| 
        ; call occurs [#||McBSP_disableLoopback||] ; [] |1564| 
||$C$L84||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1571,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1571| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1571| 
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_name("McBSP_setTxClockSource")
	.dwattr $C$DW$527, DW_AT_TI_call

        LCR       #||McBSP_setTxClockSource|| ; [CPU_ALU] |1571| 
        ; call occurs [#||McBSP_setTxClockSource||] ; [] |1571| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1576,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1576| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1576| 
        MOVZ      AR4,*+XAR4[3]         ; [CPU_ALU] |1576| 
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_name("McBSP_setTxClockPolarity")
	.dwattr $C$DW$528, DW_AT_TI_call

        LCR       #||McBSP_setTxClockPolarity|| ; [CPU_ALU] |1576| 
        ; call occurs [#||McBSP_setTxClockPolarity||] ; [] |1576| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1583,column 9,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1583| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1583| 
$C$DW$529	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$529, DW_AT_low_pc(0x00)
	.dwattr $C$DW$529, DW_AT_name("McBSP_setRxSRGClockSource")
	.dwattr $C$DW$529, DW_AT_TI_call

        LCR       #||McBSP_setRxSRGClockSource|| ; [CPU_ALU] |1583| 
        ; call occurs [#||McBSP_setRxSRGClockSource||] ; [] |1583| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1588,column 9,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1588| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1588| 
$C$DW$530	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$530, DW_AT_low_pc(0x00)
	.dwattr $C$DW$530, DW_AT_name("McBSP_setSRGDataClockDivider")
	.dwattr $C$DW$530, DW_AT_TI_call

        LCR       #||McBSP_setSRGDataClockDivider|| ; [CPU_ALU] |1588| 
        ; call occurs [#||McBSP_setSRGDataClockDivider||] ; [] |1588| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1594,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1594| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1594| 
$C$DW$531	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$531, DW_AT_low_pc(0x00)
	.dwattr $C$DW$531, DW_AT_name("McBSP_setTxFrameSyncSource")
	.dwattr $C$DW$531, DW_AT_TI_call

        LCR       #||McBSP_setTxFrameSyncSource|| ; [CPU_ALU] |1594| 
        ; call occurs [#||McBSP_setTxFrameSyncSource||] ; [] |1594| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1599,column 9,is_stmt,isa 0
        MOVB      XAR4,#8               ; [CPU_ALU] |1599| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1599| 
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_name("McBSP_setTxFrameSyncPolarity")
	.dwattr $C$DW$532, DW_AT_TI_call

        LCR       #||McBSP_setTxFrameSyncPolarity|| ; [CPU_ALU] |1599| 
        ; call occurs [#||McBSP_setTxFrameSyncPolarity||] ; [] |1599| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1605,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1605| 
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_name("McBSP_disableTwoPhaseTx")
	.dwattr $C$DW$533, DW_AT_TI_call

        LCR       #||McBSP_disableTwoPhaseTx|| ; [CPU_ALU] |1605| 
        ; call occurs [#||McBSP_disableTwoPhaseTx||] ; [] |1605| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1610,column 9,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |1610| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1610| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1610| 
        MOVZ      AR5,*+XAR4[2]         ; [CPU_ALU] |1610| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1610| 
$C$DW$534	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$534, DW_AT_low_pc(0x00)
	.dwattr $C$DW$534, DW_AT_name("McBSP_setTxDataSize")
	.dwattr $C$DW$534, DW_AT_TI_call

        LCR       #||McBSP_setTxDataSize|| ; [CPU_ALU] |1610| 
        ; call occurs [#||McBSP_setTxDataSize||] ; [] |1610| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1612,column 9,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |1612| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1612| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1612| 
        MOVZ      AR5,*+XAR4[2]         ; [CPU_ALU] |1612| 
        MOVB      XAR4,#0               ; [CPU_ALU] |1612| 
$C$DW$535	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$535, DW_AT_low_pc(0x00)
	.dwattr $C$DW$535, DW_AT_name("McBSP_setRxDataSize")
	.dwattr $C$DW$535, DW_AT_TI_call

        LCR       #||McBSP_setRxDataSize|| ; [CPU_ALU] |1612| 
        ; call occurs [#||McBSP_setRxDataSize||] ; [] |1612| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1618,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1618| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1618| 
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_name("McBSP_setTxDataDelayBits")
	.dwattr $C$DW$536, DW_AT_TI_call

        LCR       #||McBSP_setTxDataDelayBits|| ; [CPU_ALU] |1618| 
        ; call occurs [#||McBSP_setTxDataDelayBits||] ; [] |1618| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1619,column 9,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |1619| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1619| 
$C$DW$537	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$537, DW_AT_low_pc(0x00)
	.dwattr $C$DW$537, DW_AT_name("McBSP_setRxDataDelayBits")
	.dwattr $C$DW$537, DW_AT_TI_call

        LCR       #||McBSP_setRxDataDelayBits|| ; [CPU_ALU] |1619| 
        ; call occurs [#||McBSP_setRxDataDelayBits||] ; [] |1619| 
	.dwpsn	file "../F2838x_driverlib/driverlib/mcbsp.c",line 1621,column 1,is_stmt,isa 0
||$C$L85||:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$538	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$538, DW_AT_low_pc(0x00)
	.dwattr $C$DW$538, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$519, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/mcbsp.c")
	.dwattr $C$DW$519, DW_AT_TI_end_line(0x655)
	.dwattr $C$DW$519, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$519


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
$C$DW$539	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$539, DW_AT_name("MCBSP_EXTERNAL_TX_CLOCK_SOURCE")
	.dwattr $C$DW$539, DW_AT_const_value(0x00)
	.dwattr $C$DW$539, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x189)
	.dwattr $C$DW$539, DW_AT_decl_column(0x05)

$C$DW$540	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$540, DW_AT_name("MCBSP_INTERNAL_TX_CLOCK_SOURCE")
	.dwattr $C$DW$540, DW_AT_const_value(0x200)
	.dwattr $C$DW$540, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$540, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("McBSP_TxClockSource")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$23


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$541	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$23)

$C$DW$T$93	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$541)

	.dwendtag $C$DW$TU$93


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$542	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$542, DW_AT_name("MCBSP_EXTERNAL_RX_CLOCK_SOURCE")
	.dwattr $C$DW$542, DW_AT_const_value(0x00)
	.dwattr $C$DW$542, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x195)
	.dwattr $C$DW$542, DW_AT_decl_column(0x05)

$C$DW$543	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$543, DW_AT_name("MCBSP_INTERNAL_RX_CLOCK_SOURCE")
	.dwattr $C$DW$543, DW_AT_const_value(0x100)
	.dwattr $C$DW$543, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x196)
	.dwattr $C$DW$543, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x194)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("McBSP_RxClockSource")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x197)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$25


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$544	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$25)

$C$DW$T$94	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$544)

	.dwendtag $C$DW$TU$94


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$545	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$545, DW_AT_name("MCBSP_SRG_RX_CLOCK_SOURCE_LSPCLK")
	.dwattr $C$DW$545, DW_AT_const_value(0x01)
	.dwattr $C$DW$545, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$545, DW_AT_decl_column(0x05)

$C$DW$546	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$546, DW_AT_name("MCBSP_SRG_RX_CLOCK_SOURCE_MCLKX_PIN")
	.dwattr $C$DW$546, DW_AT_const_value(0x03)
	.dwattr $C$DW$546, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$546, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("McBSP_SRGRxClockSource")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$27


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$547	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$27)

$C$DW$T$82	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$547)

	.dwendtag $C$DW$TU$82


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$548	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$548, DW_AT_name("MCBSP_SRG_TX_CLOCK_SOURCE_LSPCLK")
	.dwattr $C$DW$548, DW_AT_const_value(0x01)
	.dwattr $C$DW$548, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x119)
	.dwattr $C$DW$548, DW_AT_decl_column(0x05)

$C$DW$549	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$549, DW_AT_name("MCBSP_SRG_TX_CLOCK_SOURCE_MCLKR_PIN")
	.dwattr $C$DW$549, DW_AT_const_value(0x02)
	.dwattr $C$DW$549, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$549, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x118)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("McBSP_SRGTxClockSource")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$29


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83
$C$DW$550	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$29)

$C$DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$550)

	.dwendtag $C$DW$TU$83


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$551	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$551, DW_AT_name("MCBSP_TX_POLARITY_RISING_EDGE")
	.dwattr $C$DW$551, DW_AT_const_value(0x00)
	.dwattr $C$DW$551, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$551, DW_AT_decl_column(0x05)

$C$DW$552	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$552, DW_AT_name("MCBSP_TX_POLARITY_FALLING_EDGE")
	.dwattr $C$DW$552, DW_AT_const_value(0x02)
	.dwattr $C$DW$552, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$552, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$30, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("McBSP_TxClockPolarity")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$31


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97
$C$DW$553	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$31)

$C$DW$T$97	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$553)

	.dwendtag $C$DW$TU$97


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$554	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$554, DW_AT_name("MCBSP_RX_POLARITY_FALLING_EDGE")
	.dwattr $C$DW$554, DW_AT_const_value(0x00)
	.dwattr $C$DW$554, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$554, DW_AT_decl_column(0x05)

$C$DW$555	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$555, DW_AT_name("MCBSP_RX_POLARITY_RISING_EDGE")
	.dwattr $C$DW$555, DW_AT_const_value(0x01)
	.dwattr $C$DW$555, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$555, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$32, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("McBSP_RxClockPolarity")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$33


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$556	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$33)

$C$DW$T$98	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$556)

	.dwendtag $C$DW$TU$98


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$557	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$557, DW_AT_name("MCBSP_TX_EXTERNAL_FRAME_SYNC_SOURCE")
	.dwattr $C$DW$557, DW_AT_const_value(0x00)
	.dwattr $C$DW$557, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$557, DW_AT_decl_column(0x05)

$C$DW$558	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$558, DW_AT_name("MCBSP_TX_INTERNAL_FRAME_SYNC_SOURCE")
	.dwattr $C$DW$558, DW_AT_const_value(0x800)
	.dwattr $C$DW$558, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$558, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("McBSP_TxFrameSyncSource")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x171)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$36


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$559	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$36)

$C$DW$T$91	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$559)

	.dwendtag $C$DW$TU$91


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$560	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$560, DW_AT_name("MCBSP_TX_INTERNAL_FRAME_SYNC_DATA")
	.dwattr $C$DW$560, DW_AT_const_value(0x00)
	.dwattr $C$DW$560, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x125)
	.dwattr $C$DW$560, DW_AT_decl_column(0x05)

$C$DW$561	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$561, DW_AT_name("MCBSP_TX_INTERNAL_FRAME_SYNC_SRG")
	.dwattr $C$DW$561, DW_AT_const_value(0x1000)
	.dwattr $C$DW$561, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x127)
	.dwattr $C$DW$561, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$37, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("McBSP_TxInternalFrameSyncSource")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$38


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$562	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$38)

$C$DW$T$84	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$562)

	.dwendtag $C$DW$TU$84


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$563	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$563, DW_AT_name("MCBSP_TX_FRAME_SYNC_POLARITY_HIGH")
	.dwattr $C$DW$563, DW_AT_const_value(0x00)
	.dwattr $C$DW$563, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$563, DW_AT_decl_column(0x05)

$C$DW$564	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$564, DW_AT_name("MCBSP_TX_FRAME_SYNC_POLARITY_LOW")
	.dwattr $C$DW$564, DW_AT_const_value(0x08)
	.dwattr $C$DW$564, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$564, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("McBSP_TxFrameSyncPolarity")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$40


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$565	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$40)

$C$DW$T$95	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$565)

	.dwendtag $C$DW$TU$95


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$566	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$566, DW_AT_name("MCBSP_RX_EXTERNAL_FRAME_SYNC_SOURCE")
	.dwattr $C$DW$566, DW_AT_const_value(0x00)
	.dwattr $C$DW$566, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$566, DW_AT_decl_column(0x05)

$C$DW$567	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$567, DW_AT_name("MCBSP_RX_INTERNAL_FRAME_SYNC_SOURCE")
	.dwattr $C$DW$567, DW_AT_const_value(0x400)
	.dwattr $C$DW$567, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$567, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$42, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("McBSP_RxFrameSyncSource")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$43


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$568	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$43)

$C$DW$T$92	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$568)

	.dwendtag $C$DW$TU$92


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$569	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$569, DW_AT_name("MCBSP_RX_FRAME_SYNC_POLARITY_HIGH")
	.dwattr $C$DW$569, DW_AT_const_value(0x00)
	.dwattr $C$DW$569, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$569, DW_AT_decl_column(0x05)

$C$DW$570	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$570, DW_AT_name("MCBSP_RX_FRAME_SYNC_POLARITY_LOW")
	.dwattr $C$DW$570, DW_AT_const_value(0x04)
	.dwattr $C$DW$570, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$570, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("McBSP_RxFrameSyncPolarity")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$45


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$571	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$45)

$C$DW$T$96	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$571)

	.dwendtag $C$DW$TU$96


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$572	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$572, DW_AT_name("MCBSP_CLOCK_MCBSP_MODE")
	.dwattr $C$DW$572, DW_AT_const_value(0x00)
	.dwattr $C$DW$572, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x94)
	.dwattr $C$DW$572, DW_AT_decl_column(0x05)

$C$DW$573	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$573, DW_AT_name("MCBSP_CLOCK_SPI_MODE_NO_DELAY")
	.dwattr $C$DW$573, DW_AT_const_value(0x1000)
	.dwattr $C$DW$573, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x95)
	.dwattr $C$DW$573, DW_AT_decl_column(0x05)

$C$DW$574	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$574, DW_AT_name("MCBSP_CLOCK_SPI_MODE_DELAY")
	.dwattr $C$DW$574, DW_AT_const_value(0x1800)
	.dwattr $C$DW$574, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x96)
	.dwattr $C$DW$574, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$47, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("McBSP_ClockStopMode")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$48


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77
$C$DW$575	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$48)

$C$DW$T$77	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$575)

	.dwendtag $C$DW$TU$77


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$576	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$576, DW_AT_name("MCBSP_BITS_PER_WORD_8")
	.dwattr $C$DW$576, DW_AT_const_value(0x00)
	.dwattr $C$DW$576, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0xde)
	.dwattr $C$DW$576, DW_AT_decl_column(0x05)

$C$DW$577	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$577, DW_AT_name("MCBSP_BITS_PER_WORD_12")
	.dwattr $C$DW$577, DW_AT_const_value(0x20)
	.dwattr $C$DW$577, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$577, DW_AT_decl_column(0x05)

$C$DW$578	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$578, DW_AT_name("MCBSP_BITS_PER_WORD_16")
	.dwattr $C$DW$578, DW_AT_const_value(0x40)
	.dwattr $C$DW$578, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$578, DW_AT_decl_column(0x05)

$C$DW$579	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$579, DW_AT_name("MCBSP_BITS_PER_WORD_20")
	.dwattr $C$DW$579, DW_AT_const_value(0x60)
	.dwattr $C$DW$579, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$579, DW_AT_decl_column(0x05)

$C$DW$580	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$580, DW_AT_name("MCBSP_BITS_PER_WORD_24")
	.dwattr $C$DW$580, DW_AT_const_value(0x80)
	.dwattr $C$DW$580, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$580, DW_AT_decl_column(0x05)

$C$DW$581	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$581, DW_AT_name("MCBSP_BITS_PER_WORD_32")
	.dwattr $C$DW$581, DW_AT_const_value(0xa0)
	.dwattr $C$DW$581, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$581, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$49, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("McBSP_DataBitsPerWord")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$50


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$582	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$50)

$C$DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$582)

	.dwendtag $C$DW$TU$102


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$583	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$583, DW_AT_name("MCBSP_COMPANDING_NONE")
	.dwattr $C$DW$583, DW_AT_const_value(0x00)
	.dwattr $C$DW$583, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0xee)
	.dwattr $C$DW$583, DW_AT_decl_column(0x05)

$C$DW$584	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$584, DW_AT_name("MCBSP_COMPANDING_NONE_LSB_FIRST")
	.dwattr $C$DW$584, DW_AT_const_value(0x08)
	.dwattr $C$DW$584, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0xef)
	.dwattr $C$DW$584, DW_AT_decl_column(0x05)

$C$DW$585	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$585, DW_AT_name("MCBSP_COMPANDING_U_LAW_SET")
	.dwattr $C$DW$585, DW_AT_const_value(0x10)
	.dwattr $C$DW$585, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$585, DW_AT_decl_column(0x05)

$C$DW$586	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$586, DW_AT_name("MCBSP_COMPANDING_A_LAW_SET")
	.dwattr $C$DW$586, DW_AT_const_value(0x18)
	.dwattr $C$DW$586, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$586, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$51, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0xed)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("McBSP_CompandingMode")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$52


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$587	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$52)

$C$DW$T$80	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$587)

	.dwendtag $C$DW$TU$80


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$588	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$588, DW_AT_name("MCBSP_DATA_DELAY_BIT_0")
	.dwattr $C$DW$588, DW_AT_const_value(0x00)
	.dwattr $C$DW$588, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$588, DW_AT_decl_column(0x05)

$C$DW$589	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$589, DW_AT_name("MCBSP_DATA_DELAY_BIT_1")
	.dwattr $C$DW$589, DW_AT_const_value(0x01)
	.dwattr $C$DW$589, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0xff)
	.dwattr $C$DW$589, DW_AT_decl_column(0x05)

$C$DW$590	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$590, DW_AT_name("MCBSP_DATA_DELAY_BIT_2")
	.dwattr $C$DW$590, DW_AT_const_value(0x02)
	.dwattr $C$DW$590, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x100)
	.dwattr $C$DW$590, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$53, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("McBSP_DataDelayBits")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$54


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$591	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$54)

$C$DW$T$81	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$591)

	.dwendtag $C$DW$TU$81


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$592	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$592, DW_AT_name("MCBSP_TX_ISR_SOURCE_TX_READY")
	.dwattr $C$DW$592, DW_AT_const_value(0x00)
	.dwattr $C$DW$592, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$592, DW_AT_decl_column(0x05)

$C$DW$593	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$593, DW_AT_name("MCBSP_TX_ISR_SOURCE_END_OF_BLOCK")
	.dwattr $C$DW$593, DW_AT_const_value(0x10)
	.dwattr $C$DW$593, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$593, DW_AT_decl_column(0x05)

$C$DW$594	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$594, DW_AT_name("MCBSP_TX_ISR_SOURCE_FRAME_SYNC")
	.dwattr $C$DW$594, DW_AT_const_value(0x20)
	.dwattr $C$DW$594, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$594, DW_AT_decl_column(0x05)

$C$DW$595	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$595, DW_AT_name("MCBSP_TX_ISR_SOURCE_SYNC_ERROR")
	.dwattr $C$DW$595, DW_AT_const_value(0x30)
	.dwattr $C$DW$595, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$595, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$55, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("McBSP_TxInterruptSource")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$56


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79
$C$DW$596	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$56)

$C$DW$T$79	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$596)

	.dwendtag $C$DW$TU$79


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$597	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$597, DW_AT_name("MCBSP_RIGHT_JUSTIFY_FILL_ZERO")
	.dwattr $C$DW$597, DW_AT_const_value(0x00)
	.dwattr $C$DW$597, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x84)
	.dwattr $C$DW$597, DW_AT_decl_column(0x05)

$C$DW$598	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$598, DW_AT_name("MCBSP_RIGHT_JUSTIFY_FILL_SIGN")
	.dwattr $C$DW$598, DW_AT_const_value(0x2000)
	.dwattr $C$DW$598, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x86)
	.dwattr $C$DW$598, DW_AT_decl_column(0x05)

$C$DW$599	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$599, DW_AT_name("MCBSP_LEFT_JUSTIFY_FILL_ZER0")
	.dwattr $C$DW$599, DW_AT_const_value(0x4000)
	.dwattr $C$DW$599, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x88)
	.dwattr $C$DW$599, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$58, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("McBSP_RxSignExtensionMode")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$59


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$600	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$59)

$C$DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$600)

	.dwendtag $C$DW$TU$76


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$601	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$601, DW_AT_name("MCBSP_RX_ISR_SOURCE_SERIAL_WORD")
	.dwattr $C$DW$601, DW_AT_const_value(0x00)
	.dwattr $C$DW$601, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$601, DW_AT_decl_column(0x05)

$C$DW$602	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$602, DW_AT_name("MCBSP_RX_ISR_SOURCE_END_OF_BLOCK")
	.dwattr $C$DW$602, DW_AT_const_value(0x10)
	.dwattr $C$DW$602, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$602, DW_AT_decl_column(0x05)

$C$DW$603	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$603, DW_AT_name("MCBSP_RX_ISR_SOURCE_FRAME_SYNC")
	.dwattr $C$DW$603, DW_AT_const_value(0x20)
	.dwattr $C$DW$603, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$603, DW_AT_decl_column(0x05)

$C$DW$604	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$604, DW_AT_name("MCBSP_RX_ISR_SOURCE_SYNC_ERROR")
	.dwattr $C$DW$604, DW_AT_const_value(0x30)
	.dwattr $C$DW$604, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$604, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$60, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61
$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("McBSP_RxInterruptSource")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$61


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$605	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$61)

$C$DW$T$78	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$605)

	.dwendtag $C$DW$TU$78


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$606	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$606, DW_AT_name("MCBSP_ALL_TX_CHANNELS_ENABLED")
	.dwattr $C$DW$606, DW_AT_const_value(0x00)
	.dwattr $C$DW$606, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$606, DW_AT_decl_column(0x05)

$C$DW$607	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$607, DW_AT_name("MCBSP_TX_CHANNEL_SELECTION_ENABLED")
	.dwattr $C$DW$607, DW_AT_const_value(0x01)
	.dwattr $C$DW$607, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x160)
	.dwattr $C$DW$607, DW_AT_decl_column(0x05)

$C$DW$608	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$608, DW_AT_name("MCBSP_ENABLE_MASKED_TX_CHANNEL_SELECTION")
	.dwattr $C$DW$608, DW_AT_const_value(0x02)
	.dwattr $C$DW$608, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x161)
	.dwattr $C$DW$608, DW_AT_decl_column(0x05)

$C$DW$609	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$609, DW_AT_name("MCBSP_SYMMERTIC_RX_TX_SELECTION")
	.dwattr $C$DW$609, DW_AT_const_value(0x03)
	.dwattr $C$DW$609, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x162)
	.dwattr $C$DW$609, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$64, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65
$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("McBSP_TxChannelMode")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x163)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$65


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$610	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$65)

$C$DW$T$90	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$610)

	.dwendtag $C$DW$TU$90


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$611	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$611, DW_AT_name("MCBSP_MULTICHANNEL_TWO_PARTITION")
	.dwattr $C$DW$611, DW_AT_const_value(0x00)
	.dwattr $C$DW$611, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x134)
	.dwattr $C$DW$611, DW_AT_decl_column(0x05)

$C$DW$612	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$612, DW_AT_name("MCBSP_MULTICHANNEL_EIGHT_PARTITION")
	.dwattr $C$DW$612, DW_AT_const_value(0x200)
	.dwattr $C$DW$612, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x135)
	.dwattr $C$DW$612, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$66, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67
$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("McBSP_MultichannelPartition")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x136)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$67


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85
$C$DW$613	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$67)

$C$DW$T$85	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$613)

	.dwendtag $C$DW$TU$85


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$614	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$614, DW_AT_name("MCBSP_ALL_RX_CHANNELS_ENABLED")
	.dwattr $C$DW$614, DW_AT_const_value(0x00)
	.dwattr $C$DW$614, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x152)
	.dwattr $C$DW$614, DW_AT_decl_column(0x05)

$C$DW$615	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$615, DW_AT_name("MCBSP_RX_CHANNEL_SELECTION_ENABLED")
	.dwattr $C$DW$615, DW_AT_const_value(0x01)
	.dwattr $C$DW$615, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x153)
	.dwattr $C$DW$615, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$69, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x151)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("McBSP_RxChannelMode")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x154)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$70


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$616	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$70)

$C$DW$T$89	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$616)

	.dwendtag $C$DW$TU$89


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$617	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$617, DW_AT_name("MCBSP_PARTITION_BLOCK_0")
	.dwattr $C$DW$617, DW_AT_const_value(0x00)
	.dwattr $C$DW$617, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x140)
	.dwattr $C$DW$617, DW_AT_decl_column(0x05)

$C$DW$618	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$618, DW_AT_name("MCBSP_PARTITION_BLOCK_1")
	.dwattr $C$DW$618, DW_AT_const_value(0x01)
	.dwattr $C$DW$618, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x141)
	.dwattr $C$DW$618, DW_AT_decl_column(0x05)

$C$DW$619	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$619, DW_AT_name("MCBSP_PARTITION_BLOCK_2")
	.dwattr $C$DW$619, DW_AT_const_value(0x02)
	.dwattr $C$DW$619, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x142)
	.dwattr $C$DW$619, DW_AT_decl_column(0x05)

$C$DW$620	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$620, DW_AT_name("MCBSP_PARTITION_BLOCK_3")
	.dwattr $C$DW$620, DW_AT_const_value(0x03)
	.dwattr $C$DW$620, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x143)
	.dwattr $C$DW$620, DW_AT_decl_column(0x05)

$C$DW$621	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$621, DW_AT_name("MCBSP_PARTITION_BLOCK_4")
	.dwattr $C$DW$621, DW_AT_const_value(0x04)
	.dwattr $C$DW$621, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x144)
	.dwattr $C$DW$621, DW_AT_decl_column(0x05)

$C$DW$622	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$622, DW_AT_name("MCBSP_PARTITION_BLOCK_5")
	.dwattr $C$DW$622, DW_AT_const_value(0x05)
	.dwattr $C$DW$622, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x145)
	.dwattr $C$DW$622, DW_AT_decl_column(0x05)

$C$DW$623	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$623, DW_AT_name("MCBSP_PARTITION_BLOCK_6")
	.dwattr $C$DW$623, DW_AT_const_value(0x06)
	.dwattr $C$DW$623, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x146)
	.dwattr $C$DW$623, DW_AT_decl_column(0x05)

$C$DW$624	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$624, DW_AT_name("MCBSP_PARTITION_BLOCK_7")
	.dwattr $C$DW$624, DW_AT_const_value(0x07)
	.dwattr $C$DW$624, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x147)
	.dwattr $C$DW$624, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$86, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87
$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("McBSP_PartitionBlock")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$625	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$87)

$C$DW$T$88	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$625)

	.dwendtag $C$DW$TU$88


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$626	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$626, DW_AT_name("MCBSP_PHASE_ONE_FRAME")
	.dwattr $C$DW$626, DW_AT_const_value(0x00)
	.dwattr $C$DW$626, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$626, DW_AT_decl_column(0x05)

$C$DW$627	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$627, DW_AT_name("MCBSP_PHASE_TWO_FRAME")
	.dwattr $C$DW$627, DW_AT_const_value(0x01)
	.dwattr $C$DW$627, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$627, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("McBSP_DataPhaseFrame")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$628	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$100)

$C$DW$T$101	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$628)

	.dwendtag $C$DW$TU$101


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x08)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("clockSRGSyncFlag")
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0a)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$630, DW_AT_name("clockSRGDivider")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0e)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$631, DW_AT_name("clockSourceTx")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$631, DW_AT_decl_column(0x19)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$632, DW_AT_name("clockSourceRx")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$632, DW_AT_decl_column(0x19)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$633, DW_AT_name("clockRxSRGSource")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$633, DW_AT_decl_column(0x1c)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$634, DW_AT_name("clockTxSRGSource")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$634, DW_AT_decl_column(0x1c)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$635, DW_AT_name("clockMCLKXPolarity")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$635, DW_AT_decl_column(0x1b)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$636, DW_AT_name("clockMCLKRPolarity")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$636, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103
$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("McBSP_ClockParams")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$637	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$103)

$C$DW$T$104	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$637)

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$T$105	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$105


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x07)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("syncSRGSyncFSRFlag")
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0a)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("syncErrorDetect")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$639, DW_AT_decl_column(0x0a)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$640, DW_AT_name("syncClockDivider")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$640, DW_AT_decl_column(0x0e)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$641, DW_AT_name("syncPulseDivider")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0e)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$642, DW_AT_name("syncSourceTx")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$642, DW_AT_decl_column(0x1d)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$643, DW_AT_name("syncIntSource")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$643, DW_AT_decl_column(0x25)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$644, DW_AT_name("syncFSXPolarity")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$644, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$41, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("McBSP_TxFsyncParams")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$645	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$106)

$C$DW$T$107	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$645)

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$108


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x06)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("syncSRGSyncFSRFlag")
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x203)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0a)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("syncErrorDetect")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x204)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0a)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$648, DW_AT_name("syncClockDivider")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x205)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0e)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$649, DW_AT_name("syncPulseDivider")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x206)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0e)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$650, DW_AT_name("syncSourceRx")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x207)
	.dwattr $C$DW$650, DW_AT_decl_column(0x1d)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$651, DW_AT_name("syncFSRPolarity")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x208)
	.dwattr $C$DW$651, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x202)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109
$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("McBSP_RxFsyncParams")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x209)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$652	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$109)

$C$DW$T$110	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$652)

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$111


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x0b)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("loopbackModeFlag")
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x213)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0a)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("twoPhaseModeFlag")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x214)
	.dwattr $C$DW$654, DW_AT_decl_column(0x0a)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("pinDelayEnableFlag")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x215)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0a)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$656, DW_AT_name("phase1FrameLength")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x216)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0e)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$657, DW_AT_name("phase2FrameLength")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x217)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0e)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$658, DW_AT_name("clockStopMode")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x218)
	.dwattr $C$DW$658, DW_AT_decl_column(0x19)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$659, DW_AT_name("phase1WordLength")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x219)
	.dwattr $C$DW$659, DW_AT_decl_column(0x1b)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$660, DW_AT_name("phase2WordLength")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$660, DW_AT_decl_column(0x1b)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$661, DW_AT_name("compandingMode")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x21b)
	.dwattr $C$DW$661, DW_AT_decl_column(0x1a)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$662, DW_AT_name("dataDelayBits")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x21c)
	.dwattr $C$DW$662, DW_AT_decl_column(0x19)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$663, DW_AT_name("interruptMode")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$663, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$57, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("McBSP_TxDataParams")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$664	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$112)

$C$DW$T$113	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$664)

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$T$114	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$114


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x0b)
$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("loopbackModeFlag")
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x228)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0a)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("twoPhaseModeFlag")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x229)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0a)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$667, DW_AT_name("phase1FrameLength")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0e)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$668, DW_AT_name("phase2FrameLength")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0e)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$669, DW_AT_name("clockStopMode")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$669, DW_AT_decl_column(0x19)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$670, DW_AT_name("phase1WordLength")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$670, DW_AT_decl_column(0x1b)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$671, DW_AT_name("phase2WordLength")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x22e)
	.dwattr $C$DW$671, DW_AT_decl_column(0x1b)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$672, DW_AT_name("compandingMode")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x22f)
	.dwattr $C$DW$672, DW_AT_decl_column(0x1a)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$673, DW_AT_name("dataDelayBits")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x230)
	.dwattr $C$DW$673, DW_AT_decl_column(0x19)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$674, DW_AT_name("signExtMode")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x231)
	.dwattr $C$DW$674, DW_AT_decl_column(0x1f)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$675, DW_AT_name("interruptMode")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x232)
	.dwattr $C$DW$675, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$62, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x227)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("McBSP_RxDataParams")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x233)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116
$C$DW$676	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$115)

$C$DW$T$116	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$676)

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117
$C$DW$T$117	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$117


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x06)
$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$677, DW_AT_name("channelCountTx")
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x24c)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0e)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$678, DW_AT_name("ptrChannelsListTx")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0f)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$679, DW_AT_name("multichannelModeTx")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$679, DW_AT_decl_column(0x19)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$680, DW_AT_name("partitionTx")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x250)
	.dwattr $C$DW$680, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$68, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118
$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("McBSP_TxMultichannelParams")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x251)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$681	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$118)

$C$DW$T$119	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$681)

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$120


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x06)
$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$682, DW_AT_name("channelCountRx")
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0e)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$683, DW_AT_name("ptrChannelsListRx")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0f)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$684, DW_AT_name("multichannelModeRx")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x240)
	.dwattr $C$DW$684, DW_AT_decl_column(0x19)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$685, DW_AT_name("partitionRx")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x241)
	.dwattr $C$DW$685, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("McBSP_RxMultichannelParams")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x242)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122
$C$DW$686	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$121)

$C$DW$T$122	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$686)

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123
$C$DW$T$123	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$123, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$123


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x08)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("loopbackModeFlag")
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0a)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$688, DW_AT_name("clockSRGDivider")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x25c)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0e)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$689, DW_AT_name("clockStopMode")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$689, DW_AT_decl_column(0x19)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$690, DW_AT_name("wordLength")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x25e)
	.dwattr $C$DW$690, DW_AT_decl_column(0x1b)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$691, DW_AT_name("spiMode")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x25f)
	.dwattr $C$DW$691, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$74, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x25a)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("McBSP_SPIMasterModeParams")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x261)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x01)

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125
$C$DW$692	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$124)

$C$DW$T$125	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$692)

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$126


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x04)
$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("loopbackModeFlag")
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x26b)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0a)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$694, DW_AT_name("clockStopMode")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$694, DW_AT_decl_column(0x19)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$695, DW_AT_name("wordLength")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$695, DW_AT_decl_column(0x1b)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$696, DW_AT_name("spiMode")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$696, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$75, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127
$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("McBSP_SPISlaveModeParams")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\mcbsp.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x270)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x01)

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$697	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$127)

$C$DW$T$128	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$697)

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129
$C$DW$T$129	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$129


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


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$21


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$63


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


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$73


$C$DW$TU$179	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$179
$C$DW$T$179	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$179, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$179


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$19, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$19, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$19

