;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:13 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{36CB047C-E363-4187-822C-7803CF47F9F2} 
	.sect	".text:DMA_configAddresses"
	.clink
	.global	||DMA_configAddresses||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DMA_configAddresses")
	.dwattr $C$DW$1, DW_AT_low_pc(||DMA_configAddresses||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("DMA_configAddresses")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x32)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 52,column 1,is_stmt,address ||DMA_configAddresses||,isa 0

	.dwfde $C$DW$CIE, ||DMA_configAddresses||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("destAddr")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("srcAddr")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: DMA_configAddresses           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||DMA_configAddresses||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("base")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("destAddr")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg20 -4]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("srcAddr")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[6],XAR5          ; [CPU_ALU] |52| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |52| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |52| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 58,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |58| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 63,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |63| 
        MOVB      ACC,#16               ; [CPU_ALU] |63| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |63| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |63| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |63| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 64,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |64| 
        MOVB      ACC,#18               ; [CPU_ALU] |64| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |64| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |64| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |64| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 69,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |69| 
        MOVB      ACC,#24               ; [CPU_ALU] |69| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |69| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |69| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |69| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 70,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |70| 
        MOVB      ACC,#26               ; [CPU_ALU] |70| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |70| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |70| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |70| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 72,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |72| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 73,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x49)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:DMA_configBurst"
	.clink
	.global	||DMA_configBurst||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("DMA_configBurst")
	.dwattr $C$DW$9, DW_AT_low_pc(||DMA_configBurst||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("DMA_configBurst")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x50)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 82,column 1,is_stmt,address ||DMA_configBurst||,isa 0

	.dwfde $C$DW$CIE, ||DMA_configBurst||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("size")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("srcStep")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg14]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("destStep")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -7]


;***************************************************************
;* FNAME: DMA_configBurst               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||DMA_configBurst||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -2]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("size")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -3]

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("srcStep")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |82| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |82| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |82| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 89,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |89| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 94,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |94| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |94| 
        ADDB      AL,#-1                ; [CPU_ALU] |94| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |94| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 95,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |95| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |95| 
        MOV       *+XAR4[4],AL          ; [CPU_ALU] |95| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 96,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |96| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |96| 
        MOV       *+XAR4[5],AL          ; [CPU_ALU] |96| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 98,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |98| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 99,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x63)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:DMA_configTransfer"
	.clink
	.global	||DMA_configTransfer||

