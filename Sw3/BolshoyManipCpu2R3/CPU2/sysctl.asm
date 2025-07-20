;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:19 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1218)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$50)

	.dwendtag $C$DW$1

;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{0630E4FF-CC5B-4CDB-9671-B7E4BA3BD3B8} 
	.sect	".text"
 .if __TI_EABI__
 .asg    SysCtl_delay    , _SysCtl_delay
 .endif
 .def _SysCtl_delay
 .sect ".TI.ramfunc"
 .global  _SysCtl_delay
_SysCtl_delay:
 SUB    ACC,#1
 BF     _SysCtl_delay,GEQ
 LRETR
	.sect	".text:SysCtl_enablePeripheral"
	.clink

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$3, DW_AT_low_pc(||SysCtl_enablePeripheral||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$3, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x615)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1558,column 1,is_stmt,address ||SysCtl_enablePeripheral||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_enablePeripheral||
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("peripheral")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_enablePeripheral       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SysCtl_enablePeripheral||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("peripheral")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -1]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("regIndex")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -2]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("bitIndex")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[1],AL            ; [CPU_ALU] |1558| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1565,column 5,is_stmt,isa 0
        ANDB      AL,#0x1f              ; [CPU_ALU] |1565| 
        LSL       AL,1                  ; [CPU_ALU] |1565| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |1565| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1567,column 5,is_stmt,isa 0
        AND       AL,*-SP[1],#0x1f00    ; [CPU_ALU] |1567| 
        LSR       AL,8                  ; [CPU_ALU] |1567| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |1567| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1570,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1570| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1575,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1575| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1575| 
        ADDU      ACC,*-SP[2]           ; [CPU_ALU] |1575| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1575| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |1575| 
        MOVB      ACC,#1                ; [CPU_ALU] |1575| 
        LSLL      ACC,T                 ; [CPU_ALU] |1575| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |1575| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |1575| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1577,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1577| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 1578,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x62a)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:SysCtl_isMCDClockFailureDetected"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$9, DW_AT_low_pc(||SysCtl_isMCDClockFailureDetected||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0xbe6)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3047,column 1,is_stmt,address ||SysCtl_isMCDClockFailureDetected||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_isMCDClockFailureDetected||

;***************************************************************
;* FNAME: SysCtl_isMCDClockFailureDetected FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_isMCDClockFailureDetected||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3051,column 3,is_stmt,isa 0
        MOV       ACC,#0                ; [CPU_ALU] |3051| 
        MOVL      XAR4,#381486          ; [CPU_ARAU] |3051| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |3051| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |3051| 
        ; branchcc occurs ; [] |3051| 
        MOVB      AH,#1                 ; [CPU_ALU] |3051| 
||$C$L1||:    
        CMPB      AH,#0                 ; [CPU_ALU] |3051| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |3051| 
        ; branchcc occurs ; [] |3051| 
        MOVB      AL,#1                 ; [CPU_ALU] |3051| 
||$C$L2||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3052,column 1,is_stmt,isa 0
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0xbec)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:SysCtl_resetMCD"
	.clink

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SysCtl_resetMCD")
	.dwattr $C$DW$11, DW_AT_low_pc(||SysCtl_resetMCD||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("SysCtl_resetMCD")
	.dwattr $C$DW$11, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0xbf6)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3063,column 1,is_stmt,address ||SysCtl_resetMCD||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_resetMCD||

;***************************************************************
;* FNAME: SysCtl_resetMCD               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_resetMCD||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3064,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |3064| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3066,column 5,is_stmt,isa 0
        MOVL      XAR4,#381486          ; [CPU_ARAU] |3066| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |3066| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3068,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |3068| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3069,column 1,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xbfd)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:SysCtl_setPLLSysClk"
	.clink

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("SysCtl_setPLLSysClk")
	.dwattr $C$DW$13, DW_AT_low_pc(||SysCtl_setPLLSysClk||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("SysCtl_setPLLSysClk")
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0xed4)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3797,column 1,is_stmt,address ||SysCtl_setPLLSysClk||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_setPLLSysClk||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("divider")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_setPLLSysClk           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||SysCtl_setPLLSysClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("divider")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |3797| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3801,column 3,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |3801| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3802,column 3,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |3802| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |3802| 
        OR        AL,*-SP[1]            ; [CPU_ALU] |3802| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |3802| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3807,column 3,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |3807| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 3808,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0xee0)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:SysCtl_isCMReset"
	.clink

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("SysCtl_isCMReset")
	.dwattr $C$DW$17, DW_AT_low_pc(||SysCtl_isCMReset||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("SysCtl_isCMReset")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$17, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0xfb7)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 4024,column 1,is_stmt,address ||SysCtl_isCMReset||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_isCMReset||

;***************************************************************
;* FNAME: SysCtl_isCMReset              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_isCMReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 4025,column 3,is_stmt,isa 0
        MOV       ACC,#0                ; [CPU_ALU] |4025| 
        MOVL      XAR4,#384000          ; [CPU_ARAU] |4025| 
        TBIT      *+XAR4[0],#1          ; [CPU_ALU] |4025| 
        B         ||$C$L3||,TC          ; [CPU_ALU] |4025| 
        ; branchcc occurs ; [] |4025| 
        MOVB      AH,#1                 ; [CPU_ALU] |4025| 
||$C$L3||:    
        CMPB      AH,#0                 ; [CPU_ALU] |4025| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |4025| 
        ; branchcc occurs ; [] |4025| 
        MOVB      AL,#1                 ; [CPU_ALU] |4025| 
||$C$L4||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\sysctl.h",line 4027,column 1,is_stmt,isa 0
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xfbb)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:DCC_enableModule"
	.clink

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("DCC_enableModule")
	.dwattr $C$DW$19, DW_AT_low_pc(||DCC_enableModule||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("DCC_enableModule")
	.dwattr $C$DW$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 233,column 1,is_stmt,address ||DCC_enableModule||,isa 0

	.dwfde $C$DW$CIE, ||DCC_enableModule||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("base")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCC_enableModule              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_enableModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("base")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |233| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 242,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |242| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 244,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |244| 
        AND       AL,*+XAR4[0],#0xfff0  ; [CPU_ALU] |244| 
        ORB       AL,#0x0a              ; [CPU_ALU] |244| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |244| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 247,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |247| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 248,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xf8)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:DCC_disableModule"
	.clink

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("DCC_disableModule")
	.dwattr $C$DW$23, DW_AT_low_pc(||DCC_disableModule||)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_linkage_name("DCC_disableModule")
	.dwattr $C$DW$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x106)
	.dwattr $C$DW$23, DW_AT_decl_column(0x01)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 263,column 1,is_stmt,address ||DCC_disableModule||,isa 0

	.dwfde $C$DW$CIE, ||DCC_disableModule||
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("base")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCC_disableModule             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_disableModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("base")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |263| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 272,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |272| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 274,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |274| 
        AND       AL,*+XAR4[0],#0xfff0  ; [CPU_ALU] |274| 
        ORB       AL,#0x05              ; [CPU_ALU] |274| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |274| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 277,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |277| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 278,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x116)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:DCC_disableErrorSignal"
	.clink

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("DCC_disableErrorSignal")
	.dwattr $C$DW$27, DW_AT_low_pc(||DCC_disableErrorSignal||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("DCC_disableErrorSignal")
	.dwattr $C$DW$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x162)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 355,column 1,is_stmt,address ||DCC_disableErrorSignal||,isa 0

	.dwfde $C$DW$CIE, ||DCC_disableErrorSignal||
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("base")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCC_disableErrorSignal        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_disableErrorSignal||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("base")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |355| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 364,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |364| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 366,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |366| 
        AND       AL,*+XAR4[0],#0xff0f  ; [CPU_ALU] |366| 
        ORB       AL,#0x50              ; [CPU_ALU] |366| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |366| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 370,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |370| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 371,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x173)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:DCC_disableDoneSignal"
	.clink

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("DCC_disableDoneSignal")
	.dwattr $C$DW$31, DW_AT_low_pc(||DCC_disableDoneSignal||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("DCC_disableDoneSignal")
	.dwattr $C$DW$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x181)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 386,column 1,is_stmt,address ||DCC_disableDoneSignal||,isa 0

	.dwfde $C$DW$CIE, ||DCC_disableDoneSignal||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCC_disableDoneSignal         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_disableDoneSignal||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("base")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |386| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 395,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |395| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 397,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |397| 
        AND       AL,*+XAR4[0],#0x0fff  ; [CPU_ALU] |397| 
        OR        AL,#0x5000            ; [CPU_ALU] |397| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |397| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 401,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |401| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 402,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x192)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:DCC_enableSingleShotMode"
	.clink

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("DCC_enableSingleShotMode")
	.dwattr $C$DW$35, DW_AT_low_pc(||DCC_enableSingleShotMode||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("DCC_enableSingleShotMode")
	.dwattr $C$DW$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 423,column 1,is_stmt,address ||DCC_enableSingleShotMode||,isa 0

	.dwfde $C$DW$CIE, ||DCC_enableSingleShotMode||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("mode")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCC_enableSingleShotMode      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||DCC_enableSingleShotMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -2]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("mode")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |423| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |423| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 432,column 5,is_stmt,isa 0
        MOV       AL,#2560              ; [CPU_ALU] |432| 
        CMP       AL,*-SP[3]            ; [CPU_ALU] |432| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |432| 
        ; branchcc occurs ; [] |432| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 434,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |434| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 436,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |436| 
        AND       AL,*+XAR4[0],#0xf0ff  ; [CPU_ALU] |436| 
        OR        AL,#0x0a00            ; [CPU_ALU] |436| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |436| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 440,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |440| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L5||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 444,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |444| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 446,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |446| 
        AND       AL,*+XAR4[0],#0xf0ff  ; [CPU_ALU] |446| 
        OR        AL,#0x0b00            ; [CPU_ALU] |446| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |446| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 450,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |450| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 452,column 1,is_stmt,isa 0
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x1c4)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:DCC_clearErrorFlag"
	.clink

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("DCC_clearErrorFlag")
	.dwattr $C$DW$41, DW_AT_low_pc(||DCC_clearErrorFlag||)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("DCC_clearErrorFlag")
	.dwattr $C$DW$41, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x227)
	.dwattr $C$DW$41, DW_AT_decl_column(0x01)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 552,column 1,is_stmt,address ||DCC_clearErrorFlag||,isa 0

	.dwfde $C$DW$CIE, ||DCC_clearErrorFlag||
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("base")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCC_clearErrorFlag            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_clearErrorFlag||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("base")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |552| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 561,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |561| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 563,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |563| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |563| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |563| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |563| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 565,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |565| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 566,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x236)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:DCC_clearDoneFlag"
	.clink

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("DCC_clearDoneFlag")
	.dwattr $C$DW$45, DW_AT_low_pc(||DCC_clearDoneFlag||)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_linkage_name("DCC_clearDoneFlag")
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x244)
	.dwattr $C$DW$45, DW_AT_decl_column(0x01)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 581,column 1,is_stmt,address ||DCC_clearDoneFlag||,isa 0

	.dwfde $C$DW$CIE, ||DCC_clearDoneFlag||
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("base")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: DCC_clearDoneFlag             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_clearDoneFlag||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("base")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |581| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 590,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |590| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 592,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |592| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |592| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |592| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |592| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 594,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |594| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 595,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x253)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text:DCC_setCounter1ClkSource"
	.clink

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("DCC_setCounter1ClkSource")
	.dwattr $C$DW$49, DW_AT_low_pc(||DCC_setCounter1ClkSource||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("DCC_setCounter1ClkSource")
	.dwattr $C$DW$49, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x2d8)
	.dwattr $C$DW$49, DW_AT_decl_column(0x01)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 729,column 1,is_stmt,address ||DCC_setCounter1ClkSource||,isa 0

	.dwfde $C$DW$CIE, ||DCC_setCounter1ClkSource||
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("base")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg0]

$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("source")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCC_setCounter1ClkSource      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||DCC_setCounter1ClkSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("base")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -2]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("source")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |729| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |729| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 738,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |738| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 743,column 5,is_stmt,isa 0
        MOVB      ACC,#36               ; [CPU_ALU] |743| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |743| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |743| 
        AND       AL,*+XAR4[0],#0x0fe0  ; [CPU_ALU] |743| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |743| 
        MOVZ      AR6,AL                ; [CPU_ALU] |743| 
        OR        AR6,#0xa000           ; [CPU_ALU] |743| 
        MOVB      ACC,#36               ; [CPU_ALU] |743| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |743| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |743| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |743| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 748,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |748| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 749,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x2ed)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:DCC_setCounter0ClkSource"
	.clink

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("DCC_setCounter0ClkSource")
	.dwattr $C$DW$55, DW_AT_low_pc(||DCC_setCounter0ClkSource||)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_linkage_name("DCC_setCounter0ClkSource")
	.dwattr $C$DW$55, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x304)
	.dwattr $C$DW$55, DW_AT_decl_column(0x01)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 773,column 1,is_stmt,address ||DCC_setCounter0ClkSource||,isa 0

	.dwfde $C$DW$CIE, ||DCC_setCounter0ClkSource||
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("base")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg0]

