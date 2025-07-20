;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Tue Oct  8 21:28:17 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2R3\CPU2")
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{445F207A-8572-45A4-A60F-C451B4A2191F} 
	.sect	".text:MemCfg_lockConfig"
	.clink
	.global	||MemCfg_lockConfig||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("MemCfg_lockConfig")
	.dwattr $C$DW$1, DW_AT_low_pc(||MemCfg_lockConfig||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("MemCfg_lockConfig")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x39)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 58,column 1,is_stmt,address ||MemCfg_lockConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_lockConfig||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("memSections")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_lockConfig             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_lockConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("memSections")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |58| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 71,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |71| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 73,column 5,is_stmt,isa 0
        B         ||$C$L6||,UNC         ; [CPU_ALU] |73| 
        ; branch occurs ; [] |73| 
||$C$L1||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 76,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |76| 
        MOVL      XAR4,#390144          ; [CPU_ARAU] |76| 
        ANDB      AH,#255               ; [CPU_ALU] |76| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |76| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |76| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 78,column 13,is_stmt,isa 0
        B         ||$C$L8||,UNC         ; [CPU_ALU] |78| 
        ; branch occurs ; [] |78| 
||$C$L2||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 81,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |81| 
        MOVL      XAR4,#390176          ; [CPU_ARAU] |81| 
        ANDB      AH,#255               ; [CPU_ALU] |81| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |81| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |81| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 83,column 13,is_stmt,isa 0
        B         ||$C$L8||,UNC         ; [CPU_ALU] |83| 
        ; branch occurs ; [] |83| 
||$C$L3||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 86,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |86| 
        MOVL      XAR4,#390208          ; [CPU_ARAU] |86| 
        ANDB      AH,#255               ; [CPU_ALU] |86| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |86| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |86| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 88,column 13,is_stmt,isa 0
        B         ||$C$L8||,UNC         ; [CPU_ALU] |88| 
        ; branch occurs ; [] |88| 
||$C$L4||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 91,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |91| 
        MOVL      XAR4,#390240          ; [CPU_ARAU] |91| 
        ANDB      AH,#255               ; [CPU_ALU] |91| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |91| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |91| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 93,column 13,is_stmt,isa 0
        B         ||$C$L8||,UNC         ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
||$C$L5||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 97,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |97| 
        MOVL      XAR4,#390144          ; [CPU_ARAU] |97| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |97| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |97| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 99,column 13,is_stmt,isa 0
        MOVB      ACC,#255              ; [CPU_ALU] |99| 
        MOVL      XAR4,#390176          ; [CPU_ARAU] |99| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |99| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |99| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 101,column 13,is_stmt,isa 0
        MOVL      XAR4,#390208          ; [CPU_ARAU] |101| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |101| 
        OR        AL,#65535             ; [CPU_ALU] |101| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |101| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 103,column 13,is_stmt,isa 0
        MOVL      XAR4,#390240          ; [CPU_ARAU] |103| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |103| 
        OR        AL,#999               ; [CPU_ALU] |103| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |103| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 105,column 13,is_stmt,isa 0
        B         ||$C$L8||,UNC         ; [CPU_ALU] |105| 
        ; branch occurs ; [] |105| 
||$C$L6||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 73,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |73| 
        AND       AH,#65280             ; [CPU_ALU] |73| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |73| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |73| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |73| 
        B         ||$C$L7||,LT          ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |73| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |73| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |73| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |73| 
        ; branch occurs ; [] |73| 
