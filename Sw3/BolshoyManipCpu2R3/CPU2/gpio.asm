;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:15 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{8B74B31E-37AA-4ACD-81C0-7088274A9351} 
	.sect	".text:XBAR_setInputPin"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("XBAR_setInputPin")
	.dwattr $C$DW$1, DW_AT_low_pc(||XBAR_setInputPin||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("XBAR_setInputPin")
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x3b7)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\xbar.h",line 952,column 1,is_stmt,address ||XBAR_setInputPin||,isa 0

	.dwfde $C$DW$CIE, ||XBAR_setInputPin||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("input")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("pin")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: XBAR_setInputPin              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||XBAR_setInputPin||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("base")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("input")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -3]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("pin")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |952| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |952| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |952| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\xbar.h",line 963,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |963| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\xbar.h",line 965,column 5,is_stmt,isa 0
        MOVZ      AR0,*-SP[3]           ; [CPU_ALU] |965| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |965| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |965| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |965| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\xbar.h",line 967,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |967| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\xbar.h",line 968,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x3c8)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:GPIO_setDirectionMode"
	.clink
	.global	||GPIO_setDirectionMode||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$9, DW_AT_low_pc(||GPIO_setDirectionMode||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x33)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 52,column 1,is_stmt,address ||GPIO_setDirectionMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setDirectionMode||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("pin")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("pinIO")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setDirectionMode         FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||GPIO_setDirectionMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("pin")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -2]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -4]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("pinMask")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -6]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("pinIO")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[7],AR4           ; [CPU_ALU] |52| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |52| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 61,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |61| 
        ZERO      R2                    ; [CPU_FPU] |61| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |61| 
        MOVXI     R3H,#32               ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |61| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |61| 
        LSL       ACC,5                 ; [CPU_ALU] |61| 
        LSL       ACC,1                 ; [CPU_ALU] |61| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |61| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |61| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 63,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |63| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |63| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |63| 
        MOVXI     R3H,#32               ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |63| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |63| 
        MOV       T,AL                  ; [CPU_ALU] |63| 
        MOVB      ACC,#1                ; [CPU_ALU] |63| 
        LSLL      ACC,T                 ; [CPU_ALU] |63| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |63| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 65,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |65| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 70,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |70| 
        CMPB      AL,#1                 ; [CPU_ALU] |70| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |70| 
        ; branchcc occurs ; [] |70| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 75,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |75| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |75| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |75| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |75| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |75| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |75| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 82,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |82| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |82| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |82| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |82| 
        NOT       ACC                   ; [CPU_ALU] |82| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |82| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |82| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 85,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |85| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 86,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:GPIO_getDirectionMode"
	.clink
	.global	||GPIO_getDirectionMode||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("GPIO_getDirectionMode")
	.dwattr $C$DW$17, DW_AT_low_pc(||GPIO_getDirectionMode||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("GPIO_getDirectionMode")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 95,column 1,is_stmt,address ||GPIO_getDirectionMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_getDirectionMode||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("pin")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_getDirectionMode         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||GPIO_getDirectionMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("pin")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |95| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 103,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |103| 
        ZERO      R2                    ; [CPU_FPU] |103| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |103| 
        MOVXI     R3H,#32               ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |103| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |103| 
        LSL       ACC,5                 ; [CPU_ALU] |103| 
        LSL       ACC,1                 ; [CPU_ALU] |103| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |103| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |103| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 106,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |106| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |106| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |106| 
        MOVXI     R3H,#32               ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |106| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |106| 
        MOV       T,AL                  ; [CPU_ALU] |106| 
        MOVB      ACC,#10               ; [CPU_ALU] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |106| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |106| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |106| 
        LSRL      ACC,T                 ; [CPU_ALU] |106| 
        ANDB      AL,#0x01              ; [CPU_ALU] |106| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 109,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:GPIO_setInterruptPin"
	.clink
	.global	||GPIO_setInterruptPin||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("GPIO_setInterruptPin")
	.dwattr $C$DW$22, DW_AT_low_pc(||GPIO_setInterruptPin||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("GPIO_setInterruptPin")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x75)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 118,column 1,is_stmt,address ||GPIO_setInterruptPin||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setInterruptPin||
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("pin")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("extIntNum")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setInterruptPin          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||GPIO_setInterruptPin||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("pin")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -2]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("extIntNum")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -3]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("input")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |118| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |118| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 129,column 5,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |129| 
        ; branch occurs ; [] |129| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 132,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#3,UNC        ; [CPU_ALU] |132| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 133,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |133| 
        ; branch occurs ; [] |133| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 136,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#4,UNC        ; [CPU_ALU] |136| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 137,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |137| 
        ; branch occurs ; [] |137| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 140,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#5,UNC        ; [CPU_ALU] |140| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 141,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |141| 
        ; branch occurs ; [] |141| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 144,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#12,UNC       ; [CPU_ALU] |144| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 145,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |145| 
        ; branch occurs ; [] |145| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 148,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#13,UNC       ; [CPU_ALU] |148| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 149,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |149| 
        ; branch occurs ; [] |149| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 157,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |157| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 158,column 13,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |158| 
        ; branch occurs ; [] |158| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 129,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |129| 
        CMPB      AL,#2                 ; [CPU_ALU] |129| 
        B         ||$C$L10||,GT         ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#2                 ; [CPU_ALU] |129| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#0                 ; [CPU_ALU] |129| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#1                 ; [CPU_ALU] |129| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |129| 
        ; branch occurs ; [] |129| 
