;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v20.2.5.LTS *
;* Date/Time created: Wed Jul  6 18:49:05 2022                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw1p5\BolshoyManipCpu2\CPU2")
;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-c2000_20.2.5.LTS\bin\acia2000.exe -@C:\\Users\\User\\AppData\\Local\\Temp\\{72D23EC8-0850-458C-B57D-A9C51CBD7C17} 
	.sect	".text:SysCtl_enablePeripheral"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$1, DW_AT_low_pc(||SysCtl_enablePeripheral||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x615)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1558,column 1,is_stmt,address ||SysCtl_enablePeripheral||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_enablePeripheral||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("peripheral")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]


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
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("peripheral")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -1]

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("regIndex")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -2]

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("bitIndex")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[1],AL            ; [CPU_ALU] |1558| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1565,column 5,is_stmt,isa 0
        ANDB      AL,#0x1f              ; [CPU_ALU] |1565| 
        LSL       AL,1                  ; [CPU_ALU] |1565| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |1565| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1567,column 5,is_stmt,isa 0
        AND       AL,*-SP[1],#0x1f00    ; [CPU_ALU] |1567| 
        LSR       AL,8                  ; [CPU_ALU] |1567| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |1567| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1570,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1575,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1575| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1575| 
        ADDU      ACC,*-SP[2]           ; [CPU_ALU] |1575| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |1575| 
        MOV       T,*-SP[3]             ; [CPU_ALU] |1575| 
        MOVB      ACC,#1                ; [CPU_ALU] |1575| 
        LSLL      ACC,T                 ; [CPU_ALU] |1575| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |1575| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |1575| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1577,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 1578,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x62a)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:SysCtl_disableWatchdog"
	.clink

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("SysCtl_disableWatchdog")
	.dwattr $C$DW$7, DW_AT_low_pc(||SysCtl_disableWatchdog||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("SysCtl_disableWatchdog")
	.dwattr $C$DW$7, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x957)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 2392,column 1,is_stmt,address ||SysCtl_disableWatchdog||,isa 0

	.dwfde $C$DW$CIE, ||SysCtl_disableWatchdog||

;***************************************************************
;* FNAME: SysCtl_disableWatchdog        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SysCtl_disableWatchdog||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 2393,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 2398,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7029)        ; [CPU_ALU] |2398| 
        ORB       AL,#0x68              ; [CPU_ALU] |2398| 
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |2398| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 2400,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h",line 2401,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x961)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:GPIO_unlockPortConfig"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$9, DW_AT_low_pc(||GPIO_unlockPortConfig||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x2fc)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h",line 765,column 1,is_stmt,address ||GPIO_unlockPortConfig||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_unlockPortConfig||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("port")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("pinMask")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: GPIO_unlockPortConfig         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||GPIO_unlockPortConfig||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("pinMask")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -2]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("gpioDataReg")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -4]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("port")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -5]

        MOV       *-SP[5],AR4           ; [CPU_ALU] |765| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |765| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h",line 771,column 5,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[5] << 5      ; [CPU_ALU] |771| 
        LSL       ACC,1                 ; [CPU_ALU] |771| 
        ADD       ACC,#31 << 10         ; [CPU_ALU] |771| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |771| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h",line 774,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h",line 775,column 5,is_stmt,isa 0
        MOVB      ACC,#60               ; [CPU_ALU] |775| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |775| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |775| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |775| 
        NOT       ACC                   ; [CPU_ALU] |775| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |775| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |775| 
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h",line 776,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h",line 777,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x309)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:Device_init"
	.clink
	.global	||Device_init||

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("Device_init")
	.dwattr $C$DW$16, DW_AT_low_pc(||Device_init||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x38)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 57,column 1,is_stmt,address ||Device_init||,isa 0

	.dwfde $C$DW$CIE, ||Device_init||

