;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:18 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{58B8A175-5BAD-4E8B-AF41-101EE85479AA} 
	.sect	".text:SPI_setConfig"
	.clink
	.global	||SPI_setConfig||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SPI_setConfig")
	.dwattr $C$DW$1, DW_AT_low_pc(||SPI_setConfig||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("SPI_setConfig")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 53,column 1,is_stmt,address ||SPI_setConfig||,isa 0

	.dwfde $C$DW$CIE, ||SPI_setConfig||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("lspclkHz")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -14]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("protocol")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("mode")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg14]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("bitRate")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -16]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("dataWidth")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -17]


;***************************************************************
;* FNAME: SPI_setConfig                 FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  2 SOE     *
;***************************************************************

||SPI_setConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("base")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -2]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("baud")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -4]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("protocol")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -5]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("mode")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -6]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("regValue")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[6],AR5           ; [CPU_ALU] |53| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |53| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |53| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 69,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[5] << #6     ; [CPU_ALU] |69| 
        MOV       AH,*-SP[17]           ; [CPU_ALU] |69| 
        ANDB      AL,#0x40              ; [CPU_ALU] |69| 
        ADDB      AH,#-1                ; [CPU_ALU] |69| 
        OR        AH,AL                 ; [CPU_ALU] |69| 
        MOV       *-SP[7],AH            ; [CPU_ALU] |69| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 72,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |72| 
        AND       AL,*+XAR4[0],#0xffb0  ; [CPU_ALU] |72| 
        OR        AL,*-SP[7]            ; [CPU_ALU] |72| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |72| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 79,column 5,is_stmt,isa 0
        MOV       ACC,*-SP[5] << #2     ; [CPU_ALU] |79| 
        ANDB      AL,#0x08              ; [CPU_ALU] |79| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |79| 
        MOV       *-SP[7],AL            ; [CPU_ALU] |79| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 82,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |82| 
        AND       AL,*+XAR4[1],#0xfff1  ; [CPU_ALU] |82| 
        OR        AL,*-SP[7]            ; [CPU_ALU] |82| 
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 89,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |89| 
        MOV32     R3H,*-SP[16]          ; [CPU_FPU] |89| 
        MOV32     R1H,*-SP[14]          ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |89| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |89| 
        SUBB      ACC,#1                ; [CPU_ALU] |89| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |89| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 90,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |90| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |90| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |90| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 91,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:SPI_setBaudRate"
	.clink
	.global	||SPI_setBaudRate||

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("SPI_setBaudRate")
	.dwattr $C$DW$14, DW_AT_low_pc(||SPI_setBaudRate||)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_linkage_name("SPI_setBaudRate")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x63)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 100,column 1,is_stmt,address ||SPI_setBaudRate||,isa 0

	.dwfde $C$DW$CIE, ||SPI_setBaudRate||
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("base")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg0]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("lspclkHz")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -10]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("bitRate")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: SPI_setBaudRate               FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  2 SOE     *
;***************************************************************