||$C$L10||:    
        CMPB      AL,#3                 ; [CPU_ALU] |129| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        CMPB      AL,#4                 ; [CPU_ALU] |129| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |129| 
        ; branch occurs ; [] |129| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 161,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |161| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |161| 
        ; branchcc occurs ; [] |161| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 163,column 9,is_stmt,isa 0
        MOV       ACC,#30976            ; [CPU_ALU] |163| 
        MOVZ      AR5,*-SP[2]           ; [CPU_ALU] |163| 
        MOVZ      AR4,*-SP[4]           ; [CPU_ALU] |163| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("XBAR_setInputPin")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||XBAR_setInputPin|| ; [CPU_ALU] |163| 
        ; call occurs [#||XBAR_setInputPin||] ; [] |163| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 165,column 1,is_stmt,isa 0
||$C$L12||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xa5)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text:GPIO_setPadConfig"
	.clink
	.global	||GPIO_setPadConfig||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$30, DW_AT_low_pc(||GPIO_setPadConfig||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("GPIO_setPadConfig")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0xad)
	.dwattr $C$DW$30, DW_AT_decl_column(0x01)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 174,column 1,is_stmt,address ||GPIO_setPadConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setPadConfig||
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("pin")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("pinType")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: GPIO_setPadConfig             FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||GPIO_setPadConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("pin")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -2]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -4]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("pinMask")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |174| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 183,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |183| 
        ZERO      R2                    ; [CPU_FPU] |183| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |183| 
        MOVXI     R3H,#32               ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |183| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |183| 
        LSL       ACC,5                 ; [CPU_ALU] |183| 
        LSL       ACC,1                 ; [CPU_ALU] |183| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |183| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |183| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 185,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |185| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |185| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |185| 
        MOVXI     R3H,#32               ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |185| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |185| 
        MOV       T,AL                  ; [CPU_ALU] |185| 
        MOVB      ACC,#1                ; [CPU_ALU] |185| 
        LSLL      ACC,T                 ; [CPU_ALU] |185| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |185| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 187,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |187| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 192,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |192| 
        TBIT      AL,#2                 ; [CPU_ALU] |192| 
        B         ||$C$L13||,NTC        ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 194,column 9,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |194| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |194| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |194| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |194| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |194| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |194| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 198,column 9,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |198| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |198| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |198| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |198| 
        NOT       ACC                   ; [CPU_ALU] |198| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |198| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |198| 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 204,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |204| 
        TBIT      AL,#0                 ; [CPU_ALU] |204| 
        B         ||$C$L15||,NTC        ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 206,column 9,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |206| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |206| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |206| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |206| 
        NOT       ACC                   ; [CPU_ALU] |206| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |206| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |206| 
        B         ||$C$L16||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 210,column 9,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |210| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |210| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |210| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |210| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |210| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |210| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 216,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |216| 
        TBIT      AL,#1                 ; [CPU_ALU] |216| 
        B         ||$C$L17||,NTC        ; [CPU_ALU] |216| 
        ; branchcc occurs ; [] |216| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 218,column 9,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |218| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |218| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |218| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |218| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |218| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |218| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 222,column 9,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |222| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |222| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |222| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |222| 
        NOT       ACC                   ; [CPU_ALU] |222| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |222| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |222| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 225,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 226,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0xe2)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:GPIO_getPadConfig"
	.clink
	.global	||GPIO_getPadConfig||

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("GPIO_getPadConfig")
	.dwattr $C$DW$37, DW_AT_low_pc(||GPIO_getPadConfig||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("GPIO_getPadConfig")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$37, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0xea)
	.dwattr $C$DW$37, DW_AT_decl_column(0x01)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 235,column 1,is_stmt,address ||GPIO_getPadConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_getPadConfig||
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("pin")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_getPadConfig             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||GPIO_getPadConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("pin")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -2]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -4]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("pinMask")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -6]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("pinTypeRes")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 245,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |245| 
        ZERO      R2                    ; [CPU_FPU] |245| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |245| 
        MOVXI     R3H,#32               ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |245| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |245| 
        LSL       ACC,5                 ; [CPU_ALU] |245| 
        LSL       ACC,1                 ; [CPU_ALU] |245| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |245| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |245| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 247,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |247| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |247| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |247| 
        MOVXI     R3H,#32               ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |247| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |247| 
        MOV       T,AL                  ; [CPU_ALU] |247| 
        MOVB      ACC,#1                ; [CPU_ALU] |247| 
        LSLL      ACC,T                 ; [CPU_ALU] |247| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |247| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 249,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |249| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |249| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 254,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |254| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |254| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |254| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |254| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |254| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |254| 
        TEST      ACC                   ; [CPU_ALU] |254| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |254| 
        ; branchcc occurs ; [] |254| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 256,column 9,is_stmt,isa 0
        OR        *-SP[8],#4            ; [CPU_ALU] |256| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 262,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |262| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |262| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |262| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |262| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |262| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |262| 
        TEST      ACC                   ; [CPU_ALU] |262| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |262| 
        ; branchcc occurs ; [] |262| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 264,column 9,is_stmt,isa 0
        OR        *-SP[8],#1            ; [CPU_ALU] |264| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 270,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |270| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |270| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |270| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |270| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |270| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |270| 
        TEST      ACC                   ; [CPU_ALU] |270| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 272,column 9,is_stmt,isa 0
        OR        *-SP[8],#2            ; [CPU_ALU] |272| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 275,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |275| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 276,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x114)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:GPIO_setQualificationMode"
	.clink
	.global	||GPIO_setQualificationMode||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$44, DW_AT_low_pc(||GPIO_setQualificationMode||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$44, DW_AT_decl_column(0x01)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 285,column 1,is_stmt,address ||GPIO_setQualificationMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setQualificationMode||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("pin")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("qualification")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setQualificationMode     FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  9 Auto,  0 SOE     *
;***************************************************************

||GPIO_setQualificationMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("pin")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -2]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -4]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("qSelIndex")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -6]

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("shiftAmt")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -8]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("qualification")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -9]

        MOV       *-SP[9],AR4           ; [CPU_ALU] |285| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |285| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 295,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |295| 
        ZERO      R2                    ; [CPU_FPU] |295| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |295| 
        MOVXI     R3H,#32               ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |295| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |295| 
        LSL       ACC,5                 ; [CPU_ALU] |295| 
        LSL       ACC,1                 ; [CPU_ALU] |295| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |295| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 297,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |297| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |297| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |297| 
        MOVXI     R3H,#16               ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |297| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |297| 
        LSL       ACC,1                 ; [CPU_ALU] |297| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |297| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 298,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |298| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |298| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |298| 
        MOVXI     R3H,#32               ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R2H              ; [CPU_FPU] |298| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |298| 
        NOP       ; [CPU_ALU] 
        ZERO      R2                    ; [CPU_FPU] |298| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |298| 
        MOVXI     R3H,#16               ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |298| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |298| 
        ADDB      ACC,#1                ; [CPU_ALU] |298| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |298| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 303,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |303| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 305,column 5,is_stmt,isa 0
        MOV       T,*-SP[8]             ; [CPU_ALU] |305| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |305| 
        LSL       ACC,1                 ; [CPU_ALU] |305| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |305| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |305| 
        MOVB      ACC,#3                ; [CPU_ALU] |305| 
        LSLL      ACC,T                 ; [CPU_ALU] |305| 
        NOT       ACC                   ; [CPU_ALU] |305| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |305| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |305| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 306,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |306| 
        LSL       ACC,1                 ; [CPU_ALU] |306| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |306| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |306| 
        MOV       T,*-SP[8]             ; [CPU_ALU] |306| 
        MOVU      ACC,*-SP[9]           ; [CPU_ALU] |306| 
        LSLL      ACC,T                 ; [CPU_ALU] |306| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |306| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |306| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 308,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |308| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 309,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:GPIO_getQualificationMode"
	.clink
	.global	||GPIO_getQualificationMode||

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("GPIO_getQualificationMode")
	.dwattr $C$DW$53, DW_AT_low_pc(||GPIO_getQualificationMode||)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_linkage_name("GPIO_getQualificationMode")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$53, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$53, DW_AT_decl_column(0x01)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 318,column 1,is_stmt,address ||GPIO_getQualificationMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_getQualificationMode||
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("pin")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_getQualificationMode     FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************