;***************************************************************
;* FNAME: Device_init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 61,column 5,is_stmt,isa 0
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("SysCtl_disableWatchdog")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #||SysCtl_disableWatchdog|| ; [CPU_ALU] |61| 
        ; call occurs [#||SysCtl_disableWatchdog||] ; [] |61| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 100,column 5,is_stmt,isa 0
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("Device_enableAllPeripherals")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #||Device_enableAllPeripherals|| ; [CPU_ALU] |100| 
        ; call occurs [#||Device_enableAllPeripherals||] ; [] |100| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 101,column 5,is_stmt,isa 0
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #||Device_initGPIO||  ; [CPU_ALU] |101| 
        ; call occurs [#||Device_initGPIO||] ; [] |101| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 118,column 1,is_stmt,isa 0
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x76)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:Device_enableAllPeripherals"
	.clink
	.global	||Device_enableAllPeripherals||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("Device_enableAllPeripherals")
	.dwattr $C$DW$21, DW_AT_low_pc(||Device_enableAllPeripherals||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("Device_enableAllPeripherals")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x80)
	.dwattr $C$DW$21, DW_AT_decl_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 129,column 1,is_stmt,address ||Device_enableAllPeripherals||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableAllPeripherals||

;***************************************************************
;* FNAME: Device_enableAllPeripherals   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_enableAllPeripherals||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 131,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |131| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |131| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |131| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 132,column 5,is_stmt,isa 0
        MOV       AL,#512               ; [CPU_ALU] |132| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |132| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |132| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 133,column 5,is_stmt,isa 0
        MOV       AL,#768               ; [CPU_ALU] |133| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |133| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |133| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 134,column 5,is_stmt,isa 0
        MOV       AL,#1024              ; [CPU_ALU] |134| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |134| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |134| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 135,column 5,is_stmt,isa 0
        MOV       AL,#1280              ; [CPU_ALU] |135| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |135| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |135| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 136,column 5,is_stmt,isa 0
        MOV       AL,#3328              ; [CPU_ALU] |136| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |136| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |136| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 137,column 5,is_stmt,isa 0
        MOV       AL,#3584              ; [CPU_ALU] |137| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |137| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |137| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 141,column 5,is_stmt,isa 0
        MOV       AL,#4608              ; [CPU_ALU] |141| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |141| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |141| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 142,column 5,is_stmt,isa 0
        MOV       AL,#4864              ; [CPU_ALU] |142| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |142| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |142| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 143,column 5,is_stmt,isa 0
        MOV       AL,#6144              ; [CPU_ALU] |143| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |143| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |143| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 150,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |150| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |150| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |150| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 151,column 5,is_stmt,isa 0
        MOV       AL,#258               ; [CPU_ALU] |151| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |151| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |151| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 152,column 5,is_stmt,isa 0
        MOV       AL,#514               ; [CPU_ALU] |152| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |152| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |152| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 153,column 5,is_stmt,isa 0
        MOV       AL,#770               ; [CPU_ALU] |153| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |153| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |153| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 154,column 5,is_stmt,isa 0
        MOV       AL,#1026              ; [CPU_ALU] |154| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |154| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |154| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 155,column 5,is_stmt,isa 0
        MOV       AL,#1282              ; [CPU_ALU] |155| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |155| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |155| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 156,column 5,is_stmt,isa 0
        MOV       AL,#1538              ; [CPU_ALU] |156| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |156| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |156| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 157,column 5,is_stmt,isa 0
        MOV       AL,#1794              ; [CPU_ALU] |157| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |157| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |157| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 158,column 5,is_stmt,isa 0
        MOV       AL,#2050              ; [CPU_ALU] |158| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |158| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |158| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 159,column 5,is_stmt,isa 0
        MOV       AL,#2306              ; [CPU_ALU] |159| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |159| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |159| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 160,column 5,is_stmt,isa 0
        MOV       AL,#2562              ; [CPU_ALU] |160| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |160| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |160| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 161,column 5,is_stmt,isa 0
        MOV       AL,#2818              ; [CPU_ALU] |161| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |161| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |161| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 162,column 5,is_stmt,isa 0
        MOV       AL,#3074              ; [CPU_ALU] |162| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |162| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |162| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 163,column 5,is_stmt,isa 0
        MOV       AL,#3330              ; [CPU_ALU] |163| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |163| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |163| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 164,column 5,is_stmt,isa 0
        MOV       AL,#3586              ; [CPU_ALU] |164| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |164| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |164| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 165,column 5,is_stmt,isa 0
        MOV       AL,#3842              ; [CPU_ALU] |165| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |165| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |165| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 167,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |167| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |167| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |167| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 168,column 5,is_stmt,isa 0
        MOV       AL,#259               ; [CPU_ALU] |168| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |168| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |168| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 169,column 5,is_stmt,isa 0
        MOV       AL,#515               ; [CPU_ALU] |169| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |169| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |169| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 170,column 5,is_stmt,isa 0
        MOV       AL,#771               ; [CPU_ALU] |170| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |170| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |170| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 171,column 5,is_stmt,isa 0
        MOV       AL,#1027              ; [CPU_ALU] |171| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |171| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |171| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 172,column 5,is_stmt,isa 0
        MOV       AL,#1283              ; [CPU_ALU] |172| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |172| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |172| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 173,column 5,is_stmt,isa 0
        MOV       AL,#1539              ; [CPU_ALU] |173| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |173| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |173| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 175,column 5,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |175| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |175| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |175| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 176,column 5,is_stmt,isa 0
        MOV       AL,#260               ; [CPU_ALU] |176| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |176| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |176| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 177,column 5,is_stmt,isa 0
        MOV       AL,#516               ; [CPU_ALU] |177| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |177| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |177| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 179,column 5,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_ALU] |179| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |179| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |179| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 180,column 5,is_stmt,isa 0
        MOV       AL,#262               ; [CPU_ALU] |180| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |180| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |180| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 182,column 5,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |182| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |182| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |182| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 183,column 5,is_stmt,isa 0
        MOV       AL,#263               ; [CPU_ALU] |183| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |183| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |183| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 184,column 5,is_stmt,isa 0
        MOV       AL,#519               ; [CPU_ALU] |184| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |184| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |184| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 185,column 5,is_stmt,isa 0
        MOV       AL,#775               ; [CPU_ALU] |185| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |185| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |185| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 187,column 5,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_ALU] |187| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |187| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |187| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 188,column 5,is_stmt,isa 0
        MOV       AL,#264               ; [CPU_ALU] |188| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |188| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |188| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 189,column 5,is_stmt,isa 0
        MOV       AL,#520               ; [CPU_ALU] |189| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |189| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |189| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 190,column 5,is_stmt,isa 0
        MOV       AL,#776               ; [CPU_ALU] |190| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |190| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |190| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 192,column 5,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_ALU] |192| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |192| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |192| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 193,column 5,is_stmt,isa 0
        MOV       AL,#265               ; [CPU_ALU] |193| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |193| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |193| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 195,column 5,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_ALU] |195| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |195| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |195| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 196,column 5,is_stmt,isa 0
        MOV       AL,#266               ; [CPU_ALU] |196| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |196| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |196| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 198,column 5,is_stmt,isa 0
        MOVB      AL,#11                ; [CPU_ALU] |198| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |198| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |198| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 199,column 5,is_stmt,isa 0
        MOV       AL,#267               ; [CPU_ALU] |199| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |199| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |199| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 205,column 5,is_stmt,isa 0
        MOVB      AL,#13                ; [CPU_ALU] |205| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |205| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |205| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 206,column 5,is_stmt,isa 0
        MOV       AL,#269               ; [CPU_ALU] |206| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |206| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |206| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 207,column 5,is_stmt,isa 0
        MOV       AL,#525               ; [CPU_ALU] |207| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |207| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |207| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 208,column 5,is_stmt,isa 0
        MOV       AL,#781               ; [CPU_ALU] |208| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |208| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |208| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 210,column 5,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_ALU] |210| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |210| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |210| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 211,column 5,is_stmt,isa 0
        MOV       AL,#270               ; [CPU_ALU] |211| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |211| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |211| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 212,column 5,is_stmt,isa 0
        MOV       AL,#526               ; [CPU_ALU] |212| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |212| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |212| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 213,column 5,is_stmt,isa 0
        MOV       AL,#782               ; [CPU_ALU] |213| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |213| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |213| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 214,column 5,is_stmt,isa 0
        MOV       AL,#1038              ; [CPU_ALU] |214| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |214| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |214| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 215,column 5,is_stmt,isa 0
        MOV       AL,#1294              ; [CPU_ALU] |215| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |215| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |215| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 216,column 5,is_stmt,isa 0
        MOV       AL,#1550              ; [CPU_ALU] |216| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |216| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |216| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 217,column 5,is_stmt,isa 0
        MOV       AL,#1806              ; [CPU_ALU] |217| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |217| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |217| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 219,column 5,is_stmt,isa 0
        MOV       AL,#4112              ; [CPU_ALU] |219| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |219| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |219| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 220,column 5,is_stmt,isa 0
        MOV       AL,#4368              ; [CPU_ALU] |220| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |220| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |220| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 221,column 5,is_stmt,isa 0
        MOV       AL,#4624              ; [CPU_ALU] |221| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |221| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |221| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 223,column 5,is_stmt,isa 0
        MOVB      AL,#18                ; [CPU_ALU] |223| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |223| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |223| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 224,column 5,is_stmt,isa 0
        MOV       AL,#274               ; [CPU_ALU] |224| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |224| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |224| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 225,column 5,is_stmt,isa 0
        MOV       AL,#4114              ; [CPU_ALU] |225| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |225| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |225| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 226,column 5,is_stmt,isa 0
        MOV       AL,#4370              ; [CPU_ALU] |226| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |226| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |226| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 227,column 5,is_stmt,isa 0
        MOV       AL,#4626              ; [CPU_ALU] |227| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |227| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |227| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 228,column 5,is_stmt,isa 0
        MOV       AL,#4882              ; [CPU_ALU] |228| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |228| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |228| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 229,column 5,is_stmt,isa 0
        MOV       AL,#5138              ; [CPU_ALU] |229| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |229| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |229| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 230,column 5,is_stmt,isa 0
        MOV       AL,#5394              ; [CPU_ALU] |230| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |230| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |230| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 231,column 5,is_stmt,isa 0
        MOV       AL,#5650              ; [CPU_ALU] |231| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |231| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |231| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 232,column 5,is_stmt,isa 0
        MOV       AL,#5906              ; [CPU_ALU] |232| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |232| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |232| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 234,column 5,is_stmt,isa 0
        MOVB      AL,#20                ; [CPU_ALU] |234| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("SysCtl_enablePeripheral")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||SysCtl_enablePeripheral|| ; [CPU_ALU] |234| 
        ; call occurs [#||SysCtl_enablePeripheral||] ; [] |234| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 244,column 1,is_stmt,isa 0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0xf4)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:Device_initGPIO"
	.clink
	.global	||Device_initGPIO||

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$101, DW_AT_low_pc(||Device_initGPIO||)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$101, DW_AT_decl_column(0x06)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 252,column 1,is_stmt,address ||Device_initGPIO||,isa 0

	.dwfde $C$DW$CIE, ||Device_initGPIO||

;***************************************************************
;* FNAME: Device_initGPIO               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_initGPIO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 256,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |256| 
        MOVB      XAR4,#0               ; [CPU_ALU] |256| 
        SUBB      ACC,#1                ; [CPU_ALU] |256| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #||GPIO_unlockPortConfig|| ; [CPU_ALU] |256| 
        ; call occurs [#||GPIO_unlockPortConfig||] ; [] |256| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 257,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |257| 
        MOVB      XAR4,#1               ; [CPU_ALU] |257| 
        SUBB      ACC,#1                ; [CPU_ALU] |257| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #||GPIO_unlockPortConfig|| ; [CPU_ALU] |257| 
        ; call occurs [#||GPIO_unlockPortConfig||] ; [] |257| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 258,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |258| 
        MOVB      XAR4,#2               ; [CPU_ALU] |258| 
        SUBB      ACC,#1                ; [CPU_ALU] |258| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||GPIO_unlockPortConfig|| ; [CPU_ALU] |258| 
        ; call occurs [#||GPIO_unlockPortConfig||] ; [] |258| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 259,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |259| 
        MOVB      XAR4,#3               ; [CPU_ALU] |259| 
        SUBB      ACC,#1                ; [CPU_ALU] |259| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #||GPIO_unlockPortConfig|| ; [CPU_ALU] |259| 
        ; call occurs [#||GPIO_unlockPortConfig||] ; [] |259| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 260,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |260| 
        MOVB      XAR4,#4               ; [CPU_ALU] |260| 
        SUBB      ACC,#1                ; [CPU_ALU] |260| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #||GPIO_unlockPortConfig|| ; [CPU_ALU] |260| 
        ; call occurs [#||GPIO_unlockPortConfig||] ; [] |260| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 261,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |261| 
        MOVB      XAR4,#5               ; [CPU_ALU] |261| 
        SUBB      ACC,#1                ; [CPU_ALU] |261| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("GPIO_unlockPortConfig")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #||GPIO_unlockPortConfig|| ; [CPU_ALU] |261| 
        ; call occurs [#||GPIO_unlockPortConfig||] ; [] |261| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 266,column 5,is_stmt,isa 0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("Device_enableUnbondedGPIOPullups")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||Device_enableUnbondedGPIOPullups|| ; [CPU_ALU] |266| 
        ; call occurs [#||Device_enableUnbondedGPIOPullups||] ; [] |266| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 267,column 1,is_stmt,isa 0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text:Device_enableUnbondedGPIOPullupsFor176Pin"
	.clink
	.global	||Device_enableUnbondedGPIOPullupsFor176Pin||

$C$DW$110	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$110, DW_AT_name("Device_enableUnbondedGPIOPullupsFor176Pin")
	.dwattr $C$DW$110, DW_AT_low_pc(||Device_enableUnbondedGPIOPullupsFor176Pin||)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_linkage_name("Device_enableUnbondedGPIOPullupsFor176Pin")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_decl_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$110, DW_AT_decl_line(0x119)
	.dwattr $C$DW$110, DW_AT_decl_column(0x06)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 282,column 1,is_stmt,address ||Device_enableUnbondedGPIOPullupsFor176Pin||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableUnbondedGPIOPullupsFor176Pin||

;***************************************************************
;* FNAME: Device_enableUnbondedGPIOPullupsFor176Pin FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_enableUnbondedGPIOPullupsFor176Pin||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 284,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 285,column 5,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |285| 
        MOV       AH,#32767             ; [CPU_ALU] |285| 
        MOVL      XAR4,#31884           ; [CPU_ARAU] |285| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |285| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 286,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |286| 
        MOVL      XAR4,#31948           ; [CPU_ARAU] |286| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |286| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 287,column 5,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |287| 
        MOVL      XAR4,#32012           ; [CPU_ARAU] |287| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |287| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 288,column 5,is_stmt,isa 0
        MOVL      XAR5,#32076           ; [CPU_ARAU] |288| 
        MOVL      XAR4,#65024           ; [CPU_ARAU] |288| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |288| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 289,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 290,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$110, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x122)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text:Device_enableUnbondedGPIOPullups"
	.clink
	.global	||Device_enableUnbondedGPIOPullups||

$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("Device_enableUnbondedGPIOPullups")
	.dwattr $C$DW$112, DW_AT_low_pc(||Device_enableUnbondedGPIOPullups||)
	.dwattr $C$DW$112, DW_AT_high_pc(0x00)
	.dwattr $C$DW$112, DW_AT_linkage_name("Device_enableUnbondedGPIOPullups")
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$112, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$112, DW_AT_decl_column(0x06)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 299,column 1,is_stmt,address ||Device_enableUnbondedGPIOPullups||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableUnbondedGPIOPullups||

;***************************************************************
;* FNAME: Device_enableUnbondedGPIOPullups FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

||Device_enableUnbondedGPIOPullups||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("pinCount")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 303,column 23,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |303| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |303| 
        AND       AL,#1792              ; [CPU_ALU] |303| 
        ANDB      AH,#0                 ; [CPU_ALU] |303| 
        SFR       ACC,8                 ; [CPU_ALU] |303| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |303| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 311,column 5,is_stmt,isa 0
        CMPB      AL,#6                 ; [CPU_ALU] |311| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 313,column 9,is_stmt,isa 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("Device_enableUnbondedGPIOPullupsFor176Pin")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #||Device_enableUnbondedGPIOPullupsFor176Pin|| ; [CPU_ALU] |313| 
        ; call occurs [#||Device_enableUnbondedGPIOPullupsFor176Pin||] ; [] |313| 
        B         ||$C$L1||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L1||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x141)
	.dwattr $C$DW$112, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$112

	.sect	".text:__error__"
	.clink
	.global	||__error__||

$C$DW$116	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$116, DW_AT_name("__error__")
	.dwattr $C$DW$116, DW_AT_low_pc(||__error__||)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_linkage_name("__error__")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_decl_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$116, DW_AT_decl_line(0x148)
	.dwattr $C$DW$116, DW_AT_decl_column(0x06)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 329,column 1,is_stmt,address ||__error__||,isa 0

	.dwfde $C$DW$CIE, ||__error__||
$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("filename")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg12]

$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("line")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: __error__                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__error__||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("filename")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg20 -2]

$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("line")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],ACC           ; [CPU_ALU] |329| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |329| 
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 334,column 5,is_stmt,isa 0
 ESTOP0
	.dwpsn	file "../F2838x_driverlib/driverlib/device.c",line 335,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$116, DW_AT_TI_end_file("../F2838x_driverlib/driverlib/device.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116


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
$C$DW$122	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$122, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$122, DW_AT_const_value(0x00)
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$122, DW_AT_decl_column(0x05)

$C$DW$123	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$123, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$123, DW_AT_const_value(0x200)
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)

$C$DW$124	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$124, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$124, DW_AT_const_value(0x300)
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$124, DW_AT_decl_column(0x05)

$C$DW$125	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$125, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$125, DW_AT_const_value(0x400)
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$125, DW_AT_decl_column(0x05)

$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$126, DW_AT_const_value(0x500)
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("SYSCTL_PERIPH_CLK_CPUBGCRC")
	.dwattr $C$DW$127, DW_AT_const_value(0xd00)
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

$C$DW$128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$128, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1BGCRC")
	.dwattr $C$DW$128, DW_AT_const_value(0xe00)
	.dwattr $C$DW$128, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)

$C$DW$129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$129, DW_AT_name("SYSCTL_PERIPH_CLK_HRCAL")
	.dwattr $C$DW$129, DW_AT_const_value(0x1000)
	.dwattr $C$DW$129, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)

$C$DW$130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$130, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$130, DW_AT_const_value(0x1200)
	.dwattr $C$DW$130, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)

$C$DW$131	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$131, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$131, DW_AT_const_value(0x1300)
	.dwattr $C$DW$131, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$131, DW_AT_decl_column(0x05)

$C$DW$132	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$132, DW_AT_name("SYSCTL_PERIPH_CLK_ERAD")
	.dwattr $C$DW$132, DW_AT_const_value(0x1800)
	.dwattr $C$DW$132, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$132, DW_AT_decl_column(0x05)

$C$DW$133	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$133, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$133, DW_AT_const_value(0x01)
	.dwattr $C$DW$133, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$133, DW_AT_decl_column(0x05)

$C$DW$134	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$134, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$134, DW_AT_const_value(0x101)
	.dwattr $C$DW$134, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$134, DW_AT_decl_column(0x05)

$C$DW$135	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$135, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$135, DW_AT_const_value(0x02)
	.dwattr $C$DW$135, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$135, DW_AT_decl_column(0x05)

$C$DW$136	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$136, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$136, DW_AT_const_value(0x102)
	.dwattr $C$DW$136, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$136, DW_AT_decl_column(0x05)

$C$DW$137	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$137, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$137, DW_AT_const_value(0x202)
	.dwattr $C$DW$137, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$137, DW_AT_decl_column(0x05)

$C$DW$138	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$138, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$138, DW_AT_const_value(0x302)
	.dwattr $C$DW$138, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$138, DW_AT_decl_column(0x05)

$C$DW$139	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$139, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$139, DW_AT_const_value(0x402)
	.dwattr $C$DW$139, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$139, DW_AT_decl_column(0x05)

$C$DW$140	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$140, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$140, DW_AT_const_value(0x502)
	.dwattr $C$DW$140, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$140, DW_AT_decl_column(0x05)

$C$DW$141	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$141, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$141, DW_AT_const_value(0x602)
	.dwattr $C$DW$141, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x1eb)
	.dwattr $C$DW$141, DW_AT_decl_column(0x05)

$C$DW$142	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$142, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$142, DW_AT_const_value(0x702)
	.dwattr $C$DW$142, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$142, DW_AT_decl_column(0x05)

$C$DW$143	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$143, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$143, DW_AT_const_value(0x802)
	.dwattr $C$DW$143, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$143, DW_AT_decl_column(0x05)

$C$DW$144	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$144, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$144, DW_AT_const_value(0x902)
	.dwattr $C$DW$144, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$144, DW_AT_decl_column(0x05)

$C$DW$145	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$145, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$145, DW_AT_const_value(0xa02)
	.dwattr $C$DW$145, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$145, DW_AT_decl_column(0x05)

$C$DW$146	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$146, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$146, DW_AT_const_value(0xb02)
	.dwattr $C$DW$146, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$146, DW_AT_decl_column(0x05)

$C$DW$147	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$147, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM13")
	.dwattr $C$DW$147, DW_AT_const_value(0xc02)
	.dwattr $C$DW$147, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$147, DW_AT_decl_column(0x05)

$C$DW$148	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$148, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM14")
	.dwattr $C$DW$148, DW_AT_const_value(0xd02)
	.dwattr $C$DW$148, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$148, DW_AT_decl_column(0x05)

$C$DW$149	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$149, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM15")
	.dwattr $C$DW$149, DW_AT_const_value(0xe02)
	.dwattr $C$DW$149, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$149, DW_AT_decl_column(0x05)

$C$DW$150	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$150, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM16")
	.dwattr $C$DW$150, DW_AT_const_value(0xf02)
	.dwattr $C$DW$150, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$150, DW_AT_decl_column(0x05)

$C$DW$151	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$151, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$151, DW_AT_const_value(0x03)
	.dwattr $C$DW$151, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$151, DW_AT_decl_column(0x05)

$C$DW$152	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$152, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$152, DW_AT_const_value(0x103)
	.dwattr $C$DW$152, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$152, DW_AT_decl_column(0x05)

$C$DW$153	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$153, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$153, DW_AT_const_value(0x203)
	.dwattr $C$DW$153, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$153, DW_AT_decl_column(0x05)

$C$DW$154	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$154, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$154, DW_AT_const_value(0x303)
	.dwattr $C$DW$154, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$154, DW_AT_decl_column(0x05)

$C$DW$155	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$155, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$155, DW_AT_const_value(0x403)
	.dwattr $C$DW$155, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$155, DW_AT_decl_column(0x05)

$C$DW$156	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$156, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$156, DW_AT_const_value(0x503)
	.dwattr $C$DW$156, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$156, DW_AT_decl_column(0x05)

$C$DW$157	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$157, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP7")
	.dwattr $C$DW$157, DW_AT_const_value(0x603)
	.dwattr $C$DW$157, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x1ff)
	.dwattr $C$DW$157, DW_AT_decl_column(0x05)

$C$DW$158	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$158, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$158, DW_AT_const_value(0x04)
	.dwattr $C$DW$158, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x204)
	.dwattr $C$DW$158, DW_AT_decl_column(0x05)

$C$DW$159	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$159, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$159, DW_AT_const_value(0x104)
	.dwattr $C$DW$159, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x205)
	.dwattr $C$DW$159, DW_AT_decl_column(0x05)

