;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:57 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{DBFE56B9-5781-4D82-B676-CB1DAC05B022} 
	.sect	".text:_USBIndexWrite"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("_USBIndexWrite")
	.dwattr $C$DW$1, DW_AT_low_pc(||_USBIndexWrite||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("_USBIndexWrite")
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 95,column 1,is_stmt,address ||_USBIndexWrite||,isa 0

	.dwfde $C$DW$CIE, ||_USBIndexWrite||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("ui32Base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -8]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("ui32IndexedReg")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -10]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("ui32Value")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -12]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("ui32Size")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -14]


;***************************************************************
;* FNAME: _USBIndexWrite                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||_USBIndexWrite||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("ui32Base")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -2]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ui32Index")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |95| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 109,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |109| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |109| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |109| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |109| 
        MOV       ACC,AL                ; [CPU_ALU] |109| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |109| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 114,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |114| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |114| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |114| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |114| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |114| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 119,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |119| 
        CMPL      ACC,*-SP[14]          ; [CPU_ALU] |119| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |119| 
        ; branchcc occurs ; [] |119| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 124,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |124| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |124| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |124| 
        MOV       AL,*-SP[12]           ; [CPU_ALU] |124| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |124| 
        B         ||$C$L2||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 131,column 9,is_stmt,isa 0
        MOVZ      AR6,*-SP[12]          ; [CPU_ALU] |131| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |131| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |131| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |131| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |131| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 137,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |137| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |137| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |137| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |137| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |137| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 138,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x8a)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:_USBIndexRead"
	.clink

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("_USBIndexRead")
	.dwattr $C$DW$10, DW_AT_low_pc(||_USBIndexRead||)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("_USBIndexRead")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$10, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 158,column 1,is_stmt,address ||_USBIndexRead||,isa 0

	.dwfde $C$DW$CIE, ||_USBIndexRead||
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("ui32Base")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -8]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("ui32IndexedReg")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -10]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("ui32Size")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: _USBIndexRead                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||_USBIndexRead||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("ui32Base")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -2]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("ui8Index")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -3]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("ui8Value")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |158| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 173,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |173| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |173| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |173| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |173| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |173| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 178,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |178| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |178| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |178| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |178| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |178| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 183,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |183| 
        CMPL      ACC,*-SP[12]          ; [CPU_ALU] |183| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |183| 
        ; branchcc occurs ; [] |183| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 188,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |188| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |188| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |188| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |188| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |188| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 195,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |195| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |195| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |195| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |195| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |195| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 201,column 5,is_stmt,isa 0
        MOVB      ACC,#14               ; [CPU_ALU] |201| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |201| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |201| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |201| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |201| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 206,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[4]           ; [CPU_ALU] |206| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 207,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0xcf)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:USBHostSuspend"
	.clink
	.global	||USBHostSuspend||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("USBHostSuspend")
	.dwattr $C$DW$19, DW_AT_low_pc(||USBHostSuspend||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("USBHostSuspend")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 225,column 1,is_stmt,address ||USBHostSuspend||,isa 0

	.dwfde $C$DW$CIE, ||USBHostSuspend||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("ui32Base")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostSuspend                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostSuspend||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("ui32Base")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 234,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |234| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |234| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |234| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |234| 
        ORB       AL,#0x02              ; [CPU_ALU] |234| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |234| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 235,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:USBHostReset"
	.clink
	.global	||USBHostReset||

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("USBHostReset")
	.dwattr $C$DW$23, DW_AT_low_pc(||USBHostReset||)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_linkage_name("USBHostReset")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x100)
	.dwattr $C$DW$23, DW_AT_decl_column(0x01)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 257,column 1,is_stmt,address ||USBHostReset||,isa 0

	.dwfde $C$DW$CIE, ||USBHostReset||
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("ui32Base")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("bStart")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: USBHostReset                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||USBHostReset||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("ui32Base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -2]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("bStart")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |257| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |257| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 266,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |266| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |266| 
        ; branchcc occurs ; [] |266| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 268,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |268| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |268| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |268| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |268| 
        ORB       AL,#0x08              ; [CPU_ALU] |268| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |268| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 272,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |272| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |272| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |272| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |272| 
        AND       AL,AL,#0xfff7         ; [CPU_ALU] |272| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |272| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 274,column 1,is_stmt,isa 0
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x112)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:USBHostResume"
	.clink
	.global	||USBHostResume||

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("USBHostResume")
	.dwattr $C$DW$29, DW_AT_low_pc(||USBHostResume||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("USBHostResume")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$29, DW_AT_decl_column(0x01)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 302,column 1,is_stmt,address ||USBHostResume||,isa 0

	.dwfde $C$DW$CIE, ||USBHostResume||
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("ui32Base")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("bStart")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: USBHostResume                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||USBHostResume||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("ui32Base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -2]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("bStart")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |302| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |302| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 311,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |311| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 313,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |313| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |313| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |313| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |313| 
        ORB       AL,#0x04              ; [CPU_ALU] |313| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |313| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 317,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |317| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |317| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |317| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |317| 
        AND       AL,AL,#0xfffb         ; [CPU_ALU] |317| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |317| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 319,column 1,is_stmt,isa 0
||$C$L8||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x13f)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:USBHostSpeedGet"
	.clink
	.global	||USBHostSpeedGet||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("USBHostSpeedGet")
	.dwattr $C$DW$35, DW_AT_low_pc(||USBHostSpeedGet||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("USBHostSpeedGet")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x159)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 346,column 1,is_stmt,address ||USBHostSpeedGet||,isa 0

	.dwfde $C$DW$CIE, ||USBHostSpeedGet||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("ui32Base")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostSpeedGet               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostSpeedGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("ui32Base")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |346| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 355,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |355| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |355| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |355| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |355| 
        TBIT      AL,#6                 ; [CPU_ALU] |355| 
        B         ||$C$L9||,NTC         ; [CPU_ALU] |355| 
        ; branchcc occurs ; [] |355| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 357,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |357| 
        B         ||$C$L11||,UNC        ; [CPU_ALU] |357| 
        ; branch occurs ; [] |357| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 363,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |363| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |363| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |363| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |363| 
        TBIT      AL,#5                 ; [CPU_ALU] |363| 
        B         ||$C$L10||,NTC        ; [CPU_ALU] |363| 
        ; branchcc occurs ; [] |363| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 365,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |365| 
        B         ||$C$L11||,UNC        ; [CPU_ALU] |365| 
        ; branch occurs ; [] |365| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 371,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |371| 
        MOV       AH,#32768             ; [CPU_ALU] |371| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 372,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x174)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:USBIntDisableControl"
	.clink
	.global	||USBIntDisableControl||

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("USBIntDisableControl")
	.dwattr $C$DW$39, DW_AT_low_pc(||USBIntDisableControl||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("USBIntDisableControl")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x187)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 392,column 1,is_stmt,address ||USBIntDisableControl||,isa 0

	.dwfde $C$DW$CIE, ||USBIntDisableControl||
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("ui32Base")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("ui32Flags")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBIntDisableControl          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBIntDisableControl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("ui32Base")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |392| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 403,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |403| 
        MOVB      AH,#0                 ; [CPU_ALU] |403| 
        ANDB      AL,#0xff              ; [CPU_ALU] |403| 
        TEST      ACC                   ; [CPU_ALU] |403| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 405,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |405| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |405| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |405| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |405| 
        ANDB      AL,#0xff              ; [CPU_ALU] |405| 
        NOT       AL                    ; [CPU_ALU] |405| 
        MOVB      AH.LSB,*+XAR4[0]      ; [CPU_FPU] |405| 
        AND       AL,AH                 ; [CPU_ALU] |405| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |405| 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 411,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |411| 
        TBIT      AL,#8                 ; [CPU_ALU] |411| 
        B         ||$C$L13||,NTC        ; [CPU_ALU] |411| 
        ; branchcc occurs ; [] |411| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 413,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |413| 
        MOV       ACC,#1032             ; [CPU_ALU] |413| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |413| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |413| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |413| 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 419,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |419| 
        TBIT      AL,#9                 ; [CPU_ALU] |419| 
        B         ||$C$L14||,NTC        ; [CPU_ALU] |419| 
        ; branchcc occurs ; [] |419| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 421,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |421| 
        MOVL      XAR4,#263240          ; [CPU_ARAU] |421| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |421| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 423,column 1,is_stmt,isa 0
||$C$L14||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x1a7)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:USBIntEnableControl"
	.clink
	.global	||USBIntEnableControl||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("USBIntEnableControl")
	.dwattr $C$DW$44, DW_AT_low_pc(||USBIntEnableControl||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("USBIntEnableControl")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$44, DW_AT_decl_column(0x01)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 443,column 1,is_stmt,address ||USBIntEnableControl||,isa 0

	.dwfde $C$DW$CIE, ||USBIntEnableControl||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("ui32Base")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("ui32Flags")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBIntEnableControl           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBIntEnableControl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("ui32Base")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |443| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 454,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |454| 
        MOVB      AH,#0                 ; [CPU_ALU] |454| 
        ANDB      AL,#0xff              ; [CPU_ALU] |454| 
        TEST      ACC                   ; [CPU_ALU] |454| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |454| 
        ; branchcc occurs ; [] |454| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 456,column 9,is_stmt,isa 0
        MOVB      ACC,#11               ; [CPU_ALU] |456| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |456| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |456| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |456| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |456| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |456| 
||$C$L15||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 462,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |462| 
        TBIT      AL,#8                 ; [CPU_ALU] |462| 
        B         ||$C$L16||,NTC        ; [CPU_ALU] |462| 
        ; branchcc occurs ; [] |462| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 464,column 9,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |464| 
        MOV       ACC,#1032             ; [CPU_ALU] |464| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |464| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |464| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |464| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 470,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |470| 
        TBIT      AL,#9                 ; [CPU_ALU] |470| 
        B         ||$C$L17||,NTC        ; [CPU_ALU] |470| 
        ; branchcc occurs ; [] |470| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 472,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |472| 
        MOVL      XAR4,#263240          ; [CPU_ARAU] |472| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |472| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 474,column 1,is_stmt,isa 0
||$C$L17||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x1da)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:USBIntStatus"
	.clink
	.global	||USBIntStatus||

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("USBIntStatus")
	.dwattr $C$DW$49, DW_AT_low_pc(||USBIntStatus||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("USBIntStatus")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x208)
	.dwattr $C$DW$49, DW_AT_decl_column(0x01)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 521,column 1,is_stmt,address ||USBIntStatus||,isa 0

	.dwfde $C$DW$CIE, ||USBIntStatus||
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("ui32Base")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg0]

$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("pui32IntStatusEP")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: USBIntStatus                  FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 12 Auto,  0 SOE     *
;***************************************************************

||USBIntStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("ui32Base")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -2]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("pui32IntStatusEP")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -4]

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("ui32Status")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -6]

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("usbis")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -8]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("rxis")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -10]

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("txis")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -12]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |521| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |521| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 522,column 25,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |522| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |522| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 523,column 20,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |523| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 524,column 19,is_stmt,isa 0
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |524| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 525,column 19,is_stmt,isa 0
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |525| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 527,column 5,is_stmt,isa 0
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |527| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 540,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |540| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |540| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |540| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |540| 
        MOV       ACC,AL                ; [CPU_ALU] |540| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |540| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 542,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |542| 
        MOVU      ACC,*+XAR4[2]         ; [CPU_ALU] |542| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |542| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 544,column 9,is_stmt,isa 0
        MOVU      ACC,*+XAR4[4]         ; [CPU_ALU] |544| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |544| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 548,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |548| 
        OR        *-SP[6],AL            ; [CPU_ALU] |548| 
        OR        *-SP[5],AH            ; [CPU_ALU] |548| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 550,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |550| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |550| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |550| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |550| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 553,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |553| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |553| 
        LSL       ACC,16                ; [CPU_ALU] |553| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |553| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |553| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 555,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |555| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |555| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |555| 
        B         ||$C$L18||,NEQ        ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 560,column 5,is_stmt,isa 0
        MOV       ACC,#1036             ; [CPU_ALU] |560| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |560| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |560| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |560| 
        B         ||$C$L19||,NTC        ; [CPU_ALU] |560| 
        ; branchcc occurs ; [] |560| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 565,column 9,is_stmt,isa 0
        OR        *-SP[6],#256          ; [CPU_ALU] |565| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 570,column 9,is_stmt,isa 0
        MOV       ACC,#1036             ; [CPU_ALU] |570| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |570| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |570| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |570| 
        ORB       AL,#0x01              ; [CPU_ALU] |570| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |570| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 573,column 5,is_stmt,isa 0
        MOVL      XAR4,#263244          ; [CPU_ARAU] |573| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |573| 
        B         ||$C$L20||,NTC        ; [CPU_ALU] |573| 
        ; branchcc occurs ; [] |573| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 578,column 9,is_stmt,isa 0
        OR        *-SP[6],#512          ; [CPU_ALU] |578| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 583,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |583| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |583| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |583| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 589,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |589| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 590,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x24e)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:USBIntStatusControl"
	.clink
	.global	||USBIntStatusControl||

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("USBIntStatusControl")
	.dwattr $C$DW$59, DW_AT_low_pc(||USBIntStatusControl||)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_linkage_name("USBIntStatusControl")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0x279)
	.dwattr $C$DW$59, DW_AT_decl_column(0x01)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 634,column 1,is_stmt,address ||USBIntStatusControl||,isa 0

	.dwfde $C$DW$CIE, ||USBIntStatusControl||
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("ui32Base")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBIntStatusControl           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBIntStatusControl||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("ui32Base")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -2]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("ui32Status")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |634| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 646,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |646| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |646| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |646| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |646| 
        MOV       ACC,AL                ; [CPU_ALU] |646| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |646| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 651,column 5,is_stmt,isa 0
        MOV       ACC,#1036             ; [CPU_ALU] |651| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |651| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |651| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |651| 
        B         ||$C$L21||,NTC        ; [CPU_ALU] |651| 
        ; branchcc occurs ; [] |651| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 656,column 9,is_stmt,isa 0
        OR        *-SP[4],#256          ; [CPU_ALU] |656| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 661,column 9,is_stmt,isa 0
        MOV       ACC,#1036             ; [CPU_ALU] |661| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |661| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |661| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |661| 
        ORB       AL,#0x01              ; [CPU_ALU] |661| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |661| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 664,column 5,is_stmt,isa 0
        MOVL      XAR4,#263244          ; [CPU_ARAU] |664| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |664| 
        B         ||$C$L22||,NTC        ; [CPU_ALU] |664| 
        ; branchcc occurs ; [] |664| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 669,column 9,is_stmt,isa 0
        OR        *-SP[4],#512          ; [CPU_ALU] |669| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 674,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |674| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |674| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |674| 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 680,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |680| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 681,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x2a9)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text:USBIntDisableEndpoint"
	.clink
	.global	||USBIntDisableEndpoint||

$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("USBIntDisableEndpoint")
	.dwattr $C$DW$64, DW_AT_low_pc(||USBIntDisableEndpoint||)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_linkage_name("USBIntDisableEndpoint")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0x2bc)
	.dwattr $C$DW$64, DW_AT_decl_column(0x01)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 701,column 1,is_stmt,address ||USBIntDisableEndpoint||,isa 0

	.dwfde $C$DW$CIE, ||USBIntDisableEndpoint||
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("ui32Base")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg0]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("ui32Flags")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBIntDisableEndpoint         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBIntDisableEndpoint||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("ui32Base")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |701| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 711,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |711| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |711| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |711| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |711| 
        NOT       AL                    ; [CPU_ALU] |711| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |711| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 718,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |718| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |718| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |718| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |718| 
        AND       AH,#65534             ; [CPU_ALU] |718| 
        NOT       AH                    ; [CPU_ALU] |718| 
        AND       *+XAR4[0],AH          ; [CPU_ALU] |718| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 721,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$64, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x2d1)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text:USBIntEnableEndpoint"
	.clink
	.global	||USBIntEnableEndpoint||

$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("USBIntEnableEndpoint")
	.dwattr $C$DW$69, DW_AT_low_pc(||USBIntEnableEndpoint||)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_linkage_name("USBIntEnableEndpoint")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$69, DW_AT_decl_line(0x2e4)
	.dwattr $C$DW$69, DW_AT_decl_column(0x01)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 741,column 1,is_stmt,address ||USBIntEnableEndpoint||,isa 0

	.dwfde $C$DW$CIE, ||USBIntEnableEndpoint||
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_name("ui32Base")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg0]

$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("ui32Flags")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBIntEnableEndpoint          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBIntEnableEndpoint||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("ui32Base")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |741| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 750,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |750| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |750| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |750| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |750| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |750| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 756,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |756| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |756| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |756| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |756| 
        AND       AH,#65534             ; [CPU_ALU] |756| 
        OR        *+XAR4[0],AH          ; [CPU_ALU] |756| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 759,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$69, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x2f7)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text:USBIntStatusEndpoint"
	.clink
	.global	||USBIntStatusEndpoint||

