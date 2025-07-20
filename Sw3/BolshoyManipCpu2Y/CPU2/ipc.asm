;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:55 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$1, DW_AT_linkage_name("Interrupt_enable")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("Interrupt_disable")
	.dwattr $C$DW$3, DW_AT_linkage_name("Interrupt_disable")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$3

	.global	||IPC_Instance||
	.sect	".const:IPC_Instance"
	.align	2
	.elfsym	||IPC_Instance||,SYM_SIZE(120)
||IPC_Instance||:
	.bits		0x5ce00,32
			; IPC_Instance[0].IPC_Flag_Ctr_Reg @ 0
	.bits		0x5ce10,32
			; IPC_Instance[0].IPC_SendCmd_Reg @ 32
	.bits		0x5ce18,32
			; IPC_Instance[0].IPC_RecvCmd_Reg @ 64
	.bits		0x5ce20,32
			; IPC_Instance[0].IPC_Boot_Pump_Reg @ 96
	.bits		0x84010d,32
			; IPC_Instance[0].IPC_IntNum[0] @ 128
	.bits		0x85010e,32
			; IPC_Instance[0].IPC_IntNum[1] @ 160
	.bits		0x86010f,32
			; IPC_Instance[0].IPC_IntNum[2] @ 192
	.bits		0x870110,32
			; IPC_Instance[0].IPC_IntNum[3] @ 224
	.bits		0,32
			; IPC_Instance[0].IPC_IntNum[4] @ 256
	.bits		0,32
			; IPC_Instance[0].IPC_IntNum[5] @ 288
	.bits		0,32
			; IPC_Instance[0].IPC_IntNum[6] @ 320
	.bits		0,32
			; IPC_Instance[0].IPC_IntNum[7] @ 352
	.bits		0x3a000,32
			; IPC_Instance[0].IPC_MsgRam_LtoR @ 384
	.bits		0x3b000,32
			; IPC_Instance[0].IPC_MsgRam_RtoL @ 416
	.bits		0x2,32
			; IPC_Instance[0].IPC_Offset_Corr @ 448
	.bits		0x5ce40,32
			; IPC_Instance[1].IPC_Flag_Ctr_Reg @ 480
	.bits		0x5ce50,32
			; IPC_Instance[1].IPC_SendCmd_Reg @ 512
	.bits		0x5ce58,32
			; IPC_Instance[1].IPC_RecvCmd_Reg @ 544
	.bits		0x5ce60,32
			; IPC_Instance[1].IPC_Boot_Pump_Reg @ 576
	.bits		0xd00b09,32
			; IPC_Instance[1].IPC_IntNum[0] @ 608
	.bits		0xd10b0a,32
			; IPC_Instance[1].IPC_IntNum[1] @ 640
	.bits		0xd20b0b,32
			; IPC_Instance[1].IPC_IntNum[2] @ 672
	.bits		0xd30b0c,32
			; IPC_Instance[1].IPC_IntNum[3] @ 704
	.bits		0xd40b0d,32
			; IPC_Instance[1].IPC_IntNum[4] @ 736
	.bits		0xd50b0e,32
			; IPC_Instance[1].IPC_IntNum[5] @ 768
	.bits		0xd60b0f,32
			; IPC_Instance[1].IPC_IntNum[6] @ 800
	.bits		0xd70b10,32
			; IPC_Instance[1].IPC_IntNum[7] @ 832
	.bits		0x39000,32
			; IPC_Instance[1].IPC_MsgRam_LtoR @ 864
	.bits		0x38000,32
			; IPC_Instance[1].IPC_MsgRam_RtoL @ 896
	.bits		0x1,32
			; IPC_Instance[1].IPC_Offset_Corr @ 928
	.bits		0x5ce00,32
			; IPC_Instance[2].IPC_Flag_Ctr_Reg @ 960
	.bits		0x5ce18,32
			; IPC_Instance[2].IPC_SendCmd_Reg @ 992
	.bits		0x5ce10,32
			; IPC_Instance[2].IPC_RecvCmd_Reg @ 1024
	.bits		0x5ce20,32
			; IPC_Instance[2].IPC_Boot_Pump_Reg @ 1056
	.bits		0x84010d,32
			; IPC_Instance[2].IPC_IntNum[0] @ 1088
	.bits		0x85010e,32
			; IPC_Instance[2].IPC_IntNum[1] @ 1120
	.bits		0x86010f,32
			; IPC_Instance[2].IPC_IntNum[2] @ 1152
	.bits		0x870110,32
			; IPC_Instance[2].IPC_IntNum[3] @ 1184
	.bits		0,32
			; IPC_Instance[2].IPC_IntNum[4] @ 1216
	.bits		0,32
			; IPC_Instance[2].IPC_IntNum[5] @ 1248
	.bits		0,32
			; IPC_Instance[2].IPC_IntNum[6] @ 1280
	.bits		0,32
			; IPC_Instance[2].IPC_IntNum[7] @ 1312
	.bits		0x3b000,32
			; IPC_Instance[2].IPC_MsgRam_LtoR @ 1344
	.bits		0x3a000,32
			; IPC_Instance[2].IPC_MsgRam_RtoL @ 1376
	.bits		0x2,32
			; IPC_Instance[2].IPC_Offset_Corr @ 1408
	.bits		0x5ce40,32
			; IPC_Instance[3].IPC_Flag_Ctr_Reg @ 1440
	.bits		0x5ce50,32
			; IPC_Instance[3].IPC_SendCmd_Reg @ 1472
	.bits		0x5ce58,32
			; IPC_Instance[3].IPC_RecvCmd_Reg @ 1504
	.bits		0x5ce60,32
			; IPC_Instance[3].IPC_Boot_Pump_Reg @ 1536
	.bits		0xd00b09,32
			; IPC_Instance[3].IPC_IntNum[0] @ 1568
	.bits		0xd10b0a,32
			; IPC_Instance[3].IPC_IntNum[1] @ 1600
	.bits		0xd20b0b,32
			; IPC_Instance[3].IPC_IntNum[2] @ 1632
	.bits		0xd30b0c,32
			; IPC_Instance[3].IPC_IntNum[3] @ 1664
	.bits		0xd40b0d,32
			; IPC_Instance[3].IPC_IntNum[4] @ 1696
	.bits		0xd50b0e,32
			; IPC_Instance[3].IPC_IntNum[5] @ 1728
	.bits		0xd60b0f,32
			; IPC_Instance[3].IPC_IntNum[6] @ 1760
	.bits		0xd70b10,32
			; IPC_Instance[3].IPC_IntNum[7] @ 1792
	.bits		0x39000,32
			; IPC_Instance[3].IPC_MsgRam_LtoR @ 1824
	.bits		0x38000,32
			; IPC_Instance[3].IPC_MsgRam_RtoL @ 1856
	.bits		0x1,32
			; IPC_Instance[3].IPC_Offset_Corr @ 1888

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("IPC_Instance")
	.dwattr $C$DW$5, DW_AT_linkage_name("IPC_Instance")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||IPC_Instance||]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x52)
	.dwattr $C$DW$5, DW_AT_decl_column(0x16)