$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("DMA_configTransfer")
	.dwattr $C$DW$18, DW_AT_low_pc(||DMA_configTransfer||)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_linkage_name("DMA_configTransfer")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 108,column 1,is_stmt,address ||DMA_configTransfer||,isa 0

	.dwfde $C$DW$CIE, ||DMA_configTransfer||
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("base")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("transferSize")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -8]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("srcStep")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("destStep")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: DMA_configTransfer            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||DMA_configTransfer||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -2]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("srcStep")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -3]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("destStep")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |108| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |108| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |108| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 115,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |115| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 120,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |120| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |120| 
        ADDB      AL,#-1                ; [CPU_ALU] |120| 
        MOV       *+XAR4[6],AL          ; [CPU_ALU] |120| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 121,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_ALU] |121| 
        MOVB      ACC,#8                ; [CPU_ALU] |121| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |121| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |121| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |121| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 122,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |122| 
        MOVB      ACC,#9                ; [CPU_ALU] |122| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |122| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |122| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |122| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 124,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |124| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 125,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$18, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x7d)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text:DMA_configWrap"
	.clink
	.global	||DMA_configWrap||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("DMA_configWrap")
	.dwattr $C$DW$27, DW_AT_low_pc(||DMA_configWrap||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("DMA_configWrap")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x84)
	.dwattr $C$DW$27, DW_AT_decl_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 134,column 1,is_stmt,address ||DMA_configWrap||,isa 0

	.dwfde $C$DW$CIE, ||DMA_configWrap||
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("base")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("srcWrapSize")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -8]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("srcStep")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("destWrapSize")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -10]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("destStep")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: DMA_configWrap                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||DMA_configWrap||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("base")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -2]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("srcStep")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -3]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("destStep")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |134| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |134| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 141,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |141| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 146,column 5,is_stmt,isa 0
        MOVZ      AR5,*-SP[8]           ; [CPU_ALU] |146| 
        MOVB      ACC,#10               ; [CPU_ALU] |146| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |146| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |146| 
        SUBB      XAR5,#1               ; [CPU_ARAU] |146| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |146| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 147,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_ALU] |147| 
        MOVB      ACC,#12               ; [CPU_ALU] |147| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |147| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |147| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |147| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 149,column 5,is_stmt,isa 0
        MOVZ      AR5,*-SP[10]          ; [CPU_ALU] |149| 
        MOVB      ACC,#13               ; [CPU_ALU] |149| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |149| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |149| 
        SUBB      XAR5,#1               ; [CPU_ARAU] |149| 
        MOV       *+XAR4[0],AR5         ; [CPU_ALU] |149| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 150,column 5,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |150| 
        MOVB      ACC,#15               ; [CPU_ALU] |150| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |150| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |150| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |150| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 152,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |152| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 153,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x99)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:DMA_configMode"
	.clink
	.global	||DMA_configMode||

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("DMA_configMode")
	.dwattr $C$DW$37, DW_AT_low_pc(||DMA_configMode||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("DMA_configMode")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 161,column 1,is_stmt,address ||DMA_configMode||,isa 0

	.dwfde $C$DW$CIE, ||DMA_configMode||
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("trigger")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("config")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: DMA_configMode                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

||DMA_configMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("base")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -2]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("trigger")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |161| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |161| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 167,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |167| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 173,column 5,is_stmt,isa 0
        B         ||$C$L7||,UNC         ; [CPU_ALU] |173| 
        ; branch occurs ; [] |173| 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 179,column 13,is_stmt,isa 0
        MOV32     ACC,*(0:0x7996)       ; [CPU_FPU] |179| 
        AND       AL,#65280             ; [CPU_ALU] |179| 
        OR        ACC,*-SP[3]           ; [CPU_ALU] |179| 
        MOV32     *(0:0x7996),ACC       ; [CPU_FPU] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 187,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x1020)        ; [CPU_ALU] |187| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |187| 
        ORB       AL,#0x01              ; [CPU_ALU] |187| 
        MOV       *(0:0x1020),AL        ; [CPU_ALU] |187| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 189,column 13,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |189| 
        ; branch occurs ; [] |189| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 195,column 13,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV32     P,*(0:0x7996)         ; [CPU_FPU] |195| 
        MOV       ACC,*-SP[3] << 8      ; [CPU_ALU] |195| 
        AND       PL,#255               ; [CPU_ALU] |195| 
        OR        AH,PH                 ; [CPU_ALU] |195| 
        OR        AL,PL                 ; [CPU_ALU] |195| 
        MOV32     *(0:0x7996),ACC       ; [CPU_FPU] |195| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 203,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x1040)        ; [CPU_ALU] |203| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |203| 
        ORB       AL,#0x02              ; [CPU_ALU] |203| 
        MOV       *(0:0x1040),AL        ; [CPU_ALU] |203| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 205,column 13,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |205| 
        ; branch occurs ; [] |205| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 211,column 13,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV32     P,*(0:0x7996)         ; [CPU_FPU] |211| 
        MOV       ACC,*-SP[3] << 16     ; [CPU_ALU] |211| 
        AND       PH,#65280             ; [CPU_ALU] |211| 
        OR        AL,PL                 ; [CPU_ALU] |211| 
        OR        AH,PH                 ; [CPU_ALU] |211| 
        MOV32     *(0:0x7996),ACC       ; [CPU_FPU] |211| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 219,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x1060)        ; [CPU_ALU] |219| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |219| 
        ORB       AL,#0x03              ; [CPU_ALU] |219| 
        MOV       *(0:0x1060),AL        ; [CPU_ALU] |219| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 221,column 13,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |221| 
        ; branch occurs ; [] |221| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 227,column 13,is_stmt,isa 0
        MOV32     P,*(0:0x7996)         ; [CPU_FPU] |227| 
        MOVU      ACC,*-SP[3]           ; [CPU_ALU] |227| 
        MOV       T,#24                 ; [CPU_ALU] |227| 
        AND       PH,#255               ; [CPU_ALU] |227| 
        LSLL      ACC,T                 ; [CPU_ALU] |227| 
        OR        AL,PL                 ; [CPU_ALU] |227| 
        OR        AH,PH                 ; [CPU_ALU] |227| 
        MOV32     *(0:0x7996),ACC       ; [CPU_FPU] |227| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 235,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x1080)        ; [CPU_ALU] |235| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |235| 
        ORB       AL,#0x04              ; [CPU_ALU] |235| 
        MOV       *(0:0x1080),AL        ; [CPU_ALU] |235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 237,column 13,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |237| 
        ; branch occurs ; [] |237| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 243,column 13,is_stmt,isa 0
        MOV32     ACC,*(0:0x7998)       ; [CPU_FPU] |243| 
        AND       AL,#65280             ; [CPU_ALU] |243| 
        OR        ACC,*-SP[3]           ; [CPU_ALU] |243| 
        MOV32     *(0:0x7998),ACC       ; [CPU_FPU] |243| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 251,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x10a0)        ; [CPU_ALU] |251| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |251| 
        ORB       AL,#0x05              ; [CPU_ALU] |251| 
        MOV       *(0:0x10a0),AL        ; [CPU_ALU] |251| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 253,column 13,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |253| 
        ; branch occurs ; [] |253| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 259,column 13,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV32     P,*(0:0x7998)         ; [CPU_FPU] |259| 
        MOV       ACC,*-SP[3] << 8      ; [CPU_ALU] |259| 
        AND       PL,#255               ; [CPU_ALU] |259| 
        OR        AH,PH                 ; [CPU_ALU] |259| 
        OR        AL,PL                 ; [CPU_ALU] |259| 
        MOV32     *(0:0x7998),ACC       ; [CPU_FPU] |259| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 267,column 13,is_stmt,isa 0
        MOV       AL,*(0:0x10c0)        ; [CPU_ALU] |267| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |267| 
        ORB       AL,#0x06              ; [CPU_ALU] |267| 
        MOV       *(0:0x10c0),AL        ; [CPU_ALU] |267| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 269,column 13,is_stmt,isa 0
        B         ||$C$L9||,UNC         ; [CPU_ALU] |269| 
        ; branch occurs ; [] |269| 
