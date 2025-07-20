;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:53 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{DB0230B2-443E-4605-A1D6-D26A94955DF2} 
	.sect	".text:ESCSS_isConfigurationLockEnabled"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$1, DW_AT_low_pc(||ESCSS_isConfigurationLockEnabled||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x4c6)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\escss.h",line 1223,column 1,is_stmt,address ||ESCSS_isConfigurationLockEnabled||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_isConfigurationLockEnabled||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: ESCSS_isConfigurationLockEnabled FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||ESCSS_isConfigurationLockEnabled||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("base")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -2]

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("configStatus")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -3]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1223| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\escss.h",line 1234,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1234| 
        MOVB      XAR6,#1               ; [CPU_ALU] |1234| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1234| 
        MOVB      AH,#0                 ; [CPU_ALU] |1234| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1234| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1234| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |1234| 
        ; branchcc occurs ; [] |1234| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\escss.h",line 1237,column 9,is_stmt,isa 0
        MOVB      *-SP[3],#1,UNC        ; [CPU_ALU] |1237| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\escss.h",line 1241,column 9,is_stmt,isa 0
        MOV       *-SP[3],#0            ; [CPU_ALU] |1241| 
||$C$L2||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\escss.h",line 1244,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1244| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\escss.h",line 1245,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x4dd)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:ESCSS_setRawInterruptStatus"
	.clink
	.global	||ESCSS_setRawInterruptStatus||

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("ESCSS_setRawInterruptStatus")
	.dwattr $C$DW$6, DW_AT_low_pc(||ESCSS_setRawInterruptStatus||)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_linkage_name("ESCSS_setRawInterruptStatus")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$6, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x32)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 52,column 1,is_stmt,address ||ESCSS_setRawInterruptStatus||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_setRawInterruptStatus||
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg0]

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("interruptMask")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("writeKey")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ESCSS_setRawInterruptStatus   FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||ESCSS_setRawInterruptStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -2]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("interruptMask")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -3]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("writeKey")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -4]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |52| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |52| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |52| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 66,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |66| 
        CMPB      AL,#165               ; [CPU_ALU] |66| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |66| 
        ; branchcc occurs ; [] |66| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 71,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |71| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |71| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |71| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |71| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |71| 
        MOVZ      AR6,AL                ; [CPU_ALU] |71| 
        MOV       ACC,*-SP[4] << #8     ; [CPU_ALU] |71| 
        AND       AL,#0xff00            ; [CPU_ALU] |71| 
        OR        AL,AR6                ; [CPU_ALU] |71| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |71| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 78,column 9,is_stmt,isa 0
        MOVB      *-SP[5],#1,UNC        ; [CPU_ALU] |78| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 85,column 9,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |85| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 88,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |88| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 89,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x59)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text:ESCSS_setGPINGroupCaptureTriggerSelect"
	.clink
	.global	||ESCSS_setGPINGroupCaptureTriggerSelect||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("ESCSS_setGPINGroupCaptureTriggerSelect")
	.dwattr $C$DW$15, DW_AT_low_pc(||ESCSS_setGPINGroupCaptureTriggerSelect||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("ESCSS_setGPINGroupCaptureTriggerSelect")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x61)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 100,column 1,is_stmt,address ||ESCSS_setGPINGroupCaptureTriggerSelect||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_setGPINGroupCaptureTriggerSelect||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("base")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("selectGPIN")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("triggerCapSelect")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ESCSS_setGPINGroupCaptureTriggerSelect FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_setGPINGroupCaptureTriggerSelect||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("base")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("selectGPIN")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -3]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("triggerCapSelect")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |100| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |100| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 115,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |115| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |115| 
        ; branchcc occurs ; [] |115| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 117,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |117| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |117| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |117| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |117| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |117| 
        LSL       AL,T                  ; [CPU_ALU] |117| 
        ANDB      AL,#0x07              ; [CPU_ALU] |117| 
        MOVU      ACC,AL                ; [CPU_ALU] |117| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |117| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |117| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 121,column 10,is_stmt,isa 0
        CMPB      AL,#4                 ; [CPU_ALU] |121| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |121| 
        ; branchcc occurs ; [] |121| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 123,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |123| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |123| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |123| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |123| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |123| 
        LSL       AL,T                  ; [CPU_ALU] |123| 
        ANDB      AL,#0x70              ; [CPU_ALU] |123| 
        MOVU      ACC,AL                ; [CPU_ALU] |123| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |123| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |123| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 127,column 10,is_stmt,isa 0
        CMPB      AL,#8                 ; [CPU_ALU] |127| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |127| 
        ; branchcc occurs ; [] |127| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 129,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |129| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |129| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |129| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |129| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |129| 
        LSL       AL,T                  ; [CPU_ALU] |129| 
        AND       AL,#0x0700            ; [CPU_ALU] |129| 
        MOVU      ACC,AL                ; [CPU_ALU] |129| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |129| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |129| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 133,column 10,is_stmt,isa 0
        CMPB      AL,#12                ; [CPU_ALU] |133| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |133| 
        ; branchcc occurs ; [] |133| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 135,column 9,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |135| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |135| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |135| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |135| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |135| 
        LSL       AL,T                  ; [CPU_ALU] |135| 
        AND       AL,#0x7000            ; [CPU_ALU] |135| 
        MOVU      ACC,AL                ; [CPU_ALU] |135| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |135| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |135| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L8||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:ESCSS_setGPOUTGroupCaptureTriggerSelect"
	.clink
	.global	||ESCSS_setGPOUTGroupCaptureTriggerSelect||

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("ESCSS_setGPOUTGroupCaptureTriggerSelect")
	.dwattr $C$DW$23, DW_AT_low_pc(||ESCSS_setGPOUTGroupCaptureTriggerSelect||)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_linkage_name("ESCSS_setGPOUTGroupCaptureTriggerSelect")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x99)
	.dwattr $C$DW$23, DW_AT_decl_column(0x01)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 156,column 1,is_stmt,address ||ESCSS_setGPOUTGroupCaptureTriggerSelect||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_setGPOUTGroupCaptureTriggerSelect||
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("base")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("selectGPOUT")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("triggerCapSelect")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ESCSS_setGPOUTGroupCaptureTriggerSelect FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_setGPOUTGroupCaptureTriggerSelect||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("base")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("selectGPOUT")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -3]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("triggerCapSelect")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |156| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |156| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |156| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 171,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |171| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |171| 
        ; branchcc occurs ; [] |171| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 173,column 9,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |173| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |173| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |173| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |173| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |173| 
        LSL       AL,T                  ; [CPU_ALU] |173| 
        ANDB      AL,#0x07              ; [CPU_ALU] |173| 
        MOVU      ACC,AL                ; [CPU_ALU] |173| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |173| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |173| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 177,column 10,is_stmt,isa 0
        CMPB      AL,#4                 ; [CPU_ALU] |177| 
        B         ||$C$L10||,NEQ        ; [CPU_ALU] |177| 
        ; branchcc occurs ; [] |177| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 179,column 9,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |179| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |179| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |179| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |179| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |179| 
        LSL       AL,T                  ; [CPU_ALU] |179| 
        ANDB      AL,#0x70              ; [CPU_ALU] |179| 
        MOVU      ACC,AL                ; [CPU_ALU] |179| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |179| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |179| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 183,column 10,is_stmt,isa 0
        CMPB      AL,#8                 ; [CPU_ALU] |183| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |183| 
        ; branchcc occurs ; [] |183| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 185,column 9,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |185| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |185| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |185| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |185| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |185| 
        LSL       AL,T                  ; [CPU_ALU] |185| 
        AND       AL,#0x0700            ; [CPU_ALU] |185| 
        MOVU      ACC,AL                ; [CPU_ALU] |185| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |185| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |185| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 189,column 10,is_stmt,isa 0
        CMPB      AL,#12                ; [CPU_ALU] |189| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |189| 
        ; branchcc occurs ; [] |189| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 191,column 9,is_stmt,isa 0
        MOVB      ACC,#26               ; [CPU_ALU] |191| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |191| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |191| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |191| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |191| 
        LSL       AL,T                  ; [CPU_ALU] |191| 
        AND       AL,#0x7000            ; [CPU_ALU] |191| 
        MOVU      ACC,AL                ; [CPU_ALU] |191| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |191| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |191| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L12||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0xc9)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:ESCSS_enableCPUReset"
	.clink
	.global	||ESCSS_enableCPUReset||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("ESCSS_enableCPUReset")
	.dwattr $C$DW$31, DW_AT_low_pc(||ESCSS_enableCPUReset||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("ESCSS_enableCPUReset")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$31, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 210,column 1,is_stmt,address ||ESCSS_enableCPUReset||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableCPUReset||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("writeKey")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableCPUReset          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableCPUReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("base")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -2]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("writeKey")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -3]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("apiStatus")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |210| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 218,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |218| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |218| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |218| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |218| 
        CMPB      AL,#1                 ; [CPU_ALU] |218| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |218| 
        ; branchcc occurs ; [] |218| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 220,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |220| 
        CMPB      AL,#165               ; [CPU_ALU] |220| 
        B         ||$C$L13||,NEQ        ; [CPU_ALU] |220| 
        ; branchcc occurs ; [] |220| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 225,column 13,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |225| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |225| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |225| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |225| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |225| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |225| 
        ORB       AL,#0x01              ; [CPU_ALU] |225| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 233,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |233| 
        B         ||$C$L15||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 240,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |240| 
        B         ||$C$L15||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 248,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |248| 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 251,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |251| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 252,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0xfc)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:ESCSS_disableCPUReset"
	.clink
	.global	||ESCSS_disableCPUReset||

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("ESCSS_disableCPUReset")
	.dwattr $C$DW$39, DW_AT_low_pc(||ESCSS_disableCPUReset||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("ESCSS_disableCPUReset")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$39, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x104)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 261,column 1,is_stmt,address ||ESCSS_disableCPUReset||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableCPUReset||
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("base")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("writeKey")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableCPUReset         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableCPUReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("base")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -2]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("writeKey")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -3]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("apiStatus")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |261| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |261| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 269,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |269| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |269| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |269| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |269| 
        CMPB      AL,#1                 ; [CPU_ALU] |269| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |269| 
        ; branchcc occurs ; [] |269| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 271,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |271| 
        CMPB      AL,#165               ; [CPU_ALU] |271| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |271| 
        ; branchcc occurs ; [] |271| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 276,column 13,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |276| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |276| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |276| 
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_ALU] |276| 
        MOVZ      AR7,AL                ; [CPU_ALU] |276| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |276| 
        MOVZ      AR6,AL                ; [CPU_ALU] |276| 
        AND       AR6,#0xff00           ; [CPU_ALU] |276| 
        MOV       AL,AR6                ; [CPU_ALU] |276| 
        OR        AL,AR7                ; [CPU_ALU] |276| 
        MOVZ      AR6,AL                ; [CPU_ALU] |276| 
        MOVB      ACC,#30               ; [CPU_ALU] |276| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |276| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |276| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |276| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 285,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |285| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 292,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |292| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 300,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |300| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 303,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |303| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 304,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x130)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:ESCSS_enableResetToNMI"
	.clink
	.global	||ESCSS_enableResetToNMI||