$C$DW$160	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$160, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$160, DW_AT_const_value(0x204)
	.dwattr $C$DW$160, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x206)
	.dwattr $C$DW$160, DW_AT_decl_column(0x05)

$C$DW$161	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$161, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$161, DW_AT_const_value(0x06)
	.dwattr $C$DW$161, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x210)
	.dwattr $C$DW$161, DW_AT_decl_column(0x05)

$C$DW$162	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$162, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$162, DW_AT_const_value(0x106)
	.dwattr $C$DW$162, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x211)
	.dwattr $C$DW$162, DW_AT_decl_column(0x05)

$C$DW$163	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$163, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$163, DW_AT_const_value(0x07)
	.dwattr $C$DW$163, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x216)
	.dwattr $C$DW$163, DW_AT_decl_column(0x05)

$C$DW$164	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$164, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$164, DW_AT_const_value(0x107)
	.dwattr $C$DW$164, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x217)
	.dwattr $C$DW$164, DW_AT_decl_column(0x05)

$C$DW$165	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$165, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$165, DW_AT_const_value(0x207)
	.dwattr $C$DW$165, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x218)
	.dwattr $C$DW$165, DW_AT_decl_column(0x05)

$C$DW$166	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$166, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$166, DW_AT_const_value(0x307)
	.dwattr $C$DW$166, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x219)
	.dwattr $C$DW$166, DW_AT_decl_column(0x05)

