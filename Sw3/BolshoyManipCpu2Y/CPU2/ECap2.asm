;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.4.LTS *
;* Date/Time created: Sun Mar 13 22:30:49 2022                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Drivers/ECap2.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.4.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\HolyShit\Sw1p5\BolshoyManipCpu2\CPU2")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("ECap5Regs")
	.dwattr $C$DW$1, DW_AT_linkage_name("ECap5Regs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x128)
	.dwattr $C$DW$1, DW_AT_decl_column(0x22)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("InputXbarRegs")
	.dwattr $C$DW$2, DW_AT_linkage_name("InputXbarRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x68)
	.dwattr $C$DW$2, DW_AT_decl_column(0x28)

;	C:\ti\ccs1030\ccs\tools\compiler\ti-cgt-c2000_20.2.4.LTS\bin\acia2000.exe -@C:\\Users\\YAHALI~1.COM\\AppData\\Local\\Temp\\{59A650DC-F0DB-4DDB-8C77-056C99FDD51D} 
	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("__isfinite")
	.dwattr $C$DW$3, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$3, DW_AT_decl_column(0x25)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 335,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("d")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isfinite                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isfinite||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("d")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -4]

        MOV32     *-SP[4],R0L           ; [CPU_FPU] |335| 
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |335| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 335,column 3,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |335| 
        MOVL      XAR4,#32752           ; [CPU_ARAU] |335| 
        MOV32     P,R0L                 ; [CPU_FPU] |335| 
        MOVB      XAR6,#0               ; [CPU_ALU] |335| 
        MOVB      XAR7,#0               ; [CPU_ALU] |335| 
        MOV32     ACC,R0H               ; [CPU_FPU] |335| 
        LSR64     ACC:P,T               ; [CPU_ALU] |335| 
        MOV       PH,#0                 ; [CPU_ALU] |335| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |335| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |335| 
        CMPL      ACC,P                 ; [CPU_ALU] |335| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |335| 
        ; branchcc occurs ; [] |335| 
        MOVB      XAR7,#1               ; [CPU_ALU] |335| 
||$C$L1||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L2||,NEQ         ; [CPU_ALU] |335| 
        ; branchcc occurs ; [] |335| 
        MOVB      XAR6,#1               ; [CPU_ALU] |335| 
||$C$L2||:    
        MOV       AL,AR6                ; [CPU_ALU] |335| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 335,column 46,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("__isfinitef")
	.dwattr $C$DW$7, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x150)
	.dwattr $C$DW$7, DW_AT_decl_column(0x25)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("f")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isfinitef                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__isfinitef||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("f")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |337| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 337,column 3,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |337| 
        MOVL      XAR4,#32640           ; [CPU_ARAU] |337| 
        MOV       PH,#0                 ; [CPU_ALU] |337| 
        AND       AH,#0x7f80            ; [CPU_ALU] |337| 
        MOVB      XAR6,#0               ; [CPU_ALU] |337| 
        MOVB      XAR7,#0               ; [CPU_ALU] |337| 
        MOV       PL,AH                 ; [CPU_ALU] |337| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |337| 
        CMPL      ACC,P                 ; [CPU_ALU] |337| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        MOVB      XAR7,#1               ; [CPU_ALU] |337| 
||$C$L3||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        MOVB      XAR6,#1               ; [CPU_ALU] |337| 
||$C$L4||:    
        MOV       AL,AR6                ; [CPU_ALU] |337| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 337,column 45,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("__isfinitel")
	.dwattr $C$DW$11, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x152)
	.dwattr $C$DW$11, DW_AT_decl_column(0x25)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 339,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("e")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isfinitel                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isfinitel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("e")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -4]

        MOV32     *-SP[4],R0L           ; [CPU_FPU] |339| 
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |339| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 339,column 3,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |339| 
        MOVL      XAR4,#32752           ; [CPU_ARAU] |339| 
        MOV32     P,R0L                 ; [CPU_FPU] |339| 
        MOVB      XAR6,#0               ; [CPU_ALU] |339| 
        MOVB      XAR7,#0               ; [CPU_ALU] |339| 
        MOV32     ACC,R0H               ; [CPU_FPU] |339| 
        LSR64     ACC:P,T               ; [CPU_ALU] |339| 
        MOV       PH,#0                 ; [CPU_ALU] |339| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |339| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |339| 
        CMPL      ACC,P                 ; [CPU_ALU] |339| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOVB      XAR7,#1               ; [CPU_ALU] |339| 
||$C$L5||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOVB      XAR6,#1               ; [CPU_ALU] |339| 
||$C$L6||:    
        MOV       AL,AR6                ; [CPU_ALU] |339| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 339,column 47,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("__isnan")
	.dwattr $C$DW$15, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$15, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x155)
	.dwattr $C$DW$15, DW_AT_decl_column(0x25)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 342,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("d")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isnan                       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isnan||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("d")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |342| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |342| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 342,column 3,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |342| 
        MOV32     P,R0L                 ; [CPU_FPU] |342| 
        MOV32     ACC,R0H               ; [CPU_FPU] |342| 
        LSR64     ACC:P,T               ; [CPU_ALU] |342| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |342| 
        MOVZ      AR6,PL                ; [CPU_ALU] |342| 
        MOVB      XAR4,#0               ; [CPU_ALU] |342| 
        MOVL      XAR5,#32752           ; [CPU_ARAU] |342| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |342| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |342| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |342| 
        ; branchcc occurs ; [] |342| 
        MOVB      ACC,#0                ; [CPU_ALU] |342| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |342| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |342| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |342| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |342| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |342| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |342| 
        AND       PL,#65535             ; [CPU_ALU] |342| 
        AND       PH,#65535             ; [CPU_ALU] |342| 
        MOV32     ACC,R0H               ; [CPU_FPU] |342| 
        AND       AL,#65535             ; [CPU_ALU] |342| 
        ANDB      AH,#15                ; [CPU_ALU] |342| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |342| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |342| 
        MOVB      AH,#0                 ; [CPU_ALU] |342| 
        CMPB      AL,#0                 ; [CPU_ALU] |342| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |342| 
        ; branchcc occurs ; [] |342| 
        MOVB      AH,#1                 ; [CPU_ALU] |342| 
||$C$L7||:    
        CMPB      AH,#0                 ; [CPU_ALU] |342| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |342| 
        ; branchcc occurs ; [] |342| 
        MOVB      XAR4,#1               ; [CPU_ALU] |342| 
