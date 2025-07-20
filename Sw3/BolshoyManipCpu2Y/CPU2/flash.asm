;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:53 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/flash.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("IPC_Instance")
	.dwattr $C$DW$1, DW_AT_linkage_name("IPC_Instance")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x130)
	.dwattr $C$DW$1, DW_AT_decl_column(0x1d)

;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{1AE808F7-5564-47AB-AE85-660D7502430D} 
	.sect	".TI.ramfunc:Flash_setWaitstates"
	.clink

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("Flash_setWaitstates")
	.dwattr $C$DW$2, DW_AT_low_pc(||Flash_setWaitstates||)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_linkage_name("Flash_setWaitstates")
	.dwattr $C$DW$2, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 271,column 1,is_stmt,address ||Flash_setWaitstates||,isa 0

	.dwfde $C$DW$CIE, ||Flash_setWaitstates||
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("ctrlBase")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg0]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("waitstates")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: Flash_setWaitstates           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||Flash_setWaitstates||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("ctrlBase")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("waitstates")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |271| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |271| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 282,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |282| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 286,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |286| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[3] << 8      ; [CPU_ALU] |286| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |286| 
        AND       PL,#61695             ; [CPU_ALU] |286| 
        OR        AH,PH                 ; [CPU_ALU] |286| 
        OR        AL,PL                 ; [CPU_ALU] |286| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |286| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 290,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |290| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 291,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".TI.ramfunc:Flash_setBankPowerMode"
	.clink