$C$DW$167	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$167, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$167, DW_AT_const_value(0x08)
	.dwattr $C$DW$167, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$167, DW_AT_decl_column(0x05)

$C$DW$168	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$168, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$168, DW_AT_const_value(0x108)
	.dwattr $C$DW$168, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$168, DW_AT_decl_column(0x05)

$C$DW$169	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$169, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$169, DW_AT_const_value(0x208)
	.dwattr $C$DW$169, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x220)
	.dwattr $C$DW$169, DW_AT_decl_column(0x05)

$C$DW$170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$170, DW_AT_name("SYSCTL_PERIPH_CLK_SPID")
	.dwattr $C$DW$170, DW_AT_const_value(0x308)
	.dwattr $C$DW$170, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x221)
	.dwattr $C$DW$170, DW_AT_decl_column(0x05)

$C$DW$171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$171, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$171, DW_AT_const_value(0x09)
	.dwattr $C$DW$171, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x226)
	.dwattr $C$DW$171, DW_AT_decl_column(0x05)

$C$DW$172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$172, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$172, DW_AT_const_value(0x109)
	.dwattr $C$DW$172, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x227)
	.dwattr $C$DW$172, DW_AT_decl_column(0x05)

$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$173, DW_AT_const_value(0x0a)
	.dwattr $C$DW$173, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$173, DW_AT_decl_column(0x05)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$174, DW_AT_const_value(0x10a)
	.dwattr $C$DW$174, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$174, DW_AT_decl_column(0x05)

