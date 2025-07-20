;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:08:49 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Drivers/SysControl2.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$1, DW_AT_linkage_name("Flash_initModule")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x664)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$168)

	.dwendtag $C$DW$1

	.global	||WatchDogKickPermission||
	.bss	||WatchDogKickPermission||,1,1,0
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("WatchDogKickPermission")
	.dwattr $C$DW$5, DW_AT_linkage_name("WatchDogKickPermission")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||WatchDogKickPermission||]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x27)
	.dwattr $C$DW$5, DW_AT_decl_column(0x07)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("Flash0EccRegs")
	.dwattr $C$DW$6, DW_AT_linkage_name("Flash0EccRegs")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x27)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("WdRegs")
	.dwattr $C$DW$7, DW_AT_linkage_name("WdRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x81)
	.dwattr $C$DW$7, DW_AT_decl_column(0x20)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ClkCfgRegs")
	.dwattr $C$DW$8, DW_AT_linkage_name("ClkCfgRegs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0xcb4)
	.dwattr $C$DW$8, DW_AT_decl_column(0x25)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("IPC_Instance")
	.dwattr $C$DW$9, DW_AT_linkage_name("IPC_Instance")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x130)
	.dwattr $C$DW$9, DW_AT_decl_column(0x1d)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("Flash0CtrlRegs")
	.dwattr $C$DW$10, DW_AT_linkage_name("Flash0CtrlRegs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$10, DW_AT_decl_column(0x28)

	.sblock	".bss"
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{CF062FBB-5021-42A3-AC7A-DA57FA4B145E} 
	.sect	".text:Flash_RelinquishPumpSemaphore"
	.clink
	.global	||Flash_RelinquishPumpSemaphore||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("Flash_RelinquishPumpSemaphore")
	.dwattr $C$DW$11, DW_AT_low_pc(||Flash_RelinquishPumpSemaphore||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("Flash_RelinquishPumpSemaphore")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x61f)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1568,column 1,is_stmt,address ||Flash_RelinquishPumpSemaphore||,isa 0

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
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1569,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1570,column 5,is_stmt,isa 0
        MOVW      DP,#||IPC_Instance||+66 ; [CPU_ARAU] 
        MOVL      XAR4,@||IPC_Instance||+66 ; [CPU_ALU] |1570| 
        MOVB      AL,#0                 ; [CPU_ALU] |1570| 
        MOV       AH,#23130             ; [CPU_ALU] |1570| 
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |1570| 
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1571,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1572,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x624)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:GetSemaphore"
	.clink
	.global	||GetSemaphore||

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("GetSemaphore")
	.dwattr $C$DW$13, DW_AT_low_pc(||GetSemaphore||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("GetSemaphore")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$13, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x627)
	.dwattr $C$DW$13, DW_AT_decl_column(0x0f)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1576,column 1,is_stmt,address ||GetSemaphore||,isa 0

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
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1577,column 5,is_stmt,isa 0
        MOVW      DP,#||IPC_Instance||+66 ; [CPU_ARAU] 
        MOVL      XAR4,@||IPC_Instance||+66 ; [CPU_ALU] |1577| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |1577| 
	.dwpsn	file "..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1578,column 1,is_stmt,isa 0
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x62a)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".TI.ramfunc:InitFlash_Bank0"
	.clink
	.global	||InitFlash_Bank0||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("InitFlash_Bank0")
	.dwattr $C$DW$15, DW_AT_low_pc(||InitFlash_Bank0||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("InitFlash_Bank0")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x55)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 86,column 1,is_stmt,address ||InitFlash_Bank0||,isa 0

	.dwfde $C$DW$CIE, ||InitFlash_Bank0||