||$C$L7||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 173,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[2]          ; [CPU_ALU] |173| 
        MOV       ACC,#4224             ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L8||,LT          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        MOV       ACC,#4128             ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        MOV       ACC,#4160             ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        MOV       ACC,#4192             ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        B         ||$C$L9||,UNC         ; [CPU_ALU] |173| 
        ; branch occurs ; [] |173| 
||$C$L8||:    
        MOV       ACC,#4256             ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        MOV       ACC,#4288             ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         ||$C$L6||,EQ          ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 281,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |281| 
        AND       *+XAR4[0],#0xb3ff     ; [CPU_ALU] |281| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 283,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |283| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |283| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |283| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 285,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |285| 
	.dwpsn	file "../F2838x_driverlib/driverlib/dma.c",line 286,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/dma.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x11e)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37


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
$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("DMA_TRIGGER_SOFTWARE")
	.dwattr $C$DW$44, DW_AT_const_value(0x00)
	.dwattr $C$DW$44, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x65)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("DMA_TRIGGER_ADCA1")
	.dwattr $C$DW$45, DW_AT_const_value(0x01)
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x67)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("DMA_TRIGGER_ADCA2")
	.dwattr $C$DW$46, DW_AT_const_value(0x02)
	.dwattr $C$DW$46, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x68)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("DMA_TRIGGER_ADCA3")
	.dwattr $C$DW$47, DW_AT_const_value(0x03)
	.dwattr $C$DW$47, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x69)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("DMA_TRIGGER_ADCA4")
	.dwattr $C$DW$48, DW_AT_const_value(0x04)
	.dwattr $C$DW$48, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

$C$DW$49	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$49, DW_AT_name("DMA_TRIGGER_ADCAEVT")
	.dwattr $C$DW$49, DW_AT_const_value(0x05)
	.dwattr $C$DW$49, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)