$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("USBIntStatusEndpoint")
	.dwattr $C$DW$74, DW_AT_low_pc(||USBIntStatusEndpoint||)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_linkage_name("USBIntStatusEndpoint")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$74, DW_AT_decl_line(0x30d)
	.dwattr $C$DW$74, DW_AT_decl_column(0x01)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 782,column 1,is_stmt,address ||USBIntStatusEndpoint||,isa 0

	.dwfde $C$DW$CIE, ||USBIntStatusEndpoint||
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("ui32Base")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBIntStatusEndpoint          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBIntStatusEndpoint||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("ui32Base")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -2]

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("ui32Status")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |782| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 793,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |793| 
        MOVU      ACC,*+XAR4[2]         ; [CPU_ALU] |793| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |793| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 794,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*+XAR4[4] << 16   ; [CPU_ALU] |794| 
        OR        *-SP[4],AL            ; [CPU_ALU] |794| 
        OR        *-SP[3],AH            ; [CPU_ALU] |794| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 800,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |800| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 801,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$74, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x321)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text:USBEndpointStatus"
	.clink
	.global	||USBEndpointStatus||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("USBEndpointStatus")
	.dwattr $C$DW$79, DW_AT_low_pc(||USBEndpointStatus||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("USBEndpointStatus")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x36b)
	.dwattr $C$DW$79, DW_AT_decl_column(0x01)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 876,column 1,is_stmt,address ||USBEndpointStatus||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointStatus||
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("ui32Base")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBEndpointStatus             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBEndpointStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("ui32Base")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -2]

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("ui32Status")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |876| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 891,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |891| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |891| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |891| 
        MOVL      XAR0,#258             ; [CPU_ALU] |891| 
        MOVU      ACC,*+XAR4[AR0]       ; [CPU_ALU] |891| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |891| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 896,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |896| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |896| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |896| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR0,#262             ; [CPU_ALU] |896| 
        MOV       ACC,*+XAR4[AR0] << 16 ; [CPU_ALU] |896| 
        OR        *-SP[4],AL            ; [CPU_ALU] |896| 
        OR        *-SP[3],AH            ; [CPU_ALU] |896| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 903,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |903| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 904,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x388)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:USBHostEndpointStatusClear"
	.clink
	.global	||USBHostEndpointStatusClear||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("USBHostEndpointStatusClear")
	.dwattr $C$DW$85, DW_AT_low_pc(||USBHostEndpointStatusClear||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("USBHostEndpointStatusClear")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x39c)
	.dwattr $C$DW$85, DW_AT_decl_column(0x01)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 926,column 1,is_stmt,address ||USBHostEndpointStatusClear||,isa 0

	.dwfde $C$DW$CIE, ||USBHostEndpointStatusClear||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("ui32Base")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]

$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -6]

$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("ui32Flags")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBHostEndpointStatusClear    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostEndpointStatusClear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("ui32Base")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |926| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 939,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |939| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |939| 
        ; branchcc occurs ; [] |939| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 941,column 9,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |941| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |941| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |941| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |941| 
        NOT       AL                    ; [CPU_ALU] |941| 
        MOVB      AH.LSB,*+XAR4[0]      ; [CPU_FPU] |941| 
        AND       AL,AH                 ; [CPU_ALU] |941| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |941| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L23||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 945,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |945| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |945| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |945| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |945| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |945| 
        NOT       AL                    ; [CPU_ALU] |945| 
        MOVB      AH.LSB,*+XAR4[0]      ; [CPU_FPU] |945| 
        AND       AL,AH                 ; [CPU_ALU] |945| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |945| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 947,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |947| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |947| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |947| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |947| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |947| 
        NOT       AL                    ; [CPU_ALU] |947| 
        MOVB      AH.LSB,*+XAR4[0]      ; [CPU_FPU] |947| 
        AND       AL,AH                 ; [CPU_ALU] |947| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |947| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 950,column 1,is_stmt,isa 0
||$C$L24||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x3b6)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:USBDevEndpointStatusClear"
	.clink
	.global	||USBDevEndpointStatusClear||

$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("USBDevEndpointStatusClear")
	.dwattr $C$DW$91, DW_AT_low_pc(||USBDevEndpointStatusClear||)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_linkage_name("USBDevEndpointStatusClear")
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$91, DW_AT_decl_line(0x3ca)
	.dwattr $C$DW$91, DW_AT_decl_column(0x01)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 972,column 1,is_stmt,address ||USBDevEndpointStatusClear||,isa 0

	.dwfde $C$DW$CIE, ||USBDevEndpointStatusClear||
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("ui32Base")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg0]

$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -6]

$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("ui32Flags")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBDevEndpointStatusClear     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevEndpointStatusClear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("ui32Base")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |972| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 986,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |986| 
        B         ||$C$L27||,NEQ        ; [CPU_ALU] |986| 
        ; branchcc occurs ; [] |986| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 991,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |991| 
        TBIT      AL,#0                 ; [CPU_ALU] |991| 
        B         ||$C$L25||,NTC        ; [CPU_ALU] |991| 
        ; branchcc occurs ; [] |991| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 993,column 13,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |993| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |993| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |993| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |993| 
        ORB       AL,#0x40              ; [CPU_ALU] |993| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |993| 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 999,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |999| 
        TBIT      AL,#4                 ; [CPU_ALU] |999| 
        B         ||$C$L26||,NTC        ; [CPU_ALU] |999| 
        ; branchcc occurs ; [] |999| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1001,column 13,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |1001| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1001| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1001| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1001| 
        ORB       AL,#0x80              ; [CPU_ALU] |1001| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1001| 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1007,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1007| 
        TBIT      AL,#2                 ; [CPU_ALU] |1007| 
        B         ||$C$L28||,NTC        ; [CPU_ALU] |1007| 
        ; branchcc occurs ; [] |1007| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1009,column 13,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |1009| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1009| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1009| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1009| 
        AND       AL,AL,#0xfffb         ; [CPU_ALU] |1009| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1009| 
        B         ||$C$L28||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1018,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1018| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1018| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |1018| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1018| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |1018| 
        ANDB      AL,#0x24              ; [CPU_ALU] |1018| 
        NOT       AL                    ; [CPU_ALU] |1018| 
        MOVB      AH.LSB,*+XAR4[0]      ; [CPU_FPU] |1018| 
        AND       AL,AH                 ; [CPU_ALU] |1018| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1018| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1026,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1026| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1026| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |1026| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1026| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1026| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1026| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1026| 
        ANDB      AH,#76                ; [CPU_ALU] |1026| 
        NOT       AH                    ; [CPU_ALU] |1026| 
        AND       AH,AR6                ; [CPU_ALU] |1026| 
        MOVB      *+XAR4[0],AH.LSB      ; [CPU_ALU] |1026| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1030,column 1,is_stmt,isa 0
||$C$L28||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$91, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x406)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text:USBHostEndpointDataToggle"
	.clink
	.global	||USBHostEndpointDataToggle||

$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("USBHostEndpointDataToggle")
	.dwattr $C$DW$97, DW_AT_low_pc(||USBHostEndpointDataToggle||)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_linkage_name("USBHostEndpointDataToggle")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$97, DW_AT_decl_line(0x41e)
	.dwattr $C$DW$97, DW_AT_decl_column(0x01)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1056,column 1,is_stmt,address ||USBHostEndpointDataToggle||,isa 0

	.dwfde $C$DW$CIE, ||USBHostEndpointDataToggle||
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("ui32Base")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg0]

$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -10]

$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_name("bDataToggle")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]

$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("ui32Flags")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: USBHostEndpointDataToggle     FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||USBHostEndpointDataToggle||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("ui32Base")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_breg20 -2]

$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("ui32DataToggle")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -4]

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("bDataToggle")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AR4           ; [CPU_ALU] |1056| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1056| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1071,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1071| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1071| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1076,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |1076| 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |1076| 
        ; branchcc occurs ; [] |1076| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1081,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1081| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |1081| 
        ; branchcc occurs ; [] |1081| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1083,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |1083| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1083| 
        B         ||$C$L31||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1085,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1085| 
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |1085| 
        ; branchcc occurs ; [] |1085| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1087,column 13,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |1087| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1087| 
        B         ||$C$L31||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1091,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1091| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1091| 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1098,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1098| 
        B         ||$C$L32||,NEQ        ; [CPU_ALU] |1098| 
        ; branchcc occurs ; [] |1098| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1103,column 9,is_stmt,isa 0
        MOV       ACC,#259              ; [CPU_ALU] |1103| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1103| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1103| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1103| 
        AND       AL,AL,#0xfff9         ; [CPU_ALU] |1103| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |1103| 
        ORB       AL,#0x04              ; [CPU_ALU] |1103| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1103| 
        MOV       ACC,#259              ; [CPU_ALU] |1103| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1103| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1103| 
        MOV       AL,AR6                ; [CPU_ALU] |1103| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1103| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1108,column 10,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1108| 
        B         ||$C$L33||,NEQ        ; [CPU_ALU] |1108| 
        ; branchcc occurs ; [] |1108| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1113,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1113| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1113| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |1113| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1113| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1113| 
        AND       AL,AL,#0xfff9         ; [CPU_ALU] |1113| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |1113| 
        ORB       AL,#0x04              ; [CPU_ALU] |1113| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1113| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1113| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1113| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |1113| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1113| 
        MOV       AL,AR6                ; [CPU_ALU] |1113| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1113| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1123,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1123| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1123| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |1123| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1123| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1123| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |1123| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |1123| 
        ORB       AL,#0x02              ; [CPU_ALU] |1123| 
        MOVZ      AR6,AL                ; [CPU_ALU] |1123| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1123| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1123| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |1123| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1123| 
        MOV       AL,AR6                ; [CPU_ALU] |1123| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1123| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1128,column 1,is_stmt,isa 0
||$C$L34||:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$97, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x468)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

	.sect	".text:USBEndpointDataToggleClear"
	.clink
	.global	||USBEndpointDataToggleClear||

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("USBEndpointDataToggleClear")
	.dwattr $C$DW$106, DW_AT_low_pc(||USBEndpointDataToggleClear||)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_linkage_name("USBEndpointDataToggleClear")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x47d)
	.dwattr $C$DW$106, DW_AT_decl_column(0x01)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1151,column 1,is_stmt,address ||USBEndpointDataToggleClear||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDataToggleClear||
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("ui32Base")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]

$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg20 -6]

$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("ui32Flags")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBEndpointDataToggleClear    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDataToggleClear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("ui32Base")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1151| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1164,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1164| 
        TBIT      AL,#13                ; [CPU_ALU] |1164| 
        B         ||$C$L35||,NTC        ; [CPU_ALU] |1164| 
        ; branchcc occurs ; [] |1164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1166,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1166| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1166| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |1166| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1166| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1166| 
        ORB       AL,#0x40              ; [CPU_ALU] |1166| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1166| 
        B         ||$C$L36||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L35||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1171,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1171| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1171| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |1171| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1171| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1171| 
        ORB       AL,#0x80              ; [CPU_ALU] |1171| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1171| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1174,column 1,is_stmt,isa 0
||$C$L36||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x496)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text:USBDevEndpointStall"
	.clink
	.global	||USBDevEndpointStall||

$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("USBDevEndpointStall")
	.dwattr $C$DW$112, DW_AT_low_pc(||USBDevEndpointStall||)
	.dwattr $C$DW$112, DW_AT_high_pc(0x00)
	.dwattr $C$DW$112, DW_AT_linkage_name("USBDevEndpointStall")
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$112, DW_AT_decl_line(0x4ac)
	.dwattr $C$DW$112, DW_AT_decl_column(0x01)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1198,column 1,is_stmt,address ||USBDevEndpointStall||,isa 0

	.dwfde $C$DW$CIE, ||USBDevEndpointStall||
$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("ui32Base")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg0]

$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg20 -6]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("ui32Flags")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBDevEndpointStall           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevEndpointStall||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("ui32Base")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1198| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1212,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1212| 
        B         ||$C$L37||,NEQ        ; [CPU_ALU] |1212| 
        ; branchcc occurs ; [] |1212| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1217,column 9,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |1217| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1217| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1217| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1217| 
        ORB       AL,#0x60              ; [CPU_ALU] |1217| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1217| 
        B         ||$C$L39||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1219,column 10,is_stmt,isa 0
        MOV       ACC,#8192             ; [CPU_ALU] |1219| 
        CMPL      ACC,*-SP[8]           ; [CPU_ALU] |1219| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |1219| 
        ; branchcc occurs ; [] |1219| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1224,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1224| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1224| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |1224| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1224| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1224| 
        ORB       AL,#0x10              ; [CPU_ALU] |1224| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1224| 
        B         ||$C$L39||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L38||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1232,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1232| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1232| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |1232| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1232| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1232| 
        ORB       AL,#0x20              ; [CPU_ALU] |1232| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1232| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1235,column 1,is_stmt,isa 0
||$C$L39||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x4d3)
	.dwattr $C$DW$112, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$112

	.sect	".text:USBDevEndpointStallClear"
	.clink
	.global	||USBDevEndpointStallClear||

$C$DW$118	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$118, DW_AT_name("USBDevEndpointStallClear")
	.dwattr $C$DW$118, DW_AT_low_pc(||USBDevEndpointStallClear||)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_linkage_name("USBDevEndpointStallClear")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0x4ea)
	.dwattr $C$DW$118, DW_AT_decl_column(0x01)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1260,column 1,is_stmt,address ||USBDevEndpointStallClear||,isa 0

	.dwfde $C$DW$CIE, ||USBDevEndpointStallClear||
$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("ui32Base")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg0]

$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg20 -6]

$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("ui32Flags")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBDevEndpointStallClear      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevEndpointStallClear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("ui32Base")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1260| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1274,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1274| 
        B         ||$C$L40||,NEQ        ; [CPU_ALU] |1274| 
        ; branchcc occurs ; [] |1274| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1279,column 9,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |1279| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1279| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1279| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1279| 
        AND       AL,AL,#0xfffb         ; [CPU_ALU] |1279| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1279| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L40||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1281,column 10,is_stmt,isa 0
        MOV       ACC,#8192             ; [CPU_ALU] |1281| 
        CMPL      ACC,*-SP[8]           ; [CPU_ALU] |1281| 
        B         ||$C$L41||,NEQ        ; [CPU_ALU] |1281| 
        ; branchcc occurs ; [] |1281| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1286,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1286| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1286| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |1286| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1286| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1286| 
        AND       AL,AL,#0xffcf         ; [CPU_ALU] |1286| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1286| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1292,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1292| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1292| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |1292| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1292| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1292| 
        ORB       AL,#0x40              ; [CPU_ALU] |1292| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1292| 
        B         ||$C$L42||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L41||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1300,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1300| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1300| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |1300| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1300| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1300| 
        AND       AL,AL,#0xff9f         ; [CPU_ALU] |1300| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1300| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1306,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1306| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1306| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |1306| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1306| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1306| 
        ORB       AL,#0x80              ; [CPU_ALU] |1306| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1306| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1309,column 1,is_stmt,isa 0
||$C$L42||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$118, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x51d)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text:USBDevConnect"
	.clink
	.global	||USBDevConnect||

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("USBDevConnect")
	.dwattr $C$DW$124, DW_AT_low_pc(||USBDevConnect||)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_linkage_name("USBDevConnect")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$124, DW_AT_decl_line(0x52e)
	.dwattr $C$DW$124, DW_AT_decl_column(0x01)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1327,column 1,is_stmt,address ||USBDevConnect||,isa 0

	.dwfde $C$DW$CIE, ||USBDevConnect||
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("ui32Base")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBDevConnect                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevConnect||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("ui32Base")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1327| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1336,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1336| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1336| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1336| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1336| 
        ORB       AL,#0x40              ; [CPU_ALU] |1336| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1336| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1337,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x539)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text:USBDevDisconnect"
	.clink
	.global	||USBDevDisconnect||

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("USBDevDisconnect")
	.dwattr $C$DW$128, DW_AT_low_pc(||USBDevDisconnect||)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_linkage_name("USBDevDisconnect")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x54b)
	.dwattr $C$DW$128, DW_AT_decl_column(0x01)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1356,column 1,is_stmt,address ||USBDevDisconnect||,isa 0

	.dwfde $C$DW$CIE, ||USBDevDisconnect||
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("ui32Base")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBDevDisconnect              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevDisconnect||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("ui32Base")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1356| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1365,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |1365| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1365| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1365| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1365| 
        AND       AL,AL,#0xffbf         ; [CPU_ALU] |1365| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1365| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1366,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x556)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text:USBDevAddrSet"
	.clink
	.global	||USBDevAddrSet||

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("USBDevAddrSet")
	.dwattr $C$DW$132, DW_AT_low_pc(||USBDevAddrSet||)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_linkage_name("USBDevAddrSet")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$132, DW_AT_decl_line(0x568)
	.dwattr $C$DW$132, DW_AT_decl_column(0x01)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1385,column 1,is_stmt,address ||USBDevAddrSet||,isa 0

	.dwfde $C$DW$CIE, ||USBDevAddrSet||
$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("ui32Base")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg0]

$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("ui32Address")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBDevAddrSet                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevAddrSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("ui32Base")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1385| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1394,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1394| 
        MOV       AL,*-SP[6]            ; [CPU_ALU] |1394| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1394| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1395,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x573)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text:USBDevAddrGet"
	.clink
	.global	||USBDevAddrGet||