$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("source")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: DCC_setCounter0ClkSource      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||DCC_setCounter0ClkSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("base")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -2]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("source")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |773| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |773| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 782,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |782| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 787,column 5,is_stmt,isa 0
        MOVB      ACC,#40               ; [CPU_ALU] |787| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |787| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |787| 
        AND       AL,*+XAR4[0],#0x0fe0  ; [CPU_ALU] |787| 
        OR        AL,*-SP[3]            ; [CPU_ALU] |787| 
        MOVZ      AR6,AL                ; [CPU_ALU] |787| 
        OR        AR6,#0xa000           ; [CPU_ALU] |787| 
        MOVB      ACC,#40               ; [CPU_ALU] |787| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |787| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |787| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |787| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 792,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |792| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 793,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x319)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:DCC_setCounterSeeds"
	.clink

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("DCC_setCounterSeeds")
	.dwattr $C$DW$61, DW_AT_low_pc(||DCC_setCounterSeeds||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_linkage_name("DCC_setCounterSeeds")
	.dwattr $C$DW$61, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x38a)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 908,column 1,is_stmt,address ||DCC_setCounterSeeds||,isa 0

	.dwfde $C$DW$CIE, ||DCC_setCounterSeeds||
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("base")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("counter0")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -6]

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("validCounter0")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg20 -8]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("counter1")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: DCC_setCounterSeeds           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||DCC_setCounterSeeds||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("base")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |908| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 917,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |917| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 922,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[6]           ; [CPU_ALU] |922| 
        MOVB      ACC,#8                ; [CPU_ALU] |922| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |922| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |922| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |922| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 923,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |923| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |923| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |923| 
        MOVL      P,*-SP[6]             ; [CPU_ALU] |923| 
        AND       PH,#15                ; [CPU_ALU] |923| 
        AND       AL,*+XAR4[0],#0xfff0  ; [CPU_FPU] |923| 
        OR        PH,AL                 ; [CPU_ALU] |923| 
        MOVB      ACC,#10               ; [CPU_FPU] |923| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |923| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |923| 
        MOVH      *+XAR4[0],P           ; [CPU_ALU] |923| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 931,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[8]           ; [CPU_ALU] |931| 
        MOVB      ACC,#12               ; [CPU_ALU] |931| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |931| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |931| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |931| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 936,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |936| 
        MOVB      ACC,#16               ; [CPU_ALU] |936| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |936| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |936| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |936| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 937,column 5,is_stmt,isa 0
        MOVB      ACC,#18               ; [CPU_ALU] |937| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |937| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |937| 
        MOVL      P,*-SP[10]            ; [CPU_ALU] |937| 
        AND       PH,#15                ; [CPU_ALU] |937| 
        AND       AL,*+XAR4[0],#0xfff0  ; [CPU_FPU] |937| 
        OR        PH,AL                 ; [CPU_ALU] |937| 
        MOVB      ACC,#18               ; [CPU_FPU] |937| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |937| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |937| 
        MOVH      *+XAR4[0],P           ; [CPU_ALU] |937| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 942,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |942| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\dcc.h",line 943,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x3af)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:SysCtl_pollX1Counter"
	.clink

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$68, DW_AT_low_pc(||SysCtl_pollX1Counter||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$68, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$68, DW_AT_decl_column(0x01)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 75,column 1,is_stmt,address ||SysCtl_pollX1Counter||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_pollX1Counter||

;***************************************************************
;* FNAME: SysCtl_pollX1Counter          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||SysCtl_pollX1Counter||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("loopCount")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 76,column 24,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |76| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 83,column 5,is_stmt,isa 0
        MOV       ACC,#2000             ; [CPU_ALU] |83| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |83| 
        ; call occurs [#||SysCtl_delay||] ; [] |83| 
        MOVL      XAR5,#381488          ; [CPU_ARAU] |93| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 93,column 15,is_stmt,isa 0
        MOV       ACC,#511              ; [CPU_ALU] |93| 
        CMPL      ACC,*+XAR5[0]         ; [CPU_ALU] |93| 
        B         ||$C$L9||,HIS         ; [CPU_ALU] |93| 
        ; branchcc occurs ; [] |93| 
        MOVL      XAR4,#381488          ; [CPU_ARAU] |95| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 95,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |95| 
        OR        AH,#1                 ; [CPU_ALU] |95| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |95| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 96,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |96| 
        AND       AH,#65534             ; [CPU_ALU] |96| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |96| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 93,column 15,is_stmt,isa 0
        MOV       ACC,#511              ; [CPU_ALU] |93| 
        CMPL      ACC,*+XAR5[0]         ; [CPU_ALU] |93| 
        B         ||$C$L8||,LO          ; [CPU_ALU] |93| 
        ; branchcc occurs ; [] |93| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 102,column 15,is_stmt,isa 0
        MOVL      XAR4,#381488          ; [CPU_ARAU] |102| 
        MOV       AL,#1023              ; [CPU_ALU] |102| 
        CMP       AL,*+XAR4[0]          ; [CPU_ALU] |102| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
||$C$L10||:    
        CMP       AL,*+XAR4[0]          ; [CPU_ALU] |102| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 110,column 9,is_stmt,isa 0
        INC       *-SP[1]               ; [CPU_ALU] |110| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 111,column 12,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |111| 
        CMPB      AL,#4                 ; [CPU_ALU] |111| 
        B         ||$C$L7||,LO          ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 112,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:SysCtl_getClock"
	.clink
	.global	||SysCtl_getClock||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("SysCtl_getClock")
	.dwattr $C$DW$72, DW_AT_low_pc(||SysCtl_getClock||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("SysCtl_getClock")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$72, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x78)
	.dwattr $C$DW$72, DW_AT_decl_column(0x01)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 121,column 1,is_stmt,address ||SysCtl_getClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getClock||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("clockInHz")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getClock               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("clockInHz")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -2]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("temp")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -4]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("oscSource")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -6]

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("clockOut")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |121| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 129,column 5,is_stmt,isa 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #||SysCtl_isMCDClockFailureDetected|| ; [CPU_ALU] |129| 
        ; call occurs [#||SysCtl_isMCDClockFailureDetected||] ; [] |129| 
        CMPB      AL,#0                 ; [CPU_ALU] |129| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 135,column 9,is_stmt,isa 0
        MOV       AL,#38528             ; [CPU_ALU] |135| 
        MOV       AH,#152               ; [CPU_ALU] |135| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |135| 
        B         ||$C$L17||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 143,column 9,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |143| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |143| 
        MOVB      AH,#0                 ; [CPU_ALU] |143| 
        ANDB      AL,#0x03              ; [CPU_ALU] |143| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |143| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 146,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |146| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
        MOVB      ACC,#2                ; [CPU_ALU] |146| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |146| 
        B         ||$C$L14||,NEQ        ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 149,column 13,is_stmt,isa 0
        MOV       AL,#38528             ; [CPU_ALU] |149| 
        MOV       AH,#152               ; [CPU_ALU] |149| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |149| 
        B         ||$C$L15||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 153,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |153| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |153| 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 159,column 9,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |159| 
        MOVB      XAR6,#3               ; [CPU_ALU] |159| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |159| 
        MOVB      AH,#0                 ; [CPU_ALU] |159| 
        ANDB      AL,#0x03              ; [CPU_ALU] |159| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |159| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |159| 
        ; branchcc occurs ; [] |159| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 165,column 13,is_stmt,isa 0
        MOVL      XAR4,#381460          ; [CPU_ARAU] |165| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |165| 
        MOVB      AH,#0                 ; [CPU_ALU] |165| 
        ANDB      AL,#0xff              ; [CPU_ALU] |165| 
        MOVL      XT,ACC                ; [CPU_ALU] |165| 
        IMPYXUL   P,XT,*-SP[8]          ; [CPU_ALU] |165| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |165| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 172,column 13,is_stmt,isa 0
        MOV       T,#24                 ; [CPU_ALU] |172| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |172| 
        ANDB      AL,#0                 ; [CPU_ALU] |172| 
        AND       AH,#7936              ; [CPU_ALU] |172| 
        LSRL      ACC,T                 ; [CPU_ALU] |172| 
        MOVL      P,*+XAR4[0]           ; [CPU_FPU] |172| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |172| 
        AND       PL,#0                 ; [CPU_ALU] |172| 
        AND       PH,#31                ; [CPU_ALU] |172| 
        MOVL      ACC,P                 ; [CPU_ALU] |172| 
        MOVU      ACC,AH                ; [CPU_ALU] |172| 
        ADDB      XAR6,#1               ; [CPU_ALU] |172| 
        ADDB      ACC,#1                ; [CPU_ALU] |172| 
        MOVL      XT,ACC                ; [CPU_FPU] |172| 
        IMPYXUL   P,XT,XAR6             ; [CPU_ALU] |172| 
        MOVL      *-SP[4],P             ; [CPU_ALU] |172| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 182,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |182| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 184,column 17,is_stmt,isa 0
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |184| 
        MOV32     R3H,*-SP[4]           ; [CPU_FPU] |184| 
        ZERO      R2                    ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |184| 
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |184| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 188,column 9,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |188| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |188| 
        MOVB      AH,#0                 ; [CPU_ALU] |188| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |188| 
        TEST      ACC                   ; [CPU_ALU] |188| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 191,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |191| 
        MOVB      AH,#0                 ; [CPU_ALU] |191| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |191| 
        LSL       ACC,1                 ; [CPU_ALU] |191| 
        MOV32     R3H,ACC               ; [CPU_FPU] |191| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |191| 
        ZERO      R2                    ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |191| 
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |191| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 196,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |196| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 197,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:SysCtl_getAuxClock"
	.clink
	.global	||SysCtl_getAuxClock||

$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("SysCtl_getAuxClock")
	.dwattr $C$DW$80, DW_AT_low_pc(||SysCtl_getAuxClock||)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_linkage_name("SysCtl_getAuxClock")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$80, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$80, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 205,column 1,is_stmt,address ||SysCtl_getAuxClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getAuxClock||
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("clockInHz")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getAuxClock            FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getAuxClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("clockInHz")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -2]

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("temp")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -4]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("oscSource")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -6]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("clockOut")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -8]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("divider")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -10]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 211,column 5,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |211| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |211| 
        MOVB      AH,#0                 ; [CPU_ALU] |211| 
        ANDB      AL,#0x03              ; [CPU_ALU] |211| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |211| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 218,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |218| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |218| 
        ; branchcc occurs ; [] |218| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 223,column 9,is_stmt,isa 0
        MOV       AL,#38528             ; [CPU_ALU] |223| 
        MOV       AH,#152               ; [CPU_ALU] |223| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |223| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 227,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |227| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |227| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 233,column 5,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |233| 
        MOVB      XAR6,#3               ; [CPU_ALU] |233| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |233| 
        MOVB      AH,#0                 ; [CPU_ALU] |233| 
        ANDB      AL,#0x03              ; [CPU_ALU] |233| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |233| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |233| 
        ; branchcc occurs ; [] |233| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 239,column 9,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |239| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |239| 
        MOVB      AH,#0                 ; [CPU_ALU] |239| 
        ANDB      AL,#0xff              ; [CPU_ALU] |239| 
        MOVL      XT,ACC                ; [CPU_ALU] |239| 
        IMPYXUL   P,XT,*-SP[8]          ; [CPU_ALU] |239| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |239| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 246,column 9,is_stmt,isa 0
        MOV       T,#24                 ; [CPU_ALU] |246| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |246| 
        ANDB      AL,#0                 ; [CPU_ALU] |246| 
        AND       AH,#7936              ; [CPU_ALU] |246| 
        LSRL      ACC,T                 ; [CPU_ALU] |246| 
        MOVL      P,*+XAR4[0]           ; [CPU_FPU] |246| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |246| 
        AND       PL,#0                 ; [CPU_ALU] |246| 
        AND       PH,#31                ; [CPU_ALU] |246| 
        MOVL      ACC,P                 ; [CPU_ALU] |246| 
        MOVU      ACC,AH                ; [CPU_ALU] |246| 
        ADDB      XAR6,#1               ; [CPU_ALU] |246| 
        ADDB      ACC,#1                ; [CPU_ALU] |246| 
        MOVL      XT,ACC                ; [CPU_FPU] |246| 
        IMPYXUL   P,XT,XAR6             ; [CPU_ALU] |246| 
        MOVL      *-SP[4],P             ; [CPU_ALU] |246| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 256,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |256| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |256| 
        ; branchcc occurs ; [] |256| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 258,column 13,is_stmt,isa 0
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |258| 
        MOV32     R3H,*-SP[4]           ; [CPU_FPU] |258| 
        ZERO      R2                    ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |258| 
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |258| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 265,column 5,is_stmt,isa 0
        MOVL      XAR4,#381476          ; [CPU_ARAU] |265| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |265| 
        MOVB      AH,#0                 ; [CPU_ALU] |265| 
        ANDB      AL,#0x07              ; [CPU_ALU] |265| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |265| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 268,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |268| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |268| 
        B         ||$C$L21||,LOS        ; [CPU_ALU] |268| 
        ; branchcc occurs ; [] |268| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 270,column 9,is_stmt,isa 0
        MOV       T,*-SP[10]            ; [CPU_ALU] |270| 
        MOVB      AL,#1                 ; [CPU_ALU] |270| 
        LSL       AL,T                  ; [CPU_ALU] |270| 
        MOVU      ACC,AL                ; [CPU_ALU] |270| 
        MOV32     R3H,ACC               ; [CPU_FPU] |270| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |270| 
        ZERO      R2                    ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |270| 
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |270| 
        MOV32     ACC,R1H               ; [CPU_FPU] |270| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 272,column 10,is_stmt,isa 0
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |272| 
        B         ||$C$L22||,HIS        ; [CPU_ALU] |272| 
        ; branchcc occurs ; [] |272| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 274,column 9,is_stmt,isa 0
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |274| 
        MOV32     R3H,*-SP[10]          ; [CPU_FPU] |274| 
        ZERO      R2                    ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |274| 
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |274| 
        MOV32     ACC,R1H               ; [CPU_FPU] |274| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 278,column 9,is_stmt,isa 0
        MOVIZ     R3H,#0                ; [CPU_FPU] |278| 
        MOV32     R1H,*-SP[8]           ; [CPU_FPU] |278| 
        ZERO      R2                    ; [CPU_FPU] |278| 
        MOVXI     R3H,#3                ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |278| 
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |278| 
        MOV32     ACC,R1H               ; [CPU_FPU] |278| 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 281,column 5,is_stmt,isa 0
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 282,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$80, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text:SysCtl_setClock"
	.clink
	.global	||SysCtl_setClock||

$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("SysCtl_setClock")
	.dwattr $C$DW$88, DW_AT_low_pc(||SysCtl_setClock||)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_linkage_name("SysCtl_setClock")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$88, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0x122)
	.dwattr $C$DW$88, DW_AT_decl_column(0x01)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(-24)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 291,column 1,is_stmt,address ||SysCtl_setClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_setClock||
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("config")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_setClock               FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 17 Auto,  0 SOE     *
;***************************************************************

||SysCtl_setClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#22                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -24
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("config")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -6]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("oscSource")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -8]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("pllLockStatus")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -10]

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("pllMult")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -12]

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("mult")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -14]

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("refdiv")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -16]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("timeout")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -18]

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("divSel")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg20 -19]

