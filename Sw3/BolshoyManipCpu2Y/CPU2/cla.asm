;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:51 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/cla.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{F7C47A46-EEC9-45FA-9A09-465B3BFD16C1} 
	.sect	".text:CLA_setTriggerSource"
	.clink
	.global	||CLA_setTriggerSource||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("CLA_setTriggerSource")
	.dwattr $C$DW$1, DW_AT_low_pc(||CLA_setTriggerSource||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("CLA_setTriggerSource")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/cla.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 52,column 1,is_stmt,address ||CLA_setTriggerSource||,isa 0

	.dwfde $C$DW$CIE, ||CLA_setTriggerSource||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("taskNumber")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("trigger")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: CLA_setTriggerSource          FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||CLA_setTriggerSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("srcSelReg")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -2]

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("shiftVal")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -4]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("taskNumber")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -5]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("trigger")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[6],AH            ; [CPU_ALU] |52| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |52| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 59,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 3      ; [CPU_ALU] |59| 
        MOV32     R1H,ACC               ; [CPU_FPU] |59| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R3H,#0                ; [CPU_FPU] |59| 
        ZERO      R2                    ; [CPU_FPU] |59| 
        MOVXI     R3H,#32               ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |59| 
        MOV32     *-SP[4],R2H           ; [CPU_FPU] |59| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 64,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |64| 
        CMPB      AL,#3                 ; [CPU_ALU] |64| 
        B         ||$C$L1||,HI          ; [CPU_ALU] |64| 
        ; branchcc occurs ; [] |64| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 69,column 9,is_stmt,isa 0
        MOVL      XAR4,#31110           ; [CPU_ARAU] |69| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |69| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 76,column 9,is_stmt,isa 0
        MOVL      XAR4,#31112           ; [CPU_ARAU] |76| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |76| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 79,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |79| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 84,column 5,is_stmt,isa 0
        MOVB      ACC,#255              ; [CPU_ALU] |84| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |84| 
        MOV       T,*-SP[4]             ; [CPU_ALU] |84| 
        LSLL      ACC,T                 ; [CPU_ALU] |84| 
        NOT       ACC                   ; [CPU_ALU] |84| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |84| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |84| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 86,column 5,is_stmt,isa 0
        MOV       T,*-SP[4]             ; [CPU_ALU] |86| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |86| 
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |86| 
        MOVU      ACC,*-SP[6]           ; [CPU_ALU] |86| 
        LSLL      ACC,T                 ; [CPU_ALU] |86| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |86| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |86| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |86| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 88,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |88| 
	.dwpsn	file "../F2838x_driverlib/driverlib/cla.c",line 89,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/cla.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x59)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1


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
$C$DW$9	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$9, DW_AT_name("CLA_TASK_1")
	.dwattr $C$DW$9, DW_AT_const_value(0x00)
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$9, DW_AT_decl_column(0x05)

$C$DW$10	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$10, DW_AT_name("CLA_TASK_2")
	.dwattr $C$DW$10, DW_AT_const_value(0x01)
	.dwattr $C$DW$10, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$10, DW_AT_decl_column(0x05)

$C$DW$11	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$11, DW_AT_name("CLA_TASK_3")
	.dwattr $C$DW$11, DW_AT_const_value(0x02)
	.dwattr $C$DW$11, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x80)
	.dwattr $C$DW$11, DW_AT_decl_column(0x05)

$C$DW$12	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$12, DW_AT_name("CLA_TASK_4")
	.dwattr $C$DW$12, DW_AT_const_value(0x03)
	.dwattr $C$DW$12, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x81)
	.dwattr $C$DW$12, DW_AT_decl_column(0x05)

$C$DW$13	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$13, DW_AT_name("CLA_TASK_5")
	.dwattr $C$DW$13, DW_AT_const_value(0x04)
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x82)
	.dwattr $C$DW$13, DW_AT_decl_column(0x05)

$C$DW$14	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$14, DW_AT_name("CLA_TASK_6")
	.dwattr $C$DW$14, DW_AT_const_value(0x05)
	.dwattr $C$DW$14, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x83)
	.dwattr $C$DW$14, DW_AT_decl_column(0x05)