||$C$L8||:    
        MOV       AL,AR4                ; [CPU_ALU] |342| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 343,column 47,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("__isnanf")
	.dwattr $C$DW$20, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x158)
	.dwattr $C$DW$20, DW_AT_decl_column(0x25)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("f")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isnanf                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__isnanf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("f")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |345| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |345| 
        AND       AH,#0x7f80            ; [CPU_ALU] |345| 
        MOVZ      AR7,AH                ; [CPU_ALU] |345| 
        MOVB      XAR6,#0               ; [CPU_ALU] |345| 
        MOVL      XAR4,#32640           ; [CPU_ARAU] |345| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |345| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |345| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |345| 
        ANDB      AH,#127               ; [CPU_ALU] |345| 
        MOVB      XAR7,#0               ; [CPU_FPU] |345| 
        TEST      ACC                   ; [CPU_ALU] |345| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVB      XAR7,#1               ; [CPU_ALU] |345| 
||$C$L9||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        MOVB      XAR6,#1               ; [CPU_ALU] |345| 
||$C$L10||:    
        MOV       AL,AR6                ; [CPU_ALU] |345| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 346,column 46,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("__isnanl")
	.dwattr $C$DW$24, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$24, DW_AT_decl_column(0x25)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 348,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("e")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isnanl                      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isnanl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("e")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |348| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |348| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 348,column 3,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |348| 
        MOV32     P,R0L                 ; [CPU_FPU] |348| 
        MOV32     ACC,R0H               ; [CPU_FPU] |348| 
        LSR64     ACC:P,T               ; [CPU_ALU] |348| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |348| 
        MOVZ      AR6,PL                ; [CPU_ALU] |348| 
        MOVB      XAR4,#0               ; [CPU_ALU] |348| 
        MOVL      XAR5,#32752           ; [CPU_ARAU] |348| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |348| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |348| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |348| 
        ; branchcc occurs ; [] |348| 
        MOVB      ACC,#0                ; [CPU_ALU] |348| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |348| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |348| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |348| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |348| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |348| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |348| 
        AND       PL,#65535             ; [CPU_ALU] |348| 
        AND       PH,#65535             ; [CPU_ALU] |348| 
        MOV32     ACC,R0H               ; [CPU_FPU] |348| 
        AND       AL,#65535             ; [CPU_ALU] |348| 
        ANDB      AH,#15                ; [CPU_ALU] |348| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |348| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |348| 
        MOVB      AH,#0                 ; [CPU_ALU] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |348| 
        ; branchcc occurs ; [] |348| 
        MOVB      AH,#1                 ; [CPU_ALU] |348| 
||$C$L11||:    
        CMPB      AH,#0                 ; [CPU_ALU] |348| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |348| 
        ; branchcc occurs ; [] |348| 
        MOVB      XAR4,#1               ; [CPU_ALU] |348| 
||$C$L12||:    
        MOV       AL,AR4                ; [CPU_ALU] |348| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 349,column 48,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("__isnormal")
	.dwattr $C$DW$29, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$29, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$29, DW_AT_decl_column(0x25)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 352,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("d")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isnormal                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isnormal||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("d")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |352| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |352| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 352,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |352| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |352| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |352| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |352| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |352| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |352| 
        MOV       T,#52                 ; [CPU_ALU] |352| 
        MOV32     P,R0L                 ; [CPU_FPU] |352| 
        MOV32     ACC,R0H               ; [CPU_FPU] |352| 
        LSR64     ACC:P,T               ; [CPU_ALU] |352| 
        ANDB      AL,#0                 ; [CPU_ALU] |352| 
        ANDB      AH,#0                 ; [CPU_ALU] |352| 
        AND       PL,#2047              ; [CPU_ALU] |352| 
        AND       PH,#0                 ; [CPU_ALU] |352| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |352| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |352| 
        MOVB      XAR7,#0               ; [CPU_ALU] |352| 
        MOVB      AH,#0                 ; [CPU_ALU] |352| 
        CMPB      AL,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L13||,NEQ        ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        MOVB      AH,#1                 ; [CPU_ALU] |352| 
||$C$L13||:    
        CMPB      AH,#0                 ; [CPU_ALU] |352| 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |352| 
        MOV       T,#48                 ; [CPU_ALU] |352| 
        MOVL      XAR4,#32752           ; [CPU_ARAU] |352| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |352| 
        MOVB      XAR6,#0               ; [CPU_ALU] |352| 
        MOV32     P,R0L                 ; [CPU_FPU] |352| 
        MOV32     ACC,R0H               ; [CPU_FPU] |352| 
        LSR64     ACC:P,T               ; [CPU_ALU] |352| 
        MOV       PH,#0                 ; [CPU_ALU] |352| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |352| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |352| 
        CMPL      ACC,P                 ; [CPU_ALU] |352| 
        B         ||$C$L14||,NEQ        ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        MOVB      XAR6,#1               ; [CPU_ALU] |352| 
||$C$L14||:    
        MOV       AL,AR6                ; [CPU_ALU] 
        B         ||$C$L15||,NEQ        ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        MOVB      XAR7,#1               ; [CPU_ALU] |352| 
||$C$L15||:    
        MOV       AL,AR7                ; [CPU_ALU] |352| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 353,column 48,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("__isnormalf")
	.dwattr $C$DW$34, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x163)
	.dwattr $C$DW$34, DW_AT_decl_column(0x25)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("f")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isnormalf                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__isnormalf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("f")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |356| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV       T,#23                 ; [CPU_ALU] |356| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        LSRL      ACC,T                 ; [CPU_ALU] |356| 
        MOVB      AH,#0                 ; [CPU_ALU] |356| 
        ANDB      AL,#0xff              ; [CPU_ALU] |356| 
        CMPB      AL,#0                 ; [CPU_ALU] |356| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        MOVB      AH,#1                 ; [CPU_ALU] |356| 
||$C$L16||:    
        CMPB      AH,#0                 ; [CPU_ALU] |356| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        MOVL      P,*-SP[2]             ; [CPU_ALU] |356| 
        MOVL      XAR4,#32640           ; [CPU_ARAU] |356| 
        AND       PH,#0x7f80            ; [CPU_ALU] |356| 
        MOVL      ACC,XAR4              ; [CPU_FPU] |356| 
        MOVB      XAR7,#0               ; [CPU_FPU] |356| 
        MOV       PL,PH                 ; [CPU_ALU] |356| 
        MOV       PH,#0                 ; [CPU_ALU] |356| 
        CMPL      ACC,P                 ; [CPU_ALU] |356| 
        B         ||$C$L17||,NEQ        ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        MOVB      XAR7,#1               ; [CPU_ALU] |356| 