;***************************************************************
;* FNAME: InitFlash_Bank0               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||InitFlash_Bank0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 88,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 109,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+36 ; [CPU_ARAU] 
        OR        @$BLOCKED(||Flash0CtrlRegs||)+36,#0x0001 ; [CPU_ALU] |109| 
	.dwpsn	file "../Drivers/SysControl2.c",line 110,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||Flash0CtrlRegs||)+32,#0x0003 ; [CPU_ALU] |110| 
	.dwpsn	file "../Drivers/SysControl2.c",line 115,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+384 ; [CPU_ARAU] 
        AND       @$BLOCKED(||Flash0CtrlRegs||)+384,#0xfffd ; [CPU_ALU] |115| 
	.dwpsn	file "../Drivers/SysControl2.c",line 116,column 5,is_stmt,isa 0
        AND       @$BLOCKED(||Flash0CtrlRegs||)+384,#0xfffe ; [CPU_ALU] |116| 
	.dwpsn	file "../Drivers/SysControl2.c",line 127,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs|| ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||Flash0CtrlRegs||),#0xf0ff ; [CPU_ALU] |127| 
        OR        AL,#0x0300            ; [CPU_ALU] |127| 
        MOV       @$BLOCKED(||Flash0CtrlRegs||),AL ; [CPU_ALU] |127| 
	.dwpsn	file "../Drivers/SysControl2.c",line 142,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+384 ; [CPU_ARAU] 
        OR        @$BLOCKED(||Flash0CtrlRegs||)+384,#0x0002 ; [CPU_ALU] |142| 
	.dwpsn	file "../Drivers/SysControl2.c",line 143,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||Flash0CtrlRegs||)+384,#0x0001 ; [CPU_ALU] |143| 
	.dwpsn	file "../Drivers/SysControl2.c",line 149,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0EccRegs|| ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||Flash0EccRegs||),#0xfff0 ; [CPU_ALU] |149| 
        ORB       AL,#0x0a              ; [CPU_ALU] |149| 
        MOV       @$BLOCKED(||Flash0EccRegs||),AL ; [CPU_ALU] |149| 
	.dwpsn	file "../Drivers/SysControl2.c",line 151,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 157,column 5,is_stmt,isa 0
 RPT #7 || NOP
	.dwpsn	file "../Drivers/SysControl2.c",line 159,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x9f)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".TI.ramfunc:FlashOff_Bank0"
	.clink
	.global	||FlashOff_Bank0||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("FlashOff_Bank0")
	.dwattr $C$DW$17, DW_AT_low_pc(||FlashOff_Bank0||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("FlashOff_Bank0")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$17, DW_AT_decl_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 179,column 1,is_stmt,address ||FlashOff_Bank0||,isa 0

	.dwfde $C$DW$CIE, ||FlashOff_Bank0||

;***************************************************************
;* FNAME: FlashOff_Bank0                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||FlashOff_Bank0||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 181,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 194,column 5,is_stmt,isa 0
        MOVW      DP,#||Flash0CtrlRegs||+32 ; [CPU_ARAU] 
        AND       @$BLOCKED(||Flash0CtrlRegs||)+32,#0xfffc ; [CPU_ALU] |194| 
	.dwpsn	file "../Drivers/SysControl2.c",line 199,column 5,is_stmt,isa 0
        AND       @$BLOCKED(||Flash0CtrlRegs||)+36,#0xfffe ; [CPU_ALU] |199| 
	.dwpsn	file "../Drivers/SysControl2.c",line 201,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 203,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".TI.ramfunc:InitFlash"
	.clink
	.global	||InitFlash||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("InitFlash")
	.dwattr $C$DW$19, DW_AT_low_pc(||InitFlash||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("InitFlash")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl2.c",line 217,column 1,is_stmt,address ||InitFlash||,isa 0

	.dwfde $C$DW$CIE, ||InitFlash||

;***************************************************************
;* FNAME: InitFlash                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||InitFlash||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Drivers/SysControl2.c",line 219,column 5,is_stmt,isa 0
        MOVL      XAR4,#391936          ; [CPU_ARAU] |219| 
        MOVL      XAR5,#391168          ; [CPU_ARAU] |219| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |219| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |219| 
        MOVB      XAR4,#3               ; [CPU_ALU] |219| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #||Flash_initModule|| ; [CPU_ALU] |219| 
        ; call occurs [#||Flash_initModule||] ; [] |219| 
	.dwpsn	file "../Drivers/SysControl2.c",line 221,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:KickDog"
	.clink
	.global	||KickDog||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("KickDog")
	.dwattr $C$DW$22, DW_AT_low_pc(||KickDog||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("KickDog")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 319,column 1,is_stmt,address ||KickDog||,isa 0

	.dwfde $C$DW$CIE, ||KickDog||

;***************************************************************
;* FNAME: KickDog                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||KickDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 320,column 5,is_stmt,isa 0
        MOVW      DP,#||WatchDogKickPermission|| ; [CPU_ARAU] 
        MOV       AL,@||WatchDogKickPermission|| ; [CPU_ALU] |320| 
        CMPB      AL,#1                 ; [CPU_ALU] |320| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
	.dwpsn	file "../Drivers/SysControl2.c",line 323,column 9,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 324,column 9,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+37     ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |324| 
        ORB       AL,#0x55              ; [CPU_ALU] |324| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |324| 
	.dwpsn	file "../Drivers/SysControl2.c",line 325,column 9,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |325| 
        ORB       AL,#0xaa              ; [CPU_ALU] |325| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |325| 
	.dwpsn	file "../Drivers/SysControl2.c",line 326,column 9,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 328,column 9,is_stmt,isa 0
        MOVW      DP,#||WatchDogKickPermission|| ; [CPU_ARAU] 
        MOV       @||WatchDogKickPermission||,#0 ; [CPU_ALU] |328| 
	.dwpsn	file "../Drivers/SysControl2.c",line 330,column 1,is_stmt,isa 0
||$C$L1||:    
        SPM       #0                    ; [CPU_ALU] 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text:DisableDog"
	.clink
	.global	||DisableDog||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("DisableDog")
	.dwattr $C$DW$24, DW_AT_low_pc(||DisableDog||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("DisableDog")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x158)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl2.c",line 345,column 1,is_stmt,address ||DisableDog||,isa 0

	.dwfde $C$DW$CIE, ||DisableDog||

;***************************************************************
;* FNAME: DisableDog                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||DisableDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("temp")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../Drivers/SysControl2.c",line 352,column 4,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 353,column 5,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+41     ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||WdRegs||)+41 ; [CPU_ALU] |353| 
        ANDB      AL,#0x07              ; [CPU_ALU] |353| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |353| 
	.dwpsn	file "../Drivers/SysControl2.c",line 354,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |354| 
        ORB       AL,#0x68              ; [CPU_ALU] |354| 
        MOV       @$BLOCKED(||WdRegs||)+41,AL ; [CPU_ALU] |354| 
	.dwpsn	file "../Drivers/SysControl2.c",line 355,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 357,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:EnableDog"
	.clink
	.global	||EnableDog||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("EnableDog")
	.dwattr $C$DW$27, DW_AT_low_pc(||EnableDog||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("EnableDog")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$27, DW_AT_decl_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl2.c",line 364,column 1,is_stmt,address ||EnableDog||,isa 0

	.dwfde $C$DW$CIE, ||EnableDog||

;***************************************************************
;* FNAME: EnableDog                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||EnableDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("temp")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../Drivers/SysControl2.c",line 367,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 368,column 5,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+42     ; [CPU_ARAU] 
        MOV       @$BLOCKED(||WdRegs||)+42,#0 ; [CPU_ALU] |368| 
	.dwpsn	file "../Drivers/SysControl2.c",line 369,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |369| 
        ORB       AL,#0x55              ; [CPU_ALU] |369| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |369| 
	.dwpsn	file "../Drivers/SysControl2.c",line 370,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |370| 
        ORB       AL,#0xaa              ; [CPU_ALU] |370| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |370| 
	.dwpsn	file "../Drivers/SysControl2.c",line 372,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||WdRegs||)+41 ; [CPU_ALU] |372| 
        ANDB      AL,#0x07              ; [CPU_ALU] |372| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |372| 
	.dwpsn	file "../Drivers/SysControl2.c",line 373,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |373| 
        ORB       AL,#0x28              ; [CPU_ALU] |373| 
        MOV       @$BLOCKED(||WdRegs||)+41,AL ; [CPU_ALU] |373| 
	.dwpsn	file "../Drivers/SysControl2.c",line 374,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 376,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x178)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:ResetByDog"
	.clink
	.global	||ResetByDog||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("ResetByDog")
	.dwattr $C$DW$30, DW_AT_low_pc(||ResetByDog||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("ResetByDog")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Drivers/SysControl2.c",line 383,column 1,is_stmt,address ||ResetByDog||,isa 0

	.dwfde $C$DW$CIE, ||ResetByDog||

;***************************************************************
;* FNAME: ResetByDog                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||ResetByDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("temp")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../Drivers/SysControl2.c",line 387,column 9,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 390,column 9,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+41     ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||WdRegs||)+41 ; [CPU_ALU] |390| 
        ANDB      AL,#0x07              ; [CPU_ALU] |390| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |390| 
	.dwpsn	file "../Drivers/SysControl2.c",line 391,column 9,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |391| 
        ORB       AL,#0x20              ; [CPU_ALU] |391| 
        MOV       @$BLOCKED(||WdRegs||)+41,AL ; [CPU_ALU] |391| 
	.dwpsn	file "../Drivers/SysControl2.c",line 393,column 9,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 395,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x18b)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:SysXtalOscSel"
	.clink
	.global	||SysXtalOscSel||

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("SysXtalOscSel")
	.dwattr $C$DW$33, DW_AT_low_pc(||SysXtalOscSel||)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_linkage_name("SysXtalOscSel")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x190)
	.dwattr $C$DW$33, DW_AT_decl_column(0x06)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 401,column 1,is_stmt,address ||SysXtalOscSel||,isa 0

	.dwfde $C$DW$CIE, ||SysXtalOscSel||

;***************************************************************
;* FNAME: SysXtalOscSel                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysXtalOscSel||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 403,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 404,column 5,is_stmt,isa 0
        MOVW      DP,#||ClkCfgRegs||+8  ; [CPU_ARAU] 
        AND       @$BLOCKED(||ClkCfgRegs||)+8,#0xffef ; [CPU_ALU] |404| 
	.dwpsn	file "../Drivers/SysControl2.c",line 405,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||ClkCfgRegs||)+8,#0xfffc ; [CPU_ALU] |405| 
        ORB       AL,#0x01              ; [CPU_ALU] |405| 
        MOV       @$BLOCKED(||ClkCfgRegs||)+8,AL ; [CPU_ALU] |405| 
	.dwpsn	file "../Drivers/SysControl2.c",line 406,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 408,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x198)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text:ServiceDog"
	.clink
	.global	||ServiceDog||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("ServiceDog")
	.dwattr $C$DW$35, DW_AT_low_pc(||ServiceDog||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("ServiceDog")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 416,column 1,is_stmt,address ||ServiceDog||,isa 0

	.dwfde $C$DW$CIE, ||ServiceDog||

;***************************************************************
;* FNAME: ServiceDog                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||ServiceDog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 418,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../Drivers/SysControl2.c",line 419,column 5,is_stmt,isa 0
        MOVW      DP,#||WdRegs||+37     ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |419| 
        ORB       AL,#0x55              ; [CPU_ALU] |419| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |419| 
	.dwpsn	file "../Drivers/SysControl2.c",line 420,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||WdRegs||)+37,#0xff00 ; [CPU_ALU] |420| 
        ORB       AL,#0xaa              ; [CPU_ALU] |420| 
        MOV       @$BLOCKED(||WdRegs||)+37,AL ; [CPU_ALU] |420| 
	.dwpsn	file "../Drivers/SysControl2.c",line 421,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../Drivers/SysControl2.c",line 423,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x1a7)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:GetLcpClk"
	.clink
	.global	||GetLcpClk||

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("GetLcpClk")
	.dwattr $C$DW$37, DW_AT_low_pc(||GetLcpClk||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("GetLcpClk")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$37, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 475,column 1,is_stmt,address ||GetLcpClk||,isa 0

	.dwfde $C$DW$CIE, ||GetLcpClk||

;***************************************************************
;* FNAME: GetLcpClk                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetLcpClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 476,column 5,is_stmt,isa 0
        MOV       AL,#19072             ; [CPU_ALU] |476| 
        MOV       AH,#1373              ; [CPU_ALU] |476| 
	.dwpsn	file "../Drivers/SysControl2.c",line 477,column 1,is_stmt,isa 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x1dd)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:GetPerClk"
	.clink
	.global	||GetPerClk||

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("GetPerClk")
	.dwattr $C$DW$39, DW_AT_low_pc(||GetPerClk||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("GetPerClk")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$39, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$39, DW_AT_decl_column(0x06)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 482,column 1,is_stmt,address ||GetPerClk||,isa 0

	.dwfde $C$DW$CIE, ||GetPerClk||

;***************************************************************
;* FNAME: GetPerClk                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetPerClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 483,column 5,is_stmt,isa 0
        MOV       AL,#38144             ; [CPU_ALU] |483| 
        MOV       AH,#2746              ; [CPU_ALU] |483| 
	.dwpsn	file "../Drivers/SysControl2.c",line 484,column 1,is_stmt,isa 0
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x1e4)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:GetPerPWMClk"
	.clink
	.global	||GetPerPWMClk||

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("GetPerPWMClk")
	.dwattr $C$DW$41, DW_AT_low_pc(||GetPerPWMClk||)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("GetPerPWMClk")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$41, DW_AT_decl_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$41, DW_AT_decl_column(0x06)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Drivers/SysControl2.c",line 489,column 1,is_stmt,address ||GetPerPWMClk||,isa 0

	.dwfde $C$DW$CIE, ||GetPerPWMClk||