$C$DW$137	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$137, DW_AT_name("USBDevAddrGet")
	.dwattr $C$DW$137, DW_AT_low_pc(||USBDevAddrGet||)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_linkage_name("USBDevAddrGet")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$137, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x584)
	.dwattr $C$DW$137, DW_AT_decl_column(0x01)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1413,column 1,is_stmt,address ||USBDevAddrGet||,isa 0

	.dwfde $C$DW$CIE, ||USBDevAddrGet||
$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("ui32Base")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBDevAddrGet                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevAddrGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("ui32Base")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1413| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1422,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |1422| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1422| 
        MOV       ACC,AL                ; [CPU_ALU] |1422| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1423,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$137, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x58f)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text:USBHostEndpointConfig"
	.clink
	.global	||USBHostEndpointConfig||

$C$DW$141	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$141, DW_AT_name("USBHostEndpointConfig")
	.dwattr $C$DW$141, DW_AT_low_pc(||USBHostEndpointConfig||)
	.dwattr $C$DW$141, DW_AT_high_pc(0x00)
	.dwattr $C$DW$141, DW_AT_linkage_name("USBHostEndpointConfig")
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$141, DW_AT_decl_line(0x5db)
	.dwattr $C$DW$141, DW_AT_decl_column(0x01)
	.dwattr $C$DW$141, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1502,column 1,is_stmt,address ||USBHostEndpointConfig||,isa 0

	.dwfde $C$DW$CIE, ||USBHostEndpointConfig||
$C$DW$142	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$142, DW_AT_name("ui32Base")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg0]

$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_breg20 -8]

$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("ui32MaxPayload")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg20 -10]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("ui32NAKPollInterval")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_breg20 -12]

$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("ui32TargetEndpoint")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg20 -14]

$C$DW$147	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$147, DW_AT_name("ui32Flags")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg20 -16]


;***************************************************************
;* FNAME: USBHostEndpointConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBHostEndpointConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("ui32Base")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg20 -2]

$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("ui32Register")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1502| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1519,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1519| 
        B         ||$C$L45||,NEQ        ; [CPU_ALU] |1519| 
        ; branchcc occurs ; [] |1519| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1524,column 9,is_stmt,isa 0
        MOV       ACC,#267              ; [CPU_ALU] |1524| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1524| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1524| 
        MOV       AL,*-SP[12]           ; [CPU_ALU] |1524| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1524| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1529,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |1529| 
        TBIT      AL,#12                ; [CPU_ALU] |1529| 
        B         ||$C$L43||,NTC        ; [CPU_ALU] |1529| 
        ; branchcc occurs ; [] |1529| 
        MOVB      XAR6,#128             ; [CPU_ALU] |1529| 
        B         ||$C$L44||,UNC        ; [CPU_ALU] |1529| 
        ; branch occurs ; [] |1529| 
||$C$L43||:    
        MOVB      XAR6,#192             ; [CPU_ALU] |1529| 
||$C$L44||:    
        MOV       ACC,#266              ; [CPU_ALU] |1529| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1529| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1529| 
        MOV       AL,AR6                ; [CPU_ALU] |1529| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1529| 
        B         ||$C$L60||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L45||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1538,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |1538| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1538| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1543,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |1543| 
        TBIT      AL,#12                ; [CPU_ALU] |1543| 
        B         ||$C$L46||,NTC        ; [CPU_ALU] |1543| 
        ; branchcc occurs ; [] |1543| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1545,column 13,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |1545| 
        B         ||$C$L50||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L46||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1549,column 13,is_stmt,isa 0
        OR        *-SP[4],#192          ; [CPU_ALU] |1549| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1555,column 9,is_stmt,isa 0
        B         ||$C$L50||,UNC        ; [CPU_ALU] |1555| 
        ; branch occurs ; [] |1555| 
||$C$L47||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1562,column 17,is_stmt,isa 0
        OR        *-SP[4],#32           ; [CPU_ALU] |1562| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1563,column 17,is_stmt,isa 0
        B         ||$C$L51||,UNC        ; [CPU_ALU] |1563| 
        ; branch occurs ; [] |1563| 
||$C$L48||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1571,column 17,is_stmt,isa 0
        OR        *-SP[4],#16           ; [CPU_ALU] |1571| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1572,column 17,is_stmt,isa 0
        B         ||$C$L51||,UNC        ; [CPU_ALU] |1572| 
        ; branch occurs ; [] |1572| 
||$C$L49||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1580,column 17,is_stmt,isa 0
        OR        *-SP[4],#48           ; [CPU_ALU] |1580| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1581,column 17,is_stmt,isa 0
        B         ||$C$L51||,UNC        ; [CPU_ALU] |1581| 
        ; branch occurs ; [] |1581| 
||$C$L50||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1555,column 9,is_stmt,isa 0
        AND       AL,#768               ; [CPU_ALU] |1555| 
        ANDB      AH,#0                 ; [CPU_ALU] |1555| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |1555| 
        TEST      ACC                   ; [CPU_ALU] |1555| 
        B         ||$C$L48||,EQ         ; [CPU_ALU] |1555| 
        ; branchcc occurs ; [] |1555| 
        MOV       ACC,#256              ; [CPU_ALU] |1555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1555| 
        B         ||$C$L47||,EQ         ; [CPU_ALU] |1555| 
        ; branchcc occurs ; [] |1555| 
        MOV       ACC,#512              ; [CPU_ALU] |1555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1555| 
        B         ||$C$L49||,EQ         ; [CPU_ALU] |1555| 
        ; branchcc occurs ; [] |1555| 
||$C$L51||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1597,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |1597| 
        TBIT      AL,#13                ; [CPU_ALU] |1597| 
        B         ||$C$L55||,NTC        ; [CPU_ALU] |1597| 
        ; branchcc occurs ; [] |1597| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1602,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1602| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1602| 
        ADD       ACC,#133 << 1         ; [CPU_ALU] |1602| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1602| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1602| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1602| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1608,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1608| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1608| 
        ADD       ACC,#267 << 0         ; [CPU_ALU] |1608| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1608| 
        MOV       AL,*-SP[12]           ; [CPU_ALU] |1608| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1608| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1614,column 13,is_stmt,isa 0
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |1614| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1614| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1614| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1614| 
        MOVL      XAR0,#256             ; [CPU_ALU] |1614| 
        MOV       *+XAR4[AR0],AR6       ; [CPU_ALU] |1614| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1620,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1620| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1620| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1626,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |1626| 
        TBIT      AL,#0                 ; [CPU_ALU] |1626| 
        B         ||$C$L52||,NTC        ; [CPU_ALU] |1626| 
        ; branchcc occurs ; [] |1626| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1628,column 17,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |1628| 
||$C$L52||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1634,column 13,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |1634| 
        B         ||$C$L53||,NTC        ; [CPU_ALU] |1634| 
        ; branchcc occurs ; [] |1634| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1636,column 17,is_stmt,isa 0
        OR        *-SP[4],#20           ; [CPU_ALU] |1636| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L53||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1638,column 18,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |1638| 
        B         ||$C$L54||,NTC        ; [CPU_ALU] |1638| 
        ; branchcc occurs ; [] |1638| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1640,column 17,is_stmt,isa 0
        OR        *-SP[4],#16           ; [CPU_ALU] |1640| 
||$C$L54||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1646,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1646| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1646| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |1646| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1646| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1646| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1646| 
        B         ||$C$L60||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L55||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1654,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1654| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1654| 
        ADD       ACC,#67 << 2          ; [CPU_ALU] |1654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1654| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1654| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1654| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1660,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1660| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1660| 
        ADD       ACC,#269 << 0         ; [CPU_ALU] |1660| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1660| 
        MOV       AL,*-SP[12]           ; [CPU_ALU] |1660| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1660| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1666,column 13,is_stmt,isa 0
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |1666| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1666| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1666| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1666| 
        MOVL      XAR0,#260             ; [CPU_ALU] |1666| 
        MOV       *+XAR4[AR0],AR6       ; [CPU_ALU] |1666| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1672,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1672| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1672| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1678,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |1678| 
        TBIT      AL,#2                 ; [CPU_ALU] |1678| 
        B         ||$C$L56||,NTC        ; [CPU_ALU] |1678| 
        ; branchcc occurs ; [] |1678| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1680,column 17,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |1680| 
||$C$L56||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1686,column 13,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |1686| 
        B         ||$C$L57||,NTC        ; [CPU_ALU] |1686| 
        ; branchcc occurs ; [] |1686| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1688,column 17,is_stmt,isa 0
        OR        *-SP[4],#64           ; [CPU_ALU] |1688| 
||$C$L57||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1694,column 13,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |1694| 
        B         ||$C$L58||,NTC        ; [CPU_ALU] |1694| 
        ; branchcc occurs ; [] |1694| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1696,column 17,is_stmt,isa 0
        OR        *-SP[4],#40           ; [CPU_ALU] |1696| 
        B         ||$C$L59||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L58||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1698,column 18,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |1698| 
        B         ||$C$L59||,NTC        ; [CPU_ALU] |1698| 
        ; branchcc occurs ; [] |1698| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1700,column 17,is_stmt,isa 0
        OR        *-SP[4],#32           ; [CPU_ALU] |1700| 
||$C$L59||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1706,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1706| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1706| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |1706| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1706| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1706| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1706| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1710,column 1,is_stmt,isa 0
||$C$L60||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$141, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$141, DW_AT_TI_end_line(0x6ae)
	.dwattr $C$DW$141, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$141

	.sect	".text:USBDevEndpointConfigSet"
	.clink
	.global	||USBDevEndpointConfigSet||

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("USBDevEndpointConfigSet")
	.dwattr $C$DW$151, DW_AT_low_pc(||USBDevEndpointConfigSet||)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_linkage_name("USBDevEndpointConfigSet")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$151, DW_AT_decl_line(0x6e1)
	.dwattr $C$DW$151, DW_AT_decl_column(0x01)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1763,column 1,is_stmt,address ||USBDevEndpointConfigSet||,isa 0

	.dwfde $C$DW$CIE, ||USBDevEndpointConfigSet||
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("ui32Base")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg0]

$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_breg20 -8]

$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("ui32MaxPacketSize")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg20 -10]

$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("ui32Flags")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: USBDevEndpointConfigSet       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBDevEndpointConfigSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("ui32Base")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_breg20 -2]

$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("ui32Register")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1763| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1778,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1778| 
        TBIT      AL,#13                ; [CPU_ALU] |1778| 
        B         ||$C$L65||,NTC        ; [CPU_ALU] |1778| 
        ; branchcc occurs ; [] |1778| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1783,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1783| 
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |1783| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1783| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1783| 
        MOVL      XAR0,#256             ; [CPU_ALU] |1783| 
        MOV       *+XAR4[AR0],AR6       ; [CPU_ALU] |1783| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1789,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1789| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1789| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1795,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1795| 
        TBIT      AL,#0                 ; [CPU_ALU] |1795| 
        B         ||$C$L61||,NTC        ; [CPU_ALU] |1795| 
        ; branchcc occurs ; [] |1795| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1797,column 13,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |1797| 
||$C$L61||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1803,column 9,is_stmt,isa 0
        TBIT      AL,#4                 ; [CPU_ALU] |1803| 
        B         ||$C$L62||,NTC        ; [CPU_ALU] |1803| 
        ; branchcc occurs ; [] |1803| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1805,column 13,is_stmt,isa 0
        OR        *-SP[4],#20           ; [CPU_ALU] |1805| 
        B         ||$C$L63||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L62||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1807,column 14,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |1807| 
        B         ||$C$L63||,NTC        ; [CPU_ALU] |1807| 
        ; branchcc occurs ; [] |1807| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1809,column 13,is_stmt,isa 0
        OR        *-SP[4],#16           ; [CPU_ALU] |1809| 
||$C$L63||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1815,column 9,is_stmt,isa 0
        AND       AL,#768               ; [CPU_ALU] |1815| 
        ANDB      AH,#0                 ; [CPU_ALU] |1815| 
        TEST      ACC                   ; [CPU_ALU] |1815| 
        B         ||$C$L64||,NEQ        ; [CPU_ALU] |1815| 
        ; branchcc occurs ; [] |1815| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1817,column 13,is_stmt,isa 0
        OR        *-SP[4],#64           ; [CPU_ALU] |1817| 
||$C$L64||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1823,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1823| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1823| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |1823| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1823| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1823| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1823| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1829,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1829| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1829| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |1829| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1829| 
        MOVB      AL,#64                ; [CPU_ALU] |1829| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1829| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L65||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1837,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1837| 
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |1837| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1837| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1837| 
        MOVL      XAR0,#260             ; [CPU_ALU] |1837| 
        MOV       *+XAR4[AR0],AR6       ; [CPU_ALU] |1837| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1843,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |1843| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1843| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1849,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1849| 
        TBIT      AL,#2                 ; [CPU_ALU] |1849| 
        B         ||$C$L66||,NTC        ; [CPU_ALU] |1849| 
        ; branchcc occurs ; [] |1849| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1851,column 13,is_stmt,isa 0
        MOVB      ACC,#128              ; [CPU_ALU] |1851| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1851| 
||$C$L66||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1857,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1857| 
        TBIT      AL,#4                 ; [CPU_ALU] |1857| 
        B         ||$C$L67||,NTC        ; [CPU_ALU] |1857| 
        ; branchcc occurs ; [] |1857| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1859,column 13,is_stmt,isa 0
        OR        *-SP[4],#40           ; [CPU_ALU] |1859| 
        B         ||$C$L68||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L67||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1861,column 14,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_ALU] |1861| 
        B         ||$C$L68||,NTC        ; [CPU_ALU] |1861| 
        ; branchcc occurs ; [] |1861| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1863,column 13,is_stmt,isa 0
        OR        *-SP[4],#32           ; [CPU_ALU] |1863| 
||$C$L68||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1869,column 9,is_stmt,isa 0
        AND       AL,#768               ; [CPU_ALU] |1869| 
        ANDB      AH,#0                 ; [CPU_ALU] |1869| 
        TEST      ACC                   ; [CPU_ALU] |1869| 
        B         ||$C$L69||,NEQ        ; [CPU_ALU] |1869| 
        ; branchcc occurs ; [] |1869| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1871,column 13,is_stmt,isa 0
        OR        *-SP[4],#64           ; [CPU_ALU] |1871| 
||$C$L69||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1877,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1877| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1877| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |1877| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1877| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |1877| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1877| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1883,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1883| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1883| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |1883| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1883| 
        MOVB      AL,#128               ; [CPU_ALU] |1883| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |1883| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1886,column 1,is_stmt,isa 0
||$C$L70||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x75e)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text:USBDevEndpointConfigGet"
	.clink
	.global	||USBDevEndpointConfigGet||

$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("USBDevEndpointConfigGet")
	.dwattr $C$DW$159, DW_AT_low_pc(||USBDevEndpointConfigGet||)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_linkage_name("USBDevEndpointConfigGet")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$159, DW_AT_decl_line(0x778)
	.dwattr $C$DW$159, DW_AT_decl_column(0x01)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1914,column 1,is_stmt,address ||USBDevEndpointConfigGet||,isa 0

	.dwfde $C$DW$CIE, ||USBDevEndpointConfigGet||
$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("ui32Base")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg0]

$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_breg20 -12]

$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("pui32MaxPacketSize")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg12]

$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_name("pui32Flags")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: USBDevEndpointConfigGet       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

||USBDevEndpointConfigGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("ui32Base")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg20 -2]

$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("pui32MaxPacketSize")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_breg20 -4]

$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("pui32Flags")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_breg20 -6]

$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("ui32Register")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -8]

        MOVL      *-SP[6],XAR5          ; [CPU_ALU] |1914| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |1914| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1914| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1927,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |1927| 
        B         ||$C$L80||,EQ         ; [CPU_ALU] |1927| 
        ; branchcc occurs ; [] |1927| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1927| 
        B         ||$C$L80||,EQ         ; [CPU_ALU] |1927| 
        ; branchcc occurs ; [] |1927| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1933,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1933| 
        TBIT      *+XAR4[0],#13         ; [CPU_ALU] |1933| 
        B         ||$C$L75||,NTC        ; [CPU_ALU] |1933| 
        ; branchcc occurs ; [] |1933| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1938,column 13,is_stmt,isa 0
        MOVL      XAR4,#8192            ; [CPU_ARAU] |1938| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |1938| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1943,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1943| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1943| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1943| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |1943| 
        MOVL      XAR0,#256             ; [CPU_ALU] |1943| 
        MOVU      ACC,*+XAR4[AR0]       ; [CPU_ALU] |1943| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |1943| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1950,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |1950| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |1950| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |1950| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1950| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |1950| 
        MOV       ACC,AL                ; [CPU_ALU] |1950| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |1950| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1957,column 13,is_stmt,isa 0
        TBIT      *-SP[8],#7            ; [CPU_ALU] |1957| 
        B         ||$C$L71||,NTC        ; [CPU_ALU] |1957| 
        ; branchcc occurs ; [] |1957| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1959,column 17,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1959| 
        OR        *+XAR4[0],#1          ; [CPU_ALU] |1959| 