||GPIO_getQualificationMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("pin")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -2]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -4]

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("qSelIndex")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -6]

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("qualRes")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -8]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("shiftAmt")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -10]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |318| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 329,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |329| 
        ZERO      R2                    ; [CPU_FPU] |329| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |329| 
        MOVXI     R3H,#32               ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |329| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |329| 
        LSL       ACC,5                 ; [CPU_ALU] |329| 
        LSL       ACC,1                 ; [CPU_ALU] |329| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |329| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |329| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 331,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |331| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |331| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |331| 
        MOVXI     R3H,#16               ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |331| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |331| 
        LSL       ACC,1                 ; [CPU_ALU] |331| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |331| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 332,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |332| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |332| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |332| 
        MOVXI     R3H,#32               ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R2H              ; [CPU_FPU] |332| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |332| 
        NOP       ; [CPU_ALU] 
        ZERO      R2                    ; [CPU_FPU] |332| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |332| 
        MOVXI     R3H,#16               ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |332| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |332| 
        ADDB      ACC,#1                ; [CPU_ALU] |332| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |332| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 338,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |338| 
        LSL       ACC,1                 ; [CPU_ALU] |338| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |338| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |338| 
        MOV       T,*-SP[10]            ; [CPU_ALU] |338| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |338| 
        LSRL      ACC,T                 ; [CPU_ALU] |338| 
        MOVB      AH,#0                 ; [CPU_ALU] |338| 
        ANDB      AL,#0x03              ; [CPU_ALU] |338| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |338| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 340,column 5,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |340| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 341,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x155)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text:GPIO_setQualificationPeriod"
	.clink
	.global	||GPIO_setQualificationPeriod||

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("GPIO_setQualificationPeriod")
	.dwattr $C$DW$61, DW_AT_low_pc(||GPIO_setQualificationPeriod||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_linkage_name("GPIO_setQualificationPeriod")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 350,column 1,is_stmt,address ||GPIO_setQualificationPeriod||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setQualificationPeriod||
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("pin")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("divider")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -14]