$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("pllen")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg20 -20]

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("status")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -21]

        MOVL      *-SP[6],ACC           ; [CPU_ALU] |291| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 295,column 17,is_stmt,isa 0
        MOV       *-SP[21],#0           ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 305,column 5,is_stmt,isa 0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #||SysCtl_isMCDClockFailureDetected|| ; [CPU_ALU] |305| 
        ; call occurs [#||SysCtl_isMCDClockFailureDetected||] ; [] |305| 
        CMPB      AL,#0                 ; [CPU_ALU] |305| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |305| 
        ; branchcc occurs ; [] |305| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 311,column 9,is_stmt,isa 0
        MOV       *-SP[21],#0           ; [CPU_ALU] |311| 
        B         ||$C$L37||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 318,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |318| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 319,column 9,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |319| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |319| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 321,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |321| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 326,column 9,is_stmt,isa 0
        MOVB      ACC,#23               ; [CPU_ALU] |326| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |326| 
        ; call occurs [#||SysCtl_delay||] ; [] |326| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 331,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |331| 
        MOVB      AH,#0                 ; [CPU_ALU] |331| 
        ANDB      AL,#0xff              ; [CPU_ALU] |331| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |331| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 334,column 9,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |334| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |334| 
        ANDB      AL,#0                 ; [CPU_ALU] |334| 
        ANDB      AH,#124               ; [CPU_ALU] |334| 
        LSRL      ACC,T                 ; [CPU_ALU] |334| 
        MOV       T,#24                 ; [CPU_FPU] |334| 
        LSLL      ACC,T                 ; [CPU_ALU] |334| 
        OR        *-SP[12],AL           ; [CPU_ALU] |334| 
        OR        *-SP[11],AH           ; [CPU_ALU] |334| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 338,column 9,is_stmt,isa 0
        MOV       T,#23                 ; [CPU_ALU] |338| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |338| 
        ANDB      AL,#0                 ; [CPU_ALU] |338| 
        AND       AH,#3968              ; [CPU_ALU] |338| 
        LSRL      ACC,T                 ; [CPU_ALU] |338| 
        LSL       ACC,16                ; [CPU_ALU] |338| 
        OR        *-SP[12],AL           ; [CPU_ALU] |338| 
        OR        *-SP[11],AH           ; [CPU_ALU] |338| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 345,column 9,is_stmt,isa 0
        MOVL      XAR4,#381460          ; [CPU_ARAU] |345| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        ANDB      AL,#0xff              ; [CPU_ALU] |345| 
        MOVL      *-SP[14],ACC          ; [CPU_ALU] |345| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 349,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |349| 
        ANDB      AL,#0                 ; [CPU_ALU] |349| 
        AND       AH,#7936              ; [CPU_ALU] |349| 
        OR        *-SP[14],AL           ; [CPU_FPU] |349| 
        OR        *-SP[13],AH           ; [CPU_ALU] |349| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 352,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |352| 
        ANDB      AL,#0                 ; [CPU_ALU] |352| 
        ANDB      AH,#31                ; [CPU_ALU] |352| 
        OR        *-SP[14],AL           ; [CPU_FPU] |352| 
        OR        *-SP[13],AH           ; [CPU_ALU] |352| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 358,column 9,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |358| 
        MOV       PH,#32768             ; [CPU_ALU] |358| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |358| 
        ANDB      AL,#0                 ; [CPU_ALU] |358| 
        AND       AH,#49152             ; [CPU_ALU] |358| 
        CMPL      ACC,P                 ; [CPU_ALU] |358| 
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |358| 
        ; branchcc occurs ; [] |358| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 360,column 13,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |360| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |360| 
        ANDB      AL,#0x01              ; [CPU_ALU] |360| 
        MOV       *-SP[20],AL           ; [CPU_ALU] |360| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 367,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |367| 
        CMPL      ACC,*-SP[14]          ; [CPU_ALU] |367| 
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |367| 
        ; branchcc occurs ; [] |367| 
        MOV       AL,*-SP[20]           ; [CPU_ALU] |367| 
        CMPB      AL,#1                 ; [CPU_ALU] |367| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |367| 
        ; branchcc occurs ; [] |367| 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 372,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |372| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 373,column 17,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |373| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 375,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |375| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 381,column 17,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |381| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |381| 
        ; call occurs [#||SysCtl_delay||] ; [] |381| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 386,column 17,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |386| 
        ANDB      AL,#0                 ; [CPU_ALU] |386| 
        ANDB      AH,#3                 ; [CPU_ALU] |386| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |386| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 387,column 17,is_stmt,isa 0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("SysCtl_selectOscSource")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #||SysCtl_selectOscSource|| ; [CPU_ALU] |387| 
        ; call occurs [#||SysCtl_selectOscSource||] ; [] |387| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 392,column 17,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |392| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |392| 
        ; call occurs [#||SysCtl_delay||] ; [] |392| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 397,column 17,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |397| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("SysCtl_setPLLSysClk")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #||SysCtl_setPLLSysClk|| ; [CPU_ALU] |397| 
        ; call occurs [#||SysCtl_setPLLSysClk||] ; [] |397| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 402,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |402| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 403,column 17,is_stmt,isa 0
        MOVL      XAR4,#381460          ; [CPU_ARAU] |403| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |403| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |403| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |403| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 408,column 17,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |408| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |408| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 417,column 17,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |417| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |417| 
        ANDB      AL,#0                 ; [CPU_ALU] |417| 
        ANDB      AH,#124               ; [CPU_ALU] |417| 
        LSRL      ACC,T                 ; [CPU_ALU] |417| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |417| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 420,column 17,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |420| 
        ADDL      ACC,*-SP[16]          ; [CPU_ALU] |420| 
        LSL       ACC,10                ; [CPU_ALU] |420| 
        MOVL      *-SP[18],ACC          ; [CPU_ALU] |420| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 421,column 17,is_stmt,isa 0
        MOVL      XAR4,#381462          ; [CPU_ARAU] |421| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |421| 
        ANDB      AL,#0x01              ; [CPU_ALU] |421| 
        MOVU      ACC,AL                ; [CPU_ALU] |421| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |421| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 424,column 17,is_stmt,isa 0
        B         ||$C$L27||,UNC        ; [CPU_ALU] |424| 
        ; branch occurs ; [] |424| 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 426,column 21,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |426| 
        ANDB      AL,#0x01              ; [CPU_ALU] |426| 
        MOVU      ACC,AL                ; [CPU_ALU] |426| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |426| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 429,column 21,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |429| 
        SUBL      *-SP[18],ACC          ; [CPU_ALU] |429| 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 424,column 23,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |424| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |424| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |424| 
        ; branchcc occurs ; [] |424| 
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |424| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |424| 
        ; branchcc occurs ; [] |424| 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 431,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |431| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 436,column 17,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |436| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |436| 
        MOVB      XAR4,#1               ; [CPU_ALU] |436| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |436| 
        ANDB      AL,#255               ; [CPU_ALU] |436| 
        AND       AH,#4092              ; [CPU_ALU] |436| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |436| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |436| 
        ANDB      AL,#0                 ; [CPU_ALU] |436| 
        AND       AH,#12288             ; [CPU_ALU] |436| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("SysCtl_isPLLValid")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #||SysCtl_isPLLValid|| ; [CPU_ALU] |436| 
        ; call occurs [#||SysCtl_isPLLValid||] ; [] |436| 
        MOV       *-SP[21],AL           ; [CPU_ALU] |436| 
        B         ||$C$L32||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 449,column 17,is_stmt,isa 0
        MOVB      *-SP[21],#1,UNC       ; [CPU_ALU] |449| 
        B         ||$C$L32||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 452,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |452| 
        ANDB      AL,#0                 ; [CPU_ALU] |452| 
        AND       AH,#49152             ; [CPU_ALU] |452| 
        TEST      ACC                   ; [CPU_ALU] |452| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |452| 
        ; branchcc occurs ; [] |452| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 457,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |457| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 458,column 13,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |458| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |458| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 460,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |460| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 466,column 13,is_stmt,isa 0
        MOVB      *-SP[21],#1,UNC       ; [CPU_ALU] |466| 
        B         ||$C$L32||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 474,column 13,is_stmt,isa 0
        MOVB      *-SP[21],#1,UNC       ; [CPU_ALU] |474| 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 482,column 9,is_stmt,isa 0
        MOV       AL,*-SP[21]           ; [CPU_ALU] |482| 
        B         ||$C$L36||,EQ         ; [CPU_ALU] |482| 
        ; branchcc occurs ; [] |482| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 488,column 13,is_stmt,isa 0
        AND       AL,*-SP[6],#0x3f00    ; [CPU_ALU] |488| 
        LSR       AL,8                  ; [CPU_ALU] |488| 
        MOV       *-SP[19],AL           ; [CPU_ALU] |488| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 490,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |490| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 491,column 13,is_stmt,isa 0
        CMPB      AL,#63                ; [CPU_ALU] |491| 
        B         ||$C$L33||,EQ         ; [CPU_ALU] |491| 
        ; branchcc occurs ; [] |491| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 493,column 17,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |493| 
        MOV       AH,*-SP[19]           ; [CPU_ALU] |493| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |493| 
        ADDB      AH,#1                 ; [CPU_ALU] |493| 
        OR        AH,AL                 ; [CPU_ALU] |493| 
        MOV       *+XAR4[0],AH          ; [CPU_ALU] |493| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 500,column 17,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |500| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |500| 
        OR        AL,*-SP[19]           ; [CPU_ALU] |500| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |500| 
||$C$L34||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 505,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |505| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 510,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |510| 
        MOV       PL,#0                 ; [CPU_ALU] |510| 
        MOV       PH,#32768             ; [CPU_ALU] |510| 
        ANDB      AL,#0                 ; [CPU_ALU] |510| 
        AND       AH,#32768             ; [CPU_ALU] |510| 
        CMPL      ACC,P                 ; [CPU_ALU] |510| 
        B         ||$C$L35||,NEQ        ; [CPU_ALU] |510| 
        ; branchcc occurs ; [] |510| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 516,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |516| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 517,column 17,is_stmt,isa 0
        MOVL      XAR4,#381454          ; [CPU_ARAU] |517| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |517| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 519,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |519| 
||$C$L35||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 527,column 13,is_stmt,isa 0
        MOVB      ACC,#40               ; [CPU_ALU] |527| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |527| 
        ; call occurs [#||SysCtl_delay||] ; [] |527| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 532,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |532| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 533,column 13,is_stmt,isa 0
        MOVL      XAR4,#381474          ; [CPU_ARAU] |533| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |533| 
        OR        AL,*-SP[19]           ; [CPU_ALU] |533| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |533| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 536,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |536| 
        B         ||$C$L37||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L36||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 539,column 13,is_stmt,isa 0
 ESTOP0
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 542,column 5,is_stmt,isa 0
        MOV       AL,*-SP[21]           ; [CPU_ALU] |542| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 543,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#22                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$88, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x21f)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text:SysCtl_setAuxClock"
	.clink
	.global	||SysCtl_setAuxClock||

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("SysCtl_setAuxClock")
	.dwattr $C$DW$109, DW_AT_low_pc(||SysCtl_setAuxClock||)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_linkage_name("SysCtl_setAuxClock")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0x225)
	.dwattr $C$DW$109, DW_AT_decl_column(0x06)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 550,column 1,is_stmt,address ||SysCtl_setAuxClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_setAuxClock||
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("config")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_setAuxClock            FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  9 Auto,  0 SOE     *
;***************************************************************

||SysCtl_setAuxClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#14                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("config")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -6]

$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("pllMult")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg20 -8]

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("mult")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg20 -10]

$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("started")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg20 -11]

$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("pllen")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg20 -12]

$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("status")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -13]

        MOVL      *-SP[6],ACC           ; [CPU_ALU] |550| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 551,column 22,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |551| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |551| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 552,column 22,is_stmt,isa 0
        MOV       *-SP[11],#0           ; [CPU_ALU] |552| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 553,column 17,is_stmt,isa 0
        MOV       *-SP[13],#0           ; [CPU_ALU] |553| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 563,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |563| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 564,column 5,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |564| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |564| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 569,column 5,is_stmt,isa 0
        MOVB      ACC,#23               ; [CPU_ALU] |569| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |569| 
        ; call occurs [#||SysCtl_delay||] ; [] |569| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 570,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |570| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 575,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |575| 
        MOVB      AH,#0                 ; [CPU_ALU] |575| 
        ANDB      AL,#0xff              ; [CPU_ALU] |575| 
        OR        *-SP[8],AL            ; [CPU_ALU] |575| 
        OR        *-SP[7],AH            ; [CPU_ALU] |575| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 578,column 5,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |578| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |578| 
        ANDB      AL,#0                 ; [CPU_ALU] |578| 
        ANDB      AH,#124               ; [CPU_ALU] |578| 
        LSRL      ACC,T                 ; [CPU_ALU] |578| 
        MOV       T,#24                 ; [CPU_FPU] |578| 
        LSLL      ACC,T                 ; [CPU_ALU] |578| 
        OR        *-SP[8],AL            ; [CPU_ALU] |578| 
        OR        *-SP[7],AH            ; [CPU_ALU] |578| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 581,column 5,is_stmt,isa 0
        MOV       T,#23                 ; [CPU_ALU] |581| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |581| 
        ANDB      AL,#0                 ; [CPU_ALU] |581| 
        AND       AH,#3968              ; [CPU_ALU] |581| 
        LSRL      ACC,T                 ; [CPU_ALU] |581| 
        LSL       ACC,16                ; [CPU_ALU] |581| 
        OR        *-SP[8],AL            ; [CPU_ALU] |581| 
        OR        *-SP[7],AH            ; [CPU_ALU] |581| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 587,column 5,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |587| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |587| 
        MOVB      AH,#0                 ; [CPU_ALU] |587| 
        ANDB      AL,#0xff              ; [CPU_ALU] |587| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |587| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 591,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |591| 
        ANDB      AL,#0                 ; [CPU_ALU] |591| 
        AND       AH,#7936              ; [CPU_ALU] |591| 
        OR        *-SP[10],AL           ; [CPU_FPU] |591| 
        OR        *-SP[9],AH            ; [CPU_ALU] |591| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 594,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |594| 
        ANDB      AL,#0                 ; [CPU_ALU] |594| 
        ANDB      AH,#31                ; [CPU_ALU] |594| 
        OR        *-SP[10],AL           ; [CPU_FPU] |594| 
        OR        *-SP[9],AH            ; [CPU_ALU] |594| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 600,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |600| 
        MOV       PH,#32768             ; [CPU_ALU] |600| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |600| 
        ANDB      AL,#0                 ; [CPU_ALU] |600| 
        AND       AH,#32768             ; [CPU_ALU] |600| 
        CMPL      ACC,P                 ; [CPU_ALU] |600| 
        B         ||$C$L49||,NEQ        ; [CPU_ALU] |600| 
        ; branchcc occurs ; [] |600| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 602,column 9,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |602| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |602| 
        ANDB      AL,#0x01              ; [CPU_ALU] |602| 
        MOV       *-SP[12],AL           ; [CPU_ALU] |602| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 609,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |609| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |609| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |609| 
        ; branchcc occurs ; [] |609| 
        MOV       AL,*-SP[12]           ; [CPU_ALU] |609| 
        CMPB      AL,#1                 ; [CPU_ALU] |609| 
        B         ||$C$L48||,EQ         ; [CPU_ALU] |609| 
        ; branchcc occurs ; [] |609| 
||$C$L38||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 612,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |612| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 617,column 13,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |617| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 623,column 13,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |623| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |623| 
        ; call occurs [#||SysCtl_delay||] ; [] |623| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 628,column 13,is_stmt,isa 0
        B         ||$C$L43||,UNC        ; [CPU_ALU] |628| 
        ; branch occurs ; [] |628| 
||$C$L39||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 634,column 21,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |634| 
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |634| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 640,column 21,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |640| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |640| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 642,column 21,is_stmt,isa 0
        B         ||$C$L44||,UNC        ; [CPU_ALU] |642| 
        ; branch occurs ; [] |642| 
||$C$L40||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 648,column 21,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |648| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |648| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 654,column 21,is_stmt,isa 0
        MOVL      XAR4,#381490          ; [CPU_ARAU] |654| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |654| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 659,column 21,is_stmt,isa 0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #||SysCtl_pollX1Counter|| ; [CPU_ALU] |659| 
        ; call occurs [#||SysCtl_pollX1Counter||] ; [] |659| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 664,column 21,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |664| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |664| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 666,column 21,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |666| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 668,column 21,is_stmt,isa 0
        B         ||$C$L44||,UNC        ; [CPU_ALU] |668| 
        ; branch occurs ; [] |668| 
||$C$L41||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 674,column 21,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |674| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |674| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 680,column 21,is_stmt,isa 0
        MOVL      XAR4,#381490          ; [CPU_ARAU] |680| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |680| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 685,column 21,is_stmt,isa 0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #||SysCtl_pollX1Counter|| ; [CPU_ALU] |685| 
        ; call occurs [#||SysCtl_pollX1Counter||] ; [] |685| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 690,column 21,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |690| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |690| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 692,column 21,is_stmt,isa 0
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |692| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 694,column 21,is_stmt,isa 0
        B         ||$C$L44||,UNC        ; [CPU_ALU] |694| 
        ; branch occurs ; [] |694| 
||$C$L42||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 700,column 21,is_stmt,isa 0
        MOVL      XAR4,#381450          ; [CPU_ARAU] |700| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |700| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 702,column 21,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |702| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 705,column 21,is_stmt,isa 0
        B         ||$C$L44||,UNC        ; [CPU_ALU] |705| 
        ; branch occurs ; [] |705| 
||$C$L43||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 628,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |628| 
        ANDB      AL,#0                 ; [CPU_ALU] |628| 
        ANDB      AH,#3                 ; [CPU_ALU] |628| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |628| 
        TEST      ACC                   ; [CPU_ALU] |628| 
        B         ||$C$L39||,EQ         ; [CPU_ALU] |628| 
        ; branchcc occurs ; [] |628| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |628| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |628| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |628| 
        B         ||$C$L40||,EQ         ; [CPU_ALU] |628| 
        ; branchcc occurs ; [] |628| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |628| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |628| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |628| 
        B         ||$C$L42||,EQ         ; [CPU_ALU] |628| 
        ; branchcc occurs ; [] |628| 
        MOVL      XAR4,#196608          ; [CPU_ARAU] |628| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |628| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |628| 
        B         ||$C$L41||,EQ         ; [CPU_ALU] |628| 
        ; branchcc occurs ; [] |628| 
||$C$L44||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 716,column 13,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |716| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |716| 
        ; call occurs [#||SysCtl_delay||] ; [] |716| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 722,column 13,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |722| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |722| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |722| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |722| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 727,column 13,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |727| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |727| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 729,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |729| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 735,column 13,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |735| 
||$C$L45||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 735,column 19,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |735| 
        ANDB      AL,#0x01              ; [CPU_ALU] |735| 
        CMPB      AL,#1                 ; [CPU_ALU] |735| 
        B         ||$C$L45||,NEQ        ; [CPU_ALU] |735| 
        ; branchcc occurs ; [] |735| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 747,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |747| 
        ANDB      AL,#0                 ; [CPU_ALU] |747| 
        ANDB      AH,#3                 ; [CPU_ALU] |747| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |747| 
        MOVB      XAR4,#0               ; [CPU_ALU] |747| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |747| 
        ANDB      AL,#255               ; [CPU_ALU] |747| 
        AND       AH,#4092              ; [CPU_ALU] |747| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |747| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |747| 
        ANDB      AL,#0                 ; [CPU_ALU] |747| 
        AND       AH,#12288             ; [CPU_ALU] |747| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("SysCtl_isPLLValid")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #||SysCtl_isPLLValid|| ; [CPU_ALU] |747| 
        ; call occurs [#||SysCtl_isPLLValid||] ; [] |747| 
        MOV       *-SP[13],AL           ; [CPU_ALU] |747| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 756,column 13,is_stmt,isa 0
        MOV       AL,*-SP[13]           ; [CPU_ALU] |756| 
        B         ||$C$L46||,EQ         ; [CPU_ALU] |756| 
        ; branchcc occurs ; [] |756| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 761,column 17,is_stmt,isa 0
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |761| 
        B         ||$C$L47||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L46||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 764,column 17,is_stmt,isa 0
 ESTOP0
||$C$L47||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 769,column 13,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |769| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 770,column 13,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |770| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |770| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 772,column 13,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |772| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |772| 
        ; call occurs [#||SysCtl_delay||] ; [] |772| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 774,column 13,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |774| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 776,column 13,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |776| 
        B         ||$C$L50||,NEQ        ; [CPU_ALU] |776| 
        ; branchcc occurs ; [] |776| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 782,column 17,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |782| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 783,column 17,is_stmt,isa 0
        MOVL      XAR4,#381470          ; [CPU_ARAU] |783| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |783| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 784,column 17,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |784| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 790,column 17,is_stmt,isa 0
 ESTOP0
        B         ||$C$L50||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L48||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 799,column 11,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |799| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 800,column 11,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |800| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 802,column 11,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |802| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |802| 
        ; call occurs [#||SysCtl_delay||] ; [] |802| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 803,column 11,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |803| 
        B         ||$C$L50||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L49||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 812,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |812| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 813,column 9,is_stmt,isa 0
        MOVL      XAR4,#381464          ; [CPU_ARAU] |813| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |813| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 815,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |815| 
||$C$L50||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 821,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |821| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 822,column 5,is_stmt,isa 0
        AND       AL,*-SP[6],#0x3f00    ; [CPU_ALU] |822| 
        MOVL      XAR4,#381476          ; [CPU_ARAU] |822| 
        LSR       AL,8                  ; [CPU_ALU] |822| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |822| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 824,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |824| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 826,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#14                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x33a)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text:SysCtl_selectXTAL"
	.clink
	.global	||SysCtl_selectXTAL||

$C$DW$126	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$126, DW_AT_name("SysCtl_selectXTAL")
	.dwattr $C$DW$126, DW_AT_low_pc(||SysCtl_selectXTAL||)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_linkage_name("SysCtl_selectXTAL")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$126, DW_AT_decl_line(0x342)
	.dwattr $C$DW$126, DW_AT_decl_column(0x01)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 835,column 1,is_stmt,address ||SysCtl_selectXTAL||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_selectXTAL||

;***************************************************************
;* FNAME: SysCtl_selectXTAL             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_selectXTAL||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 839,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |839| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 840,column 5,is_stmt,isa 0
        MOVL      XAR4,#381490          ; [CPU_ARAU] |840| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |840| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 841,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |841| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 842,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |842| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 847,column 5,is_stmt,isa 0
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||SysCtl_pollX1Counter|| ; [CPU_ALU] |847| 
        ; call occurs [#||SysCtl_pollX1Counter||] ; [] |847| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 852,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |852| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 853,column 5,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |853| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |853| 
        ORB       AL,#0x01              ; [CPU_ALU] |853| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |853| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 857,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |857| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 863,column 5,is_stmt,isa 0
        B         ||$C$L52||,UNC        ; [CPU_ALU] |863| 
        ; branch occurs ; [] |863| 
||$C$L51||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 868,column 9,is_stmt,isa 0
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("SysCtl_resetMCD")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #||SysCtl_resetMCD||  ; [CPU_ALU] |868| 
        ; call occurs [#||SysCtl_resetMCD||] ; [] |868| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 873,column 9,is_stmt,isa 0
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #||SysCtl_pollX1Counter|| ; [CPU_ALU] |873| 
        ; call occurs [#||SysCtl_pollX1Counter||] ; [] |873| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 878,column 9,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |878| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 879,column 9,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |879| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |879| 
        ORB       AL,#0x01              ; [CPU_ALU] |879| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |879| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 883,column 9,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |883| 
||$C$L52||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 884,column 5,is_stmt,isa 0
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #||SysCtl_isMCDClockFailureDetected|| ; [CPU_ALU] |884| 
        ; call occurs [#||SysCtl_isMCDClockFailureDetected||] ; [] |884| 
        CMPB      AL,#0                 ; [CPU_ALU] |884| 
        B         ||$C$L51||,NEQ        ; [CPU_ALU] |884| 
        ; branchcc occurs ; [] |884| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 885,column 1,is_stmt,isa 0
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$126, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x375)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text:SysCtl_selectXTALSingleEnded"
	.clink
	.global	||SysCtl_selectXTALSingleEnded||

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("SysCtl_selectXTALSingleEnded")
	.dwattr $C$DW$132, DW_AT_low_pc(||SysCtl_selectXTALSingleEnded||)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_linkage_name("SysCtl_selectXTALSingleEnded")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$132, DW_AT_decl_line(0x37d)
	.dwattr $C$DW$132, DW_AT_decl_column(0x01)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 894,column 1,is_stmt,address ||SysCtl_selectXTALSingleEnded||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_selectXTALSingleEnded||

;***************************************************************
;* FNAME: SysCtl_selectXTALSingleEnded  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_selectXTALSingleEnded||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 898,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |898| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 899,column 5,is_stmt,isa 0
        MOVL      XAR4,#381490          ; [CPU_ARAU] |899| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |899| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 900,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |900| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 901,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |901| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 906,column 5,is_stmt,isa 0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("SysCtl_pollX1Counter")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #||SysCtl_pollX1Counter|| ; [CPU_ALU] |906| 
        ; call occurs [#||SysCtl_pollX1Counter||] ; [] |906| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 911,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |911| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 912,column 5,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |912| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |912| 
        ORB       AL,#0x01              ; [CPU_ALU] |912| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |912| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 916,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |916| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 922,column 5,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        B         ||$C$L54||,UNC        ; [CPU_ALU] |922| 
        ; branch occurs ; [] |922| 
||$C$L53||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 924,column 9,is_stmt,isa 0
 ESTOP0
||$C$L54||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 925,column 5,is_stmt,isa 0
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #||SysCtl_isMCDClockFailureDetected|| ; [CPU_ALU] |925| 
        ; call occurs [#||SysCtl_isMCDClockFailureDetected||] ; [] |925| 
        CMPB      AL,#0                 ; [CPU_ALU] |925| 
        B         ||$C$L53||,NEQ        ; [CPU_ALU] |925| 
        ; branchcc occurs ; [] |925| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 926,column 1,is_stmt,isa 0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x39e)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text:SysCtl_selectOscSource"
	.clink
	.global	||SysCtl_selectOscSource||

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("SysCtl_selectOscSource")
	.dwattr $C$DW$136, DW_AT_low_pc(||SysCtl_selectOscSource||)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_linkage_name("SysCtl_selectOscSource")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x3a6)
	.dwattr $C$DW$136, DW_AT_decl_column(0x01)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 935,column 1,is_stmt,address ||SysCtl_selectOscSource||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_selectOscSource||
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("oscSource")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_selectOscSource        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SysCtl_selectOscSource||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("oscSource")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |935| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 944,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |944| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 945,column 5,is_stmt,isa 0
        B         ||$C$L59||,UNC        ; [CPU_ALU] |945| 
        ; branch occurs ; [] |945| 
||$C$L55||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 951,column 13,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |951| 
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |951| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 957,column 13,is_stmt,isa 0
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |957| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 959,column 13,is_stmt,isa 0
        B         ||$C$L60||,UNC        ; [CPU_ALU] |959| 
        ; branch occurs ; [] |959| 
||$C$L56||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 965,column 13,is_stmt,isa 0
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("SysCtl_selectXTAL")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #||SysCtl_selectXTAL|| ; [CPU_ALU] |965| 
        ; call occurs [#||SysCtl_selectXTAL||] ; [] |965| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 966,column 13,is_stmt,isa 0
        B         ||$C$L60||,UNC        ; [CPU_ALU] |966| 
        ; branch occurs ; [] |966| 
||$C$L57||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 972,column 13,is_stmt,isa 0
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("SysCtl_selectXTALSingleEnded")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #||SysCtl_selectXTALSingleEnded|| ; [CPU_ALU] |972| 
        ; call occurs [#||SysCtl_selectXTALSingleEnded||] ; [] |972| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 973,column 13,is_stmt,isa 0
        B         ||$C$L60||,UNC        ; [CPU_ALU] |973| 
        ; branch occurs ; [] |973| 
||$C$L58||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 979,column 13,is_stmt,isa 0
        MOVL      XAR4,#381448          ; [CPU_ARAU] |979| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |979| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 981,column 13,is_stmt,isa 0
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |981| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 983,column 13,is_stmt,isa 0
        B         ||$C$L60||,UNC        ; [CPU_ALU] |983| 
        ; branch occurs ; [] |983| 
||$C$L59||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 945,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |945| 
        MOVL      XAR6,*-SP[2]          ; [CPU_FPU] |945| 
        B         ||$C$L55||,EQ         ; [CPU_ALU] |945| 
        ; branchcc occurs ; [] |945| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |945| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |945| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |945| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |945| 
        ; branchcc occurs ; [] |945| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |945| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |945| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |945| 
        B         ||$C$L58||,EQ         ; [CPU_ALU] |945| 
        ; branchcc occurs ; [] |945| 
        MOVL      XAR4,#196608          ; [CPU_ARAU] |945| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |945| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |945| 
        B         ||$C$L57||,EQ         ; [CPU_ALU] |945| 
        ; branchcc occurs ; [] |945| 
||$C$L60||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 991,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |991| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 992,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x3e0)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text:SysCtl_getLowSpeedClock"
	.clink
	.global	||SysCtl_getLowSpeedClock||

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("SysCtl_getLowSpeedClock")
	.dwattr $C$DW$142, DW_AT_low_pc(||SysCtl_getLowSpeedClock||)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_linkage_name("SysCtl_getLowSpeedClock")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$142, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$142, DW_AT_decl_line(0x3e8)
	.dwattr $C$DW$142, DW_AT_decl_column(0x01)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1001,column 1,is_stmt,address ||SysCtl_getLowSpeedClock||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getLowSpeedClock||
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("clockInHz")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getLowSpeedClock       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getLowSpeedClock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("clockInHz")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg20 -2]

$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("clockOut")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1001| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1007,column 5,is_stmt,isa 0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("SysCtl_getClock")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #||SysCtl_getClock||  ; [CPU_ALU] |1007| 
        ; call occurs [#||SysCtl_getClock||] ; [] |1007| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1007| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1012,column 5,is_stmt,isa 0
        MOVL      XAR4,#381484          ; [CPU_ARAU] |1012| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1012| 
        MOVB      AH,#0                 ; [CPU_ALU] |1012| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1012| 
        TEST      ACC                   ; [CPU_ALU] |1012| 
        B         ||$C$L61||,EQ         ; [CPU_ALU] |1012| 
        ; branchcc occurs ; [] |1012| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1015,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1015| 
        MOVB      AH,#0                 ; [CPU_ALU] |1015| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1015| 
        LSL       ACC,1                 ; [CPU_ALU] |1015| 
        MOV32     R3H,ACC               ; [CPU_FPU] |1015| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R1H,*-SP[4]           ; [CPU_FPU] |1015| 
        ZERO      R2                    ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1015| 
        MOV32     *-SP[4],R1H           ; [CPU_FPU] |1015| 
||$C$L61||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1019,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1019| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1020,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x3fc)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text:SysCtl_getDeviceParametric"
	.clink
	.global	||SysCtl_getDeviceParametric||

$C$DW$148	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$148, DW_AT_name("SysCtl_getDeviceParametric")
	.dwattr $C$DW$148, DW_AT_low_pc(||SysCtl_getDeviceParametric||)
	.dwattr $C$DW$148, DW_AT_high_pc(0x00)
	.dwattr $C$DW$148, DW_AT_linkage_name("SysCtl_getDeviceParametric")
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$148, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$148, DW_AT_decl_line(0x404)
	.dwattr $C$DW$148, DW_AT_decl_column(0x01)
	.dwattr $C$DW$148, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1029,column 1,is_stmt,address ||SysCtl_getDeviceParametric||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_getDeviceParametric||
$C$DW$149	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$149, DW_AT_name("parametric")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_getDeviceParametric    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SysCtl_getDeviceParametric||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("value")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_breg20 -2]

$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("parametric")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AL            ; [CPU_ALU] |1029| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1035,column 5,is_stmt,isa 0
        B         ||$C$L71||,UNC        ; [CPU_ALU] |1035| 
        ; branch occurs ; [] |1035| 
||$C$L62||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1041,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1041| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1041| 
        MOVB      AH,#0                 ; [CPU_ALU] |1041| 
        ANDB      AL,#0xc0              ; [CPU_ALU] |1041| 
        SFR       ACC,6                 ; [CPU_ALU] |1041| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1041| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1044,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1044| 
        ; branch occurs ; [] |1044| 
||$C$L63||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1050,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1050| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1050| 
        AND       AL,#1792              ; [CPU_ALU] |1050| 
        ANDB      AH,#0                 ; [CPU_ALU] |1050| 
        SFR       ACC,8                 ; [CPU_ALU] |1050| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1050| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1053,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1053| 
        ; branch occurs ; [] |1053| 
||$C$L64||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1059,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1059| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1059| 
        AND       AL,#24576             ; [CPU_ALU] |1059| 
        ANDB      AH,#0                 ; [CPU_ALU] |1059| 
        SFR       ACC,13                ; [CPU_ALU] |1059| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1059| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1062,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1062| 
        ; branch occurs ; [] |1062| 
||$C$L65||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1068,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1068| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1068| 
        ANDB      AH,#255               ; [CPU_ALU] |1068| 
        MOVU      ACC,AH                ; [CPU_ALU] |1068| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1068| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1071,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1071| 
        ; branch occurs ; [] |1071| 
||$C$L66||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1076,column 13,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1076| 
        MOV       T,#28                 ; [CPU_ALU] |1076| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1076| 
        ANDB      AL,#0                 ; [CPU_ALU] |1076| 
        AND       AH,#61440             ; [CPU_ALU] |1076| 
        LSRL      ACC,T                 ; [CPU_ALU] |1076| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1076| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1079,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1079| 
        ; branch occurs ; [] |1079| 
||$C$L67||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1084,column 13,is_stmt,isa 0
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1084| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1084| 
        AND       AL,#65280             ; [CPU_ALU] |1084| 
        ANDB      AH,#0                 ; [CPU_ALU] |1084| 
        SFR       ACC,8                 ; [CPU_ALU] |1084| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1084| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1086,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1086| 
        ; branch occurs ; [] |1086| 
||$C$L68||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1092,column 13,is_stmt,isa 0
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1092| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1092| 
        ANDB      AH,#255               ; [CPU_ALU] |1092| 
        MOVU      ACC,AH                ; [CPU_ALU] |1092| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1092| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1094,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1094| 
        ; branch occurs ; [] |1094| 
||$C$L69||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1100,column 13,is_stmt,isa 0
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1100| 
        MOV       T,#24                 ; [CPU_ALU] |1100| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1100| 
        ANDB      AL,#0                 ; [CPU_ALU] |1100| 
        AND       AH,#65280             ; [CPU_ALU] |1100| 
        LSRL      ACC,T                 ; [CPU_ALU] |1100| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1103,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1103| 
        ; branch occurs ; [] |1103| 
||$C$L70||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1109,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1109| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1109| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1110,column 13,is_stmt,isa 0
        B         ||$C$L73||,UNC        ; [CPU_ALU] |1110| 
        ; branch occurs ; [] |1110| 
||$C$L71||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1035,column 5,is_stmt,isa 0
        CMPB      AL,#4                 ; [CPU_ALU] |1035| 
        B         ||$C$L72||,GT         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#4                 ; [CPU_ALU] |1035| 
        B         ||$C$L66||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#0                 ; [CPU_ALU] |1035| 
        B         ||$C$L62||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#1                 ; [CPU_ALU] |1035| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#2                 ; [CPU_ALU] |1035| 
        B         ||$C$L64||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#3                 ; [CPU_ALU] |1035| 
        B         ||$C$L65||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] |1035| 
        ; branch occurs ; [] |1035| 
||$C$L72||:    
        CMPB      AL,#5                 ; [CPU_ALU] |1035| 
        B         ||$C$L67||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#6                 ; [CPU_ALU] |1035| 
        B         ||$C$L68||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        CMPB      AL,#7                 ; [CPU_ALU] |1035| 
        B         ||$C$L69||,EQ         ; [CPU_ALU] |1035| 
        ; branchcc occurs ; [] |1035| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] |1035| 
        ; branch occurs ; [] |1035| 
||$C$L73||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1113,column 5,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |1113| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1114,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$148, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$148, DW_AT_TI_end_line(0x45a)
	.dwattr $C$DW$148, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$148

	.sect	".text:SysCtl_isPLLValid"
	.clink
	.global	||SysCtl_isPLLValid||

$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("SysCtl_isPLLValid")
	.dwattr $C$DW$153, DW_AT_low_pc(||SysCtl_isPLLValid||)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_linkage_name("SysCtl_isPLLValid")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$153, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x461)
	.dwattr $C$DW$153, DW_AT_decl_column(0x01)
	.dwattr $C$DW$153, DW_AT_TI_max_frame_size(-34)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1123,column 1,is_stmt,address ||SysCtl_isPLLValid||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_isPLLValid||
$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("base")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg0]

$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("oscSource")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_breg20 -36]

$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_name("pllclk")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg12]

$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_name("pllMultDiv")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_breg20 -38]


;***************************************************************
;* FNAME: SysCtl_isPLLValid             FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 25 Auto,  0 SOE     *
;***************************************************************

||SysCtl_isPLLValid||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#32                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -34
$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("base")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_breg20 -8]

$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("imult")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg20 -10]

$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("odiv")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_breg20 -12]

$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("refdiv")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_breg20 -14]

$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("fclk1_0ratio")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_breg20 -16]