||$C$L17||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        MOVB      XAR6,#1               ; [CPU_ALU] |356| 
||$C$L18||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 357,column 47,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("__isnormall")
	.dwattr $C$DW$38, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x167)
	.dwattr $C$DW$38, DW_AT_decl_column(0x25)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("e")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isnormall                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isnormall||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("e")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |360| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |360| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 360,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |360| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |360| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |360| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |360| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |360| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |360| 
        MOV       T,#52                 ; [CPU_ALU] |360| 
        MOV32     P,R0L                 ; [CPU_FPU] |360| 
        MOV32     ACC,R0H               ; [CPU_FPU] |360| 
        LSR64     ACC:P,T               ; [CPU_ALU] |360| 
        ANDB      AL,#0                 ; [CPU_ALU] |360| 
        ANDB      AH,#0                 ; [CPU_ALU] |360| 
        AND       PL,#2047              ; [CPU_ALU] |360| 
        AND       PH,#0                 ; [CPU_ALU] |360| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        MOVB      XAR7,#0               ; [CPU_ALU] |360| 
        MOVB      AH,#0                 ; [CPU_ALU] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOVB      AH,#1                 ; [CPU_ALU] |360| 
||$C$L19||:    
        CMPB      AH,#0                 ; [CPU_ALU] |360| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |360| 
        MOV       T,#48                 ; [CPU_ALU] |360| 
        MOVL      XAR4,#32752           ; [CPU_ARAU] |360| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        MOV32     P,R0L                 ; [CPU_FPU] |360| 
        MOV32     ACC,R0H               ; [CPU_FPU] |360| 
        LSR64     ACC:P,T               ; [CPU_ALU] |360| 
        MOV       PH,#0                 ; [CPU_ALU] |360| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |360| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |360| 
        CMPL      ACC,P                 ; [CPU_ALU] |360| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOVB      XAR6,#1               ; [CPU_ALU] |360| 
||$C$L20||:    
        MOV       AL,AR6                ; [CPU_ALU] 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOVB      XAR7,#1               ; [CPU_ALU] |360| 
||$C$L21||:    
        MOV       AL,AR7                ; [CPU_ALU] |360| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 361,column 49,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("__signbit")
	.dwattr $C$DW$43, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$43, DW_AT_decl_column(0x25)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 364,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("d")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __signbit                     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__signbit||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("d")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |364| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |364| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 364,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |364| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |364| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |364| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |364| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |364| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |364| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |364| 
        AND       PL,#0                 ; [CPU_ALU] |364| 
        AND       PH,#0                 ; [CPU_ALU] |364| 
        MOV32     ACC,R0H               ; [CPU_FPU] |364| 
        ANDB      AL,#0                 ; [CPU_ALU] |364| 
        AND       AH,#32768             ; [CPU_ALU] |364| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |364| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |364| 
        MOVB      XAR6,#0               ; [CPU_ALU] |364| 
        MOVB      AH,#0                 ; [CPU_ALU] |364| 
        CMPB      AL,#0                 ; [CPU_ALU] |364| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |364| 
        ; branchcc occurs ; [] |364| 
        MOVB      AH,#1                 ; [CPU_ALU] |364| 
||$C$L22||:    
        CMPB      AH,#0                 ; [CPU_ALU] |364| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |364| 
        ; branchcc occurs ; [] |364| 
        MOVB      XAR6,#1               ; [CPU_ALU] |364| 
||$C$L23||:    
        MOV       AL,AR6                ; [CPU_ALU] |364| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 364,column 42,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("__signbitf")
	.dwattr $C$DW$48, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$48, DW_AT_decl_column(0x25)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 366,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("f")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __signbitf                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__signbitf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("f")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |366| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 366,column 3,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |366| 
        MOVB      XAR6,#0               ; [CPU_ALU] |366| 
        MOVB      XAR7,#0               ; [CPU_ALU] |366| 
        ANDB      AL,#0                 ; [CPU_ALU] |366| 
        AND       AH,#32768             ; [CPU_ALU] |366| 
        TEST      ACC                   ; [CPU_ALU] |366| 
        B         ||$C$L24||,NEQ        ; [CPU_ALU] |366| 
        ; branchcc occurs ; [] |366| 
        MOVB      XAR7,#1               ; [CPU_ALU] |366| 
||$C$L24||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |366| 
        ; branchcc occurs ; [] |366| 
        MOVB      XAR6,#1               ; [CPU_ALU] |366| 
||$C$L25||:    
        MOV       AL,AR6                ; [CPU_ALU] |366| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 366,column 41,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("__signbitl")
	.dwattr $C$DW$52, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$52, DW_AT_decl_column(0x25)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 368,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("e")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __signbitl                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__signbitl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("e")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |368| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |368| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 368,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |368| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |368| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |368| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |368| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |368| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |368| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |368| 
        AND       PL,#0                 ; [CPU_ALU] |368| 
        AND       PH,#0                 ; [CPU_ALU] |368| 
        MOV32     ACC,R0H               ; [CPU_FPU] |368| 
        ANDB      AL,#0                 ; [CPU_ALU] |368| 
        AND       AH,#32768             ; [CPU_ALU] |368| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |368| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |368| 
        MOVB      XAR6,#0               ; [CPU_ALU] |368| 
        MOVB      AH,#0                 ; [CPU_ALU] |368| 
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVB      AH,#1                 ; [CPU_ALU] |368| 
||$C$L26||:    
        CMPB      AH,#0                 ; [CPU_ALU] |368| 
        B         ||$C$L27||,NEQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVB      XAR6,#1               ; [CPU_ALU] |368| 
||$C$L27||:    
        MOV       AL,AR6                ; [CPU_ALU] |368| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 368,column 43,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("__isinff")
	.dwattr $C$DW$57, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x176)
	.dwattr $C$DW$57, DW_AT_decl_column(0x25)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 375,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("f")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isinff                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__isinff||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("f")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |375| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |375| 
        AND       AH,#0x7f80            ; [CPU_ALU] |375| 
        MOVZ      AR7,AH                ; [CPU_ALU] |375| 
        MOVB      XAR6,#0               ; [CPU_ALU] |375| 
        MOVL      XAR4,#32640           ; [CPU_ARAU] |375| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |375| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |375| 
        B         ||$C$L28||,NEQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |375| 
        ANDB      AH,#127               ; [CPU_ALU] |375| 
        TEST      ACC                   ; [CPU_ALU] |375| 
        B         ||$C$L28||,NEQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVB      XAR6,#1               ; [CPU_ALU] |375| 