;***************************************************************
;* FNAME: GetPerPWMClk                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GetPerPWMClk||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Drivers/SysControl2.c",line 490,column 5,is_stmt,isa 0
        MOV       AL,#38144             ; [CPU_ALU] |490| 
        MOV       AH,#2746              ; [CPU_ALU] |490| 
	.dwpsn	file "../Drivers/SysControl2.c",line 491,column 1,is_stmt,isa 0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../Drivers/SysControl2.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x1eb)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Flash_initModule||
	.global	||Flash0EccRegs||
	.global	||WdRegs||
	.global	||ClkCfgRegs||
	.global	||IPC_Instance||
	.global	||Flash0CtrlRegs||
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

$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$43, DW_AT_name("IPC_ACK")
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0e)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$44, DW_AT_name("IPC_STS")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0e)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_name("IPC_SET")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0e)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$46, DW_AT_name("IPC_CLR")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0e)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$47, DW_AT_name("IPC_FLG")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0e)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_name("IPC_RSVDREG")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0e)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_name("IPC_COUNTERL")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0e)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_name("IPC_COUNTERH")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$50, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("IPC_Flag_Ctr_Reg_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$51	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$25)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$51)

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
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_name("IPC_SENDCOM")
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0xed)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0e)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$53, DW_AT_name("IPC_SENDADDR")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0xee)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0e)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$54, DW_AT_name("IPC_SENDDATA")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0xef)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0e)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$55, DW_AT_name("IPC_REMOTEREPLY")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$55, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("IPC_SendCmd_Reg_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$56	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$56)

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
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$57, DW_AT_name("IPC_RECVCOM")
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$57, DW_AT_decl_column(0x0e)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$58, DW_AT_name("IPC_RECVADDR")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0e)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_name("IPC_RECVDATA")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0e)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_name("IPC_LOCALREPLY")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("IPC_RecvCmd_Reg_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$31, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$61	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$61)

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
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_name("IPC_BOOTSTS")
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0e)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_name("IPC_BOOTMODE")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0e)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$64, DW_AT_name("IPC_PUMPREQUEST")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xff)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("IPC_Boot_Pump_Reg_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$65	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$34)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$65)

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
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$66, DW_AT_name("IPC_Flag_Ctr_Reg")
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x122)
	.dwattr $C$DW$66, DW_AT_decl_column(0x23)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$67, DW_AT_name("IPC_SendCmd_Reg")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x123)
	.dwattr $C$DW$67, DW_AT_decl_column(0x23)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$68, DW_AT_name("IPC_RecvCmd_Reg")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x124)
	.dwattr $C$DW$68, DW_AT_decl_column(0x23)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$69, DW_AT_name("IPC_Boot_Pump_Reg")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x125)
	.dwattr $C$DW$69, DW_AT_decl_column(0x23)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$70, DW_AT_name("IPC_IntNum")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x126)
	.dwattr $C$DW$70, DW_AT_decl_column(0x23)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("IPC_MsgRam_LtoR")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x127)
	.dwattr $C$DW$71, DW_AT_decl_column(0x23)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("IPC_MsgRam_RtoL")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x128)
	.dwattr $C$DW$72, DW_AT_decl_column(0x23)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("IPC_Offset_Corr")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x129)
	.dwattr $C$DW$73, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$142	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$142
$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("IPC_Instance_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$142, DW_AT_decl_file("..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$142


$C$DW$TU$143	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$143
$C$DW$74	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$142)

$C$DW$T$143	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$74)

	.dwendtag $C$DW$TU$143


$C$DW$TU$144	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$144