||$C$L71||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1965,column 13,is_stmt,isa 0
        TBIT      *-SP[8],#4            ; [CPU_ALU] |1965| 
        B         ||$C$L73||,NTC        ; [CPU_ALU] |1965| 
        ; branchcc occurs ; [] |1965| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1967,column 17,is_stmt,isa 0
        TBIT      *-SP[8],#2            ; [CPU_ALU] |1967| 
        B         ||$C$L72||,NTC        ; [CPU_ALU] |1967| 
        ; branchcc occurs ; [] |1967| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1969,column 21,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1969| 
        OR        *+XAR4[0],#16         ; [CPU_ALU] |1969| 
        B         ||$C$L73||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L72||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1973,column 21,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1973| 
        OR        *+XAR4[0],#8          ; [CPU_ALU] |1973| 
||$C$L73||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1980,column 13,is_stmt,isa 0
        TBIT      *-SP[8],#6            ; [CPU_ALU] |1980| 
        B         ||$C$L74||,NTC        ; [CPU_ALU] |1980| 
        ; branchcc occurs ; [] |1980| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1982,column 17,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1982| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1982| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1982| 
        B         ||$C$L80||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L74||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 1995,column 17,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1995| 
        OR        *+XAR4[0],#256        ; [CPU_ALU] |1995| 
        B         ||$C$L80||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L75||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2003,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2003| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2003| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2008,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |2008| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2008| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2008| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |2008| 
        MOVL      XAR0,#260             ; [CPU_ALU] |2008| 
        MOVU      ACC,*+XAR4[AR0]       ; [CPU_ALU] |2008| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |2008| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2015,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |2015| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2015| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |2015| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2015| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2015| 
        MOV       ACC,AL                ; [CPU_ALU] |2015| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |2015| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2022,column 13,is_stmt,isa 0
        TBIT      *-SP[8],#7            ; [CPU_ALU] |2022| 
        B         ||$C$L76||,NTC        ; [CPU_ALU] |2022| 
        ; branchcc occurs ; [] |2022| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2024,column 17,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2024| 
        OR        *+XAR4[0],#4          ; [CPU_ALU] |2024| 
||$C$L76||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2030,column 13,is_stmt,isa 0
        TBIT      *-SP[8],#5            ; [CPU_ALU] |2030| 
        B         ||$C$L78||,NTC        ; [CPU_ALU] |2030| 
        ; branchcc occurs ; [] |2030| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2032,column 17,is_stmt,isa 0
        TBIT      *-SP[8],#3            ; [CPU_ALU] |2032| 
        B         ||$C$L77||,NTC        ; [CPU_ALU] |2032| 
        ; branchcc occurs ; [] |2032| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2034,column 21,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2034| 
        OR        *+XAR4[0],#16         ; [CPU_ALU] |2034| 
        B         ||$C$L78||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L77||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2038,column 21,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2038| 
        OR        *+XAR4[0],#8          ; [CPU_ALU] |2038| 
||$C$L78||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2045,column 13,is_stmt,isa 0
        TBIT      *-SP[8],#6            ; [CPU_ALU] |2045| 
        B         ||$C$L79||,NTC        ; [CPU_ALU] |2045| 
        ; branchcc occurs ; [] |2045| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2047,column 17,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2047| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |2047| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2047| 
        B         ||$C$L80||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L79||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2060,column 17,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2060| 
        OR        *+XAR4[0],#256        ; [CPU_ALU] |2060| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2064,column 1,is_stmt,isa 0
||$C$L80||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$159, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x810)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text:USBFIFOConfigSet"
	.clink
	.global	||USBFIFOConfigSet||

$C$DW$169	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$169, DW_AT_name("USBFIFOConfigSet")
	.dwattr $C$DW$169, DW_AT_low_pc(||USBFIFOConfigSet||)
	.dwattr $C$DW$169, DW_AT_high_pc(0x00)
	.dwattr $C$DW$169, DW_AT_linkage_name("USBFIFOConfigSet")
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$169, DW_AT_decl_line(0x830)
	.dwattr $C$DW$169, DW_AT_decl_column(0x01)
	.dwattr $C$DW$169, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2099,column 1,is_stmt,address ||USBFIFOConfigSet||,isa 0

	.dwfde $C$DW$CIE, ||USBFIFOConfigSet||
$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("ui32Base")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg0]

$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg20 -14]

$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_name("ui32FIFOAddress")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_breg20 -16]

$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("ui32FIFOSize")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_breg20 -18]

$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_name("ui32Flags")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_breg20 -20]


;***************************************************************
;* FNAME: USBFIFOConfigSet              FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBFIFOConfigSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("ui32Base")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -10]

        MOVL      *-SP[10],ACC          ; [CPU_ALU] |2099| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2112,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[20]          ; [CPU_ALU] |2112| 
        TBIT      AL,#13                ; [CPU_ALU] |2112| 
        B         ||$C$L81||,NTC        ; [CPU_ALU] |2112| 
        ; branchcc occurs ; [] |2112| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2117,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2117| 
        MOVB      XAR6,#98              ; [CPU_ALU] |2117| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,4                 ; [CPU_ALU] |2117| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2117| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |2117| 
        MOVL      XAR6,*-SP[18]         ; [CPU_ALU] |2117| 
        MOVB      ACC,#1                ; [CPU_ALU] |2117| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |2117| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |2117| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2117| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_USBIndexWrite")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #||_USBIndexWrite||   ; [CPU_ALU] |2117| 
        ; call occurs [#||_USBIndexWrite||] ; [] |2117| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2119,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR6,#100             ; [CPU_ALU] |2119| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2119| 
        SFR       ACC,4                 ; [CPU_ALU] |2119| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2119| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |2119| 
        MOVB      XAR6,#2               ; [CPU_ALU] |2119| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2119| 
        SFR       ACC,3                 ; [CPU_ALU] |2119| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |2119| 
        MOVL      *-SP[8],XAR6          ; [CPU_ALU] |2119| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2119| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_USBIndexWrite")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #||_USBIndexWrite||   ; [CPU_ALU] |2119| 
        ; call occurs [#||_USBIndexWrite||] ; [] |2119| 
        B         ||$C$L82||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L81||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2127,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2127| 
        MOVB      XAR6,#99              ; [CPU_ALU] |2127| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,4                 ; [CPU_ALU] |2127| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2127| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |2127| 
        MOVL      XAR6,*-SP[18]         ; [CPU_ALU] |2127| 
        MOVB      ACC,#1                ; [CPU_ALU] |2127| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |2127| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |2127| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2127| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_USBIndexWrite")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #||_USBIndexWrite||   ; [CPU_ALU] |2127| 
        ; call occurs [#||_USBIndexWrite||] ; [] |2127| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2129,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR6,#102             ; [CPU_ALU] |2129| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2129| 
        SFR       ACC,4                 ; [CPU_ALU] |2129| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2129| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |2129| 
        MOVB      XAR6,#2               ; [CPU_ALU] |2129| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2129| 
        SFR       ACC,3                 ; [CPU_ALU] |2129| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |2129| 
        MOVL      *-SP[8],XAR6          ; [CPU_ALU] |2129| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2129| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_USBIndexWrite")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #||_USBIndexWrite||   ; [CPU_ALU] |2129| 
        ; call occurs [#||_USBIndexWrite||] ; [] |2129| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2132,column 1,is_stmt,isa 0
||$C$L82||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$169, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x854)
	.dwattr $C$DW$169, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$169

	.sect	".text:USBFIFOConfigGet"
	.clink
	.global	||USBFIFOConfigGet||

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("USBFIFOConfigGet")
	.dwattr $C$DW$181, DW_AT_low_pc(||USBFIFOConfigGet||)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_linkage_name("USBFIFOConfigGet")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$181, DW_AT_decl_line(0x86f)
	.dwattr $C$DW$181, DW_AT_decl_column(0x01)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2162,column 1,is_stmt,address ||USBFIFOConfigGet||,isa 0

	.dwfde $C$DW$CIE, ||USBFIFOConfigGet||
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("ui32Base")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg0]

$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_breg20 -16]

$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("pui32FIFOAddress")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg12]

$C$DW$185	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$185, DW_AT_name("pui32FIFOSize")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg14]

$C$DW$186	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$186, DW_AT_name("ui32Flags")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_breg20 -18]


;***************************************************************
;* FNAME: USBFIFOConfigGet              FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||USBFIFOConfigGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("ui32Base")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_breg20 -8]

$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("pui32FIFOAddress")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_breg20 -10]

$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("pui32FIFOSize")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_breg20 -12]

        MOVL      *-SP[12],XAR5         ; [CPU_ALU] |2162| 
        MOVL      *-SP[10],XAR4         ; [CPU_ALU] |2162| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |2162| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2175,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |2175| 
        TBIT      AL,#13                ; [CPU_ALU] |2175| 
        B         ||$C$L83||,NTC        ; [CPU_ALU] |2175| 
        ; branchcc occurs ; [] |2175| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2180,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2180| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR7,#100             ; [CPU_ALU] |2180| 
        MOVB      XAR6,#2               ; [CPU_ALU] |2180| 
        SFR       ACC,4                 ; [CPU_ALU] |2180| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2180| 
        MOVL      *-SP[4],XAR7          ; [CPU_ALU] |2180| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |2180| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2180| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_USBIndexRead")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #||_USBIndexRead||    ; [CPU_ALU] |2180| 
        ; call occurs [#||_USBIndexRead||] ; [] |2180| 
        MOVL      XAR4,*-SP[10]         ; [CPU_ALU] |2180| 
        LSL       ACC,3                 ; [CPU_ALU] |2180| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2183,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR7,#98              ; [CPU_ALU] |2183| 
        MOVB      XAR6,#1               ; [CPU_ALU] |2183| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2183| 
        SFR       ACC,4                 ; [CPU_ALU] |2183| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2183| 
        MOVL      *-SP[4],XAR7          ; [CPU_ALU] |2183| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |2183| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2183| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_USBIndexRead")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #||_USBIndexRead||    ; [CPU_ALU] |2183| 
        ; call occurs [#||_USBIndexRead||] ; [] |2183| 
        MOVL      XAR4,*-SP[12]         ; [CPU_ALU] |2183| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2183| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L83||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2191,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2191| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR7,#102             ; [CPU_ALU] |2191| 
        MOVB      XAR6,#2               ; [CPU_ALU] |2191| 
        SFR       ACC,4                 ; [CPU_ALU] |2191| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2191| 
        MOVL      *-SP[4],XAR7          ; [CPU_ALU] |2191| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |2191| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2191| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_USBIndexRead")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #||_USBIndexRead||    ; [CPU_ALU] |2191| 
        ; call occurs [#||_USBIndexRead||] ; [] |2191| 
        MOVL      XAR4,*-SP[10]         ; [CPU_ALU] |2191| 
        LSL       ACC,3                 ; [CPU_ALU] |2191| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2191| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2194,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR7,#99              ; [CPU_ALU] |2194| 
        MOVB      XAR6,#1               ; [CPU_ALU] |2194| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2194| 
        SFR       ACC,4                 ; [CPU_ALU] |2194| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2194| 
        MOVL      *-SP[4],XAR7          ; [CPU_ALU] |2194| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |2194| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2194| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_USBIndexRead")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #||_USBIndexRead||    ; [CPU_ALU] |2194| 
        ; call occurs [#||_USBIndexRead||] ; [] |2194| 
        MOVL      XAR4,*-SP[12]         ; [CPU_ALU] |2194| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2194| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2197,column 1,is_stmt,isa 0
||$C$L84||:    
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x895)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text:USBEndpointDMAConfigSet"
	.clink
	.global	||USBEndpointDMAConfigSet||

$C$DW$195	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$195, DW_AT_name("USBEndpointDMAConfigSet")
	.dwattr $C$DW$195, DW_AT_low_pc(||USBEndpointDMAConfigSet||)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_linkage_name("USBEndpointDMAConfigSet")
	.dwattr $C$DW$195, DW_AT_external
	.dwattr $C$DW$195, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$195, DW_AT_decl_line(0x8e5)
	.dwattr $C$DW$195, DW_AT_decl_column(0x01)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2279,column 1,is_stmt,address ||USBEndpointDMAConfigSet||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDMAConfigSet||
$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_name("ui32Base")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg0]

$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg20 -8]

$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("ui32Config")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: USBEndpointDMAConfigSet       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDMAConfigSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("ui32Base")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_breg20 -2]

$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("ui32NewConfig")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2282,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2282| 
        TBIT      AL,#13                ; [CPU_ALU] |2282| 
        B         ||$C$L87||,NTC        ; [CPU_ALU] |2282| 
        ; branchcc occurs ; [] |2282| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2287,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2287| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2287| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |2287| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2287| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2287| 
        AND       AL,#0xff7b            ; [CPU_ALU] |2287| 
        MOV       ACC,AL                ; [CPU_ALU] |2287| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2287| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2291,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2291| 
        TBIT      AL,#4                 ; [CPU_ALU] |2291| 
        B         ||$C$L85||,NTC        ; [CPU_ALU] |2291| 
        ; branchcc occurs ; [] |2291| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2293,column 13,is_stmt,isa 0
        OR        *-SP[4],#4            ; [CPU_ALU] |2293| 
||$C$L85||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2296,column 9,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |2296| 
        B         ||$C$L86||,NTC        ; [CPU_ALU] |2296| 
        ; branchcc occurs ; [] |2296| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2298,column 13,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |2298| 
||$C$L86||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2301,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2301| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2301| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |2301| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2301| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |2301| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2301| 
        B         ||$C$L91||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L87||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2306,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2306| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2306| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |2306| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2306| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2306| 
        AND       AL,#0xff37            ; [CPU_ALU] |2306| 
        MOV       ACC,AL                ; [CPU_ALU] |2306| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2306| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2310,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2310| 
        TBIT      AL,#4                 ; [CPU_ALU] |2310| 
        B         ||$C$L88||,NTC        ; [CPU_ALU] |2310| 
        ; branchcc occurs ; [] |2310| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2312,column 13,is_stmt,isa 0
        OR        *-SP[4],#8            ; [CPU_ALU] |2312| 
||$C$L88||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2315,column 9,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |2315| 
        B         ||$C$L89||,NTC        ; [CPU_ALU] |2315| 
        ; branchcc occurs ; [] |2315| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2317,column 13,is_stmt,isa 0
        OR        *-SP[4],#128          ; [CPU_ALU] |2317| 
||$C$L89||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2319,column 9,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |2319| 
        B         ||$C$L90||,NTC        ; [CPU_ALU] |2319| 
        ; branchcc occurs ; [] |2319| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2321,column 13,is_stmt,isa 0
        OR        *-SP[4],#64           ; [CPU_ALU] |2321| 
||$C$L90||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2323,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2323| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2323| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |2323| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2323| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |2323| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2323| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2326,column 1,is_stmt,isa 0
||$C$L91||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$195, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x916)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

	.sect	".text:USBEndpointDMAEnable"
	.clink
	.global	||USBEndpointDMAEnable||

$C$DW$202	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$202, DW_AT_name("USBEndpointDMAEnable")
	.dwattr $C$DW$202, DW_AT_low_pc(||USBEndpointDMAEnable||)
	.dwattr $C$DW$202, DW_AT_high_pc(0x00)
	.dwattr $C$DW$202, DW_AT_linkage_name("USBEndpointDMAEnable")
	.dwattr $C$DW$202, DW_AT_external
	.dwattr $C$DW$202, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$202, DW_AT_decl_line(0x92e)
	.dwattr $C$DW$202, DW_AT_decl_column(0x01)
	.dwattr $C$DW$202, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2352,column 1,is_stmt,address ||USBEndpointDMAEnable||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDMAEnable||
$C$DW$203	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$203, DW_AT_name("ui32Base")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg0]

$C$DW$204	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$204, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_breg20 -6]

$C$DW$205	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$205, DW_AT_name("ui32Flags")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBEndpointDMAEnable          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDMAEnable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("ui32Base")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2352| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2356,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2356| 
        TBIT      AL,#13                ; [CPU_ALU] |2356| 
        B         ||$C$L92||,NTC        ; [CPU_ALU] |2356| 
        ; branchcc occurs ; [] |2356| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2361,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2361| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2361| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |2361| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2361| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2361| 
        ORB       AL,#0x10              ; [CPU_ALU] |2361| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2361| 
        B         ||$C$L93||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L92||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2369,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2369| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2369| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |2369| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2369| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2369| 
        ORB       AL,#0x20              ; [CPU_ALU] |2369| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2369| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2372,column 1,is_stmt,isa 0
||$C$L93||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$202, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x944)
	.dwattr $C$DW$202, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$202

	.sect	".text:USBEndpointDMADisable"
	.clink
	.global	||USBEndpointDMADisable||

$C$DW$208	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$208, DW_AT_name("USBEndpointDMADisable")
	.dwattr $C$DW$208, DW_AT_low_pc(||USBEndpointDMADisable||)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_linkage_name("USBEndpointDMADisable")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$208, DW_AT_decl_line(0x956)
	.dwattr $C$DW$208, DW_AT_decl_column(0x01)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2392,column 1,is_stmt,address ||USBEndpointDMADisable||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDMADisable||