$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("fclk0_1ratio")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_breg20 -18]

$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("total_error")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg20 -20]

$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("window")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_breg20 -22]

$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("dccCounterSeed0")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_breg20 -24]

$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("dccCounterSeed1")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -26]

$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("dccValidSeed0")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg20 -28]

$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("pllclk")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_breg20 -29]

$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("dccClkSrc0")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_breg20 -30]

$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("dccClkSrc1")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg20 -31]

        MOV       *-SP[29],AR4          ; [CPU_ALU] |1123| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |1123| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1132,column 5,is_stmt,isa 0
        B         ||$C$L78||,UNC        ; [CPU_ALU] |1132| 
        ; branch occurs ; [] |1132| 
||$C$L74||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1138,column 13,is_stmt,isa 0
        MOVB      *-SP[30],#2,UNC       ; [CPU_ALU] |1138| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1139,column 13,is_stmt,isa 0
        B         ||$C$L82||,UNC        ; [CPU_ALU] |1139| 
        ; branch occurs ; [] |1139| 
||$C$L75||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1145,column 13,is_stmt,isa 0
        MOV       *-SP[30],#0           ; [CPU_ALU] |1145| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1146,column 13,is_stmt,isa 0
        B         ||$C$L82||,UNC        ; [CPU_ALU] |1146| 
        ; branch occurs ; [] |1146| 
||$C$L76||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1151,column 13,is_stmt,isa 0
        MOVB      *-SP[30],#1,UNC       ; [CPU_ALU] |1151| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1152,column 13,is_stmt,isa 0
        B         ||$C$L82||,UNC        ; [CPU_ALU] |1152| 
        ; branch occurs ; [] |1152| 
||$C$L77||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1157,column 13,is_stmt,isa 0
        MOVB      *-SP[30],#1,UNC       ; [CPU_ALU] |1157| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1158,column 13,is_stmt,isa 0
        B         ||$C$L82||,UNC        ; [CPU_ALU] |1158| 
        ; branch occurs ; [] |1158| 
||$C$L78||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1132,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[36]         ; [CPU_ALU] |1132| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |1132| 
        B         ||$C$L74||,EQ         ; [CPU_ALU] |1132| 
        ; branchcc occurs ; [] |1132| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |1132| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1132| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1132| 
        B         ||$C$L75||,EQ         ; [CPU_ALU] |1132| 
        ; branchcc occurs ; [] |1132| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |1132| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1132| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1132| 
        B         ||$C$L76||,EQ         ; [CPU_ALU] |1132| 
        ; branchcc occurs ; [] |1132| 
        MOVL      XAR4,#196608          ; [CPU_ARAU] |1132| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1132| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1132| 
        B         ||$C$L75||,EQ         ; [CPU_ALU] |1132| 
        ; branchcc occurs ; [] |1132| 
        B         ||$C$L77||,UNC        ; [CPU_ALU] |1132| 
        ; branch occurs ; [] |1132| 
||$C$L79||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1167,column 13,is_stmt,isa 0
        MOV       *-SP[31],#0           ; [CPU_ALU] |1167| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1168,column 13,is_stmt,isa 0
        B         ||$C$L83||,UNC        ; [CPU_ALU] |1168| 
        ; branch occurs ; [] |1168| 
||$C$L80||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1173,column 13,is_stmt,isa 0
        MOVB      *-SP[31],#1,UNC       ; [CPU_ALU] |1173| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1174,column 13,is_stmt,isa 0
        B         ||$C$L83||,UNC        ; [CPU_ALU] |1174| 
        ; branch occurs ; [] |1174| 
||$C$L81||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1179,column 13,is_stmt,isa 0
        MOV       *-SP[31],#0           ; [CPU_ALU] |1179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1180,column 13,is_stmt,isa 0
        B         ||$C$L83||,UNC        ; [CPU_ALU] |1180| 
        ; branch occurs ; [] |1180| 
||$C$L82||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1161,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[29]          ; [CPU_ALU] |1161| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |1161| 
        B         ||$C$L80||,EQ         ; [CPU_ALU] |1161| 
        ; branchcc occurs ; [] |1161| 
        MOVB      ACC,#1                ; [CPU_ALU] |1161| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1161| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |1161| 
        ; branchcc occurs ; [] |1161| 
        B         ||$C$L81||,UNC        ; [CPU_ALU] |1161| 
        ; branch occurs ; [] |1161| 
||$C$L83||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1186,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1186| 
        B         ||$C$L84||,NEQ        ; [CPU_ALU] |1186| 
        ; branchcc occurs ; [] |1186| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1187,column 9,is_stmt,isa 0
        MOVL      XAR4,#386816          ; [CPU_ARAU] |1187| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |1187| 
        B         ||$C$L86||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L84||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1188,column 10,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |1188| 
        CMPL      ACC,*-SP[8]           ; [CPU_ALU] |1188| 
        B         ||$C$L85||,NEQ        ; [CPU_ALU] |1188| 
        ; branchcc occurs ; [] |1188| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1189,column 9,is_stmt,isa 0
        MOVL      XAR4,#386880          ; [CPU_ARAU] |1189| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |1189| 
        B         ||$C$L86||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L85||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1191,column 9,is_stmt,isa 0
        MOVL      XAR4,#386944          ; [CPU_ARAU] |1191| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |1191| 
||$C$L86||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1196,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[38]          ; [CPU_ALU] |1196| 
        MOVB      AH,#0                 ; [CPU_ALU] |1196| 
        ANDB      AL,#0xff              ; [CPU_ALU] |1196| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |1196| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1197,column 5,is_stmt,isa 0
        MOV       T,#23                 ; [CPU_ALU] |1197| 
        MOVL      ACC,*-SP[38]          ; [CPU_ALU] |1197| 
        ANDB      AL,#0                 ; [CPU_ALU] |1197| 
        AND       AH,#3968              ; [CPU_ALU] |1197| 
        LSRL      ACC,T                 ; [CPU_ALU] |1197| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |1197| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1198,column 5,is_stmt,isa 0
        MOV       T,#18                 ; [CPU_ALU] |1198| 
        MOVL      ACC,*-SP[38]          ; [CPU_ALU] |1198| 
        ANDB      AL,#0                 ; [CPU_ALU] |1198| 
        ANDB      AH,#124               ; [CPU_ALU] |1198| 
        LSRL      ACC,T                 ; [CPU_ALU] |1198| 
        MOVL      *-SP[14],ACC          ; [CPU_ALU] |1198| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1200,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1200| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |1200| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |1200| 
        MOVB      ACC,#1                ; [CPU_ALU] |1200| 
        ADDL      ACC,*-SP[14]          ; [CPU_ALU] |1200| 
        MOVL      XT,ACC                ; [CPU_ALU] |1200| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |1200| 
        IMPYXUL   P,XT,ACC              ; [CPU_ALU] |1200| 
        MOV32     R0H,P                 ; [CPU_FPU] |1200| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R1H,*-SP[10]          ; [CPU_FPU] |1200| 
        UI32TOF32 R0H,R0H               ; [CPU_FPU] |1200| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |1200| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[16],R0H          ; [CPU_FPU] |1200| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1201,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1201| 
        ADDL      ACC,*-SP[14]          ; [CPU_ALU] |1201| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |1201| 
        MOVB      ACC,#1                ; [CPU_ALU] |1201| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |1201| 
        MOVL      XT,ACC                ; [CPU_ALU] |1201| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |1201| 
        IMPYXUL   P,XT,ACC              ; [CPU_ALU] |1201| 
        MOV32     R1H,P                 ; [CPU_FPU] |1201| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R0H,*-SP[10]          ; [CPU_FPU] |1201| 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |1201| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |1201| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[18],R0H          ; [CPU_FPU] |1201| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1203,column 5,is_stmt,isa 0
        MOV32     R0H,*-SP[16]          ; [CPU_FPU] |1203| 
        CMPF32    R0H,#16256            ; [CPU_FPU] |1203| 
        MOVST0    ZF, NF                ; [CPU_FPU] |1203| 
        B         ||$C$L87||,LT         ; [CPU_ALU] |1203| 
        ; branchcc occurs ; [] |1203| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1209,column 9,is_stmt,isa 0
        MOVL      XAR4,#1000            ; [CPU_ARAU] |1209| 
        MOVL      *-SP[22],XAR4         ; [CPU_ALU] |1209| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1210,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |1210| 
        SUBB      ACC,#10               ; [CPU_ALU] |1210| 
        MOVL      *-SP[24],ACC          ; [CPU_ALU] |1210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1211,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1211| 
        MOVL      *-SP[28],ACC          ; [CPU_ALU] |1211| 
        B         ||$C$L88||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L87||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1215,column 9,is_stmt,isa 0
        MOV32     R0H,*-SP[18]          ; [CPU_FPU] |1215| 
        MPYF32    R0H,R0H,#16512        ; [CPU_FPU] |1215| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,#16576        ; [CPU_FPU] |1215| 
        NOP       ; [CPU_ALU] 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |1215| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[20],R0H          ; [CPU_FPU] |1215| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1216,column 9,is_stmt,isa 0
        MOVB      ACC,#100              ; [CPU_ALU] |1216| 
        MOVL      XT,ACC                ; [CPU_ALU] |1216| 
        IMPYXUL   P,XT,*-SP[20]         ; [CPU_ALU] |1216| 
        MOV32     R1H,P                 ; [CPU_FPU] |1216| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R3H,#0                ; [CPU_FPU] |1216| 
        ZERO      R2                    ; [CPU_FPU] |1216| 
        MOVXI     R3H,#1                ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |1216| 
        MOV32     *-SP[22],R1H          ; [CPU_FPU] |1216| 
        MOV32     ACC,R1H               ; [CPU_FPU] |1216| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1222,column 9,is_stmt,isa 0
        SUBL      ACC,*-SP[20]          ; [CPU_ALU] |1222| 
        MOVL      *-SP[24],ACC          ; [CPU_ALU] |1222| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1223,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[20]          ; [CPU_ALU] |1223| 
        LSL       ACC,1                 ; [CPU_ALU] |1223| 
        MOVL      *-SP[28],ACC          ; [CPU_ALU] |1223| 