||$C$L28||:    
        MOV       AL,AR6                ; [CPU_ALU] |375| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 375,column 72,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("__isinf")
	.dwattr $C$DW$61, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$61, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x178)
	.dwattr $C$DW$61, DW_AT_decl_column(0x25)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 377,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("d")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isinf                       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isinf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("d")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |377| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |377| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 377,column 3,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |377| 
        MOV32     P,R0L                 ; [CPU_FPU] |377| 
        MOV32     ACC,R0H               ; [CPU_FPU] |377| 
        LSR64     ACC:P,T               ; [CPU_ALU] |377| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |377| 
        MOVZ      AR6,PL                ; [CPU_ALU] |377| 
        MOVB      XAR4,#0               ; [CPU_ALU] |377| 
        MOVL      XAR5,#32752           ; [CPU_ARAU] |377| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |377| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |377| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
        MOVB      ACC,#0                ; [CPU_ALU] |377| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |377| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |377| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |377| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |377| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |377| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |377| 
        AND       PL,#65535             ; [CPU_ALU] |377| 
        AND       PH,#65535             ; [CPU_ALU] |377| 
        MOV32     ACC,R0H               ; [CPU_FPU] |377| 
        AND       AL,#65535             ; [CPU_ALU] |377| 
        ANDB      AH,#15                ; [CPU_ALU] |377| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |377| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |377| 
        CMPB      AL,#0                 ; [CPU_ALU] |377| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
        MOVB      XAR4,#1               ; [CPU_ALU] |377| 
||$C$L29||:    
        MOV       AL,AR4                ; [CPU_ALU] |377| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 377,column 74,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("__isinfl")
	.dwattr $C$DW$66, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$66, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$66, DW_AT_decl_column(0x25)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 379,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("e")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __isinfl                      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__isinfl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("e")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |379| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |379| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 379,column 3,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |379| 
        MOV32     P,R0L                 ; [CPU_FPU] |379| 
        MOV32     ACC,R0H               ; [CPU_FPU] |379| 
        LSR64     ACC:P,T               ; [CPU_ALU] |379| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |379| 
        MOVZ      AR6,PL                ; [CPU_ALU] |379| 
        MOVB      XAR4,#0               ; [CPU_ALU] |379| 
        MOVL      XAR5,#32752           ; [CPU_ARAU] |379| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |379| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |379| 
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
        MOVB      ACC,#0                ; [CPU_ALU] |379| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |379| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |379| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |379| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |379| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |379| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |379| 
        AND       PL,#65535             ; [CPU_ALU] |379| 
        AND       PH,#65535             ; [CPU_ALU] |379| 
        MOV32     ACC,R0H               ; [CPU_FPU] |379| 
        AND       AL,#65535             ; [CPU_ALU] |379| 
        ANDB      AH,#15                ; [CPU_ALU] |379| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |379| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |379| 
        CMPB      AL,#0                 ; [CPU_ALU] |379| 
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
        MOVB      XAR4,#1               ; [CPU_ALU] |379| 
||$C$L30||:    
        MOV       AL,AR4                ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 379,column 76,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$71, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$71, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$71, DW_AT_decl_column(0x25)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 397,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("f")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __fpclassifyf                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("f")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |397| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 398,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |398| 
        AND       AH,#0x7f80            ; [CPU_ALU] |398| 
        MOVZ      AR6,AH                ; [CPU_ALU] |398| 
        MOVL      XAR4,#32640           ; [CPU_ARAU] |398| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |398| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |398| 
        B         ||$C$L32||,NEQ        ; [CPU_ALU] |398| 
        ; branchcc occurs ; [] |398| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 400,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |400| 
        ANDB      AH,#127               ; [CPU_ALU] |400| 
        TEST      ACC                   ; [CPU_ALU] |400| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |400| 
        ; branchcc occurs ; [] |400| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 401,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |401| 
        B         ||$C$L35||,UNC        ; [CPU_ALU] |401| 
        ; branch occurs ; [] |401| 
||$C$L31||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |402| 
        B         ||$C$L35||,UNC        ; [CPU_ALU] |402| 
        ; branch occurs ; [] |402| 
||$C$L32||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 404,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |404| 
        MOV       T,#23                 ; [CPU_ALU] |404| 
        LSRL      ACC,T                 ; [CPU_ALU] |404| 
        ANDB      AL,#0xff              ; [CPU_ALU] |404| 
        B         ||$C$L34||,NEQ        ; [CPU_ALU] |404| 
        ; branchcc occurs ; [] |404| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 406,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |406| 
        ANDB      AH,#127               ; [CPU_ALU] |406| 
        TEST      ACC                   ; [CPU_ALU] |406| 
        B         ||$C$L33||,NEQ        ; [CPU_ALU] |406| 
        ; branchcc occurs ; [] |406| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 407,column 13,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |407| 
        B         ||$C$L35||,UNC        ; [CPU_ALU] |407| 
        ; branch occurs ; [] |407| 
||$C$L33||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 408,column 14,is_stmt,isa 0
        MOV       AL,#-2                ; [CPU_ALU] |408| 
        B         ||$C$L35||,UNC        ; [CPU_ALU] |408| 
        ; branch occurs ; [] |408| 
||$C$L34||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 410,column 5,is_stmt,isa 0
        MOV       AL,#-1                ; [CPU_ALU] |410| 
||$C$L35||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 411,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("__fpclassify")
	.dwattr $C$DW$75, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$75, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$75, DW_AT_decl_column(0x25)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 414,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("d")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("d")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |414| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |414| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 415,column 5,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |415| 
        MOV32     P,R0L                 ; [CPU_FPU] |415| 
        MOV32     ACC,R0H               ; [CPU_FPU] |415| 
        LSR64     ACC:P,T               ; [CPU_ALU] |415| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |415| 
        MOVZ      AR6,PL                ; [CPU_ALU] |415| 
        MOVL      XAR4,#32752           ; [CPU_ARAU] |415| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |415| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |415| 
        B         ||$C$L37||,NEQ        ; [CPU_ALU] |415| 
        ; branchcc occurs ; [] |415| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 417,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |417| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |417| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |417| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |417| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |417| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |417| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |417| 
        AND       PL,#65535             ; [CPU_ALU] |417| 
        AND       PH,#65535             ; [CPU_ALU] |417| 
        MOV32     ACC,R0H               ; [CPU_FPU] |417| 
        AND       AL,#65535             ; [CPU_ALU] |417| 
        ANDB      AH,#15                ; [CPU_ALU] |417| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |417| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |417| 
        CMPB      AL,#0                 ; [CPU_ALU] |417| 
        B         ||$C$L36||,NEQ        ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 418,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |418| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] |418| 
        ; branch occurs ; [] |418| 