$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("Flash_setBankPowerMode")
	.dwattr $C$DW$8, DW_AT_low_pc(||Flash_setBankPowerMode||)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_linkage_name("Flash_setBankPowerMode")
	.dwattr $C$DW$8, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x140)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 322,column 1,is_stmt,address ||Flash_setBankPowerMode||,isa 0

	.dwfde $C$DW$CIE, ||Flash_setBankPowerMode||
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("ctrlBase")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg0]

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("bank")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("powerMode")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: Flash_setBankPowerMode        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||Flash_setBankPowerMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("ctrlBase")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -2]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("bank")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -3]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("powerMode")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |322| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |322| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |322| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 328,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |328| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 333,column 5,is_stmt,isa 0
        MOV       PH,#0                 ; [CPU_ALU] |333| 
        MOV       PL,*-SP[4]            ; [CPU_ALU] |333| 
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |333| 
        MOVP      T,AL                  ; [CPU_ALU] 
        LSLL      ACC,T                 ; [CPU_ALU] |333| 
        MOVL      P,ACC                 ; [CPU_ALU] |333| 
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |333| 
        MOV       T,AL                  ; [CPU_ALU] |333| 
        MOVB      AL,#3                 ; [CPU_ALU] |333| 
        LSL       AL,T                  ; [CPU_ALU] |333| 
        NOT       AL                    ; [CPU_ALU] |333| 
        MOVZ      AR6,AL                ; [CPU_ALU] |333| 
        MOVB      ACC,#32               ; [CPU_ALU] |333| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |333| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |333| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |333| 
        AND       ACC,AR6               ; [CPU_ALU] |333| 
        OR        AL,PL                 ; [CPU_ALU] |333| 
        OR        AH,PH                 ; [CPU_ALU] |333| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |333| 
        MOVB      ACC,#32               ; [CPU_ALU] |333| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |333| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |333| 
        MOVL      *+XAR4[0],XAR7        ; [CPU_ALU] |333| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 337,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |337| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 338,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".TI.ramfunc:Flash_setPumpPowerMode"
	.clink

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("Flash_setPumpPowerMode")
	.dwattr $C$DW$16, DW_AT_low_pc(||Flash_setPumpPowerMode||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("Flash_setPumpPowerMode")
	.dwattr $C$DW$16, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x167)
	.dwattr $C$DW$16, DW_AT_decl_column(0x01)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 360,column 1,is_stmt,address ||Flash_setPumpPowerMode||,isa 0

	.dwfde $C$DW$CIE, ||Flash_setPumpPowerMode||
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("ctrlBase")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("powerMode")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: Flash_setPumpPowerMode        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||Flash_setPumpPowerMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("ctrlBase")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("powerMode")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |360| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |360| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 366,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |366| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 371,column 5,is_stmt,isa 0
        MOVB      ACC,#36               ; [CPU_ALU] |371| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |371| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |371| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |371| 
        AND       AL,#65534             ; [CPU_ALU] |371| 
        OR        ACC,*-SP[3]           ; [CPU_ALU] |371| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |371| 
        MOVB      ACC,#36               ; [CPU_ALU] |371| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |371| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |371| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |371| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 374,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |374| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 375,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".TI.ramfunc:Flash_enablePrefetch"
	.clink

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("Flash_enablePrefetch")
	.dwattr $C$DW$22, DW_AT_low_pc(||Flash_enablePrefetch||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("Flash_enablePrefetch")
	.dwattr $C$DW$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x186)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 391,column 1,is_stmt,address ||Flash_enablePrefetch||,isa 0

	.dwfde $C$DW$CIE, ||Flash_enablePrefetch||
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("ctrlBase")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_enablePrefetch          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Flash_enablePrefetch||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("ctrlBase")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |391| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 397,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |397| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 402,column 5,is_stmt,isa 0
        MOV       ACC,#384              ; [CPU_ALU] |402| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |402| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |402| 
        MOVB      ACC,#1                ; [CPU_ALU] |402| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |402| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |402| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 404,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |404| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 405,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x195)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".TI.ramfunc:Flash_disablePrefetch"
	.clink

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("Flash_disablePrefetch")
	.dwattr $C$DW$26, DW_AT_low_pc(||Flash_disablePrefetch||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("Flash_disablePrefetch")
	.dwattr $C$DW$26, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$26, DW_AT_decl_column(0x01)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 421,column 1,is_stmt,address ||Flash_disablePrefetch||,isa 0

	.dwfde $C$DW$CIE, ||Flash_disablePrefetch||
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("ctrlBase")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_disablePrefetch         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Flash_disablePrefetch||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("ctrlBase")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |421| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 427,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |427| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 432,column 5,is_stmt,isa 0
        MOV       ACC,#384              ; [CPU_ALU] |432| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |432| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |432| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |432| 
        AND       AL,#65534             ; [CPU_ALU] |432| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |432| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 434,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |434| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 435,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x1b3)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".TI.ramfunc:Flash_enableCache"
	.clink

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("Flash_enableCache")
	.dwattr $C$DW$30, DW_AT_low_pc(||Flash_enableCache||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("Flash_enableCache")
	.dwattr $C$DW$30, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$30, DW_AT_decl_column(0x01)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 451,column 1,is_stmt,address ||Flash_enableCache||,isa 0

	.dwfde $C$DW$CIE, ||Flash_enableCache||
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("ctrlBase")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_enableCache             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Flash_enableCache||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("ctrlBase")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |451| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 457,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |457| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 462,column 5,is_stmt,isa 0
        MOV       ACC,#384              ; [CPU_ALU] |462| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |462| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |462| 
        MOVB      ACC,#2                ; [CPU_ALU] |462| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |462| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |462| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 464,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |464| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 465,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x1d1)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".TI.ramfunc:Flash_disableCache"
	.clink

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("Flash_disableCache")
	.dwattr $C$DW$34, DW_AT_low_pc(||Flash_disableCache||)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_linkage_name("Flash_disableCache")
	.dwattr $C$DW$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$34, DW_AT_decl_column(0x01)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 481,column 1,is_stmt,address ||Flash_disableCache||,isa 0

	.dwfde $C$DW$CIE, ||Flash_disableCache||
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("ctrlBase")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_disableCache            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Flash_disableCache||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("ctrlBase")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |481| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 487,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |487| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 492,column 5,is_stmt,isa 0
        MOV       ACC,#384              ; [CPU_ALU] |492| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |492| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |492| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |492| 
        AND       AL,#65533             ; [CPU_ALU] |492| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |492| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 494,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |494| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 495,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x1ef)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".TI.ramfunc:Flash_enableECC"
	.clink

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("Flash_enableECC")
	.dwattr $C$DW$38, DW_AT_low_pc(||Flash_enableECC||)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_linkage_name("Flash_enableECC")
	.dwattr $C$DW$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$38, DW_AT_decl_column(0x01)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 511,column 1,is_stmt,address ||Flash_enableECC||,isa 0

	.dwfde $C$DW$CIE, ||Flash_enableECC||
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("eccBase")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_enableECC               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Flash_enableECC||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("eccBase")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |511| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 517,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |517| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 522,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |522| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |522| 
        AND       AL,#65520             ; [CPU_ALU] |522| 
        ORB       AL,#0x0a              ; [CPU_ALU] |522| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |522| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 525,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |525| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 526,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x20e)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text:Flash_RelinquishPumpSemaphore"
	.clink
	.global	||Flash_RelinquishPumpSemaphore||

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("Flash_RelinquishPumpSemaphore")
	.dwattr $C$DW$42, DW_AT_low_pc(||Flash_RelinquishPumpSemaphore||)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_linkage_name("Flash_RelinquishPumpSemaphore")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x61f)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1568,column 1,is_stmt,address ||Flash_RelinquishPumpSemaphore||,isa 0

	.dwfde $C$DW$CIE, ||Flash_RelinquishPumpSemaphore||

;***************************************************************
;* FNAME: Flash_RelinquishPumpSemaphore FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Flash_RelinquishPumpSemaphore||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1569,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1569| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1570,column 5,is_stmt,isa 0
        MOVW      DP,#||IPC_Instance||+6 ; [CPU_ARAU] 
        MOVL      XAR4,@||IPC_Instance||+6 ; [CPU_ALU] |1570| 
        MOVB      AL,#0                 ; [CPU_ALU] |1570| 
        MOV       AH,#23130             ; [CPU_ALU] |1570| 
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |1570| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1571,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1571| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1572,column 1,is_stmt,isa 0
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x624)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text:GetSemaphore"
	.clink
	.global	||GetSemaphore||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("GetSemaphore")
	.dwattr $C$DW$44, DW_AT_low_pc(||GetSemaphore||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("GetSemaphore")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x627)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0f)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1576,column 1,is_stmt,address ||GetSemaphore||,isa 0

	.dwfde $C$DW$CIE, ||GetSemaphore||