$C$DW$T$144	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x78)
$C$DW$75	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$75, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$144

	.dwendtag $C$DW$TU$144


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("AUXCLKDIVSEL_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$76, DW_AT_name("AUXPLLDIV")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$76, DW_AT_bit_size(0x03)
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xef)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0c)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$77, DW_AT_name("rsvd1")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$77, DW_AT_bit_size(0x05)
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0c)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$78, DW_AT_name("MCANCLKDIV")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$78, DW_AT_bit_size(0x05)
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0c)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$79, DW_AT_name("rsvd2")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$79, DW_AT_bit_size(0x03)
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0c)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$80, DW_AT_name("rsvd3")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$80, DW_AT_bit_size(0x10)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$40, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0xee)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("AUXCLKDIVSEL_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$81, DW_AT_name("all")
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0d)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$82, DW_AT_name("bit")
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$82, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$42, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("AUXPLLCTL1_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$83, DW_AT_name("PLLEN")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0c)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$84, DW_AT_name("PLLCLKEN")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$85, DW_AT_name("VCO_PWDN")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0c)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$86, DW_AT_name("AVG_SLIP_FLTR_EN")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0c)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$87, DW_AT_name("REF_LOST_EN")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xba)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0c)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$88, DW_AT_name("rsvd1")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$88, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0c)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$89, DW_AT_name("rsvd2")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$89, DW_AT_bit_size(0x10)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("AUXPLLCTL1_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$90, DW_AT_name("all")
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0d)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$91, DW_AT_name("bit")
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$91, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("AUXPLLMULT_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$92, DW_AT_name("IMULT")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$92, DW_AT_bit_size(0x08)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0c)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$93, DW_AT_name("FMULT")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$93, DW_AT_bit_size(0x02)
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0c)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$94, DW_AT_name("rsvd1")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$94, DW_AT_bit_size(0x02)
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0c)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$95, DW_AT_name("rsvd2")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$95, DW_AT_bit_size(0x02)
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0c)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$96, DW_AT_name("rsvd3")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$96, DW_AT_bit_size(0x02)
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0c)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$97, DW_AT_name("ODIV")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$97, DW_AT_bit_size(0x05)
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0xca)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0c)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$98, DW_AT_name("rsvd4")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$98, DW_AT_bit_size(0x03)
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0c)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$99, DW_AT_name("REFDIV")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$99, DW_AT_bit_size(0x05)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0c)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$100, DW_AT_name("rsvd5")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$100, DW_AT_bit_size(0x03)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$45, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("AUXPLLMULT_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$101, DW_AT_name("all")
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0d)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$102, DW_AT_name("bit")
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$102, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$46, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("AUXPLLSTS_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$103, DW_AT_name("LOCKS")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0c)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$104, DW_AT_name("SLIPS")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0c)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$105, DW_AT_name("QSLIPS")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0c)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$106, DW_AT_name("REF_LOSTS")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0c)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$107, DW_AT_name("rsvd1")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$107, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xda)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0c)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$108, DW_AT_name("rsvd2")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$108, DW_AT_bit_size(0x10)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$47, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("AUXPLLSTS_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$109, DW_AT_name("all")
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0d)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$110, DW_AT_name("bit")
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$110, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$48, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0xde)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("CLKCFGLOCK1_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$111, DW_AT_name("CLKSRCCTL1")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x42)
	.dwattr $C$DW$111, DW_AT_decl_column(0x0c)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$112, DW_AT_name("CLKSRCCTL2")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x43)
	.dwattr $C$DW$112, DW_AT_decl_column(0x0c)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$113, DW_AT_name("CLKSRCCTL3")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x44)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0c)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$114, DW_AT_name("SYSPLLCTL1")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x45)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0c)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$115, DW_AT_name("SYSPLLCTL2")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x46)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$116, DW_AT_name("SYSPLLCTL3")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x47)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$117, DW_AT_name("SYSPLLMULT")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x48)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$118, DW_AT_name("AUXPLLCTL1")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x49)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0c)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$119, DW_AT_name("rsvd1")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0c)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$120, DW_AT_name("rsvd2")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0c)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$121, DW_AT_name("AUXPLLMULT")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0c)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$122, DW_AT_name("SYSCLKDIVSEL")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$122, DW_AT_decl_column(0x0c)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$123, DW_AT_name("AUXCLKDIVSEL")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0c)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$124, DW_AT_name("PERCLKDIVSEL")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0c)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$125, DW_AT_name("rsvd3")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x50)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0c)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$126, DW_AT_name("LOSPCP")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x51)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0c)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$127, DW_AT_name("XTALCR")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x52)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0c)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$128, DW_AT_name("ETHERCATCLKCTL")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x53)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0c)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$129, DW_AT_name("CMCLKCTL")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x54)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0c)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$130, DW_AT_name("rsvd4")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$130, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x55)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$49, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("CLKCFGLOCK1_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$131, DW_AT_name("all")
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x59)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0d)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$132, DW_AT_name("bit")
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$132, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$50, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("CLKSEM_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$133, DW_AT_name("SEM")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$133, DW_AT_bit_size(0x02)
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x37)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0c)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$134, DW_AT_name("rsvd1")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$134, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x38)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0c)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$135, DW_AT_name("KEY")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$135, DW_AT_bit_size(0x10)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x39)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$51, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("CLKSEM_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$136, DW_AT_name("all")
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0d)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$137, DW_AT_name("bit")
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$137, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$52, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("CLKSRCCTL1_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$138, DW_AT_name("OSCCLKSRCSEL")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$138, DW_AT_bit_size(0x02)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$139, DW_AT_name("rsvd1")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0c)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$140, DW_AT_name("INTOSC2OFF")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x60)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0c)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$141, DW_AT_name("XTALOFF")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x61)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$142, DW_AT_name("rsvd2")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x62)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0c)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$143, DW_AT_name("rsvd3")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$143, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x63)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0c)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$144, DW_AT_name("rsvd4")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$144, DW_AT_bit_size(0x10)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x64)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$53, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("CLKSRCCTL1_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$145, DW_AT_name("all")
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x68)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0d)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$146, DW_AT_name("bit")
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x69)
	.dwattr $C$DW$146, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$54, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("CLKSRCCTL2_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$147, DW_AT_name("AUXOSCCLKSRCSEL")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$147, DW_AT_bit_size(0x02)
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0c)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$148, DW_AT_name("CANABCLKSEL")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$148, DW_AT_bit_size(0x02)
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0c)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$149, DW_AT_name("CANBBCLKSEL")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$149, DW_AT_bit_size(0x02)
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0c)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$150, DW_AT_name("rsvd1")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$150, DW_AT_bit_size(0x02)
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x70)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0c)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$151, DW_AT_name("rsvd2")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$151, DW_AT_bit_size(0x02)
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x71)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0c)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$152, DW_AT_name("MCANABITCLKSEL")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$152, DW_AT_bit_size(0x02)
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x72)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0c)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$153, DW_AT_name("rsvd3")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$153, DW_AT_bit_size(0x04)
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x73)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0c)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$154, DW_AT_name("rsvd4")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$154, DW_AT_bit_size(0x10)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x74)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("CLKSRCCTL2_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$155, DW_AT_name("all")
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x78)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0d)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$156, DW_AT_name("bit")
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x79)
	.dwattr $C$DW$156, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$56, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("CLKSRCCTL3_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$157, DW_AT_name("XCLKOUTSEL")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$157, DW_AT_bit_size(0x04)
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0c)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$158, DW_AT_name("rsvd1")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$158, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$158, DW_AT_decl_column(0x0c)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$159, DW_AT_name("rsvd2")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$159, DW_AT_bit_size(0x10)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("CLKSRCCTL3_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$160, DW_AT_name("all")
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x83)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0d)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$161, DW_AT_name("bit")
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x84)
	.dwattr $C$DW$161, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$58, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("CLK_CFG_REGS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x3a)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$162, DW_AT_name("CLKSEM")
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x164)
	.dwattr $C$DW$162, DW_AT_decl_column(0x2e)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$163, DW_AT_name("CLKCFGLOCK1")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x165)
	.dwattr $C$DW$163, DW_AT_decl_column(0x2e)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$164, DW_AT_name("rsvd1")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x166)
	.dwattr $C$DW$164, DW_AT_decl_column(0x2e)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$165, DW_AT_name("CLKSRCCTL1")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x167)
	.dwattr $C$DW$165, DW_AT_decl_column(0x2e)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$166, DW_AT_name("CLKSRCCTL2")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x168)
	.dwattr $C$DW$166, DW_AT_decl_column(0x2e)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$167, DW_AT_name("CLKSRCCTL3")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x169)
	.dwattr $C$DW$167, DW_AT_decl_column(0x2e)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$168, DW_AT_name("SYSPLLCTL1")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$168, DW_AT_decl_column(0x2e)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$169, DW_AT_name("rsvd2")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$169, DW_AT_decl_column(0x2e)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$170, DW_AT_name("SYSPLLMULT")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$170, DW_AT_decl_column(0x2e)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$171, DW_AT_name("SYSPLLSTS")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$171, DW_AT_decl_column(0x2e)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$172, DW_AT_name("AUXPLLCTL1")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$172, DW_AT_decl_column(0x2e)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$173, DW_AT_name("rsvd3")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$173, DW_AT_decl_column(0x2e)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$174, DW_AT_name("AUXPLLMULT")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x170)
	.dwattr $C$DW$174, DW_AT_decl_column(0x2e)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$175, DW_AT_name("AUXPLLSTS")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x171)
	.dwattr $C$DW$175, DW_AT_decl_column(0x2e)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$176, DW_AT_name("SYSCLKDIVSEL")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x172)
	.dwattr $C$DW$176, DW_AT_decl_column(0x2e)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$177, DW_AT_name("AUXCLKDIVSEL")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x173)
	.dwattr $C$DW$177, DW_AT_decl_column(0x2e)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$178, DW_AT_name("PERCLKDIVSEL")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x174)
	.dwattr $C$DW$178, DW_AT_decl_column(0x2e)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$179, DW_AT_name("XCLKOUTDIVSEL")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x175)
	.dwattr $C$DW$179, DW_AT_decl_column(0x2e)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$180, DW_AT_name("rsvd4")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x176)
	.dwattr $C$DW$180, DW_AT_decl_column(0x2e)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$181, DW_AT_name("LOSPCP")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x177)
	.dwattr $C$DW$181, DW_AT_decl_column(0x2e)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$182, DW_AT_name("MCDCR")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x178)
	.dwattr $C$DW$182, DW_AT_decl_column(0x2e)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$183, DW_AT_name("X1CNT")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x179)
	.dwattr $C$DW$183, DW_AT_decl_column(0x2e)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$184, DW_AT_name("XTALCR")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$184, DW_AT_decl_column(0x2e)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$185, DW_AT_name("rsvd5")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$185, DW_AT_decl_column(0x2e)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$186, DW_AT_name("ETHERCATCLKCTL")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$186, DW_AT_decl_column(0x2e)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$187, DW_AT_name("CMCLKCTL")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$187, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$61, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x163)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148
$C$DW$188	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$61)