$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$175, DW_AT_const_value(0x0b)
	.dwattr $C$DW$175, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x232)
	.dwattr $C$DW$175, DW_AT_decl_column(0x05)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$176, DW_AT_const_value(0x10b)
	.dwattr $C$DW$176, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x233)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$177, DW_AT_const_value(0x100b)
	.dwattr $C$DW$177, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x234)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$178, DW_AT_const_value(0x0d)
	.dwattr $C$DW$178, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$179, DW_AT_const_value(0x10d)
	.dwattr $C$DW$179, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)

$C$DW$180	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$180, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$180, DW_AT_const_value(0x20d)
	.dwattr $C$DW$180, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$180, DW_AT_decl_column(0x05)

$C$DW$181	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$181, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$181, DW_AT_const_value(0x30d)
	.dwattr $C$DW$181, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x240)
	.dwattr $C$DW$181, DW_AT_decl_column(0x05)

$C$DW$182	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$182, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$182, DW_AT_const_value(0x0e)
	.dwattr $C$DW$182, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x245)
	.dwattr $C$DW$182, DW_AT_decl_column(0x05)

$C$DW$183	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$183, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$183, DW_AT_const_value(0x10e)
	.dwattr $C$DW$183, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x246)
	.dwattr $C$DW$183, DW_AT_decl_column(0x05)