$C$DW$50	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$50, DW_AT_name("DMA_TRIGGER_ADCB1")
	.dwattr $C$DW$50, DW_AT_const_value(0x06)
	.dwattr $C$DW$50, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$50, DW_AT_decl_column(0x05)

$C$DW$51	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$51, DW_AT_name("DMA_TRIGGER_ADCB2")
	.dwattr $C$DW$51, DW_AT_const_value(0x07)
	.dwattr $C$DW$51, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$51, DW_AT_decl_column(0x05)

$C$DW$52	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$52, DW_AT_name("DMA_TRIGGER_ADCB3")
	.dwattr $C$DW$52, DW_AT_const_value(0x08)
	.dwattr $C$DW$52, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$52, DW_AT_decl_column(0x05)

$C$DW$53	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$53, DW_AT_name("DMA_TRIGGER_ADCB4")
	.dwattr $C$DW$53, DW_AT_const_value(0x09)
	.dwattr $C$DW$53, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$53, DW_AT_decl_column(0x05)

$C$DW$54	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$54, DW_AT_name("DMA_TRIGGER_ADCBEVT")
	.dwattr $C$DW$54, DW_AT_const_value(0x0a)
	.dwattr $C$DW$54, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x70)
	.dwattr $C$DW$54, DW_AT_decl_column(0x05)

$C$DW$55	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$55, DW_AT_name("DMA_TRIGGER_ADCC1")
	.dwattr $C$DW$55, DW_AT_const_value(0x0b)
	.dwattr $C$DW$55, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x71)
	.dwattr $C$DW$55, DW_AT_decl_column(0x05)

$C$DW$56	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$56, DW_AT_name("DMA_TRIGGER_ADCC2")
	.dwattr $C$DW$56, DW_AT_const_value(0x0c)
	.dwattr $C$DW$56, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x72)
	.dwattr $C$DW$56, DW_AT_decl_column(0x05)

$C$DW$57	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$57, DW_AT_name("DMA_TRIGGER_ADCC3")
	.dwattr $C$DW$57, DW_AT_const_value(0x0d)
	.dwattr $C$DW$57, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x73)
	.dwattr $C$DW$57, DW_AT_decl_column(0x05)

$C$DW$58	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$58, DW_AT_name("DMA_TRIGGER_ADCC4")
	.dwattr $C$DW$58, DW_AT_const_value(0x0e)
	.dwattr $C$DW$58, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x74)
	.dwattr $C$DW$58, DW_AT_decl_column(0x05)

$C$DW$59	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$59, DW_AT_name("DMA_TRIGGER_ADCCEVT")
	.dwattr $C$DW$59, DW_AT_const_value(0x0f)
	.dwattr $C$DW$59, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x75)
	.dwattr $C$DW$59, DW_AT_decl_column(0x05)

$C$DW$60	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$60, DW_AT_name("DMA_TRIGGER_ADCD1")
	.dwattr $C$DW$60, DW_AT_const_value(0x10)
	.dwattr $C$DW$60, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x76)
	.dwattr $C$DW$60, DW_AT_decl_column(0x05)

$C$DW$61	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$61, DW_AT_name("DMA_TRIGGER_ADCD2")
	.dwattr $C$DW$61, DW_AT_const_value(0x11)
	.dwattr $C$DW$61, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x77)
	.dwattr $C$DW$61, DW_AT_decl_column(0x05)

$C$DW$62	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$62, DW_AT_name("DMA_TRIGGER_ADCD3")
	.dwattr $C$DW$62, DW_AT_const_value(0x12)
	.dwattr $C$DW$62, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x78)
	.dwattr $C$DW$62, DW_AT_decl_column(0x05)

$C$DW$63	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$63, DW_AT_name("DMA_TRIGGER_ADCD4")
	.dwattr $C$DW$63, DW_AT_const_value(0x13)
	.dwattr $C$DW$63, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x79)
	.dwattr $C$DW$63, DW_AT_decl_column(0x05)

$C$DW$64	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$64, DW_AT_name("DMA_TRIGGER_ADCDEVT")
	.dwattr $C$DW$64, DW_AT_const_value(0x14)
	.dwattr $C$DW$64, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$64, DW_AT_decl_column(0x05)