||$C$L7||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |73| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |73| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |73| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |73| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
||$C$L8||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 113,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |113| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 114,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x72)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:MemCfg_unlockConfig"
	.clink
	.global	||MemCfg_unlockConfig||

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("MemCfg_unlockConfig")
	.dwattr $C$DW$5, DW_AT_low_pc(||MemCfg_unlockConfig||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("MemCfg_unlockConfig")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 123,column 1,is_stmt,address ||MemCfg_unlockConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_unlockConfig||
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("memSections")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_unlockConfig           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_unlockConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("memSections")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |123| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 137,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |137| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 139,column 5,is_stmt,isa 0
        B         ||$C$L14||,UNC        ; [CPU_ALU] |139| 
        ; branch occurs ; [] |139| 
||$C$L9||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 142,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |142| 
        MOVL      XAR4,#390144          ; [CPU_ARAU] |142| 
        ANDB      AH,#255               ; [CPU_ALU] |142| 
        NOT       ACC                   ; [CPU_ALU] |142| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |142| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |142| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 144,column 13,is_stmt,isa 0
        B         ||$C$L16||,UNC        ; [CPU_ALU] |144| 
        ; branch occurs ; [] |144| 
||$C$L10||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 147,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |147| 
        MOVL      XAR4,#390176          ; [CPU_ARAU] |147| 
        ANDB      AH,#255               ; [CPU_ALU] |147| 
        NOT       ACC                   ; [CPU_ALU] |147| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |147| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |147| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 149,column 13,is_stmt,isa 0
        B         ||$C$L16||,UNC        ; [CPU_ALU] |149| 
        ; branch occurs ; [] |149| 
||$C$L11||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 152,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |152| 
        MOVL      XAR4,#390208          ; [CPU_ARAU] |152| 
        ANDB      AH,#255               ; [CPU_ALU] |152| 
        NOT       ACC                   ; [CPU_ALU] |152| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |152| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |152| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 154,column 13,is_stmt,isa 0
        B         ||$C$L16||,UNC        ; [CPU_ALU] |154| 
        ; branch occurs ; [] |154| 
||$C$L12||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 157,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |157| 
        MOVL      XAR4,#390240          ; [CPU_ARAU] |157| 
        ANDB      AH,#255               ; [CPU_ALU] |157| 
        NOT       ACC                   ; [CPU_ALU] |157| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |157| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |157| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 159,column 13,is_stmt,isa 0
        B         ||$C$L16||,UNC        ; [CPU_ALU] |159| 
        ; branch occurs ; [] |159| 
||$C$L13||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 163,column 13,is_stmt,isa 0
        MOVL      XAR4,#390144          ; [CPU_ARAU] |163| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |163| 
        AND       AL,#65520             ; [CPU_ALU] |163| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |163| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 165,column 13,is_stmt,isa 0
        MOVL      XAR4,#390176          ; [CPU_ARAU] |165| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |165| 
        AND       AL,#65280             ; [CPU_ALU] |165| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |165| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 167,column 13,is_stmt,isa 0
        MOVL      XAR4,#390208          ; [CPU_ARAU] |167| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |167| 
        ANDB      AL,#0                 ; [CPU_ALU] |167| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |167| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 169,column 13,is_stmt,isa 0
        MOVL      XAR4,#390240          ; [CPU_ARAU] |169| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |169| 
        AND       AL,#64536             ; [CPU_ALU] |169| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |169| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 171,column 13,is_stmt,isa 0
        B         ||$C$L16||,UNC        ; [CPU_ALU] |171| 
        ; branch occurs ; [] |171| 
||$C$L14||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 139,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |139| 
        AND       AH,#65280             ; [CPU_ALU] |139| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |139| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |139| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |139| 
        B         ||$C$L15||,LT         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |139| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |139| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |139| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
        B         ||$C$L16||,UNC        ; [CPU_ALU] |139| 
        ; branch occurs ; [] |139| 
||$C$L15||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |139| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |139| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |139| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |139| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
||$C$L16||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 179,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 180,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0xb4)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:MemCfg_commitConfig"
	.clink
	.global	||MemCfg_commitConfig||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("MemCfg_commitConfig")
	.dwattr $C$DW$9, DW_AT_low_pc(||MemCfg_commitConfig||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("MemCfg_commitConfig")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 189,column 1,is_stmt,address ||MemCfg_commitConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_commitConfig||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("memSections")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_commitConfig           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_commitConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("memSections")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |189| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 203,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |203| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 205,column 5,is_stmt,isa 0
        B         ||$C$L22||,UNC        ; [CPU_ALU] |205| 
        ; branch occurs ; [] |205| 
||$C$L17||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 208,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |208| 
        MOVL      XAR4,#390146          ; [CPU_ARAU] |208| 
        ANDB      AH,#255               ; [CPU_ALU] |208| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |208| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |208| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 210,column 13,is_stmt,isa 0
        B         ||$C$L24||,UNC        ; [CPU_ALU] |210| 
        ; branch occurs ; [] |210| 
||$C$L18||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 213,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |213| 
        MOVL      XAR4,#390178          ; [CPU_ARAU] |213| 
        ANDB      AH,#255               ; [CPU_ALU] |213| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |213| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |213| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 215,column 13,is_stmt,isa 0
        B         ||$C$L24||,UNC        ; [CPU_ALU] |215| 
        ; branch occurs ; [] |215| 
||$C$L19||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 218,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |218| 
        MOVL      XAR4,#390210          ; [CPU_ARAU] |218| 
        ANDB      AH,#255               ; [CPU_ALU] |218| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |218| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |218| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 220,column 13,is_stmt,isa 0
        B         ||$C$L24||,UNC        ; [CPU_ALU] |220| 
        ; branch occurs ; [] |220| 
||$C$L20||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 223,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |223| 
        MOVL      XAR4,#390242          ; [CPU_ARAU] |223| 
        ANDB      AH,#255               ; [CPU_ALU] |223| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |223| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |223| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 225,column 13,is_stmt,isa 0
        B         ||$C$L24||,UNC        ; [CPU_ALU] |225| 
        ; branch occurs ; [] |225| 
||$C$L21||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 229,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |229| 
        MOVL      XAR4,#390146          ; [CPU_ARAU] |229| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |229| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |229| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 231,column 13,is_stmt,isa 0
        MOVB      ACC,#255              ; [CPU_ALU] |231| 
        MOVL      XAR4,#390178          ; [CPU_ARAU] |231| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |231| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |231| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 233,column 13,is_stmt,isa 0
        MOVL      XAR4,#390210          ; [CPU_ARAU] |233| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |233| 
        OR        AL,#65535             ; [CPU_ALU] |233| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |233| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 235,column 13,is_stmt,isa 0
        MOVL      XAR4,#390242          ; [CPU_ARAU] |235| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |235| 
        OR        AL,#999               ; [CPU_ALU] |235| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |235| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 237,column 13,is_stmt,isa 0
        B         ||$C$L24||,UNC        ; [CPU_ALU] |237| 
        ; branch occurs ; [] |237| 
||$C$L22||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 205,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |205| 
        AND       AH,#65280             ; [CPU_ALU] |205| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |205| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |205| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |205| 
        B         ||$C$L23||,LT         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |205| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |205| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |205| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
        B         ||$C$L24||,UNC        ; [CPU_ALU] |205| 
        ; branch occurs ; [] |205| 
||$C$L23||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |205| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |205| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |205| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |205| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
||$C$L24||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 245,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |245| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 246,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:MemCfg_setProtection"
	.clink
	.global	||MemCfg_setProtection||

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("MemCfg_setProtection")
	.dwattr $C$DW$13, DW_AT_low_pc(||MemCfg_setProtection||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("MemCfg_setProtection")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 255,column 1,is_stmt,address ||MemCfg_setProtection||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setProtection||
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("memSection")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("protectMode")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -16]


;***************************************************************
;* FNAME: MemCfg_setProtection          FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 12 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setProtection||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("memSection")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -2]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("shiftVal")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -4]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("maskVal")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -6]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("regVal")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -8]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("sectionNum")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -10]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("regOffset")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -12]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |255| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 256,column 23,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |256| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |256| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 275,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |275| 
        ANDB      AH,#255               ; [CPU_ALU] |275| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |275| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 277,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |277| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |277| 
        B         ||$C$L26||,EQ         ; [CPU_ALU] |277| 
        ; branchcc occurs ; [] |277| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L25||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 279,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |279| 
        SFR       ACC,1                 ; [CPU_ALU] |279| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |279| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 280,column 9,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |280| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |280| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |280| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 277,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |277| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |277| 
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |277| 
        ; branchcc occurs ; [] |277| 
||$C$L26||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 287,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |287| 
        CLRC      SXM                   ; [CPU_ALU] 
        AND       AL,#65504             ; [CPU_ALU] |287| 
        ANDB      AH,#0                 ; [CPU_ALU] |287| 
        SFR       ACC,4                 ; [CPU_ALU] |287| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |287| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 288,column 5,is_stmt,isa 0
        MOVB      ACC,#31               ; [CPU_ALU] |288| 
        AND       *-SP[4],AL            ; [CPU_ALU] |288| 
        AND       *-SP[3],AH            ; [CPU_ALU] |288| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 289,column 5,is_stmt,isa 0
        MOV       T,*-SP[4]             ; [CPU_ALU] |289| 
        MOVB      ACC,#7                ; [CPU_ALU] |289| 
        LSLL      ACC,T                 ; [CPU_ALU] |289| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |289| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 290,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |290| 
        LSLL      ACC,T                 ; [CPU_ALU] |290| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |290| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 295,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 297,column 5,is_stmt,isa 0
        B         ||$C$L31||,UNC        ; [CPU_ALU] |297| 
        ; branch occurs ; [] |297| 
||$C$L27||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 300,column 13,is_stmt,isa 0
        MOVL      XAR4,#390152          ; [CPU_ARAU] |300| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |300| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |300| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |300| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |300| 
        NOT       ACC                   ; [CPU_ALU] |300| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |300| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |300| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 301,column 13,is_stmt,isa 0
        MOVL      XAR4,#390152          ; [CPU_ARAU] |301| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |301| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |301| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |301| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |301| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |301| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |301| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 302,column 13,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |302| 
        ; branch occurs ; [] |302| 
||$C$L28||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 305,column 13,is_stmt,isa 0
        MOVL      XAR4,#390184          ; [CPU_ARAU] |305| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |305| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |305| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |305| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |305| 
        NOT       ACC                   ; [CPU_ALU] |305| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |305| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |305| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 306,column 13,is_stmt,isa 0
        MOVL      XAR4,#390184          ; [CPU_ARAU] |306| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |306| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |306| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |306| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |306| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |306| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |306| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 307,column 13,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |307| 
        ; branch occurs ; [] |307| 
||$C$L29||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 310,column 13,is_stmt,isa 0
        MOVL      XAR4,#390216          ; [CPU_ARAU] |310| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |310| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |310| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |310| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |310| 
        NOT       ACC                   ; [CPU_ALU] |310| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |310| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |310| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 311,column 13,is_stmt,isa 0
        MOVL      XAR4,#390216          ; [CPU_ARAU] |311| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |311| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |311| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |311| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |311| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |311| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |311| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 312,column 13,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |312| 
        ; branch occurs ; [] |312| 
||$C$L30||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 315,column 13,is_stmt,isa 0
        MOVL      XAR4,#390248          ; [CPU_ARAU] |315| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |315| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |315| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |315| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |315| 
        NOT       ACC                   ; [CPU_ALU] |315| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |315| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |315| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 316,column 13,is_stmt,isa 0
        MOVL      XAR4,#390248          ; [CPU_ARAU] |316| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |316| 
        ADDL      ACC,*-SP[12]          ; [CPU_ALU] |316| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |316| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |316| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |316| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |316| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 317,column 13,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |317| 
        ; branch occurs ; [] |317| 