||$C$L36||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 419,column 14,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |419| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] |419| 
        ; branch occurs ; [] |419| 
||$C$L37||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 421,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |421| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |421| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |421| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |421| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |421| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |421| 
        MOV       T,#52                 ; [CPU_ALU] |421| 
        MOV32     P,R0L                 ; [CPU_FPU] |421| 
        MOV32     ACC,R0H               ; [CPU_FPU] |421| 
        LSR64     ACC:P,T               ; [CPU_ALU] |421| 
        ANDB      AL,#0                 ; [CPU_ALU] |421| 
        ANDB      AH,#0                 ; [CPU_ALU] |421| 
        AND       PL,#2047              ; [CPU_ALU] |421| 
        AND       PH,#0                 ; [CPU_ALU] |421| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |421| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |421| 
        CMPB      AL,#0                 ; [CPU_ALU] |421| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |421| 
        ; branchcc occurs ; [] |421| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 423,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |423| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |423| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |423| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |423| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |423| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |423| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |423| 
        AND       PL,#65535             ; [CPU_ALU] |423| 
        AND       PH,#65535             ; [CPU_ALU] |423| 
        MOV32     ACC,R0H               ; [CPU_FPU] |423| 
        AND       AL,#65535             ; [CPU_ALU] |423| 
        ANDB      AH,#15                ; [CPU_ALU] |423| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |423| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |423| 
        CMPB      AL,#0                 ; [CPU_ALU] |423| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |423| 
        ; branchcc occurs ; [] |423| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 424,column 13,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |424| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] |424| 
        ; branch occurs ; [] |424| 
||$C$L38||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 425,column 14,is_stmt,isa 0
        MOV       AL,#-2                ; [CPU_ALU] |425| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] |425| 
        ; branch occurs ; [] |425| 
||$C$L39||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 427,column 5,is_stmt,isa 0
        MOV       AL,#-1                ; [CPU_ALU] |427| 
||$C$L40||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 428,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$75, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$82, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$82, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$82, DW_AT_decl_column(0x25)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 431,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("e")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x29]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("e")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -8]

        MOV32     *-SP[8],R0L           ; [CPU_FPU] |431| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |431| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 432,column 5,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |432| 
        MOV32     P,R0L                 ; [CPU_FPU] |432| 
        MOV32     ACC,R0H               ; [CPU_FPU] |432| 
        LSR64     ACC:P,T               ; [CPU_ALU] |432| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |432| 
        MOVZ      AR6,PL                ; [CPU_ALU] |432| 
        MOVL      XAR4,#32752           ; [CPU_ARAU] |432| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |432| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |432| 
        B         ||$C$L42||,NEQ        ; [CPU_ALU] |432| 
        ; branchcc occurs ; [] |432| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 434,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |434| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |434| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |434| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |434| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |434| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |434| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |434| 
        AND       PL,#65535             ; [CPU_ALU] |434| 
        AND       PH,#65535             ; [CPU_ALU] |434| 
        MOV32     ACC,R0H               ; [CPU_FPU] |434| 
        AND       AL,#65535             ; [CPU_ALU] |434| 
        ANDB      AH,#15                ; [CPU_ALU] |434| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |434| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |434| 
        CMPB      AL,#0                 ; [CPU_ALU] |434| 
        B         ||$C$L41||,NEQ        ; [CPU_ALU] |434| 
        ; branchcc occurs ; [] |434| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 435,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |435| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |435| 
        ; branch occurs ; [] |435| 
||$C$L41||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 436,column 14,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |436| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |436| 
        ; branch occurs ; [] |436| 
||$C$L42||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 438,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |438| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |438| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |438| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |438| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |438| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |438| 
        MOV       T,#52                 ; [CPU_ALU] |438| 
        MOV32     P,R0L                 ; [CPU_FPU] |438| 
        MOV32     ACC,R0H               ; [CPU_FPU] |438| 
        LSR64     ACC:P,T               ; [CPU_ALU] |438| 
        ANDB      AL,#0                 ; [CPU_ALU] |438| 
        ANDB      AH,#0                 ; [CPU_ALU] |438| 
        AND       PL,#2047              ; [CPU_ALU] |438| 
        AND       PH,#0                 ; [CPU_ALU] |438| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |438| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |438| 
        CMPB      AL,#0                 ; [CPU_ALU] |438| 
        B         ||$C$L44||,NEQ        ; [CPU_ALU] |438| 
        ; branchcc occurs ; [] |438| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 440,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |440| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |440| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |440| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |440| 
        MOV32     R0H,*-SP[6]           ; [CPU_FPU] |440| 
        MOV32     R0L,*-SP[8]           ; [CPU_FPU] |440| 
        NOP       ; [CPU_ALU] 
        MOV32     P,R0L                 ; [CPU_FPU] |440| 
        AND       PL,#65535             ; [CPU_ALU] |440| 
        AND       PH,#65535             ; [CPU_ALU] |440| 
        MOV32     ACC,R0H               ; [CPU_FPU] |440| 
        AND       AL,#65535             ; [CPU_ALU] |440| 
        ANDB      AH,#15                ; [CPU_ALU] |440| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |440| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |440| 
        CMPB      AL,#0                 ; [CPU_ALU] |440| 
        B         ||$C$L43||,NEQ        ; [CPU_ALU] |440| 
        ; branchcc occurs ; [] |440| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 441,column 13,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |441| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |441| 
        ; branch occurs ; [] |441| 
||$C$L43||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 442,column 14,is_stmt,isa 0
        MOV       AL,#-2                ; [CPU_ALU] |442| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |442| 
        ; branch occurs ; [] |442| 
||$C$L44||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 444,column 5,is_stmt,isa 0
        MOV       AL,#-1                ; [CPU_ALU] |444| 