;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{CAC93757-0CF6-4D54-95D4-953ABFA709AF} 
	.sect	".text:Interrupt_register"
	.clink

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("Interrupt_register")
	.dwattr $C$DW$6, DW_AT_low_pc(||Interrupt_register||)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_linkage_name("Interrupt_register")
	.dwattr $C$DW$6, DW_AT_decl_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0xee)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 239,column 1,is_stmt,address ||Interrupt_register||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_register||
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("interruptNumber")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg0]

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("handler")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: Interrupt_register            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||Interrupt_register||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("interruptNumber")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -2]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("handler")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -4]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("address")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |239| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |239| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 245,column 5,is_stmt,isa 0
        MOVU      ACC,AH                ; [CPU_ALU] |245| 
        LSL       ACC,1                 ; [CPU_ALU] |245| 
        ADD       ACC,#13 << 8          ; [CPU_ALU] |245| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |245| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 251,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |251| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 252,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |252| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |252| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |252| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 253,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |253| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 254,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0xfe)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text:Interrupt_unregister"
	.clink

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("Interrupt_unregister")
	.dwattr $C$DW$13, DW_AT_low_pc(||Interrupt_unregister||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("Interrupt_unregister")
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x115)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 278,column 1,is_stmt,address ||Interrupt_unregister||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_unregister||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("interruptNumber")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: Interrupt_unregister          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||Interrupt_unregister||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("interruptNumber")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -2]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("address")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |278| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 284,column 5,is_stmt,isa 0
        MOVU      ACC,AH                ; [CPU_ALU] |284| 
        LSL       ACC,1                 ; [CPU_ALU] |284| 
        ADD       ACC,#13 << 8          ; [CPU_ALU] |284| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |284| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 290,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |290| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 291,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |291| 
        MOVL      XAR4,#||Interrupt_defaultHandler|| ; [CPU_ARAU] |291| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |291| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 292,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |292| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 293,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x125)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:Interrupt_defaultHandler"
	.clink