$C$DW$T$148	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$188)

	.dwendtag $C$DW$TU$148


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("CMCLKCTL_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$189, DW_AT_name("CMDIVSRCSEL")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x156)
	.dwattr $C$DW$189, DW_AT_decl_column(0x0c)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$190, DW_AT_name("CMCLKDIV")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$190, DW_AT_bit_size(0x03)
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x157)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0c)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$191, DW_AT_name("ETHDIVSRCSEL")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x158)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0c)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$192, DW_AT_name("ETHDIV")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$192, DW_AT_bit_size(0x03)
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x159)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0c)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$193, DW_AT_name("rsvd1")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$193, DW_AT_bit_size(0x08)
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0c)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$194, DW_AT_name("rsvd2")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$194, DW_AT_bit_size(0x10)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("CMCLKCTL_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$195, DW_AT_name("all")
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0d)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$196, DW_AT_name("bit")
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x160)
	.dwattr $C$DW$196, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$63, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("ECC_ENABLE_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$197, DW_AT_name("ENABLE")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$197, DW_AT_bit_size(0x04)
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0c)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$198, DW_AT_name("rsvd1")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$198, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$198, DW_AT_decl_column(0x0c)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$199, DW_AT_name("rsvd2")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$199, DW_AT_bit_size(0x10)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("ECC_ENABLE_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$200, DW_AT_name("all")
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0xac)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0d)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$201, DW_AT_name("bit")
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0xad)
	.dwattr $C$DW$201, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$65, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("ERR_CNT_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$202, DW_AT_name("ERR_CNT")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$202, DW_AT_bit_size(0x10)
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$202, DW_AT_decl_column(0x0c)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$203, DW_AT_name("rsvd1")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$203, DW_AT_bit_size(0x10)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$66, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("ERR_CNT_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$204, DW_AT_name("all")
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0d)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$205, DW_AT_name("bit")
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$205, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$67, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("ERR_INTCLR_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$206, DW_AT_name("SINGLE_ERR_INTCLR")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x101)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0c)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$207, DW_AT_name("UNC_ERR_INTCLR")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x102)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0c)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$208, DW_AT_name("rsvd1")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$208, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x103)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0c)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$209, DW_AT_name("rsvd2")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$209, DW_AT_bit_size(0x10)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x104)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$68, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("ERR_INTCLR_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$210, DW_AT_name("all")
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x108)
	.dwattr $C$DW$210, DW_AT_decl_column(0x0d)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$211, DW_AT_name("bit")
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x109)
	.dwattr $C$DW$211, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$69, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x107)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("ERR_INTFLG_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x02)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$212, DW_AT_name("SINGLE_ERR_INTFLG")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0c)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$213, DW_AT_name("UNC_ERR_INTFLG")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0c)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$214, DW_AT_name("rsvd1")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$214, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0c)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$215, DW_AT_name("rsvd2")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$215, DW_AT_bit_size(0x10)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("ERR_INTFLG_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x02)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$216, DW_AT_name("all")
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0d)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$217, DW_AT_name("bit")
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$217, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$71, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("ERR_POS_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$218, DW_AT_name("ERR_POS_L")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$218, DW_AT_bit_size(0x06)
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0c)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$219, DW_AT_name("rsvd1")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$219, DW_AT_bit_size(0x02)
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0c)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$220, DW_AT_name("ERR_TYPE_L")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0c)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$221, DW_AT_name("rsvd2")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$221, DW_AT_bit_size(0x07)
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0c)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$222, DW_AT_name("ERR_POS_H")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$222, DW_AT_bit_size(0x06)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$222, DW_AT_decl_column(0x0c)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$223, DW_AT_name("rsvd3")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$223, DW_AT_bit_size(0x02)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0c)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$224, DW_AT_name("ERR_TYPE_H")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0c)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$225, DW_AT_name("rsvd4")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$225, DW_AT_bit_size(0x07)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("ERR_POS_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x02)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$226, DW_AT_name("all")
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$226, DW_AT_decl_column(0x0d)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$227, DW_AT_name("bit")
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$227, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$73, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("ERR_STATUS_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$228, DW_AT_name("FAIL_0_L")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0c)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$229, DW_AT_name("FAIL_1_L")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0c)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$230, DW_AT_name("UNC_ERR_L")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0c)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$231, DW_AT_name("rsvd1")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$231, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0c)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$232, DW_AT_name("FAIL_0_H")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$232, DW_AT_decl_column(0x0c)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$233, DW_AT_name("FAIL_1_H")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0c)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$234, DW_AT_name("UNC_ERR_H")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$234, DW_AT_decl_column(0x0c)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$235, DW_AT_name("rsvd2")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$235, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$235, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("ERR_STATUS_CLR_BITS")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$236, DW_AT_name("FAIL_0_L_CLR")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$236, DW_AT_decl_column(0x0c)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$237, DW_AT_name("FAIL_1_L_CLR")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$237, DW_AT_decl_column(0x0c)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$238, DW_AT_name("UNC_ERR_L_CLR")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$238, DW_AT_decl_column(0x0c)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$239, DW_AT_name("rsvd1")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$239, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$239, DW_AT_decl_column(0x0c)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$240, DW_AT_name("FAIL_0_H_CLR")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$240, DW_AT_decl_column(0x0c)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$241, DW_AT_name("FAIL_1_H_CLR")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$241, DW_AT_decl_column(0x0c)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$242, DW_AT_name("UNC_ERR_H_CLR")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$242, DW_AT_decl_column(0x0c)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$243, DW_AT_name("rsvd2")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$243, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$243, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$75, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$76, DW_AT_name("ERR_STATUS_CLR_REG")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x02)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$244, DW_AT_name("all")
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$244, DW_AT_decl_column(0x0d)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$245, DW_AT_name("bit")
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$245, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$76, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("ERR_STATUS_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x02)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$246, DW_AT_name("all")
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$246, DW_AT_decl_column(0x0d)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$247, DW_AT_name("bit")
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$247, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$77, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("ERR_THRESHOLD_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$248, DW_AT_name("ERR_THRESHOLD")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$248, DW_AT_bit_size(0x10)
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$248, DW_AT_decl_column(0x0c)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$249, DW_AT_name("rsvd1")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$249, DW_AT_bit_size(0x10)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0xec)
	.dwattr $C$DW$249, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$78, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("ERR_THRESHOLD_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$250, DW_AT_name("all")
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$250, DW_AT_decl_column(0x0d)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$251, DW_AT_name("bit")
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$251, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$79, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0xef)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("ETHERCATCLKCTL_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x02)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$252, DW_AT_name("DIVSRCSEL")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x148)
	.dwattr $C$DW$252, DW_AT_decl_column(0x0c)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$253, DW_AT_name("ECATDIV")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$253, DW_AT_bit_size(0x03)
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x149)
	.dwattr $C$DW$253, DW_AT_decl_column(0x0c)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$254, DW_AT_name("rsvd1")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$254, DW_AT_bit_size(0x04)
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$254, DW_AT_decl_column(0x0c)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$255, DW_AT_name("PHYCLKEN")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$255, DW_AT_decl_column(0x0c)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$256, DW_AT_name("rsvd2")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$256, DW_AT_bit_size(0x07)
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$256, DW_AT_decl_column(0x0c)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$257, DW_AT_name("rsvd3")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$257, DW_AT_bit_size(0x10)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$257, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$80, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("ETHERCATCLKCTL_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x02)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$258, DW_AT_name("all")
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x151)
	.dwattr $C$DW$258, DW_AT_decl_column(0x0d)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$259, DW_AT_name("bit")
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x152)
	.dwattr $C$DW$259, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$81, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("FADDR_TEST_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x02)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$260, DW_AT_name("rsvd1")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$260, DW_AT_bit_size(0x03)
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$260, DW_AT_decl_column(0x0c)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$261, DW_AT_name("ADDRL")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$261, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$261, DW_AT_decl_column(0x0c)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$262, DW_AT_name("ADDRH")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$262, DW_AT_bit_size(0x06)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$262, DW_AT_decl_column(0x0c)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$263, DW_AT_name("rsvd2")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$263, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x110)
	.dwattr $C$DW$263, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$82, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("FADDR_TEST_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x02)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$264, DW_AT_name("all")
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x114)
	.dwattr $C$DW$264, DW_AT_decl_column(0x0d)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$265, DW_AT_name("bit")
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x115)
	.dwattr $C$DW$265, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$83, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x113)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("FBAC_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x02)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$266, DW_AT_name("rsvd1")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$266, DW_AT_bit_size(0x08)
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x43)
	.dwattr $C$DW$266, DW_AT_decl_column(0x0c)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$267, DW_AT_name("BAGP")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$267, DW_AT_bit_size(0x08)
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x44)
	.dwattr $C$DW$267, DW_AT_decl_column(0x0c)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$268, DW_AT_name("rsvd2")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$268, DW_AT_bit_size(0x10)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x45)
	.dwattr $C$DW$268, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$84, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("FBAC_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x02)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$269, DW_AT_name("all")
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x49)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0d)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$270, DW_AT_name("bit")
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$270, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$85, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("FBFALLBACK_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x02)
$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$271, DW_AT_name("BNKPWR0")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$271, DW_AT_bit_size(0x02)
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$271, DW_AT_decl_column(0x0c)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$272, DW_AT_name("rsvd1")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$272, DW_AT_bit_size(0x02)
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$272, DW_AT_decl_column(0x0c)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$273, DW_AT_name("rsvd2")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$273, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x50)
	.dwattr $C$DW$273, DW_AT_decl_column(0x0c)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$274, DW_AT_name("rsvd3")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$274, DW_AT_bit_size(0x10)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x51)
	.dwattr $C$DW$274, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$86, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("FBFALLBACK_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x02)
$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$275, DW_AT_name("all")
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x55)
	.dwattr $C$DW$275, DW_AT_decl_column(0x0d)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$276, DW_AT_name("bit")
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x56)
	.dwattr $C$DW$276, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$87, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("FBPRDY_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x02)
$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$277, DW_AT_name("BANKRDY")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$277, DW_AT_decl_column(0x0c)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$278, DW_AT_name("rsvd1")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$278, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$278, DW_AT_decl_column(0x0c)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$279, DW_AT_name("PUMPRDY")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$279, DW_AT_decl_column(0x0c)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$280, DW_AT_name("rsvd2")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$280, DW_AT_bit_size(0x10)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$280, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$88, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("FBPRDY_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x02)
$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$281, DW_AT_name("all")
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x61)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0d)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$282, DW_AT_name("bit")
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x62)
	.dwattr $C$DW$282, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$89, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("FECC_CTRL_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x02)
$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$283, DW_AT_name("ECC_TEST_EN")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x124)
	.dwattr $C$DW$283, DW_AT_decl_column(0x0c)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$284, DW_AT_name("ECC_SELECT")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x125)
	.dwattr $C$DW$284, DW_AT_decl_column(0x0c)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$285, DW_AT_name("DO_ECC_CALC")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x126)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0c)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$286, DW_AT_name("rsvd1")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$286, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x127)
	.dwattr $C$DW$286, DW_AT_decl_column(0x0c)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$287, DW_AT_name("rsvd2")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$287, DW_AT_bit_size(0x10)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x128)
	.dwattr $C$DW$287, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$90, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$90

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("FECC_CTRL_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$288, DW_AT_name("all")
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$288, DW_AT_decl_column(0x0d)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$289, DW_AT_name("bit")
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$289, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$91, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92

$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("FECC_STATUS_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x02)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$290, DW_AT_name("SINGLE_ERR")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x131)
	.dwattr $C$DW$290, DW_AT_decl_column(0x0c)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$291, DW_AT_name("UNC_ERR")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x132)
	.dwattr $C$DW$291, DW_AT_decl_column(0x0c)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$292, DW_AT_name("DATA_ERR_POS")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$292, DW_AT_bit_size(0x06)
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x133)
	.dwattr $C$DW$292, DW_AT_decl_column(0x0c)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$293, DW_AT_name("ERR_TYPE")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x134)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0c)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$294, DW_AT_name("rsvd1")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$294, DW_AT_bit_size(0x07)
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x135)
	.dwattr $C$DW$294, DW_AT_decl_column(0x0c)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$295, DW_AT_name("rsvd2")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$295, DW_AT_bit_size(0x10)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x136)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$92, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x130)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$92

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("FECC_STATUS_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$296, DW_AT_name("all")
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0d)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$297, DW_AT_name("bit")
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$297, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$93, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x139)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("FECC_TEST_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x02)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$298, DW_AT_name("ECC")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$298, DW_AT_bit_size(0x08)
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x119)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0c)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$299, DW_AT_name("rsvd1")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$299, DW_AT_bit_size(0x08)
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$299, DW_AT_decl_column(0x0c)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$300, DW_AT_name("rsvd2")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$300, DW_AT_bit_size(0x10)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$94, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x118)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$94

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("FECC_TEST_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x02)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$301, DW_AT_name("all")
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0d)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$302, DW_AT_name("bit")
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x120)
	.dwattr $C$DW$302, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$95, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98