;***************************************************************
;* FNAME: GPIO_setQualificationPeriod   FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************

||GPIO_setQualificationPeriod||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("pin")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg20 -2]

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -4]

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("pinMask")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -6]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("regVal")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -8]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("shiftAmt")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -10]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |350| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 360,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |360| 
        ZERO      R2                    ; [CPU_FPU] |360| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |360| 
        MOVXI     R3H,#32               ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |360| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |360| 
        AND       AL,#65528             ; [CPU_ALU] |360| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |360| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 361,column 5,is_stmt,isa 0
        MOV       T,*-SP[10]            ; [CPU_ALU] |361| 
        MOVB      ACC,#255              ; [CPU_ALU] |361| 
        LSLL      ACC,T                 ; [CPU_ALU] |361| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |361| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 367,column 5,is_stmt,isa 0
        MOV32     R1H,*-SP[14]          ; [CPU_FPU] |367| 
        ZERO      R2                    ; [CPU_FPU] |367| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |367| 
        MOVXI     R3H,#2                ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |367| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |367| 
        LSLL      ACC,T                 ; [CPU_ALU] |367| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |367| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 372,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |372| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |372| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |372| 
        MOVXI     R3H,#32               ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |372| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |372| 
        LSL       ACC,5                 ; [CPU_ALU] |372| 
        LSL       ACC,1                 ; [CPU_ALU] |372| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |372| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |372| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 375,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |375| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 376,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |376| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |376| 
        NOT       ACC                   ; [CPU_ALU] |376| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |376| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |376| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 377,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |377| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |377| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |377| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |377| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 378,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |378| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 379,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:GPIO_setMasterCore"
	.clink
	.global	||GPIO_setMasterCore||