$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("ESCSS_enableResetToNMI")
	.dwattr $C$DW$47, DW_AT_low_pc(||ESCSS_enableResetToNMI||)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_linkage_name("ESCSS_enableResetToNMI")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$47, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x138)
	.dwattr $C$DW$47, DW_AT_decl_column(0x01)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 313,column 1,is_stmt,address ||ESCSS_enableResetToNMI||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableResetToNMI||
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("base")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg0]

$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("writeKey")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableResetToNMI        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableResetToNMI||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("base")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("writeKey")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -3]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("apiStatus")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |313| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |313| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 321,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |321| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |321| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |321| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |321| 
        CMPB      AL,#1                 ; [CPU_ALU] |321| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |321| 
        ; branchcc occurs ; [] |321| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 323,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |323| 
        CMPB      AL,#165               ; [CPU_ALU] |323| 
        B         ||$C$L19||,NEQ        ; [CPU_ALU] |323| 
        ; branchcc occurs ; [] |323| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 328,column 13,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |328| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |328| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |328| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |328| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |328| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |328| 
        ORB       AL,#0x02              ; [CPU_ALU] |328| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |328| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 336,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |336| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 343,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |343| 
        B         ||$C$L21||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 351,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |351| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 354,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |354| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 355,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x163)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text:ESCSS_disableResetToNMI"
	.clink
	.global	||ESCSS_disableResetToNMI||

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("ESCSS_disableResetToNMI")
	.dwattr $C$DW$55, DW_AT_low_pc(||ESCSS_disableResetToNMI||)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_linkage_name("ESCSS_disableResetToNMI")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$55, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$55, DW_AT_decl_column(0x01)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 364,column 1,is_stmt,address ||ESCSS_disableResetToNMI||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableResetToNMI||
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("base")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg0]