||$C$L88||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1229,column 5,is_stmt,isa 0
        UI32TOF32 R0H,*-SP[22]          ; [CPU_FPU] |1229| 
        MOV32     R1H,*-SP[16]          ; [CPU_FPU] |1229| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |1229| 
        NOP       ; [CPU_ALU] 
        F32TOUI32 R0H,R0H               ; [CPU_FPU] |1229| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[26],R0H          ; [CPU_FPU] |1229| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1235,column 5,is_stmt,isa 0
        MOVL      XAR4,#386816          ; [CPU_ARAU] |1235| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1235| 
        CMPL      ACC,*-SP[8]           ; [CPU_ALU] |1235| 
        B         ||$C$L89||,NEQ        ; [CPU_ALU] |1235| 
        ; branchcc occurs ; [] |1235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1236,column 9,is_stmt,isa 0
        MOVB      AL,#21                ; [CPU_ALU] |1236| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |1236| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |1236| 
        B         ||$C$L91||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L89||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1237,column 10,is_stmt,isa 0
        MOVL      XAR4,#386880          ; [CPU_ARAU] |1237| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1237| 
        CMPL      ACC,*-SP[8]           ; [CPU_ALU] |1237| 
        B         ||$C$L90||,NEQ        ; [CPU_ALU] |1237| 
        ; branchcc occurs ; [] |1237| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1238,column 9,is_stmt,isa 0
        MOV       AL,#277               ; [CPU_ALU] |1238| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |1238| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |1238| 
        B         ||$C$L91||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L90||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1240,column 9,is_stmt,isa 0
        MOV       AL,#533               ; [CPU_ALU] |1240| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |1240| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |1240| 
||$C$L91||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1245,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1245| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("DCC_clearErrorFlag")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #||DCC_clearErrorFlag|| ; [CPU_ALU] |1245| 
        ; call occurs [#||DCC_clearErrorFlag||] ; [] |1245| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1246,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1246| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("DCC_clearDoneFlag")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #||DCC_clearDoneFlag|| ; [CPU_ALU] |1246| 
        ; call occurs [#||DCC_clearDoneFlag||] ; [] |1246| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1251,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1251| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("DCC_disableModule")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #||DCC_disableModule|| ; [CPU_ALU] |1251| 
        ; call occurs [#||DCC_disableModule||] ; [] |1251| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1256,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1256| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("DCC_disableErrorSignal")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #||DCC_disableErrorSignal|| ; [CPU_ALU] |1256| 
        ; call occurs [#||DCC_disableErrorSignal||] ; [] |1256| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1261,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1261| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("DCC_disableDoneSignal")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #||DCC_disableDoneSignal|| ; [CPU_ALU] |1261| 
        ; call occurs [#||DCC_disableDoneSignal||] ; [] |1261| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1266,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[30]          ; [CPU_ALU] |1266| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1266| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("DCC_setCounter0ClkSource")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #||DCC_setCounter0ClkSource|| ; [CPU_ALU] |1266| 
        ; call occurs [#||DCC_setCounter0ClkSource||] ; [] |1266| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1271,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[31]          ; [CPU_ALU] |1271| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1271| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("DCC_setCounter1ClkSource")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #||DCC_setCounter1ClkSource|| ; [CPU_ALU] |1271| 
        ; call occurs [#||DCC_setCounter1ClkSource||] ; [] |1271| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1276,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |1276| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1276| 
        MOVL      ACC,*-SP[28]          ; [CPU_ALU] |1276| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1276| 
        MOVL      ACC,*-SP[26]          ; [CPU_ALU] |1276| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |1276| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1276| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("DCC_setCounterSeeds")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #||DCC_setCounterSeeds|| ; [CPU_ALU] |1276| 
        ; call occurs [#||DCC_setCounterSeeds||] ; [] |1276| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1282,column 5,is_stmt,isa 0
        MOVL      XAR4,#2560            ; [CPU_ALU] |1282| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1282| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("DCC_enableSingleShotMode")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #||DCC_enableSingleShotMode|| ; [CPU_ALU] |1282| 
        ; call occurs [#||DCC_enableSingleShotMode||] ; [] |1282| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1288,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1288| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("DCC_enableModule")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #||DCC_enableModule|| ; [CPU_ALU] |1288| 
        ; call occurs [#||DCC_enableModule||] ; [] |1288| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1293,column 5,is_stmt,isa 0
||$C$L92||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1293,column 11,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1293| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |1293| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1293| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1293| 
        ANDB      AL,#0x03              ; [CPU_ALU] |1293| 
        B         ||$C$L92||,EQ         ; [CPU_ALU] |1293| 
        ; branchcc occurs ; [] |1293| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1301,column 5,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1301| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |1301| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1301| 
        MOVB      XAR6,#0               ; [CPU_ALU] |1301| 
        MOVB      AL,#0                 ; [CPU_ALU] |1301| 
        MOV       AH,*+XAR4[0]          ; [CPU_ALU] |1301| 
        ANDB      AH,#0x03              ; [CPU_ALU] |1301| 
        CMPB      AH,#2                 ; [CPU_ALU] |1301| 
        B         ||$C$L93||,NEQ        ; [CPU_ALU] |1301| 
        ; branchcc occurs ; [] |1301| 
        MOVB      AL,#1                 ; [CPU_ALU] |1301| 
||$C$L93||:    
        CMPB      AL,#0                 ; [CPU_ALU] |1301| 
        B         ||$C$L94||,EQ         ; [CPU_ALU] |1301| 
        ; branchcc occurs ; [] |1301| 
        MOVB      XAR6,#1               ; [CPU_ALU] |1301| 
||$C$L94||:    
        MOV       AL,AR6                ; [CPU_ALU] |1301| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1303,column 1,is_stmt,isa 0
        SUBB      SP,#32                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$153, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x517)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	".text:SysCtl_controlCPU2Reset"
	.clink
	.global	||SysCtl_controlCPU2Reset||

$C$DW$186	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$186, DW_AT_name("SysCtl_controlCPU2Reset")
	.dwattr $C$DW$186, DW_AT_low_pc(||SysCtl_controlCPU2Reset||)
	.dwattr $C$DW$186, DW_AT_high_pc(0x00)
	.dwattr $C$DW$186, DW_AT_linkage_name("SysCtl_controlCPU2Reset")
	.dwattr $C$DW$186, DW_AT_external
	.dwattr $C$DW$186, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$186, DW_AT_decl_line(0x51e)
	.dwattr $C$DW$186, DW_AT_decl_column(0x01)
	.dwattr $C$DW$186, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1311,column 1,is_stmt,address ||SysCtl_controlCPU2Reset||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_controlCPU2Reset||
$C$DW$187	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$187, DW_AT_name("control")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_controlCPU2Reset       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SysCtl_controlCPU2Reset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("clearvalue")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_breg20 -2]

$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("control")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AL            ; [CPU_ALU] |1311| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1318,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1318| 
        B         ||$C$L95||,EQ         ; [CPU_ALU] |1318| 
        ; branchcc occurs ; [] |1318| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1324,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1324| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1325,column 5,is_stmt,isa 0
        MOV       AL,#1                 ; [CPU_ALU] |1325| 
        MOV       AH,#42405             ; [CPU_ALU] |1325| 
        MOVL      XAR4,#381218          ; [CPU_ARAU] |1325| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1325| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1329,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1329| 
        B         ||$C$L96||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L95||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1333,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1333| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1338,column 5,is_stmt,isa 0
        MOVL      XAR4,#381218          ; [CPU_ARAU] |1338| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1338| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1338| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1339,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#65534            ; [CPU_ALU] |1339| 
        AND       *-SP[2],AL            ; [CPU_ALU] |1339| 
        MOV       AL,AH                 ; [CPU_ALU] |1339| 
        AND       *-SP[1],AL            ; [CPU_ALU] |1339| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1340,column 5,is_stmt,isa 0
        MOVL      XAR4,#381218          ; [CPU_ARAU] |1340| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1340| 
        OR        AH,#42405             ; [CPU_ALU] |1340| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1340| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1343,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1343| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1345,column 1,is_stmt,isa 0
||$C$L96||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$186, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$186, DW_AT_TI_end_line(0x541)
	.dwattr $C$DW$186, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$186

	.sect	".text:SysCtl_configureType"
	.clink
	.global	||SysCtl_configureType||

$C$DW$191	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$191, DW_AT_name("SysCtl_configureType")
	.dwattr $C$DW$191, DW_AT_low_pc(||SysCtl_configureType||)
	.dwattr $C$DW$191, DW_AT_high_pc(0x00)
	.dwattr $C$DW$191, DW_AT_linkage_name("SysCtl_configureType")
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$191, DW_AT_decl_line(0x549)
	.dwattr $C$DW$191, DW_AT_decl_column(0x01)
	.dwattr $C$DW$191, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1354,column 1,is_stmt,address ||SysCtl_configureType||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_configureType||
$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_name("type")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg0]

$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("config")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg1]

$C$DW$194	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$194, DW_AT_name("lock")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: SysCtl_configureType          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SysCtl_configureType||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$195	.dwtag  DW_TAG_variable
	.dwattr $C$DW$195, DW_AT_name("type")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg20 -1]

$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("config")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg20 -2]

$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("lock")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1354| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |1354| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |1354| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1355,column 3,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1355| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1361,column 3,is_stmt,isa 0
        B         ||$C$L101||,UNC       ; [CPU_ALU] |1361| 
        ; branch occurs ; [] |1361| 
||$C$L97||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1365,column 7,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #15    ; [CPU_ALU] |1365| 
        MOVL      XAR4,#381338          ; [CPU_ARAU] |1365| 
        AND       AL,AL,#0x8000         ; [CPU_ALU] |1365| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1365| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1365| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1368,column 7,is_stmt,isa 0
        B         ||$C$L102||,UNC       ; [CPU_ALU] |1368| 
        ; branch occurs ; [] |1368| 
||$C$L98||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1372,column 7,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #15    ; [CPU_ALU] |1372| 
        MOVL      XAR4,#381339          ; [CPU_ARAU] |1372| 
        AND       AL,AL,#0x8000         ; [CPU_ALU] |1372| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1372| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1372| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1375,column 7,is_stmt,isa 0
        B         ||$C$L102||,UNC       ; [CPU_ALU] |1375| 
        ; branch occurs ; [] |1375| 
||$C$L99||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1379,column 7,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #15    ; [CPU_ALU] |1379| 
        MOVL      XAR4,#381340          ; [CPU_ARAU] |1379| 
        AND       AL,AL,#0x8000         ; [CPU_ALU] |1379| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1379| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1379| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1382,column 7,is_stmt,isa 0
        B         ||$C$L102||,UNC       ; [CPU_ALU] |1382| 
        ; branch occurs ; [] |1382| 
||$C$L100||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1386,column 7,is_stmt,isa 0
        MOV       ACC,*-SP[3] << #15    ; [CPU_ALU] |1386| 
        MOVL      XAR4,#381342          ; [CPU_ARAU] |1386| 
        AND       AL,AL,#0x8000         ; [CPU_ALU] |1386| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1386| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1386| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1389,column 7,is_stmt,isa 0
        B         ||$C$L102||,UNC       ; [CPU_ALU] |1389| 
        ; branch occurs ; [] |1389| 
||$C$L101||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1361,column 3,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1361| 
        B         ||$C$L97||,EQ         ; [CPU_ALU] |1361| 
        ; branchcc occurs ; [] |1361| 
        CMPB      AL,#1                 ; [CPU_ALU] |1361| 
        B         ||$C$L98||,EQ         ; [CPU_ALU] |1361| 
        ; branchcc occurs ; [] |1361| 
        CMPB      AL,#2                 ; [CPU_ALU] |1361| 
        B         ||$C$L99||,EQ         ; [CPU_ALU] |1361| 
        ; branchcc occurs ; [] |1361| 
        CMPB      AL,#4                 ; [CPU_ALU] |1361| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |1361| 
        ; branchcc occurs ; [] |1361| 
||$C$L102||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1401,column 3,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1401| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1403,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$191, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x57b)
	.dwattr $C$DW$191, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$191

	.sect	".text:SysCtl_isConfigTypeLocked"
	.clink
	.global	||SysCtl_isConfigTypeLocked||

$C$DW$199	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$199, DW_AT_name("SysCtl_isConfigTypeLocked")
	.dwattr $C$DW$199, DW_AT_low_pc(||SysCtl_isConfigTypeLocked||)
	.dwattr $C$DW$199, DW_AT_high_pc(0x00)
	.dwattr $C$DW$199, DW_AT_linkage_name("SysCtl_isConfigTypeLocked")
	.dwattr $C$DW$199, DW_AT_external
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$199, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$199, DW_AT_decl_line(0x583)
	.dwattr $C$DW$199, DW_AT_decl_column(0x01)
	.dwattr $C$DW$199, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1412,column 1,is_stmt,address ||SysCtl_isConfigTypeLocked||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_isConfigTypeLocked||
$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_name("type")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_isConfigTypeLocked     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SysCtl_isConfigTypeLocked||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("type")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_breg20 -1]

$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("lock")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[1],AL            ; [CPU_ALU] |1412| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1413,column 13,is_stmt,isa 0
        MOV       *-SP[2],#0            ; [CPU_ALU] |1413| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1415,column 3,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1415| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1420,column 3,is_stmt,isa 0
        B         ||$C$L115||,UNC       ; [CPU_ALU] |1420| 
        ; branch occurs ; [] |1420| 
||$C$L103||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1424,column 9,is_stmt,isa 0
        MOV       ACC,#0                ; [CPU_ALU] |1424| 
        MOVL      XAR4,#381338          ; [CPU_ARAU] |1424| 
        TBIT      *+XAR4[0],#15         ; [CPU_ALU] |1424| 
        B         ||$C$L104||,NTC       ; [CPU_ALU] |1424| 
        ; branchcc occurs ; [] |1424| 
        MOVB      AL,#1                 ; [CPU_ALU] |1424| 
||$C$L104||:    
        CMPB      AL,#0                 ; [CPU_ALU] |1424| 
        B         ||$C$L105||,EQ        ; [CPU_ALU] |1424| 
        ; branchcc occurs ; [] |1424| 
        MOVB      AH,#1                 ; [CPU_ALU] |1424| 
||$C$L105||:    
        MOV       *-SP[2],AH            ; [CPU_ALU] |1424| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1426,column 9,is_stmt,isa 0
        B         ||$C$L116||,UNC       ; [CPU_ALU] |1426| 
        ; branch occurs ; [] |1426| 
||$C$L106||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1430,column 9,is_stmt,isa 0
        MOV       ACC,#0                ; [CPU_ALU] |1430| 
        MOVL      XAR4,#381339          ; [CPU_ARAU] |1430| 
        TBIT      *+XAR4[0],#15         ; [CPU_ALU] |1430| 
        B         ||$C$L107||,NTC       ; [CPU_ALU] |1430| 
        ; branchcc occurs ; [] |1430| 
        MOVB      AL,#1                 ; [CPU_ALU] |1430| 
||$C$L107||:    
        CMPB      AL,#0                 ; [CPU_ALU] |1430| 
        B         ||$C$L108||,EQ        ; [CPU_ALU] |1430| 
        ; branchcc occurs ; [] |1430| 
        MOVB      AH,#1                 ; [CPU_ALU] |1430| 
||$C$L108||:    
        MOV       *-SP[2],AH            ; [CPU_ALU] |1430| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1432,column 9,is_stmt,isa 0
        B         ||$C$L116||,UNC       ; [CPU_ALU] |1432| 
        ; branch occurs ; [] |1432| 
||$C$L109||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1436,column 9,is_stmt,isa 0
        MOV       ACC,#0                ; [CPU_ALU] |1436| 
        MOVL      XAR4,#381340          ; [CPU_ARAU] |1436| 
        TBIT      *+XAR4[0],#15         ; [CPU_ALU] |1436| 
        B         ||$C$L110||,NTC       ; [CPU_ALU] |1436| 
        ; branchcc occurs ; [] |1436| 
        MOVB      AL,#1                 ; [CPU_ALU] |1436| 
||$C$L110||:    
        CMPB      AL,#0                 ; [CPU_ALU] |1436| 
        B         ||$C$L111||,EQ        ; [CPU_ALU] |1436| 
        ; branchcc occurs ; [] |1436| 
        MOVB      AH,#1                 ; [CPU_ALU] |1436| 
||$C$L111||:    
        MOV       *-SP[2],AH            ; [CPU_ALU] |1436| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1438,column 9,is_stmt,isa 0
        B         ||$C$L116||,UNC       ; [CPU_ALU] |1438| 
        ; branch occurs ; [] |1438| 
||$C$L112||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1442,column 9,is_stmt,isa 0
        MOV       ACC,#0                ; [CPU_ALU] |1442| 
        MOVL      XAR4,#381342          ; [CPU_ARAU] |1442| 
        TBIT      *+XAR4[0],#15         ; [CPU_ALU] |1442| 
        B         ||$C$L113||,NTC       ; [CPU_ALU] |1442| 
        ; branchcc occurs ; [] |1442| 
        MOVB      AL,#1                 ; [CPU_ALU] |1442| 
||$C$L113||:    
        CMPB      AL,#0                 ; [CPU_ALU] |1442| 
        B         ||$C$L114||,EQ        ; [CPU_ALU] |1442| 
        ; branchcc occurs ; [] |1442| 
        MOVB      AH,#1                 ; [CPU_ALU] |1442| 
||$C$L114||:    
        MOV       *-SP[2],AH            ; [CPU_ALU] |1442| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1444,column 9,is_stmt,isa 0
        B         ||$C$L116||,UNC       ; [CPU_ALU] |1444| 
        ; branch occurs ; [] |1444| 
||$C$L115||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1420,column 3,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1420| 
        B         ||$C$L103||,EQ        ; [CPU_ALU] |1420| 
        ; branchcc occurs ; [] |1420| 
        CMPB      AL,#1                 ; [CPU_ALU] |1420| 
        B         ||$C$L106||,EQ        ; [CPU_ALU] |1420| 
        ; branchcc occurs ; [] |1420| 
        CMPB      AL,#2                 ; [CPU_ALU] |1420| 
        B         ||$C$L109||,EQ        ; [CPU_ALU] |1420| 
        ; branchcc occurs ; [] |1420| 
        CMPB      AL,#4                 ; [CPU_ALU] |1420| 
        B         ||$C$L112||,EQ        ; [CPU_ALU] |1420| 
        ; branchcc occurs ; [] |1420| 
||$C$L116||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1456,column 3,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1456| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1458,column 3,is_stmt,isa 0
        MOV       AL,*-SP[2]            ; [CPU_ALU] |1458| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1459,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$199, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x5b3)
	.dwattr $C$DW$199, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$199

	.sect	".text:SysCtl_setSemOwner"
	.clink
	.global	||SysCtl_setSemOwner||

$C$DW$204	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$204, DW_AT_name("SysCtl_setSemOwner")
	.dwattr $C$DW$204, DW_AT_low_pc(||SysCtl_setSemOwner||)
	.dwattr $C$DW$204, DW_AT_high_pc(0x00)
	.dwattr $C$DW$204, DW_AT_linkage_name("SysCtl_setSemOwner")
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$204, DW_AT_decl_line(0x5bb)
	.dwattr $C$DW$204, DW_AT_decl_column(0x01)
	.dwattr $C$DW$204, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1468,column 1,is_stmt,address ||SysCtl_setSemOwner||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_setSemOwner||
$C$DW$205	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$205, DW_AT_name("cpuInst")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_setSemOwner            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||SysCtl_setSemOwner||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("cpuInst")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |1468| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1469,column 3,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1469| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1475,column 3,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1475| 
        B         ||$C$L117||,NEQ       ; [CPU_ALU] |1475| 
        ; branchcc occurs ; [] |1475| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1480,column 7,is_stmt,isa 0
        MOVL      XAR4,#381440          ; [CPU_ARAU] |1480| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1480| 
        ANDB      AH,#0                 ; [CPU_ALU] |1480| 
        AND       AL,#65532             ; [CPU_ALU] |1480| 
        OR        AH,#42405             ; [CPU_ALU] |1480| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1480| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1489,column 7,is_stmt,isa 0
        MOV       AL,#16                ; [CPU_ALU] |1489| 
        MOV       AH,#42405             ; [CPU_ALU] |1489| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1489| 
        B         ||$C$L118||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L117||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1498,column 7,is_stmt,isa 0
        MOVL      XAR4,#381440          ; [CPU_ARAU] |1498| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1498| 
        ANDB      AH,#0                 ; [CPU_ALU] |1498| 
        AND       AL,#65532             ; [CPU_ALU] |1498| 
        OR        AH,#42405             ; [CPU_ALU] |1498| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1498| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1507,column 7,is_stmt,isa 0
        MOV       AL,#1                 ; [CPU_ALU] |1507| 
        MOV       AH,#42405             ; [CPU_ALU] |1507| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1507| 
||$C$L118||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1512,column 3,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1512| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1513,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$204, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x5e9)
	.dwattr $C$DW$204, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$204

	.sect	".text:SysCtl_lockClkConfig"
	.clink
	.global	||SysCtl_lockClkConfig||

$C$DW$208	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$208, DW_AT_name("SysCtl_lockClkConfig")
	.dwattr $C$DW$208, DW_AT_low_pc(||SysCtl_lockClkConfig||)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_linkage_name("SysCtl_lockClkConfig")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$208, DW_AT_decl_line(0x5f1)
	.dwattr $C$DW$208, DW_AT_decl_column(0x01)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1522,column 1,is_stmt,address ||SysCtl_lockClkConfig||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_lockClkConfig||
$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_name("registerName")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_lockClkConfig          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||SysCtl_lockClkConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("registerName")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_breg20 -1]