$C$DW$184	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$184, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$184, DW_AT_const_value(0x20e)
	.dwattr $C$DW$184, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x247)
	.dwattr $C$DW$184, DW_AT_decl_column(0x05)

$C$DW$185	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$185, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$185, DW_AT_const_value(0x30e)
	.dwattr $C$DW$185, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x248)
	.dwattr $C$DW$185, DW_AT_decl_column(0x05)

$C$DW$186	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$186, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$186, DW_AT_const_value(0x40e)
	.dwattr $C$DW$186, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x249)
	.dwattr $C$DW$186, DW_AT_decl_column(0x05)

$C$DW$187	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$187, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$187, DW_AT_const_value(0x50e)
	.dwattr $C$DW$187, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$187, DW_AT_decl_column(0x05)

$C$DW$188	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$188, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$188, DW_AT_const_value(0x60e)
	.dwattr $C$DW$188, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$188, DW_AT_decl_column(0x05)

$C$DW$189	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$189, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$189, DW_AT_const_value(0x70e)
	.dwattr $C$DW$189, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x24c)
	.dwattr $C$DW$189, DW_AT_decl_column(0x05)

$C$DW$190	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$190, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$190, DW_AT_const_value(0x1010)
	.dwattr $C$DW$190, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x256)
	.dwattr $C$DW$190, DW_AT_decl_column(0x05)