$C$DW$15	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$15, DW_AT_name("CLA_TASK_7")
	.dwattr $C$DW$15, DW_AT_const_value(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x84)
	.dwattr $C$DW$15, DW_AT_decl_column(0x05)

$C$DW$16	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$16, DW_AT_name("CLA_TASK_8")
	.dwattr $C$DW$16, DW_AT_const_value(0x07)
	.dwattr $C$DW$16, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x85)
	.dwattr $C$DW$16, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("CLA_TaskNumber")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$17	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$17, DW_AT_name("CLA_TRIGGER_SOFTWARE")
	.dwattr $C$DW$17, DW_AT_const_value(0x00)
	.dwattr $C$DW$17, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$17, DW_AT_decl_column(0x05)

$C$DW$18	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$18, DW_AT_name("CLA_TRIGGER_ADCA1")
	.dwattr $C$DW$18, DW_AT_const_value(0x01)
	.dwattr $C$DW$18, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$18, DW_AT_decl_column(0x05)

$C$DW$19	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$19, DW_AT_name("CLA_TRIGGER_ADCA2")
	.dwattr $C$DW$19, DW_AT_const_value(0x02)
	.dwattr $C$DW$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)

$C$DW$20	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$20, DW_AT_name("CLA_TRIGGER_ADCA3")
	.dwattr $C$DW$20, DW_AT_const_value(0x03)
	.dwattr $C$DW$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$20, DW_AT_decl_column(0x05)

$C$DW$21	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$21, DW_AT_name("CLA_TRIGGER_ADCA4")
	.dwattr $C$DW$21, DW_AT_const_value(0x04)
	.dwattr $C$DW$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$21, DW_AT_decl_column(0x05)

$C$DW$22	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$22, DW_AT_name("CLA_TRIGGER_ADCAEVT")
	.dwattr $C$DW$22, DW_AT_const_value(0x05)
	.dwattr $C$DW$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$22, DW_AT_decl_column(0x05)

$C$DW$23	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$23, DW_AT_name("CLA_TRIGGER_ADCB1")
	.dwattr $C$DW$23, DW_AT_const_value(0x06)
	.dwattr $C$DW$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$23, DW_AT_decl_column(0x05)

$C$DW$24	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$24, DW_AT_name("CLA_TRIGGER_ADCB2")
	.dwattr $C$DW$24, DW_AT_const_value(0x07)
	.dwattr $C$DW$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$24, DW_AT_decl_column(0x05)

$C$DW$25	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$25, DW_AT_name("CLA_TRIGGER_ADCB3")
	.dwattr $C$DW$25, DW_AT_const_value(0x08)
	.dwattr $C$DW$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0xab)
	.dwattr $C$DW$25, DW_AT_decl_column(0x05)

$C$DW$26	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$26, DW_AT_name("CLA_TRIGGER_ADCB4")
	.dwattr $C$DW$26, DW_AT_const_value(0x09)
	.dwattr $C$DW$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0xac)
	.dwattr $C$DW$26, DW_AT_decl_column(0x05)

$C$DW$27	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$27, DW_AT_name("CLA_TRIGGER_ADCBEVT")
	.dwattr $C$DW$27, DW_AT_const_value(0x0a)
	.dwattr $C$DW$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0xad)
	.dwattr $C$DW$27, DW_AT_decl_column(0x05)

$C$DW$28	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$28, DW_AT_name("CLA_TRIGGER_ADCC1")
	.dwattr $C$DW$28, DW_AT_const_value(0x0b)
	.dwattr $C$DW$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0xae)
	.dwattr $C$DW$28, DW_AT_decl_column(0x05)

$C$DW$29	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$29, DW_AT_name("CLA_TRIGGER_ADCC2")
	.dwattr $C$DW$29, DW_AT_const_value(0x0c)
	.dwattr $C$DW$29, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$29, DW_AT_decl_column(0x05)

$C$DW$30	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$30, DW_AT_name("CLA_TRIGGER_ADCC3")
	.dwattr $C$DW$30, DW_AT_const_value(0x0d)
	.dwattr $C$DW$30, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$30, DW_AT_decl_column(0x05)