$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("writeKey")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableResetToNMI       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableResetToNMI||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("base")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -2]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("writeKey")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -3]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("apiStatus")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |364| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |364| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 371,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |371| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |371| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |371| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |371| 
        CMPB      AL,#1                 ; [CPU_ALU] |371| 
        B         ||$C$L23||,EQ         ; [CPU_ALU] |371| 
        ; branchcc occurs ; [] |371| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 373,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |373| 
        CMPB      AL,#165               ; [CPU_ALU] |373| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 378,column 13,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |378| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |378| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |378| 
        AND       AL,*+XAR4[0],#0xfffd  ; [CPU_ALU] |378| 
        MOVZ      AR7,AL                ; [CPU_ALU] |378| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |378| 
        MOVZ      AR6,AL                ; [CPU_ALU] |378| 
        AND       AR6,#0xff00           ; [CPU_ALU] |378| 
        MOV       AL,AR6                ; [CPU_ALU] |378| 
        OR        AL,AR7                ; [CPU_ALU] |378| 
        MOVZ      AR6,AL                ; [CPU_ALU] |378| 
        MOVB      ACC,#30               ; [CPU_ALU] |378| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |378| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |378| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |378| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 387,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |387| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 394,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |394| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 402,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |402| 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 405,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |405| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 406,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x196)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:ESCSS_enableResetToInterrupt"
	.clink
	.global	||ESCSS_enableResetToInterrupt||

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("ESCSS_enableResetToInterrupt")
	.dwattr $C$DW$63, DW_AT_low_pc(||ESCSS_enableResetToInterrupt||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("ESCSS_enableResetToInterrupt")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$63, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$63, DW_AT_decl_column(0x01)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 415,column 1,is_stmt,address ||ESCSS_enableResetToInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableResetToInterrupt||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("base")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("writeKey")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableResetToInterrupt  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableResetToInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("base")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -2]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("writeKey")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -3]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("apiStatus")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |415| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |415| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 423,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |423| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |423| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |423| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |423| 
        CMPB      AL,#1                 ; [CPU_ALU] |423| 
        B         ||$C$L26||,EQ         ; [CPU_ALU] |423| 
        ; branchcc occurs ; [] |423| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 425,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |425| 
        CMPB      AL,#165               ; [CPU_ALU] |425| 
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |425| 
        ; branchcc occurs ; [] |425| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 431,column 13,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |431| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |431| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |431| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |431| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |431| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |431| 
        ORB       AL,#0x04              ; [CPU_ALU] |431| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |431| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 439,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |439| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 446,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |446| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 454,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |454| 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 457,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |457| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 458,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x1ca)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:ESCSS_disableResetToInterrupt"
	.clink
	.global	||ESCSS_disableResetToInterrupt||

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("ESCSS_disableResetToInterrupt")
	.dwattr $C$DW$71, DW_AT_low_pc(||ESCSS_disableResetToInterrupt||)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_linkage_name("ESCSS_disableResetToInterrupt")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$71, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$71, DW_AT_decl_column(0x01)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 467,column 1,is_stmt,address ||ESCSS_disableResetToInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableResetToInterrupt||
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("base")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("writeKey")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableResetToInterrupt FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableResetToInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("base")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -2]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("writeKey")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -3]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("apiStatus")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |467| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |467| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 475,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |475| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |475| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |475| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |475| 
        CMPB      AL,#1                 ; [CPU_ALU] |475| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |475| 
        ; branchcc occurs ; [] |475| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 477,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |477| 
        CMPB      AL,#165               ; [CPU_ALU] |477| 
        B         ||$C$L28||,NEQ        ; [CPU_ALU] |477| 
        ; branchcc occurs ; [] |477| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 482,column 13,is_stmt,isa 0
        MOVB      ACC,#30               ; [CPU_ALU] |482| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |482| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |482| 
        AND       AL,*+XAR4[0],#0xfffb  ; [CPU_ALU] |482| 
        MOVZ      AR7,AL                ; [CPU_ALU] |482| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |482| 
        MOVZ      AR6,AL                ; [CPU_ALU] |482| 
        AND       AR6,#0xff00           ; [CPU_ALU] |482| 
        MOV       AL,AR6                ; [CPU_ALU] |482| 
        OR        AL,AR7                ; [CPU_ALU] |482| 
        MOVZ      AR6,AL                ; [CPU_ALU] |482| 
        MOVB      ACC,#30               ; [CPU_ALU] |482| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |482| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |482| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |482| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 491,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |491| 
        B         ||$C$L30||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 498,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |498| 
        B         ||$C$L30||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 506,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |506| 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 509,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |509| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 510,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x1fe)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text:ESCSS_configureSync0Connections"
	.clink
	.global	||ESCSS_configureSync0Connections||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("ESCSS_configureSync0Connections")
	.dwattr $C$DW$79, DW_AT_low_pc(||ESCSS_configureSync0Connections||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("ESCSS_configureSync0Connections")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$79, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x207)
	.dwattr $C$DW$79, DW_AT_decl_column(0x01)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 521,column 1,is_stmt,address ||ESCSS_configureSync0Connections||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_configureSync0Connections||
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("base")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("connectionInterrupt")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg12]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("writeKey")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ESCSS_configureSync0Connections FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||ESCSS_configureSync0Connections||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("base")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -2]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("connectionInterrupt")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -3]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("writeKey")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -4]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("apiStatus")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |521| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |521| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |521| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 535,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |535| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |535| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |535| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |535| 
        CMPB      AL,#1                 ; [CPU_ALU] |535| 
        B         ||$C$L32||,EQ         ; [CPU_ALU] |535| 
        ; branchcc occurs ; [] |535| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 537,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |537| 
        CMPB      AL,#165               ; [CPU_ALU] |537| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |537| 
        ; branchcc occurs ; [] |537| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 542,column 13,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |542| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |542| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |542| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |542| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |542| 
        MOVZ      AR6,AL                ; [CPU_ALU] |542| 
        MOV       ACC,*-SP[4] << #8     ; [CPU_ALU] |542| 
        AND       AL,#0xff00            ; [CPU_ALU] |542| 
        OR        AL,AR6                ; [CPU_ALU] |542| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |542| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 550,column 13,is_stmt,isa 0
        MOVB      *-SP[5],#1,UNC        ; [CPU_ALU] |550| 
        B         ||$C$L33||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 557,column 13,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |557| 
        B         ||$C$L33||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 565,column 9,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |565| 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 568,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |568| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 569,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x239)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:ESCSS_configureSync1Connections"
	.clink
	.global	||ESCSS_configureSync1Connections||

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("ESCSS_configureSync1Connections")
	.dwattr $C$DW$89, DW_AT_low_pc(||ESCSS_configureSync1Connections||)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_linkage_name("ESCSS_configureSync1Connections")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$89, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0x241)
	.dwattr $C$DW$89, DW_AT_decl_column(0x01)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 579,column 1,is_stmt,address ||ESCSS_configureSync1Connections||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_configureSync1Connections||
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("base")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg0]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("connectionInterrupt")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("writeKey")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ESCSS_configureSync1Connections FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||ESCSS_configureSync1Connections||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("base")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -2]

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("connectionInterrupt")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -3]

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("writeKey")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -4]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("apiStatus")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |579| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |579| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |579| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 592,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |592| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |592| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |592| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |592| 
        CMPB      AL,#1                 ; [CPU_ALU] |592| 
        B         ||$C$L35||,EQ         ; [CPU_ALU] |592| 
        ; branchcc occurs ; [] |592| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 594,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |594| 
        CMPB      AL,#165               ; [CPU_ALU] |594| 
        B         ||$C$L34||,NEQ        ; [CPU_ALU] |594| 
        ; branchcc occurs ; [] |594| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 600,column 13,is_stmt,isa 0
        MOVB      ACC,#34               ; [CPU_ALU] |600| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |600| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |600| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |600| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |600| 
        MOVZ      AR6,AL                ; [CPU_ALU] |600| 
        MOV       ACC,*-SP[4] << #8     ; [CPU_ALU] |600| 
        AND       AL,#0xff00            ; [CPU_ALU] |600| 
        OR        AL,AR6                ; [CPU_ALU] |600| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |600| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 608,column 13,is_stmt,isa 0
        MOVB      *-SP[5],#1,UNC        ; [CPU_ALU] |608| 
        B         ||$C$L36||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L34||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 615,column 13,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |615| 
        B         ||$C$L36||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L35||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 623,column 9,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |623| 
||$C$L36||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 626,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |626| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 627,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x273)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:ESCSS_enableConfigurationLock"
	.clink
	.global	||ESCSS_enableConfigurationLock||

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("ESCSS_enableConfigurationLock")
	.dwattr $C$DW$99, DW_AT_low_pc(||ESCSS_enableConfigurationLock||)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_linkage_name("ESCSS_enableConfigurationLock")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$99, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x27b)
	.dwattr $C$DW$99, DW_AT_decl_column(0x01)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 636,column 1,is_stmt,address ||ESCSS_enableConfigurationLock||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableConfigurationLock||
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_name("base")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg0]

$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("writeKey")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableConfigurationLock FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableConfigurationLock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("base")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_breg20 -2]

$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("writeKey")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -3]

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |636| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |636| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 644,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |644| 
        CMPB      AL,#165               ; [CPU_ALU] |644| 
        B         ||$C$L37||,NEQ        ; [CPU_ALU] |644| 
        ; branchcc occurs ; [] |644| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 649,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |649| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |649| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |649| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |649| 
        ORB       AL,#0x01              ; [CPU_ALU] |649| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |649| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 656,column 9,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |656| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 663,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |663| 
||$C$L38||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 666,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |666| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 667,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x29b)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text:ESCSS_enableIOConnectionLock"
	.clink
	.global	||ESCSS_enableIOConnectionLock||

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("ESCSS_enableIOConnectionLock")
	.dwattr $C$DW$106, DW_AT_low_pc(||ESCSS_enableIOConnectionLock||)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_linkage_name("ESCSS_enableIOConnectionLock")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$106, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$106, DW_AT_decl_column(0x01)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 676,column 1,is_stmt,address ||ESCSS_enableIOConnectionLock||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableIOConnectionLock||
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("base")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]

