;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:18 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{51E59DD2-7C0D-4390-9CC3-0BA378510C53} 
	.sect	".text:SCI_enableModule"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SCI_enableModule")
	.dwattr $C$DW$1, DW_AT_low_pc(||SCI_enableModule||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("SCI_enableModule")
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1cf)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 464,column 1,is_stmt,address ||SCI_enableModule||,isa 0

	.dwfde $C$DW$CIE, ||SCI_enableModule||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_enableModule              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_enableModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("base")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |464| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 473,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |473| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |473| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |473| 
        OR        *+XAR4[0],#0x0023     ; [CPU_ALU] |473| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 475,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x1db)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:SCI_disableModule"
	.clink

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("SCI_disableModule")
	.dwattr $C$DW$5, DW_AT_low_pc(||SCI_disableModule||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("SCI_disableModule")
	.dwattr $C$DW$5, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 491,column 1,is_stmt,address ||SCI_disableModule||,isa 0

	.dwfde $C$DW$CIE, ||SCI_disableModule||
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("base")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_disableModule             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_disableModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |491| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 500,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |500| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |500| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |500| 
        AND       *+XAR4[0],#0xbfff     ; [CPU_ALU] |500| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 505,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |505| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |505| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |505| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |505| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 506,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x1fa)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:SCI_isFIFOEnabled"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("SCI_isFIFOEnabled")
	.dwattr $C$DW$9, DW_AT_low_pc(||SCI_isFIFOEnabled||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("SCI_isFIFOEnabled")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 575,column 1,is_stmt,address ||SCI_isFIFOEnabled||,isa 0

	.dwfde $C$DW$CIE, ||SCI_isFIFOEnabled||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_isFIFOEnabled             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_isFIFOEnabled||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("base")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |575| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 584,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |584| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |584| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |584| 
        AND       AL,*+XAR5[0],#0x4000  ; [CPU_ALU] |584| 
        MOVZ      AR7,AL                ; [CPU_ALU] |584| 
        MOVB      XAR6,#0               ; [CPU_ALU] |584| 
        MOV       ACC,#16384            ; [CPU_ALU] |584| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |584| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |584| 
        ; branchcc occurs ; [] |584| 
        MOVB      AH,#1                 ; [CPU_ALU] |584| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] |584| 
        ; branch occurs ; [] |584| 
||$C$L1||:    
        MOVB      AH,#0                 ; [CPU_ALU] |584| 
||$C$L2||:    
        CMPB      AH,#0                 ; [CPU_ALU] |584| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |584| 
        ; branchcc occurs ; [] |584| 
        MOVB      XAR6,#1               ; [CPU_ALU] |584| 
||$C$L3||:    
        MOV       AL,AR6                ; [CPU_ALU] |584| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 586,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x24a)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:SCI_isDataAvailableNonFIFO"
	.clink

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("SCI_isDataAvailableNonFIFO")
	.dwattr $C$DW$13, DW_AT_low_pc(||SCI_isDataAvailableNonFIFO||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("SCI_isDataAvailableNonFIFO")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 681,column 1,is_stmt,address ||SCI_isDataAvailableNonFIFO||,isa 0

	.dwfde $C$DW$CIE, ||SCI_isDataAvailableNonFIFO||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_isDataAvailableNonFIFO    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_isDataAvailableNonFIFO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("base")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |681| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 690,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |690| 
        MOVB      AL,#0                 ; [CPU_ALU] |690| 
        MOV       AH,*+XAR4[5]          ; [CPU_ALU] |690| 
        ANDB      AH,#0x40              ; [CPU_ALU] |690| 
        CMPB      AH,#64                ; [CPU_ALU] |690| 
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |690| 
        ; branchcc occurs ; [] |690| 
        MOVB      AH,#1                 ; [CPU_ALU] |690| 
        B         ||$C$L5||,UNC         ; [CPU_ALU] |690| 
        ; branch occurs ; [] |690| 
||$C$L4||:    
        MOVB      AH,#0                 ; [CPU_ALU] |690| 
||$C$L5||:    
        CMPB      AH,#0                 ; [CPU_ALU] |690| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |690| 
        ; branchcc occurs ; [] |690| 
        MOVB      AL,#1                 ; [CPU_ALU] |690| 
||$C$L6||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 692,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x2b4)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:SCI_isSpaceAvailableNonFIFO"
	.clink

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("SCI_isSpaceAvailableNonFIFO")
	.dwattr $C$DW$17, DW_AT_low_pc(||SCI_isSpaceAvailableNonFIFO||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("SCI_isSpaceAvailableNonFIFO")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$17, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x2c5)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 710,column 1,is_stmt,address ||SCI_isSpaceAvailableNonFIFO||,isa 0

	.dwfde $C$DW$CIE, ||SCI_isSpaceAvailableNonFIFO||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_isSpaceAvailableNonFIFO   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_isSpaceAvailableNonFIFO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("base")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |710| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 719,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |719| 
        MOVB      AL,#0                 ; [CPU_ALU] |719| 
        MOV       AH,*+XAR4[4]          ; [CPU_ALU] |719| 
        ANDB      AH,#0x80              ; [CPU_ALU] |719| 
        CMPB      AH,#128               ; [CPU_ALU] |719| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |719| 
        ; branchcc occurs ; [] |719| 
        MOVB      AH,#1                 ; [CPU_ALU] |719| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |719| 
        ; branch occurs ; [] |719| 
||$C$L7||:    
        MOVB      AH,#0                 ; [CPU_ALU] |719| 
||$C$L8||:    
        CMPB      AH,#0                 ; [CPU_ALU] |719| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |719| 
        ; branchcc occurs ; [] |719| 
        MOVB      AL,#1                 ; [CPU_ALU] |719| 
||$C$L9||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 721,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x2d1)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:SCI_getTxFIFOStatus"
	.clink

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("SCI_getTxFIFOStatus")
	.dwattr $C$DW$21, DW_AT_low_pc(||SCI_getTxFIFOStatus||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("SCI_getTxFIFOStatus")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$21, DW_AT_decl_column(0x01)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 739,column 1,is_stmt,address ||SCI_getTxFIFOStatus||,isa 0

	.dwfde $C$DW$CIE, ||SCI_getTxFIFOStatus||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_getTxFIFOStatus           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_getTxFIFOStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |739| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 748,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |748| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |748| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |748| 
        AND       AL,*+XAR4[0],#0x1f00  ; [CPU_ALU] |748| 
        LSR       AL,8                  ; [CPU_ALU] |748| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 750,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x2ee)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:SCI_getRxFIFOStatus"
	.clink

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("SCI_getRxFIFOStatus")
	.dwattr $C$DW$25, DW_AT_low_pc(||SCI_getRxFIFOStatus||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("SCI_getRxFIFOStatus")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x2ff)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 768,column 1,is_stmt,address ||SCI_getRxFIFOStatus||,isa 0

	.dwfde $C$DW$CIE, ||SCI_getRxFIFOStatus||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_getRxFIFOStatus           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_getRxFIFOStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("base")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |768| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 777,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |777| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |777| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |777| 
        AND       AL,*+XAR4[0],#0x1f00  ; [CPU_ALU] |777| 
        LSR       AL,8                  ; [CPU_ALU] |777| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 779,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x30b)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:SCI_performSoftwareReset"
	.clink

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("SCI_performSoftwareReset")
	.dwattr $C$DW$29, DW_AT_low_pc(||SCI_performSoftwareReset||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("SCI_performSoftwareReset")
	.dwattr $C$DW$29, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x444)
	.dwattr $C$DW$29, DW_AT_decl_column(0x01)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 1093,column 1,is_stmt,address ||SCI_performSoftwareReset||,isa 0

	.dwfde $C$DW$CIE, ||SCI_performSoftwareReset||
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("base")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_performSoftwareReset      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_performSoftwareReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("base")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1093| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 1102,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1102| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1102| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1102| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |1102| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 1103,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1103| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1103| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1103| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |1103| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sci.h",line 1104,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x450)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:SCI_setConfig"
	.clink
	.global	||SCI_setConfig||

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("SCI_setConfig")
	.dwattr $C$DW$33, DW_AT_low_pc(||SCI_setConfig||)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_linkage_name("SCI_setConfig")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x33)
	.dwattr $C$DW$33, DW_AT_decl_column(0x01)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 52,column 1,is_stmt,address ||SCI_setConfig||,isa 0

	.dwfde $C$DW$CIE, ||SCI_setConfig||
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("base")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("lspclkHz")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -8]

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("baud")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -10]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("config")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: SCI_setConfig                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||SCI_setConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -2]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("divider")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |52| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 66,column 5,is_stmt,isa 0
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("SCI_disableModule")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #||SCI_disableModule|| ; [CPU_ALU] |66| 
        ; call occurs [#||SCI_disableModule||] ; [] |66| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 71,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |71| 
        LSL       ACC,3                 ; [CPU_ALU] |71| 
        MOV32     R3H,ACC               ; [CPU_FPU] |71| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ZERO      R2                    ; [CPU_FPU] |71| 
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |71| 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |71| 
        SUBB      ACC,#1                ; [CPU_ALU] |71| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |71| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 76,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |76| 
        AND       AL,#65280             ; [CPU_ALU] |76| 
        ANDB      AH,#0                 ; [CPU_ALU] |76| 
        SFR       ACC,8                 ; [CPU_ALU] |76| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |76| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 77,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |77| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |77| 
        ANDB      AL,#0xff              ; [CPU_ALU] |77| 
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |77| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 82,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |82| 
        AND       AL,*+XAR4[0],#0xff18  ; [CPU_ALU] |82| 
        OR        AL,*-SP[12]           ; [CPU_ALU] |82| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 90,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |90| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("SCI_enableModule")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #||SCI_enableModule|| ; [CPU_ALU] |90| 
        ; call occurs [#||SCI_enableModule||] ; [] |90| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 91,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text:SCI_writeCharArray"
	.clink
	.global	||SCI_writeCharArray||

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("SCI_writeCharArray")
	.dwattr $C$DW$43, DW_AT_low_pc(||SCI_writeCharArray||)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_linkage_name("SCI_writeCharArray")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x63)
	.dwattr $C$DW$43, DW_AT_decl_column(0x01)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 101,column 1,is_stmt,address ||SCI_writeCharArray||,isa 0

	.dwfde $C$DW$CIE, ||SCI_writeCharArray||
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("base")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg0]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("array")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("length")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SCI_writeCharArray            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SCI_writeCharArray||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("base")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -2]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("array")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -4]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("length")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -5]

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("i")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[5],AR5           ; [CPU_ALU] |101| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |101| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |101| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 111,column 5,is_stmt,isa 0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("SCI_isFIFOEnabled")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||SCI_isFIFOEnabled|| ; [CPU_ALU] |111| 
        ; call occurs [#||SCI_isFIFOEnabled||] ; [] |111| 
        CMPB      AL,#0                 ; [CPU_ALU] |111| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 117,column 13,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |117| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 117,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |117| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |117| 
        B         ||$C$L13||,LOS        ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 122,column 13,is_stmt,isa 0
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 122,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |122| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("SCI_getTxFIFOStatus")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||SCI_getTxFIFOStatus|| ; [CPU_ALU] |122| 
        ; call occurs [#||SCI_getTxFIFOStatus||] ; [] |122| 
        CMPB      AL,#15                ; [CPU_ALU] |122| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |122| 
        ; branchcc occurs ; [] |122| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 129,column 13,is_stmt,isa 0
        MOVZ      AR7,*-SP[6]           ; [CPU_ALU] |129| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |129| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |129| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |129| 
        MOVB      ACC,#9                ; [CPU_ALU] |129| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |129| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |129| 
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |129| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 117,column 33,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |117| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 117,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |117| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |117| 
        B         ||$C$L10||,HI         ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
        B         ||$C$L13||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 138,column 13,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 138,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |138| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |138| 
        B         ||$C$L13||,LOS        ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 143,column 13,is_stmt,isa 0
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 143,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |143| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("SCI_isSpaceAvailableNonFIFO")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||SCI_isSpaceAvailableNonFIFO|| ; [CPU_ALU] |143| 
        ; call occurs [#||SCI_isSpaceAvailableNonFIFO||] ; [] |143| 
        CMPB      AL,#0                 ; [CPU_ALU] |143| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 150,column 13,is_stmt,isa 0
        MOVZ      AR7,*-SP[6]           ; [CPU_ALU] |150| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |150| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |150| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |150| 
        MOVB      ACC,#9                ; [CPU_ALU] |150| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |150| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |150| 
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |150| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |150| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 138,column 33,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 138,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |138| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |138| 
        B         ||$C$L12||,HI         ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 153,column 1,is_stmt,isa 0
||$C$L13||:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x99)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:SCI_readCharArray"
	.clink
	.global	||SCI_readCharArray||

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("SCI_readCharArray")
	.dwattr $C$DW$55, DW_AT_low_pc(||SCI_readCharArray||)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_linkage_name("SCI_readCharArray")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$55, DW_AT_decl_column(0x01)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 162,column 1,is_stmt,address ||SCI_readCharArray||,isa 0

	.dwfde $C$DW$CIE, ||SCI_readCharArray||
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("base")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg0]

$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("array")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("length")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: SCI_readCharArray             FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||SCI_readCharArray||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("base")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -2]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("array")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -4]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("length")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -5]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("i")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg20 -6]

        MOV       *-SP[5],AR5           ; [CPU_ALU] |162| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |162| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |162| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 172,column 5,is_stmt,isa 0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("SCI_isFIFOEnabled")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #||SCI_isFIFOEnabled|| ; [CPU_ALU] |172| 
        ; call occurs [#||SCI_isFIFOEnabled||] ; [] |172| 
        CMPB      AL,#0                 ; [CPU_ALU] |172| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 178,column 13,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 178,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |178| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |178| 
        B         ||$C$L17||,LOS        ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 183,column 13,is_stmt,isa 0
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 183,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |183| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("SCI_getRxFIFOStatus")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||SCI_getRxFIFOStatus|| ; [CPU_ALU] |183| 
        ; call occurs [#||SCI_getRxFIFOStatus||] ; [] |183| 
        CMPB      AL,#0                 ; [CPU_ALU] |183| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |183| 
        ; branchcc occurs ; [] |183| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 190,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |190| 
        MOVZ      AR0,*-SP[6]           ; [CPU_ALU] |190| 
        MOV       AL,*+XAR4[7]          ; [CPU_ALU] |190| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |190| 
        ANDB      AL,#0xff              ; [CPU_ALU] |190| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |190| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 178,column 33,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 178,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |178| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |178| 
        B         ||$C$L14||,HI         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
        B         ||$C$L17||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 200,column 13,is_stmt,isa 0
        MOV       *-SP[6],#0            ; [CPU_ALU] |200| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 200,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |200| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |200| 
        B         ||$C$L17||,LOS        ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 205,column 13,is_stmt,isa 0
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 205,column 19,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |205| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("SCI_isDataAvailableNonFIFO")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||SCI_isDataAvailableNonFIFO|| ; [CPU_ALU] |205| 
        ; call occurs [#||SCI_isDataAvailableNonFIFO||] ; [] |205| 
        CMPB      AL,#0                 ; [CPU_ALU] |205| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 212,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |212| 
        MOVZ      AR0,*-SP[6]           ; [CPU_ALU] |212| 
        MOV       AL,*+XAR4[7]          ; [CPU_ALU] |212| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |212| 
        ANDB      AL,#0xff              ; [CPU_ALU] |212| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |212| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 200,column 33,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |200| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 200,column 21,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |200| 
        CMP       AL,*-SP[6]            ; [CPU_ALU] |200| 
        B         ||$C$L16||,HI         ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 216,column 1,is_stmt,isa 0
||$C$L17||:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0xd8)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:SCI_enableInterrupt"
	.clink
	.global	||SCI_enableInterrupt||

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("SCI_enableInterrupt")
	.dwattr $C$DW$67, DW_AT_low_pc(||SCI_enableInterrupt||)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_linkage_name("SCI_enableInterrupt")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$67, DW_AT_decl_column(0x01)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 225,column 1,is_stmt,address ||SCI_enableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SCI_enableInterrupt||
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("base")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg0]

$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("intFlags")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SCI_enableInterrupt           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_enableInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("base")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 234,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |234| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |234| 
        MOVB      AH,#0                 ; [CPU_ALU] |234| 
        ANDB      AL,#0x01              ; [CPU_ALU] |234| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |234| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |234| 
        ; branchcc occurs ; [] |234| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 236,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |236| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |236| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |236| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |236| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 238,column 5,is_stmt,isa 0
        MOVB      XAR6,#2               ; [CPU_ALU] |238| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |238| 
        MOVB      AH,#0                 ; [CPU_ALU] |238| 
        ANDB      AL,#0x02              ; [CPU_ALU] |238| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |238| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 240,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |240| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |240| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |240| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |240| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 242,column 5,is_stmt,isa 0
        MOVB      XAR6,#4               ; [CPU_ALU] |242| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |242| 
        MOVB      AH,#0                 ; [CPU_ALU] |242| 
        ANDB      AL,#0x04              ; [CPU_ALU] |242| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |242| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |242| 
        ; branchcc occurs ; [] |242| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 244,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |244| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |244| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |244| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |244| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 246,column 5,is_stmt,isa 0
        MOVB      XAR6,#8               ; [CPU_ALU] |246| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |246| 
        MOVB      AH,#0                 ; [CPU_ALU] |246| 
        ANDB      AL,#0x08              ; [CPU_ALU] |246| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |246| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |246| 
        ; branchcc occurs ; [] |246| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 248,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |248| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |248| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |248| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |248| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 250,column 5,is_stmt,isa 0
        MOVB      XAR6,#16              ; [CPU_ALU] |250| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |250| 
        MOVB      AH,#0                 ; [CPU_ALU] |250| 
        ANDB      AL,#0x10              ; [CPU_ALU] |250| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |250| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 252,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |252| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |252| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |252| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |252| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 254,column 1,is_stmt,isa 0
||$C$L22||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0xfe)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text:SCI_disableInterrupt"
	.clink
	.global	||SCI_disableInterrupt||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("SCI_disableInterrupt")
	.dwattr $C$DW$72, DW_AT_low_pc(||SCI_disableInterrupt||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("SCI_disableInterrupt")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x106)
	.dwattr $C$DW$72, DW_AT_decl_column(0x01)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 263,column 1,is_stmt,address ||SCI_disableInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||SCI_disableInterrupt||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("base")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("intFlags")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SCI_disableInterrupt          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_disableInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("base")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |263| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 272,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |272| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |272| 
        MOVB      AH,#0                 ; [CPU_ALU] |272| 
        ANDB      AL,#0x01              ; [CPU_ALU] |272| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |272| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |272| 
        ; branchcc occurs ; [] |272| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 274,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |274| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |274| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |274| 
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |274| 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 276,column 5,is_stmt,isa 0
        MOVB      XAR6,#2               ; [CPU_ALU] |276| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |276| 
        MOVB      AH,#0                 ; [CPU_ALU] |276| 
        ANDB      AL,#0x02              ; [CPU_ALU] |276| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |276| 
        B         ||$C$L24||,NEQ        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 278,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |278| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |278| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |278| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |278| 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 280,column 5,is_stmt,isa 0
        MOVB      XAR6,#4               ; [CPU_ALU] |280| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |280| 
        MOVB      AH,#0                 ; [CPU_ALU] |280| 
        ANDB      AL,#0x04              ; [CPU_ALU] |280| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |280| 
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |280| 
        ; branchcc occurs ; [] |280| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 282,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |282| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |282| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |282| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |282| 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 284,column 5,is_stmt,isa 0
        MOVB      XAR6,#8               ; [CPU_ALU] |284| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |284| 
        MOVB      AH,#0                 ; [CPU_ALU] |284| 
        ANDB      AL,#0x08              ; [CPU_ALU] |284| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |284| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |284| 
        ; branchcc occurs ; [] |284| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 286,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |286| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |286| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |286| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |286| 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 288,column 5,is_stmt,isa 0
        MOVB      XAR6,#16              ; [CPU_ALU] |288| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |288| 
        MOVB      AH,#0                 ; [CPU_ALU] |288| 
        ANDB      AL,#0x10              ; [CPU_ALU] |288| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |288| 
        B         ||$C$L27||,NEQ        ; [CPU_ALU] |288| 
        ; branchcc occurs ; [] |288| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 290,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |290| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |290| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |290| 
        AND       *+XAR4[0],#0xffdf     ; [CPU_ALU] |290| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 292,column 1,is_stmt,isa 0