$C$DW$31	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$31, DW_AT_name("CLA_TRIGGER_ADCC4")
	.dwattr $C$DW$31, DW_AT_const_value(0x0e)
	.dwattr $C$DW$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$31, DW_AT_decl_column(0x05)

$C$DW$32	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$32, DW_AT_name("CLA_TRIGGER_ADCCEVT")
	.dwattr $C$DW$32, DW_AT_const_value(0x0f)
	.dwattr $C$DW$32, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$32, DW_AT_decl_column(0x05)

$C$DW$33	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$33, DW_AT_name("CLA_TRIGGER_ADCD1")
	.dwattr $C$DW$33, DW_AT_const_value(0x10)
	.dwattr $C$DW$33, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)

$C$DW$34	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$34, DW_AT_name("CLA_TRIGGER_ADCD2")
	.dwattr $C$DW$34, DW_AT_const_value(0x11)
	.dwattr $C$DW$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$34, DW_AT_decl_column(0x05)

$C$DW$35	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$35, DW_AT_name("CLA_TRIGGER_ADCD3")
	.dwattr $C$DW$35, DW_AT_const_value(0x12)
	.dwattr $C$DW$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$35, DW_AT_decl_column(0x05)

$C$DW$36	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$36, DW_AT_name("CLA_TRIGGER_ADCD4")
	.dwattr $C$DW$36, DW_AT_const_value(0x13)
	.dwattr $C$DW$36, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$36, DW_AT_decl_column(0x05)

$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("CLA_TRIGGER_ADCDEVT")
	.dwattr $C$DW$37, DW_AT_const_value(0x14)
	.dwattr $C$DW$37, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$37, DW_AT_decl_column(0x05)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("CLA_TRIGGER_XINT1")
	.dwattr $C$DW$38, DW_AT_const_value(0x1d)
	.dwattr $C$DW$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$38, DW_AT_decl_column(0x05)

$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("CLA_TRIGGER_XINT2")
	.dwattr $C$DW$39, DW_AT_const_value(0x1e)
	.dwattr $C$DW$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0xba)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("CLA_TRIGGER_XINT3")
	.dwattr $C$DW$40, DW_AT_const_value(0x1f)
	.dwattr $C$DW$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$40, DW_AT_decl_column(0x05)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("CLA_TRIGGER_XINT4")
	.dwattr $C$DW$41, DW_AT_const_value(0x20)
	.dwattr $C$DW$41, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("CLA_TRIGGER_XINT5")
	.dwattr $C$DW$42, DW_AT_const_value(0x21)
	.dwattr $C$DW$42, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("CLA_TRIGGER_EPWM1INT")
	.dwattr $C$DW$43, DW_AT_const_value(0x24)
	.dwattr $C$DW$43, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$43, DW_AT_decl_column(0x05)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("CLA_TRIGGER_EPWM2INT")
	.dwattr $C$DW$44, DW_AT_const_value(0x25)
	.dwattr $C$DW$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("CLA_TRIGGER_EPWM3INT")
	.dwattr $C$DW$45, DW_AT_const_value(0x26)
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("CLA_TRIGGER_EPWM4INT")
	.dwattr $C$DW$46, DW_AT_const_value(0x27)
	.dwattr $C$DW$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("CLA_TRIGGER_EPWM5INT")
	.dwattr $C$DW$47, DW_AT_const_value(0x28)
	.dwattr $C$DW$47, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("CLA_TRIGGER_EPWM6INT")
	.dwattr $C$DW$48, DW_AT_const_value(0x29)
	.dwattr $C$DW$48, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

$C$DW$49	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$49, DW_AT_name("CLA_TRIGGER_EPWM7INT")
	.dwattr $C$DW$49, DW_AT_const_value(0x2a)
	.dwattr $C$DW$49, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)

$C$DW$50	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$50, DW_AT_name("CLA_TRIGGER_EPWM8INT")
	.dwattr $C$DW$50, DW_AT_const_value(0x2b)
	.dwattr $C$DW$50, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$50, DW_AT_decl_column(0x05)

$C$DW$51	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$51, DW_AT_name("CLA_TRIGGER_EPWM9INT")
	.dwattr $C$DW$51, DW_AT_const_value(0x2c)
	.dwattr $C$DW$51, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$51, DW_AT_decl_column(0x05)