$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("writeKey")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableIOConnectionLock  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableIOConnectionLock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("base")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -2]

$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("writeKey")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -3]

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |676| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |676| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 684,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |684| 
        CMPB      AL,#165               ; [CPU_ALU] |684| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |684| 
        ; branchcc occurs ; [] |684| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 689,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |689| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |689| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |689| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |689| 
        ORB       AL,#0x10              ; [CPU_ALU] |689| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |689| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 696,column 9,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |696| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L39||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 703,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |703| 
||$C$L40||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 706,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |706| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 707,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x2c3)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text:ESCSS_disableIOConnectionLock"
	.clink
	.global	||ESCSS_disableIOConnectionLock||

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("ESCSS_disableIOConnectionLock")
	.dwattr $C$DW$113, DW_AT_low_pc(||ESCSS_disableIOConnectionLock||)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_linkage_name("ESCSS_disableIOConnectionLock")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$113, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x2cb)
	.dwattr $C$DW$113, DW_AT_decl_column(0x01)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 716,column 1,is_stmt,address ||ESCSS_disableIOConnectionLock||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableIOConnectionLock||
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("base")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("writeKey")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableIOConnectionLock FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableIOConnectionLock||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("base")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -2]

$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("writeKey")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -3]

$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |716| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |716| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 724,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |724| 
        CMPB      AL,#165               ; [CPU_ALU] |724| 
        B         ||$C$L41||,NEQ        ; [CPU_ALU] |724| 
        ; branchcc occurs ; [] |724| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 729,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |729| 
        AND       AL,*+XAR4[0],#0xffef  ; [CPU_ALU] |729| 
        MOVZ      AR6,AL                ; [CPU_ALU] |729| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |729| 
        AND       AL,#0xff00            ; [CPU_ALU] |729| 
        OR        AL,AR6                ; [CPU_ALU] |729| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |729| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 738,column 9,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |738| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L41||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 745,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |745| 
||$C$L42||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 748,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |748| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 749,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x2ed)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text:ESCSS_enableResetInputFromGpioPad"
	.clink
	.global	||ESCSS_enableResetInputFromGpioPad||

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("ESCSS_enableResetInputFromGpioPad")
	.dwattr $C$DW$120, DW_AT_low_pc(||ESCSS_enableResetInputFromGpioPad||)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_linkage_name("ESCSS_enableResetInputFromGpioPad")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$120, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$120, DW_AT_decl_line(0x2f5)
	.dwattr $C$DW$120, DW_AT_decl_column(0x01)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 758,column 1,is_stmt,address ||ESCSS_enableResetInputFromGpioPad||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableResetInputFromGpioPad||
$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("base")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg0]

$C$DW$122	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$122, DW_AT_name("writeKey")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableResetInputFromGpioPad FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableResetInputFromGpioPad||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("base")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg20 -2]

$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("writeKey")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg20 -3]

$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("apiStatus")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |758| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |758| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 766,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |766| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |766| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |766| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |766| 
        CMPB      AL,#1                 ; [CPU_ALU] |766| 
        B         ||$C$L44||,EQ         ; [CPU_ALU] |766| 
        ; branchcc occurs ; [] |766| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 768,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |768| 
        CMPB      AL,#165               ; [CPU_ALU] |768| 
        B         ||$C$L43||,NEQ        ; [CPU_ALU] |768| 
        ; branchcc occurs ; [] |768| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 773,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |773| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |773| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |773| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |773| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |773| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |773| 
        ORB       AL,#0x01              ; [CPU_ALU] |773| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |773| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 781,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |781| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L43||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 788,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |788| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L44||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 796,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |796| 
||$C$L45||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 799,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |799| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 800,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x320)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text:ESCSS_disableResetInputFromGpioPad"
	.clink
	.global	||ESCSS_disableResetInputFromGpioPad||

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("ESCSS_disableResetInputFromGpioPad")
	.dwattr $C$DW$128, DW_AT_low_pc(||ESCSS_disableResetInputFromGpioPad||)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_linkage_name("ESCSS_disableResetInputFromGpioPad")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$128, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x328)
	.dwattr $C$DW$128, DW_AT_decl_column(0x01)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 809,column 1,is_stmt,address ||ESCSS_disableResetInputFromGpioPad||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableResetInputFromGpioPad||
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("base")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg0]

$C$DW$130	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$130, DW_AT_name("writeKey")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableResetInputFromGpioPad FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableResetInputFromGpioPad||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("base")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg20 -2]

$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("writeKey")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_breg20 -3]

$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("apiStatus")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |809| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |809| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 817,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |817| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |817| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |817| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |817| 
        CMPB      AL,#1                 ; [CPU_ALU] |817| 
        B         ||$C$L47||,EQ         ; [CPU_ALU] |817| 
        ; branchcc occurs ; [] |817| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 819,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |819| 
        CMPB      AL,#165               ; [CPU_ALU] |819| 
        B         ||$C$L46||,NEQ        ; [CPU_ALU] |819| 
        ; branchcc occurs ; [] |819| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 824,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |824| 
        AND       AL,*+XAR4[2],#0xfffe  ; [CPU_ALU] |824| 
        MOVZ      AR6,AL                ; [CPU_ALU] |824| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |824| 
        AND       AL,#0xff00            ; [CPU_ALU] |824| 
        OR        AL,AR6                ; [CPU_ALU] |824| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |824| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 833,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |833| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L46||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 840,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |840| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L47||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 848,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |848| 
||$C$L48||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 851,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |851| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 852,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x354)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text:ESCSS_enableESCEEPROMI2CIoPadConnection"
	.clink
	.global	||ESCSS_enableESCEEPROMI2CIoPadConnection||

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("ESCSS_enableESCEEPROMI2CIoPadConnection")
	.dwattr $C$DW$136, DW_AT_low_pc(||ESCSS_enableESCEEPROMI2CIoPadConnection||)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_linkage_name("ESCSS_enableESCEEPROMI2CIoPadConnection")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$136, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x35c)
	.dwattr $C$DW$136, DW_AT_decl_column(0x01)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 861,column 1,is_stmt,address ||ESCSS_enableESCEEPROMI2CIoPadConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableESCEEPROMI2CIoPadConnection||
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("base")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg0]

$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("writeKey")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableESCEEPROMI2CIoPadConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableESCEEPROMI2CIoPadConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("base")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg20 -2]

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("writeKey")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg20 -3]

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("apiStatus")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |861| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |861| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 869,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |869| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |869| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |869| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |869| 
        CMPB      AL,#1                 ; [CPU_ALU] |869| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |869| 
        ; branchcc occurs ; [] |869| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 871,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |871| 
        CMPB      AL,#165               ; [CPU_ALU] |871| 
        B         ||$C$L49||,NEQ        ; [CPU_ALU] |871| 
        ; branchcc occurs ; [] |871| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 876,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |876| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |876| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |876| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |876| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |876| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |876| 
        ORB       AL,#0x02              ; [CPU_ALU] |876| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |876| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 884,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |884| 
        B         ||$C$L51||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L49||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 891,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |891| 
        B         ||$C$L51||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L50||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 899,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |899| 
||$C$L51||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 902,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |902| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 903,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x387)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text:ESCSS_disableESCEEPROMI2CIoPadConnection"
	.clink
	.global	||ESCSS_disableESCEEPROMI2CIoPadConnection||

$C$DW$144	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$144, DW_AT_name("ESCSS_disableESCEEPROMI2CIoPadConnection")
	.dwattr $C$DW$144, DW_AT_low_pc(||ESCSS_disableESCEEPROMI2CIoPadConnection||)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_linkage_name("ESCSS_disableESCEEPROMI2CIoPadConnection")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$144, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$144, DW_AT_decl_line(0x38f)
	.dwattr $C$DW$144, DW_AT_decl_column(0x01)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 912,column 1,is_stmt,address ||ESCSS_disableESCEEPROMI2CIoPadConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableESCEEPROMI2CIoPadConnection||