||SPI_setBaudRate||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -2]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("baud")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 113,column 5,is_stmt,isa 0
        ZERO      R2                    ; [CPU_FPU] |113| 
        MOV32     R3H,*-SP[12]          ; [CPU_FPU] |113| 
        MOV32     R1H,*-SP[10]          ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |113| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |113| 
        SUBB      ACC,#1                ; [CPU_ALU] |113| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |113| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 114,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |114| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |114| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |114| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 115,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text:SPI_enableInterrupt"
	.clink
	.global	||SPI_enableInterrupt||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("SPI_enableInterrupt")
	.dwattr $C$DW$21, DW_AT_low_pc(||SPI_enableInterrupt||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("SPI_enableInterrupt")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$21, DW_AT_decl_column(0x01)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 124,column 1,is_stmt,address ||SPI_enableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SPI_enableInterrupt||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("intFlags")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SPI_enableInterrupt           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SPI_enableInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("base")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |124| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 133,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |133| 
        TBIT      AL,#1                 ; [CPU_ALU] |133| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |133| 
        ; branchcc occurs ; [] |133| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 135,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |135| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |135| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |135| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |135| 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 138,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |138| 
        TBIT      AL,#0                 ; [CPU_ALU] |138| 
        B         ||$C$L2||,NTC         ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 140,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |140| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |140| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |140| 
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |140| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 146,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |146| 
        TBIT      AL,#3                 ; [CPU_ALU] |146| 
        B         ||$C$L3||,NTC         ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 148,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |148| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |148| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |148| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |148| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 151,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |151| 
        MOVB      AH,#0                 ; [CPU_ALU] |151| 
        ANDB      AL,#0x14              ; [CPU_ALU] |151| 
        TEST      ACC                   ; [CPU_ALU] |151| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |151| 
        ; branchcc occurs ; [] |151| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 153,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |153| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |153| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |153| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |153| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 155,column 1,is_stmt,isa 0
||$C$L4||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x9b)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:SPI_disableInterrupt"
	.clink
	.global	||SPI_disableInterrupt||

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("SPI_disableInterrupt")
	.dwattr $C$DW$26, DW_AT_low_pc(||SPI_disableInterrupt||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("SPI_disableInterrupt")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$26, DW_AT_decl_column(0x01)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 164,column 1,is_stmt,address ||SPI_disableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SPI_disableInterrupt||
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("base")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg0]

$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("intFlags")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SPI_disableInterrupt          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SPI_disableInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("base")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 173,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |173| 
        TBIT      AL,#1                 ; [CPU_ALU] |173| 
        B         ||$C$L5||,NTC         ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 175,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |175| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |175| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |175| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |175| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 178,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |178| 
        TBIT      AL,#0                 ; [CPU_ALU] |178| 
        B         ||$C$L6||,NTC         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 180,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |180| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |180| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |180| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |180| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 186,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |186| 
        TBIT      AL,#3                 ; [CPU_ALU] |186| 
        B         ||$C$L7||,NTC         ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 188,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |188| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |188| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |188| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |188| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 191,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |191| 
        MOVB      AH,#0                 ; [CPU_ALU] |191| 
        ANDB      AL,#0x14              ; [CPU_ALU] |191| 
        TEST      ACC                   ; [CPU_ALU] |191| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 193,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |193| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |193| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |193| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |193| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 195,column 1,is_stmt,isa 0