$C$DW$52	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$52, DW_AT_name("CLA_TRIGGER_EPWM10INT")
	.dwattr $C$DW$52, DW_AT_const_value(0x2d)
	.dwattr $C$DW$52, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$52, DW_AT_decl_column(0x05)

$C$DW$53	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$53, DW_AT_name("CLA_TRIGGER_EPWM11INT")
	.dwattr $C$DW$53, DW_AT_const_value(0x2e)
	.dwattr $C$DW$53, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$53, DW_AT_decl_column(0x05)

$C$DW$54	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$54, DW_AT_name("CLA_TRIGGER_EPWM12INT")
	.dwattr $C$DW$54, DW_AT_const_value(0x2f)
	.dwattr $C$DW$54, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0xca)
	.dwattr $C$DW$54, DW_AT_decl_column(0x05)

$C$DW$55	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$55, DW_AT_name("CLA_TRIGGER_EPWM13INT")
	.dwattr $C$DW$55, DW_AT_const_value(0x30)
	.dwattr $C$DW$55, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$55, DW_AT_decl_column(0x05)

$C$DW$56	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$56, DW_AT_name("CLA_TRIGGER_EPWM14INT")
	.dwattr $C$DW$56, DW_AT_const_value(0x31)
	.dwattr $C$DW$56, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$56, DW_AT_decl_column(0x05)

$C$DW$57	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$57, DW_AT_name("CLA_TRIGGER_EPWM15INT")
	.dwattr $C$DW$57, DW_AT_const_value(0x32)
	.dwattr $C$DW$57, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$57, DW_AT_decl_column(0x05)

$C$DW$58	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$58, DW_AT_name("CLA_TRIGGER_EPWM16INT")
	.dwattr $C$DW$58, DW_AT_const_value(0x33)
	.dwattr $C$DW$58, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xce)
	.dwattr $C$DW$58, DW_AT_decl_column(0x05)

$C$DW$59	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$59, DW_AT_name("CLA_TRIGGER_MCANA_FEVT0")
	.dwattr $C$DW$59, DW_AT_const_value(0x34)
	.dwattr $C$DW$59, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$59, DW_AT_decl_column(0x05)

$C$DW$60	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$60, DW_AT_name("CLA_TRIGGER_MCANA_FEVT1")
	.dwattr $C$DW$60, DW_AT_const_value(0x35)
	.dwattr $C$DW$60, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$60, DW_AT_decl_column(0x05)

$C$DW$61	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$61, DW_AT_name("CLA_TRIGGER_MCANA_FEVT2")
	.dwattr $C$DW$61, DW_AT_const_value(0x36)
	.dwattr $C$DW$61, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$61, DW_AT_decl_column(0x05)

$C$DW$62	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$62, DW_AT_name("CLA_TRIGGER_TINT0")
	.dwattr $C$DW$62, DW_AT_const_value(0x44)
	.dwattr $C$DW$62, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$62, DW_AT_decl_column(0x05)

$C$DW$63	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$63, DW_AT_name("CLA_TRIGGER_TINT1")
	.dwattr $C$DW$63, DW_AT_const_value(0x45)
	.dwattr $C$DW$63, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$63, DW_AT_decl_column(0x05)

$C$DW$64	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$64, DW_AT_name("CLA_TRIGGER_TINT2")
	.dwattr $C$DW$64, DW_AT_const_value(0x46)
	.dwattr $C$DW$64, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$64, DW_AT_decl_column(0x05)

$C$DW$65	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$65, DW_AT_name("CLA_TRIGGER_MXINTA")
	.dwattr $C$DW$65, DW_AT_const_value(0x47)
	.dwattr $C$DW$65, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$65, DW_AT_decl_column(0x05)

$C$DW$66	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$66, DW_AT_name("CLA_TRIGGER_MRINTA")
	.dwattr $C$DW$66, DW_AT_const_value(0x48)
	.dwattr $C$DW$66, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$66, DW_AT_decl_column(0x05)