$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("Interrupt_defaultHandler")
	.dwattr $C$DW$18, DW_AT_low_pc(||Interrupt_defaultHandler||)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_linkage_name("Interrupt_defaultHandler")
	.dwattr $C$DW$18, DW_AT_decl_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$18, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 139,column 1,is_stmt,address ||Interrupt_defaultHandler||,isa 0

	.dwfde $C$DW$CIE, ||Interrupt_defaultHandler||

;***************************************************************
;* FNAME: Interrupt_defaultHandler      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||Interrupt_defaultHandler||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("pieVect")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -1]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("vectID")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -2]

	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 148,column 5,is_stmt,isa 0
        MOV       *-SP[1],*(0:0x0ce0)   ; [CPU_ALU] |148| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 149,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |149| 
        ANDB      AL,#0xfe              ; [CPU_ALU] |149| 
        LSR       AL,1                  ; [CPU_ALU] |149| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |149| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 154,column 5,is_stmt,isa 0
        CMP       *-SP[1],#3584         ; [CPU_ALU] |154| 
        B         ||$C$L1||,LO          ; [CPU_ALU] |154| 
        ; branchcc occurs ; [] |154| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 156,column 9,is_stmt,isa 0
        ADD       *-SP[2],#128          ; [CPU_ALU] |156| 
||$C$L1||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 164,column 5,is_stmt,isa 0
 ESTOP0
||$C$L2||:    
	.dwpsn	file "..\F2838x_driverlib\driverlib\interrupt.h",line 168,column 5,is_stmt,isa 0
        B         ||$C$L2||,UNC         ; [CPU_ALU] |168| 
        ; branch occurs ; [] |168| 
	.dwattr $C$DW$18, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\interrupt.h")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text:IPC_sendCommand"
	.clink
	.global	||IPC_sendCommand||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("IPC_sendCommand")
	.dwattr $C$DW$21, DW_AT_low_pc(||IPC_sendCommand||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("IPC_sendCommand")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$21, DW_AT_decl_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$21, DW_AT_decl_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 180,column 1,is_stmt,address ||IPC_sendCommand||,isa 0

	.dwfde $C$DW$CIE, ||IPC_sendCommand||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("ipcType")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg12]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("flags")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("addrCorrEnable")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg14]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("command")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -10]

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("addr")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -12]

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("data")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -14]