$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("base")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg0]

$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("writeKey")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableESCEEPROMI2CIoPadConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableESCEEPROMI2CIoPadConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("base")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg20 -2]

$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("writeKey")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg20 -3]

$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("apiStatus")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |912| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |912| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 920,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |920| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |920| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |920| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |920| 
        CMPB      AL,#1                 ; [CPU_ALU] |920| 
        B         ||$C$L53||,EQ         ; [CPU_ALU] |920| 
        ; branchcc occurs ; [] |920| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 922,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |922| 
        CMPB      AL,#165               ; [CPU_ALU] |922| 
        B         ||$C$L52||,NEQ        ; [CPU_ALU] |922| 
        ; branchcc occurs ; [] |922| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 927,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |927| 
        AND       AL,*+XAR4[2],#0xfffd  ; [CPU_ALU] |927| 
        MOVZ      AR6,AL                ; [CPU_ALU] |927| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |927| 
        AND       AL,#0xff00            ; [CPU_ALU] |927| 
        OR        AL,AR6                ; [CPU_ALU] |927| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |927| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 936,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |936| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L52||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 943,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |943| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L53||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 951,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |951| 
||$C$L54||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 954,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |954| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 955,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$144, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x3bb)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text:ESCSS_configurePortCount"
	.clink
	.global	||ESCSS_configurePortCount||

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("ESCSS_configurePortCount")
	.dwattr $C$DW$152, DW_AT_low_pc(||ESCSS_configurePortCount||)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_linkage_name("ESCSS_configurePortCount")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$152, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$152, DW_AT_decl_line(0x3c3)
	.dwattr $C$DW$152, DW_AT_decl_column(0x01)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 965,column 1,is_stmt,address ||ESCSS_configurePortCount||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_configurePortCount||
$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("base")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg0]

$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("portConfig")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg12]

$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("writeKey")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: ESCSS_configurePortCount      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||ESCSS_configurePortCount||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("base")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_breg20 -2]

$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("portConfig")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_breg20 -3]

$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("writeKey")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_breg20 -4]

$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |965| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |965| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |965| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 975,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |975| 
        CMPB      AL,#165               ; [CPU_ALU] |975| 
        B         ||$C$L55||,NEQ        ; [CPU_ALU] |975| 
        ; branchcc occurs ; [] |975| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 980,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |980| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |980| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |980| 
        MOV       ACC,*-SP[3] << #2     ; [CPU_ALU] |980| 
        ANDB      AL,#0x0c              ; [CPU_ALU] |980| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |980| 
        MOVZ      AR6,AL                ; [CPU_ALU] |980| 
        MOV       ACC,*-SP[4] << #8     ; [CPU_ALU] |980| 
        AND       AL,#0xff00            ; [CPU_ALU] |980| 
        OR        AL,AR6                ; [CPU_ALU] |980| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |980| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 990,column 9,is_stmt,isa 0
        MOVB      *-SP[5],#1,UNC        ; [CPU_ALU] |990| 
        B         ||$C$L56||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L55||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 997,column 9,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |997| 
||$C$L56||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1000,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |1000| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1001,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x3e9)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text:ESCSS_enableAutoCompensationTxClkIOPad"
	.clink
	.global	||ESCSS_enableAutoCompensationTxClkIOPad||

$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("ESCSS_enableAutoCompensationTxClkIOPad")
	.dwattr $C$DW$161, DW_AT_low_pc(||ESCSS_enableAutoCompensationTxClkIOPad||)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_linkage_name("ESCSS_enableAutoCompensationTxClkIOPad")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$161, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$161, DW_AT_decl_line(0x3f1)
	.dwattr $C$DW$161, DW_AT_decl_column(0x01)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1010,column 1,is_stmt,address ||ESCSS_enableAutoCompensationTxClkIOPad||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableAutoCompensationTxClkIOPad||
$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("base")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg0]

$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_name("writeKey")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableAutoCompensationTxClkIOPad FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableAutoCompensationTxClkIOPad||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("base")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg20 -2]

$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("writeKey")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_breg20 -3]

$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1010| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1010| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1018,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1018| 
        CMPB      AL,#165               ; [CPU_ALU] |1018| 
        B         ||$C$L57||,NEQ        ; [CPU_ALU] |1018| 
        ; branchcc occurs ; [] |1018| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1023,column 9,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |1023| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1023| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1023| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1023| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |1023| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |1023| 
        ORB       AL,#0x40              ; [CPU_ALU] |1023| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1023| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1031,column 9,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1031| 
        B         ||$C$L58||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L57||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1038,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1038| 
||$C$L58||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1041,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1041| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1042,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$161, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x412)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text:ESCSS_disableAutoCompensationTxClkIOPad"
	.clink
	.global	||ESCSS_disableAutoCompensationTxClkIOPad||

$C$DW$168	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$168, DW_AT_name("ESCSS_disableAutoCompensationTxClkIOPad")
	.dwattr $C$DW$168, DW_AT_low_pc(||ESCSS_disableAutoCompensationTxClkIOPad||)
	.dwattr $C$DW$168, DW_AT_high_pc(0x00)
	.dwattr $C$DW$168, DW_AT_linkage_name("ESCSS_disableAutoCompensationTxClkIOPad")
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$168, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$168, DW_AT_decl_line(0x41a)
	.dwattr $C$DW$168, DW_AT_decl_column(0x01)
	.dwattr $C$DW$168, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1051,column 1,is_stmt,address ||ESCSS_disableAutoCompensationTxClkIOPad||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableAutoCompensationTxClkIOPad||
$C$DW$169	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$169, DW_AT_name("base")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg0]

$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("writeKey")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableAutoCompensationTxClkIOPad FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableAutoCompensationTxClkIOPad||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("base")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg20 -2]

$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("writeKey")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_breg20 -3]

$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("keyMatchStatus")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1051| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1051| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1059,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1059| 
        CMPB      AL,#165               ; [CPU_ALU] |1059| 
        B         ||$C$L59||,NEQ        ; [CPU_ALU] |1059| 
        ; branchcc occurs ; [] |1059| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1064,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1064| 
        AND       AL,*+XAR4[4],#0xffbf  ; [CPU_ALU] |1064| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1064| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1064| 
        AND       AL,#0xff00            ; [CPU_ALU] |1064| 
        OR        AL,AR6                ; [CPU_ALU] |1064| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |1064| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1073,column 9,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1073| 
        B         ||$C$L60||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L59||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1080,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1080| 
||$C$L60||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1083,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1083| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1084,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$168, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x43c)
	.dwattr $C$DW$168, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$168

	.sect	".text:ESCSS_enableSync0GpioMuxConnection"
	.clink
	.global	||ESCSS_enableSync0GpioMuxConnection||

$C$DW$175	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$175, DW_AT_name("ESCSS_enableSync0GpioMuxConnection")
	.dwattr $C$DW$175, DW_AT_low_pc(||ESCSS_enableSync0GpioMuxConnection||)
	.dwattr $C$DW$175, DW_AT_high_pc(0x00)
	.dwattr $C$DW$175, DW_AT_linkage_name("ESCSS_enableSync0GpioMuxConnection")
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$175, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$175, DW_AT_decl_line(0x444)
	.dwattr $C$DW$175, DW_AT_decl_column(0x01)
	.dwattr $C$DW$175, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1093,column 1,is_stmt,address ||ESCSS_enableSync0GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableSync0GpioMuxConnection||
$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_name("base")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg0]

$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("writeKey")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableSync0GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableSync0GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("base")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_breg20 -2]