$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_name("ui32Base")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg0]

$C$DW$210	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$210, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_breg20 -6]

$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_name("ui32Flags")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBEndpointDMADisable         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDMADisable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("ui32Base")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2392| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2397,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2397| 
        TBIT      AL,#13                ; [CPU_ALU] |2397| 
        B         ||$C$L94||,NTC        ; [CPU_ALU] |2397| 
        ; branchcc occurs ; [] |2397| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2402,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2402| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2402| 
        ADD       ACC,#259 << 0         ; [CPU_ALU] |2402| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2402| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2402| 
        AND       AL,AL,#0xffef         ; [CPU_ALU] |2402| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2402| 
        B         ||$C$L95||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L94||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2410,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2410| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2410| 
        ADD       ACC,#263 << 0         ; [CPU_ALU] |2410| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2410| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2410| 
        AND       AL,AL,#0xffdf         ; [CPU_ALU] |2410| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2410| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2413,column 1,is_stmt,isa 0
||$C$L95||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$208, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x96d)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text:USBEndpointDataAvail"
	.clink
	.global	||USBEndpointDataAvail||

$C$DW$214	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$214, DW_AT_name("USBEndpointDataAvail")
	.dwattr $C$DW$214, DW_AT_low_pc(||USBEndpointDataAvail||)
	.dwattr $C$DW$214, DW_AT_high_pc(0x00)
	.dwattr $C$DW$214, DW_AT_linkage_name("USBEndpointDataAvail")
	.dwattr $C$DW$214, DW_AT_external
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$214, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$214, DW_AT_decl_line(0x980)
	.dwattr $C$DW$214, DW_AT_decl_column(0x01)
	.dwattr $C$DW$214, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2433,column 1,is_stmt,address ||USBEndpointDataAvail||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDataAvail||
$C$DW$215	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$215, DW_AT_name("ui32Base")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg0]

$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBEndpointDataAvail          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDataAvail||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("ui32Base")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -2]

$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("ui32Register")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2433| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2449,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2449| 
        B         ||$C$L96||,NEQ        ; [CPU_ALU] |2449| 
        ; branchcc occurs ; [] |2449| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2451,column 9,is_stmt,isa 0
        MOVL      XAR4,#258             ; [CPU_ARAU] |2451| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |2451| 
        B         ||$C$L97||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L96||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2455,column 9,is_stmt,isa 0
        MOV       ACC,#262              ; [CPU_ALU] |2455| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |2455| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2455| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2455| 
||$C$L97||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2461,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2461| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2461| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2461| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2461| 
        B         ||$C$L98||,TC         ; [CPU_ALU] |2461| 
        ; branchcc occurs ; [] |2461| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2463,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2463| 
        B         ||$C$L99||,UNC        ; [CPU_ALU] |2463| 
        ; branch occurs ; [] |2463| 
||$C$L98||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2469,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2469| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2469| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2469| 
        MOVL      XAR0,#264             ; [CPU_ALU] |2469| 
        MOVU      ACC,*+XAR4[AR0]       ; [CPU_ALU] |2469| 
||$C$L99||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2470,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$214, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$214, DW_AT_TI_end_line(0x9a6)
	.dwattr $C$DW$214, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$214

	.sect	".text:USBEndpointDataGet"
	.clink
	.global	||USBEndpointDataGet||

$C$DW$220	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$220, DW_AT_name("USBEndpointDataGet")
	.dwattr $C$DW$220, DW_AT_low_pc(||USBEndpointDataGet||)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_linkage_name("USBEndpointDataGet")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$220, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$220, DW_AT_decl_line(0x9c0)
	.dwattr $C$DW$220, DW_AT_decl_column(0x01)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2498,column 1,is_stmt,address ||USBEndpointDataGet||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDataGet||
$C$DW$221	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$221, DW_AT_name("ui32Base")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg0]

$C$DW$222	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$222, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_breg20 -16]

$C$DW$223	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$223, DW_AT_name("pui8Data")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg12]

$C$DW$224	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$224, DW_AT_name("pui32Size")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: USBEndpointDataGet            FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 12 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDataGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("ui32Base")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_breg20 -2]

$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("pui8Data")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_breg20 -4]

$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("pui32Size")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_breg20 -6]

$C$DW$228	.dwtag  DW_TAG_variable
	.dwattr $C$DW$228, DW_AT_name("ui32Register")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_breg20 -8]

$C$DW$229	.dwtag  DW_TAG_variable
	.dwattr $C$DW$229, DW_AT_name("ui32ByteCount")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_breg20 -10]

$C$DW$230	.dwtag  DW_TAG_variable
	.dwattr $C$DW$230, DW_AT_name("ui32FIFO")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_breg20 -12]

        MOVL      *-SP[6],XAR5          ; [CPU_ALU] |2498| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |2498| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2498| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2514,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2514| 
        B         ||$C$L100||,NEQ       ; [CPU_ALU] |2514| 
        ; branchcc occurs ; [] |2514| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2516,column 9,is_stmt,isa 0
        MOVL      XAR4,#258             ; [CPU_ARAU] |2516| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |2516| 
        B         ||$C$L101||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L100||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2520,column 9,is_stmt,isa 0
        MOV       ACC,#262              ; [CPU_ALU] |2520| 
        ADDL      ACC,*-SP[16]          ; [CPU_ALU] |2520| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2520| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |2520| 
||$C$L101||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2526,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2526| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2526| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2526| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2526| 
        B         ||$C$L102||,TC        ; [CPU_ALU] |2526| 
        ; branchcc occurs ; [] |2526| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2531,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2531| 
        MOVB      ACC,#0                ; [CPU_ALU] |2531| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2531| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2536,column 9,is_stmt,isa 0
        SUBB      ACC,#1                ; [CPU_ALU] |2536| 
        B         ||$C$L107||,UNC       ; [CPU_ALU] |2536| 
        ; branch occurs ; [] |2536| 
||$C$L102||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2542,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2542| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2542| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2542| 
        MOVL      XAR0,#264             ; [CPU_ALU] |2542| 
        MOVU      ACC,*+XAR4[AR0]       ; [CPU_ALU] |2542| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |2542| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2547,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |2547| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |2547| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |2547| 
        B         ||$C$L103||,LOS       ; [CPU_ALU] |2547| 
        ; branchcc occurs ; [] |2547| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2547| 
        B         ||$C$L104||,UNC       ; [CPU_ALU] |2547| 
        ; branch occurs ; [] |2547| 
||$C$L103||:    
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |2547| 
||$C$L104||:    
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |2547| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2552,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |2552| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2557,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |2557| 
        SFR       ACC,2                 ; [CPU_ALU] |2557| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2557| 
        ADDB      ACC,#32               ; [CPU_ALU] |2557| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |2557| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2562,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2562| 
        B         ||$C$L106||,EQ        ; [CPU_ALU] |2562| 
        ; branchcc occurs ; [] |2562| 
||$C$L105||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2567,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |2567| 
        MOVL      XAR5,*-SP[12]         ; [CPU_ALU] |2567| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |2567| 
        ADDB      ACC,#1                ; [CPU_ALU] |2567| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2567| 
        MOVB      AL.LSB,*+XAR5[0]      ; [CPU_ALU] |2567| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |2567| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2562,column 30,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |2562| 
        SUBL      *-SP[10],ACC          ; [CPU_ALU] |2562| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2562,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2562| 
        B         ||$C$L105||,NEQ       ; [CPU_ALU] |2562| 
        ; branchcc occurs ; [] |2562| 
||$C$L106||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2573,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2573| 
||$C$L107||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2574,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$220, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0xa0e)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text:USBDevEndpointDataAck"
	.clink
	.global	||USBDevEndpointDataAck||

$C$DW$232	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$232, DW_AT_name("USBDevEndpointDataAck")
	.dwattr $C$DW$232, DW_AT_low_pc(||USBDevEndpointDataAck||)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_linkage_name("USBDevEndpointDataAck")
	.dwattr $C$DW$232, DW_AT_external
	.dwattr $C$DW$232, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$232, DW_AT_decl_line(0xa26)
	.dwattr $C$DW$232, DW_AT_decl_column(0x01)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2600,column 1,is_stmt,address ||USBDevEndpointDataAck||,isa 0

	.dwfde $C$DW$CIE, ||USBDevEndpointDataAck||
$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_name("ui32Base")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg0]

$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_breg20 -8]

$C$DW$235	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$235, DW_AT_name("bIsLastPacket")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: USBDevEndpointDataAck         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||USBDevEndpointDataAck||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("ui32Base")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_breg20 -2]

$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("bIsLastPacket")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |2600| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2600| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2613,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2613| 
        B         ||$C$L110||,NEQ       ; [CPU_ALU] |2613| 
        ; branchcc occurs ; [] |2613| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2618,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |2618| 
        B         ||$C$L108||,EQ        ; [CPU_ALU] |2618| 
        ; branchcc occurs ; [] |2618| 
        MOVB      XAR6,#8               ; [CPU_ALU] |2618| 
        B         ||$C$L109||,UNC       ; [CPU_ALU] |2618| 
        ; branch occurs ; [] |2618| 
||$C$L108||:    
        MOVB      XAR6,#0               ; [CPU_ALU] |2618| 
||$C$L109||:    
        MOV       AL,AR6                ; [CPU_ALU] |2618| 
        ORB       AL,#0x40              ; [CPU_ALU] |2618| 
        MOVZ      AR6,AL                ; [CPU_ALU] |2618| 
        MOV       ACC,#258              ; [CPU_ALU] |2618| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2618| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2618| 
        MOV       AL,AR6                ; [CPU_ALU] |2618| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2618| 
        B         ||$C$L111||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L110||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2626,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2626| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2626| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |2626| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2626| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2626| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |2626| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2626| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2629,column 1,is_stmt,isa 0
||$C$L111||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$232, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0xa45)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text:USBHostEndpointDataAck"
	.clink
	.global	||USBHostEndpointDataAck||

$C$DW$239	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$239, DW_AT_name("USBHostEndpointDataAck")
	.dwattr $C$DW$239, DW_AT_low_pc(||USBHostEndpointDataAck||)
	.dwattr $C$DW$239, DW_AT_high_pc(0x00)
	.dwattr $C$DW$239, DW_AT_linkage_name("USBHostEndpointDataAck")
	.dwattr $C$DW$239, DW_AT_external
	.dwattr $C$DW$239, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$239, DW_AT_decl_line(0xa59)
	.dwattr $C$DW$239, DW_AT_decl_column(0x01)
	.dwattr $C$DW$239, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2650,column 1,is_stmt,address ||USBHostEndpointDataAck||,isa 0

	.dwfde $C$DW$CIE, ||USBHostEndpointDataAck||
$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_name("ui32Base")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg0]

$C$DW$241	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$241, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBHostEndpointDataAck        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostEndpointDataAck||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("ui32Base")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2650| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2663,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2663| 
        B         ||$C$L112||,NEQ       ; [CPU_ALU] |2663| 
        ; branchcc occurs ; [] |2663| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2665,column 9,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |2665| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2665| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2665| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2665| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |2665| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2665| 
        B         ||$C$L113||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L112||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2669,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2669| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2669| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |2669| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2669| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2669| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |2669| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2669| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2672,column 1,is_stmt,isa 0
||$C$L113||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$239, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$239, DW_AT_TI_end_line(0xa70)
	.dwattr $C$DW$239, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$239

	.sect	".text:USBEndpointDataPut"
	.clink
	.global	||USBEndpointDataPut||

$C$DW$244	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$244, DW_AT_name("USBEndpointDataPut")
	.dwattr $C$DW$244, DW_AT_low_pc(||USBEndpointDataPut||)
	.dwattr $C$DW$244, DW_AT_high_pc(0x00)
	.dwattr $C$DW$244, DW_AT_linkage_name("USBEndpointDataPut")
	.dwattr $C$DW$244, DW_AT_external
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$244, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$244, DW_AT_decl_line(0xa87)
	.dwattr $C$DW$244, DW_AT_decl_column(0x01)
	.dwattr $C$DW$244, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2697,column 1,is_stmt,address ||USBEndpointDataPut||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDataPut||
$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_name("ui32Base")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg0]

$C$DW$246	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$246, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_breg20 -12]

$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_name("pui8Data")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg12]

$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_name("ui32Size")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_breg20 -14]


;***************************************************************
;* FNAME: USBEndpointDataPut            FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDataPut||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$249	.dwtag  DW_TAG_variable
	.dwattr $C$DW$249, DW_AT_name("ui32Base")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_breg20 -2]

$C$DW$250	.dwtag  DW_TAG_variable
	.dwattr $C$DW$250, DW_AT_name("pui8Data")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_breg20 -4]

$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("ui32FIFO")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_breg20 -6]

$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("ui8TxPktRdy")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_breg20 -7]

        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |2697| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2697| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2713,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |2713| 
        B         ||$C$L114||,NEQ       ; [CPU_ALU] |2713| 
        ; branchcc occurs ; [] |2713| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2715,column 9,is_stmt,isa 0
        MOVB      *-SP[7],#2,UNC        ; [CPU_ALU] |2715| 
        B         ||$C$L115||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L114||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2719,column 9,is_stmt,isa 0
        MOVB      *-SP[7],#1,UNC        ; [CPU_ALU] |2719| 
||$C$L115||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2725,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |2725| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2725| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |2725| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2725| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2725| 
        AND       AL,*-SP[7]            ; [CPU_ALU] |2725| 
        B         ||$C$L116||,EQ        ; [CPU_ALU] |2725| 
        ; branchcc occurs ; [] |2725| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2727,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2727| 
        SUBB      ACC,#1                ; [CPU_ALU] |2727| 
        B         ||$C$L119||,UNC       ; [CPU_ALU] |2727| 
        ; branch occurs ; [] |2727| 
||$C$L116||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2733,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |2733| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,2                 ; [CPU_ALU] |2733| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2733| 
        ADDB      ACC,#32               ; [CPU_ALU] |2733| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |2733| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2738,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2738| 
        B         ||$C$L118||,EQ        ; [CPU_ALU] |2738| 
        ; branchcc occurs ; [] |2738| 
||$C$L117||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2740,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |2740| 
        MOVL      XAR5,*-SP[6]          ; [CPU_ALU] |2740| 
        MOV       AL,*XAR4++            ; [CPU_ALU] |2740| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |2740| 
        MOVB      *+XAR5[0],AL.LSB      ; [CPU_ALU] |2740| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2738,column 25,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2738| 
        SUBB      ACC,#1                ; [CPU_ALU] |2738| 
        MOVL      *-SP[14],ACC          ; [CPU_ALU] |2738| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2738,column 11,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |2738| 
        B         ||$C$L117||,NEQ       ; [CPU_ALU] |2738| 
        ; branchcc occurs ; [] |2738| 
||$C$L118||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2746,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2746| 
||$C$L119||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2747,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$244, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$244, DW_AT_TI_end_line(0xabb)
	.dwattr $C$DW$244, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$244

	.sect	".text:USBEndpointDataSend"
	.clink
	.global	||USBEndpointDataSend||

$C$DW$254	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$254, DW_AT_name("USBEndpointDataSend")
	.dwattr $C$DW$254, DW_AT_low_pc(||USBEndpointDataSend||)
	.dwattr $C$DW$254, DW_AT_high_pc(0x00)
	.dwattr $C$DW$254, DW_AT_linkage_name("USBEndpointDataSend")
	.dwattr $C$DW$254, DW_AT_external
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$254, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$254, DW_AT_decl_line(0xad8)
	.dwattr $C$DW$254, DW_AT_decl_column(0x01)
	.dwattr $C$DW$254, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2778,column 1,is_stmt,address ||USBEndpointDataSend||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDataSend||
$C$DW$255	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$255, DW_AT_name("ui32Base")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg0]

$C$DW$256	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$256, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_breg20 -8]

$C$DW$257	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$257, DW_AT_name("ui32TransType")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: USBEndpointDataSend           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDataSend||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("ui32Base")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_breg20 -2]

$C$DW$259	.dwtag  DW_TAG_variable
	.dwattr $C$DW$259, DW_AT_name("ui32TxPktRdy")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2778| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2793,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2793| 
        B         ||$C$L121||,NEQ       ; [CPU_ALU] |2793| 
        ; branchcc occurs ; [] |2793| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2798,column 9,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |2798| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2798| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2798| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2798| 
        TBIT      AL,#1                 ; [CPU_ALU] |2798| 
        B         ||$C$L120||,NTC       ; [CPU_ALU] |2798| 
        ; branchcc occurs ; [] |2798| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2800,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2800| 
        SUBB      ACC,#1                ; [CPU_ALU] |2800| 
        B         ||$C$L124||,UNC       ; [CPU_ALU] |2800| 
        ; branch occurs ; [] |2800| 