;***************************************************************
;* FNAME: IPC_sendCommand               FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||IPC_sendCommand||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("flags")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -2]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("ipcType")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -3]

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("addrCorrEnable")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_breg20 -4]

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("ret")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |180| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |180| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 186,column 5,is_stmt,isa 0
        MOV       T,#30                 ; [CPU_ALU] |186| 
        MOVL      XAR5,#||IPC_Instance|| ; [CPU_ARAU] |186| 
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |186| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |186| 
        MOVB      ACC,#8                ; [CPU_ALU] |186| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |186| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |186| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |186| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |186| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |186| 
        TEST      ACC                   ; [CPU_ALU] |186| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 188,column 9,is_stmt,isa 0
        MOVB      *-SP[5],#1,UNC        ; [CPU_ALU] |188| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 190,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |190| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 196,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |196| 
        MOVL      XAR4,#||IPC_Instance||+2 ; [CPU_ARAU] |196| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |196| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |196| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |196| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |196| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 197,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |197| 
        MOVL      XAR4,#||IPC_Instance||+2 ; [CPU_ARAU] |197| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |197| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |197| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |197| 
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |197| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 198,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |198| 
        MOVL      XAR4,#||IPC_Instance||+24 ; [CPU_ARAU] |198| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |198| 
        MPYXU     P,T,*-SP[3]           ; [CPU_ALU] |198| 
        MOVL      ACC,*-SP[12]          ; [CPU_FPU] |198| 
        SUBL      ACC,*+XAR4[0]         ; [CPU_ALU] |198| 
        MOVL      XAR6,ACC              ; [CPU_FPU] |198| 
        MOVL      XAR4,#||IPC_Instance||+2 ; [CPU_ARAU] |198| 
        MOVL      ACC,P                 ; [CPU_ALU] |198| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |198| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |198| 
        MOVL      *+XAR4[2],XAR6        ; [CPU_ALU] |198| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 206,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |206| 
        MOVL      XAR4,#||IPC_Instance||+2 ; [CPU_ARAU] |206| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |206| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |206| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |206| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |206| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 207,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |207| 
        MOVL      XAR4,#||IPC_Instance||+2 ; [CPU_ARAU] |207| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |207| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |207| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |207| 
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |207| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 208,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |208| 
        MOVL      XAR4,#||IPC_Instance||+2 ; [CPU_ARAU] |208| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |208| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |208| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |208| 
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |208| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 214,column 9,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[3]         ; [CPU_ALU] |214| 
        MOVL      XAR4,#||IPC_Instance|| ; [CPU_ARAU] |214| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |214| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |214| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |214| 
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |214| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 218,column 9,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |218| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 221,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |221| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 222,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0xde)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:IPC_readCommand"
	.clink
	.global	||IPC_readCommand||

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("IPC_readCommand")
	.dwattr $C$DW$33, DW_AT_low_pc(||IPC_readCommand||)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_linkage_name("IPC_readCommand")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$33, DW_AT_decl_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$33, DW_AT_decl_column(0x06)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 231,column 1,is_stmt,address ||IPC_readCommand||,isa 0

	.dwfde $C$DW$CIE, ||IPC_readCommand||
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("ipcType")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -13]

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("flags")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("addrCorrEnable")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -14]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("command")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("addr")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg14]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("data")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -16]


;***************************************************************
;* FNAME: IPC_readCommand               FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  9 Auto,  0 SOE     *
;***************************************************************