$C$DW$191	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$191, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$191, DW_AT_const_value(0x1110)
	.dwattr $C$DW$191, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x257)
	.dwattr $C$DW$191, DW_AT_decl_column(0x05)

$C$DW$192	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$192, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$192, DW_AT_const_value(0x1210)
	.dwattr $C$DW$192, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x258)
	.dwattr $C$DW$192, DW_AT_decl_column(0x05)

$C$DW$193	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$193, DW_AT_name("SYSCTL_PERIPH_CLK_FSITXA")
	.dwattr $C$DW$193, DW_AT_const_value(0x12)
	.dwattr $C$DW$193, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x261)
	.dwattr $C$DW$193, DW_AT_decl_column(0x05)

$C$DW$194	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$194, DW_AT_name("SYSCTL_PERIPH_CLK_FSITXB")
	.dwattr $C$DW$194, DW_AT_const_value(0x112)
	.dwattr $C$DW$194, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x262)
	.dwattr $C$DW$194, DW_AT_decl_column(0x05)

$C$DW$195	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$195, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXA")
	.dwattr $C$DW$195, DW_AT_const_value(0x1012)
	.dwattr $C$DW$195, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x263)
	.dwattr $C$DW$195, DW_AT_decl_column(0x05)

$C$DW$196	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$196, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXB")
	.dwattr $C$DW$196, DW_AT_const_value(0x1112)
	.dwattr $C$DW$196, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x264)
	.dwattr $C$DW$196, DW_AT_decl_column(0x05)