||$C$L45||:    
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h",line 445,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/_defs.h")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$82

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$89, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$89, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$89, DW_AT_decl_column(0x10)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 229,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("x")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_sqrtf               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__relaxed_sqrtf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("x")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |229| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 230,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |230| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 231,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0xe7)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$93, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$93, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$93, DW_AT_decl_column(0x10)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 234,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("x")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_sinf                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__relaxed_sinf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("x")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |234| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 235,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |235| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |235| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 236,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$93, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0xec)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$97, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$97, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0xee)
	.dwattr $C$DW$97, DW_AT_decl_column(0x10)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 239,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("x")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_cosf                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__relaxed_cosf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("x")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |239| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 240,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |240| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |240| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 241,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$97, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$101, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$101, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$101, DW_AT_decl_column(0x10)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 244,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("x")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_atanf               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||__relaxed_atanf||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("x")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -2]

        MOV32     *-SP[2],R0H           ; [CPU_FPU] |244| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 245,column 3,is_stmt,isa 0
        MOVIZ     R0H,#16256            ; [CPU_FPU] |245| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |245| 
        QUADF32   R1H,R0H,R1H,R0H       ; [CPU_FPU] |245| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |245| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |245| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |245| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 246,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$105, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$105, DW_AT_decl_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$105, DW_AT_decl_column(0x10)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 249,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("y")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("x")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_atan2f              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__relaxed_atan2f||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("y")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg20 -2]

$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("x")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -4]

        MOV32     *-SP[4],R1H           ; [CPU_FPU] |249| 
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |249| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 250,column 3,is_stmt,isa 0
        MOV32     R0H,*-SP[4]           ; [CPU_FPU] |250| 
        MOV32     R1H,*-SP[2]           ; [CPU_FPU] |250| 
        QUADF32   R1H,R0H,R1H,R0H       ; [CPU_FPU] |250| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |250| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |250| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |250| 
	.dwpsn	file "C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h",line 251,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("C:/ti/ccs1030/ccs/tools/compiler/ti-cgt-c2000_20.2.4.LTS/include/math.h")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xfb)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text:InitEcap5AsUsecCounter"
	.clink
	.global	||InitEcap5AsUsecCounter||

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("InitEcap5AsUsecCounter")
	.dwattr $C$DW$111, DW_AT_low_pc(||InitEcap5AsUsecCounter||)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_linkage_name("InitEcap5AsUsecCounter")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_decl_file("../Drivers/ECap2.c")
	.dwattr $C$DW$111, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$111, DW_AT_decl_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/ECap2.c",line 11,column 1,is_stmt,address ||InitEcap5AsUsecCounter||,isa 0

	.dwfde $C$DW$CIE, ||InitEcap5AsUsecCounter||

;***************************************************************
;* FNAME: InitEcap5AsUsecCounter        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||InitEcap5AsUsecCounter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/ECap2.c",line 13,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/ECap2.c",line 14,column 5,is_stmt,isa 0
        MOVW      DP,#||ECap5Regs||+20  ; [CPU_ARAU] 
        MOV       @$BLOCKED(||ECap5Regs||)+20,#61952 ; [CPU_ALU] |14| 
	.dwpsn	file "../Drivers/ECap2.c",line 18,column 5,is_stmt,isa 0
        MOVW      DP,#||InputXbarRegs||+4 ; [CPU_ARAU] 
        MOVB      @$BLOCKED(||InputXbarRegs||)+4,#11,UNC ; [CPU_ALU] |18| 
	.dwpsn	file "../Drivers/ECap2.c",line 19,column 5,is_stmt,isa 0
        MOVW      DP,#||ECap5Regs||+18  ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||ECap5Regs||)+18,#0xff80 ; [CPU_ALU] |19| 
        ORB       AL,#0x04              ; [CPU_ALU] |19| 
        MOV       @$BLOCKED(||ECap5Regs||)+18,AL ; [CPU_ALU] |19| 
	.dwpsn	file "../Drivers/ECap2.c",line 20,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||ECap5Regs||)+21,#0x0800 ; [CPU_ALU] |20| 
	.dwpsn	file "../Drivers/ECap2.c",line 21,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||ECap5Regs||)+21,#0x0010 ; [CPU_ALU] |21| 
	.dwpsn	file "../Drivers/ECap2.c",line 22,column 5,is_stmt,isa 0
        AND       @$BLOCKED(||ECap5Regs||)+21,#0xfff9 ; [CPU_ALU] |22| 
	.dwpsn	file "../Drivers/ECap2.c",line 23,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||ECap5Regs||)+21,#0x0001 ; [CPU_ALU] |23| 
	.dwpsn	file "../Drivers/ECap2.c",line 24,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||ECap5Regs||)+20,#0x0100 ; [CPU_ALU] |24| 
	.dwpsn	file "../Drivers/ECap2.c",line 25,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||ECap5Regs||)+20,#0x0001 ; [CPU_ALU] |25| 
	.dwpsn	file "../Drivers/ECap2.c",line 26,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../Drivers/ECap2.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x1a)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text:ResetHardwareSysTimer"
	.clink
	.global	||ResetHardwareSysTimer||

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("ResetHardwareSysTimer")
	.dwattr $C$DW$113, DW_AT_low_pc(||ResetHardwareSysTimer||)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_linkage_name("ResetHardwareSysTimer")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_decl_file("../Drivers/ECap2.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$113, DW_AT_decl_column(0x06)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/ECap2.c",line 30,column 1,is_stmt,address ||ResetHardwareSysTimer||,isa 0

	.dwfde $C$DW$CIE, ||ResetHardwareSysTimer||

;***************************************************************
;* FNAME: ResetHardwareSysTimer         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||ResetHardwareSysTimer||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/ECap2.c",line 31,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |31| 
        MOVW      DP,#||ECap5Regs||     ; [CPU_ARAU] 
        MOVL      @$BLOCKED(||ECap5Regs||),ACC ; [CPU_ALU] |31| 
	.dwpsn	file "../Drivers/ECap2.c",line 32,column 1,is_stmt,isa 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../Drivers/ECap2.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x20)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||ECap5Regs||
	.global	||InputXbarRegs||
	.global	||__c28xabi_cmpull||