$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("writeKey")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_breg20 -3]

$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("apiStatus")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1093| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1093| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1101,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1101| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1101| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1101| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1101| 
        CMPB      AL,#1                 ; [CPU_ALU] |1101| 
        B         ||$C$L62||,EQ         ; [CPU_ALU] |1101| 
        ; branchcc occurs ; [] |1101| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1103,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1103| 
        CMPB      AL,#165               ; [CPU_ALU] |1103| 
        B         ||$C$L61||,NEQ        ; [CPU_ALU] |1103| 
        ; branchcc occurs ; [] |1103| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1108,column 13,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |1108| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1108| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1108| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1108| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |1108| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |1108| 
        ORB       AL,#0x08              ; [CPU_ALU] |1108| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1108| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1116,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1116| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L61||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1123,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1123| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L62||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1131,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1131| 
||$C$L63||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1134,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1135,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$175, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$175, DW_AT_TI_end_line(0x46f)
	.dwattr $C$DW$175, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$175

	.sect	".text:ESCSS_disableSync0GpioMuxConnection"
	.clink
	.global	||ESCSS_disableSync0GpioMuxConnection||

$C$DW$183	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$183, DW_AT_name("ESCSS_disableSync0GpioMuxConnection")
	.dwattr $C$DW$183, DW_AT_low_pc(||ESCSS_disableSync0GpioMuxConnection||)
	.dwattr $C$DW$183, DW_AT_high_pc(0x00)
	.dwattr $C$DW$183, DW_AT_linkage_name("ESCSS_disableSync0GpioMuxConnection")
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$183, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$183, DW_AT_decl_line(0x477)
	.dwattr $C$DW$183, DW_AT_decl_column(0x01)
	.dwattr $C$DW$183, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1144,column 1,is_stmt,address ||ESCSS_disableSync0GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableSync0GpioMuxConnection||
$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("base")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg0]

$C$DW$185	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$185, DW_AT_name("writeKey")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableSync0GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableSync0GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("base")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_breg20 -2]

$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("writeKey")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_breg20 -3]

$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("apiStatus")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1144| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1144| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1152,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1152| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1152| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1152| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1152| 
        CMPB      AL,#1                 ; [CPU_ALU] |1152| 
        B         ||$C$L65||,EQ         ; [CPU_ALU] |1152| 
        ; branchcc occurs ; [] |1152| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1154,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1154| 
        CMPB      AL,#165               ; [CPU_ALU] |1154| 
        B         ||$C$L64||,NEQ        ; [CPU_ALU] |1154| 
        ; branchcc occurs ; [] |1154| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1159,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1159| 
        AND       AL,*+XAR4[6],#0xfff7  ; [CPU_ALU] |1159| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1159| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1159| 
        AND       AL,#0xff00            ; [CPU_ALU] |1159| 
        OR        AL,AR6                ; [CPU_ALU] |1159| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |1159| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1169,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1169| 
        B         ||$C$L66||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L64||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1176,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1176| 
        B         ||$C$L66||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L65||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1184,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1184| 
||$C$L66||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1187,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1187| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1188,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$183, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$183, DW_AT_TI_end_line(0x4a4)
	.dwattr $C$DW$183, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$183

	.sect	".text:ESCSS_enableSync1GpioMuxConnection"
	.clink
	.global	||ESCSS_enableSync1GpioMuxConnection||

$C$DW$191	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$191, DW_AT_name("ESCSS_enableSync1GpioMuxConnection")
	.dwattr $C$DW$191, DW_AT_low_pc(||ESCSS_enableSync1GpioMuxConnection||)
	.dwattr $C$DW$191, DW_AT_high_pc(0x00)
	.dwattr $C$DW$191, DW_AT_linkage_name("ESCSS_enableSync1GpioMuxConnection")
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$191, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$191, DW_AT_decl_line(0x4ac)
	.dwattr $C$DW$191, DW_AT_decl_column(0x01)
	.dwattr $C$DW$191, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1197,column 1,is_stmt,address ||ESCSS_enableSync1GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableSync1GpioMuxConnection||
$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_name("base")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg0]

$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("writeKey")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableSync1GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableSync1GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("base")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_breg20 -2]

$C$DW$195	.dwtag  DW_TAG_variable
	.dwattr $C$DW$195, DW_AT_name("writeKey")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg20 -3]

$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("apiStatus")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1197| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1197| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1205,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1205| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1205| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1205| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1205| 
        CMPB      AL,#1                 ; [CPU_ALU] |1205| 
        B         ||$C$L68||,EQ         ; [CPU_ALU] |1205| 
        ; branchcc occurs ; [] |1205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1207,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1207| 
        CMPB      AL,#165               ; [CPU_ALU] |1207| 
        B         ||$C$L67||,NEQ        ; [CPU_ALU] |1207| 
        ; branchcc occurs ; [] |1207| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1212,column 13,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |1212| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1212| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1212| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1212| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |1212| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |1212| 
        ORB       AL,#0x80              ; [CPU_ALU] |1212| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1212| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1220,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1220| 
        B         ||$C$L69||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L67||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1227,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1227| 
        B         ||$C$L69||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L68||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1235,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1235| 
||$C$L69||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1238,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1238| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1239,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$191, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x4d7)
	.dwattr $C$DW$191, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$191

	.sect	".text:ESCSS_disableSync1GpioMuxConnection"
	.clink
	.global	||ESCSS_disableSync1GpioMuxConnection||

$C$DW$199	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$199, DW_AT_name("ESCSS_disableSync1GpioMuxConnection")
	.dwattr $C$DW$199, DW_AT_low_pc(||ESCSS_disableSync1GpioMuxConnection||)
	.dwattr $C$DW$199, DW_AT_high_pc(0x00)
	.dwattr $C$DW$199, DW_AT_linkage_name("ESCSS_disableSync1GpioMuxConnection")
	.dwattr $C$DW$199, DW_AT_external
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$199, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$199, DW_AT_decl_line(0x4df)
	.dwattr $C$DW$199, DW_AT_decl_column(0x01)
	.dwattr $C$DW$199, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1248,column 1,is_stmt,address ||ESCSS_disableSync1GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableSync1GpioMuxConnection||
$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_name("base")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg0]

$C$DW$201	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$201, DW_AT_name("writeKey")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableSync1GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableSync1GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("base")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_breg20 -2]

$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("writeKey")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_breg20 -3]

$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("apiStatus")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1248| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1248| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1256,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1256| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1256| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1256| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1256| 
        CMPB      AL,#1                 ; [CPU_ALU] |1256| 
        B         ||$C$L71||,EQ         ; [CPU_ALU] |1256| 
        ; branchcc occurs ; [] |1256| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1258,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1258| 
        CMPB      AL,#165               ; [CPU_ALU] |1258| 
        B         ||$C$L70||,NEQ        ; [CPU_ALU] |1258| 
        ; branchcc occurs ; [] |1258| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1263,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1263| 
        AND       AL,*+XAR4[6],#0xff7f  ; [CPU_ALU] |1263| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1263| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1263| 
        AND       AL,#0xff00            ; [CPU_ALU] |1263| 
        OR        AL,AR6                ; [CPU_ALU] |1263| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |1263| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1272,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1272| 
        B         ||$C$L72||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L70||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1279,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1279| 
        B         ||$C$L72||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L71||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1287,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1287| 
||$C$L72||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1290,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1290| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1291,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$199, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x50b)
	.dwattr $C$DW$199, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$199

	.sect	".text:ESCSS_enableLatch0GpioMuxConnection"
	.clink
	.global	||ESCSS_enableLatch0GpioMuxConnection||