$C$DW$197	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$197, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXC")
	.dwattr $C$DW$197, DW_AT_const_value(0x1212)
	.dwattr $C$DW$197, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x265)
	.dwattr $C$DW$197, DW_AT_decl_column(0x05)

$C$DW$198	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$198, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXD")
	.dwattr $C$DW$198, DW_AT_const_value(0x1312)
	.dwattr $C$DW$198, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x266)
	.dwattr $C$DW$198, DW_AT_decl_column(0x05)

$C$DW$199	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$199, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXE")
	.dwattr $C$DW$199, DW_AT_const_value(0x1412)
	.dwattr $C$DW$199, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x267)
	.dwattr $C$DW$199, DW_AT_decl_column(0x05)

$C$DW$200	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$200, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXF")
	.dwattr $C$DW$200, DW_AT_const_value(0x1512)
	.dwattr $C$DW$200, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x268)
	.dwattr $C$DW$200, DW_AT_decl_column(0x05)

$C$DW$201	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$201, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXG")
	.dwattr $C$DW$201, DW_AT_const_value(0x1612)
	.dwattr $C$DW$201, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x269)
	.dwattr $C$DW$201, DW_AT_decl_column(0x05)

$C$DW$202	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$202, DW_AT_name("SYSCTL_PERIPH_CLK_FSIRXH")
	.dwattr $C$DW$202, DW_AT_const_value(0x1712)
	.dwattr $C$DW$202, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$202, DW_AT_decl_column(0x05)

$C$DW$203	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$203, DW_AT_name("SYSCTL_PERIPH_CLK_PMBUSA")
	.dwattr $C$DW$203, DW_AT_const_value(0x14)
	.dwattr $C$DW$203, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x274)
	.dwattr $C$DW$203, DW_AT_decl_column(0x05)

$C$DW$204	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$204, DW_AT_name("SYSCTL_PERIPH_CLK_DCC0")
	.dwattr $C$DW$204, DW_AT_const_value(0x15)
	.dwattr $C$DW$204, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x279)
	.dwattr $C$DW$204, DW_AT_decl_column(0x05)

$C$DW$205	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$205, DW_AT_name("SYSCTL_PERIPH_CLK_DCC1")
	.dwattr $C$DW$205, DW_AT_const_value(0x115)
	.dwattr $C$DW$205, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$205, DW_AT_decl_column(0x05)

$C$DW$206	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$206, DW_AT_name("SYSCTL_PERIPH_CLK_DCC2")
	.dwattr $C$DW$206, DW_AT_const_value(0x215)
	.dwattr $C$DW$206, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x27b)
	.dwattr $C$DW$206, DW_AT_decl_column(0x05)

$C$DW$207	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$207, DW_AT_name("SYSCTL_PERIPH_CLK_ECAT")
	.dwattr $C$DW$207, DW_AT_const_value(0x17)
	.dwattr $C$DW$207, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x281)
	.dwattr $C$DW$207, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\sysctl.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x282)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$208	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$208, DW_AT_name("GPIO_PORT_A")
	.dwattr $C$DW$208, DW_AT_const_value(0x00)
	.dwattr $C$DW$208, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$208, DW_AT_decl_column(0x05)

$C$DW$209	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$209, DW_AT_name("GPIO_PORT_B")
	.dwattr $C$DW$209, DW_AT_const_value(0x01)
	.dwattr $C$DW$209, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$209, DW_AT_decl_column(0x05)

$C$DW$210	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$210, DW_AT_name("GPIO_PORT_C")
	.dwattr $C$DW$210, DW_AT_const_value(0x02)
	.dwattr $C$DW$210, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$210, DW_AT_decl_column(0x05)

$C$DW$211	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$211, DW_AT_name("GPIO_PORT_D")
	.dwattr $C$DW$211, DW_AT_const_value(0x03)
	.dwattr $C$DW$211, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$211, DW_AT_decl_column(0x05)

$C$DW$212	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$212, DW_AT_name("GPIO_PORT_E")
	.dwattr $C$DW$212, DW_AT_const_value(0x04)
	.dwattr $C$DW$212, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$212, DW_AT_decl_column(0x05)

$C$DW$213	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$213, DW_AT_name("GPIO_PORT_F")
	.dwattr $C$DW$213, DW_AT_const_value(0x05)
	.dwattr $C$DW$213, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$213, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("GPIO_Port")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_driverlib\driverlib\..\..\Drivers\..\F2838x_driverlib\driverlib\gpio.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


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


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$35


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
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-c2000_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$214	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$28)

$C$DW$T$39	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$214)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$40


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


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$32