$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("FLASH_CTRL_REGS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x182)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$303, DW_AT_name("FRDCNTL")
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x99)
	.dwattr $C$DW$303, DW_AT_decl_column(0x2e)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$304, DW_AT_name("rsvd1")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$304, DW_AT_decl_column(0x2e)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$305, DW_AT_name("FBAC")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$305, DW_AT_decl_column(0x2e)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$306, DW_AT_name("FBFALLBACK")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$306, DW_AT_decl_column(0x2e)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$307, DW_AT_name("FBPRDY")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$307, DW_AT_decl_column(0x2e)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$308, DW_AT_name("FPAC1")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$308, DW_AT_decl_column(0x2e)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$309, DW_AT_name("rsvd2")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$309, DW_AT_decl_column(0x2e)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$310, DW_AT_name("FMSTAT")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$310, DW_AT_decl_column(0x2e)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$311, DW_AT_name("rsvd3")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$311, DW_AT_decl_column(0x2e)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$312, DW_AT_name("FRD_INTF_CTRL")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$312, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$98, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$98

	.dwendtag $C$DW$TU$98


$C$DW$TU$153	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$153
$C$DW$313	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$98)

$C$DW$T$153	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$313)

	.dwendtag $C$DW$TU$153


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_name("FLASH_ECC_REGS")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x28)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$314, DW_AT_name("ECC_ENABLE")
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$314, DW_AT_decl_column(0x2e)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$315, DW_AT_name("SINGLE_ERR_ADDR_LOW")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x140)
	.dwattr $C$DW$315, DW_AT_decl_column(0x2e)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$316, DW_AT_name("SINGLE_ERR_ADDR_HIGH")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x141)
	.dwattr $C$DW$316, DW_AT_decl_column(0x2e)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$317, DW_AT_name("UNC_ERR_ADDR_LOW")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x142)
	.dwattr $C$DW$317, DW_AT_decl_column(0x2e)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$318, DW_AT_name("UNC_ERR_ADDR_HIGH")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x143)
	.dwattr $C$DW$318, DW_AT_decl_column(0x2e)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$319, DW_AT_name("ERR_STATUS")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x144)
	.dwattr $C$DW$319, DW_AT_decl_column(0x2e)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$320, DW_AT_name("ERR_POS")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x145)
	.dwattr $C$DW$320, DW_AT_decl_column(0x2e)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$321, DW_AT_name("ERR_STATUS_CLR")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x146)
	.dwattr $C$DW$321, DW_AT_decl_column(0x2e)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$322, DW_AT_name("ERR_CNT")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x147)
	.dwattr $C$DW$322, DW_AT_decl_column(0x2e)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$323, DW_AT_name("ERR_THRESHOLD")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x148)
	.dwattr $C$DW$323, DW_AT_decl_column(0x2e)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$324, DW_AT_name("ERR_INTFLG")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x149)
	.dwattr $C$DW$324, DW_AT_decl_column(0x2e)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$325, DW_AT_name("ERR_INTCLR")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$325, DW_AT_decl_column(0x2e)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$326, DW_AT_name("FDATAH_TEST")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$326, DW_AT_decl_column(0x2e)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$327, DW_AT_name("FDATAL_TEST")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$327, DW_AT_decl_column(0x2e)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$328, DW_AT_name("FADDR_TEST")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$328, DW_AT_decl_column(0x2e)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$329, DW_AT_name("FECC_TEST")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$329, DW_AT_decl_column(0x2e)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$330, DW_AT_name("FECC_CTRL")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$330, DW_AT_decl_column(0x2e)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$331, DW_AT_name("FOUTH_TEST")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x150)
	.dwattr $C$DW$331, DW_AT_decl_column(0x2e)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$332, DW_AT_name("FOUTL_TEST")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x151)
	.dwattr $C$DW$332, DW_AT_decl_column(0x2e)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$333, DW_AT_name("FECC_STATUS")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x152)
	.dwattr $C$DW$333, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$99, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154
$C$DW$334	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$99)

$C$DW$T$154	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$334)

	.dwendtag $C$DW$TU$154


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100