$C$DW$65	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$65, DW_AT_name("DMA_TRIGGER_XINT1")
	.dwattr $C$DW$65, DW_AT_const_value(0x1d)
	.dwattr $C$DW$65, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$65, DW_AT_decl_column(0x05)

$C$DW$66	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$66, DW_AT_name("DMA_TRIGGER_XINT2")
	.dwattr $C$DW$66, DW_AT_const_value(0x1e)
	.dwattr $C$DW$66, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$66, DW_AT_decl_column(0x05)

$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("DMA_TRIGGER_XINT3")
	.dwattr $C$DW$67, DW_AT_const_value(0x1f)
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("DMA_TRIGGER_XINT4")
	.dwattr $C$DW$68, DW_AT_const_value(0x20)
	.dwattr $C$DW$68, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("DMA_TRIGGER_XINT5")
	.dwattr $C$DW$69, DW_AT_const_value(0x21)
	.dwattr $C$DW$69, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x80)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("DMA_TRIGGER_EPWM1SOCA")
	.dwattr $C$DW$70, DW_AT_const_value(0x24)
	.dwattr $C$DW$70, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x82)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

$C$DW$71	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$71, DW_AT_name("DMA_TRIGGER_EPWM1SOCB")
	.dwattr $C$DW$71, DW_AT_const_value(0x25)
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x83)
	.dwattr $C$DW$71, DW_AT_decl_column(0x05)