||$C$L31||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 297,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |297| 
        ANDB      AL,#0                 ; [CPU_ALU] |297| 
        AND       AH,#65280             ; [CPU_ALU] |297| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |297| 
        TEST      ACC                   ; [CPU_ALU] |297| 
        B         ||$C$L27||,EQ         ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |297| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |297| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |297| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |297| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |297| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |297| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
||$C$L32||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 324,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |324| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 325,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x145)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:MemCfg_setLSRAMMasterSel"
	.clink
	.global	||MemCfg_setLSRAMMasterSel||

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("MemCfg_setLSRAMMasterSel")
	.dwattr $C$DW$23, DW_AT_low_pc(||MemCfg_setLSRAMMasterSel||)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_linkage_name("MemCfg_setLSRAMMasterSel")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$23, DW_AT_decl_column(0x01)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 334,column 1,is_stmt,address ||MemCfg_setLSRAMMasterSel||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setLSRAMMasterSel||
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("ramSection")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("masterSel")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: MemCfg_setLSRAMMasterSel      FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  7 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setLSRAMMasterSel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("ramSection")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -2]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("shiftVal")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -4]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("temp")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -6]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("masterSel")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -7]

        MOV       *-SP[7],AR4           ; [CPU_ALU] |334| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |334| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 348,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |348| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |348| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 349,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |349| 
        ANDB      AH,#255               ; [CPU_ALU] |349| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |349| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 351,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |351| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |351| 
        B         ||$C$L34||,EQ         ; [CPU_ALU] |351| 
        ; branchcc occurs ; [] |351| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L33||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 353,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |353| 
        SFR       ACC,1                 ; [CPU_ALU] |353| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |353| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 354,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |354| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |354| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |354| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 351,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |351| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |351| 
        B         ||$C$L33||,NEQ        ; [CPU_ALU] |351| 
        ; branchcc occurs ; [] |351| 
||$C$L34||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 360,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |360| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 362,column 5,is_stmt,isa 0
        MOV       PL,*-SP[7]            ; [CPU_ALU] |362| 
        MOV       PH,#0                 ; [CPU_ALU] |362| 
        MOVP      T,*-SP[4]             ; [CPU_ALU] 
        LSLL      ACC,T                 ; [CPU_ALU] |362| 
        MOVL      P,ACC                 ; [CPU_ALU] |362| 
        MOVB      AL,#3                 ; [CPU_ALU] |362| 
        LSL       AL,T                  ; [CPU_ALU] |362| 
        NOT       AL                    ; [CPU_ALU] |362| 
        MOVZ      AR6,AL                ; [CPU_ALU] |362| 
        MOVL      XAR4,#390180          ; [CPU_ARAU] |362| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |362| 
        AND       ACC,AR6               ; [CPU_ALU] |362| 
        OR        AL,PL                 ; [CPU_ALU] |362| 
        OR        AH,PH                 ; [CPU_ALU] |362| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |362| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 367,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |367| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 368,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:MemCfg_setGSRAMMasterSel"
	.clink
	.global	||MemCfg_setGSRAMMasterSel||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("MemCfg_setGSRAMMasterSel")
	.dwattr $C$DW$31, DW_AT_low_pc(||MemCfg_setGSRAMMasterSel||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("MemCfg_setGSRAMMasterSel")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x178)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 377,column 1,is_stmt,address ||MemCfg_setGSRAMMasterSel||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setGSRAMMasterSel||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("ramSections")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("masterSel")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: MemCfg_setGSRAMMasterSel      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setGSRAMMasterSel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("ramSections")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -2]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("sectionNum")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -4]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("masterSel")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AR4           ; [CPU_ALU] |377| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |377| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 388,column 5,is_stmt,isa 0
        ANDB      AH,#255               ; [CPU_ALU] |388| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |388| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 393,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |393| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 394,column 5,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |394| 
        B         ||$C$L35||,NEQ        ; [CPU_ALU] |394| 
        ; branchcc occurs ; [] |394| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 396,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |396| 
        MOVL      XAR4,#390212          ; [CPU_ARAU] |396| 
        NOT       ACC                   ; [CPU_ALU] |396| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |396| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |396| 
        B         ||$C$L36||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L35||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 400,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |400| 
        MOVL      XAR4,#390212          ; [CPU_ARAU] |400| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |400| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |400| 
||$C$L36||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 402,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |402| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 403,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x193)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:MemCfg_lockTestConfig"
	.clink
	.global	||MemCfg_lockTestConfig||

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("MemCfg_lockTestConfig")
	.dwattr $C$DW$38, DW_AT_low_pc(||MemCfg_lockTestConfig||)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_linkage_name("MemCfg_lockTestConfig")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$38, DW_AT_decl_column(0x01)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 412,column 1,is_stmt,address ||MemCfg_lockTestConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_lockTestConfig||
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("memSections")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_lockTestConfig         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_lockTestConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("memSections")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |412| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 428,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |428| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 430,column 5,is_stmt,isa 0
        B         ||$C$L44||,UNC        ; [CPU_ALU] |430| 
        ; branch occurs ; [] |430| 
||$C$L37||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 433,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |433| 
        MOVL      XAR4,#390166          ; [CPU_ARAU] |433| 
        ANDB      AH,#255               ; [CPU_ALU] |433| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |433| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |433| 
        OR        AH,#42405             ; [CPU_ALU] |433| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |433| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 435,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |435| 
        ; branch occurs ; [] |435| 
||$C$L38||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 438,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |438| 
        MOVL      XAR4,#390198          ; [CPU_ARAU] |438| 
        ANDB      AH,#255               ; [CPU_ALU] |438| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |438| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |438| 
        OR        AH,#42405             ; [CPU_ALU] |438| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |438| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 440,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |440| 
        ; branch occurs ; [] |440| 
||$C$L39||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 443,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |443| 
        MOVL      XAR4,#390230          ; [CPU_ARAU] |443| 
        ANDB      AH,#255               ; [CPU_ALU] |443| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |443| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |443| 
        OR        AH,#42405             ; [CPU_ALU] |443| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |443| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 445,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |445| 
        ; branch occurs ; [] |445| 
||$C$L40||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 448,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |448| 
        MOVL      XAR4,#390262          ; [CPU_ARAU] |448| 
        ANDB      AH,#255               ; [CPU_ALU] |448| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |448| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |448| 
        OR        AH,#42405             ; [CPU_ALU] |448| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |448| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 450,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |450| 
        ; branch occurs ; [] |450| 
||$C$L41||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 453,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |453| 
        MOVL      XAR4,#390304          ; [CPU_ARAU] |453| 
        ANDB      AH,#255               ; [CPU_ALU] |453| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |453| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |453| 
        OR        AH,#42405             ; [CPU_ALU] |453| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |453| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 455,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |455| 
        ; branch occurs ; [] |455| 
||$C$L42||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 458,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |458| 
        MOVL      XAR4,#390314          ; [CPU_ARAU] |458| 
        ANDB      AH,#255               ; [CPU_ALU] |458| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |458| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |458| 
        OR        AH,#42405             ; [CPU_ALU] |458| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |458| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 460,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |460| 
        ; branch occurs ; [] |460| 