$C$DW$207	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$207, DW_AT_name("ESCSS_enableLatch0GpioMuxConnection")
	.dwattr $C$DW$207, DW_AT_low_pc(||ESCSS_enableLatch0GpioMuxConnection||)
	.dwattr $C$DW$207, DW_AT_high_pc(0x00)
	.dwattr $C$DW$207, DW_AT_linkage_name("ESCSS_enableLatch0GpioMuxConnection")
	.dwattr $C$DW$207, DW_AT_external
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$207, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$207, DW_AT_decl_line(0x513)
	.dwattr $C$DW$207, DW_AT_decl_column(0x01)
	.dwattr $C$DW$207, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1300,column 1,is_stmt,address ||ESCSS_enableLatch0GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableLatch0GpioMuxConnection||
$C$DW$208	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$208, DW_AT_name("base")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg0]

$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_name("writeKey")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableLatch0GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableLatch0GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("base")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_breg20 -2]

$C$DW$211	.dwtag  DW_TAG_variable
	.dwattr $C$DW$211, DW_AT_name("writeKey")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_breg20 -3]

$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("apiStatus")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1300| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1300| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1308,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1308| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1308| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1308| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1308| 
        CMPB      AL,#1                 ; [CPU_ALU] |1308| 
        B         ||$C$L74||,EQ         ; [CPU_ALU] |1308| 
        ; branchcc occurs ; [] |1308| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1310,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1310| 
        CMPB      AL,#165               ; [CPU_ALU] |1310| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |1310| 
        ; branchcc occurs ; [] |1310| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1315,column 13,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1315| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1315| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1315| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1315| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |1315| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |1315| 
        ORB       AL,#0x08              ; [CPU_ALU] |1315| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1315| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1323,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1323| 
        B         ||$C$L75||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L73||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1330,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1330| 
        B         ||$C$L75||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L74||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1338,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1338| 
||$C$L75||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1341,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1341| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1342,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$207, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x53e)
	.dwattr $C$DW$207, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$207

	.sect	".text:ESCSS_disableLatch0GpioMuxConnection"
	.clink
	.global	||ESCSS_disableLatch0GpioMuxConnection||

$C$DW$215	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$215, DW_AT_name("ESCSS_disableLatch0GpioMuxConnection")
	.dwattr $C$DW$215, DW_AT_low_pc(||ESCSS_disableLatch0GpioMuxConnection||)
	.dwattr $C$DW$215, DW_AT_high_pc(0x00)
	.dwattr $C$DW$215, DW_AT_linkage_name("ESCSS_disableLatch0GpioMuxConnection")
	.dwattr $C$DW$215, DW_AT_external
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$215, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$215, DW_AT_decl_line(0x546)
	.dwattr $C$DW$215, DW_AT_decl_column(0x01)
	.dwattr $C$DW$215, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1351,column 1,is_stmt,address ||ESCSS_disableLatch0GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableLatch0GpioMuxConnection||
$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_name("base")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg0]

$C$DW$217	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$217, DW_AT_name("writeKey")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableLatch0GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableLatch0GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("base")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_breg20 -2]

$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("writeKey")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_breg20 -3]

$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("apiStatus")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1351| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1351| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1359,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1359| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1359| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1359| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1359| 
        CMPB      AL,#1                 ; [CPU_ALU] |1359| 
        B         ||$C$L77||,EQ         ; [CPU_ALU] |1359| 
        ; branchcc occurs ; [] |1359| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1361,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1361| 
        CMPB      AL,#165               ; [CPU_ALU] |1361| 
        B         ||$C$L76||,NEQ        ; [CPU_ALU] |1361| 
        ; branchcc occurs ; [] |1361| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1366,column 13,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1366| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1366| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1366| 
        AND       AL,*+XAR4[0],#0xfff7  ; [CPU_ALU] |1366| 
        MOVZ      AR7,AL                ; [CPU_ALU] |1366| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1366| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1366| 
        AND       AR6,#0xff00           ; [CPU_ALU] |1366| 
        MOV       AL,AR6                ; [CPU_ALU] |1366| 
        OR        AL,AR7                ; [CPU_ALU] |1366| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1366| 
        MOVB      ACC,#8                ; [CPU_ALU] |1366| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1366| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1366| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1366| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1375,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1375| 
        B         ||$C$L78||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L76||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1382,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1382| 
        B         ||$C$L78||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L77||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1390,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1390| 
||$C$L78||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1393,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1393| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1394,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$215, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x572)
	.dwattr $C$DW$215, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$215

	.sect	".text:ESCSS_enableLatch1GpioMuxConnection"
	.clink
	.global	||ESCSS_enableLatch1GpioMuxConnection||

$C$DW$223	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$223, DW_AT_name("ESCSS_enableLatch1GpioMuxConnection")
	.dwattr $C$DW$223, DW_AT_low_pc(||ESCSS_enableLatch1GpioMuxConnection||)
	.dwattr $C$DW$223, DW_AT_high_pc(0x00)
	.dwattr $C$DW$223, DW_AT_linkage_name("ESCSS_enableLatch1GpioMuxConnection")
	.dwattr $C$DW$223, DW_AT_external
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$223, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$223, DW_AT_decl_line(0x57a)
	.dwattr $C$DW$223, DW_AT_decl_column(0x01)
	.dwattr $C$DW$223, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1403,column 1,is_stmt,address ||ESCSS_enableLatch1GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_enableLatch1GpioMuxConnection||
$C$DW$224	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$224, DW_AT_name("base")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg0]

$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("writeKey")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_enableLatch1GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_enableLatch1GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("base")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_breg20 -2]

$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("writeKey")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_breg20 -3]

$C$DW$228	.dwtag  DW_TAG_variable
	.dwattr $C$DW$228, DW_AT_name("apiStatus")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1403| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1403| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1411,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1411| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1411| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1411| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1411| 
        CMPB      AL,#1                 ; [CPU_ALU] |1411| 
        B         ||$C$L80||,EQ         ; [CPU_ALU] |1411| 
        ; branchcc occurs ; [] |1411| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1413,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1413| 
        CMPB      AL,#165               ; [CPU_ALU] |1413| 
        B         ||$C$L79||,NEQ        ; [CPU_ALU] |1413| 
        ; branchcc occurs ; [] |1413| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1418,column 13,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1418| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1418| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1418| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1418| 
        AND       AL,AL,#0xff00         ; [CPU_ALU] |1418| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |1418| 
        ORB       AL,#0x80              ; [CPU_ALU] |1418| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1418| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1426,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1426| 
        B         ||$C$L81||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L79||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1433,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1433| 
        B         ||$C$L81||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L80||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1441,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1441| 
||$C$L81||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1444,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1444| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1445,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$223, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x5a5)
	.dwattr $C$DW$223, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$223

	.sect	".text:ESCSS_disableLatch1GpioMuxConnection"
	.clink
	.global	||ESCSS_disableLatch1GpioMuxConnection||

$C$DW$231	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$231, DW_AT_name("ESCSS_disableLatch1GpioMuxConnection")
	.dwattr $C$DW$231, DW_AT_low_pc(||ESCSS_disableLatch1GpioMuxConnection||)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_linkage_name("ESCSS_disableLatch1GpioMuxConnection")
	.dwattr $C$DW$231, DW_AT_external
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$231, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$231, DW_AT_decl_line(0x5ad)
	.dwattr $C$DW$231, DW_AT_decl_column(0x01)
	.dwattr $C$DW$231, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1454,column 1,is_stmt,address ||ESCSS_disableLatch1GpioMuxConnection||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_disableLatch1GpioMuxConnection||
$C$DW$232	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$232, DW_AT_name("base")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg0]

$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_name("writeKey")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_disableLatch1GpioMuxConnection FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||ESCSS_disableLatch1GpioMuxConnection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$234	.dwtag  DW_TAG_variable
	.dwattr $C$DW$234, DW_AT_name("base")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_breg20 -2]

$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("writeKey")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_breg20 -3]