$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("DMA_TRIGGER_EPWM2SOCA")
	.dwattr $C$DW$72, DW_AT_const_value(0x26)
	.dwattr $C$DW$72, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x84)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("DMA_TRIGGER_EPWM2SOCB")
	.dwattr $C$DW$73, DW_AT_const_value(0x27)
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x85)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("DMA_TRIGGER_EPWM3SOCA")
	.dwattr $C$DW$74, DW_AT_const_value(0x28)
	.dwattr $C$DW$74, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x86)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("DMA_TRIGGER_EPWM3SOCB")
	.dwattr $C$DW$75, DW_AT_const_value(0x29)
	.dwattr $C$DW$75, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x87)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("DMA_TRIGGER_EPWM4SOCA")
	.dwattr $C$DW$76, DW_AT_const_value(0x2a)
	.dwattr $C$DW$76, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x88)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("DMA_TRIGGER_EPWM4SOCB")
	.dwattr $C$DW$77, DW_AT_const_value(0x2b)
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x89)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("DMA_TRIGGER_EPWM5SOCA")
	.dwattr $C$DW$78, DW_AT_const_value(0x2c)
	.dwattr $C$DW$78, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("DMA_TRIGGER_EPWM5SOCB")
	.dwattr $C$DW$79, DW_AT_const_value(0x2d)
	.dwattr $C$DW$79, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("DMA_TRIGGER_EPWM6SOCA")
	.dwattr $C$DW$80, DW_AT_const_value(0x2e)
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("DMA_TRIGGER_EPWM6SOCB")
	.dwattr $C$DW$81, DW_AT_const_value(0x2f)
	.dwattr $C$DW$81, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("DMA_TRIGGER_EPWM7SOCA")
	.dwattr $C$DW$82, DW_AT_const_value(0x30)
	.dwattr $C$DW$82, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("DMA_TRIGGER_EPWM7SOCB")
	.dwattr $C$DW$83, DW_AT_const_value(0x31)
	.dwattr $C$DW$83, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("DMA_TRIGGER_EPWM8SOCA")
	.dwattr $C$DW$84, DW_AT_const_value(0x32)
	.dwattr $C$DW$84, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x90)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("DMA_TRIGGER_EPWM8SOCB")
	.dwattr $C$DW$85, DW_AT_const_value(0x33)
	.dwattr $C$DW$85, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x91)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("DMA_TRIGGER_EPWM9SOCA")
	.dwattr $C$DW$86, DW_AT_const_value(0x34)
	.dwattr $C$DW$86, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x92)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("DMA_TRIGGER_EPWM9SOCB")
	.dwattr $C$DW$87, DW_AT_const_value(0x35)
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x93)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("DMA_TRIGGER_EPWM10SOCA")
	.dwattr $C$DW$88, DW_AT_const_value(0x36)
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x94)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("DMA_TRIGGER_EPWM10SOCB")
	.dwattr $C$DW$89, DW_AT_const_value(0x37)
	.dwattr $C$DW$89, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x95)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("DMA_TRIGGER_EPWM11SOCA")
	.dwattr $C$DW$90, DW_AT_const_value(0x38)
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x96)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("DMA_TRIGGER_EPWM11SOCB")
	.dwattr $C$DW$91, DW_AT_const_value(0x39)
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x97)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("DMA_TRIGGER_EPWM12SOCA")
	.dwattr $C$DW$92, DW_AT_const_value(0x3a)
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x98)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("DMA_TRIGGER_EPWM12SOCB")
	.dwattr $C$DW$93, DW_AT_const_value(0x3b)
	.dwattr $C$DW$93, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x99)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("DMA_TRIGGER_EPWM13SOCA")
	.dwattr $C$DW$94, DW_AT_const_value(0x3c)
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("DMA_TRIGGER_EPWM13SOCB")
	.dwattr $C$DW$95, DW_AT_const_value(0x3d)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("DMA_TRIGGER_EPWM14SOCA")
	.dwattr $C$DW$96, DW_AT_const_value(0x3e)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("DMA_TRIGGER_EPWM14SOCB")
	.dwattr $C$DW$97, DW_AT_const_value(0x3f)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("DMA_TRIGGER_EPWM15SOCA")
	.dwattr $C$DW$98, DW_AT_const_value(0x40)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("DMA_TRIGGER_EPWM15SOCB")
	.dwattr $C$DW$99, DW_AT_const_value(0x41)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("DMA_TRIGGER_EPWM16SOCA")
	.dwattr $C$DW$100, DW_AT_const_value(0x42)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("DMA_TRIGGER_EPWM16SOCB")
	.dwattr $C$DW$101, DW_AT_const_value(0x43)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("DMA_TRIGGER_TINT0")
	.dwattr $C$DW$102, DW_AT_const_value(0x44)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("DMA_TRIGGER_TINT1")
	.dwattr $C$DW$103, DW_AT_const_value(0x45)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("DMA_TRIGGER_TINT2")
	.dwattr $C$DW$104, DW_AT_const_value(0x46)
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("DMA_TRIGGER_MCBSPAMXEVT")
	.dwattr $C$DW$105, DW_AT_const_value(0x47)
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("DMA_TRIGGER_MCBSPAMREVT")
	.dwattr $C$DW$106, DW_AT_const_value(0x48)
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("DMA_TRIGGER_MCBSPBMXEVT")
	.dwattr $C$DW$107, DW_AT_const_value(0x49)
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("DMA_TRIGGER_MCBSPBMREVT")
	.dwattr $C$DW$108, DW_AT_const_value(0x4a)
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("DMA_TRIGGER_ECAP1")
	.dwattr $C$DW$109, DW_AT_const_value(0x4b)
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xac)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("DMA_TRIGGER_ECAP2")
	.dwattr $C$DW$110, DW_AT_const_value(0x4c)
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0xad)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("DMA_TRIGGER_ECAP3")
	.dwattr $C$DW$111, DW_AT_const_value(0x4d)
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0xae)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("DMA_TRIGGER_ECAP4")
	.dwattr $C$DW$112, DW_AT_const_value(0x4e)
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("DMA_TRIGGER_ECAP5")
	.dwattr $C$DW$113, DW_AT_const_value(0x4f)
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("DMA_TRIGGER_ECAP6")
	.dwattr $C$DW$114, DW_AT_const_value(0x50)
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("DMA_TRIGGER_ECAP7")
	.dwattr $C$DW$115, DW_AT_const_value(0x51)
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("DMA_TRIGGER_SDFM1FLT1")
	.dwattr $C$DW$116, DW_AT_const_value(0x5f)
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("DMA_TRIGGER_SDFM1FLT2")
	.dwattr $C$DW$117, DW_AT_const_value(0x60)
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("DMA_TRIGGER_SDFM1FLT3")
	.dwattr $C$DW$118, DW_AT_const_value(0x61)
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("DMA_TRIGGER_SDFM1FLT4")
	.dwattr $C$DW$119, DW_AT_const_value(0x62)
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("DMA_TRIGGER_SDFM2FLT1")
	.dwattr $C$DW$120, DW_AT_const_value(0x63)
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("DMA_TRIGGER_SDFM2FLT2")
	.dwattr $C$DW$121, DW_AT_const_value(0x64)
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xba)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("DMA_TRIGGER_SDFM2FLT3")
	.dwattr $C$DW$122, DW_AT_const_value(0x65)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("DMA_TRIGGER_SDFM2FLT4")
	.dwattr $C$DW$123, DW_AT_const_value(0x66)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("DMA_TRIGGER_SYNC")
	.dwattr $C$DW$124, DW_AT_const_value(0x67)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("DMA_TRIGGER_SPIATX")
	.dwattr $C$DW$125, DW_AT_const_value(0x6d)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("DMA_TRIGGER_SPIARX")
	.dwattr $C$DW$126, DW_AT_const_value(0x6e)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("DMA_TRIGGER_SPIBTX")
	.dwattr $C$DW$127, DW_AT_const_value(0x6f)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