||$C$L43||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 464,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |464| 
        MOVL      XAR4,#390166          ; [CPU_ARAU] |464| 
        ANDB      AH,#255               ; [CPU_ALU] |464| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |464| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |464| 
        OR        AH,#42405             ; [CPU_ALU] |464| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |464| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 466,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |466| 
        MOVL      XAR4,#390198          ; [CPU_ARAU] |466| 
        ANDB      AH,#255               ; [CPU_ALU] |466| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |466| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |466| 
        OR        AH,#42405             ; [CPU_ALU] |466| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |466| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 468,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |468| 
        MOVL      XAR4,#390230          ; [CPU_ARAU] |468| 
        ANDB      AH,#255               ; [CPU_ALU] |468| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |468| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |468| 
        OR        AH,#42405             ; [CPU_ALU] |468| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |468| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 470,column 13,is_stmt,isa 0
        MOVL      XAR4,#390262          ; [CPU_ARAU] |470| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |470| 
        ANDB      AH,#255               ; [CPU_ALU] |470| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |470| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |470| 
        OR        AH,#42405             ; [CPU_ALU] |470| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |470| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 472,column 13,is_stmt,isa 0
        MOVL      XAR4,#390304          ; [CPU_ARAU] |472| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |472| 
        ANDB      AH,#255               ; [CPU_ALU] |472| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |472| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |472| 
        OR        AH,#42405             ; [CPU_ALU] |472| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |472| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 474,column 13,is_stmt,isa 0
        MOVL      XAR4,#390314          ; [CPU_ARAU] |474| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |474| 
        ANDB      AH,#255               ; [CPU_ALU] |474| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |474| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |474| 
        OR        AH,#42405             ; [CPU_ALU] |474| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |474| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 476,column 13,is_stmt,isa 0
        B         ||$C$L46||,UNC        ; [CPU_ALU] |476| 
        ; branch occurs ; [] |476| 
||$C$L44||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 430,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |430| 
        AND       AH,#65280             ; [CPU_ALU] |430| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |430| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L45||,LT         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L39||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L43||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] |430| 
        ; branch occurs ; [] |430| 
||$C$L45||:    
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L40||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        MOV       ACC,#2048 << 15       ; [CPU_ALU] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L41||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
        MOV       ACC,#2560 << 15       ; [CPU_ALU] |430| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |430| 
        B         ||$C$L42||,EQ         ; [CPU_ALU] |430| 
        ; branchcc occurs ; [] |430| 
||$C$L46||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 484,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |484| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 485,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x1e5)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text:MemCfg_unlockTestConfig"
	.clink
	.global	||MemCfg_unlockTestConfig||

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("MemCfg_unlockTestConfig")
	.dwattr $C$DW$42, DW_AT_low_pc(||MemCfg_unlockTestConfig||)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_linkage_name("MemCfg_unlockTestConfig")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 493,column 1,is_stmt,address ||MemCfg_unlockTestConfig||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_unlockTestConfig||
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("memSections")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_unlockTestConfig       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_unlockTestConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("memSections")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |493| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 510,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |510| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 512,column 5,is_stmt,isa 0
        B         ||$C$L54||,UNC        ; [CPU_ALU] |512| 
        ; branch occurs ; [] |512| 
||$C$L47||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 515,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |515| 
        MOVL      XAR4,#390166          ; [CPU_ARAU] |515| 
        ANDB      AH,#255               ; [CPU_ALU] |515| 
        NOT       ACC                   ; [CPU_ALU] |515| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |515| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |515| 
        OR        AH,#42405             ; [CPU_ALU] |515| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |515| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 519,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |519| 
        ; branch occurs ; [] |519| 
||$C$L48||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 522,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |522| 
        MOVL      XAR4,#390198          ; [CPU_ARAU] |522| 
        ANDB      AH,#255               ; [CPU_ALU] |522| 
        NOT       ACC                   ; [CPU_ALU] |522| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |522| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |522| 
        OR        AH,#42405             ; [CPU_ALU] |522| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |522| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 526,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |526| 
        ; branch occurs ; [] |526| 
||$C$L49||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 529,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |529| 
        MOVL      XAR4,#390230          ; [CPU_ARAU] |529| 
        ANDB      AH,#255               ; [CPU_ALU] |529| 
        NOT       ACC                   ; [CPU_ALU] |529| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |529| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |529| 
        OR        AH,#42405             ; [CPU_ALU] |529| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |529| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 533,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |533| 
        ; branch occurs ; [] |533| 
||$C$L50||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 536,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |536| 
        MOVL      XAR4,#390262          ; [CPU_ARAU] |536| 
        ANDB      AH,#255               ; [CPU_ALU] |536| 
        NOT       ACC                   ; [CPU_ALU] |536| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |536| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |536| 
        OR        AH,#42405             ; [CPU_ALU] |536| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |536| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 540,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |540| 
        ; branch occurs ; [] |540| 
||$C$L51||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 543,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |543| 
        MOVL      XAR4,#390304          ; [CPU_ARAU] |543| 
        ANDB      AH,#255               ; [CPU_ALU] |543| 
        NOT       ACC                   ; [CPU_ALU] |543| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |543| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |543| 
        OR        AH,#42405             ; [CPU_ALU] |543| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |543| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 546,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |546| 
        ; branch occurs ; [] |546| 
||$C$L52||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 549,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |549| 
        MOVL      XAR4,#390314          ; [CPU_ARAU] |549| 
        ANDB      AH,#255               ; [CPU_ALU] |549| 
        NOT       ACC                   ; [CPU_ALU] |549| 
        AND       AL,*+XAR4[0]          ; [CPU_ALU] |549| 
        AND       AH,*+XAR4[1]          ; [CPU_ALU] |549| 
        OR        AH,#42405             ; [CPU_ALU] |549| 
        MOVL      XAR4,#390304          ; [CPU_ARAU] |549| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |549| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 552,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |552| 
        ; branch occurs ; [] |552| 
||$C$L53||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 556,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |556| 
        MOVL      XAR4,#390166          ; [CPU_ARAU] |556| 
        ANDB      AH,#255               ; [CPU_ALU] |556| 
        NOT       ACC                   ; [CPU_ALU] |556| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |556| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |556| 
        OR        AH,#42405             ; [CPU_ALU] |556| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |556| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 559,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |559| 
        MOVL      XAR4,#390198          ; [CPU_ARAU] |559| 
        ANDB      AH,#255               ; [CPU_ALU] |559| 
        NOT       ACC                   ; [CPU_ALU] |559| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |559| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |559| 
        OR        AH,#42405             ; [CPU_ALU] |559| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |559| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 562,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |562| 
        MOVL      XAR4,#390230          ; [CPU_ARAU] |562| 
        ANDB      AH,#255               ; [CPU_ALU] |562| 
        NOT       ACC                   ; [CPU_ALU] |562| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |562| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |562| 
        OR        AH,#42405             ; [CPU_ALU] |562| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |562| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 565,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |565| 
        MOVL      XAR4,#390262          ; [CPU_ARAU] |565| 
        ANDB      AH,#255               ; [CPU_ALU] |565| 
        NOT       ACC                   ; [CPU_ALU] |565| 
        OR        AL,*+XAR4[0]          ; [CPU_ALU] |565| 
        OR        AH,*+XAR4[1]          ; [CPU_ALU] |565| 
        OR        AH,#42405             ; [CPU_ALU] |565| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |565| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 568,column 13,is_stmt,isa 0
        B         ||$C$L56||,UNC        ; [CPU_ALU] |568| 
        ; branch occurs ; [] |568| 
||$C$L54||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 512,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |512| 
        AND       AH,#65280             ; [CPU_ALU] |512| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |512| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L55||,LT         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L49||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L53||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L47||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L48||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        B         ||$C$L56||,UNC        ; [CPU_ALU] |512| 
        ; branch occurs ; [] |512| 