;**************************************************************
;* SECTION GROUPS                                             *
;**************************************************************
	.group    "__fpclassify", 1
	.gmember  ".text:__fpclassify"
	.endgroup
	.group    "__fpclassifyf", 1
	.gmember  ".text:__fpclassifyf"
	.endgroup
	.group    "__fpclassifyl", 1
	.gmember  ".text:__fpclassifyl"
	.endgroup
	.group    "__isfinite", 1
	.gmember  ".text:__isfinite"
	.endgroup
	.group    "__isfinitef", 1
	.gmember  ".text:__isfinitef"
	.endgroup
	.group    "__isfinitel", 1
	.gmember  ".text:__isfinitel"
	.endgroup
	.group    "__isinf", 1
	.gmember  ".text:__isinf"
	.endgroup
	.group    "__isinff", 1
	.gmember  ".text:__isinff"
	.endgroup
	.group    "__isinfl", 1
	.gmember  ".text:__isinfl"
	.endgroup
	.group    "__isnan", 1
	.gmember  ".text:__isnan"
	.endgroup
	.group    "__isnanf", 1
	.gmember  ".text:__isnanf"
	.endgroup
	.group    "__isnanl", 1
	.gmember  ".text:__isnanl"
	.endgroup
	.group    "__isnormal", 1
	.gmember  ".text:__isnormal"
	.endgroup
	.group    "__isnormalf", 1
	.gmember  ".text:__isnormalf"
	.endgroup
	.group    "__isnormall", 1
	.gmember  ".text:__isnormall"
	.endgroup
	.group    "__relaxed_atan2f", 1
	.gmember  ".text:__relaxed_atan2f"
	.endgroup
	.group    "__relaxed_atanf", 1
	.gmember  ".text:__relaxed_atanf"
	.endgroup
	.group    "__relaxed_cosf", 1
	.gmember  ".text:__relaxed_cosf"
	.endgroup
	.group    "__relaxed_sinf", 1
	.gmember  ".text:__relaxed_sinf"
	.endgroup
	.group    "__relaxed_sqrtf", 1
	.gmember  ".text:__relaxed_sqrtf"
	.endgroup
	.group    "__signbit", 1
	.gmember  ".text:__signbit"
	.endgroup
	.group    "__signbitf", 1
	.gmember  ".text:__signbitf"
	.endgroup
	.group    "__signbitl", 1
	.gmember  ".text:__signbitl"
	.endgroup


;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(1)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(1)
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

$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("ECAPSYNCINSEL_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("SEL")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$115, DW_AT_bit_size(0x05)
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("rsvd1")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$116, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("rsvd2")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$117, DW_AT_bit_size(0x10)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$20, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("ECAPSYNCINSEL_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$118, DW_AT_name("all")
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0d)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("bit")
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$119, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("ECAP_REGS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x20)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$120, DW_AT_name("TSCTR")
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$120, DW_AT_decl_column(0x2e)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$121, DW_AT_name("CTRPHS")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$121, DW_AT_decl_column(0x2e)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$122, DW_AT_name("CAP1")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$122, DW_AT_decl_column(0x2e)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$123, DW_AT_name("CAP2")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$123, DW_AT_decl_column(0x2e)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$124, DW_AT_name("CAP3")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$124, DW_AT_decl_column(0x2e)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$125, DW_AT_name("CAP4")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$125, DW_AT_decl_column(0x2e)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$126, DW_AT_name("rsvd1")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$126, DW_AT_decl_column(0x2e)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$127, DW_AT_name("ECCTL0")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$127, DW_AT_decl_column(0x2e)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$128, DW_AT_name("ECCTL1")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$128, DW_AT_decl_column(0x2e)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$129, DW_AT_name("ECCTL2")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$129, DW_AT_decl_column(0x2e)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$130, DW_AT_name("ECEINT")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$130, DW_AT_decl_column(0x2e)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$131, DW_AT_name("ECFLG")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$131, DW_AT_decl_column(0x2e)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$132, DW_AT_name("ECCLR")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$132, DW_AT_decl_column(0x2e)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$133, DW_AT_name("ECFRC")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$133, DW_AT_decl_column(0x2e)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$134, DW_AT_name("rsvd2")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0xca)
	.dwattr $C$DW$134, DW_AT_decl_column(0x2e)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$135, DW_AT_name("ECAPSYNCINSEL")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$135, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$136	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$25)