$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("GPIO_setMasterCore")
	.dwattr $C$DW$70, DW_AT_low_pc(||GPIO_setMasterCore||)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_linkage_name("GPIO_setMasterCore")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x183)
	.dwattr $C$DW$70, DW_AT_decl_column(0x01)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 388,column 1,is_stmt,address ||GPIO_setMasterCore||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setMasterCore||
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("pin")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("core")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setMasterCore            FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  9 Auto,  0 SOE     *
;***************************************************************

||GPIO_setMasterCore||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("pin")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -2]

$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -4]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("cSelIndex")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -6]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("shiftAmt")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -8]

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("core")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -9]

        MOV       *-SP[9],AR4           ; [CPU_ALU] |388| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |388| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 398,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |398| 
        ZERO      R2                    ; [CPU_FPU] |398| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |398| 
        MOVXI     R3H,#32               ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |398| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |398| 
        LSL       ACC,5                 ; [CPU_ALU] |398| 
        LSL       ACC,1                 ; [CPU_ALU] |398| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |398| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |398| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 400,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |400| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |400| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |400| 
        MOVXI     R3H,#8                ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |400| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |400| 
        LSL       ACC,2                 ; [CPU_ALU] |400| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |400| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 401,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |401| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |401| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |401| 
        MOVXI     R3H,#32               ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R2H              ; [CPU_FPU] |401| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |401| 
        NOP       ; [CPU_ALU] 
        ZERO      R2                    ; [CPU_FPU] |401| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |401| 
        MOVXI     R3H,#8                ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |401| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |401| 
        ADDB      ACC,#20               ; [CPU_ALU] |401| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |401| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 406,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |406| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 407,column 5,is_stmt,isa 0
        MOV       T,*-SP[8]             ; [CPU_ALU] |407| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |407| 
        LSL       ACC,1                 ; [CPU_ALU] |407| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |407| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |407| 
        MOVB      ACC,#15               ; [CPU_ALU] |407| 
        LSLL      ACC,T                 ; [CPU_ALU] |407| 
        NOT       ACC                   ; [CPU_ALU] |407| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |407| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |407| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 408,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |408| 
        LSL       ACC,1                 ; [CPU_ALU] |408| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |408| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |408| 
        MOV       T,*-SP[8]             ; [CPU_ALU] |408| 
        MOVU      ACC,*-SP[9]           ; [CPU_ALU] |408| 
        LSLL      ACC,T                 ; [CPU_ALU] |408| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |408| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |408| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 409,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |409| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 410,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x19a)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text:GPIO_setAnalogMode"
	.clink
	.global	||GPIO_setAnalogMode||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("GPIO_setAnalogMode")
	.dwattr $C$DW$79, DW_AT_low_pc(||GPIO_setAnalogMode||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("GPIO_setAnalogMode")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$79, DW_AT_decl_column(0x01)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 419,column 1,is_stmt,address ||GPIO_setAnalogMode||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setAnalogMode||
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("pin")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("mode")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: GPIO_setAnalogMode            FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||GPIO_setAnalogMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("pin")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -2]

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("gpioBaseAddr")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -4]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("pinMask")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -6]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("mode")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[7],AR4           ; [CPU_ALU] |419| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |419| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 428,column 5,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |428| 
        ZERO      R2                    ; [CPU_FPU] |428| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |428| 
        MOVXI     R3H,#32               ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |428| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R2H               ; [CPU_FPU] |428| 
        MOV       T,AL                  ; [CPU_ALU] |428| 
        MOVB      ACC,#1                ; [CPU_ALU] |428| 
        LSLL      ACC,T                 ; [CPU_ALU] |428| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |428| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 429,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |429| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |429| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |429| 
        MOVXI     R3H,#32               ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |429| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |429| 
        LSL       ACC,5                 ; [CPU_ALU] |429| 
        LSL       ACC,1                 ; [CPU_ALU] |429| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |429| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |429| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 432,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |432| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 437,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |437| 
        CMPB      AL,#1                 ; [CPU_ALU] |437| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |437| 
        ; branchcc occurs ; [] |437| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 442,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |442| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |442| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |442| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |442| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |442| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |442| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 449,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |449| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |449| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |449| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |449| 
        NOT       ACC                   ; [CPU_ALU] |449| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |449| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |449| 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 452,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |452| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 453,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x1c5)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:GPIO_setPinConfig"
	.clink
	.global	||GPIO_setPinConfig||

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$87, DW_AT_low_pc(||GPIO_setPinConfig||)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$87, DW_AT_decl_column(0x01)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 462,column 1,is_stmt,address ||GPIO_setPinConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_setPinConfig||
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("pinConfig")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_setPinConfig             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||GPIO_setPinConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("pinConfig")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -2]

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("muxRegAddr")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -4]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("pinMask")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -6]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("shiftAmt")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |462| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 466,column 5,is_stmt,isa 0
        MOVU      ACC,AH                ; [CPU_ALU] |466| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |466| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |466| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 467,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |467| 
        SFR       ACC,8                 ; [CPU_ALU] |467| 
        MOVB      AH,#0                 ; [CPU_ALU] |467| 
        ANDB      AL,#0xff              ; [CPU_ALU] |467| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |467| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 468,column 5,is_stmt,isa 0
        MOV       T,*-SP[8]             ; [CPU_ALU] |468| 
        MOVB      ACC,#3                ; [CPU_ALU] |468| 
        LSLL      ACC,T                 ; [CPU_ALU] |468| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |468| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 475,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |475| 
        NOT       ACC                   ; [CPU_ALU] |475| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |475| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |475| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 480,column 5,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |480| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |480| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |480| 
        MOV       T,*-SP[8]             ; [CPU_ALU] |480| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |480| 
        NOT       ACC                   ; [CPU_ALU] |480| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |480| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |480| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |480| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |480| 
        SFR       ACC,2                 ; [CPU_ALU] |480| 
        MOVB      AH,#0                 ; [CPU_ALU] |480| 
        ANDB      AL,#0x03              ; [CPU_ALU] |480| 
        LSLL      ACC,T                 ; [CPU_ALU] |480| 
        MOVL      P,ACC                 ; [CPU_ALU] |480| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |480| 
        OR        AL,PL                 ; [CPU_ALU] |480| 
        OR        AH,PH                 ; [CPU_ALU] |480| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |480| 
        MOVB      ACC,#26               ; [CPU_ALU] |480| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |480| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |480| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |480| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 487,column 5,is_stmt,isa 0
        MOV       T,*-SP[8]             ; [CPU_ALU] |487| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |487| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |487| 
        MOVB      AH,#0                 ; [CPU_ALU] |487| 
        ANDB      AL,#0x03              ; [CPU_ALU] |487| 
        LSLL      ACC,T                 ; [CPU_ALU] |487| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |487| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |487| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 488,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |488| 
	.dwpsn	file "../F2838x_driverlib/driverlib/gpio.c",line 489,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/gpio.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x1e9)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87


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
$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("XBAR_INPUT1")
	.dwattr $C$DW$94, DW_AT_const_value(0x00)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("XBAR_INPUT2")
	.dwattr $C$DW$95, DW_AT_const_value(0x01)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("XBAR_INPUT3")
	.dwattr $C$DW$96, DW_AT_const_value(0x02)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("XBAR_INPUT4")
	.dwattr $C$DW$97, DW_AT_const_value(0x03)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0xba)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("XBAR_INPUT5")
	.dwattr $C$DW$98, DW_AT_const_value(0x04)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("XBAR_INPUT6")
	.dwattr $C$DW$99, DW_AT_const_value(0x05)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("XBAR_INPUT7")
	.dwattr $C$DW$100, DW_AT_const_value(0x06)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("XBAR_INPUT8")
	.dwattr $C$DW$101, DW_AT_const_value(0x07)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("XBAR_INPUT9")
	.dwattr $C$DW$102, DW_AT_const_value(0x08)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("XBAR_INPUT10")
	.dwattr $C$DW$103, DW_AT_const_value(0x09)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("XBAR_INPUT11")
	.dwattr $C$DW$104, DW_AT_const_value(0x0a)
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("XBAR_INPUT12")
	.dwattr $C$DW$105, DW_AT_const_value(0x0b)
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("XBAR_INPUT13")
	.dwattr $C$DW$106, DW_AT_const_value(0x0c)
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("XBAR_INPUT14")
	.dwattr $C$DW$107, DW_AT_const_value(0x0d)
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("XBAR_INPUT15")
	.dwattr $C$DW$108, DW_AT_const_value(0x0e)
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("XBAR_INPUT16")
	.dwattr $C$DW$109, DW_AT_const_value(0x0f)
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("XBAR_InputNum")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\xbar.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$110, DW_AT_const_value(0x00)
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x81)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$111, DW_AT_const_value(0x01)
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x82)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("GPIO_INT_XINT1")
	.dwattr $C$DW$112, DW_AT_const_value(0x00)
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("GPIO_INT_XINT2")
	.dwattr $C$DW$113, DW_AT_const_value(0x01)
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("GPIO_INT_XINT3")
	.dwattr $C$DW$114, DW_AT_const_value(0x02)
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("GPIO_INT_XINT4")
	.dwattr $C$DW$115, DW_AT_const_value(0x03)
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("GPIO_INT_XINT5")
	.dwattr $C$DW$116, DW_AT_const_value(0x04)
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("GPIO_ExternalIntNum")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$117, DW_AT_const_value(0x00)
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$118, DW_AT_const_value(0x01)
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$119, DW_AT_const_value(0x02)
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$120, DW_AT_const_value(0x03)
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$29


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("GPIO_CORE_CPU1")
	.dwattr $C$DW$121, DW_AT_const_value(0x00)
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("GPIO_CORE_CPU1_CLA1")
	.dwattr $C$DW$122, DW_AT_const_value(0x01)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("GPIO_CORE_CPU2")
	.dwattr $C$DW$123, DW_AT_const_value(0x02)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("GPIO_CORE_CPU2_CLA1")
	.dwattr $C$DW$124, DW_AT_const_value(0x03)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("GPIO_CORE_CM")
	.dwattr $C$DW$125, DW_AT_const_value(0x04)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("GPIO_CoreSelect")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("GPIO_ANALOG_DISABLED")
	.dwattr $C$DW$126, DW_AT_const_value(0x00)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("GPIO_ANALOG_ENABLED")
	.dwattr $C$DW$127, DW_AT_const_value(0x01)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$33, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("GPIO_AnalogMode")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


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


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x15)

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


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$128	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$24)

$C$DW$T$50	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$128)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$51


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