||$C$L120||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2803,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2803| 
        MOVB      AH,#0                 ; [CPU_ALU] |2803| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2803| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2803| 
        B         ||$C$L123||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L121||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2810,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2810| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2810| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |2810| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2810| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2810| 
        TBIT      AL,#0                 ; [CPU_ALU] |2810| 
        B         ||$C$L122||,NTC       ; [CPU_ALU] |2810| 
        ; branchcc occurs ; [] |2810| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2812,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2812| 
        SUBB      ACC,#1                ; [CPU_ALU] |2812| 
        B         ||$C$L124||,UNC       ; [CPU_ALU] |2812| 
        ; branch occurs ; [] |2812| 
||$C$L122||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2815,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |2815| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,8                 ; [CPU_ALU] |2815| 
        MOVB      AH,#0                 ; [CPU_ALU] |2815| 
        ANDB      AL,#0xff              ; [CPU_ALU] |2815| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2815| 
||$C$L123||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2821,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2821| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2821| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |2821| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2821| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |2821| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2821| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2826,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |2826| 
||$C$L124||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2827,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$254, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$254, DW_AT_TI_end_line(0xb0b)
	.dwattr $C$DW$254, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$254

	.sect	".text:USBFIFOFlush"
	.clink
	.global	||USBFIFOFlush||

$C$DW$261	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$261, DW_AT_name("USBFIFOFlush")
	.dwattr $C$DW$261, DW_AT_low_pc(||USBFIFOFlush||)
	.dwattr $C$DW$261, DW_AT_high_pc(0x00)
	.dwattr $C$DW$261, DW_AT_linkage_name("USBFIFOFlush")
	.dwattr $C$DW$261, DW_AT_external
	.dwattr $C$DW$261, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$261, DW_AT_decl_line(0xb1e)
	.dwattr $C$DW$261, DW_AT_decl_column(0x01)
	.dwattr $C$DW$261, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2847,column 1,is_stmt,address ||USBFIFOFlush||,isa 0

	.dwfde $C$DW$CIE, ||USBFIFOFlush||
$C$DW$262	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$262, DW_AT_name("ui32Base")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg0]

$C$DW$263	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$263, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_breg20 -6]

$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_name("ui32Flags")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBFIFOFlush                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBFIFOFlush||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$265	.dwtag  DW_TAG_variable
	.dwattr $C$DW$265, DW_AT_name("ui32Base")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2847| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2860,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2860| 
        B         ||$C$L125||,NEQ       ; [CPU_ALU] |2860| 
        ; branchcc occurs ; [] |2860| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2865,column 9,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |2865| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2865| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2865| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2865| 
        ANDB      AL,#0x03              ; [CPU_ALU] |2865| 
        B         ||$C$L127||,EQ        ; [CPU_ALU] |2865| 
        ; branchcc occurs ; [] |2865| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2871,column 13,is_stmt,isa 0
        MOV       ACC,#259              ; [CPU_ALU] |2871| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2871| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2871| 
        MOVB      AL,#1                 ; [CPU_ALU] |2871| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2871| 
        B         ||$C$L127||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L125||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2879,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2879| 
        TBIT      AL,#13                ; [CPU_ALU] |2879| 
        B         ||$C$L126||,NTC       ; [CPU_ALU] |2879| 
        ; branchcc occurs ; [] |2879| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2884,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2884| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2884| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |2884| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2884| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2884| 
        TBIT      AL,#0                 ; [CPU_ALU] |2884| 
        B         ||$C$L127||,NTC       ; [CPU_ALU] |2884| 
        ; branchcc occurs ; [] |2884| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2890,column 17,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2890| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2890| 
        ADD       ACC,#129 << 1         ; [CPU_ALU] |2890| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2890| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2890| 
        ORB       AL,#0x08              ; [CPU_ALU] |2890| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2890| 
        B         ||$C$L127||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L126||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2899,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2899| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2899| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |2899| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2899| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2899| 
        TBIT      AL,#0                 ; [CPU_ALU] |2899| 
        B         ||$C$L127||,NTC       ; [CPU_ALU] |2899| 
        ; branchcc occurs ; [] |2899| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2905,column 17,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |2905| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2905| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] |2905| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2905| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |2905| 
        ORB       AL,#0x10              ; [CPU_ALU] |2905| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2905| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2910,column 1,is_stmt,isa 0
||$C$L127||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$261, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$261, DW_AT_TI_end_line(0xb5e)
	.dwattr $C$DW$261, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$261

	.sect	".text:USBHostRequestIN"
	.clink
	.global	||USBHostRequestIN||

$C$DW$267	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$267, DW_AT_name("USBHostRequestIN")
	.dwattr $C$DW$267, DW_AT_low_pc(||USBHostRequestIN||)
	.dwattr $C$DW$267, DW_AT_high_pc(0x00)
	.dwattr $C$DW$267, DW_AT_linkage_name("USBHostRequestIN")
	.dwattr $C$DW$267, DW_AT_external
	.dwattr $C$DW$267, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$267, DW_AT_decl_line(0xb72)
	.dwattr $C$DW$267, DW_AT_decl_column(0x01)
	.dwattr $C$DW$267, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2931,column 1,is_stmt,address ||USBHostRequestIN||,isa 0

	.dwfde $C$DW$CIE, ||USBHostRequestIN||
$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_name("ui32Base")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg0]

$C$DW$269	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$269, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBHostRequestIN              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBHostRequestIN||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$270	.dwtag  DW_TAG_variable
	.dwattr $C$DW$270, DW_AT_name("ui32Base")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_breg20 -2]

$C$DW$271	.dwtag  DW_TAG_variable
	.dwattr $C$DW$271, DW_AT_name("ui32Register")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2931| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2946,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2946| 
        B         ||$C$L128||,NEQ       ; [CPU_ALU] |2946| 
        ; branchcc occurs ; [] |2946| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2948,column 9,is_stmt,isa 0
        MOVL      XAR4,#258             ; [CPU_ARAU] |2948| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |2948| 
        B         ||$C$L129||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L128||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2952,column 9,is_stmt,isa 0
        MOV       ACC,#262              ; [CPU_ALU] |2952| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |2952| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2952| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |2952| 
||$C$L129||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2958,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |2958| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |2958| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |2958| 
        MOVB      AL,#32                ; [CPU_ALU] |2958| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |2958| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2959,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$267, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$267, DW_AT_TI_end_line(0xb8f)
	.dwattr $C$DW$267, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$267

	.sect	".text:USBHostRequestINClear"
	.clink
	.global	||USBHostRequestINClear||

$C$DW$273	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$273, DW_AT_name("USBHostRequestINClear")
	.dwattr $C$DW$273, DW_AT_low_pc(||USBHostRequestINClear||)
	.dwattr $C$DW$273, DW_AT_high_pc(0x00)
	.dwattr $C$DW$273, DW_AT_linkage_name("USBHostRequestINClear")
	.dwattr $C$DW$273, DW_AT_external
	.dwattr $C$DW$273, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$273, DW_AT_decl_line(0xba4)
	.dwattr $C$DW$273, DW_AT_decl_column(0x01)
	.dwattr $C$DW$273, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2981,column 1,is_stmt,address ||USBHostRequestINClear||,isa 0

	.dwfde $C$DW$CIE, ||USBHostRequestINClear||
$C$DW$274	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$274, DW_AT_name("ui32Base")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg0]

$C$DW$275	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$275, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBHostRequestINClear         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBHostRequestINClear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$276	.dwtag  DW_TAG_variable
	.dwattr $C$DW$276, DW_AT_name("ui32Base")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_breg20 -2]

$C$DW$277	.dwtag  DW_TAG_variable
	.dwattr $C$DW$277, DW_AT_name("ui32Register")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |2981| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2996,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |2996| 
        B         ||$C$L130||,NEQ       ; [CPU_ALU] |2996| 
        ; branchcc occurs ; [] |2996| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 2998,column 9,is_stmt,isa 0
        MOVL      XAR4,#258             ; [CPU_ARAU] |2998| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |2998| 
        B         ||$C$L131||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L130||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3002,column 9,is_stmt,isa 0
        MOV       ACC,#262              ; [CPU_ALU] |3002| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |3002| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |3002| 
||$C$L131||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3008,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |3008| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3008| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3008| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3008| 
        AND       AL,AL,#0xffdf         ; [CPU_ALU] |3008| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3008| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3009,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$273, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$273, DW_AT_TI_end_line(0xbc1)
	.dwattr $C$DW$273, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$273

	.sect	".text:USBHostRequestStatus"
	.clink
	.global	||USBHostRequestStatus||

$C$DW$279	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$279, DW_AT_name("USBHostRequestStatus")
	.dwattr $C$DW$279, DW_AT_low_pc(||USBHostRequestStatus||)
	.dwattr $C$DW$279, DW_AT_high_pc(0x00)
	.dwattr $C$DW$279, DW_AT_linkage_name("USBHostRequestStatus")
	.dwattr $C$DW$279, DW_AT_external
	.dwattr $C$DW$279, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$279, DW_AT_decl_line(0xbd4)
	.dwattr $C$DW$279, DW_AT_decl_column(0x01)
	.dwattr $C$DW$279, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3029,column 1,is_stmt,address ||USBHostRequestStatus||,isa 0

	.dwfde $C$DW$CIE, ||USBHostRequestStatus||
$C$DW$280	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$280, DW_AT_name("ui32Base")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostRequestStatus          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostRequestStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$281	.dwtag  DW_TAG_variable
	.dwattr $C$DW$281, DW_AT_name("ui32Base")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3029| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3038,column 5,is_stmt,isa 0
        MOV       ACC,#258              ; [CPU_ALU] |3038| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3038| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3038| 
        MOVB      AL,#96                ; [CPU_ALU] |3038| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3038| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3039,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$279, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$279, DW_AT_TI_end_line(0xbdf)
	.dwattr $C$DW$279, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$279

	.sect	".text:USBHostAddrSet"
	.clink
	.global	||USBHostAddrSet||

$C$DW$283	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$283, DW_AT_name("USBHostAddrSet")
	.dwattr $C$DW$283, DW_AT_low_pc(||USBHostAddrSet||)
	.dwattr $C$DW$283, DW_AT_high_pc(0x00)
	.dwattr $C$DW$283, DW_AT_linkage_name("USBHostAddrSet")
	.dwattr $C$DW$283, DW_AT_external
	.dwattr $C$DW$283, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$283, DW_AT_decl_line(0xbf7)
	.dwattr $C$DW$283, DW_AT_decl_column(0x01)
	.dwattr $C$DW$283, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3065,column 1,is_stmt,address ||USBHostAddrSet||,isa 0

	.dwfde $C$DW$CIE, ||USBHostAddrSet||
$C$DW$284	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$284, DW_AT_name("ui32Base")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg0]

$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_breg20 -6]

$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_name("ui32Addr")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_breg20 -8]

$C$DW$287	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$287, DW_AT_name("ui32Flags")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: USBHostAddrSet                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostAddrSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$288	.dwtag  DW_TAG_variable
	.dwattr $C$DW$288, DW_AT_name("ui32Base")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3065| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3078,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |3078| 
        TBIT      AL,#13                ; [CPU_ALU] |3078| 
        B         ||$C$L132||,NTC       ; [CPU_ALU] |3078| 
        ; branchcc occurs ; [] |3078| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3083,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3083| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |3083| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3083| 
        ADDB      ACC,#128              ; [CPU_ALU] |3083| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3083| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |3083| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3083| 
        B         ||$C$L133||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L132||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3090,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3090| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |3090| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3090| 
        ADDB      ACC,#132              ; [CPU_ALU] |3090| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3090| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |3090| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3090| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3093,column 1,is_stmt,isa 0
||$C$L133||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$283, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$283, DW_AT_TI_end_line(0xc15)
	.dwattr $C$DW$283, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$283

	.sect	".text:USBHostAddrGet"
	.clink
	.global	||USBHostAddrGet||

$C$DW$290	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$290, DW_AT_name("USBHostAddrGet")
	.dwattr $C$DW$290, DW_AT_low_pc(||USBHostAddrGet||)
	.dwattr $C$DW$290, DW_AT_high_pc(0x00)
	.dwattr $C$DW$290, DW_AT_linkage_name("USBHostAddrGet")
	.dwattr $C$DW$290, DW_AT_external
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$290, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$290, DW_AT_decl_line(0xc29)
	.dwattr $C$DW$290, DW_AT_decl_column(0x01)
	.dwattr $C$DW$290, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3114,column 1,is_stmt,address ||USBHostAddrGet||,isa 0

	.dwfde $C$DW$CIE, ||USBHostAddrGet||
$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_name("ui32Base")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg0]

$C$DW$292	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$292, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_breg20 -6]

$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_name("ui32Flags")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBHostAddrGet                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostAddrGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("ui32Base")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3114| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3127,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |3127| 
        TBIT      AL,#13                ; [CPU_ALU] |3127| 
        B         ||$C$L134||,NTC       ; [CPU_ALU] |3127| 
        ; branchcc occurs ; [] |3127| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3132,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3132| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |3132| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3132| 
        ADDB      ACC,#128              ; [CPU_ALU] |3132| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3132| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3132| 
        MOV       ACC,AL                ; [CPU_ALU] |3132| 
        B         ||$C$L135||,UNC       ; [CPU_ALU] |3132| 
        ; branch occurs ; [] |3132| 
||$C$L134||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3139,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3139| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |3139| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3139| 
        ADDB      ACC,#132              ; [CPU_ALU] |3139| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3139| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3139| 
        MOV       ACC,AL                ; [CPU_ALU] |3139| 
||$C$L135||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3141,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$290, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$290, DW_AT_TI_end_line(0xc45)
	.dwattr $C$DW$290, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$290

	.sect	".text:USBHostHubAddrSet"
	.clink
	.global	||USBHostHubAddrSet||

$C$DW$296	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$296, DW_AT_name("USBHostHubAddrSet")
	.dwattr $C$DW$296, DW_AT_low_pc(||USBHostHubAddrSet||)
	.dwattr $C$DW$296, DW_AT_high_pc(0x00)
	.dwattr $C$DW$296, DW_AT_linkage_name("USBHostHubAddrSet")
	.dwattr $C$DW$296, DW_AT_external
	.dwattr $C$DW$296, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$296, DW_AT_decl_line(0xc5f)
	.dwattr $C$DW$296, DW_AT_decl_column(0x01)
	.dwattr $C$DW$296, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3169,column 1,is_stmt,address ||USBHostHubAddrSet||,isa 0

	.dwfde $C$DW$CIE, ||USBHostHubAddrSet||
$C$DW$297	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$297, DW_AT_name("ui32Base")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg0]

$C$DW$298	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$298, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_breg20 -8]

$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_name("ui32Addr")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_breg20 -10]

$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_name("ui32Flags")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: USBHostHubAddrSet             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

||USBHostHubAddrSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$301	.dwtag  DW_TAG_variable
	.dwattr $C$DW$301, DW_AT_name("ui32Base")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3169| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3182,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |3182| 
        TBIT      AL,#13                ; [CPU_ALU] |3182| 
        B         ||$C$L136||,NTC       ; [CPU_ALU] |3182| 
        ; branchcc occurs ; [] |3182| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3187,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |3187| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |3187| 
        SFR       ACC,1                 ; [CPU_ALU] |3187| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3187| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3187| 
        MOVB      XAR1,#130             ; [CPU_ALU] |3187| 
        MOV       *+XAR4[AR1],AR6       ; [CPU_ALU] |3187| 
        B         ||$C$L137||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L136||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3194,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |3194| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVZ      AR6,*-SP[10]          ; [CPU_ALU] |3194| 
        SFR       ACC,1                 ; [CPU_ALU] |3194| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3194| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3194| 
        MOVB      XAR1,#134             ; [CPU_ALU] |3194| 
        MOV       *+XAR4[AR1],AR6       ; [CPU_ALU] |3194| 
||$C$L137||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3203,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |3203| 
        B         ||$C$L139||,NEQ       ; [CPU_ALU] |3203| 
        ; branchcc occurs ; [] |3203| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3205,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |3205| 
        TBIT      AL,#12                ; [CPU_ALU] |3205| 
        B         ||$C$L138||,NTC       ; [CPU_ALU] |3205| 
        ; branchcc occurs ; [] |3205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3207,column 13,is_stmt,isa 0
        MOV       ACC,#266              ; [CPU_ALU] |3207| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3207| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3207| 
        MOVB      AL,#128               ; [CPU_ALU] |3207| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3207| 
        B         ||$C$L139||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L138||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3211,column 13,is_stmt,isa 0
        MOV       ACC,#266              ; [CPU_ALU] |3211| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3211| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3211| 
        MOVB      AL,#192               ; [CPU_ALU] |3211| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3211| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3214,column 1,is_stmt,isa 0
||$C$L139||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$296, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$296, DW_AT_TI_end_line(0xc8e)
	.dwattr $C$DW$296, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$296

	.sect	".text:USBHostHubAddrGet"
	.clink
	.global	||USBHostHubAddrGet||

$C$DW$303	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$303, DW_AT_name("USBHostHubAddrGet")
	.dwattr $C$DW$303, DW_AT_low_pc(||USBHostHubAddrGet||)
	.dwattr $C$DW$303, DW_AT_high_pc(0x00)
	.dwattr $C$DW$303, DW_AT_linkage_name("USBHostHubAddrGet")
	.dwattr $C$DW$303, DW_AT_external
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$303, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$303, DW_AT_decl_line(0xca3)
	.dwattr $C$DW$303, DW_AT_decl_column(0x01)
	.dwattr $C$DW$303, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3236,column 1,is_stmt,address ||USBHostHubAddrGet||,isa 0

	.dwfde $C$DW$CIE, ||USBHostHubAddrGet||