$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("apiStatus")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1454| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1454| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1462,column 5,is_stmt,isa 0
        MOVL      XAR4,#360192          ; [CPU_ARAU] |1462| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1462| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("ESCSS_isConfigurationLockEnabled")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #||ESCSS_isConfigurationLockEnabled|| ; [CPU_ALU] |1462| 
        ; call occurs [#||ESCSS_isConfigurationLockEnabled||] ; [] |1462| 
        CMPB      AL,#1                 ; [CPU_ALU] |1462| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |1462| 
        ; branchcc occurs ; [] |1462| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1464,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1464| 
        CMPB      AL,#165               ; [CPU_ALU] |1464| 
        B         ||$C$L82||,NEQ        ; [CPU_ALU] |1464| 
        ; branchcc occurs ; [] |1464| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1469,column 13,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |1469| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1469| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1469| 
        AND       AL,*+XAR4[0],#0xff7f  ; [CPU_ALU] |1469| 
        MOVZ      AR7,AL                ; [CPU_ALU] |1469| 
        MOV       ACC,*-SP[3] << #8     ; [CPU_ALU] |1469| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1469| 
        AND       AR6,#0xff00           ; [CPU_ALU] |1469| 
        MOV       AL,AR6                ; [CPU_ALU] |1469| 
        OR        AL,AR7                ; [CPU_ALU] |1469| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1469| 
        MOVB      ACC,#8                ; [CPU_ALU] |1469| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1469| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1469| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |1469| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1478,column 13,is_stmt,isa 0
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |1478| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L82||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1485,column 13,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1485| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L83||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1493,column 9,is_stmt,isa 0
        MOV       *-SP[4],#0            ; [CPU_ALU] |1493| 
||$C$L84||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1496,column 5,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1496| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1497,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$231, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x5d9)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$231

	.sect	".text:ESCSS_configureEEPROMSize"
	.clink
	.global	||ESCSS_configureEEPROMSize||

$C$DW$239	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$239, DW_AT_name("ESCSS_configureEEPROMSize")
	.dwattr $C$DW$239, DW_AT_low_pc(||ESCSS_configureEEPROMSize||)
	.dwattr $C$DW$239, DW_AT_high_pc(0x00)
	.dwattr $C$DW$239, DW_AT_linkage_name("ESCSS_configureEEPROMSize")
	.dwattr $C$DW$239, DW_AT_external
	.dwattr $C$DW$239, DW_AT_decl_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$239, DW_AT_decl_line(0x5e1)
	.dwattr $C$DW$239, DW_AT_decl_column(0x01)
	.dwattr $C$DW$239, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1506,column 1,is_stmt,address ||ESCSS_configureEEPROMSize||,isa 0

	.dwfde $C$DW$CIE, ||ESCSS_configureEEPROMSize||
$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_name("base")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg0]

$C$DW$241	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$241, DW_AT_name("eepromSize")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: ESCSS_configureEEPROMSize     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||ESCSS_configureEEPROMSize||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("base")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_breg20 -2]

$C$DW$243	.dwtag  DW_TAG_variable
	.dwattr $C$DW$243, DW_AT_name("eepromSize")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |1506| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1506| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1515,column 5,is_stmt,isa 0
        B         ||$C$L87||,UNC        ; [CPU_ALU] |1515| 
        ; branch occurs ; [] |1515| 
||$C$L85||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1521,column 13,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1521| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1521| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1521| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |1521| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1523,column 13,is_stmt,isa 0
        B         ||$C$L88||,UNC        ; [CPU_ALU] |1523| 
        ; branch occurs ; [] |1523| 
||$C$L86||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1529,column 13,is_stmt,isa 0
        MOVB      ACC,#20               ; [CPU_ALU] |1529| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1529| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1529| 
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |1529| 
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1531,column 13,is_stmt,isa 0
        B         ||$C$L88||,UNC        ; [CPU_ALU] |1531| 
        ; branch occurs ; [] |1531| 
||$C$L87||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/escss.c",line 1515,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |1515| 
        B         ||$C$L85||,EQ         ; [CPU_ALU] |1515| 
        ; branchcc occurs ; [] |1515| 
        CMPB      AL,#1                 ; [CPU_ALU] |1515| 
        B         ||$C$L86||,EQ         ; [CPU_ALU] |1515| 
        ; branchcc occurs ; [] |1515| 
        B         ||$C$L88||,UNC        ; [CPU_ALU] |1515| 
        ; branch occurs ; [] |1515| 
||$C$L88||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$239, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/escss.c")
	.dwattr $C$DW$239, DW_AT_TI_end_line(0x602)
	.dwattr $C$DW$239, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$239


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
$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("ESCSS_GROUP_CAPTURE_SELECT0")
	.dwattr $C$DW$245, DW_AT_const_value(0x00)
	.dwattr $C$DW$245, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x109)
	.dwattr $C$DW$245, DW_AT_decl_column(0x05)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("ESCSS_GROUP_CAPTURE_SELECT1")
	.dwattr $C$DW$246, DW_AT_const_value(0x04)
	.dwattr $C$DW$246, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$246, DW_AT_decl_column(0x05)

$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("ESCSS_GROUP_CAPTURE_SELECT2")
	.dwattr $C$DW$247, DW_AT_const_value(0x08)
	.dwattr $C$DW$247, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$247, DW_AT_decl_column(0x05)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("ESCSS_GROUP_CAPTURE_SELECT3")
	.dwattr $C$DW$248, DW_AT_const_value(0x0c)
	.dwattr $C$DW$248, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$248, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x108)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("ESCSS_GroupCaptureSelect")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("ESCSS_SOF_CAPTURE_TRIGGER")
	.dwattr $C$DW$249, DW_AT_const_value(0x00)
	.dwattr $C$DW$249, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$249, DW_AT_decl_column(0x05)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("ESCSS_SYNC0_CAPTURE_TRIGGER")
	.dwattr $C$DW$250, DW_AT_const_value(0x04)
	.dwattr $C$DW$250, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$250, DW_AT_decl_column(0x05)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("ESCSS_SYNC1_CAPTURE_TRIGGER")
	.dwattr $C$DW$251, DW_AT_const_value(0x05)
	.dwattr $C$DW$251, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$251, DW_AT_decl_column(0x05)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("ESCSS_LATCH0_CAPTURE_TRIGGER")
	.dwattr $C$DW$252, DW_AT_const_value(0x06)
	.dwattr $C$DW$252, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$252, DW_AT_decl_column(0x05)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("ESCSS_LATCH1_CAPTURE_TRIGGER")
	.dwattr $C$DW$253, DW_AT_const_value(0x07)
	.dwattr $C$DW$253, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$253, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("ESCSS_CaptureTrigger")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$254	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$254, DW_AT_name("ESCSS_ONE_PORT_SELECTION")
	.dwattr $C$DW$254, DW_AT_const_value(0x00)
	.dwattr $C$DW$254, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$254, DW_AT_decl_column(0x05)

$C$DW$255	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$255, DW_AT_name("ESCSS_TWO_PORT_SELECTION")
	.dwattr $C$DW$255, DW_AT_const_value(0x01)
	.dwattr $C$DW$255, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$255, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xef)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("ESCSS_PortSelection")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$256	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$256, DW_AT_name("ESCSS_LESS_THAN_16K")
	.dwattr $C$DW$256, DW_AT_const_value(0x00)
	.dwattr $C$DW$256, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$256, DW_AT_decl_column(0x05)

$C$DW$257	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$257, DW_AT_name("ESCSS_GREATER_THAN_16K")
	.dwattr $C$DW$257, DW_AT_const_value(0x01)
	.dwattr $C$DW$257, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$257, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("ESCSS_SizeSelect")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\escss.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xfe)
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


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$32


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


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


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


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$40, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$40, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$40