||IPC_readCommand||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("flags")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -2]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("command")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -4]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("addr")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -6]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("addrReg")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -8]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("ret")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -9]

        MOVL      *-SP[6],XAR5          ; [CPU_ALU] |231| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |231| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |231| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 238,column 5,is_stmt,isa 0
        MOV       T,#30                 ; [CPU_ALU] |238| 
        MOVL      XAR4,#||IPC_Instance|| ; [CPU_ARAU] |238| 
        MPYXU     ACC,T,*-SP[13]        ; [CPU_ALU] |238| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |238| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |238| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |238| 
        AND       AL,*+XAR4[2]          ; [CPU_ALU] |238| 
        AND       AH,*+XAR4[3]          ; [CPU_ALU] |238| 
        TEST      ACC                   ; [CPU_ALU] |238| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 240,column 9,is_stmt,isa 0
        MOVB      *-SP[9],#1,UNC        ; [CPU_ALU] |240| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 245,column 9,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[13]        ; [CPU_ALU] |245| 
        MOVL      XAR4,#||IPC_Instance||+4 ; [CPU_ARAU] |245| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |245| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |245| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |245| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |245| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |245| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 246,column 9,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[13]        ; [CPU_ALU] |246| 
        MOVL      XAR4,#||IPC_Instance||+4 ; [CPU_ARAU] |246| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |246| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |246| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |246| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |246| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 247,column 9,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[13]        ; [CPU_ALU] |247| 
        MOVL      XAR4,#||IPC_Instance||+4 ; [CPU_ARAU] |247| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |247| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |247| 
        MOVL      XAR5,*-SP[16]         ; [CPU_ALU] |247| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |247| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |247| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 249,column 9,is_stmt,isa 0
        MOV       AL,*-SP[14]           ; [CPU_ALU] |249| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |249| 
        ; branchcc occurs ; [] |249| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 254,column 13,is_stmt,isa 0
        MPYXU     ACC,T,*-SP[13]        ; [CPU_ALU] |254| 
        MOVL      XAR4,#||IPC_Instance||+28 ; [CPU_ARAU] |254| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |254| 
        MOVIZ     R3H,#0                ; [CPU_FPU] |254| 
        MOVL      XT,*+XAR4[0]          ; [CPU_ALU] |254| 
        IMPYXUL   P,XT,*-SP[8]          ; [CPU_ALU] |254| 
        MOV32     R1H,P                 ; [CPU_FPU] |254| 
        ZERO      R2                    ; [CPU_FPU] |254| 
        MOVXI     R3H,#2                ; [CPU_FPU] |254| 
        MOV       T,#30                 ; [CPU_ALU] |254| 
        MOVL      XAR4,#||IPC_Instance||+26 ; [CPU_ARAU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        SUBC4UI32 R2H,R1H,R3H           ; [CPU_FPU] |254| 
        MPYXU     P,T,*-SP[13]          ; [CPU_ALU] |254| 
        MOV32     XAR6,R1H              ; [CPU_FPU] |254| 
        MOVL      ACC,P                 ; [CPU_ALU] |254| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |254| 
        MOVL      XAR5,*-SP[6]          ; [CPU_ALU] |254| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |254| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |254| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |254| 
        B         ||$C$L9||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 261,column 13,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |261| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |261| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |261| 
        B         ||$C$L9||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 267,column 9,is_stmt,isa 0
        MOV       *-SP[9],#0            ; [CPU_ALU] |267| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 270,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |270| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 271,column 1,is_stmt,isa 0
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x10f)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text:IPC_registerInterrupt"
	.clink
	.global	||IPC_registerInterrupt||

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("IPC_registerInterrupt")
	.dwattr $C$DW$46, DW_AT_low_pc(||IPC_registerInterrupt||)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_linkage_name("IPC_registerInterrupt")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x117)
	.dwattr $C$DW$46, DW_AT_decl_column(0x06)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 281,column 1,is_stmt,address ||IPC_registerInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||IPC_registerInterrupt||
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("ipcType")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg14]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("ipcInt")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg0]