$C$DW$304	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$304, DW_AT_name("ui32Base")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg0]

$C$DW$305	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$305, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_breg20 -6]

$C$DW$306	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$306, DW_AT_name("ui32Flags")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBHostHubAddrGet             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostHubAddrGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$307	.dwtag  DW_TAG_variable
	.dwattr $C$DW$307, DW_AT_name("ui32Base")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3236| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3249,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |3249| 
        TBIT      AL,#13                ; [CPU_ALU] |3249| 
        B         ||$C$L140||,NTC       ; [CPU_ALU] |3249| 
        ; branchcc occurs ; [] |3249| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3254,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3254| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |3254| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3254| 
        ADDB      ACC,#130              ; [CPU_ALU] |3254| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3254| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3254| 
        MOV       ACC,AL                ; [CPU_ALU] |3254| 
        B         ||$C$L141||,UNC       ; [CPU_ALU] |3254| 
        ; branch occurs ; [] |3254| 
||$C$L140||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3261,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3261| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,1                 ; [CPU_ALU] |3261| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3261| 
        ADDB      ACC,#134              ; [CPU_ALU] |3261| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3261| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3261| 
        MOV       ACC,AL                ; [CPU_ALU] |3261| 
||$C$L141||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3263,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$303, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$303, DW_AT_TI_end_line(0xcbf)
	.dwattr $C$DW$303, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$303

	.sect	".text:USBHostPwrConfig"
	.clink
	.global	||USBHostPwrConfig||

$C$DW$309	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$309, DW_AT_name("USBHostPwrConfig")
	.dwattr $C$DW$309, DW_AT_low_pc(||USBHostPwrConfig||)
	.dwattr $C$DW$309, DW_AT_high_pc(0x00)
	.dwattr $C$DW$309, DW_AT_linkage_name("USBHostPwrConfig")
	.dwattr $C$DW$309, DW_AT_external
	.dwattr $C$DW$309, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$309, DW_AT_decl_line(0xcfa)
	.dwattr $C$DW$309, DW_AT_decl_column(0x01)
	.dwattr $C$DW$309, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3323,column 1,is_stmt,address ||USBHostPwrConfig||,isa 0

	.dwfde $C$DW$CIE, ||USBHostPwrConfig||
$C$DW$310	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$310, DW_AT_name("ui32Base")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg0]

$C$DW$311	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$311, DW_AT_name("ui32Flags")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBHostPwrConfig              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostPwrConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$312	.dwtag  DW_TAG_variable
	.dwattr $C$DW$312, DW_AT_name("ui32Base")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3323| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3336,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3336| 
        MOVU      ACC,AH                ; [CPU_ALU] |3336| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |3336| 
        MOV       ACC,#1072             ; [CPU_ALU] |3336| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3336| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3336| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |3336| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3342,column 5,is_stmt,isa 0
        MOV       ACC,#1024             ; [CPU_ALU] |3342| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3342| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3342| 
        AND       AL,*+XAR4[0],#0xfc9c  ; [CPU_ALU] |3342| 
        OR        AL,*-SP[6]            ; [CPU_ALU] |3342| 
        MOVZ      AR6,AL                ; [CPU_ALU] |3342| 
        MOV       ACC,#1024             ; [CPU_ALU] |3342| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3342| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3342| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |3342| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3346,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$309, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$309, DW_AT_TI_end_line(0xd12)
	.dwattr $C$DW$309, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$309

	.sect	".text:USBHostPwrFaultEnable"
	.clink
	.global	||USBHostPwrFaultEnable||

$C$DW$314	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$314, DW_AT_name("USBHostPwrFaultEnable")
	.dwattr $C$DW$314, DW_AT_low_pc(||USBHostPwrFaultEnable||)
	.dwattr $C$DW$314, DW_AT_high_pc(0x00)
	.dwattr $C$DW$314, DW_AT_linkage_name("USBHostPwrFaultEnable")
	.dwattr $C$DW$314, DW_AT_external
	.dwattr $C$DW$314, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$314, DW_AT_decl_line(0xd23)
	.dwattr $C$DW$314, DW_AT_decl_column(0x01)
	.dwattr $C$DW$314, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3364,column 1,is_stmt,address ||USBHostPwrFaultEnable||,isa 0

	.dwfde $C$DW$CIE, ||USBHostPwrFaultEnable||
$C$DW$315	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$315, DW_AT_name("ui32Base")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostPwrFaultEnable         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostPwrFaultEnable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$316	.dwtag  DW_TAG_variable
	.dwattr $C$DW$316, DW_AT_name("ui32Base")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3364| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3373,column 5,is_stmt,isa 0
        MOV       ACC,#1024             ; [CPU_ALU] |3373| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3373| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3373| 
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |3373| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3374,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$314, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$314, DW_AT_TI_end_line(0xd2e)
	.dwattr $C$DW$314, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$314

	.sect	".text:USBHostPwrFaultDisable"
	.clink
	.global	||USBHostPwrFaultDisable||

$C$DW$318	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$318, DW_AT_name("USBHostPwrFaultDisable")
	.dwattr $C$DW$318, DW_AT_low_pc(||USBHostPwrFaultDisable||)
	.dwattr $C$DW$318, DW_AT_high_pc(0x00)
	.dwattr $C$DW$318, DW_AT_linkage_name("USBHostPwrFaultDisable")
	.dwattr $C$DW$318, DW_AT_external
	.dwattr $C$DW$318, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$318, DW_AT_decl_line(0xd3e)
	.dwattr $C$DW$318, DW_AT_decl_column(0x01)
	.dwattr $C$DW$318, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3391,column 1,is_stmt,address ||USBHostPwrFaultDisable||,isa 0

	.dwfde $C$DW$CIE, ||USBHostPwrFaultDisable||
$C$DW$319	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$319, DW_AT_name("ui32Base")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostPwrFaultDisable        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostPwrFaultDisable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$320	.dwtag  DW_TAG_variable
	.dwattr $C$DW$320, DW_AT_name("ui32Base")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3391| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3400,column 5,is_stmt,isa 0
        MOV       ACC,#1024             ; [CPU_ALU] |3400| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3400| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3400| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |3400| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3401,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$318, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$318, DW_AT_TI_end_line(0xd49)
	.dwattr $C$DW$318, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$318

	.sect	".text:USBHostPwrEnable"
	.clink
	.global	||USBHostPwrEnable||

$C$DW$322	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$322, DW_AT_name("USBHostPwrEnable")
	.dwattr $C$DW$322, DW_AT_low_pc(||USBHostPwrEnable||)
	.dwattr $C$DW$322, DW_AT_high_pc(0x00)
	.dwattr $C$DW$322, DW_AT_linkage_name("USBHostPwrEnable")
	.dwattr $C$DW$322, DW_AT_external
	.dwattr $C$DW$322, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$322, DW_AT_decl_line(0xd5a)
	.dwattr $C$DW$322, DW_AT_decl_column(0x01)
	.dwattr $C$DW$322, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3419,column 1,is_stmt,address ||USBHostPwrEnable||,isa 0

	.dwfde $C$DW$CIE, ||USBHostPwrEnable||
$C$DW$323	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$323, DW_AT_name("ui32Base")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostPwrEnable              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostPwrEnable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$324	.dwtag  DW_TAG_variable
	.dwattr $C$DW$324, DW_AT_name("ui32Base")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3419| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3428,column 5,is_stmt,isa 0
        MOV       ACC,#1024             ; [CPU_ALU] |3428| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3428| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3428| 
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |3428| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3429,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$322, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$322, DW_AT_TI_end_line(0xd65)
	.dwattr $C$DW$322, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$322

	.sect	".text:USBHostPwrDisable"
	.clink
	.global	||USBHostPwrDisable||

$C$DW$326	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$326, DW_AT_name("USBHostPwrDisable")
	.dwattr $C$DW$326, DW_AT_low_pc(||USBHostPwrDisable||)
	.dwattr $C$DW$326, DW_AT_high_pc(0x00)
	.dwattr $C$DW$326, DW_AT_linkage_name("USBHostPwrDisable")
	.dwattr $C$DW$326, DW_AT_external
	.dwattr $C$DW$326, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$326, DW_AT_decl_line(0xd76)
	.dwattr $C$DW$326, DW_AT_decl_column(0x01)
	.dwattr $C$DW$326, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3447,column 1,is_stmt,address ||USBHostPwrDisable||,isa 0

	.dwfde $C$DW$CIE, ||USBHostPwrDisable||
$C$DW$327	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$327, DW_AT_name("ui32Base")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostPwrDisable             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostPwrDisable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$328	.dwtag  DW_TAG_variable
	.dwattr $C$DW$328, DW_AT_name("ui32Base")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3447| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3456,column 5,is_stmt,isa 0
        MOV       ACC,#1024             ; [CPU_ALU] |3456| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3456| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3456| 
        AND       *+XAR4[0],#0xfffb     ; [CPU_ALU] |3456| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3457,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$326, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$326, DW_AT_TI_end_line(0xd81)
	.dwattr $C$DW$326, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$326

	.sect	".text:USBFrameNumberGet"
	.clink
	.global	||USBFrameNumberGet||

$C$DW$330	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$330, DW_AT_name("USBFrameNumberGet")
	.dwattr $C$DW$330, DW_AT_low_pc(||USBFrameNumberGet||)
	.dwattr $C$DW$330, DW_AT_high_pc(0x00)
	.dwattr $C$DW$330, DW_AT_linkage_name("USBFrameNumberGet")
	.dwattr $C$DW$330, DW_AT_external
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$330, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$330, DW_AT_decl_line(0xd8f)
	.dwattr $C$DW$330, DW_AT_decl_column(0x01)
	.dwattr $C$DW$330, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3472,column 1,is_stmt,address ||USBFrameNumberGet||,isa 0

	.dwfde $C$DW$CIE, ||USBFrameNumberGet||
$C$DW$331	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$331, DW_AT_name("ui32Base")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBFrameNumberGet             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBFrameNumberGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$332	.dwtag  DW_TAG_variable
	.dwattr $C$DW$332, DW_AT_name("ui32Base")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3472| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3481,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |3481| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3481| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3481| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |3481| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3482,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$330, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$330, DW_AT_TI_end_line(0xd9a)
	.dwattr $C$DW$330, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$330

	.sect	".text:USBOTGSessionRequest"
	.clink
	.global	||USBOTGSessionRequest||

$C$DW$334	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$334, DW_AT_name("USBOTGSessionRequest")
	.dwattr $C$DW$334, DW_AT_low_pc(||USBOTGSessionRequest||)
	.dwattr $C$DW$334, DW_AT_high_pc(0x00)
	.dwattr $C$DW$334, DW_AT_linkage_name("USBOTGSessionRequest")
	.dwattr $C$DW$334, DW_AT_external
	.dwattr $C$DW$334, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$334, DW_AT_decl_line(0xdab)
	.dwattr $C$DW$334, DW_AT_decl_column(0x01)
	.dwattr $C$DW$334, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3500,column 1,is_stmt,address ||USBOTGSessionRequest||,isa 0

	.dwfde $C$DW$CIE, ||USBOTGSessionRequest||
$C$DW$335	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$335, DW_AT_name("ui32Base")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg0]

$C$DW$336	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$336, DW_AT_name("bStart")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: USBOTGSessionRequest          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||USBOTGSessionRequest||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$337	.dwtag  DW_TAG_variable
	.dwattr $C$DW$337, DW_AT_name("ui32Base")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_breg20 -2]

$C$DW$338	.dwtag  DW_TAG_variable
	.dwattr $C$DW$338, DW_AT_name("bStart")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |3500| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3500| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3509,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |3509| 
        B         ||$C$L142||,EQ        ; [CPU_ALU] |3509| 
        ; branchcc occurs ; [] |3509| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3511,column 9,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |3511| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3511| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3511| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3511| 
        ORB       AL,#0x01              ; [CPU_ALU] |3511| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3511| 
        B         ||$C$L143||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L142||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3515,column 9,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |3515| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3515| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3515| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3515| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |3515| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3515| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3517,column 1,is_stmt,isa 0
||$C$L143||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$334, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$334, DW_AT_TI_end_line(0xdbd)
	.dwattr $C$DW$334, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$334

	.sect	".text:USBFIFOAddrGet"
	.clink
	.global	||USBFIFOAddrGet||

$C$DW$340	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$340, DW_AT_name("USBFIFOAddrGet")
	.dwattr $C$DW$340, DW_AT_low_pc(||USBFIFOAddrGet||)
	.dwattr $C$DW$340, DW_AT_high_pc(0x00)
	.dwattr $C$DW$340, DW_AT_linkage_name("USBFIFOAddrGet")
	.dwattr $C$DW$340, DW_AT_external
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$340, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$340, DW_AT_decl_line(0xdcf)
	.dwattr $C$DW$340, DW_AT_decl_column(0x01)
	.dwattr $C$DW$340, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3536,column 1,is_stmt,address ||USBFIFOAddrGet||,isa 0

	.dwfde $C$DW$CIE, ||USBFIFOAddrGet||
$C$DW$341	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$341, DW_AT_name("ui32Base")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg0]

$C$DW$342	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$342, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: USBFIFOAddrGet                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBFIFOAddrGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$343	.dwtag  DW_TAG_variable
	.dwattr $C$DW$343, DW_AT_name("ui32Base")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3536| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3540,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3540| 
        SFR       ACC,2                 ; [CPU_ALU] |3540| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3540| 
        ADDB      ACC,#32               ; [CPU_ALU] |3540| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3541,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$340, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$340, DW_AT_TI_end_line(0xdd5)
	.dwattr $C$DW$340, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$340

	.sect	".text:USBModeGet"
	.clink
	.global	||USBModeGet||

$C$DW$345	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$345, DW_AT_name("USBModeGet")
	.dwattr $C$DW$345, DW_AT_low_pc(||USBModeGet||)
	.dwattr $C$DW$345, DW_AT_high_pc(0x00)
	.dwattr $C$DW$345, DW_AT_linkage_name("USBModeGet")
	.dwattr $C$DW$345, DW_AT_external
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$345, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$345, DW_AT_decl_line(0xe0b)
	.dwattr $C$DW$345, DW_AT_decl_column(0x01)
	.dwattr $C$DW$345, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3596,column 1,is_stmt,address ||USBModeGet||,isa 0

	.dwfde $C$DW$CIE, ||USBModeGet||
$C$DW$346	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$346, DW_AT_name("ui32Base")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBModeGet                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBModeGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$347	.dwtag  DW_TAG_variable
	.dwattr $C$DW$347, DW_AT_name("ui32Base")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3596| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3613,column 5,is_stmt,isa 0
        MOVB      ACC,#96               ; [CPU_ALU] |3613| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3613| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3613| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3613| 
        ANDB      AL,#0x9d              ; [CPU_ALU] |3613| 
        MOV       ACC,AL                ; [CPU_ALU] |3613| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3616,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$345, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$345, DW_AT_TI_end_line(0xe20)
	.dwattr $C$DW$345, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$345

	.sect	".text:USBEndpointDMAChannel"
	.clink
	.global	||USBEndpointDMAChannel||

$C$DW$349	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$349, DW_AT_name("USBEndpointDMAChannel")
	.dwattr $C$DW$349, DW_AT_low_pc(||USBEndpointDMAChannel||)
	.dwattr $C$DW$349, DW_AT_high_pc(0x00)
	.dwattr $C$DW$349, DW_AT_linkage_name("USBEndpointDMAChannel")
	.dwattr $C$DW$349, DW_AT_external
	.dwattr $C$DW$349, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$349, DW_AT_decl_line(0xe39)
	.dwattr $C$DW$349, DW_AT_decl_column(0x01)
	.dwattr $C$DW$349, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3643,column 1,is_stmt,address ||USBEndpointDMAChannel||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointDMAChannel||
$C$DW$350	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$350, DW_AT_name("ui32Base")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg0]

$C$DW$351	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$351, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_breg20 -8]

$C$DW$352	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$352, DW_AT_name("ui32Channel")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: USBEndpointDMAChannel         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||USBEndpointDMAChannel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$353	.dwtag  DW_TAG_variable
	.dwattr $C$DW$353, DW_AT_name("ui32Base")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_breg20 -2]