||$C$L55||:    
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        MOV       ACC,#2048 << 15       ; [CPU_ALU] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L51||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
        MOV       ACC,#2560 << 15       ; [CPU_ALU] |512| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |512| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] |512| 
        ; branchcc occurs ; [] |512| 
||$C$L56||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 576,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |576| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 578,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x242)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text:MemCfg_setTestMode"
	.clink
	.global	||MemCfg_setTestMode||

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("MemCfg_setTestMode")
	.dwattr $C$DW$46, DW_AT_low_pc(||MemCfg_setTestMode||)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_linkage_name("MemCfg_setTestMode")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x249)
	.dwattr $C$DW$46, DW_AT_decl_column(0x01)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 586,column 1,is_stmt,address ||MemCfg_setTestMode||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_setTestMode||
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("memSection")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("testMode")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: MemCfg_setTestMode            FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 11 Auto,  0 SOE     *
;***************************************************************

||MemCfg_setTestMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("memSection")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -2]

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("shiftVal")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -4]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("maskVal")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -6]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("regVal")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -8]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("sectionNum")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -10]

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("testMode")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -11]

        MOV       *-SP[11],AR4          ; [CPU_ALU] |586| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |586| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 587,column 23,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |587| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |587| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 606,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |606| 
        ANDB      AH,#255               ; [CPU_ALU] |606| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |606| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 608,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |608| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |608| 
        B         ||$C$L58||,EQ         ; [CPU_ALU] |608| 
        ; branchcc occurs ; [] |608| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L57||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 610,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |610| 
        SFR       ACC,1                 ; [CPU_ALU] |610| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |610| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 611,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |611| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |611| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |611| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 608,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |608| 
        CMPL      ACC,*-SP[10]          ; [CPU_ALU] |608| 
        B         ||$C$L57||,NEQ        ; [CPU_ALU] |608| 
        ; branchcc occurs ; [] |608| 
||$C$L58||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 614,column 5,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |614| 
        MOV       T,*-SP[4]             ; [CPU_ALU] |614| 
        LSLL      ACC,T                 ; [CPU_ALU] |614| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |614| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 615,column 5,is_stmt,isa 0
        MOVU      ACC,*-SP[11]          ; [CPU_ALU] |615| 
        LSLL      ACC,T                 ; [CPU_ALU] |615| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |615| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 620,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |620| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 622,column 5,is_stmt,isa 0
        B         ||$C$L64||,UNC        ; [CPU_ALU] |622| 
        ; branch occurs ; [] |622| 
||$C$L59||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 625,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |625| 
        MOVL      XAR4,#390160          ; [CPU_ARAU] |625| 
        NOT       ACC                   ; [CPU_ALU] |625| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |625| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |625| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 626,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |626| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |626| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |626| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 627,column 13,is_stmt,isa 0
        B         ||$C$L66||,UNC        ; [CPU_ALU] |627| 
        ; branch occurs ; [] |627| 
||$C$L60||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 630,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |630| 
        MOVL      XAR4,#390192          ; [CPU_ARAU] |630| 
        NOT       ACC                   ; [CPU_ALU] |630| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |630| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |630| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 631,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |631| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |631| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |631| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 632,column 13,is_stmt,isa 0
        B         ||$C$L66||,UNC        ; [CPU_ALU] |632| 
        ; branch occurs ; [] |632| 
||$C$L61||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 635,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |635| 
        MOVL      XAR4,#390224          ; [CPU_ARAU] |635| 
        NOT       ACC                   ; [CPU_ALU] |635| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |635| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |635| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 636,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |636| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |636| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |636| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 637,column 13,is_stmt,isa 0
        B         ||$C$L66||,UNC        ; [CPU_ALU] |637| 
        ; branch occurs ; [] |637| 
||$C$L62||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 640,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |640| 
        MOVL      XAR4,#390256          ; [CPU_ARAU] |640| 
        NOT       ACC                   ; [CPU_ALU] |640| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |640| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |640| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 641,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |641| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |641| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |641| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 642,column 13,is_stmt,isa 0
        B         ||$C$L66||,UNC        ; [CPU_ALU] |642| 
        ; branch occurs ; [] |642| 
||$C$L63||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 645,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |645| 
        MOVL      XAR4,#390306          ; [CPU_ARAU] |645| 
        NOT       ACC                   ; [CPU_ALU] |645| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |645| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |645| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 646,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |646| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |646| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |646| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 647,column 13,is_stmt,isa 0
        B         ||$C$L66||,UNC        ; [CPU_ALU] |647| 
        ; branch occurs ; [] |647| 
||$C$L64||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 622,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |622| 
        ANDB      AL,#0                 ; [CPU_ALU] |622| 
        AND       AH,#65280             ; [CPU_ALU] |622| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |622| 
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |622| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |622| 
        B         ||$C$L65||,LT         ; [CPU_ALU] |622| 
        ; branchcc occurs ; [] |622| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |622| 
        B         ||$C$L61||,EQ         ; [CPU_ALU] |622| 
        ; branchcc occurs ; [] |622| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |622| 
        ; branchcc occurs ; [] |622| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |622| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |622| 
        B         ||$C$L60||,EQ         ; [CPU_ALU] |622| 
        ; branchcc occurs ; [] |622| 
        B         ||$C$L66||,UNC        ; [CPU_ALU] |622| 
        ; branch occurs ; [] |622| 
||$C$L65||:    
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |622| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |622| 
        B         ||$C$L62||,EQ         ; [CPU_ALU] |622| 
        ; branchcc occurs ; [] |622| 
        MOV       ACC,#2048 << 15       ; [CPU_ALU] |622| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |622| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |622| 
        ; branchcc occurs ; [] |622| 
||$C$L66||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 654,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |654| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 655,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x28f)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:MemCfg_initSections"
	.clink
	.global	||MemCfg_initSections||

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("MemCfg_initSections")
	.dwattr $C$DW$56, DW_AT_low_pc(||MemCfg_initSections||)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_linkage_name("MemCfg_initSections")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x297)
	.dwattr $C$DW$56, DW_AT_decl_column(0x01)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 664,column 1,is_stmt,address ||MemCfg_initSections||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_initSections||
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("ramSections")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_initSections           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_initSections||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("ramSections")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |664| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 678,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |678| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 680,column 5,is_stmt,isa 0
        B         ||$C$L72||,UNC        ; [CPU_ALU] |680| 
        ; branch occurs ; [] |680| 
||$C$L67||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 683,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |683| 
        MOVL      XAR4,#390162          ; [CPU_ARAU] |683| 
        ANDB      AH,#255               ; [CPU_ALU] |683| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |683| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |683| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 685,column 13,is_stmt,isa 0
        B         ||$C$L74||,UNC        ; [CPU_ALU] |685| 
        ; branch occurs ; [] |685| 
||$C$L68||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 688,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |688| 
        MOVL      XAR4,#390194          ; [CPU_ARAU] |688| 
        ANDB      AH,#255               ; [CPU_ALU] |688| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |688| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |688| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 690,column 13,is_stmt,isa 0
        B         ||$C$L74||,UNC        ; [CPU_ALU] |690| 
        ; branch occurs ; [] |690| 
||$C$L69||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 693,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |693| 
        MOVL      XAR4,#390226          ; [CPU_ARAU] |693| 
        ANDB      AH,#255               ; [CPU_ALU] |693| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |693| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |693| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 695,column 13,is_stmt,isa 0
        B         ||$C$L74||,UNC        ; [CPU_ALU] |695| 
        ; branch occurs ; [] |695| 