$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("FMSTAT_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x02)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$335, DW_AT_name("rsvd1")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x72)
	.dwattr $C$DW$335, DW_AT_decl_column(0x0c)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$336, DW_AT_name("rsvd2")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x73)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0c)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$337, DW_AT_name("rsvd3")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x74)
	.dwattr $C$DW$337, DW_AT_decl_column(0x0c)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$338, DW_AT_name("VOLTSTAT")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x75)
	.dwattr $C$DW$338, DW_AT_decl_column(0x0c)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$339, DW_AT_name("CSTAT")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x76)
	.dwattr $C$DW$339, DW_AT_decl_column(0x0c)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$340, DW_AT_name("INVDAT")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x77)
	.dwattr $C$DW$340, DW_AT_decl_column(0x0c)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$341, DW_AT_name("PGM")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x78)
	.dwattr $C$DW$341, DW_AT_decl_column(0x0c)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$342, DW_AT_name("ERS")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x79)
	.dwattr $C$DW$342, DW_AT_decl_column(0x0c)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$343, DW_AT_name("Busy")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$343, DW_AT_decl_column(0x0c)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$344, DW_AT_name("rsvd4")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$344, DW_AT_decl_column(0x0c)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$345, DW_AT_name("EV")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$345, DW_AT_decl_column(0x0c)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$346, DW_AT_name("rsvd5")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0c)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$347, DW_AT_name("PGV")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0c)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$348, DW_AT_name("rsvd6")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0c)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$349, DW_AT_name("ILA")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x80)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0c)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$350, DW_AT_name("rsvd7")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x81)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0c)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$351, DW_AT_name("rsvd8")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x82)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$352, DW_AT_name("rsvd9")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x83)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0c)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$353, DW_AT_name("rsvd10")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$353, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x84)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$100, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$100

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("FMSTAT_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x02)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$354, DW_AT_name("all")
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x88)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0d)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$355, DW_AT_name("bit")
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x89)
	.dwattr $C$DW$355, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$101, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("FPAC1_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x02)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$356, DW_AT_name("PMPPWR")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x66)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0c)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$357, DW_AT_name("rsvd1")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$357, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x67)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$358, DW_AT_name("PSLEEP")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$358, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x68)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$359, DW_AT_name("rsvd2")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$359, DW_AT_bit_size(0x04)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x69)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$102, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$102

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("FPAC1_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x02)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$360, DW_AT_name("all")
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0d)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$361, DW_AT_name("bit")
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$361, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$103, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104

$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("FRDCNTL_BITS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x02)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$362, DW_AT_name("rsvd1")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$362, DW_AT_bit_size(0x08)
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x37)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0c)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$363, DW_AT_name("RWAIT")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$363, DW_AT_bit_size(0x04)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x38)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$364, DW_AT_name("rsvd2")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$364, DW_AT_bit_size(0x04)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x39)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$365, DW_AT_name("rsvd3")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$365, DW_AT_bit_size(0x10)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$104, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$104

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_name("FRDCNTL_REG")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x02)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$366, DW_AT_name("all")
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0d)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$367, DW_AT_name("bit")
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$367, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$105, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("FRD_INTF_CTRL_BITS")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x02)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$368, DW_AT_name("PREFETCH_EN")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$369, DW_AT_name("DATA_CACHE_EN")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$370, DW_AT_name("rsvd1")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$370, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$371, DW_AT_name("rsvd2")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$371, DW_AT_bit_size(0x10)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x90)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$106, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$106

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_name("FRD_INTF_CTRL_REG")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x02)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$372, DW_AT_name("all")
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x94)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0d)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$373, DW_AT_name("bit")
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x95)
	.dwattr $C$DW$373, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$107, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_flash.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("LOSPCP_BITS")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x02)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$374, DW_AT_name("LSPCLKDIV")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$374, DW_AT_bit_size(0x03)
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x116)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$375, DW_AT_name("rsvd1")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$375, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x117)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$376, DW_AT_name("rsvd2")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$376, DW_AT_bit_size(0x10)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x118)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$108, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$108

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_name("LOSPCP_REG")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x02)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$377, DW_AT_name("all")
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0d)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$378, DW_AT_name("bit")
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$378, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$109, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("MCDCR_BITS")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x02)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$379, DW_AT_name("MCLKSTS")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x121)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0c)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$380, DW_AT_name("MCLKCLR")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x122)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$381, DW_AT_name("MCLKOFF")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x123)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$382, DW_AT_name("OSCOFF")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x124)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$383, DW_AT_name("rsvd1")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$383, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x125)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$384, DW_AT_name("rsvd2")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$384, DW_AT_bit_size(0x10)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x126)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$110, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x120)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_name("MCDCR_REG")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x02)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$385, DW_AT_name("all")
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0d)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$386, DW_AT_name("bit")
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$386, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$111, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112

$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("PERCLKDIVSEL_BITS")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x02)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$387, DW_AT_name("EPWMCLKDIV")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$387, DW_AT_bit_size(0x02)
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0c)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$388, DW_AT_name("rsvd1")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$388, DW_AT_bit_size(0x02)
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0c)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$389, DW_AT_name("EMIF1CLKDIV")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$390, DW_AT_name("rsvd2")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0xff)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$391, DW_AT_name("EMIF2CLKDIV")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x100)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$392, DW_AT_name("rsvd3")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$392, DW_AT_bit_size(0x09)
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x101)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$393, DW_AT_name("rsvd4")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$393, DW_AT_bit_size(0x10)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x102)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$112, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$112

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$113, DW_AT_name("PERCLKDIVSEL_REG")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x02)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$394, DW_AT_name("all")
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x106)
	.dwattr $C$DW$394, DW_AT_decl_column(0x0d)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$395, DW_AT_name("bit")
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x107)
	.dwattr $C$DW$395, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$113, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x105)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114

$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_name("SCSR_BITS")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$396, DW_AT_name("WDOVERRIDE")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x37)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$397, DW_AT_name("WDENINT")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x38)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$398, DW_AT_name("WDINTS")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x39)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$399, DW_AT_name("rsvd1")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$399, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$114, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$114

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115

$C$DW$T$115	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$115, DW_AT_name("SCSR_REG")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$400, DW_AT_name("all")
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0d)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$401, DW_AT_name("bit")
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$401, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$115, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$115

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("SYSCLKDIVSEL_BITS")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x02)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$402, DW_AT_name("PLLSYSCLKDIV")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$402, DW_AT_bit_size(0x06)
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$403, DW_AT_name("rsvd1")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$403, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$404, DW_AT_name("rsvd2")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$404, DW_AT_bit_size(0x10)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$116, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$116

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117

$C$DW$T$117	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$117, DW_AT_name("SYSCLKDIVSEL_REG")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x02)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$405, DW_AT_name("all")
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0xea)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0d)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$406, DW_AT_name("bit")
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$406, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$117, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$117

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118

$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("SYSPLLCTL1_BITS")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x02)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$407, DW_AT_name("PLLEN")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x88)
	.dwattr $C$DW$407, DW_AT_decl_column(0x0c)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$408, DW_AT_name("PLLCLKEN")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x89)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0c)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$409, DW_AT_name("VCO_PWDN")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0c)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$410, DW_AT_name("AVG_SLIP_FLTR_EN")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$411, DW_AT_name("REF_LOST_EN")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$412, DW_AT_name("rsvd1")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$412, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$413, DW_AT_name("rsvd2")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$413, DW_AT_bit_size(0x10)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$118, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$118

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$119, DW_AT_name("SYSPLLCTL1_REG")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x02)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$414, DW_AT_name("all")
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x92)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0d)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$415, DW_AT_name("bit")
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x93)
	.dwattr $C$DW$415, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$119, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("SYSPLLMULT_BITS")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x02)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$416, DW_AT_name("IMULT")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$416, DW_AT_bit_size(0x08)
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x97)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0c)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$417, DW_AT_name("FMULT")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$417, DW_AT_bit_size(0x02)
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x98)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0c)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$418, DW_AT_name("rsvd1")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$418, DW_AT_bit_size(0x02)
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x99)
	.dwattr $C$DW$418, DW_AT_decl_column(0x0c)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$419, DW_AT_name("rsvd2")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$419, DW_AT_bit_size(0x02)
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0c)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$420, DW_AT_name("rsvd3")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$420, DW_AT_bit_size(0x02)
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$420, DW_AT_decl_column(0x0c)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$421, DW_AT_name("ODIV")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$421, DW_AT_bit_size(0x05)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0c)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$422, DW_AT_name("rsvd4")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$422, DW_AT_bit_size(0x03)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0c)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$423, DW_AT_name("REFDIV")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$423, DW_AT_bit_size(0x05)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$424, DW_AT_name("rsvd5")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$424, DW_AT_bit_size(0x03)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$120, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$120

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121

$C$DW$T$121	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$121, DW_AT_name("SYSPLLMULT_REG")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x02)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$425, DW_AT_name("all")
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0d)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$426, DW_AT_name("bit")
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$426, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$121, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$121

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122