$C$DW$211	.dwtag  DW_TAG_variable
	.dwattr $C$DW$211, DW_AT_name("bitIndex")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[1],AL            ; [CPU_ALU] |1522| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1528,column 3,is_stmt,isa 0
        AND       AL,*-SP[1],#0x1f00    ; [CPU_ALU] |1528| 
        LSR       AL,8                  ; [CPU_ALU] |1528| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |1528| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1534,column 3,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1534| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1535,column 3,is_stmt,isa 0
        MOVL      XAR4,#381442          ; [CPU_ARAU] |1535| 
        MOVB      ACC,#1                ; [CPU_ALU] |1535| 
        MOV       T,*-SP[2]             ; [CPU_ALU] |1535| 
        LSLL      ACC,T                 ; [CPU_ALU] |1535| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |1535| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |1535| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1537,column 3,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1537| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1538,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$208, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x602)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text:SysCtl_lockSysConfig"
	.clink
	.global	||SysCtl_lockSysConfig||

$C$DW$213	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$213, DW_AT_name("SysCtl_lockSysConfig")
	.dwattr $C$DW$213, DW_AT_low_pc(||SysCtl_lockSysConfig||)
	.dwattr $C$DW$213, DW_AT_high_pc(0x00)
	.dwattr $C$DW$213, DW_AT_linkage_name("SysCtl_lockSysConfig")
	.dwattr $C$DW$213, DW_AT_external
	.dwattr $C$DW$213, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$213, DW_AT_decl_line(0x60a)
	.dwattr $C$DW$213, DW_AT_decl_column(0x01)
	.dwattr $C$DW$213, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1547,column 1,is_stmt,address ||SysCtl_lockSysConfig||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_lockSysConfig||
$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("registerName")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_lockSysConfig          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SysCtl_lockSysConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("registerName")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_breg20 -1]

$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("regIndex")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_breg20 -2]

$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("bitIndex")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[1],AL            ; [CPU_ALU] |1547| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1554,column 3,is_stmt,isa 0
        ANDB      AL,#0x1f              ; [CPU_ALU] |1554| 
        LSL       AL,1                  ; [CPU_ALU] |1554| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |1554| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1556,column 3,is_stmt,isa 0
        AND       AL,*-SP[1],#0x1f00    ; [CPU_ALU] |1556| 
        LSR       AL,8                  ; [CPU_ALU] |1556| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |1556| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1562,column 3,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1562| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1563,column 3,is_stmt,isa 0
        MOVL      XAR4,#381696          ; [CPU_ARAU] |1563| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1563| 
        ADDU      ACC,*-SP[2]           ; [CPU_ALU] |1563| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1563| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |1563| 
        MOVB      ACC,#1                ; [CPU_ALU] |1563| 
        LSLL      ACC,T                 ; [CPU_ALU] |1563| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |1563| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |1563| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1565,column 3,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1565| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1566,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$213, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x61e)
	.dwattr $C$DW$213, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$213

	.sect	".text:SysCtl_controlCMReset"
	.clink
	.global	||SysCtl_controlCMReset||

$C$DW$219	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$219, DW_AT_name("SysCtl_controlCMReset")
	.dwattr $C$DW$219, DW_AT_low_pc(||SysCtl_controlCMReset||)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_linkage_name("SysCtl_controlCMReset")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_decl_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$219, DW_AT_decl_line(0x626)
	.dwattr $C$DW$219, DW_AT_decl_column(0x01)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1575,column 1,is_stmt,address ||SysCtl_controlCMReset||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_controlCMReset||
$C$DW$220	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$220, DW_AT_name("control")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: SysCtl_controlCMReset         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||SysCtl_controlCMReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("clearvalue")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_breg20 -2]

$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("control")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AL            ; [CPU_ALU] |1575| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1578,column 7,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |1578| 
        B         ||$C$L120||,EQ        ; [CPU_ALU] |1578| 
        ; branchcc occurs ; [] |1578| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1583,column 7,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1583| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1584,column 7,is_stmt,isa 0
        MOV       AL,#1                 ; [CPU_ALU] |1584| 
        MOV       AH,#42405             ; [CPU_ALU] |1584| 
        MOVL      XAR4,#384000          ; [CPU_ARAU] |1584| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1584| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1591,column 7,is_stmt,isa 0
||$C$L119||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1591,column 13,is_stmt,isa 0
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("SysCtl_isCMReset")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #||SysCtl_isCMReset|| ; [CPU_ALU] |1591| 
        ; call occurs [#||SysCtl_isCMReset||] ; [] |1591| 
        CMPB      AL,#0                 ; [CPU_ALU] |1591| 
        B         ||$C$L119||,EQ        ; [CPU_ALU] |1591| 
        ; branchcc occurs ; [] |1591| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1598,column 7,is_stmt,isa 0
        MOVL      XAR4,#384000          ; [CPU_ARAU] |1598| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1598| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1598| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1599,column 7,is_stmt,isa 0
        AND       *-SP[2],#65534        ; [CPU_ALU] |1599| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1600,column 7,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1600| 
        OR        AH,#42405             ; [CPU_ALU] |1600| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1600| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1603,column 7,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1603| 
        B         ||$C$L121||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L120||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1610,column 7,is_stmt,isa 0
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("SysCtl_isCMReset")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #||SysCtl_isCMReset|| ; [CPU_ALU] |1610| 
        ; call occurs [#||SysCtl_isCMReset||] ; [] |1610| 
        CMPB      AL,#1                 ; [CPU_ALU] |1610| 
        B         ||$C$L121||,NEQ       ; [CPU_ALU] |1610| 
        ; branchcc occurs ; [] |1610| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1612,column 7,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1612| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1617,column 7,is_stmt,isa 0
        MOVL      XAR4,#384000          ; [CPU_ARAU] |1617| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1617| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1617| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1618,column 7,is_stmt,isa 0
        AND       *-SP[2],#65534        ; [CPU_ALU] |1618| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1619,column 7,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1619| 
        OR        AH,#42405             ; [CPU_ALU] |1619| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1619| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1622,column 7,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1622| 
	.dwpsn	file "../F2838x_driverlib/driverlib/sysctl.c",line 1626,column 1,is_stmt,isa 0
||$C$L121||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$219, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/sysctl.c")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x65a)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$219

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||SysCtl_delay||

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
$C$DW$226	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$226, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$226, DW_AT_const_value(0x00)
	.dwattr $C$DW$226, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$226, DW_AT_decl_column(0x05)

$C$DW$227	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$227, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$227, DW_AT_const_value(0x200)
	.dwattr $C$DW$227, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$227, DW_AT_decl_column(0x05)

$C$DW$228	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$228, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$228, DW_AT_const_value(0x300)
	.dwattr $C$DW$228, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$228, DW_AT_decl_column(0x05)

$C$DW$229	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$229, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$229, DW_AT_const_value(0x400)
	.dwattr $C$DW$229, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$229, DW_AT_decl_column(0x05)

$C$DW$230	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$230, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$230, DW_AT_const_value(0x500)
	.dwattr $C$DW$230, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$230, DW_AT_decl_column(0x05)

$C$DW$231	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$231, DW_AT_name("SYSCTL_PERIPH_CLK_CPUBGCRC")
	.dwattr $C$DW$231, DW_AT_const_value(0xd00)
	.dwattr $C$DW$231, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$231, DW_AT_decl_column(0x05)

$C$DW$232	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$232, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1BGCRC")
	.dwattr $C$DW$232, DW_AT_const_value(0xe00)
	.dwattr $C$DW$232, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$232, DW_AT_decl_column(0x05)

$C$DW$233	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$233, DW_AT_name("SYSCTL_PERIPH_CLK_HRCAL")
	.dwattr $C$DW$233, DW_AT_const_value(0x1000)
	.dwattr $C$DW$233, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$233, DW_AT_decl_column(0x05)

$C$DW$234	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$234, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$234, DW_AT_const_value(0x1200)
	.dwattr $C$DW$234, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$234, DW_AT_decl_column(0x05)

$C$DW$235	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$235, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$235, DW_AT_const_value(0x1300)
	.dwattr $C$DW$235, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$235, DW_AT_decl_column(0x05)

$C$DW$236	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$236, DW_AT_name("SYSCTL_PERIPH_CLK_ERAD")
	.dwattr $C$DW$236, DW_AT_const_value(0x1800)
	.dwattr $C$DW$236, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$236, DW_AT_decl_column(0x05)

$C$DW$237	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$237, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$237, DW_AT_const_value(0x01)
	.dwattr $C$DW$237, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$237, DW_AT_decl_column(0x05)

$C$DW$238	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$238, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$238, DW_AT_const_value(0x101)
	.dwattr $C$DW$238, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$238, DW_AT_decl_column(0x05)

$C$DW$239	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$239, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$239, DW_AT_const_value(0x02)
	.dwattr $C$DW$239, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$239, DW_AT_decl_column(0x05)

$C$DW$240	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$240, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$240, DW_AT_const_value(0x102)
	.dwattr $C$DW$240, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$240, DW_AT_decl_column(0x05)

$C$DW$241	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$241, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$241, DW_AT_const_value(0x202)
	.dwattr $C$DW$241, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$241, DW_AT_decl_column(0x05)

$C$DW$242	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$242, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$242, DW_AT_const_value(0x302)
	.dwattr $C$DW$242, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$242, DW_AT_decl_column(0x05)

$C$DW$243	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$243, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$243, DW_AT_const_value(0x402)
	.dwattr $C$DW$243, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$243, DW_AT_decl_column(0x05)

$C$DW$244	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$244, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$244, DW_AT_const_value(0x502)
	.dwattr $C$DW$244, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$244, DW_AT_decl_column(0x05)

$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$245, DW_AT_const_value(0x602)
	.dwattr $C$DW$245, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x1eb)
	.dwattr $C$DW$245, DW_AT_decl_column(0x05)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$246, DW_AT_const_value(0x702)
	.dwattr $C$DW$246, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$246, DW_AT_decl_column(0x05)

$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$247, DW_AT_const_value(0x802)
	.dwattr $C$DW$247, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$247, DW_AT_decl_column(0x05)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$248, DW_AT_const_value(0x902)
	.dwattr $C$DW$248, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$248, DW_AT_decl_column(0x05)

$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$249, DW_AT_const_value(0xa02)
	.dwattr $C$DW$249, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$249, DW_AT_decl_column(0x05)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$250, DW_AT_const_value(0xb02)
	.dwattr $C$DW$250, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$250, DW_AT_decl_column(0x05)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM13")
	.dwattr $C$DW$251, DW_AT_const_value(0xc02)
	.dwattr $C$DW$251, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$251, DW_AT_decl_column(0x05)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM14")
	.dwattr $C$DW$252, DW_AT_const_value(0xd02)
	.dwattr $C$DW$252, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$252, DW_AT_decl_column(0x05)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM15")
	.dwattr $C$DW$253, DW_AT_const_value(0xe02)
	.dwattr $C$DW$253, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$253, DW_AT_decl_column(0x05)

$C$DW$254	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$254, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM16")
	.dwattr $C$DW$254, DW_AT_const_value(0xf02)
	.dwattr $C$DW$254, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$254, DW_AT_decl_column(0x05)

$C$DW$255	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$255, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$255, DW_AT_const_value(0x03)
	.dwattr $C$DW$255, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$255, DW_AT_decl_column(0x05)

$C$DW$256	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$256, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$256, DW_AT_const_value(0x103)
	.dwattr $C$DW$256, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$256, DW_AT_decl_column(0x05)

$C$DW$257	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$257, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$257, DW_AT_const_value(0x203)
	.dwattr $C$DW$257, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$257, DW_AT_decl_column(0x05)

$C$DW$258	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$258, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$258, DW_AT_const_value(0x303)
	.dwattr $C$DW$258, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$258, DW_AT_decl_column(0x05)

$C$DW$259	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$259, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$259, DW_AT_const_value(0x403)
	.dwattr $C$DW$259, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$259, DW_AT_decl_column(0x05)

$C$DW$260	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$260, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$260, DW_AT_const_value(0x503)
	.dwattr $C$DW$260, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$260, DW_AT_decl_column(0x05)

$C$DW$261	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$261, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP7")
	.dwattr $C$DW$261, DW_AT_const_value(0x603)
	.dwattr $C$DW$261, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x1ff)
	.dwattr $C$DW$261, DW_AT_decl_column(0x05)

$C$DW$262	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$262, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$262, DW_AT_const_value(0x04)
	.dwattr $C$DW$262, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x204)
	.dwattr $C$DW$262, DW_AT_decl_column(0x05)

$C$DW$263	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$263, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$263, DW_AT_const_value(0x104)
	.dwattr $C$DW$263, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x205)
	.dwattr $C$DW$263, DW_AT_decl_column(0x05)

$C$DW$264	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$264, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$264, DW_AT_const_value(0x204)
	.dwattr $C$DW$264, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x206)
	.dwattr $C$DW$264, DW_AT_decl_column(0x05)

$C$DW$265	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$265, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$265, DW_AT_const_value(0x06)
	.dwattr $C$DW$265, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x210)
	.dwattr $C$DW$265, DW_AT_decl_column(0x05)

$C$DW$266	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$266, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$266, DW_AT_const_value(0x106)
	.dwattr $C$DW$266, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x211)
	.dwattr $C$DW$266, DW_AT_decl_column(0x05)

$C$DW$267	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$267, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$267, DW_AT_const_value(0x07)
	.dwattr $C$DW$267, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x216)
	.dwattr $C$DW$267, DW_AT_decl_column(0x05)