;***************************************************************
;* FNAME: GetSemaphore                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetSemaphore||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1577,column 5,is_stmt,isa 0
        MOVW      DP,#||IPC_Instance||+6 ; [CPU_ARAU] 
        MOVL      XAR4,@||IPC_Instance||+6 ; [CPU_ALU] |1577| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |1577| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\flash.h",line 1578,column 1,is_stmt,isa 0
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x62a)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".TI.ramfunc:Flash_initModule"
	.clink
	.global	||Flash_initModule||

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$46, DW_AT_low_pc(||Flash_initModule||)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_linkage_name("Flash_initModule")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../F2838x_driverlib/driverlib/flash.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$46, DW_AT_decl_column(0x01)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 60,column 1,is_stmt,address ||Flash_initModule||,isa 0

	.dwfde $C$DW$CIE, ||Flash_initModule||
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("ctrlBase")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("eccBase")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -8]

$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("waitstates")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: Flash_initModule              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||Flash_initModule||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("ctrlBase")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("waitstates")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |60| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |60| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 71,column 5,is_stmt,isa 0
        MOVB      XAR5,#3               ; [CPU_ALU] |71| 
        MOVB      XAR4,#0               ; [CPU_ALU] |71| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("Flash_setBankPowerMode")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||Flash_setBankPowerMode|| ; [CPU_ALU] |71| 
        ; call occurs [#||Flash_setBankPowerMode||] ; [] |71| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 77,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |77| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |77| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("Flash_setPumpPowerMode")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||Flash_setPumpPowerMode|| ; [CPU_ALU] |77| 
        ; call occurs [#||Flash_setPumpPowerMode||] ; [] |77| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 82,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |82| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("Flash_disableCache")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #||Flash_disableCache|| ; [CPU_ALU] |82| 
        ; call occurs [#||Flash_disableCache||] ; [] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 83,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |83| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("Flash_disablePrefetch")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||Flash_disablePrefetch|| ; [CPU_ALU] |83| 
        ; call occurs [#||Flash_disablePrefetch||] ; [] |83| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 88,column 5,is_stmt,isa 0
        MOVZ      AR4,*-SP[3]           ; [CPU_ALU] |88| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |88| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("Flash_setWaitstates")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #||Flash_setWaitstates|| ; [CPU_ALU] |88| 
        ; call occurs [#||Flash_setWaitstates||] ; [] |88| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 94,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |94| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("Flash_enableCache")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #||Flash_enableCache|| ; [CPU_ALU] |94| 
        ; call occurs [#||Flash_enableCache||] ; [] |94| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 95,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |95| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("Flash_enablePrefetch")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #||Flash_enablePrefetch|| ; [CPU_ALU] |95| 
        ; call occurs [#||Flash_enablePrefetch||] ; [] |95| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 101,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |101| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("Flash_enableECC")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #||Flash_enableECC||  ; [CPU_ALU] |101| 
        ; call occurs [#||Flash_enableECC||] ; [] |101| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 107,column 5,is_stmt,isa 0
 RPT #7 || NOP
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 108,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/flash.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x6c)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".TI.ramfunc:Flash_powerDown"
	.clink
	.global	||Flash_powerDown||

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("Flash_powerDown")
	.dwattr $C$DW$61, DW_AT_low_pc(||Flash_powerDown||)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_linkage_name("Flash_powerDown")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../F2838x_driverlib/driverlib/flash.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x77)
	.dwattr $C$DW$61, DW_AT_decl_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 120,column 1,is_stmt,address ||Flash_powerDown||,isa 0

	.dwfde $C$DW$CIE, ||Flash_powerDown||
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("ctrlBase")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Flash_powerDown               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Flash_powerDown||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("ctrlBase")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |120| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 129,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |129| 
        MOVB      XAR5,#0               ; [CPU_ALU] |129| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("Flash_setBankPowerMode")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||Flash_setBankPowerMode|| ; [CPU_ALU] |129| 
        ; call occurs [#||Flash_setBankPowerMode||] ; [] |129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 134,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |134| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |134| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("Flash_setPumpPowerMode")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||Flash_setPumpPowerMode|| ; [CPU_ALU] |134| 
        ; call occurs [#||Flash_setPumpPowerMode||] ; [] |134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/flash.c",line 135,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/flash.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x87)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||IPC_Instance||
;**************************************************************
;* SECTION GROUPS                                             *
;**************************************************************
	.group    "Flash_RelinquishPumpSemaphore", 1
	.gmember  ".text:Flash_RelinquishPumpSemaphore"
	.endgroup
	.group    "GetSemaphore", 1
	.gmember  ".text:GetSemaphore"
	.endgroup


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

$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("FLASH_BANK")
	.dwattr $C$DW$67, DW_AT_const_value(0x00)
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("Flash_BankNumber")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("FLASH_BANK_PWR_SLEEP")
	.dwattr $C$DW$68, DW_AT_const_value(0x00)
	.dwattr $C$DW$68, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x72)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("FLASH_BANK_PWR_STANDBY")
	.dwattr $C$DW$69, DW_AT_const_value(0x01)
	.dwattr $C$DW$69, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x73)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("FLASH_BANK_PWR_ACTIVE")
	.dwattr $C$DW$70, DW_AT_const_value(0x03)
	.dwattr $C$DW$70, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x74)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$41, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("Flash_BankPowerMode")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$71	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$71, DW_AT_name("FLASH_PUMP_PWR_SLEEP")
	.dwattr $C$DW$71, DW_AT_const_value(0x00)
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$71, DW_AT_decl_column(0x05)

$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("FLASH_PUMP_PWR_ACTIVE")
	.dwattr $C$DW$72, DW_AT_const_value(0x01)
	.dwattr $C$DW$72, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x80)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("Flash_PumpPowerMode")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$44


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("IPC_ACK")
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0e)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("IPC_STS")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0e)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("IPC_SET")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0e)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_name("IPC_CLR")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0e)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("IPC_FLG")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0e)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("IPC_RSVDREG")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0e)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("IPC_COUNTERL")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0e)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("IPC_COUNTERH")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("IPC_Flag_Ctr_Reg_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$81	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$25)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$81)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$27


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("IPC_SENDCOM")
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xed)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0e)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_name("IPC_SENDADDR")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xee)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0e)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_name("IPC_SENDDATA")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xef)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0e)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_name("IPC_REMOTEREPLY")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("IPC_SendCmd_Reg_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$86	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$86)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$30


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("IPC_RECVCOM")
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0e)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("IPC_RECVADDR")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0e)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("IPC_RECVDATA")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0e)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("IPC_LOCALREPLY")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("IPC_RecvCmd_Reg_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$31, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$91	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$91)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$33


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x06)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_name("IPC_BOOTSTS")
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0e)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_name("IPC_BOOTMODE")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0e)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_name("IPC_PUMPREQUEST")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0xff)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("IPC_Boot_Pump_Reg_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$95	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$34)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$95)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$36


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x1e)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$96, DW_AT_name("IPC_Flag_Ctr_Reg")
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x122)
	.dwattr $C$DW$96, DW_AT_decl_column(0x23)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$97, DW_AT_name("IPC_SendCmd_Reg")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x123)
	.dwattr $C$DW$97, DW_AT_decl_column(0x23)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$98, DW_AT_name("IPC_RecvCmd_Reg")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x124)
	.dwattr $C$DW$98, DW_AT_decl_column(0x23)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$99, DW_AT_name("IPC_Boot_Pump_Reg")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x125)
	.dwattr $C$DW$99, DW_AT_decl_column(0x23)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$100, DW_AT_name("IPC_IntNum")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x126)
	.dwattr $C$DW$100, DW_AT_decl_column(0x23)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("IPC_MsgRam_LtoR")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x127)
	.dwattr $C$DW$101, DW_AT_decl_column(0x23)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_name("IPC_MsgRam_RtoL")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x128)
	.dwattr $C$DW$102, DW_AT_decl_column(0x23)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_name("IPC_Offset_Corr")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x129)
	.dwattr $C$DW$103, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("IPC_Instance_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$104	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$46)

$C$DW$T$47	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$104)

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x78)
$C$DW$105	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$105, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


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


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$51


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x10)
$C$DW$106	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$106, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


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

