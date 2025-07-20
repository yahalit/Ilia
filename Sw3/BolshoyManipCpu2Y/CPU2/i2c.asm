;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:54 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{327D70FD-4A4B-4D0F-B6C3-602BED920239} 
	.sect	".text:I2C_initMaster"
	.clink
	.global	||I2C_initMaster||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("I2C_initMaster")
	.dwattr $C$DW$1, DW_AT_low_pc(||I2C_initMaster||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("I2C_initMaster")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x35)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 55,column 1,is_stmt,address ||I2C_initMaster||,isa 0

	.dwfde $C$DW$CIE, ||I2C_initMaster||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("sysclkHz")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -14]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("bitRate")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -16]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("dutyCycle")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: I2C_initMaster                FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  9 Auto,  0 SOE     *
;***************************************************************

||I2C_initMaster||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("base")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -2]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("modPrescale")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -4]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("divider")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -6]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("dValue")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -8]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("dutyCycle")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -9]

        MOV       *-SP[9],AR4           ; [CPU_ALU] |55| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |55| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 69,column 5,is_stmt,isa 0
        MOV       AL,#38528             ; [CPU_ALU] |69| 
        MOV       AH,#152               ; [CPU_ALU] |69| 
        MOV32     R3H,ACC               ; [CPU_FPU] |69| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ZERO      R2                    ; [CPU_FPU] |69| 
        MOV32     R1H,*-SP[14]          ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |69| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |69| 
        SUBB      ACC,#1                ; [CPU_ALU] |69| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |69| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 70,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |70| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |70| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |70| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |70| 
        ANDB      AL,#0xff              ; [CPU_ALU] |70| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |70| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 72,column 5,is_stmt,isa 0
        B         ||$C$L4||,UNC         ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 75,column 13,is_stmt,isa 0
        MOVB      ACC,#7                ; [CPU_ALU] |75| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |75| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 76,column 13,is_stmt,isa 0
        B         ||$C$L5||,UNC         ; [CPU_ALU] |76| 
        ; branch occurs ; [] |76| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 79,column 13,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |79| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |79| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 80,column 13,is_stmt,isa 0
        B         ||$C$L5||,UNC         ; [CPU_ALU] |80| 
        ; branch occurs ; [] |80| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 83,column 13,is_stmt,isa 0
        MOVB      ACC,#5                ; [CPU_ALU] |83| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |83| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 84,column 13,is_stmt,isa 0
        B         ||$C$L5||,UNC         ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 72,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |72| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |72| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        MOVB      ACC,#1                ; [CPU_ALU] |72| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |72| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        B         ||$C$L3||,UNC         ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 90,column 5,is_stmt,isa 0
        MOV       AL,#38528             ; [CPU_ALU] |90| 
        MOV       AH,#152               ; [CPU_ALU] |90| 
        MOV32     R1H,ACC               ; [CPU_FPU] |90| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R3H,*-SP[16]          ; [CPU_FPU] |90| 
        ZERO      R2                    ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |90| 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R1H              ; [CPU_FPU] |90| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |90| 
        LSL       ACC,1                 ; [CPU_ALU] |90| 
        SUBL      XAR6,ACC              ; [CPU_ALU] |90| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |90| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 92,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |92| 
        CMPB      AL,#1                 ; [CPU_ALU] |92| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 94,column 9,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |94| 
        MOV32     R1H,*-SP[6]           ; [CPU_FPU] |94| 
        ZERO      R2                    ; [CPU_FPU] |94| 
        MOVXI     R3H,#2                ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |94| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |94| 
        MOV32     ACC,R1H               ; [CPU_FPU] |94| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |94| 
        B         ||$C$L7||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 98,column 9,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |98| 
        MOV32     R1H,*-SP[6]           ; [CPU_FPU] |98| 
        ZERO      R2                    ; [CPU_FPU] |98| 
        MOVXI     R3H,#3                ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |98| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |98| 
        MOV32     ACC,R1H               ; [CPU_FPU] |98| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |98| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 101,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |101| 
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |101| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |101| 
        SUB       AL,*+XAR4[4]          ; [CPU_ALU] |101| 
        MOV       *+XAR5[3],AL          ; [CPU_ALU] |101| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 102,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:I2C_enableInterrupt"
	.clink
	.global	||I2C_enableInterrupt||

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("I2C_enableInterrupt")
	.dwattr $C$DW$12, DW_AT_low_pc(||I2C_enableInterrupt||)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_linkage_name("I2C_enableInterrupt")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$12, DW_AT_decl_column(0x01)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 111,column 1,is_stmt,address ||I2C_enableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||I2C_enableInterrupt||
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("base")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("intFlags")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: I2C_enableInterrupt           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||I2C_enableInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("base")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |111| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 120,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |120| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |120| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |120| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |120| 
        ANDB      AL,#0xff              ; [CPU_ALU] |120| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |120| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 126,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |126| 
        TBIT      AL,#9                 ; [CPU_ALU] |126| 
        B         ||$C$L8||,NTC         ; [CPU_ALU] |126| 
        ; branchcc occurs ; [] |126| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 128,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |128| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |128| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |128| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |128| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 134,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |134| 
        TBIT      AH,#1                 ; [CPU_ALU] |134| 
        B         ||$C$L9||,NTC         ; [CPU_ALU] |134| 
        ; branchcc occurs ; [] |134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 136,column 9,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |136| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |136| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |136| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |136| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 139,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |139| 
        TBIT      AH,#0                 ; [CPU_ALU] |139| 
        B         ||$C$L10||,NTC        ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 141,column 9,is_stmt,isa 0
        MOVB      ACC,#33               ; [CPU_ALU] |141| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |141| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |141| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |141| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 143,column 1,is_stmt,isa 0