||$C$L8||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0xc3)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:SPI_getInterruptStatus"
	.clink
	.global	||SPI_getInterruptStatus||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("SPI_getInterruptStatus")
	.dwattr $C$DW$31, DW_AT_low_pc(||SPI_getInterruptStatus||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("SPI_getInterruptStatus")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$31, DW_AT_decl_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 204,column 1,is_stmt,address ||SPI_getInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SPI_getInterruptStatus||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SPI_getInterruptStatus        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||SPI_getInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("base")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -2]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("temp")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |204| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 205,column 19,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |205| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 212,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |212| 
        TBIT      *+XAR4[2],#6          ; [CPU_ALU] |212| 
        B         ||$C$L9||,NTC         ; [CPU_ALU] |212| 
        ; branchcc occurs ; [] |212| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 214,column 9,is_stmt,isa 0
        OR        *-SP[4],#2            ; [CPU_ALU] |214| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 217,column 5,is_stmt,isa 0
        TBIT      *+XAR4[2],#7          ; [CPU_ALU] |217| 
        B         ||$C$L10||,NTC        ; [CPU_ALU] |217| 
        ; branchcc occurs ; [] |217| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 219,column 9,is_stmt,isa 0
        OR        *-SP[4],#1            ; [CPU_ALU] |219| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 222,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |222| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |222| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |222| 
        TBIT      *+XAR4[0],#7          ; [CPU_ALU] |222| 
        B         ||$C$L11||,NTC        ; [CPU_ALU] |222| 
        ; branchcc occurs ; [] |222| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 224,column 9,is_stmt,isa 0
        OR        *-SP[4],#8            ; [CPU_ALU] |224| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 227,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |227| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |227| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |227| 
        TBIT      *+XAR4[0],#7          ; [CPU_ALU] |227| 
        B         ||$C$L12||,NTC        ; [CPU_ALU] |227| 
        ; branchcc occurs ; [] |227| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 229,column 9,is_stmt,isa 0
        OR        *-SP[4],#4            ; [CPU_ALU] |229| 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 232,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |232| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |232| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |232| 
        TBIT      *+XAR4[0],#15         ; [CPU_ALU] |232| 
        B         ||$C$L13||,NTC        ; [CPU_ALU] |232| 
        ; branchcc occurs ; [] |232| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 234,column 9,is_stmt,isa 0
        OR        *-SP[4],#16           ; [CPU_ALU] |234| 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 237,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |237| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 238,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0xee)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:SPI_clearInterruptStatus"
	.clink
	.global	||SPI_clearInterruptStatus||

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$36, DW_AT_low_pc(||SPI_clearInterruptStatus||)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_linkage_name("SPI_clearInterruptStatus")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$36, DW_AT_decl_column(0x01)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 247,column 1,is_stmt,address ||SPI_clearInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SPI_clearInterruptStatus||
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("base")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("intFlags")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SPI_clearInterruptStatus      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SPI_clearInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("base")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |247| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 256,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |256| 
        TBIT      AL,#1                 ; [CPU_ALU] |256| 
        B         ||$C$L14||,NTC        ; [CPU_ALU] |256| 
        ; branchcc occurs ; [] |256| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 258,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |258| 
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |258| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 259,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |259| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |259| 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 262,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |262| 
        TBIT      AL,#0                 ; [CPU_ALU] |262| 
        B         ||$C$L15||,NTC        ; [CPU_ALU] |262| 
        ; branchcc occurs ; [] |262| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 264,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |264| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |264| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |264| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |264| 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 270,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |270| 
        TBIT      AL,#3                 ; [CPU_ALU] |270| 
        B         ||$C$L16||,NTC        ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 272,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |272| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |272| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |272| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |272| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 275,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |275| 
        TBIT      AL,#2                 ; [CPU_ALU] |275| 
        B         ||$C$L17||,NTC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 277,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |277| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |277| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |277| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |277| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 280,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |280| 
        TBIT      AL,#4                 ; [CPU_ALU] |280| 
        B         ||$C$L18||,NTC        ; [CPU_ALU] |280| 
        ; branchcc occurs ; [] |280| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 282,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |282| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |282| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |282| 
        OR        *+XAR4[0],#0x4000     ; [CPU_ALU] |282| 
	.dwpsn	file "../F2838x_driverlib/driverlib/spi.c",line 284,column 1,is_stmt,isa 0
||$C$L18||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/spi.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x11c)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36


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
$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("SPI_PROT_POL0PHA0")
	.dwattr $C$DW$41, DW_AT_const_value(0x00)
	.dwattr $C$DW$41, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("SPI_PROT_POL0PHA1")
	.dwattr $C$DW$42, DW_AT_const_value(0x02)
	.dwattr $C$DW$42, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x61)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("SPI_PROT_POL1PHA0")
	.dwattr $C$DW$43, DW_AT_const_value(0x01)
	.dwattr $C$DW$43, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x63)
	.dwattr $C$DW$43, DW_AT_decl_column(0x05)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("SPI_PROT_POL1PHA1")
	.dwattr $C$DW$44, DW_AT_const_value(0x03)
	.dwattr $C$DW$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x65)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SPI_TransferProtocol")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("SPI_MODE_SLAVE")
	.dwattr $C$DW$45, DW_AT_const_value(0x02)
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("SPI_MODE_MASTER")
	.dwattr $C$DW$46, DW_AT_const_value(0x06)
	.dwattr $C$DW$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x70)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("SPI_MODE_SLAVE_OD")
	.dwattr $C$DW$47, DW_AT_const_value(0x00)
	.dwattr $C$DW$47, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x71)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("SPI_MODE_MASTER_OD")
	.dwattr $C$DW$48, DW_AT_const_value(0x04)
	.dwattr $C$DW$48, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x72)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("SPI_Mode")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\spi.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x73)
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


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$26


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