$C$DW$268	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$268, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$268, DW_AT_const_value(0x107)
	.dwattr $C$DW$268, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x217)
	.dwattr $C$DW$268, DW_AT_decl_column(0x05)

$C$DW$269	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$269, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$269, DW_AT_const_value(0x207)
	.dwattr $C$DW$269, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x218)
	.dwattr $C$DW$269, DW_AT_decl_column(0x05)

$C$DW$270	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$270, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$270, DW_AT_const_value(0x307)
	.dwattr $C$DW$270, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x219)
	.dwattr $C$DW$270, DW_AT_decl_column(0x05)

$C$DW$271	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$271, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$271, DW_AT_const_value(0x08)
	.dwattr $C$DW$271, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$271, DW_AT_decl_column(0x05)

$C$DW$272	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$272, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$272, DW_AT_const_value(0x108)
	.dwattr $C$DW$272, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$272, DW_AT_decl_column(0x05)

$C$DW$273	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$273, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$273, DW_AT_const_value(0x208)
	.dwattr $C$DW$273, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x220)
	.dwattr $C$DW$273, DW_AT_decl_column(0x05)

$C$DW$274	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$274, DW_AT_name("SYSCTL_PERIPH_CLK_SPID")
	.dwattr $C$DW$274, DW_AT_const_value(0x308)
	.dwattr $C$DW$274, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x221)
	.dwattr $C$DW$274, DW_AT_decl_column(0x05)

$C$DW$275	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$275, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$275, DW_AT_const_value(0x09)
	.dwattr $C$DW$275, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x226)
	.dwattr $C$DW$275, DW_AT_decl_column(0x05)

$C$DW$276	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$276, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$276, DW_AT_const_value(0x109)
	.dwattr $C$DW$276, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x227)
	.dwattr $C$DW$276, DW_AT_decl_column(0x05)

$C$DW$277	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$277, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$277, DW_AT_const_value(0x0a)
	.dwattr $C$DW$277, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$277, DW_AT_decl_column(0x05)

$C$DW$278	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$278, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$278, DW_AT_const_value(0x10a)
	.dwattr $C$DW$278, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$278, DW_AT_decl_column(0x05)

$C$DW$279	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$279, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$279, DW_AT_const_value(0x0b)
	.dwattr $C$DW$279, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x232)
	.dwattr $C$DW$279, DW_AT_decl_column(0x05)

$C$DW$280	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$280, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$280, DW_AT_const_value(0x10b)
	.dwattr $C$DW$280, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x233)
	.dwattr $C$DW$280, DW_AT_decl_column(0x05)

$C$DW$281	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$281, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$281, DW_AT_const_value(0x100b)
	.dwattr $C$DW$281, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x234)
	.dwattr $C$DW$281, DW_AT_decl_column(0x05)

$C$DW$282	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$282, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$282, DW_AT_const_value(0x0d)
	.dwattr $C$DW$282, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$282, DW_AT_decl_column(0x05)

$C$DW$283	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$283, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$283, DW_AT_const_value(0x10d)
	.dwattr $C$DW$283, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$283, DW_AT_decl_column(0x05)

$C$DW$284	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$284, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$284, DW_AT_const_value(0x20d)
	.dwattr $C$DW$284, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$284, DW_AT_decl_column(0x05)

$C$DW$285	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$285, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$285, DW_AT_const_value(0x30d)
	.dwattr $C$DW$285, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x240)
	.dwattr $C$DW$285, DW_AT_decl_column(0x05)

$C$DW$286	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$286, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$286, DW_AT_const_value(0x0e)
	.dwattr $C$DW$286, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x245)
	.dwattr $C$DW$286, DW_AT_decl_column(0x05)

$C$DW$287	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$287, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$287, DW_AT_const_value(0x10e)
	.dwattr $C$DW$287, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x246)
	.dwattr $C$DW$287, DW_AT_decl_column(0x05)

$C$DW$288	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$288, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$288, DW_AT_const_value(0x20e)
	.dwattr $C$DW$288, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x247)
	.dwattr $C$DW$288, DW_AT_decl_column(0x05)

$C$DW$289	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$289, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$289, DW_AT_const_value(0x30e)
	.dwattr $C$DW$289, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x248)
	.dwattr $C$DW$289, DW_AT_decl_column(0x05)

$C$DW$290	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$290, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$290, DW_AT_const_value(0x40e)
	.dwattr $C$DW$290, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x249)
	.dwattr $C$DW$290, DW_AT_decl_column(0x05)

$C$DW$291	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$291, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$291, DW_AT_const_value(0x50e)
	.dwattr $C$DW$291, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$291, DW_AT_decl_column(0x05)

$C$DW$292	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$292, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$292, DW_AT_const_value(0x60e)
	.dwattr $C$DW$292, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$292, DW_AT_decl_column(0x05)

$C$DW$293	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$293, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$293, DW_AT_const_value(0x70e)
	.dwattr $C$DW$293, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x24c)
	.dwattr $C$DW$293, DW_AT_decl_column(0x05)

$C$DW$294	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$294, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$294, DW_AT_const_value(0x1010)
	.dwattr $C$DW$294, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x256)
	.dwattr $C$DW$294, DW_AT_decl_column(0x05)

$C$DW$295	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$295, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$295, DW_AT_const_value(0x1110)
	.dwattr $C$DW$295, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x257)
	.dwattr $C$DW$295, DW_AT_decl_column(0x05)

$C$DW$296	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$296, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$296, DW_AT_const_value(0x1210)
	.dwattr $C$DW$296, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x258)
	.dwattr $C$DW$296, DW_AT_decl_column(0x05)

$C$DW$297	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$297, DW_AT_name("SYSCTL_PERIPH_CLK_FSITXA")
	.dwattr $C$DW$297, DW_AT_const_value(0x12)
	.dwattr $C$DW$297, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x261)
	.dwattr $C$DW$297, DW_AT_decl_column(0x05)

$C$DW$298	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$298, DW_AT_name("SYSCTL_PERIPH_CLK_FSITXB")
	.dwattr $C$DW$298, DW_AT_const_value(0x112)
	.dwattr $C$DW$298, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x262)
	.dwattr $C$DW$298, DW_AT_decl_column(0x05)

$C$DW$299	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$299, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXA")
	.dwattr $C$DW$299, DW_AT_const_value(0x1012)
	.dwattr $C$DW$299, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x263)
	.dwattr $C$DW$299, DW_AT_decl_column(0x05)

$C$DW$300	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$300, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXB")
	.dwattr $C$DW$300, DW_AT_const_value(0x1112)
	.dwattr $C$DW$300, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x264)
	.dwattr $C$DW$300, DW_AT_decl_column(0x05)

$C$DW$301	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$301, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXC")
	.dwattr $C$DW$301, DW_AT_const_value(0x1212)
	.dwattr $C$DW$301, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x265)
	.dwattr $C$DW$301, DW_AT_decl_column(0x05)

$C$DW$302	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$302, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXD")
	.dwattr $C$DW$302, DW_AT_const_value(0x1312)
	.dwattr $C$DW$302, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x266)
	.dwattr $C$DW$302, DW_AT_decl_column(0x05)

$C$DW$303	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$303, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXE")
	.dwattr $C$DW$303, DW_AT_const_value(0x1412)
	.dwattr $C$DW$303, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x267)
	.dwattr $C$DW$303, DW_AT_decl_column(0x05)

$C$DW$304	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$304, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXF")
	.dwattr $C$DW$304, DW_AT_const_value(0x1512)
	.dwattr $C$DW$304, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x268)
	.dwattr $C$DW$304, DW_AT_decl_column(0x05)

$C$DW$305	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$305, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXG")
	.dwattr $C$DW$305, DW_AT_const_value(0x1612)
	.dwattr $C$DW$305, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x269)
	.dwattr $C$DW$305, DW_AT_decl_column(0x05)

$C$DW$306	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$306, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXH")
	.dwattr $C$DW$306, DW_AT_const_value(0x1712)
	.dwattr $C$DW$306, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$306, DW_AT_decl_column(0x05)

$C$DW$307	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$307, DW_AT_name("SYSCTL_PERIPH_CLK_PMBUSA")
	.dwattr $C$DW$307, DW_AT_const_value(0x14)
	.dwattr $C$DW$307, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x274)
	.dwattr $C$DW$307, DW_AT_decl_column(0x05)

$C$DW$308	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$308, DW_AT_name("SYSCTL_PERIPH_CLK_DCC0")
	.dwattr $C$DW$308, DW_AT_const_value(0x15)
	.dwattr $C$DW$308, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x279)
	.dwattr $C$DW$308, DW_AT_decl_column(0x05)

$C$DW$309	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$309, DW_AT_name("SYSCTL_PERIPH_CLK_DCC1")
	.dwattr $C$DW$309, DW_AT_const_value(0x115)
	.dwattr $C$DW$309, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$309, DW_AT_decl_column(0x05)

$C$DW$310	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$310, DW_AT_name("SYSCTL_PERIPH_CLK_DCC2")
	.dwattr $C$DW$310, DW_AT_const_value(0x215)
	.dwattr $C$DW$310, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x27b)
	.dwattr $C$DW$310, DW_AT_decl_column(0x05)

$C$DW$311	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$311, DW_AT_name("SYSCTL_PERIPH_CLK_ECAT")
	.dwattr $C$DW$311, DW_AT_const_value(0x17)
	.dwattr $C$DW$311, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x281)
	.dwattr $C$DW$311, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x282)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$312	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$312, DW_AT_name("DCC_MODE_COUNTER_ZERO")
	.dwattr $C$DW$312, DW_AT_const_value(0xa00)
	.dwattr $C$DW$312, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$312, DW_AT_decl_column(0x05)

$C$DW$313	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$313, DW_AT_name("DCC_MODE_COUNTER_ONE")
	.dwattr $C$DW$313, DW_AT_const_value(0xb00)
	.dwattr $C$DW$313, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x72)
	.dwattr $C$DW$313, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("DCC_SingleShotMode")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$314	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$314, DW_AT_name("DCC_COUNT1SRC_PLL")
	.dwattr $C$DW$314, DW_AT_const_value(0x00)
	.dwattr $C$DW$314, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$314, DW_AT_decl_column(0x05)

$C$DW$315	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$315, DW_AT_name("DCC_COUNT1SRC_AUXPLL")
	.dwattr $C$DW$315, DW_AT_const_value(0x01)
	.dwattr $C$DW$315, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$315, DW_AT_decl_column(0x05)

$C$DW$316	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$316, DW_AT_name("DCC_COUNT1SRC_INTOSC1")
	.dwattr $C$DW$316, DW_AT_const_value(0x02)
	.dwattr $C$DW$316, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$316, DW_AT_decl_column(0x05)

$C$DW$317	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$317, DW_AT_name("DCC_COUNT1SRC_INTOSC2")
	.dwattr $C$DW$317, DW_AT_const_value(0x03)
	.dwattr $C$DW$317, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x90)
	.dwattr $C$DW$317, DW_AT_decl_column(0x05)

$C$DW$318	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$318, DW_AT_name("DCC_COUNT1SRC_PUMOSC")
	.dwattr $C$DW$318, DW_AT_const_value(0x04)
	.dwattr $C$DW$318, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x91)
	.dwattr $C$DW$318, DW_AT_decl_column(0x05)

$C$DW$319	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$319, DW_AT_name("DCC_COUNT1SRC_CMCLK")
	.dwattr $C$DW$319, DW_AT_const_value(0x05)
	.dwattr $C$DW$319, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x92)
	.dwattr $C$DW$319, DW_AT_decl_column(0x05)

$C$DW$320	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$320, DW_AT_name("DCC_COUNT1SRC_CPU1SYSCLK")
	.dwattr $C$DW$320, DW_AT_const_value(0x06)
	.dwattr $C$DW$320, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x93)
	.dwattr $C$DW$320, DW_AT_decl_column(0x05)

$C$DW$321	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$321, DW_AT_name("DCC_COUNT1SRC_ENETRXCLK")
	.dwattr $C$DW$321, DW_AT_const_value(0x07)
	.dwattr $C$DW$321, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x94)
	.dwattr $C$DW$321, DW_AT_decl_column(0x05)

$C$DW$322	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$322, DW_AT_name("DCC_COUNT1SRC_CPU2SYSCLK")
	.dwattr $C$DW$322, DW_AT_const_value(0x08)
	.dwattr $C$DW$322, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x95)
	.dwattr $C$DW$322, DW_AT_decl_column(0x05)

$C$DW$323	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$323, DW_AT_name("DCC_COUNT1SRC_CROSSBAR")
	.dwattr $C$DW$323, DW_AT_const_value(0x09)
	.dwattr $C$DW$323, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x96)
	.dwattr $C$DW$323, DW_AT_decl_column(0x05)

$C$DW$324	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$324, DW_AT_name("DCC_COUNT1SRC_AUXCLKIN")
	.dwattr $C$DW$324, DW_AT_const_value(0x0a)
	.dwattr $C$DW$324, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x97)
	.dwattr $C$DW$324, DW_AT_decl_column(0x05)

$C$DW$325	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$325, DW_AT_name("DCC_COUNT1SRC_ETPWM")
	.dwattr $C$DW$325, DW_AT_const_value(0x0b)
	.dwattr $C$DW$325, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x98)
	.dwattr $C$DW$325, DW_AT_decl_column(0x05)

$C$DW$326	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$326, DW_AT_name("DCC_COUNT1SRC_LSPCLK")
	.dwattr $C$DW$326, DW_AT_const_value(0x0c)
	.dwattr $C$DW$326, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x99)
	.dwattr $C$DW$326, DW_AT_decl_column(0x05)

$C$DW$327	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$327, DW_AT_name("DCC_COUNT1SRC_ECATMII0RXCLK")
	.dwattr $C$DW$327, DW_AT_const_value(0x0d)
	.dwattr $C$DW$327, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$327, DW_AT_decl_column(0x05)

$C$DW$328	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$328, DW_AT_name("DCC_COUNT1SRC_WDCLK")
	.dwattr $C$DW$328, DW_AT_const_value(0x0e)
	.dwattr $C$DW$328, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$328, DW_AT_decl_column(0x05)

$C$DW$329	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$329, DW_AT_name("DCC_COUNT1SRC_CANX")
	.dwattr $C$DW$329, DW_AT_const_value(0x0f)
	.dwattr $C$DW$329, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$329, DW_AT_decl_column(0x05)

$C$DW$330	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$330, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_CLKOUT")
	.dwattr $C$DW$330, DW_AT_const_value(0x10)
	.dwattr $C$DW$330, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$330, DW_AT_decl_column(0x05)

$C$DW$331	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$331, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_VCO")
	.dwattr $C$DW$331, DW_AT_const_value(0x11)
	.dwattr $C$DW$331, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$331, DW_AT_decl_column(0x05)

$C$DW$332	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$332, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_VCO_2")
	.dwattr $C$DW$332, DW_AT_const_value(0x12)
	.dwattr $C$DW$332, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$332, DW_AT_decl_column(0x05)

$C$DW$333	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$333, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_FMDIV")
	.dwattr $C$DW$333, DW_AT_const_value(0x13)
	.dwattr $C$DW$333, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$333, DW_AT_decl_column(0x05)

$C$DW$334	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$334, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_FNDIV")
	.dwattr $C$DW$334, DW_AT_const_value(0x14)
	.dwattr $C$DW$334, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$334, DW_AT_decl_column(0x05)

$C$DW$335	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$335, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_INTOSC")
	.dwattr $C$DW$335, DW_AT_const_value(0x15)
	.dwattr $C$DW$335, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$335, DW_AT_decl_column(0x05)

$C$DW$336	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$336, DW_AT_name("DCC_COUNT1SRC_SYSAPLL_CLK_AUX")
	.dwattr $C$DW$336, DW_AT_const_value(0x16)
	.dwattr $C$DW$336, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$336, DW_AT_decl_column(0x05)

$C$DW$337	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$337, DW_AT_name("DCC_COUNT1SRC_ECATMII1RXCLK")
	.dwattr $C$DW$337, DW_AT_const_value(0x17)
	.dwattr $C$DW$337, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$337, DW_AT_decl_column(0x05)

$C$DW$338	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$338, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_CLKOUT")
	.dwattr $C$DW$338, DW_AT_const_value(0x18)
	.dwattr $C$DW$338, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$338, DW_AT_decl_column(0x05)

$C$DW$339	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$339, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_VCO")
	.dwattr $C$DW$339, DW_AT_const_value(0x19)
	.dwattr $C$DW$339, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$339, DW_AT_decl_column(0x05)

$C$DW$340	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$340, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_VCO_2")
	.dwattr $C$DW$340, DW_AT_const_value(0x1a)
	.dwattr $C$DW$340, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$340, DW_AT_decl_column(0x05)

$C$DW$341	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$341, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_FMDIV")
	.dwattr $C$DW$341, DW_AT_const_value(0x1b)
	.dwattr $C$DW$341, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$341, DW_AT_decl_column(0x05)

$C$DW$342	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$342, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_FNDIV")
	.dwattr $C$DW$342, DW_AT_const_value(0x1c)
	.dwattr $C$DW$342, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$342, DW_AT_decl_column(0x05)

$C$DW$343	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$343, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_INTOSC")
	.dwattr $C$DW$343, DW_AT_const_value(0x1d)
	.dwattr $C$DW$343, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$343, DW_AT_decl_column(0x05)

$C$DW$344	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$344, DW_AT_name("DCC_COUNT1SRC_AUXAPLL_CLK_AUX")
	.dwattr $C$DW$344, DW_AT_const_value(0x1e)
	.dwattr $C$DW$344, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xab)
	.dwattr $C$DW$344, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("DCC_Count1ClockSource")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$345	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$345, DW_AT_name("DCC_COUNT0SRC_XTAL")
	.dwattr $C$DW$345, DW_AT_const_value(0x00)
	.dwattr $C$DW$345, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$345, DW_AT_decl_column(0x05)

$C$DW$346	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$346, DW_AT_name("DCC_COUNT0SRC_INTOSC1")
	.dwattr $C$DW$346, DW_AT_const_value(0x01)
	.dwattr $C$DW$346, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$346, DW_AT_decl_column(0x05)

$C$DW$347	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$347, DW_AT_name("DCC_COUNT0SRC_INTOSC2")
	.dwattr $C$DW$347, DW_AT_const_value(0x02)
	.dwattr $C$DW$347, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$347, DW_AT_decl_column(0x05)

$C$DW$348	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$348, DW_AT_name("DCC_COUNT0SRC_CPU1SYSCLK")
	.dwattr $C$DW$348, DW_AT_const_value(0x05)
	.dwattr $C$DW$348, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$348, DW_AT_decl_column(0x05)