||$C$L70||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 698,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |698| 
        MOVL      XAR4,#390258          ; [CPU_ARAU] |698| 
        ANDB      AH,#255               ; [CPU_ALU] |698| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |698| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |698| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 700,column 13,is_stmt,isa 0
        B         ||$C$L74||,UNC        ; [CPU_ALU] |700| 
        ; branch occurs ; [] |700| 
||$C$L71||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 704,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |704| 
        MOVL      XAR4,#390162          ; [CPU_ARAU] |704| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |704| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |704| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 706,column 13,is_stmt,isa 0
        MOVB      ACC,#255              ; [CPU_ALU] |706| 
        MOVL      XAR4,#390194          ; [CPU_ARAU] |706| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |706| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |706| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 708,column 13,is_stmt,isa 0
        MOVL      XAR4,#390226          ; [CPU_ARAU] |708| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |708| 
        OR        AL,#65535             ; [CPU_ALU] |708| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |708| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 710,column 13,is_stmt,isa 0
        MOVL      XAR4,#390258          ; [CPU_ARAU] |710| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |710| 
        OR        AL,#999               ; [CPU_ALU] |710| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |710| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 712,column 13,is_stmt,isa 0
        B         ||$C$L74||,UNC        ; [CPU_ALU] |712| 
        ; branch occurs ; [] |712| 
||$C$L72||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 680,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |680| 
        AND       AH,#65280             ; [CPU_ALU] |680| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |680| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |680| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |680| 
        B         ||$C$L73||,LT         ; [CPU_ALU] |680| 
        ; branchcc occurs ; [] |680| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |680| 
        B         ||$C$L68||,EQ         ; [CPU_ALU] |680| 
        ; branchcc occurs ; [] |680| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |680| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |680| 
        B         ||$C$L71||,EQ         ; [CPU_ALU] |680| 
        ; branchcc occurs ; [] |680| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L67||,EQ         ; [CPU_ALU] |680| 
        ; branchcc occurs ; [] |680| 
        B         ||$C$L74||,UNC        ; [CPU_ALU] |680| 
        ; branch occurs ; [] |680| 
||$C$L73||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |680| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |680| 
        B         ||$C$L69||,EQ         ; [CPU_ALU] |680| 
        ; branchcc occurs ; [] |680| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |680| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |680| 
        B         ||$C$L70||,EQ         ; [CPU_ALU] |680| 
        ; branchcc occurs ; [] |680| 
||$C$L74||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 720,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |720| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 721,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x2d1)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text:MemCfg_getInitStatus"
	.clink
	.global	||MemCfg_getInitStatus||

$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("MemCfg_getInitStatus")
	.dwattr $C$DW$60, DW_AT_low_pc(||MemCfg_getInitStatus||)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_linkage_name("MemCfg_getInitStatus")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$60, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0x2d9)
	.dwattr $C$DW$60, DW_AT_decl_column(0x01)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 730,column 1,is_stmt,address ||MemCfg_getInitStatus||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getInitStatus||
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("ramSections")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getInitStatus          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getInitStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("ramSections")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg20 -2]

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("status")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |730| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 745,column 5,is_stmt,isa 0
        B         ||$C$L82||,UNC        ; [CPU_ALU] |745| 
        ; branch occurs ; [] |745| 
||$C$L75||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 748,column 13,is_stmt,isa 0
        MOVL      XAR4,#390164          ; [CPU_ARAU] |748| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |748| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |748| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 749,column 13,is_stmt,isa 0
        B         ||$C$L84||,UNC        ; [CPU_ALU] |749| 
        ; branch occurs ; [] |749| 
||$C$L76||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 752,column 13,is_stmt,isa 0
        MOVL      XAR4,#390196          ; [CPU_ARAU] |752| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |752| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |752| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 753,column 13,is_stmt,isa 0
        B         ||$C$L84||,UNC        ; [CPU_ALU] |753| 
        ; branch occurs ; [] |753| 
||$C$L77||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 756,column 13,is_stmt,isa 0
        MOVL      XAR4,#390228          ; [CPU_ARAU] |756| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |756| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |756| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 757,column 13,is_stmt,isa 0
        B         ||$C$L84||,UNC        ; [CPU_ALU] |757| 
        ; branch occurs ; [] |757| 
||$C$L78||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 760,column 13,is_stmt,isa 0
        MOVL      XAR4,#390260          ; [CPU_ARAU] |760| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |760| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |760| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 761,column 13,is_stmt,isa 0
        B         ||$C$L84||,UNC        ; [CPU_ALU] |761| 
        ; branch occurs ; [] |761| 
||$C$L79||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 765,column 13,is_stmt,isa 0
        MOVB      ACC,#15               ; [CPU_ALU] |765| 
        MOVL      XAR4,#390164          ; [CPU_ARAU] |765| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |765| 
        B         ||$C$L80||,NEQ        ; [CPU_ALU] |765| 
        ; branchcc occurs ; [] |765| 
        MOV       AL,#255               ; [CPU_ALU] |765| 
        MOV       AH,#256               ; [CPU_ALU] |765| 
        MOVL      XAR4,#390196          ; [CPU_ARAU] |765| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |765| 
        B         ||$C$L80||,NEQ        ; [CPU_ALU] |765| 
        ; branchcc occurs ; [] |765| 
        MOV       AL,#65535             ; [CPU_ALU] |765| 
        MOV       AH,#512               ; [CPU_ALU] |765| 
        MOVL      XAR4,#390228          ; [CPU_ARAU] |765| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |765| 
        B         ||$C$L80||,NEQ        ; [CPU_ALU] |765| 
        ; branchcc occurs ; [] |765| 
        MOV       AL,#999               ; [CPU_ALU] |765| 
        MOV       AH,#768               ; [CPU_ALU] |765| 
        MOVL      XAR4,#390260          ; [CPU_ARAU] |765| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_ALU] |765| 
        B         ||$C$L80||,NEQ        ; [CPU_ALU] |765| 
        ; branchcc occurs ; [] |765| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 774,column 17,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |774| 
        MOV       AH,#255               ; [CPU_ALU] |774| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |774| 
        B         ||$C$L84||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L80||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 778,column 17,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |778| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |778| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 780,column 13,is_stmt,isa 0
        B         ||$C$L84||,UNC        ; [CPU_ALU] |780| 
        ; branch occurs ; [] |780| 
||$C$L81||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 785,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |785| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |785| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 786,column 13,is_stmt,isa 0
        B         ||$C$L84||,UNC        ; [CPU_ALU] |786| 
        ; branch occurs ; [] |786| 
||$C$L82||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 745,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |745| 
        AND       AH,#65280             ; [CPU_ALU] |745| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |745| 
        MOV       ACC,#512 << 15        ; [CPU_ALU] |745| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |745| 
        B         ||$C$L83||,LT         ; [CPU_ALU] |745| 
        ; branchcc occurs ; [] |745| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |745| 
        B         ||$C$L76||,EQ         ; [CPU_ALU] |745| 
        ; branchcc occurs ; [] |745| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-512 << 15       ; [CPU_ALU] |745| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |745| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |745| 
        ; branchcc occurs ; [] |745| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L75||,EQ         ; [CPU_ALU] |745| 
        ; branchcc occurs ; [] |745| 
        B         ||$C$L81||,UNC        ; [CPU_ALU] |745| 
        ; branch occurs ; [] |745| 