$C$DW$128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$128, DW_AT_name("DMA_TRIGGER_SPIBRX")
	.dwattr $C$DW$128, DW_AT_const_value(0x70)
	.dwattr $C$DW$128, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)

$C$DW$129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$129, DW_AT_name("DMA_TRIGGER_SPICTX")
	.dwattr $C$DW$129, DW_AT_const_value(0x71)
	.dwattr $C$DW$129, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)

$C$DW$130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$130, DW_AT_name("DMA_TRIGGER_SPICRX")
	.dwattr $C$DW$130, DW_AT_const_value(0x72)
	.dwattr $C$DW$130, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)

$C$DW$131	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$131, DW_AT_name("DMA_TRIGGER_SPIDTX")
	.dwattr $C$DW$131, DW_AT_const_value(0x73)
	.dwattr $C$DW$131, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$131, DW_AT_decl_column(0x05)

$C$DW$132	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$132, DW_AT_name("DMA_TRIGGER_SPIDRX")
	.dwattr $C$DW$132, DW_AT_const_value(0x74)
	.dwattr $C$DW$132, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$132, DW_AT_decl_column(0x05)

$C$DW$133	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$133, DW_AT_name("DMA_TRIGGER_FSITXA")
	.dwattr $C$DW$133, DW_AT_const_value(0x7b)
	.dwattr $C$DW$133, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$133, DW_AT_decl_column(0x05)

$C$DW$134	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$134, DW_AT_name("DMA_TRIGGER_FSIRXA")
	.dwattr $C$DW$134, DW_AT_const_value(0x7d)
	.dwattr $C$DW$134, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0xca)
	.dwattr $C$DW$134, DW_AT_decl_column(0x05)

$C$DW$135	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$135, DW_AT_name("DMA_TRIGGER_USBA_RX1")
	.dwattr $C$DW$135, DW_AT_const_value(0x83)
	.dwattr $C$DW$135, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$135, DW_AT_decl_column(0x05)

$C$DW$136	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$136, DW_AT_name("DMA_TRIGGER_USBA_TX1")
	.dwattr $C$DW$136, DW_AT_const_value(0x84)
	.dwattr $C$DW$136, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$136, DW_AT_decl_column(0x05)

$C$DW$137	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$137, DW_AT_name("DMA_TRIGGER_USBA_RX2")
	.dwattr $C$DW$137, DW_AT_const_value(0x85)
	.dwattr $C$DW$137, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0xce)
	.dwattr $C$DW$137, DW_AT_decl_column(0x05)

$C$DW$138	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$138, DW_AT_name("DMA_TRIGGER_USBA_TX2")
	.dwattr $C$DW$138, DW_AT_const_value(0x86)
	.dwattr $C$DW$138, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$138, DW_AT_decl_column(0x05)

$C$DW$139	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$139, DW_AT_name("DMA_TRIGGER_USBA_RX3")
	.dwattr $C$DW$139, DW_AT_const_value(0x87)
	.dwattr $C$DW$139, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$139, DW_AT_decl_column(0x05)