$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("SYSPLLSTS_BITS")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x02)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$427, DW_AT_name("LOCKS")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$427, DW_AT_decl_column(0x0c)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$428, DW_AT_name("SLIPS")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$429, DW_AT_name("QSLIPS")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0c)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$430, DW_AT_name("REF_LOSTS")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0xab)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0c)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$431, DW_AT_name("rsvd1")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$431, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0xac)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$432, DW_AT_name("rsvd2")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$432, DW_AT_bit_size(0x10)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0xad)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$122, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$122

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123

$C$DW$T$123	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$123, DW_AT_name("SYSPLLSTS_REG")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x02)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$433, DW_AT_name("all")
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0d)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$434, DW_AT_name("bit")
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$434, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$123, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$123

	.dwendtag $C$DW$TU$123


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124

$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("WDCNTR_BITS")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x01)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$435, DW_AT_name("WDCNTR")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$435, DW_AT_bit_size(0x08)
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x43)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$436, DW_AT_name("rsvd1")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$436, DW_AT_bit_size(0x08)
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x44)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$124, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$124

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125

$C$DW$T$125	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$125, DW_AT_name("WDCNTR_REG")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$437, DW_AT_name("all")
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x48)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0d)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$438, DW_AT_name("bit")
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x49)
	.dwattr $C$DW$438, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$125, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$125

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126

$C$DW$T$126	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$126, DW_AT_name("WDCR_BITS")
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x01)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$439, DW_AT_name("WDPS")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$439, DW_AT_bit_size(0x03)
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x57)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$440, DW_AT_name("WDCHK")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$440, DW_AT_bit_size(0x03)
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x58)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$441, DW_AT_name("WDDIS")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x59)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$442, DW_AT_name("WDFLG")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$442, DW_AT_decl_column(0x0c)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$443, DW_AT_name("WDPRECLKDIV")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$443, DW_AT_bit_size(0x04)
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$444, DW_AT_name("rsvd1")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$444, DW_AT_bit_size(0x04)
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$126, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$126

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$127, DW_AT_name("WDCR_REG")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x01)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$445, DW_AT_name("all")
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x60)
	.dwattr $C$DW$445, DW_AT_decl_column(0x0d)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$446, DW_AT_name("bit")
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x61)
	.dwattr $C$DW$446, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$127, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128

$C$DW$T$128	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$128, DW_AT_name("WDKEY_BITS")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$447, DW_AT_name("WDKEY")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$447, DW_AT_bit_size(0x08)
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0c)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$448, DW_AT_name("rsvd1")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$448, DW_AT_bit_size(0x08)
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$128, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$128

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129

$C$DW$T$129	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$129, DW_AT_name("WDKEY_REG")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$449, DW_AT_name("all")
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x52)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0d)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$450, DW_AT_name("bit")
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x53)
	.dwattr $C$DW$450, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$129, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$129

	.dwendtag $C$DW$TU$129


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("WDWCR_BITS")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x01)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$451, DW_AT_name("MIN")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$451, DW_AT_bit_size(0x08)
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x65)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$452, DW_AT_name("FIRSTKEY")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x66)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$453, DW_AT_name("rsvd1")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$453, DW_AT_bit_size(0x07)
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x67)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$130, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$130

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131

$C$DW$T$131	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$131, DW_AT_name("WDWCR_REG")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x01)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$454, DW_AT_name("all")
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0d)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$455, DW_AT_name("bit")
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$455, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$131, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$131

	.dwendtag $C$DW$TU$131


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134

$C$DW$T$134	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$134, DW_AT_name("WD_REGS")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x2b)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$456, DW_AT_name("rsvd1")
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x70)
	.dwattr $C$DW$456, DW_AT_decl_column(0x2e)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$457, DW_AT_name("SCSR")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x71)
	.dwattr $C$DW$457, DW_AT_decl_column(0x2e)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$458, DW_AT_name("WDCNTR")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x72)
	.dwattr $C$DW$458, DW_AT_decl_column(0x2e)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$459, DW_AT_name("rsvd2")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x73)
	.dwattr $C$DW$459, DW_AT_decl_column(0x2e)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$460, DW_AT_name("WDKEY")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x74)
	.dwattr $C$DW$460, DW_AT_decl_column(0x2e)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$461, DW_AT_name("rsvd3")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x75)
	.dwattr $C$DW$461, DW_AT_decl_column(0x2e)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$462, DW_AT_name("WDCR")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x76)
	.dwattr $C$DW$462, DW_AT_decl_column(0x2e)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$463, DW_AT_name("WDWCR")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x77)
	.dwattr $C$DW$463, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$134, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_wwd.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$134

	.dwendtag $C$DW$TU$134


$C$DW$TU$165	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$165
$C$DW$464	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$134)

$C$DW$T$165	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$464)

	.dwendtag $C$DW$TU$165


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135

$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("X1CNT_BITS")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x02)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$465, DW_AT_name("X1CNT")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$465, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0c)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$466, DW_AT_name("rsvd1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$466, DW_AT_bit_size(0x06)
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x130)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0c)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$467, DW_AT_name("CLR")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x131)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0c)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$468, DW_AT_name("rsvd2")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$468, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x132)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$135, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$135

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136

$C$DW$T$136	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$136, DW_AT_name("X1CNT_REG")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x02)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$469, DW_AT_name("all")
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x136)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0d)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$470, DW_AT_name("bit")
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x137)
	.dwattr $C$DW$470, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$136, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x135)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$136

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137

$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("XCLKOUTDIVSEL_BITS")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x02)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$471, DW_AT_name("XCLKOUTDIV")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$471, DW_AT_bit_size(0x02)
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0c)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$472, DW_AT_name("rsvd1")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$472, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0c)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$473, DW_AT_name("rsvd2")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$473, DW_AT_bit_size(0x10)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$137, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$137

	.dwendtag $C$DW$TU$137


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138

$C$DW$T$138	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$138, DW_AT_name("XCLKOUTDIVSEL_REG")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x02)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$474, DW_AT_name("all")
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x111)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0d)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$475, DW_AT_name("bit")
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x112)
	.dwattr $C$DW$475, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$138, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$138

	.dwendtag $C$DW$TU$138


$C$DW$TU$139	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$139

$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("XTALCR_BITS")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x02)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$476, DW_AT_name("OSCOFF")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0c)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$477, DW_AT_name("SE")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0c)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$478, DW_AT_name("SWH")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0c)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$479, DW_AT_name("rsvd1")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$479, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0c)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$480, DW_AT_name("rsvd2")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$480, DW_AT_bit_size(0x10)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$139, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$139

	.dwendtag $C$DW$TU$139


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140

$C$DW$T$140	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$140, DW_AT_name("XTALCR_REG")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x02)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$481, DW_AT_name("all")
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x143)
	.dwattr $C$DW$481, DW_AT_decl_column(0x0d)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$482, DW_AT_name("bit")
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x144)
	.dwattr $C$DW$482, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$140, DW_AT_decl_file("..\Drivers\..\F2838x_utils\f2838x_sysctrl.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x142)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$140

	.dwendtag $C$DW$TU$140


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


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("Uint16")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_decl_file("..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$39


$C$DW$TU$172	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$172
$C$DW$483	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$39)

$C$DW$T$172	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$483)

	.dwendtag $C$DW$TU$172


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x04)
$C$DW$484	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$484, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$485	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$485, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96

$C$DW$T$96	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x1c)
$C$DW$486	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$486, DW_AT_upper_bound(0x1b)

	.dwendtag $C$DW$T$96

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x154)
$C$DW$487	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$487, DW_AT_upper_bound(0x153)

	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132

$C$DW$T$132	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x22)
$C$DW$488	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$488, DW_AT_upper_bound(0x21)

	.dwendtag $C$DW$T$132

	.dwendtag $C$DW$TU$132


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133

$C$DW$T$133	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x03)
$C$DW$489	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$489, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$133

	.dwendtag $C$DW$TU$133


$C$DW$TU$167	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$167
$C$DW$T$167	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$167, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$167, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$167


$C$DW$TU$168	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$168
$C$DW$T$168	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$168, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$168, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$168, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$168, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$168


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


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("Uint32")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$41, DW_AT_decl_file("..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$41


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
$C$DW$490	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$490, DW_AT_upper_bound(0x07)

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