$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("pfnHandler")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: IPC_registerInterrupt         FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||IPC_registerInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("ipcInt")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("pfnHandler")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -4]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("intNum")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -6]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("ipcType")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[7],AR5           ; [CPU_ALU] |281| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |281| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |281| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 295,column 5,is_stmt,isa 0
        MOV       T,#30                 ; [CPU_ALU] |295| 
        MOVL      XAR5,#||IPC_Instance||+8 ; [CPU_ARAU] |295| 
        MPYXU     ACC,T,*-SP[7]         ; [CPU_ALU] |295| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |295| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |295| 
        LSL       ACC,1                 ; [CPU_ALU] |295| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |295| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |295| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |295| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 300,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |300| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("Interrupt_register")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #||Interrupt_register|| ; [CPU_ALU] |300| 
        ; call occurs [#||Interrupt_register||] ; [] |300| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 305,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |305| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||Interrupt_enable|| ; [CPU_ALU] |305| 
        ; call occurs [#||Interrupt_enable||] ; [] |305| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 306,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x132)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:IPC_unregisterInterrupt"
	.clink
	.global	||IPC_unregisterInterrupt||

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("IPC_unregisterInterrupt")
	.dwattr $C$DW$57, DW_AT_low_pc(||IPC_unregisterInterrupt||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("IPC_unregisterInterrupt")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x139)
	.dwattr $C$DW$57, DW_AT_decl_column(0x06)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 314,column 1,is_stmt,address ||IPC_unregisterInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||IPC_unregisterInterrupt||
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("ipcType")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]

$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("ipcInt")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: IPC_unregisterInterrupt       FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||IPC_unregisterInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("ipcInt")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -2]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("intNum")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -4]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("ipcType")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AR4           ; [CPU_ALU] |314| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |314| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 329,column 5,is_stmt,isa 0
        MOV       T,#30                 ; [CPU_ALU] |329| 
        MOVL      XAR5,#||IPC_Instance||+8 ; [CPU_ARAU] |329| 
        MPYXU     ACC,T,*-SP[5]         ; [CPU_ALU] |329| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |329| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |329| 
        LSL       ACC,1                 ; [CPU_ALU] |329| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |329| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |329| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |329| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |329| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 333,column 5,is_stmt,isa 0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("Interrupt_disable")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #||Interrupt_disable|| ; [CPU_ALU] |333| 
        ; call occurs [#||Interrupt_disable||] ; [] |333| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 339,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |339| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("Interrupt_unregister")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||Interrupt_unregister|| ; [CPU_ALU] |339| 
        ; call occurs [#||Interrupt_unregister||] ; [] |339| 
	.dwpsn	file "../F2838x_driverlib/driverlib/ipc.c",line 340,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/ipc.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x154)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Interrupt_enable||
	.global	||Interrupt_disable||

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
$C$DW$66	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$66, DW_AT_name("IPC_CPU1_L_CPU2_R")
	.dwattr $C$DW$66, DW_AT_const_value(0x00)
	.dwattr $C$DW$66, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$66, DW_AT_decl_column(0x05)

$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("IPC_CPU1_L_CM_R")
	.dwattr $C$DW$67, DW_AT_const_value(0x01)
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("IPC_CPU2_L_CPU1_R")
	.dwattr $C$DW$68, DW_AT_const_value(0x02)
	.dwattr $C$DW$68, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("IPC_CPU2_L_CM_R")
	.dwattr $C$DW$69, DW_AT_const_value(0x03)
	.dwattr $C$DW$69, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("IPC_TOTAL_NUM")
	.dwattr $C$DW$70, DW_AT_const_value(0x04)
	.dwattr $C$DW$70, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("IPC_Type_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$40


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("IPC_ACK")
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0e)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("IPC_STS")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0e)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("IPC_SET")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0e)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("IPC_CLR")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0e)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("IPC_FLG")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0e)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_name("IPC_RSVDREG")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0e)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("IPC_COUNTERL")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0e)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("IPC_COUNTERH")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0e)

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
$C$DW$79	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$25)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$79)

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
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("IPC_SENDCOM")
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xed)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0e)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_name("IPC_SENDADDR")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xee)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0e)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("IPC_SENDDATA")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xef)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0e)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_name("IPC_REMOTEREPLY")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0e)

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
$C$DW$84	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$84)

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
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_name("IPC_RECVCOM")
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0e)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_name("IPC_RECVADDR")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0e)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("IPC_RECVDATA")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0e)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("IPC_LOCALREPLY")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0e)

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
$C$DW$89	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$89)

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
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("IPC_BOOTSTS")
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0e)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_name("IPC_BOOTMODE")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0e)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_name("IPC_PUMPREQUEST")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xff)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0e)

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
$C$DW$93	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$34)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$93)

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
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$94, DW_AT_name("IPC_Flag_Ctr_Reg")
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x122)
	.dwattr $C$DW$94, DW_AT_decl_column(0x23)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$95, DW_AT_name("IPC_SendCmd_Reg")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x123)
	.dwattr $C$DW$95, DW_AT_decl_column(0x23)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$96, DW_AT_name("IPC_RecvCmd_Reg")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x124)
	.dwattr $C$DW$96, DW_AT_decl_column(0x23)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$97, DW_AT_name("IPC_Boot_Pump_Reg")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x125)
	.dwattr $C$DW$97, DW_AT_decl_column(0x23)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$98, DW_AT_name("IPC_IntNum")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x126)
	.dwattr $C$DW$98, DW_AT_decl_column(0x23)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_name("IPC_MsgRam_LtoR")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x127)
	.dwattr $C$DW$99, DW_AT_decl_column(0x23)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_name("IPC_MsgRam_RtoL")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x128)
	.dwattr $C$DW$100, DW_AT_decl_column(0x23)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("IPC_Offset_Corr")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x129)
	.dwattr $C$DW$101, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("IPC_Instance_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$102	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$44)

$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$102)

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x78)
$C$DW$103	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$103, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$49


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


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$57


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
$C$DW$104	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$104, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$60


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


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$66, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$66, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$66