$C$DW$T$44	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$136)

	.dwendtag $C$DW$TU$44


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("ECCLR_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("INT")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0c)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("CEVT1")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("CEVT2")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0c)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("CEVT3")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x90)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0c)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("CEVT4")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x91)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("CTROVF")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x92)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0c)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("CTR_PRD")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x93)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0c)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("CTR_CMP")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x94)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0c)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("rsvd1")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x95)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0c)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("rsvd2")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$146, DW_AT_bit_size(0x07)
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x96)
	.dwattr $C$DW$146, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("ECCLR_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("all")
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0d)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$148, DW_AT_name("bit")
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$148, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$27, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("ECCTL0_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("INPUTSEL")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$149, DW_AT_bit_size(0x07)
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x37)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0c)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("rsvd1")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$150, DW_AT_bit_size(0x09)
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x38)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0c)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("rsvd2")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$151, DW_AT_bit_size(0x10)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x39)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("ECCTL0_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$152, DW_AT_name("all")
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0d)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$153, DW_AT_name("bit")
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$153, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("ECCTL1_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("CAP1POL")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x42)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0c)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("CTRRST1")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x43)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0c)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("CAP2POL")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x44)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0c)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("CTRRST2")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x45)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0c)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("CAP3POL")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x46)
	.dwattr $C$DW$158, DW_AT_decl_column(0x0c)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("CTRRST3")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x47)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("CAP4POL")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x48)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0c)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("CTRRST4")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x49)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0c)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("CAPLDEN")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0c)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("PRESCALE")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$163, DW_AT_bit_size(0x05)
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0c)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$164, DW_AT_bit_size(0x02)
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$30, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("ECCTL1_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("all")
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x50)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0d)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$166, DW_AT_name("bit")
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x51)
	.dwattr $C$DW$166, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$31, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("ECCTL2_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("CONT_ONESHT")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x55)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0c)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("STOP_WRAP")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$168, DW_AT_bit_size(0x02)
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x56)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0c)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("REARM")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x57)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0c)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("TSCTRSTOP")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x58)
	.dwattr $C$DW$170, DW_AT_decl_column(0x0c)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("SYNCI_EN")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x59)
	.dwattr $C$DW$171, DW_AT_decl_column(0x0c)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("SYNCO_SEL")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$172, DW_AT_bit_size(0x02)
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$172, DW_AT_decl_column(0x0c)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("SWSYNC")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0c)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("CAP_APWM")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0c)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("APWMPOL")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$175, DW_AT_decl_column(0x0c)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("CTRFILTRESET")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0c)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("DMAEVTSEL")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$177, DW_AT_bit_size(0x02)
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0c)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("MODCNTRSTS")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$178, DW_AT_bit_size(0x02)
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x60)
	.dwattr $C$DW$178, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$32, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("ECCTL2_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("all")
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x64)
	.dwattr $C$DW$179, DW_AT_decl_column(0x0d)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$180, DW_AT_name("bit")
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x65)
	.dwattr $C$DW$180, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$33, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("ECEINT_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("rsvd1")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x69)
	.dwattr $C$DW$181, DW_AT_decl_column(0x0c)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("CEVT1")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$182, DW_AT_decl_column(0x0c)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("CEVT2")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$183, DW_AT_decl_column(0x0c)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("CEVT3")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$184, DW_AT_decl_column(0x0c)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("CEVT4")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$185, DW_AT_decl_column(0x0c)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("CTROVF")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0c)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("CTR_EQ_PRD")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$187, DW_AT_decl_column(0x0c)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("CTR_EQ_CMP")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x70)
	.dwattr $C$DW$188, DW_AT_decl_column(0x0c)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("rsvd2")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x71)
	.dwattr $C$DW$189, DW_AT_decl_column(0x0c)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("rsvd3")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$190, DW_AT_bit_size(0x07)
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x72)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$34, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("ECEINT_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("all")
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x76)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0d)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$192, DW_AT_name("bit")
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x77)
	.dwattr $C$DW$192, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("ECFLG_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("INT")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0c)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("CEVT1")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0c)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("CEVT2")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0c)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("CEVT3")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0c)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("CEVT4")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0c)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("CTROVF")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x80)
	.dwattr $C$DW$198, DW_AT_decl_column(0x0c)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("CTR_PRD")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x81)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0c)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("CTR_CMP")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x82)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0c)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("rsvd1")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x83)
	.dwattr $C$DW$201, DW_AT_decl_column(0x0c)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("rsvd2")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$202, DW_AT_bit_size(0x07)
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x84)
	.dwattr $C$DW$202, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$36, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("ECFLG_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("all")
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x88)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0d)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$204, DW_AT_name("bit")
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x89)
	.dwattr $C$DW$204, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$37, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("ECFRC_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("rsvd1")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0c)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("CEVT1")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0c)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("CEVT2")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0c)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("CEVT3")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0c)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("CEVT4")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0c)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("CTROVF")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$210, DW_AT_decl_column(0x0c)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("CTR_PRD")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0c)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("CTR_CMP")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0c)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("rsvd2")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0c)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("rsvd3")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$214, DW_AT_bit_size(0x07)
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("ECFRC_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("all")
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xac)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0d)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$216, DW_AT_name("bit")
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xad)
	.dwattr $C$DW$216, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_ecap.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("INPUTSELECTLOCK_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("INPUT1SELECT")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x37)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0c)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("INPUT2SELECT")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x38)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0c)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("INPUT3SELECT")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x39)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0c)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("INPUT4SELECT")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0c)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("INPUT5SELECT")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0c)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("INPUT6SELECT")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$222, DW_AT_decl_column(0x0c)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("INPUT7SELECT")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0c)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("INPUT8SELECT")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0c)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("INPUT9SELECT")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0c)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("INPUT10SELECT")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0x40)
	.dwattr $C$DW$226, DW_AT_decl_column(0x0c)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("INPUT11SELECT")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x41)
	.dwattr $C$DW$227, DW_AT_decl_column(0x0c)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("INPUT12SELECT")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x42)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0c)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("INPUT13SELECT")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x43)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0c)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("INPUT14SELECT")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x44)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0c)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("INPUT15SELECT")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x45)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0c)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("INPUT16SELECT")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x46)
	.dwattr $C$DW$232, DW_AT_decl_column(0x0c)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("rsvd1")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$233, DW_AT_bit_size(0x10)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x47)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$40, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("INPUTSELECTLOCK_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$234, DW_AT_name("all")
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$234, DW_AT_decl_column(0x0d)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$235, DW_AT_name("bit")
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$235, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$41, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("INPUT_XBAR_REGS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x20)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("INPUT1SELECT")
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x50)
	.dwattr $C$DW$236, DW_AT_decl_column(0x2e)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("INPUT2SELECT")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x51)
	.dwattr $C$DW$237, DW_AT_decl_column(0x2e)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("INPUT3SELECT")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x52)
	.dwattr $C$DW$238, DW_AT_decl_column(0x2e)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("INPUT4SELECT")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x53)
	.dwattr $C$DW$239, DW_AT_decl_column(0x2e)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("INPUT5SELECT")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x54)
	.dwattr $C$DW$240, DW_AT_decl_column(0x2e)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("INPUT6SELECT")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x55)
	.dwattr $C$DW$241, DW_AT_decl_column(0x2e)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("INPUT7SELECT")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x56)
	.dwattr $C$DW$242, DW_AT_decl_column(0x2e)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("INPUT8SELECT")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x57)
	.dwattr $C$DW$243, DW_AT_decl_column(0x2e)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("INPUT9SELECT")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x58)
	.dwattr $C$DW$244, DW_AT_decl_column(0x2e)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("INPUT10SELECT")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x59)
	.dwattr $C$DW$245, DW_AT_decl_column(0x2e)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("INPUT11SELECT")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$246, DW_AT_decl_column(0x2e)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("INPUT12SELECT")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$247, DW_AT_decl_column(0x2e)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("INPUT13SELECT")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$248, DW_AT_decl_column(0x2e)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("INPUT14SELECT")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$249, DW_AT_decl_column(0x2e)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("INPUT15SELECT")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$250, DW_AT_decl_column(0x2e)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("INPUT16SELECT")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$251, DW_AT_decl_column(0x2e)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$252, DW_AT_name("rsvd1")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x60)
	.dwattr $C$DW$252, DW_AT_decl_column(0x2e)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$253, DW_AT_name("INPUTSELECTLOCK")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x61)
	.dwattr $C$DW$253, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\..\F2838x_utils\f2838x_inputxbar.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$254	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$43)

$C$DW$T$51	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$254)

	.dwendtag $C$DW$TU$51


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
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$19


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$255	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$255, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$256	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$256, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x0e)
$C$DW$257	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$257, DW_AT_upper_bound(0x0d)

	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


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
	.dwattr $C$DW$T$21, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("..\Drivers\..\Application\..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$21


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