||$C$L83||:    
        MOV       ACC,#1024 << 15       ; [CPU_ALU] |745| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |745| 
        B         ||$C$L77||,EQ         ; [CPU_ALU] |745| 
        ; branchcc occurs ; [] |745| 
        MOV       ACC,#1536 << 15       ; [CPU_ALU] |745| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |745| 
        B         ||$C$L78||,EQ         ; [CPU_ALU] |745| 
        ; branchcc occurs ; [] |745| 
        B         ||$C$L81||,UNC        ; [CPU_ALU] |745| 
        ; branch occurs ; [] |745| 
||$C$L84||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 789,column 5,is_stmt,isa 0
        MOVL      P,*-SP[2]             ; [CPU_ALU] |789| 
        AND       AL,*-SP[2]            ; [CPU_ALU] |789| 
        AND       AH,*-SP[1]            ; [CPU_ALU] |789| 
        AND       PH,#255               ; [CPU_ALU] |789| 
        MOVB      XAR6,#0               ; [CPU_FPU] |789| 
        MOVB      XAR7,#0               ; [CPU_FPU] |789| 
        CMPL      ACC,P                 ; [CPU_ALU] |789| 
        B         ||$C$L85||,NEQ        ; [CPU_ALU] |789| 
        ; branchcc occurs ; [] |789| 
        MOVB      XAR7,#1               ; [CPU_ALU] |789| 
||$C$L85||:    
        MOV       AH,AR7                ; [CPU_ALU] 
        B         ||$C$L86||,EQ         ; [CPU_ALU] |789| 
        ; branchcc occurs ; [] |789| 
        MOVB      XAR6,#1               ; [CPU_ALU] |789| 
||$C$L86||:    
        MOV       AL,AR6                ; [CPU_ALU] |789| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 790,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$60, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x316)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

	.sect	".text:MemCfg_getViolationAddress"
	.clink
	.global	||MemCfg_getViolationAddress||

$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("MemCfg_getViolationAddress")
	.dwattr $C$DW$65, DW_AT_low_pc(||MemCfg_getViolationAddress||)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_linkage_name("MemCfg_getViolationAddress")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$65, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0x31e)
	.dwattr $C$DW$65, DW_AT_decl_column(0x01)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 799,column 1,is_stmt,address ||MemCfg_getViolationAddress||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getViolationAddress||
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("intFlag")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getViolationAddress    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getViolationAddress||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("intFlag")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -2]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("address")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -4]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("stsNumber")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |799| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 806,column 5,is_stmt,isa 0
        AND       AL,#61440             ; [CPU_ALU] |806| 
        ANDB      AH,#0                 ; [CPU_ALU] |806| 
        TEST      ACC                   ; [CPU_ALU] |806| 
        B         ||$C$L87||,EQ         ; [CPU_ALU] |806| 
        ; branchcc occurs ; [] |806| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 808,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |808| 
        CLRC      SXM                   ; [CPU_ALU] 
        SFR       ACC,12                ; [CPU_ALU] |808| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |808| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 809,column 9,is_stmt,isa 0
        MOVL      XAR4,#390440          ; [CPU_ARAU] |809| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |809| 
        B         ||$C$L88||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L87||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 813,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |813| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |813| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 814,column 9,is_stmt,isa 0
        MOVL      XAR4,#390408          ; [CPU_ARAU] |814| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |814| 
||$C$L88||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 817,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |817| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |817| 
        B         ||$C$L90||,HIS        ; [CPU_ALU] |817| 
        ; branchcc occurs ; [] |817| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L89||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 819,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |819| 
        SFR       ACC,1                 ; [CPU_ALU] |819| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |819| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 820,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |820| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |820| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |820| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 817,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |817| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |817| 
        B         ||$C$L89||,LO         ; [CPU_ALU] |817| 
        ; branchcc occurs ; [] |817| 
||$C$L90||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 826,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |826| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |826| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 827,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$65, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x33b)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$65

	.sect	".text:MemCfg_getCorrErrorAddress"
	.clink
	.global	||MemCfg_getCorrErrorAddress||

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("MemCfg_getCorrErrorAddress")
	.dwattr $C$DW$71, DW_AT_low_pc(||MemCfg_getCorrErrorAddress||)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_linkage_name("MemCfg_getCorrErrorAddress")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$71, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x343)
	.dwattr $C$DW$71, DW_AT_decl_column(0x01)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 836,column 1,is_stmt,address ||MemCfg_getCorrErrorAddress||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getCorrErrorAddress||
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("stsFlag")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getCorrErrorAddress    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getCorrErrorAddress||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("stsFlag")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -2]

$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("address")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -4]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("temp")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |836| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 842,column 5,is_stmt,isa 0
        MOVL      XAR4,#390502          ; [CPU_ARAU] |842| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |842| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 844,column 5,is_stmt,isa 0
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |844| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 846,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |846| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |846| 
        B         ||$C$L92||,HIS        ; [CPU_ALU] |846| 
        ; branchcc occurs ; [] |846| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L91||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 848,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |848| 
        SFR       ACC,1                 ; [CPU_ALU] |848| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |848| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 849,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |849| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |849| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |849| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 846,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |846| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |846| 
        B         ||$C$L91||,LO         ; [CPU_ALU] |846| 
        ; branchcc occurs ; [] |846| 
||$C$L92||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 855,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |855| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |855| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 857,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x359)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text:MemCfg_getUncorrErrorAddress"
	.clink
	.global	||MemCfg_getUncorrErrorAddress||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("MemCfg_getUncorrErrorAddress")
	.dwattr $C$DW$77, DW_AT_low_pc(||MemCfg_getUncorrErrorAddress||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("MemCfg_getUncorrErrorAddress")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$77, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x361)
	.dwattr $C$DW$77, DW_AT_decl_column(0x01)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 866,column 1,is_stmt,address ||MemCfg_getUncorrErrorAddress||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_getUncorrErrorAddress||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("stsFlag")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_getUncorrErrorAddress  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||MemCfg_getUncorrErrorAddress||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("stsFlag")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -2]

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("address")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -4]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("temp")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -6]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |866| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 873,column 5,is_stmt,isa 0
        MOVL      XAR4,#390470          ; [CPU_ARAU] |873| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |873| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 875,column 5,is_stmt,isa 0
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |875| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 877,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |877| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |877| 
        B         ||$C$L94||,HIS        ; [CPU_ALU] |877| 
        ; branchcc occurs ; [] |877| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L93||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 879,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |879| 
        SFR       ACC,1                 ; [CPU_ALU] |879| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |879| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 880,column 9,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |880| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |880| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |880| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 877,column 11,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |877| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |877| 
        B         ||$C$L93||,LO         ; [CPU_ALU] |877| 
        ; branchcc occurs ; [] |877| 
||$C$L94||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 886,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |886| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |886| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 887,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x377)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:MemCfg_forceMemError"
	.clink
	.global	||MemCfg_forceMemError||

$C$DW$83	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$83, DW_AT_name("MemCfg_forceMemError")
	.dwattr $C$DW$83, DW_AT_low_pc(||MemCfg_forceMemError||)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_linkage_name("MemCfg_forceMemError")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0x37f)
	.dwattr $C$DW$83, DW_AT_decl_column(0x01)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 896,column 1,is_stmt,address ||MemCfg_forceMemError||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_forceMemError||
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_name("memSections")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_forceMemError          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_forceMemError||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("memSections")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |896| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 908,column 5,is_stmt,isa 0
        B         ||$C$L98||,UNC        ; [CPU_ALU] |908| 
        ; branch occurs ; [] |908| 