$C$DW$354	.dwtag  DW_TAG_variable
	.dwattr $C$DW$354, DW_AT_name("ui32Mask")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3643| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3660,column 5,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |3660| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |3660| 
        MOV       ACC,*-SP[10] << #2    ; [CPU_ALU] |3660| 
        MOV       T,AL                  ; [CPU_ALU] |3660| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |3660| 
        LSLL      ACC,T                 ; [CPU_ALU] |3660| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |3660| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3665,column 5,is_stmt,isa 0
        MOV       ACC,#1104             ; [CPU_ALU] |3665| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3665| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3665| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |3665| 
        NOT       ACC                   ; [CPU_ALU] |3665| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |3665| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |3665| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |3665| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3671,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |3671| 
        SFR       ACC,4                 ; [CPU_ALU] |3671| 
        MOVL      P,ACC                 ; [CPU_ALU] |3671| 
        MOV       ACC,*-SP[10] << #2    ; [CPU_ALU] |3671| 
        MOVP      T,AL                  ; [CPU_ALU] 
        LSLL      ACC,T                 ; [CPU_ALU] |3671| 
        MOVL      P,ACC                 ; [CPU_ALU] |3671| 
        MOV       AL,PL                 ; [CPU_ALU] |3671| 
        OR        *-SP[4],AL            ; [CPU_ALU] |3671| 
        MOV       AL,PH                 ; [CPU_ALU] |3671| 
        OR        *-SP[3],AL            ; [CPU_ALU] |3671| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3676,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |3676| 
        MOV       ACC,#1104             ; [CPU_ALU] |3676| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3676| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3676| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |3676| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3677,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$349, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$349, DW_AT_TI_end_line(0xe5d)
	.dwattr $C$DW$349, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$349

	.sect	".text:USBHostMode"
	.clink
	.global	||USBHostMode||

$C$DW$356	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$356, DW_AT_name("USBHostMode")
	.dwattr $C$DW$356, DW_AT_low_pc(||USBHostMode||)
	.dwattr $C$DW$356, DW_AT_high_pc(0x00)
	.dwattr $C$DW$356, DW_AT_linkage_name("USBHostMode")
	.dwattr $C$DW$356, DW_AT_external
	.dwattr $C$DW$356, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$356, DW_AT_decl_line(0xe6e)
	.dwattr $C$DW$356, DW_AT_decl_column(0x01)
	.dwattr $C$DW$356, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3695,column 1,is_stmt,address ||USBHostMode||,isa 0

	.dwfde $C$DW$CIE, ||USBHostMode||
$C$DW$357	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$357, DW_AT_name("ui32Base")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBHostMode                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBHostMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$358	.dwtag  DW_TAG_variable
	.dwattr $C$DW$358, DW_AT_name("ui32Base")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3695| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3707,column 5,is_stmt,isa 0
        MOV       ACC,#1052             ; [CPU_ALU] |3707| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3707| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3707| 
        MOVB      AL,#2                 ; [CPU_ALU] |3707| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3707| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3708,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$356, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$356, DW_AT_TI_end_line(0xe7c)
	.dwattr $C$DW$356, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$356

	.sect	".text:USBDevMode"
	.clink
	.global	||USBDevMode||

$C$DW$360	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$360, DW_AT_name("USBDevMode")
	.dwattr $C$DW$360, DW_AT_low_pc(||USBDevMode||)
	.dwattr $C$DW$360, DW_AT_high_pc(0x00)
	.dwattr $C$DW$360, DW_AT_linkage_name("USBDevMode")
	.dwattr $C$DW$360, DW_AT_external
	.dwattr $C$DW$360, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$360, DW_AT_decl_line(0xe8d)
	.dwattr $C$DW$360, DW_AT_decl_column(0x01)
	.dwattr $C$DW$360, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3726,column 1,is_stmt,address ||USBDevMode||,isa 0

	.dwfde $C$DW$CIE, ||USBDevMode||
$C$DW$361	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$361, DW_AT_name("ui32Base")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBDevMode                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDevMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$362	.dwtag  DW_TAG_variable
	.dwattr $C$DW$362, DW_AT_name("ui32Base")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3726| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3735,column 5,is_stmt,isa 0
        MOV       ACC,#1052             ; [CPU_ALU] |3735| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3735| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3735| 
        MOVB      AL,#3                 ; [CPU_ALU] |3735| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3735| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3736,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$360, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$360, DW_AT_TI_end_line(0xe98)
	.dwattr $C$DW$360, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$360

	.sect	".text:USBOTGMode"
	.clink
	.global	||USBOTGMode||

$C$DW$364	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$364, DW_AT_name("USBOTGMode")
	.dwattr $C$DW$364, DW_AT_low_pc(||USBOTGMode||)
	.dwattr $C$DW$364, DW_AT_high_pc(0x00)
	.dwattr $C$DW$364, DW_AT_linkage_name("USBOTGMode")
	.dwattr $C$DW$364, DW_AT_external
	.dwattr $C$DW$364, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$364, DW_AT_decl_line(0xea7)
	.dwattr $C$DW$364, DW_AT_decl_column(0x01)
	.dwattr $C$DW$364, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3752,column 1,is_stmt,address ||USBOTGMode||,isa 0

	.dwfde $C$DW$CIE, ||USBOTGMode||
$C$DW$365	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$365, DW_AT_name("ui32Base")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBOTGMode                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBOTGMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$366	.dwtag  DW_TAG_variable
	.dwattr $C$DW$366, DW_AT_name("ui32Base")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3752| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3762,column 5,is_stmt,isa 0
        MOV       ACC,#1052             ; [CPU_ALU] |3762| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3762| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3762| 
        MOVB      AL,#0                 ; [CPU_ALU] |3762| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3762| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3763,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$364, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$364, DW_AT_TI_end_line(0xeb3)
	.dwattr $C$DW$364, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$364

	.sect	".text:USBPHYPowerOff"
	.clink
	.global	||USBPHYPowerOff||

$C$DW$368	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$368, DW_AT_name("USBPHYPowerOff")
	.dwattr $C$DW$368, DW_AT_low_pc(||USBPHYPowerOff||)
	.dwattr $C$DW$368, DW_AT_high_pc(0x00)
	.dwattr $C$DW$368, DW_AT_linkage_name("USBPHYPowerOff")
	.dwattr $C$DW$368, DW_AT_external
	.dwattr $C$DW$368, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$368, DW_AT_decl_line(0xec3)
	.dwattr $C$DW$368, DW_AT_decl_column(0x01)
	.dwattr $C$DW$368, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3780,column 1,is_stmt,address ||USBPHYPowerOff||,isa 0

	.dwfde $C$DW$CIE, ||USBPHYPowerOff||
$C$DW$369	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$369, DW_AT_name("ui32Base")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBPHYPowerOff                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBPHYPowerOff||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$370	.dwtag  DW_TAG_variable
	.dwattr $C$DW$370, DW_AT_name("ui32Base")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3780| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3784,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |3784| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3784| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3784| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3784| 
        ORB       AL,#0x01              ; [CPU_ALU] |3784| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3784| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3785,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$368, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$368, DW_AT_TI_end_line(0xec9)
	.dwattr $C$DW$368, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$368

	.sect	".text:USBPHYPowerOn"
	.clink
	.global	||USBPHYPowerOn||

$C$DW$372	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$372, DW_AT_name("USBPHYPowerOn")
	.dwattr $C$DW$372, DW_AT_low_pc(||USBPHYPowerOn||)
	.dwattr $C$DW$372, DW_AT_high_pc(0x00)
	.dwattr $C$DW$372, DW_AT_linkage_name("USBPHYPowerOn")
	.dwattr $C$DW$372, DW_AT_external
	.dwattr $C$DW$372, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$372, DW_AT_decl_line(0xed9)
	.dwattr $C$DW$372, DW_AT_decl_column(0x01)
	.dwattr $C$DW$372, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3802,column 1,is_stmt,address ||USBPHYPowerOn||,isa 0

	.dwfde $C$DW$CIE, ||USBPHYPowerOn||
$C$DW$373	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$373, DW_AT_name("ui32Base")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBPHYPowerOn                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBPHYPowerOn||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$374	.dwtag  DW_TAG_variable
	.dwattr $C$DW$374, DW_AT_name("ui32Base")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3802| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3807,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |3807| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3807| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3807| 
        MOVB      AL.LSB,*+XAR4[0]      ; [CPU_ALU] |3807| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |3807| 
        MOVB      *+XAR4[0],AL.LSB      ; [CPU_ALU] |3807| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3808,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$372, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$372, DW_AT_TI_end_line(0xee0)
	.dwattr $C$DW$372, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$372

	.sect	".text:USBEndpointPacketCountSet"
	.clink
	.global	||USBEndpointPacketCountSet||

$C$DW$376	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$376, DW_AT_name("USBEndpointPacketCountSet")
	.dwattr $C$DW$376, DW_AT_low_pc(||USBEndpointPacketCountSet||)
	.dwattr $C$DW$376, DW_AT_high_pc(0x00)
	.dwattr $C$DW$376, DW_AT_linkage_name("USBEndpointPacketCountSet")
	.dwattr $C$DW$376, DW_AT_external
	.dwattr $C$DW$376, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$376, DW_AT_decl_line(0xef6)
	.dwattr $C$DW$376, DW_AT_decl_column(0x01)
	.dwattr $C$DW$376, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3832,column 1,is_stmt,address ||USBEndpointPacketCountSet||,isa 0

	.dwfde $C$DW$CIE, ||USBEndpointPacketCountSet||
$C$DW$377	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$377, DW_AT_name("ui32Base")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg0]

$C$DW$378	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$378, DW_AT_name("ui32Endpoint")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_breg20 -6]

$C$DW$379	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$379, DW_AT_name("ui32Count")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: USBEndpointPacketCountSet     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBEndpointPacketCountSet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$380	.dwtag  DW_TAG_variable
	.dwattr $C$DW$380, DW_AT_name("ui32Base")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3832| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3833,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |3833| 
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |3833| 
        SFR       ACC,4                 ; [CPU_ALU] |3833| 
        SUBB      ACC,#1                ; [CPU_ALU] |3833| 
        LSL       ACC,2                 ; [CPU_ALU] |3833| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3833| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3833| 
        MOVL      XAR0,#772             ; [CPU_ALU] |3833| 
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |3833| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3835,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$376, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$376, DW_AT_TI_end_line(0xefb)
	.dwattr $C$DW$376, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$376

	.sect	".text:USBNumEndpointsGet"
	.clink
	.global	||USBNumEndpointsGet||

$C$DW$382	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$382, DW_AT_name("USBNumEndpointsGet")
	.dwattr $C$DW$382, DW_AT_low_pc(||USBNumEndpointsGet||)
	.dwattr $C$DW$382, DW_AT_high_pc(0x00)
	.dwattr $C$DW$382, DW_AT_linkage_name("USBNumEndpointsGet")
	.dwattr $C$DW$382, DW_AT_external
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$382, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$382, DW_AT_decl_line(0xf0d)
	.dwattr $C$DW$382, DW_AT_decl_column(0x01)
	.dwattr $C$DW$382, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3854,column 1,is_stmt,address ||USBNumEndpointsGet||,isa 0

	.dwfde $C$DW$CIE, ||USBNumEndpointsGet||
$C$DW$383	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$383, DW_AT_name("ui32Base")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBNumEndpointsGet            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBNumEndpointsGet||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$384	.dwtag  DW_TAG_variable
	.dwattr $C$DW$384, DW_AT_name("ui32Base")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3854| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3859,column 5,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |3859| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3860,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$382, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$382, DW_AT_TI_end_line(0xf14)
	.dwattr $C$DW$382, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$382

	.sect	".text:USBEnableGlobalInterrupt"
	.clink
	.global	||USBEnableGlobalInterrupt||

$C$DW$386	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$386, DW_AT_name("USBEnableGlobalInterrupt")
	.dwattr $C$DW$386, DW_AT_low_pc(||USBEnableGlobalInterrupt||)
	.dwattr $C$DW$386, DW_AT_high_pc(0x00)
	.dwattr $C$DW$386, DW_AT_linkage_name("USBEnableGlobalInterrupt")
	.dwattr $C$DW$386, DW_AT_external
	.dwattr $C$DW$386, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$386, DW_AT_decl_line(0xf23)
	.dwattr $C$DW$386, DW_AT_decl_column(0x01)
	.dwattr $C$DW$386, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3876,column 1,is_stmt,address ||USBEnableGlobalInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||USBEnableGlobalInterrupt||
$C$DW$387	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$387, DW_AT_name("ui32Base")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBEnableGlobalInterrupt      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBEnableGlobalInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$388	.dwtag  DW_TAG_variable
	.dwattr $C$DW$388, DW_AT_name("ui32Base")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3876| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3882,column 5,is_stmt,isa 0
        MOV       ACC,#1152             ; [CPU_ALU] |3882| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3882| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3882| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |3882| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3883,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$386, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$386, DW_AT_TI_end_line(0xf2b)
	.dwattr $C$DW$386, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$386

	.sect	".text:USBDisableGlobalInterrupt"
	.clink
	.global	||USBDisableGlobalInterrupt||

$C$DW$390	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$390, DW_AT_name("USBDisableGlobalInterrupt")
	.dwattr $C$DW$390, DW_AT_low_pc(||USBDisableGlobalInterrupt||)
	.dwattr $C$DW$390, DW_AT_high_pc(0x00)
	.dwattr $C$DW$390, DW_AT_linkage_name("USBDisableGlobalInterrupt")
	.dwattr $C$DW$390, DW_AT_external
	.dwattr $C$DW$390, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$390, DW_AT_decl_line(0xf3a)
	.dwattr $C$DW$390, DW_AT_decl_column(0x01)
	.dwattr $C$DW$390, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3899,column 1,is_stmt,address ||USBDisableGlobalInterrupt||,isa 0

	.dwfde $C$DW$CIE, ||USBDisableGlobalInterrupt||
$C$DW$391	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$391, DW_AT_name("ui32Base")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBDisableGlobalInterrupt     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBDisableGlobalInterrupt||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$392	.dwtag  DW_TAG_variable
	.dwattr $C$DW$392, DW_AT_name("ui32Base")
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$392, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3899| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3905,column 5,is_stmt,isa 0
        MOV       ACC,#1152             ; [CPU_ALU] |3905| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3905| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3905| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |3905| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3906,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$390, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$390, DW_AT_TI_end_line(0xf42)
	.dwattr $C$DW$390, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$390

	.sect	".text:USBGlobalInterruptFlagStatus"
	.clink
	.global	||USBGlobalInterruptFlagStatus||

$C$DW$394	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$394, DW_AT_name("USBGlobalInterruptFlagStatus")
	.dwattr $C$DW$394, DW_AT_low_pc(||USBGlobalInterruptFlagStatus||)
	.dwattr $C$DW$394, DW_AT_high_pc(0x00)
	.dwattr $C$DW$394, DW_AT_linkage_name("USBGlobalInterruptFlagStatus")
	.dwattr $C$DW$394, DW_AT_external
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$394, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$394, DW_AT_decl_line(0xf53)
	.dwattr $C$DW$394, DW_AT_decl_column(0x01)
	.dwattr $C$DW$394, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3924,column 1,is_stmt,address ||USBGlobalInterruptFlagStatus||,isa 0

	.dwfde $C$DW$CIE, ||USBGlobalInterruptFlagStatus||
$C$DW$395	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$395, DW_AT_name("ui32Base")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBGlobalInterruptFlagStatus  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBGlobalInterruptFlagStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$396	.dwtag  DW_TAG_variable
	.dwattr $C$DW$396, DW_AT_name("ui32Base")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3924| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3930,column 5,is_stmt,isa 0
        MOV       ACC,#1156             ; [CPU_ALU] |3930| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3930| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3930| 
        AND       AL,*+XAR4[0],#0x0001  ; [CPU_ALU] |3930| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3931,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$394, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$394, DW_AT_TI_end_line(0xf5b)
	.dwattr $C$DW$394, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$394

	.sect	".text:USBClearGlobalInterruptFlag"
	.clink
	.global	||USBClearGlobalInterruptFlag||

$C$DW$398	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$398, DW_AT_name("USBClearGlobalInterruptFlag")
	.dwattr $C$DW$398, DW_AT_low_pc(||USBClearGlobalInterruptFlag||)
	.dwattr $C$DW$398, DW_AT_high_pc(0x00)
	.dwattr $C$DW$398, DW_AT_linkage_name("USBClearGlobalInterruptFlag")
	.dwattr $C$DW$398, DW_AT_external
	.dwattr $C$DW$398, DW_AT_decl_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$398, DW_AT_decl_line(0xf6a)
	.dwattr $C$DW$398, DW_AT_decl_column(0x01)
	.dwattr $C$DW$398, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3947,column 1,is_stmt,address ||USBClearGlobalInterruptFlag||,isa 0

	.dwfde $C$DW$CIE, ||USBClearGlobalInterruptFlag||
$C$DW$399	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$399, DW_AT_name("ui32Base")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: USBClearGlobalInterruptFlag   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||USBClearGlobalInterruptFlag||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$400	.dwtag  DW_TAG_variable
	.dwattr $C$DW$400, DW_AT_name("ui32Base")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |3947| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3953,column 5,is_stmt,isa 0
        MOV       ACC,#1160             ; [CPU_ALU] |3953| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |3953| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |3953| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |3953| 
	.dwpsn	file "../F2838x_driverlib/driverlib/usb.c",line 3954,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$398, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/usb.c")
	.dwattr $C$DW$398, DW_AT_TI_end_line(0xf72)
	.dwattr $C$DW$398, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$398


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


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("int16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$37


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$40


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x12)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$45


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("int32_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$47


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


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$31


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


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$24, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$24, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$24