$C$DW$349	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$349, DW_AT_name("DCC_COUNT0SRC_CPU2SYSCLK")
	.dwattr $C$DW$349, DW_AT_const_value(0x06)
	.dwattr $C$DW$349, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0xba)
	.dwattr $C$DW$349, DW_AT_decl_column(0x05)

$C$DW$350	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$350, DW_AT_name("DCC_COUNT0SRC_XBAR")
	.dwattr $C$DW$350, DW_AT_const_value(0x0c)
	.dwattr $C$DW$350, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$350, DW_AT_decl_column(0x05)

$C$DW$351	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$351, DW_AT_name("DCC_COUNT0SRC_SYSPLLREFCLK")
	.dwattr $C$DW$351, DW_AT_const_value(0x0e)
	.dwattr $C$DW$351, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$351, DW_AT_decl_column(0x05)

$C$DW$352	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$352, DW_AT_name("DCC_COUNT0SRC_AUXPLLREFCLK")
	.dwattr $C$DW$352, DW_AT_const_value(0x0f)
	.dwattr $C$DW$352, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$352, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("DCC_Count0ClockSource")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dcc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$353	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$353, DW_AT_name("SYSCTL_DEVICE_QUAL")
	.dwattr $C$DW$353, DW_AT_const_value(0x00)
	.dwattr $C$DW$353, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x484)
	.dwattr $C$DW$353, DW_AT_decl_column(0x05)

$C$DW$354	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$354, DW_AT_name("SYSCTL_DEVICE_PINCOUNT")
	.dwattr $C$DW$354, DW_AT_const_value(0x01)
	.dwattr $C$DW$354, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x485)
	.dwattr $C$DW$354, DW_AT_decl_column(0x05)

$C$DW$355	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$355, DW_AT_name("SYSCTL_DEVICE_INSTASPIN")
	.dwattr $C$DW$355, DW_AT_const_value(0x02)
	.dwattr $C$DW$355, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x486)
	.dwattr $C$DW$355, DW_AT_decl_column(0x05)

$C$DW$356	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$356, DW_AT_name("SYSCTL_DEVICE_FLASH")
	.dwattr $C$DW$356, DW_AT_const_value(0x03)
	.dwattr $C$DW$356, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x487)
	.dwattr $C$DW$356, DW_AT_decl_column(0x05)

$C$DW$357	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$357, DW_AT_name("SYSCTL_DEVICE_PARTID")
	.dwattr $C$DW$357, DW_AT_const_value(0x04)
	.dwattr $C$DW$357, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x488)
	.dwattr $C$DW$357, DW_AT_decl_column(0x05)

$C$DW$358	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$358, DW_AT_name("SYSCTL_DEVICE_FAMILY")
	.dwattr $C$DW$358, DW_AT_const_value(0x05)
	.dwattr $C$DW$358, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x489)
	.dwattr $C$DW$358, DW_AT_decl_column(0x05)

$C$DW$359	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$359, DW_AT_name("SYSCTL_DEVICE_PARTNO")
	.dwattr $C$DW$359, DW_AT_const_value(0x06)
	.dwattr $C$DW$359, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x48a)
	.dwattr $C$DW$359, DW_AT_decl_column(0x05)

$C$DW$360	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$360, DW_AT_name("SYSCTL_DEVICE_CLASSID")
	.dwattr $C$DW$360, DW_AT_const_value(0x07)
	.dwattr $C$DW$360, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x48b)
	.dwattr $C$DW$360, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$27, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x483)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("SysCtl_DeviceParametric")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x48c)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$361	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$361, DW_AT_name("SYSCTL_SOURCE_AUXPLL")
	.dwattr $C$DW$361, DW_AT_const_value(0x00)
	.dwattr $C$DW$361, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x53c)
	.dwattr $C$DW$361, DW_AT_decl_column(0x03)

$C$DW$362	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$362, DW_AT_name("SYSCTL_SOURCE_SYSPLL")
	.dwattr $C$DW$362, DW_AT_const_value(0x01)
	.dwattr $C$DW$362, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x53e)
	.dwattr $C$DW$362, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x53a)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("SysCtl_PLLClockSource")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x540)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$363	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$363, DW_AT_name("SYSCTL_CORE_DEACTIVE")
	.dwattr $C$DW$363, DW_AT_const_value(0x00)
	.dwattr $C$DW$363, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x4a3)
	.dwattr $C$DW$363, DW_AT_decl_column(0x05)

$C$DW$364	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$364, DW_AT_name("SYSCTL_CORE_ACTIVE")
	.dwattr $C$DW$364, DW_AT_const_value(0x01)
	.dwattr $C$DW$364, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x4a4)
	.dwattr $C$DW$364, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x4a2)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("SysCtl_CoreReset")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x4a6)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$365	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$365, DW_AT_name("SYSCTL_USBTYPE")
	.dwattr $C$DW$365, DW_AT_const_value(0x00)
	.dwattr $C$DW$365, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x4d2)
	.dwattr $C$DW$365, DW_AT_decl_column(0x05)

$C$DW$366	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$366, DW_AT_name("SYSCTL_ECAPTYPE")
	.dwattr $C$DW$366, DW_AT_const_value(0x01)
	.dwattr $C$DW$366, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x4d4)
	.dwattr $C$DW$366, DW_AT_decl_column(0x05)

$C$DW$367	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$367, DW_AT_name("SYSCTL_SDFMTYPE")
	.dwattr $C$DW$367, DW_AT_const_value(0x02)
	.dwattr $C$DW$367, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x4d6)
	.dwattr $C$DW$367, DW_AT_decl_column(0x05)

$C$DW$368	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$368, DW_AT_name("SYSCTL_MEMMAPTYPE")
	.dwattr $C$DW$368, DW_AT_const_value(0x04)
	.dwattr $C$DW$368, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x4d8)
	.dwattr $C$DW$368, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$33, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x4d0)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("SysCtl_SelType")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x4da)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$369	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$369, DW_AT_name("SYSCTL_CPUSEL_CPU1")
	.dwattr $C$DW$369, DW_AT_const_value(0x00)
	.dwattr $C$DW$369, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x33d)
	.dwattr $C$DW$369, DW_AT_decl_column(0x05)

$C$DW$370	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$370, DW_AT_name("SYSCTL_CPUSEL_CPU2")
	.dwattr $C$DW$370, DW_AT_const_value(0x01)
	.dwattr $C$DW$370, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x33f)
	.dwattr $C$DW$370, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x33b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("SysCtl_CPUSel")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x340)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$371	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$371, DW_AT_name("SYSCTL_REG_SEL_CLKSRCCTL1")
	.dwattr $C$DW$371, DW_AT_const_value(0x00)
	.dwattr $C$DW$371, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x59d)
	.dwattr $C$DW$371, DW_AT_decl_column(0x05)

$C$DW$372	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$372, DW_AT_name("SYSCTL_REG_SEL_CLKSRCCTL2")
	.dwattr $C$DW$372, DW_AT_const_value(0x100)
	.dwattr $C$DW$372, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x59e)
	.dwattr $C$DW$372, DW_AT_decl_column(0x05)

$C$DW$373	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$373, DW_AT_name("SYSCTL_REG_SEL_CLKSRCCTL3")
	.dwattr $C$DW$373, DW_AT_const_value(0x200)
	.dwattr $C$DW$373, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x59f)
	.dwattr $C$DW$373, DW_AT_decl_column(0x05)

$C$DW$374	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$374, DW_AT_name("SYSCTL_REG_SEL_SYSPLLCTL1")
	.dwattr $C$DW$374, DW_AT_const_value(0x300)
	.dwattr $C$DW$374, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x5a0)
	.dwattr $C$DW$374, DW_AT_decl_column(0x05)

$C$DW$375	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$375, DW_AT_name("SYSCTL_REG_SEL_SYSPLLMULT")
	.dwattr $C$DW$375, DW_AT_const_value(0x600)
	.dwattr $C$DW$375, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x5a1)
	.dwattr $C$DW$375, DW_AT_decl_column(0x05)

$C$DW$376	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$376, DW_AT_name("SYSCTL_REG_SEL_AUXPLLCTL1")
	.dwattr $C$DW$376, DW_AT_const_value(0x700)
	.dwattr $C$DW$376, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x5a2)
	.dwattr $C$DW$376, DW_AT_decl_column(0x05)

$C$DW$377	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$377, DW_AT_name("SYSCTL_REG_SEL_AUXPLLMULT")
	.dwattr $C$DW$377, DW_AT_const_value(0xa00)
	.dwattr $C$DW$377, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x5a3)
	.dwattr $C$DW$377, DW_AT_decl_column(0x05)

$C$DW$378	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$378, DW_AT_name("SYSCTL_REG_SEL_SYSCLKDIVSEL")
	.dwattr $C$DW$378, DW_AT_const_value(0xb00)
	.dwattr $C$DW$378, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x5a4)
	.dwattr $C$DW$378, DW_AT_decl_column(0x05)

$C$DW$379	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$379, DW_AT_name("SYSCTL_REG_SEL_AUXCLKDIVSEL")
	.dwattr $C$DW$379, DW_AT_const_value(0xc00)
	.dwattr $C$DW$379, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x5a5)
	.dwattr $C$DW$379, DW_AT_decl_column(0x05)

$C$DW$380	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$380, DW_AT_name("SYSCTL_REG_SEL_PERCLKDIVSEL")
	.dwattr $C$DW$380, DW_AT_const_value(0xd00)
	.dwattr $C$DW$380, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x5a6)
	.dwattr $C$DW$380, DW_AT_decl_column(0x05)

$C$DW$381	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$381, DW_AT_name("SYSCTL_REG_SEL_LOSPCP")
	.dwattr $C$DW$381, DW_AT_const_value(0xf00)
	.dwattr $C$DW$381, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x5a7)
	.dwattr $C$DW$381, DW_AT_decl_column(0x05)

$C$DW$382	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$382, DW_AT_name("SYSCTL_REG_SEL_XTALCR")
	.dwattr $C$DW$382, DW_AT_const_value(0x1000)
	.dwattr $C$DW$382, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x5a8)
	.dwattr $C$DW$382, DW_AT_decl_column(0x05)

$C$DW$383	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$383, DW_AT_name("SYSCTL_REG_SEL_ETHERCATCLKCTL")
	.dwattr $C$DW$383, DW_AT_const_value(0x1100)
	.dwattr $C$DW$383, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x5a9)
	.dwattr $C$DW$383, DW_AT_decl_column(0x05)

$C$DW$384	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$384, DW_AT_name("SYSCTL_REG_SEL_CMCLKCTL")
	.dwattr $C$DW$384, DW_AT_const_value(0x1200)
	.dwattr $C$DW$384, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x5aa)
	.dwattr $C$DW$384, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$37, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x59b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("SysCtl_ClkRegSel")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x5ac)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$385	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$385, DW_AT_name("SYSCTL_REG_SEL_PIEVERRADDR")
	.dwattr $C$DW$385, DW_AT_const_value(0x200)
	.dwattr $C$DW$385, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x5b7)
	.dwattr $C$DW$385, DW_AT_decl_column(0x05)

$C$DW$386	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$386, DW_AT_name("SYSCTL_REG_SEL_PCLKCR0")
	.dwattr $C$DW$386, DW_AT_const_value(0x300)
	.dwattr $C$DW$386, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x5b8)
	.dwattr $C$DW$386, DW_AT_decl_column(0x05)

$C$DW$387	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$387, DW_AT_name("SYSCTL_REG_SEL_PCLKCR1")
	.dwattr $C$DW$387, DW_AT_const_value(0x400)
	.dwattr $C$DW$387, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x5b9)
	.dwattr $C$DW$387, DW_AT_decl_column(0x05)

$C$DW$388	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$388, DW_AT_name("SYSCTL_REG_SEL_PCLKCR2")
	.dwattr $C$DW$388, DW_AT_const_value(0x500)
	.dwattr $C$DW$388, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x5ba)
	.dwattr $C$DW$388, DW_AT_decl_column(0x05)

$C$DW$389	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$389, DW_AT_name("SYSCTL_REG_SEL_PCLKCR3")
	.dwattr $C$DW$389, DW_AT_const_value(0x600)
	.dwattr $C$DW$389, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x5bb)
	.dwattr $C$DW$389, DW_AT_decl_column(0x05)

$C$DW$390	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$390, DW_AT_name("SYSCTL_REG_SEL_PCLKCR4")
	.dwattr $C$DW$390, DW_AT_const_value(0x700)
	.dwattr $C$DW$390, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x5bc)
	.dwattr $C$DW$390, DW_AT_decl_column(0x05)

$C$DW$391	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$391, DW_AT_name("SYSCTL_REG_SEL_PCLKCR6")
	.dwattr $C$DW$391, DW_AT_const_value(0x900)
	.dwattr $C$DW$391, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x5bd)
	.dwattr $C$DW$391, DW_AT_decl_column(0x05)

$C$DW$392	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$392, DW_AT_name("SYSCTL_REG_SEL_PCLKCR7")
	.dwattr $C$DW$392, DW_AT_const_value(0xa00)
	.dwattr $C$DW$392, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x5be)
	.dwattr $C$DW$392, DW_AT_decl_column(0x05)

$C$DW$393	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$393, DW_AT_name("SYSCTL_REG_SEL_PCLKCR8")
	.dwattr $C$DW$393, DW_AT_const_value(0xb00)
	.dwattr $C$DW$393, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x5bf)
	.dwattr $C$DW$393, DW_AT_decl_column(0x05)

$C$DW$394	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$394, DW_AT_name("SYSCTL_REG_SEL_PCLKCR9")
	.dwattr $C$DW$394, DW_AT_const_value(0xc00)
	.dwattr $C$DW$394, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x5c0)
	.dwattr $C$DW$394, DW_AT_decl_column(0x05)

$C$DW$395	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$395, DW_AT_name("SYSCTL_REG_SEL_PCLKCR10")
	.dwattr $C$DW$395, DW_AT_const_value(0xd00)
	.dwattr $C$DW$395, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x5c1)
	.dwattr $C$DW$395, DW_AT_decl_column(0x05)

$C$DW$396	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$396, DW_AT_name("SYSCTL_REG_SEL_PCLKCR11")
	.dwattr $C$DW$396, DW_AT_const_value(0xe00)
	.dwattr $C$DW$396, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x5c2)
	.dwattr $C$DW$396, DW_AT_decl_column(0x05)

$C$DW$397	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$397, DW_AT_name("SYSCTL_REG_SEL_PCLKCR13")
	.dwattr $C$DW$397, DW_AT_const_value(0x1000)
	.dwattr $C$DW$397, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x5c3)
	.dwattr $C$DW$397, DW_AT_decl_column(0x05)

$C$DW$398	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$398, DW_AT_name("SYSCTL_REG_SEL_PCLKCR14")
	.dwattr $C$DW$398, DW_AT_const_value(0x1100)
	.dwattr $C$DW$398, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x5c4)
	.dwattr $C$DW$398, DW_AT_decl_column(0x05)

$C$DW$399	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$399, DW_AT_name("SYSCTL_REG_SEL_PCLKCR16")
	.dwattr $C$DW$399, DW_AT_const_value(0x1300)
	.dwattr $C$DW$399, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x5c5)
	.dwattr $C$DW$399, DW_AT_decl_column(0x05)

$C$DW$400	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$400, DW_AT_name("SYSCTL_REG_SEL_SECMSEL")
	.dwattr $C$DW$400, DW_AT_const_value(0x1400)
	.dwattr $C$DW$400, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x5c6)
	.dwattr $C$DW$400, DW_AT_decl_column(0x05)

$C$DW$401	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$401, DW_AT_name("SYSCTL_REG_SEL_LPMCR")
	.dwattr $C$DW$401, DW_AT_const_value(0x1500)
	.dwattr $C$DW$401, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x5c7)
	.dwattr $C$DW$401, DW_AT_decl_column(0x05)

$C$DW$402	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$402, DW_AT_name("SYSCTL_REG_SEL_GPIOLPMSEL0")
	.dwattr $C$DW$402, DW_AT_const_value(0x1600)
	.dwattr $C$DW$402, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x5c8)
	.dwattr $C$DW$402, DW_AT_decl_column(0x05)

$C$DW$403	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$403, DW_AT_name("SYSCTL_REG_SEL_GPIOLPMSEL1")
	.dwattr $C$DW$403, DW_AT_const_value(0x1700)
	.dwattr $C$DW$403, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x5c9)
	.dwattr $C$DW$403, DW_AT_decl_column(0x05)

$C$DW$404	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$404, DW_AT_name("SYSCTL_REG_SEL_PCLKCR17")
	.dwattr $C$DW$404, DW_AT_const_value(0x1800)
	.dwattr $C$DW$404, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x5ca)
	.dwattr $C$DW$404, DW_AT_decl_column(0x05)

$C$DW$405	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$405, DW_AT_name("SYSCTL_REG_SEL_PCLKCR18")
	.dwattr $C$DW$405, DW_AT_const_value(0x1900)
	.dwattr $C$DW$405, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x5cb)
	.dwattr $C$DW$405, DW_AT_decl_column(0x05)

$C$DW$406	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$406, DW_AT_name("SYSCTL_REG_SEL_PCLKCR20")
	.dwattr $C$DW$406, DW_AT_const_value(0x1b00)
	.dwattr $C$DW$406, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x5cc)
	.dwattr $C$DW$406, DW_AT_decl_column(0x05)

$C$DW$407	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$407, DW_AT_name("SYSCTL_REG_SEL_PCLKCR21")
	.dwattr $C$DW$407, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$407, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x5cd)
	.dwattr $C$DW$407, DW_AT_decl_column(0x05)

$C$DW$408	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$408, DW_AT_name("SYSCTL_REG_SEL_PCLKCR22")
	.dwattr $C$DW$408, DW_AT_const_value(0x1d00)
	.dwattr $C$DW$408, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x5ce)
	.dwattr $C$DW$408, DW_AT_decl_column(0x05)

$C$DW$409	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$409, DW_AT_name("SYSCTL_REG_SEL_PCLKCR23")
	.dwattr $C$DW$409, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$409, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x5cf)
	.dwattr $C$DW$409, DW_AT_decl_column(0x05)

$C$DW$410	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$410, DW_AT_name("SYSCTL_REG_SEL_ETHERCATCTL")
	.dwattr $C$DW$410, DW_AT_const_value(0x01)
	.dwattr $C$DW$410, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x5d2)
	.dwattr $C$DW$410, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x5b5)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("SysCtl_CpuRegSel")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x5d4)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


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


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$46


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


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$50


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


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$73, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$73, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$73