||$C$L95||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 911,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |911| 
        MOVL      XAR4,#390308          ; [CPU_ARAU] |911| 
        ANDB      AH,#255               ; [CPU_ALU] |911| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |911| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |911| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 913,column 13,is_stmt,isa 0
        B         ||$C$L99||,UNC        ; [CPU_ALU] |913| 
        ; branch occurs ; [] |913| 
||$C$L96||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 916,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |916| 
        MOVL      XAR4,#390316          ; [CPU_ARAU] |916| 
        ANDB      AH,#255               ; [CPU_ALU] |916| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |916| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |916| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 918,column 13,is_stmt,isa 0
        B         ||$C$L99||,UNC        ; [CPU_ALU] |918| 
        ; branch occurs ; [] |918| 
||$C$L97||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 921,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |921| 
        MOVL      XAR4,#390308          ; [CPU_ARAU] |921| 
        ANDB      AH,#255               ; [CPU_ALU] |921| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |921| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |921| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 924,column 13,is_stmt,isa 0
        MOVL      XAR4,#390316          ; [CPU_ARAU] |924| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |924| 
        ANDB      AH,#255               ; [CPU_ALU] |924| 
        OR        *+XAR4[0],AL          ; [CPU_FPU] |924| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |924| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 926,column 13,is_stmt,isa 0
        B         ||$C$L99||,UNC        ; [CPU_ALU] |926| 
        ; branch occurs ; [] |926| 
||$C$L98||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 908,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |908| 
        AND       AH,#65280             ; [CPU_ALU] |908| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |908| 
        MOVB      ACC,#0                ; [CPU_ALU] |908| 
        SUBB      ACC,#1                ; [CPU_ALU] |908| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |908| 
        B         ||$C$L97||,EQ         ; [CPU_ALU] |908| 
        ; branchcc occurs ; [] |908| 
        MOV       ACC,#2048 << 15       ; [CPU_ALU] |908| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |908| 
        B         ||$C$L95||,EQ         ; [CPU_ALU] |908| 
        ; branchcc occurs ; [] |908| 
        MOV       ACC,#2560 << 15       ; [CPU_ALU] |908| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |908| 
        B         ||$C$L96||,EQ         ; [CPU_ALU] |908| 
        ; branchcc occurs ; [] |908| 
        B         ||$C$L99||,UNC        ; [CPU_ALU] |908| 
        ; branch occurs ; [] |908| 
||$C$L99||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$83, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x3a6)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text:MemCfg_enablePeriMemTestMode"
	.clink
	.global	||MemCfg_enablePeriMemTestMode||

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("MemCfg_enablePeriMemTestMode")
	.dwattr $C$DW$87, DW_AT_low_pc(||MemCfg_enablePeriMemTestMode||)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_linkage_name("MemCfg_enablePeriMemTestMode")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x3ae)
	.dwattr $C$DW$87, DW_AT_decl_column(0x01)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 943,column 1,is_stmt,address ||MemCfg_enablePeriMemTestMode||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_enablePeriMemTestMode||
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("memSections")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_enablePeriMemTestMode  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_enablePeriMemTestMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("memSections")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |943| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 953,column 5,is_stmt,isa 0
        B         ||$C$L101||,UNC       ; [CPU_ALU] |953| 
        ; branch occurs ; [] |953| 
||$C$L100||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 956,column 13,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |956| 
        MOVL      XAR4,#390316          ; [CPU_ARAU] |956| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |956| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |956| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 958,column 13,is_stmt,isa 0
        B         ||$C$L102||,UNC       ; [CPU_ALU] |958| 
        ; branch occurs ; [] |958| 
||$C$L101||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 953,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[2]          ; [CPU_ALU] |953| 
        MOV       AL,#32                ; [CPU_ALU] |953| 
        MOV       AH,#1280              ; [CPU_ALU] |953| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |953| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |953| 
        ; branchcc occurs ; [] |953| 
        B         ||$C$L102||,UNC       ; [CPU_ALU] |953| 
        ; branch occurs ; [] |953| 
||$C$L102||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x3c6)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:MemCfg_disablePeriMemTestMode"
	.clink
	.global	||MemCfg_disablePeriMemTestMode||

$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("MemCfg_disablePeriMemTestMode")
	.dwattr $C$DW$91, DW_AT_low_pc(||MemCfg_disablePeriMemTestMode||)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_linkage_name("MemCfg_disablePeriMemTestMode")
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$91, DW_AT_decl_line(0x3ce)
	.dwattr $C$DW$91, DW_AT_decl_column(0x01)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 975,column 1,is_stmt,address ||MemCfg_disablePeriMemTestMode||,isa 0

	.dwfde $C$DW$CIE, ||MemCfg_disablePeriMemTestMode||
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("memSections")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: MemCfg_disablePeriMemTestMode FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||MemCfg_disablePeriMemTestMode||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("memSections")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |975| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 985,column 5,is_stmt,isa 0
        B         ||$C$L104||,UNC       ; [CPU_ALU] |985| 
        ; branch occurs ; [] |985| 
||$C$L103||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 988,column 13,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#390316          ; [CPU_ARAU] |988| 
        MOV       ACC,#65519            ; [CPU_ALU] |988| 
        AND       *+XAR5[0],AL          ; [CPU_ALU] |988| 
        MOV       AL,AH                 ; [CPU_ALU] |988| 
        AND       *+XAR5[1],AL          ; [CPU_ALU] |988| 
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 990,column 13,is_stmt,isa 0
        B         ||$C$L105||,UNC       ; [CPU_ALU] |990| 
        ; branch occurs ; [] |990| 
||$C$L104||:    
	.dwpsn	file "../F2838x_driverlib/driverlib/memcfg.c",line 985,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[2]          ; [CPU_ALU] |985| 
        MOV       AL,#32                ; [CPU_ALU] |985| 
        MOV       AH,#1280              ; [CPU_ALU] |985| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |985| 
        B         ||$C$L103||,EQ        ; [CPU_ALU] |985| 
        ; branchcc occurs ; [] |985| 
        B         ||$C$L105||,UNC       ; [CPU_ALU] |985| 
        ; branch occurs ; [] |985| 
||$C$L105||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$91, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/memcfg.c")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x3e6)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$91


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
$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("MEMCFG_LSRAMMASTER_CPU_ONLY")
	.dwattr $C$DW$95, DW_AT_const_value(0x00)
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x105)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("MEMCFG_LSRAMMASTER_CPU_CLA1")
	.dwattr $C$DW$96, DW_AT_const_value(0x01)
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x106)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x104)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("MemCfg_LSRAMMasterSel")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x107)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("MEMCFG_GSRAMMASTER_CPU1")
	.dwattr $C$DW$97, DW_AT_const_value(0x00)
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x111)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("MEMCFG_GSRAMMASTER_CPU2")
	.dwattr $C$DW$98, DW_AT_const_value(0x01)
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x112)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("MemCfg_GSRAMMasterSel")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x113)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("MEMCFG_TEST_FUNCTIONAL")
	.dwattr $C$DW$99, DW_AT_const_value(0x00)
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("MEMCFG_TEST_WRITE_DATA")
	.dwattr $C$DW$100, DW_AT_const_value(0x01)
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x120)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("MEMCFG_TEST_WRITE_ECC")
	.dwattr $C$DW$101, DW_AT_const_value(0x02)
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x122)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("MEMCFG_TEST_WRITE_PARITY")
	.dwattr $C$DW$102, DW_AT_const_value(0x02)
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x124)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("MEMCFG_TEST_FUNC_DIAG")
	.dwattr $C$DW$103, DW_AT_const_value(0x03)
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x126)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("MemCfg_TestMode")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_driverlib\driverlib\memcfg.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x127)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


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


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$26


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


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$35, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$35, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$35