||$C$L27||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:SCI_getInterruptStatus"
	.clink
	.global	||SCI_getInterruptStatus||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("SCI_getInterruptStatus")
	.dwattr $C$DW$77, DW_AT_low_pc(||SCI_getInterruptStatus||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("SCI_getInterruptStatus")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$77, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$77, DW_AT_decl_column(0x01)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 301,column 1,is_stmt,address ||SCI_getInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SCI_getInterruptStatus||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("base")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SCI_getInterruptStatus        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||SCI_getInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("base")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -2]

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("interruptStatus")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |301| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 302,column 30,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |302| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |302| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 312,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |312| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |312| 
        ANDB      AL,#0x80              ; [CPU_ALU] |312| 
        CMPB      AL,#128               ; [CPU_ALU] |312| 
        B         ||$C$L28||,NEQ        ; [CPU_ALU] |312| 
        ; branchcc occurs ; [] |312| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 314,column 9,is_stmt,isa 0
        OR        *-SP[4],#4            ; [CPU_ALU] |314| 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 316,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |316| 
        ANDB      AL,#0x80              ; [CPU_ALU] |316| 
        CMPB      AL,#128               ; [CPU_ALU] |316| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |316| 
        ; branchcc occurs ; [] |316| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 318,column 9,is_stmt,isa 0
        OR        *-SP[4],#1            ; [CPU_ALU] |318| 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 320,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |320| 
        ANDB      AL,#0x40              ; [CPU_ALU] |320| 
        CMPB      AL,#64                ; [CPU_ALU] |320| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |320| 
        ANDB      AL,#0x20              ; [CPU_ALU] |320| 
        CMPB      AL,#32                ; [CPU_ALU] |320| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 323,column 9,is_stmt,isa 0
        OR        *-SP[4],#2            ; [CPU_ALU] |323| 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 325,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |325| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |325| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |325| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |325| 
        ANDB      AL,#0x80              ; [CPU_ALU] |325| 
        CMPB      AL,#128               ; [CPU_ALU] |325| 
        B         ||$C$L32||,NEQ        ; [CPU_ALU] |325| 
        ; branchcc occurs ; [] |325| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 327,column 9,is_stmt,isa 0
        OR        *-SP[4],#8            ; [CPU_ALU] |327| 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 329,column 5,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |329| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |329| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |329| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |329| 
        ANDB      AL,#0x80              ; [CPU_ALU] |329| 
        CMPB      AL,#128               ; [CPU_ALU] |329| 
        B         ||$C$L33||,NEQ        ; [CPU_ALU] |329| 
        ; branchcc occurs ; [] |329| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 331,column 9,is_stmt,isa 0
        OR        *-SP[4],#16           ; [CPU_ALU] |331| 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 333,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |333| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |333| 
        ANDB      AL,#0x10              ; [CPU_ALU] |333| 
        CMPB      AL,#16                ; [CPU_ALU] |333| 
        B         ||$C$L34||,NEQ        ; [CPU_ALU] |333| 
        ; branchcc occurs ; [] |333| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 335,column 9,is_stmt,isa 0
        OR        *-SP[4],#32           ; [CPU_ALU] |335| 