$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("CLA_TRIGGER_MXINTB")
	.dwattr $C$DW$67, DW_AT_const_value(0x49)
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xda)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("CLA_TRIGGER_MRINTB")
	.dwattr $C$DW$68, DW_AT_const_value(0x4a)
	.dwattr $C$DW$68, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("CLA_TRIGGER_ECAP1INT")
	.dwattr $C$DW$69, DW_AT_const_value(0x4b)
	.dwattr $C$DW$69, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("CLA_TRIGGER_ECAP2INT")
	.dwattr $C$DW$70, DW_AT_const_value(0x4c)
	.dwattr $C$DW$70, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xde)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

$C$DW$71	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$71, DW_AT_name("CLA_TRIGGER_ECAP3INT")
	.dwattr $C$DW$71, DW_AT_const_value(0x4d)
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$71, DW_AT_decl_column(0x05)

$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("CLA_TRIGGER_ECAP4INT")
	.dwattr $C$DW$72, DW_AT_const_value(0x4e)
	.dwattr $C$DW$72, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("CLA_TRIGGER_ECAP5INT")
	.dwattr $C$DW$73, DW_AT_const_value(0x4f)
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("CLA_TRIGGER_ECAP6INT")
	.dwattr $C$DW$74, DW_AT_const_value(0x50)
	.dwattr $C$DW$74, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("CLA_TRIGGER_ECAP7INT")
	.dwattr $C$DW$75, DW_AT_const_value(0x51)
	.dwattr $C$DW$75, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("CLA_TRIGGER_EQEP1INT")
	.dwattr $C$DW$76, DW_AT_const_value(0x53)
	.dwattr $C$DW$76, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("CLA_TRIGGER_EQEP2INT")
	.dwattr $C$DW$77, DW_AT_const_value(0x54)
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("CLA_TRIGGER_EQEP3INT")
	.dwattr $C$DW$78, DW_AT_const_value(0x55)
	.dwattr $C$DW$78, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("CLA_TRIGGER_ECAP6INT2")
	.dwattr $C$DW$79, DW_AT_const_value(0x5c)
	.dwattr $C$DW$79, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("CLA_TRIGGER_ECAP7INT2")
	.dwattr $C$DW$80, DW_AT_const_value(0x5d)
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xea)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("CLA_TRIGGER_SDFM1INT")
	.dwattr $C$DW$81, DW_AT_const_value(0x5f)
	.dwattr $C$DW$81, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xec)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("CLA_TRIGGER_SDFM2INT")
	.dwattr $C$DW$82, DW_AT_const_value(0x60)
	.dwattr $C$DW$82, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xed)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("CLA_TRIGGER_ECATSYNC0INT")
	.dwattr $C$DW$83, DW_AT_const_value(0x67)
	.dwattr $C$DW$83, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xef)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("CLA_TRIGGER_ECATSYNC1INT")
	.dwattr $C$DW$84, DW_AT_const_value(0x68)
	.dwattr $C$DW$84, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("CLA_TRIGGER_PMBUSAINT")
	.dwattr $C$DW$85, DW_AT_const_value(0x69)
	.dwattr $C$DW$85, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("CLA_TRIGGER_SPITXAINT")
	.dwattr $C$DW$86, DW_AT_const_value(0x6d)
	.dwattr $C$DW$86, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("CLA_TRIGGER_SPIRXAINT")
	.dwattr $C$DW$87, DW_AT_const_value(0x6e)
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("CLA_TRIGGER_SPITXBINT")
	.dwattr $C$DW$88, DW_AT_const_value(0x6f)
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("CLA_TRIGGER_SPIRXBINT")
	.dwattr $C$DW$89, DW_AT_const_value(0x70)
	.dwattr $C$DW$89, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("CLA_TRIGGER_SPITXCINT")
	.dwattr $C$DW$90, DW_AT_const_value(0x71)
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("CLA_TRIGGER_SPIRXCINT")
	.dwattr $C$DW$91, DW_AT_const_value(0x72)
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("CLA_TRIGGER_SPITXDINT")
	.dwattr $C$DW$92, DW_AT_const_value(0x73)
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("CLA_TRIGGER_SPIRXDINT")
	.dwattr $C$DW$93, DW_AT_const_value(0x74)
	.dwattr $C$DW$93, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("CLA_TRIGGER_CLA1CRCINT")
	.dwattr $C$DW$94, DW_AT_const_value(0x79)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x100)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("CLA_TRIGGER_FSITXAINT1")
	.dwattr $C$DW$95, DW_AT_const_value(0x7b)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x102)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("CLA_TRIGGER_FSITXAINT2")
	.dwattr $C$DW$96, DW_AT_const_value(0x7c)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x103)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("CLA_TRIGGER_FSIRXAINT1")
	.dwattr $C$DW$97, DW_AT_const_value(0x7d)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x104)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("CLA_TRIGGER_FSIRXAINT2")
	.dwattr $C$DW$98, DW_AT_const_value(0x7e)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x105)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("CLA_TRIGGER_SDFM1DRINT1")
	.dwattr $C$DW$99, DW_AT_const_value(0x8f)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x108)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("CLA_TRIGGER_SDFM1DRINT2")
	.dwattr $C$DW$100, DW_AT_const_value(0x90)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x109)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("CLA_TRIGGER_SDFM1DRINT3")
	.dwattr $C$DW$101, DW_AT_const_value(0x91)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("CLA_TRIGGER_SDFM1DRINT4")
	.dwattr $C$DW$102, DW_AT_const_value(0x92)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("CLA_TRIGGER_SDFM2DRINT1")
	.dwattr $C$DW$103, DW_AT_const_value(0x93)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("CLA_TRIGGER_SDFM2DRINT2")
	.dwattr $C$DW$104, DW_AT_const_value(0x94)
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("CLA_TRIGGER_SDFM2DRINT3")
	.dwattr $C$DW$105, DW_AT_const_value(0x95)
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("CLA_TRIGGER_SDFM2DRINT4")
	.dwattr $C$DW$106, DW_AT_const_value(0x96)
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("CLA_TRIGGER_FSITXBINT1")
	.dwattr $C$DW$107, DW_AT_const_value(0x9b)
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x111)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("CLA_TRIGGER_FSITXBINT2")
	.dwattr $C$DW$108, DW_AT_const_value(0x9c)
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x112)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("CLA_TRIGGER_FSIRXBINT1")
	.dwattr $C$DW$109, DW_AT_const_value(0x9d)
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x113)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("CLA_TRIGGER_FSIRXBINT2")
	.dwattr $C$DW$110, DW_AT_const_value(0x9e)
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x114)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("CLA_TRIGGER_FSIRXCINT1")
	.dwattr $C$DW$111, DW_AT_const_value(0x9f)
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x115)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("CLA_TRIGGER_FSIRXCINT2")
	.dwattr $C$DW$112, DW_AT_const_value(0xa0)
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x116)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("CLA_TRIGGER_FSIRXDINT1")
	.dwattr $C$DW$113, DW_AT_const_value(0xa1)
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x117)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("CLA_TRIGGER_FSIRXDINT2")
	.dwattr $C$DW$114, DW_AT_const_value(0xa2)
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x118)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("CLA_TRIGGER_FSIRXEINT1")
	.dwattr $C$DW$115, DW_AT_const_value(0xa3)
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x119)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("CLA_TRIGGER_FSIRXEINT2")
	.dwattr $C$DW$116, DW_AT_const_value(0xa4)
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("CLA_TRIGGER_FSIRXFINT1")
	.dwattr $C$DW$117, DW_AT_const_value(0xa5)
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("CLA_TRIGGER_FSIRXFINT2")
	.dwattr $C$DW$118, DW_AT_const_value(0xa6)
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("CLA_TRIGGER_FSIRXGINT1")
	.dwattr $C$DW$119, DW_AT_const_value(0xa7)
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("CLA_TRIGGER_FSIRXGINT2")
	.dwattr $C$DW$120, DW_AT_const_value(0xa8)
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("CLA_TRIGGER_FSIRXHINT1")
	.dwattr $C$DW$121, DW_AT_const_value(0xa9)
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("CLA_TRIGGER_FSIRXHINT2")
	.dwattr $C$DW$122, DW_AT_const_value(0xaa)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x120)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("CLA_Trigger")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\cla.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x121)
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


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


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


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$25


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