||$C$L10||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text:I2C_disableInterrupt"
	.clink
	.global	||I2C_disableInterrupt||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("I2C_disableInterrupt")
	.dwattr $C$DW$17, DW_AT_low_pc(||I2C_disableInterrupt||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("I2C_disableInterrupt")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x97)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 152,column 1,is_stmt,address ||I2C_disableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||I2C_disableInterrupt||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("intFlags")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: I2C_disableInterrupt          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||I2C_disableInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("base")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |152| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 161,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |161| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |161| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |161| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |161| 
        ANDB      AL,#0xff              ; [CPU_ALU] |161| 
        NOT       AL                    ; [CPU_ALU] |161| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |161| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 167,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |167| 
        TBIT      AL,#9                 ; [CPU_ALU] |167| 
        B         ||$C$L11||,NTC        ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 169,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |169| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |169| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |169| 
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |169| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 175,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |175| 
        TBIT      AH,#1                 ; [CPU_ALU] |175| 
        B         ||$C$L12||,NTC        ; [CPU_ALU] |175| 
        ; branchcc occurs ; [] |175| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 177,column 9,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |177| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |177| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |177| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |177| 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 180,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |180| 
        TBIT      AH,#0                 ; [CPU_ALU] |180| 
        B         ||$C$L13||,NTC        ; [CPU_ALU] |180| 
        ; branchcc occurs ; [] |180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 182,column 9,is_stmt,isa 0
        MOVB      ACC,#33               ; [CPU_ALU] |182| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |182| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |182| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |182| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 184,column 1,is_stmt,isa 0
||$C$L13||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xb8)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:I2C_getInterruptStatus"
	.clink
	.global	||I2C_getInterruptStatus||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("I2C_getInterruptStatus")
	.dwattr $C$DW$22, DW_AT_low_pc(||I2C_getInterruptStatus||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("I2C_getInterruptStatus")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$22, DW_AT_decl_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 193,column 1,is_stmt,address ||I2C_getInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||I2C_getInterruptStatus||
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: I2C_getInterruptStatus        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||I2C_getInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("base")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -2]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("temp")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |193| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 204,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |204| 
        AND       AL,*+XAR4[2],#0x023f  ; [CPU_ALU] |204| 
        MOVU      ACC,AL                ; [CPU_ALU] |204| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |204| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 209,column 5,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |209| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |209| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |209| 
        TBIT      *+XAR4[0],#7          ; [CPU_ALU] |209| 
        B         ||$C$L14||,NTC        ; [CPU_ALU] |209| 
        ; branchcc occurs ; [] |209| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 211,column 9,is_stmt,isa 0
        OR        *-SP[3],#2            ; [CPU_ALU] |211| 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 214,column 5,is_stmt,isa 0
        MOVB      ACC,#33               ; [CPU_ALU] |214| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |214| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |214| 
        TBIT      *+XAR4[0],#7          ; [CPU_ALU] |214| 
        B         ||$C$L15||,NTC        ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 216,column 9,is_stmt,isa 0
        OR        *-SP[3],#1            ; [CPU_ALU] |216| 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 219,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |219| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 220,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xdc)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text:I2C_clearInterruptStatus"
	.clink
	.global	||I2C_clearInterruptStatus||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("I2C_clearInterruptStatus")
	.dwattr $C$DW$27, DW_AT_low_pc(||I2C_clearInterruptStatus||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("I2C_clearInterruptStatus")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 229,column 1,is_stmt,address ||I2C_clearInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||I2C_clearInterruptStatus||
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("base")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("intFlags")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: I2C_clearInterruptStatus      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||I2C_clearInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("base")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |229| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 238,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |238| 
        AND       AL,*-SP[6],#0x023f    ; [CPU_ALU] |238| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |238| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 243,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |243| 
        TBIT      AH,#1                 ; [CPU_ALU] |243| 
        B         ||$C$L16||,NTC        ; [CPU_ALU] |243| 
        ; branchcc occurs ; [] |243| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 245,column 9,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |245| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |245| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |245| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |245| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 248,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |248| 
        TBIT      AH,#0                 ; [CPU_ALU] |248| 
        B         ||$C$L17||,NTC        ; [CPU_ALU] |248| 
        ; branchcc occurs ; [] |248| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 250,column 9,is_stmt,isa 0
        MOVB      ACC,#33               ; [CPU_ALU] |250| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |250| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |250| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |250| 
	.dwpsn	file "../F2838x_driverlib/driverlib/i2c.c",line 252,column 1,is_stmt,isa 0
||$C$L17||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/i2c.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0xfc)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27


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
$C$DW$32	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$32, DW_AT_name("I2C_DUTYCYCLE_33")
	.dwattr $C$DW$32, DW_AT_const_value(0x00)
	.dwattr $C$DW$32, DW_AT_decl_file("..\F2838x_driverlib\driverlib\i2c.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x118)
	.dwattr $C$DW$32, DW_AT_decl_column(0x05)

$C$DW$33	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$33, DW_AT_name("I2C_DUTYCYCLE_50")
	.dwattr $C$DW$33, DW_AT_const_value(0x01)
	.dwattr $C$DW$33, DW_AT_decl_file("..\F2838x_driverlib\driverlib\i2c.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x119)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\i2c.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("I2C_DutyCycle")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\i2c.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


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


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$22


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