$C$DW$140	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$140, DW_AT_name("DMA_TRIGGER_USBA_TX3")
	.dwattr $C$DW$140, DW_AT_const_value(0x88)
	.dwattr $C$DW$140, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$140, DW_AT_decl_column(0x05)

$C$DW$141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$141, DW_AT_name("DMA_TRIGGER_FSIRXC")
	.dwattr $C$DW$141, DW_AT_const_value(0x8f)
	.dwattr $C$DW$141, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$141, DW_AT_decl_column(0x05)

$C$DW$142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$142, DW_AT_name("DMA_TRIGGER_FSIRXD")
	.dwattr $C$DW$142, DW_AT_const_value(0x90)
	.dwattr $C$DW$142, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$142, DW_AT_decl_column(0x05)

$C$DW$143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$143, DW_AT_name("DMA_TRIGGER_FSIRXE")
	.dwattr $C$DW$143, DW_AT_const_value(0x91)
	.dwattr $C$DW$143, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$143, DW_AT_decl_column(0x05)

$C$DW$144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$144, DW_AT_name("DMA_TRIGGER_FSIRXF")
	.dwattr $C$DW$144, DW_AT_const_value(0x92)
	.dwattr $C$DW$144, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$144, DW_AT_decl_column(0x05)

$C$DW$145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$145, DW_AT_name("DMA_TRIGGER_FSIRXG")
	.dwattr $C$DW$145, DW_AT_const_value(0x93)
	.dwattr $C$DW$145, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$145, DW_AT_decl_column(0x05)

$C$DW$146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$146, DW_AT_name("DMA_TRIGGER_FSIRXH")
	.dwattr $C$DW$146, DW_AT_const_value(0x94)
	.dwattr $C$DW$146, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$146, DW_AT_decl_column(0x05)

$C$DW$147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$147, DW_AT_name("DMA_TRIGGER_FSITXB")
	.dwattr $C$DW$147, DW_AT_const_value(0x9b)
	.dwattr $C$DW$147, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0xda)
	.dwattr $C$DW$147, DW_AT_decl_column(0x05)

$C$DW$148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$148, DW_AT_name("DMA_TRIGGER_FSIRXB")
	.dwattr $C$DW$148, DW_AT_const_value(0x9d)
	.dwattr $C$DW$148, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$148, DW_AT_decl_column(0x05)

$C$DW$149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$149, DW_AT_name("DMA_TRIGGER_CANAIF1")
	.dwattr $C$DW$149, DW_AT_const_value(0xa7)
	.dwattr $C$DW$149, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$149, DW_AT_decl_column(0x05)

$C$DW$150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$150, DW_AT_name("DMA_TRIGGER_CANAIF2")
	.dwattr $C$DW$150, DW_AT_const_value(0xa8)
	.dwattr $C$DW$150, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0xde)
	.dwattr $C$DW$150, DW_AT_decl_column(0x05)

$C$DW$151	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$151, DW_AT_name("DMA_TRIGGER_CANAIF3")
	.dwattr $C$DW$151, DW_AT_const_value(0xa9)
	.dwattr $C$DW$151, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$151, DW_AT_decl_column(0x05)

$C$DW$152	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$152, DW_AT_name("DMA_TRIGGER_CANBIF1")
	.dwattr $C$DW$152, DW_AT_const_value(0xaa)
	.dwattr $C$DW$152, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$152, DW_AT_decl_column(0x05)

$C$DW$153	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$153, DW_AT_name("DMA_TRIGGER_CANBIF2")
	.dwattr $C$DW$153, DW_AT_const_value(0xab)
	.dwattr $C$DW$153, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$153, DW_AT_decl_column(0x05)

$C$DW$154	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$154, DW_AT_name("DMA_TRIGGER_CANBIF3")
	.dwattr $C$DW$154, DW_AT_const_value(0xac)
	.dwattr $C$DW$154, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$154, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("DMA_Trigger")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\dma.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$155	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$2)

$C$DW$T$21	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$155)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$22


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


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("int16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$29


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$27


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