||$C$L34||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 337,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |337| 
        ANDB      AL,#0x08              ; [CPU_ALU] |337| 
        CMPB      AL,#8                 ; [CPU_ALU] |337| 
        B         ||$C$L35||,NEQ        ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 339,column 9,is_stmt,isa 0
        OR        *-SP[4],#64           ; [CPU_ALU] |339| 
||$C$L35||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 341,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |341| 
        ANDB      AL,#0x04              ; [CPU_ALU] |341| 
        CMPB      AL,#4                 ; [CPU_ALU] |341| 
        B         ||$C$L36||,NEQ        ; [CPU_ALU] |341| 
        ; branchcc occurs ; [] |341| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 343,column 9,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |343| 
||$C$L36||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 346,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |346| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 347,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:SCI_clearInterruptStatus"
	.clink
	.global	||SCI_clearInterruptStatus||

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$82, DW_AT_low_pc(||SCI_clearInterruptStatus||)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_linkage_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$82, DW_AT_decl_line(0x163)
	.dwattr $C$DW$82, DW_AT_decl_column(0x01)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 356,column 1,is_stmt,address ||SCI_clearInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||SCI_clearInterruptStatus||
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("base")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg0]

$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_name("intFlags")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: SCI_clearInterruptStatus      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SCI_clearInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("base")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |356| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 365,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |365| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |365| 
        MOVB      AH,#0                 ; [CPU_ALU] |365| 
        ANDB      AL,#0x01              ; [CPU_ALU] |365| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |365| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        MOVB      XAR6,#2               ; [CPU_ALU] |365| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |365| 
        MOVB      AH,#0                 ; [CPU_ALU] |365| 
        ANDB      AL,#0x02              ; [CPU_ALU] |365| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |365| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        MOVB      XAR6,#32              ; [CPU_ALU] |365| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |365| 
        MOVB      AH,#0                 ; [CPU_ALU] |365| 
        ANDB      AL,#0x20              ; [CPU_ALU] |365| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |365| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        MOVB      XAR6,#64              ; [CPU_ALU] |365| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |365| 
        MOVB      AH,#0                 ; [CPU_ALU] |365| 
        ANDB      AL,#0x40              ; [CPU_ALU] |365| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |365| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
        MOVB      XAR6,#128             ; [CPU_ALU] |365| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |365| 
        MOVB      AH,#0                 ; [CPU_ALU] |365| 
        ANDB      AL,#0x80              ; [CPU_ALU] |365| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |365| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 371,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |371| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("SCI_performSoftwareReset")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||SCI_performSoftwareReset|| ; [CPU_ALU] |371| 
        ; call occurs [#||SCI_performSoftwareReset||] ; [] |371| 
||$C$L38||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 373,column 5,is_stmt,isa 0
        MOVB      XAR6,#8               ; [CPU_ALU] |373| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |373| 
        MOVB      AH,#0                 ; [CPU_ALU] |373| 
        ANDB      AL,#0x08              ; [CPU_ALU] |373| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |373| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 375,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |375| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |375| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |375| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |375| 
||$C$L39||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 377,column 5,is_stmt,isa 0
        MOVB      XAR6,#16              ; [CPU_ALU] |377| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |377| 
        MOVB      AH,#0                 ; [CPU_ALU] |377| 
        ANDB      AL,#0x10              ; [CPU_ALU] |377| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |377| 
        B         ||$C$L40||,NEQ        ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 379,column 10,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |379| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |379| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |379| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |379| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sci.c",line 381,column 1,is_stmt,isa 0
||$C$L40||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sci.c")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x17d)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$82


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
$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("SCI_FIFO_TX0")
	.dwattr $C$DW$88, DW_AT_const_value(0x00)
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x84)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("SCI_FIFO_TX1")
	.dwattr $C$DW$89, DW_AT_const_value(0x01)
	.dwattr $C$DW$89, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x85)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("SCI_FIFO_TX2")
	.dwattr $C$DW$90, DW_AT_const_value(0x02)
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x86)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("SCI_FIFO_TX3")
	.dwattr $C$DW$91, DW_AT_const_value(0x03)
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x87)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("SCI_FIFO_TX4")
	.dwattr $C$DW$92, DW_AT_const_value(0x04)
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x88)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("SCI_FIFO_TX5")
	.dwattr $C$DW$93, DW_AT_const_value(0x05)
	.dwattr $C$DW$93, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x89)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("SCI_FIFO_TX6")
	.dwattr $C$DW$94, DW_AT_const_value(0x06)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("SCI_FIFO_TX7")
	.dwattr $C$DW$95, DW_AT_const_value(0x07)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("SCI_FIFO_TX8")
	.dwattr $C$DW$96, DW_AT_const_value(0x08)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("SCI_FIFO_TX9")
	.dwattr $C$DW$97, DW_AT_const_value(0x09)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("SCI_FIFO_TX10")
	.dwattr $C$DW$98, DW_AT_const_value(0x0a)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("SCI_FIFO_TX11")
	.dwattr $C$DW$99, DW_AT_const_value(0x0b)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("SCI_FIFO_TX12")
	.dwattr $C$DW$100, DW_AT_const_value(0x0c)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x90)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("SCI_FIFO_TX13")
	.dwattr $C$DW$101, DW_AT_const_value(0x0d)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x91)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("SCI_FIFO_TX14")
	.dwattr $C$DW$102, DW_AT_const_value(0x0e)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x92)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("SCI_FIFO_TX15")
	.dwattr $C$DW$103, DW_AT_const_value(0x0f)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x93)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("SCI_FIFO_TX16")
	.dwattr $C$DW$104, DW_AT_const_value(0x10)
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x94)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SCI_TxFIFOLevel")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("SCI_FIFO_RX0")
	.dwattr $C$DW$105, DW_AT_const_value(0x00)
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("SCI_FIFO_RX1")
	.dwattr $C$DW$106, DW_AT_const_value(0x01)
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("SCI_FIFO_RX2")
	.dwattr $C$DW$107, DW_AT_const_value(0x02)
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("SCI_FIFO_RX3")
	.dwattr $C$DW$108, DW_AT_const_value(0x03)
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("SCI_FIFO_RX4")
	.dwattr $C$DW$109, DW_AT_const_value(0x04)
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("SCI_FIFO_RX5")
	.dwattr $C$DW$110, DW_AT_const_value(0x05)
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("SCI_FIFO_RX6")
	.dwattr $C$DW$111, DW_AT_const_value(0x06)
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("SCI_FIFO_RX7")
	.dwattr $C$DW$112, DW_AT_const_value(0x07)
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("SCI_FIFO_RX8")
	.dwattr $C$DW$113, DW_AT_const_value(0x08)
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("SCI_FIFO_RX9")
	.dwattr $C$DW$114, DW_AT_const_value(0x09)
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("SCI_FIFO_RX10")
	.dwattr $C$DW$115, DW_AT_const_value(0x0a)
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("SCI_FIFO_RX11")
	.dwattr $C$DW$116, DW_AT_const_value(0x0b)
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xab)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("SCI_FIFO_RX12")
	.dwattr $C$DW$117, DW_AT_const_value(0x0c)
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xac)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("SCI_FIFO_RX13")
	.dwattr $C$DW$118, DW_AT_const_value(0x0d)
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xad)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("SCI_FIFO_RX14")
	.dwattr $C$DW$119, DW_AT_const_value(0x0e)
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xae)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("SCI_FIFO_RX15")
	.dwattr $C$DW$120, DW_AT_const_value(0x0f)
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("SCI_FIFO_RX16")
	.dwattr $C$DW$121, DW_AT_const_value(0x10)
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("SCI_RxFIFOLevel")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sci.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


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


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$33


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$122	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$38)

$C$DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$122)

	.dwendtag $C$DW$TU$39


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$123	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$33)

$C$DW$T$34	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$123)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$124	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$35)

$C$DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$124)

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


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$45, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$45, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$45

