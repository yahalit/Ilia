;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Wed May  1 10:09:00 2024                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla0 --float_support=fpu64 --hll_source=on --idiv_support=idiv0 --issue_remarks --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../F2838x_utils/f2838x_pievect.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Yahali\Nimrod\Sw3\BolshoyManipCpu2\CPU2")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("PIE_RESERVED_ISR")
	.dwattr $C$DW$1, DW_AT_linkage_name("PIE_RESERVED_ISR")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x109)
	.dwattr $C$DW$1, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("TIMER1_ISR")
	.dwattr $C$DW$2, DW_AT_linkage_name("TIMER1_ISR")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x38)
	.dwattr $C$DW$2, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("TIMER2_ISR")
	.dwattr $C$DW$3, DW_AT_linkage_name("TIMER2_ISR")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x39)
	.dwattr $C$DW$3, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("DATALOG_ISR")
	.dwattr $C$DW$4, DW_AT_linkage_name("DATALOG_ISR")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$4, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("RTOS_ISR")
	.dwattr $C$DW$5, DW_AT_linkage_name("RTOS_ISR")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$5, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("EMU_ISR")
	.dwattr $C$DW$6, DW_AT_linkage_name("EMU_ISR")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$6, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("NMI_ISR")
	.dwattr $C$DW$7, DW_AT_linkage_name("NMI_ISR")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$7, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("ILLEGAL_ISR")
	.dwattr $C$DW$8, DW_AT_linkage_name("ILLEGAL_ISR")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$8, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("USER1_ISR")
	.dwattr $C$DW$9, DW_AT_linkage_name("USER1_ISR")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$9, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$9


$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("USER2_ISR")
	.dwattr $C$DW$10, DW_AT_linkage_name("USER2_ISR")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x40)
	.dwattr $C$DW$10, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$10


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("USER3_ISR")
	.dwattr $C$DW$11, DW_AT_linkage_name("USER3_ISR")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x41)
	.dwattr $C$DW$11, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("USER4_ISR")
	.dwattr $C$DW$12, DW_AT_linkage_name("USER4_ISR")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x42)
	.dwattr $C$DW$12, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$12


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("USER5_ISR")
	.dwattr $C$DW$13, DW_AT_linkage_name("USER5_ISR")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x43)
	.dwattr $C$DW$13, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$13


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("USER6_ISR")
	.dwattr $C$DW$14, DW_AT_linkage_name("USER6_ISR")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x44)
	.dwattr $C$DW$14, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$14


$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("USER7_ISR")
	.dwattr $C$DW$15, DW_AT_linkage_name("USER7_ISR")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x45)
	.dwattr $C$DW$15, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$15


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("USER8_ISR")
	.dwattr $C$DW$16, DW_AT_linkage_name("USER8_ISR")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x46)
	.dwattr $C$DW$16, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$16


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("USER9_ISR")
	.dwattr $C$DW$17, DW_AT_linkage_name("USER9_ISR")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x47)
	.dwattr $C$DW$17, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("USER10_ISR")
	.dwattr $C$DW$18, DW_AT_linkage_name("USER10_ISR")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x48)
	.dwattr $C$DW$18, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$18


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("USER11_ISR")
	.dwattr $C$DW$19, DW_AT_linkage_name("USER11_ISR")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x49)
	.dwattr $C$DW$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$19


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("USER12_ISR")
	.dwattr $C$DW$20, DW_AT_linkage_name("USER12_ISR")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$20


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("ADCA1_ISR")
	.dwattr $C$DW$21, DW_AT_linkage_name("ADCA1_ISR")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$21


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("ADCB1_ISR")
	.dwattr $C$DW$22, DW_AT_linkage_name("ADCB1_ISR")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$22


$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("ADCC1_ISR")
	.dwattr $C$DW$23, DW_AT_linkage_name("ADCC1_ISR")
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$23


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("XINT1_ISR")
	.dwattr $C$DW$24, DW_AT_linkage_name("XINT1_ISR")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$24


$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("XINT2_ISR")
	.dwattr $C$DW$25, DW_AT_linkage_name("XINT2_ISR")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$25


$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("ADCD1_ISR")
	.dwattr $C$DW$26, DW_AT_linkage_name("ADCD1_ISR")
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x50)
	.dwattr $C$DW$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$26


$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("TIMER0_ISR")
	.dwattr $C$DW$27, DW_AT_linkage_name("TIMER0_ISR")
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x51)
	.dwattr $C$DW$27, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$27


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("WAKE_ISR")
	.dwattr $C$DW$28, DW_AT_linkage_name("WAKE_ISR")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x52)
	.dwattr $C$DW$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$28


$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("EPWM1_TZ_ISR")
	.dwattr $C$DW$29, DW_AT_linkage_name("EPWM1_TZ_ISR")
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x53)
	.dwattr $C$DW$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$29


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("EPWM2_TZ_ISR")
	.dwattr $C$DW$30, DW_AT_linkage_name("EPWM2_TZ_ISR")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x54)
	.dwattr $C$DW$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$30


$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("EPWM3_TZ_ISR")
	.dwattr $C$DW$31, DW_AT_linkage_name("EPWM3_TZ_ISR")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x55)
	.dwattr $C$DW$31, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$31


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("EPWM4_TZ_ISR")
	.dwattr $C$DW$32, DW_AT_linkage_name("EPWM4_TZ_ISR")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x56)
	.dwattr $C$DW$32, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$32


$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("EPWM5_TZ_ISR")
	.dwattr $C$DW$33, DW_AT_linkage_name("EPWM5_TZ_ISR")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x57)
	.dwattr $C$DW$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$33


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("EPWM6_TZ_ISR")
	.dwattr $C$DW$34, DW_AT_linkage_name("EPWM6_TZ_ISR")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x58)
	.dwattr $C$DW$34, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$34


$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("EPWM7_TZ_ISR")
	.dwattr $C$DW$35, DW_AT_linkage_name("EPWM7_TZ_ISR")
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x59)
	.dwattr $C$DW$35, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$35


$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("EPWM8_TZ_ISR")
	.dwattr $C$DW$36, DW_AT_linkage_name("EPWM8_TZ_ISR")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$36


$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("EPWM1_ISR")
	.dwattr $C$DW$37, DW_AT_linkage_name("EPWM1_ISR")
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$37, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$37


$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("EPWM2_ISR")
	.dwattr $C$DW$38, DW_AT_linkage_name("EPWM2_ISR")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$38


$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("EPWM3_ISR")
	.dwattr $C$DW$39, DW_AT_linkage_name("EPWM3_ISR")
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$39, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$39


$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("EPWM4_ISR")
	.dwattr $C$DW$40, DW_AT_linkage_name("EPWM4_ISR")
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$40


$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("EPWM5_ISR")
	.dwattr $C$DW$41, DW_AT_linkage_name("EPWM5_ISR")
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$41


$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("EPWM6_ISR")
	.dwattr $C$DW$42, DW_AT_linkage_name("EPWM6_ISR")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x60)
	.dwattr $C$DW$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$42


$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("EPWM7_ISR")
	.dwattr $C$DW$43, DW_AT_linkage_name("EPWM7_ISR")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x61)
	.dwattr $C$DW$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$43


$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("EPWM8_ISR")
	.dwattr $C$DW$44, DW_AT_linkage_name("EPWM8_ISR")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x62)
	.dwattr $C$DW$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$44


$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("ECAP1_ISR")
	.dwattr $C$DW$45, DW_AT_linkage_name("ECAP1_ISR")
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x63)
	.dwattr $C$DW$45, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$45


$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("ECAP2_ISR")
	.dwattr $C$DW$46, DW_AT_linkage_name("ECAP2_ISR")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x64)
	.dwattr $C$DW$46, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$46


$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("ECAP3_ISR")
	.dwattr $C$DW$47, DW_AT_linkage_name("ECAP3_ISR")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x65)
	.dwattr $C$DW$47, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$47


$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("ECAP4_ISR")
	.dwattr $C$DW$48, DW_AT_linkage_name("ECAP4_ISR")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x66)
	.dwattr $C$DW$48, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$48


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("ECAP5_ISR")
	.dwattr $C$DW$49, DW_AT_linkage_name("ECAP5_ISR")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x67)
	.dwattr $C$DW$49, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$49


$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("ECAP6_ISR")
	.dwattr $C$DW$50, DW_AT_linkage_name("ECAP6_ISR")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x68)
	.dwattr $C$DW$50, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$50


$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("ECAP7_ISR")
	.dwattr $C$DW$51, DW_AT_linkage_name("ECAP7_ISR")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x69)
	.dwattr $C$DW$51, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$51


$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("EQEP1_ISR")
	.dwattr $C$DW$52, DW_AT_linkage_name("EQEP1_ISR")
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$52, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$52


$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("EQEP2_ISR")
	.dwattr $C$DW$53, DW_AT_linkage_name("EQEP2_ISR")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$53, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$53


$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("EQEP3_ISR")
	.dwattr $C$DW$54, DW_AT_linkage_name("EQEP3_ISR")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$54, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$54


$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("CLB1_ISR")
	.dwattr $C$DW$55, DW_AT_linkage_name("CLB1_ISR")
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$55, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$55


$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("CLB2_ISR")
	.dwattr $C$DW$56, DW_AT_linkage_name("CLB2_ISR")
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$56, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$56


$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("CLB3_ISR")
	.dwattr $C$DW$57, DW_AT_linkage_name("CLB3_ISR")
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$57, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$57


$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("CLB4_ISR")
	.dwattr $C$DW$58, DW_AT_linkage_name("CLB4_ISR")
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x70)
	.dwattr $C$DW$58, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$58


$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("SPIA_RX_ISR")
	.dwattr $C$DW$59, DW_AT_linkage_name("SPIA_RX_ISR")
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x71)
	.dwattr $C$DW$59, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$59


$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("SPIA_TX_ISR")
	.dwattr $C$DW$60, DW_AT_linkage_name("SPIA_TX_ISR")
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x72)
	.dwattr $C$DW$60, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$60


$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("SPIB_RX_ISR")
	.dwattr $C$DW$61, DW_AT_linkage_name("SPIB_RX_ISR")
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x73)
	.dwattr $C$DW$61, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$61


$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("SPIB_TX_ISR")
	.dwattr $C$DW$62, DW_AT_linkage_name("SPIB_TX_ISR")
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x74)
	.dwattr $C$DW$62, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$62


$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("MCBSPA_RX_ISR")
	.dwattr $C$DW$63, DW_AT_linkage_name("MCBSPA_RX_ISR")
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x75)
	.dwattr $C$DW$63, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$63


$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("MCBSPA_TX_ISR")
	.dwattr $C$DW$64, DW_AT_linkage_name("MCBSPA_TX_ISR")
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x76)
	.dwattr $C$DW$64, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$64


$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("MCBSPB_RX_ISR")
	.dwattr $C$DW$65, DW_AT_linkage_name("MCBSPB_RX_ISR")
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x77)
	.dwattr $C$DW$65, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$65


$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("MCBSPB_TX_ISR")
	.dwattr $C$DW$66, DW_AT_linkage_name("MCBSPB_TX_ISR")
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x78)
	.dwattr $C$DW$66, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$66


$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("DMA_CH1_ISR")
	.dwattr $C$DW$67, DW_AT_linkage_name("DMA_CH1_ISR")
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x79)
	.dwattr $C$DW$67, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$67


$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("DMA_CH2_ISR")
	.dwattr $C$DW$68, DW_AT_linkage_name("DMA_CH2_ISR")
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$68, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$68


$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("DMA_CH3_ISR")
	.dwattr $C$DW$69, DW_AT_linkage_name("DMA_CH3_ISR")
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$69, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$69


$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("DMA_CH4_ISR")
	.dwattr $C$DW$70, DW_AT_linkage_name("DMA_CH4_ISR")
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$70, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$70


$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("DMA_CH5_ISR")
	.dwattr $C$DW$71, DW_AT_linkage_name("DMA_CH5_ISR")
	.dwattr $C$DW$71, DW_AT_declaration
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$71, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$71


$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("DMA_CH6_ISR")
	.dwattr $C$DW$72, DW_AT_linkage_name("DMA_CH6_ISR")
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$72, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$72


$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("I2CA_ISR")
	.dwattr $C$DW$73, DW_AT_linkage_name("I2CA_ISR")
	.dwattr $C$DW$73, DW_AT_declaration
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$73, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$73


$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("I2CA_FIFO_ISR")
	.dwattr $C$DW$74, DW_AT_linkage_name("I2CA_FIFO_ISR")
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x80)
	.dwattr $C$DW$74, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$74


$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("I2CB_ISR")
	.dwattr $C$DW$75, DW_AT_linkage_name("I2CB_ISR")
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x81)
	.dwattr $C$DW$75, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$75


$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("I2CB_FIFO_ISR")
	.dwattr $C$DW$76, DW_AT_linkage_name("I2CB_FIFO_ISR")
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x82)
	.dwattr $C$DW$76, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$76


$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("SCIC_RX_ISR")
	.dwattr $C$DW$77, DW_AT_linkage_name("SCIC_RX_ISR")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x83)
	.dwattr $C$DW$77, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$77


$C$DW$78	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$78, DW_AT_name("SCIC_TX_ISR")
	.dwattr $C$DW$78, DW_AT_linkage_name("SCIC_TX_ISR")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x84)
	.dwattr $C$DW$78, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$78


$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("SCID_RX_ISR")
	.dwattr $C$DW$79, DW_AT_linkage_name("SCID_RX_ISR")
	.dwattr $C$DW$79, DW_AT_declaration
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x85)
	.dwattr $C$DW$79, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$79


$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("SCID_TX_ISR")
	.dwattr $C$DW$80, DW_AT_linkage_name("SCID_TX_ISR")
	.dwattr $C$DW$80, DW_AT_declaration
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x86)
	.dwattr $C$DW$80, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$80


$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("SCIA_RX_ISR")
	.dwattr $C$DW$81, DW_AT_linkage_name("SCIA_RX_ISR")
	.dwattr $C$DW$81, DW_AT_declaration
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x87)
	.dwattr $C$DW$81, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$81


$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("SCIA_TX_ISR")
	.dwattr $C$DW$82, DW_AT_linkage_name("SCIA_TX_ISR")
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x88)
	.dwattr $C$DW$82, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$82


$C$DW$83	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$83, DW_AT_name("SCIB_RX_ISR")
	.dwattr $C$DW$83, DW_AT_linkage_name("SCIB_RX_ISR")
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x89)
	.dwattr $C$DW$83, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$83


$C$DW$84	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$84, DW_AT_name("SCIB_TX_ISR")
	.dwattr $C$DW$84, DW_AT_linkage_name("SCIB_TX_ISR")
	.dwattr $C$DW$84, DW_AT_declaration
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$84, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$84


$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("CANA0_ISR")
	.dwattr $C$DW$85, DW_AT_linkage_name("CANA0_ISR")
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$85, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$85


$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("CANA1_ISR")
	.dwattr $C$DW$86, DW_AT_linkage_name("CANA1_ISR")
	.dwattr $C$DW$86, DW_AT_declaration
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$86, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$86


$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("CANB0_ISR")
	.dwattr $C$DW$87, DW_AT_linkage_name("CANB0_ISR")
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$87, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$87


$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("CANB1_ISR")
	.dwattr $C$DW$88, DW_AT_linkage_name("CANB1_ISR")
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$88, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$88


$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("ADCA_EVT_ISR")
	.dwattr $C$DW$89, DW_AT_linkage_name("ADCA_EVT_ISR")
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$89, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$89


$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("ADCA2_ISR")
	.dwattr $C$DW$90, DW_AT_linkage_name("ADCA2_ISR")
	.dwattr $C$DW$90, DW_AT_declaration
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x90)
	.dwattr $C$DW$90, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$90


$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("ADCA3_ISR")
	.dwattr $C$DW$91, DW_AT_linkage_name("ADCA3_ISR")
	.dwattr $C$DW$91, DW_AT_declaration
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x91)
	.dwattr $C$DW$91, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$91


$C$DW$92	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$92, DW_AT_name("ADCA4_ISR")
	.dwattr $C$DW$92, DW_AT_linkage_name("ADCA4_ISR")
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x92)
	.dwattr $C$DW$92, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$92


$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("ADCB_EVT_ISR")
	.dwattr $C$DW$93, DW_AT_linkage_name("ADCB_EVT_ISR")
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x93)
	.dwattr $C$DW$93, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$93


$C$DW$94	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$94, DW_AT_name("ADCB2_ISR")
	.dwattr $C$DW$94, DW_AT_linkage_name("ADCB2_ISR")
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x94)
	.dwattr $C$DW$94, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$94


$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("ADCB3_ISR")
	.dwattr $C$DW$95, DW_AT_linkage_name("ADCB3_ISR")
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x95)
	.dwattr $C$DW$95, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$95


$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("ADCB4_ISR")
	.dwattr $C$DW$96, DW_AT_linkage_name("ADCB4_ISR")
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x96)
	.dwattr $C$DW$96, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$96


$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("CLA1_1_ISR")
	.dwattr $C$DW$97, DW_AT_linkage_name("CLA1_1_ISR")
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x97)
	.dwattr $C$DW$97, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$97


$C$DW$98	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$98, DW_AT_name("CLA1_2_ISR")
	.dwattr $C$DW$98, DW_AT_linkage_name("CLA1_2_ISR")
	.dwattr $C$DW$98, DW_AT_declaration
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x98)
	.dwattr $C$DW$98, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$98


$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("CLA1_3_ISR")
	.dwattr $C$DW$99, DW_AT_linkage_name("CLA1_3_ISR")
	.dwattr $C$DW$99, DW_AT_declaration
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x99)
	.dwattr $C$DW$99, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$99


$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("CLA1_4_ISR")
	.dwattr $C$DW$100, DW_AT_linkage_name("CLA1_4_ISR")
	.dwattr $C$DW$100, DW_AT_declaration
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$100, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$100


$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("CLA1_5_ISR")
	.dwattr $C$DW$101, DW_AT_linkage_name("CLA1_5_ISR")
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$101, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$101


$C$DW$102	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$102, DW_AT_name("CLA1_6_ISR")
	.dwattr $C$DW$102, DW_AT_linkage_name("CLA1_6_ISR")
	.dwattr $C$DW$102, DW_AT_declaration
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$102, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$102


$C$DW$103	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$103, DW_AT_name("CLA1_7_ISR")
	.dwattr $C$DW$103, DW_AT_linkage_name("CLA1_7_ISR")
	.dwattr $C$DW$103, DW_AT_declaration
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$103, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$103


$C$DW$104	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$104, DW_AT_name("CLA1_8_ISR")
	.dwattr $C$DW$104, DW_AT_linkage_name("CLA1_8_ISR")
	.dwattr $C$DW$104, DW_AT_declaration
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$104, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$104


$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("XINT3_ISR")
	.dwattr $C$DW$105, DW_AT_linkage_name("XINT3_ISR")
	.dwattr $C$DW$105, DW_AT_declaration
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$105, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$105


$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("XINT4_ISR")
	.dwattr $C$DW$106, DW_AT_linkage_name("XINT4_ISR")
	.dwattr $C$DW$106, DW_AT_declaration
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$106, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$106


$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("XINT5_ISR")
	.dwattr $C$DW$107, DW_AT_linkage_name("XINT5_ISR")
	.dwattr $C$DW$107, DW_AT_declaration
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$107, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$107


$C$DW$108	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$108, DW_AT_name("PBIST_ISR")
	.dwattr $C$DW$108, DW_AT_linkage_name("PBIST_ISR")
	.dwattr $C$DW$108, DW_AT_declaration
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$108, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$108


$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("FMC_ISR")
	.dwattr $C$DW$109, DW_AT_linkage_name("FMC_ISR")
	.dwattr $C$DW$109, DW_AT_declaration
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$109, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$109


$C$DW$110	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$110, DW_AT_name("FPU_OFLOW_ISR")
	.dwattr $C$DW$110, DW_AT_linkage_name("FPU_OFLOW_ISR")
	.dwattr $C$DW$110, DW_AT_declaration
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$110, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$110


$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("FPU_UFLOW_ISR")
	.dwattr $C$DW$111, DW_AT_linkage_name("FPU_UFLOW_ISR")
	.dwattr $C$DW$111, DW_AT_declaration
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$111, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$111


$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("I2CA_HIGH_ISR")
	.dwattr $C$DW$112, DW_AT_linkage_name("I2CA_HIGH_ISR")
	.dwattr $C$DW$112, DW_AT_declaration
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$112, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$112


$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("SYS_ERR_ISR")
	.dwattr $C$DW$113, DW_AT_linkage_name("SYS_ERR_ISR")
	.dwattr $C$DW$113, DW_AT_declaration
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$113, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$113


$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("ECATSYNC0_ISR")
	.dwattr $C$DW$114, DW_AT_linkage_name("ECATSYNC0_ISR")
	.dwattr $C$DW$114, DW_AT_declaration
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$114, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$114


$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("ECAT_ISR")
	.dwattr $C$DW$115, DW_AT_linkage_name("ECAT_ISR")
	.dwattr $C$DW$115, DW_AT_declaration
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$115, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$115


$C$DW$116	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$116, DW_AT_name("CIPC0_ISR")
	.dwattr $C$DW$116, DW_AT_linkage_name("CIPC0_ISR")
	.dwattr $C$DW$116, DW_AT_declaration
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$116, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$116


$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("CIPC1_ISR")
	.dwattr $C$DW$117, DW_AT_linkage_name("CIPC1_ISR")
	.dwattr $C$DW$117, DW_AT_declaration
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xab)
	.dwattr $C$DW$117, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$117


$C$DW$118	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$118, DW_AT_name("CIPC2_ISR")
	.dwattr $C$DW$118, DW_AT_linkage_name("CIPC2_ISR")
	.dwattr $C$DW$118, DW_AT_declaration
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xac)
	.dwattr $C$DW$118, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$118


$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("CIPC3_ISR")
	.dwattr $C$DW$119, DW_AT_linkage_name("CIPC3_ISR")
	.dwattr $C$DW$119, DW_AT_declaration
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xad)
	.dwattr $C$DW$119, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$119


$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("EPWM9_TZ_ISR")
	.dwattr $C$DW$120, DW_AT_linkage_name("EPWM9_TZ_ISR")
	.dwattr $C$DW$120, DW_AT_declaration
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xae)
	.dwattr $C$DW$120, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$120


$C$DW$121	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$121, DW_AT_name("EPWM10_TZ_ISR")
	.dwattr $C$DW$121, DW_AT_linkage_name("EPWM10_TZ_ISR")
	.dwattr $C$DW$121, DW_AT_declaration
	.dwattr $C$DW$121, DW_AT_external
	.dwattr $C$DW$121, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$121, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$121


$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("EPWM11_TZ_ISR")
	.dwattr $C$DW$122, DW_AT_linkage_name("EPWM11_TZ_ISR")
	.dwattr $C$DW$122, DW_AT_declaration
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$122, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$122


$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("EPWM12_TZ_ISR")
	.dwattr $C$DW$123, DW_AT_linkage_name("EPWM12_TZ_ISR")
	.dwattr $C$DW$123, DW_AT_declaration
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$123, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$123


$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("EPWM13_TZ_ISR")
	.dwattr $C$DW$124, DW_AT_linkage_name("EPWM13_TZ_ISR")
	.dwattr $C$DW$124, DW_AT_declaration
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$124, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$124


$C$DW$125	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$125, DW_AT_name("EPWM14_TZ_ISR")
	.dwattr $C$DW$125, DW_AT_linkage_name("EPWM14_TZ_ISR")
	.dwattr $C$DW$125, DW_AT_declaration
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$125, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$125


$C$DW$126	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$126, DW_AT_name("EPWM15_TZ_ISR")
	.dwattr $C$DW$126, DW_AT_linkage_name("EPWM15_TZ_ISR")
	.dwattr $C$DW$126, DW_AT_declaration
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$126, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$126


$C$DW$127	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$127, DW_AT_name("EPWM16_TZ_ISR")
	.dwattr $C$DW$127, DW_AT_linkage_name("EPWM16_TZ_ISR")
	.dwattr $C$DW$127, DW_AT_declaration
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$127, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$127


$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("EPWM9_ISR")
	.dwattr $C$DW$128, DW_AT_linkage_name("EPWM9_ISR")
	.dwattr $C$DW$128, DW_AT_declaration
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$128, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$128


$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("EPWM10_ISR")
	.dwattr $C$DW$129, DW_AT_linkage_name("EPWM10_ISR")
	.dwattr $C$DW$129, DW_AT_declaration
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$129, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$129


$C$DW$130	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$130, DW_AT_name("EPWM11_ISR")
	.dwattr $C$DW$130, DW_AT_linkage_name("EPWM11_ISR")
	.dwattr $C$DW$130, DW_AT_declaration
	.dwattr $C$DW$130, DW_AT_external
	.dwattr $C$DW$130, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$130, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$130


$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("EPWM12_ISR")
	.dwattr $C$DW$131, DW_AT_linkage_name("EPWM12_ISR")
	.dwattr $C$DW$131, DW_AT_declaration
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$131, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$131


$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("EPWM13_ISR")
	.dwattr $C$DW$132, DW_AT_linkage_name("EPWM13_ISR")
	.dwattr $C$DW$132, DW_AT_declaration
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0xba)
	.dwattr $C$DW$132, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$132


$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("EPWM14_ISR")
	.dwattr $C$DW$133, DW_AT_linkage_name("EPWM14_ISR")
	.dwattr $C$DW$133, DW_AT_declaration
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$133, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$133


$C$DW$134	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$134, DW_AT_name("EPWM15_ISR")
	.dwattr $C$DW$134, DW_AT_linkage_name("EPWM15_ISR")
	.dwattr $C$DW$134, DW_AT_declaration
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$134, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$134


$C$DW$135	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$135, DW_AT_name("EPWM16_ISR")
	.dwattr $C$DW$135, DW_AT_linkage_name("EPWM16_ISR")
	.dwattr $C$DW$135, DW_AT_declaration
	.dwattr $C$DW$135, DW_AT_external
	.dwattr $C$DW$135, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$135, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$135


$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("FSITXA1_ISR")
	.dwattr $C$DW$136, DW_AT_linkage_name("FSITXA1_ISR")
	.dwattr $C$DW$136, DW_AT_declaration
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$136, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$136


$C$DW$137	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$137, DW_AT_name("FSITXA2_ISR")
	.dwattr $C$DW$137, DW_AT_linkage_name("FSITXA2_ISR")
	.dwattr $C$DW$137, DW_AT_declaration
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$137, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$137


$C$DW$138	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$138, DW_AT_name("FSITXB1_ISR")
	.dwattr $C$DW$138, DW_AT_linkage_name("FSITXB1_ISR")
	.dwattr $C$DW$138, DW_AT_declaration
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$138, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$138


$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("FSITXB2_ISR")
	.dwattr $C$DW$139, DW_AT_linkage_name("FSITXB2_ISR")
	.dwattr $C$DW$139, DW_AT_declaration
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$139, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$139


$C$DW$140	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$140, DW_AT_name("FSIRXA1_ISR")
	.dwattr $C$DW$140, DW_AT_linkage_name("FSIRXA1_ISR")
	.dwattr $C$DW$140, DW_AT_declaration
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$140, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$140


$C$DW$141	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$141, DW_AT_name("FSIRXA2_ISR")
	.dwattr $C$DW$141, DW_AT_linkage_name("FSIRXA2_ISR")
	.dwattr $C$DW$141, DW_AT_declaration
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$141, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$141


$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("FSIRXB1_ISR")
	.dwattr $C$DW$142, DW_AT_linkage_name("FSIRXB1_ISR")
	.dwattr $C$DW$142, DW_AT_declaration
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$142, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$142


$C$DW$143	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$143, DW_AT_name("FSIRXB2_ISR")
	.dwattr $C$DW$143, DW_AT_linkage_name("FSIRXB2_ISR")
	.dwattr $C$DW$143, DW_AT_declaration
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$143, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$143


$C$DW$144	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$144, DW_AT_name("SDFM1_ISR")
	.dwattr $C$DW$144, DW_AT_linkage_name("SDFM1_ISR")
	.dwattr $C$DW$144, DW_AT_declaration
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$144, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$144


$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("SDFM2_ISR")
	.dwattr $C$DW$145, DW_AT_linkage_name("SDFM2_ISR")
	.dwattr $C$DW$145, DW_AT_declaration
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$145, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$145


$C$DW$146	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$146, DW_AT_name("ECATRSTINTN_ISR")
	.dwattr $C$DW$146, DW_AT_linkage_name("ECATRSTINTN_ISR")
	.dwattr $C$DW$146, DW_AT_declaration
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$146, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$146


$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("ECATSYNC1_ISR")
	.dwattr $C$DW$147, DW_AT_linkage_name("ECATSYNC1_ISR")
	.dwattr $C$DW$147, DW_AT_declaration
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$147, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$147


$C$DW$148	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$148, DW_AT_name("SDFM1DR1_ISR")
	.dwattr $C$DW$148, DW_AT_linkage_name("SDFM1DR1_ISR")
	.dwattr $C$DW$148, DW_AT_declaration
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0xca)
	.dwattr $C$DW$148, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$148


$C$DW$149	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$149, DW_AT_name("SDFM1DR2_ISR")
	.dwattr $C$DW$149, DW_AT_linkage_name("SDFM1DR2_ISR")
	.dwattr $C$DW$149, DW_AT_declaration
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$149, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$149


$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("SDFM1DR3_ISR")
	.dwattr $C$DW$150, DW_AT_linkage_name("SDFM1DR3_ISR")
	.dwattr $C$DW$150, DW_AT_declaration
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$150, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$150


$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("SDFM1DR4_ISR")
	.dwattr $C$DW$151, DW_AT_linkage_name("SDFM1DR4_ISR")
	.dwattr $C$DW$151, DW_AT_declaration
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$151, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$151


$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("SPIC_RX_ISR")
	.dwattr $C$DW$152, DW_AT_linkage_name("SPIC_RX_ISR")
	.dwattr $C$DW$152, DW_AT_declaration
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0xce)
	.dwattr $C$DW$152, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$152


$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("SPIC_TX_ISR")
	.dwattr $C$DW$153, DW_AT_linkage_name("SPIC_TX_ISR")
	.dwattr $C$DW$153, DW_AT_declaration
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$153, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$153


$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("SPID_RX_ISR")
	.dwattr $C$DW$154, DW_AT_linkage_name("SPID_RX_ISR")
	.dwattr $C$DW$154, DW_AT_declaration
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x102)
	.dwattr $C$DW$154, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$154


$C$DW$155	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$155, DW_AT_name("SPID_TX_ISR")
	.dwattr $C$DW$155, DW_AT_linkage_name("SPID_TX_ISR")
	.dwattr $C$DW$155, DW_AT_declaration
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x103)
	.dwattr $C$DW$155, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$155


$C$DW$156	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$156, DW_AT_name("SDFM2DR1_ISR")
	.dwattr $C$DW$156, DW_AT_linkage_name("SDFM2DR1_ISR")
	.dwattr $C$DW$156, DW_AT_declaration
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$156, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$156


$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("SDFM2DR2_ISR")
	.dwattr $C$DW$157, DW_AT_linkage_name("SDFM2DR2_ISR")
	.dwattr $C$DW$157, DW_AT_declaration
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$157, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$157


$C$DW$158	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$158, DW_AT_name("SDFM2DR3_ISR")
	.dwattr $C$DW$158, DW_AT_linkage_name("SDFM2DR3_ISR")
	.dwattr $C$DW$158, DW_AT_declaration
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$158, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$158


$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("SDFM2DR4_ISR")
	.dwattr $C$DW$159, DW_AT_linkage_name("SDFM2DR4_ISR")
	.dwattr $C$DW$159, DW_AT_declaration
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$159, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$159


$C$DW$160	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$160, DW_AT_name("FSIRXC1_ISR")
	.dwattr $C$DW$160, DW_AT_linkage_name("FSIRXC1_ISR")
	.dwattr $C$DW$160, DW_AT_declaration
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$160, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$160


$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("FSIRXC2_ISR")
	.dwattr $C$DW$161, DW_AT_linkage_name("FSIRXC2_ISR")
	.dwattr $C$DW$161, DW_AT_declaration
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$161, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$161


$C$DW$162	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$162, DW_AT_name("FSIRXD1_ISR")
	.dwattr $C$DW$162, DW_AT_linkage_name("FSIRXD1_ISR")
	.dwattr $C$DW$162, DW_AT_declaration
	.dwattr $C$DW$162, DW_AT_external
	.dwattr $C$DW$162, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$162, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$162


$C$DW$163	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$163, DW_AT_name("FSIRXD2_ISR")
	.dwattr $C$DW$163, DW_AT_linkage_name("FSIRXD2_ISR")
	.dwattr $C$DW$163, DW_AT_declaration
	.dwattr $C$DW$163, DW_AT_external
	.dwattr $C$DW$163, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$163, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$163


$C$DW$164	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$164, DW_AT_name("FSIRXE1_ISR")
	.dwattr $C$DW$164, DW_AT_linkage_name("FSIRXE1_ISR")
	.dwattr $C$DW$164, DW_AT_declaration
	.dwattr $C$DW$164, DW_AT_external
	.dwattr $C$DW$164, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$164, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$164


$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("FSIRXE2_ISR")
	.dwattr $C$DW$165, DW_AT_linkage_name("FSIRXE2_ISR")
	.dwattr $C$DW$165, DW_AT_declaration
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$165, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$165


$C$DW$166	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$166, DW_AT_name("FSIRXF1_ISR")
	.dwattr $C$DW$166, DW_AT_linkage_name("FSIRXF1_ISR")
	.dwattr $C$DW$166, DW_AT_declaration
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0xda)
	.dwattr $C$DW$166, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$166


$C$DW$167	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$167, DW_AT_name("FSIRXF2_ISR")
	.dwattr $C$DW$167, DW_AT_linkage_name("FSIRXF2_ISR")
	.dwattr $C$DW$167, DW_AT_declaration
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$167, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$167


$C$DW$168	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$168, DW_AT_name("FSIRXG1_ISR")
	.dwattr $C$DW$168, DW_AT_linkage_name("FSIRXG1_ISR")
	.dwattr $C$DW$168, DW_AT_declaration
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$168, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$168


$C$DW$169	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$169, DW_AT_name("FSIRXG2_ISR")
	.dwattr $C$DW$169, DW_AT_linkage_name("FSIRXG2_ISR")
	.dwattr $C$DW$169, DW_AT_declaration
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$169, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$169


$C$DW$170	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$170, DW_AT_name("FSIRXH1_ISR")
	.dwattr $C$DW$170, DW_AT_linkage_name("FSIRXH1_ISR")
	.dwattr $C$DW$170, DW_AT_declaration
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0xde)
	.dwattr $C$DW$170, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$170


$C$DW$171	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$171, DW_AT_name("FSIRXH2_ISR")
	.dwattr $C$DW$171, DW_AT_linkage_name("FSIRXH2_ISR")
	.dwattr $C$DW$171, DW_AT_declaration
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$171, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$171


$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("MCANSS0_ISR")
	.dwattr $C$DW$172, DW_AT_linkage_name("MCANSS0_ISR")
	.dwattr $C$DW$172, DW_AT_declaration
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$172, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$172


$C$DW$173	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$173, DW_AT_name("MCANSS1_ISR")
	.dwattr $C$DW$173, DW_AT_linkage_name("MCANSS1_ISR")
	.dwattr $C$DW$173, DW_AT_declaration
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$173, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$173


$C$DW$174	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$174, DW_AT_name("MCANSS_ECC_CORR_PLS_ISR")
	.dwattr $C$DW$174, DW_AT_linkage_name("MCANSS_ECC_CORR_PLS_ISR")
	.dwattr $C$DW$174, DW_AT_declaration
	.dwattr $C$DW$174, DW_AT_external
	.dwattr $C$DW$174, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0xff)
	.dwattr $C$DW$174, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$174


$C$DW$175	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$175, DW_AT_name("MCANSS_WAKE_AND_TS_PLS_ISR")
	.dwattr $C$DW$175, DW_AT_linkage_name("MCANSS_WAKE_AND_TS_PLS_ISR")
	.dwattr $C$DW$175, DW_AT_declaration
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x100)
	.dwattr $C$DW$175, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$175


$C$DW$176	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$176, DW_AT_name("PMBUSA_ISR")
	.dwattr $C$DW$176, DW_AT_linkage_name("PMBUSA_ISR")
	.dwattr $C$DW$176, DW_AT_declaration
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$176, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$176


$C$DW$177	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$177, DW_AT_name("CM_STATUS_ISR")
	.dwattr $C$DW$177, DW_AT_linkage_name("CM_STATUS_ISR")
	.dwattr $C$DW$177, DW_AT_declaration
	.dwattr $C$DW$177, DW_AT_external
	.dwattr $C$DW$177, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$177, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$177


$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("USBA_ISR")
	.dwattr $C$DW$178, DW_AT_linkage_name("USBA_ISR")
	.dwattr $C$DW$178, DW_AT_declaration
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$178, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$178


$C$DW$179	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$179, DW_AT_name("ADCC_EVT_ISR")
	.dwattr $C$DW$179, DW_AT_linkage_name("ADCC_EVT_ISR")
	.dwattr $C$DW$179, DW_AT_declaration
	.dwattr $C$DW$179, DW_AT_external
	.dwattr $C$DW$179, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$179, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$179


$C$DW$180	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$180, DW_AT_name("ADCC2_ISR")
	.dwattr $C$DW$180, DW_AT_linkage_name("ADCC2_ISR")
	.dwattr $C$DW$180, DW_AT_declaration
	.dwattr $C$DW$180, DW_AT_external
	.dwattr $C$DW$180, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$180, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$180


$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("ADCC3_ISR")
	.dwattr $C$DW$181, DW_AT_linkage_name("ADCC3_ISR")
	.dwattr $C$DW$181, DW_AT_declaration
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$181, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$181


$C$DW$182	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$182, DW_AT_name("ADCC4_ISR")
	.dwattr $C$DW$182, DW_AT_linkage_name("ADCC4_ISR")
	.dwattr $C$DW$182, DW_AT_declaration
	.dwattr $C$DW$182, DW_AT_external
	.dwattr $C$DW$182, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$182, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$182


$C$DW$183	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$183, DW_AT_name("ADCD_EVT_ISR")
	.dwattr $C$DW$183, DW_AT_linkage_name("ADCD_EVT_ISR")
	.dwattr $C$DW$183, DW_AT_declaration
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$183, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$183


$C$DW$184	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$184, DW_AT_name("ADCD2_ISR")
	.dwattr $C$DW$184, DW_AT_linkage_name("ADCD2_ISR")
	.dwattr $C$DW$184, DW_AT_declaration
	.dwattr $C$DW$184, DW_AT_external
	.dwattr $C$DW$184, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0xea)
	.dwattr $C$DW$184, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$184


$C$DW$185	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$185, DW_AT_name("ADCD3_ISR")
	.dwattr $C$DW$185, DW_AT_linkage_name("ADCD3_ISR")
	.dwattr $C$DW$185, DW_AT_declaration
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$185, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$185


$C$DW$186	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$186, DW_AT_name("ADCD4_ISR")
	.dwattr $C$DW$186, DW_AT_linkage_name("ADCD4_ISR")
	.dwattr $C$DW$186, DW_AT_declaration
	.dwattr $C$DW$186, DW_AT_external
	.dwattr $C$DW$186, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0xec)
	.dwattr $C$DW$186, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$186


$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("CMTOCPUXIPC0_ISR")
	.dwattr $C$DW$187, DW_AT_linkage_name("CMTOCPUXIPC0_ISR")
	.dwattr $C$DW$187, DW_AT_declaration
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0xed)
	.dwattr $C$DW$187, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$187


$C$DW$188	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$188, DW_AT_name("CMTOCPUXIPC1_ISR")
	.dwattr $C$DW$188, DW_AT_linkage_name("CMTOCPUXIPC1_ISR")
	.dwattr $C$DW$188, DW_AT_declaration
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0xee)
	.dwattr $C$DW$188, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$188


$C$DW$189	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$189, DW_AT_name("CMTOCPUXIPC2_ISR")
	.dwattr $C$DW$189, DW_AT_linkage_name("CMTOCPUXIPC2_ISR")
	.dwattr $C$DW$189, DW_AT_declaration
	.dwattr $C$DW$189, DW_AT_external
	.dwattr $C$DW$189, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0xef)
	.dwattr $C$DW$189, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$189


$C$DW$190	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$190, DW_AT_name("CMTOCPUXIPC3_ISR")
	.dwattr $C$DW$190, DW_AT_linkage_name("CMTOCPUXIPC3_ISR")
	.dwattr $C$DW$190, DW_AT_declaration
	.dwattr $C$DW$190, DW_AT_external
	.dwattr $C$DW$190, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$190, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$190


$C$DW$191	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$191, DW_AT_name("CMTOCPUXIPC4_ISR")
	.dwattr $C$DW$191, DW_AT_linkage_name("CMTOCPUXIPC4_ISR")
	.dwattr $C$DW$191, DW_AT_declaration
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$191, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$191


$C$DW$192	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$192, DW_AT_name("CMTOCPUXIPC5_ISR")
	.dwattr $C$DW$192, DW_AT_linkage_name("CMTOCPUXIPC5_ISR")
	.dwattr $C$DW$192, DW_AT_declaration
	.dwattr $C$DW$192, DW_AT_external
	.dwattr $C$DW$192, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$192, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$192


$C$DW$193	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$193, DW_AT_name("CMTOCPUXIPC6_ISR")
	.dwattr $C$DW$193, DW_AT_linkage_name("CMTOCPUXIPC6_ISR")
	.dwattr $C$DW$193, DW_AT_declaration
	.dwattr $C$DW$193, DW_AT_external
	.dwattr $C$DW$193, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$193, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$193


$C$DW$194	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$194, DW_AT_name("CMTOCPUXIPC7_ISR")
	.dwattr $C$DW$194, DW_AT_linkage_name("CMTOCPUXIPC7_ISR")
	.dwattr $C$DW$194, DW_AT_declaration
	.dwattr $C$DW$194, DW_AT_external
	.dwattr $C$DW$194, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$194, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$194


$C$DW$195	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$195, DW_AT_name("ECAP6_2_ISR")
	.dwattr $C$DW$195, DW_AT_linkage_name("ECAP6_2_ISR")
	.dwattr $C$DW$195, DW_AT_declaration
	.dwattr $C$DW$195, DW_AT_external
	.dwattr $C$DW$195, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$195, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$195


$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("ECAP7_2_ISR")
	.dwattr $C$DW$196, DW_AT_linkage_name("ECAP7_2_ISR")
	.dwattr $C$DW$196, DW_AT_declaration
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$196, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$196


$C$DW$197	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$197, DW_AT_name("CPUCRC_INT_ISR")
	.dwattr $C$DW$197, DW_AT_linkage_name("CPUCRC_INT_ISR")
	.dwattr $C$DW$197, DW_AT_declaration
	.dwattr $C$DW$197, DW_AT_external
	.dwattr $C$DW$197, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$197, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$197


$C$DW$198	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$198, DW_AT_name("CLA1CRC_INT_ISR")
	.dwattr $C$DW$198, DW_AT_linkage_name("CLA1CRC_INT_ISR")
	.dwattr $C$DW$198, DW_AT_declaration
	.dwattr $C$DW$198, DW_AT_external
	.dwattr $C$DW$198, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$198, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$198


$C$DW$199	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$199, DW_AT_name("CLA_OVERFLOW_ISR")
	.dwattr $C$DW$199, DW_AT_linkage_name("CLA_OVERFLOW_ISR")
	.dwattr $C$DW$199, DW_AT_declaration
	.dwattr $C$DW$199, DW_AT_external
	.dwattr $C$DW$199, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$199, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$199


$C$DW$200	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$200, DW_AT_name("CLA_UNDERFLOW_ISR")
	.dwattr $C$DW$200, DW_AT_linkage_name("CLA_UNDERFLOW_ISR")
	.dwattr $C$DW$200, DW_AT_declaration
	.dwattr $C$DW$200, DW_AT_external
	.dwattr $C$DW$200, DW_AT_decl_file("..\F2838x_utils\../F2838x_utils/f2838x_defaultisr.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$200, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$200

$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$201, DW_AT_linkage_name("PieCtrlRegs")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$201, DW_AT_declaration
	.dwattr $C$DW$201, DW_AT_external
	.dwattr $C$DW$201, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x2b9)
	.dwattr $C$DW$201, DW_AT_decl_column(0x26)

$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("IPC_Instance")
	.dwattr $C$DW$202, DW_AT_linkage_name("IPC_Instance")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$202, DW_AT_declaration
	.dwattr $C$DW$202, DW_AT_external
	.dwattr $C$DW$202, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x130)
	.dwattr $C$DW$202, DW_AT_decl_column(0x1d)

$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("PieVectTable")
	.dwattr $C$DW$203, DW_AT_linkage_name("PieVectTable")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$203, DW_AT_declaration
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$203, DW_AT_decl_column(0x27)

	.global	||PieVectTableInit||
	.sect	".const"
	.align	2
	.elfsym	||PieVectTableInit||,SYM_SIZE(448),SYM_BLOCKED(1)
||PieVectTableInit||:
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE1_RESERVED_INT @ 0
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE2_RESERVED_INT @ 32
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE3_RESERVED_INT @ 64
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE4_RESERVED_INT @ 96
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE5_RESERVED_INT @ 128
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE6_RESERVED_INT @ 160
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE7_RESERVED_INT @ 192
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE8_RESERVED_INT @ 224
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE9_RESERVED_INT @ 256
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE10_RESERVED_INT @ 288
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE11_RESERVED_INT @ 320
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE12_RESERVED_INT @ 352
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE13_RESERVED_INT @ 384
	.bits	||TIMER1_ISR||,32		; PieVectTableInit.TIMER1_INT @ 416
	.bits	||TIMER2_ISR||,32		; PieVectTableInit.TIMER2_INT @ 448
	.bits	||DATALOG_ISR||,32		; PieVectTableInit.DATALOG_INT @ 480
	.bits	||RTOS_ISR||,32		; PieVectTableInit.RTOS_INT @ 512
	.bits	||EMU_ISR||,32		; PieVectTableInit.EMU_INT @ 544
	.bits	||NMI_ISR||,32		; PieVectTableInit.NMI_INT @ 576
	.bits	||ILLEGAL_ISR||,32		; PieVectTableInit.ILLEGAL_INT @ 608
	.bits	||USER1_ISR||,32		; PieVectTableInit.USER1_INT @ 640
	.bits	||USER2_ISR||,32		; PieVectTableInit.USER2_INT @ 672
	.bits	||USER3_ISR||,32		; PieVectTableInit.USER3_INT @ 704
	.bits	||USER4_ISR||,32		; PieVectTableInit.USER4_INT @ 736
	.bits	||USER5_ISR||,32		; PieVectTableInit.USER5_INT @ 768
	.bits	||USER6_ISR||,32		; PieVectTableInit.USER6_INT @ 800
	.bits	||USER7_ISR||,32		; PieVectTableInit.USER7_INT @ 832
	.bits	||USER8_ISR||,32		; PieVectTableInit.USER8_INT @ 864
	.bits	||USER9_ISR||,32		; PieVectTableInit.USER9_INT @ 896
	.bits	||USER10_ISR||,32		; PieVectTableInit.USER10_INT @ 928
	.bits	||USER11_ISR||,32		; PieVectTableInit.USER11_INT @ 960
	.bits	||USER12_ISR||,32		; PieVectTableInit.USER12_INT @ 992
	.bits	||ADCA1_ISR||,32		; PieVectTableInit.ADCA1_INT @ 1024
	.bits	||ADCB1_ISR||,32		; PieVectTableInit.ADCB1_INT @ 1056
	.bits	||ADCC1_ISR||,32		; PieVectTableInit.ADCC1_INT @ 1088
	.bits	||XINT1_ISR||,32		; PieVectTableInit.XINT1_INT @ 1120
	.bits	||XINT2_ISR||,32		; PieVectTableInit.XINT2_INT @ 1152
	.bits	||ADCD1_ISR||,32		; PieVectTableInit.ADCD1_INT @ 1184
	.bits	||TIMER0_ISR||,32		; PieVectTableInit.TIMER0_INT @ 1216
	.bits	||WAKE_ISR||,32		; PieVectTableInit.WAKE_INT @ 1248
	.bits	||EPWM1_TZ_ISR||,32		; PieVectTableInit.EPWM1_TZ_INT @ 1280
	.bits	||EPWM2_TZ_ISR||,32		; PieVectTableInit.EPWM2_TZ_INT @ 1312
	.bits	||EPWM3_TZ_ISR||,32		; PieVectTableInit.EPWM3_TZ_INT @ 1344
	.bits	||EPWM4_TZ_ISR||,32		; PieVectTableInit.EPWM4_TZ_INT @ 1376
	.bits	||EPWM5_TZ_ISR||,32		; PieVectTableInit.EPWM5_TZ_INT @ 1408
	.bits	||EPWM6_TZ_ISR||,32		; PieVectTableInit.EPWM6_TZ_INT @ 1440
	.bits	||EPWM7_TZ_ISR||,32		; PieVectTableInit.EPWM7_TZ_INT @ 1472
	.bits	||EPWM8_TZ_ISR||,32		; PieVectTableInit.EPWM8_TZ_INT @ 1504
	.bits	||EPWM1_ISR||,32		; PieVectTableInit.EPWM1_INT @ 1536
	.bits	||EPWM2_ISR||,32		; PieVectTableInit.EPWM2_INT @ 1568
	.bits	||EPWM3_ISR||,32		; PieVectTableInit.EPWM3_INT @ 1600
	.bits	||EPWM4_ISR||,32		; PieVectTableInit.EPWM4_INT @ 1632
	.bits	||EPWM5_ISR||,32		; PieVectTableInit.EPWM5_INT @ 1664
	.bits	||EPWM6_ISR||,32		; PieVectTableInit.EPWM6_INT @ 1696
	.bits	||EPWM7_ISR||,32		; PieVectTableInit.EPWM7_INT @ 1728
	.bits	||EPWM8_ISR||,32		; PieVectTableInit.EPWM8_INT @ 1760
	.bits	||ECAP1_ISR||,32		; PieVectTableInit.ECAP1_INT @ 1792
	.bits	||ECAP2_ISR||,32		; PieVectTableInit.ECAP2_INT @ 1824
	.bits	||ECAP3_ISR||,32		; PieVectTableInit.ECAP3_INT @ 1856
	.bits	||ECAP4_ISR||,32		; PieVectTableInit.ECAP4_INT @ 1888
	.bits	||ECAP5_ISR||,32		; PieVectTableInit.ECAP5_INT @ 1920
	.bits	||ECAP6_ISR||,32		; PieVectTableInit.ECAP6_INT @ 1952
	.bits	||ECAP7_ISR||,32		; PieVectTableInit.ECAP7_INT @ 1984
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE14_RESERVED_INT @ 2016
	.bits	||EQEP1_ISR||,32		; PieVectTableInit.EQEP1_INT @ 2048
	.bits	||EQEP2_ISR||,32		; PieVectTableInit.EQEP2_INT @ 2080
	.bits	||EQEP3_ISR||,32		; PieVectTableInit.EQEP3_INT @ 2112
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE15_RESERVED_INT @ 2144
	.bits	||CLB1_ISR||,32		; PieVectTableInit.CLB1_INT @ 2176
	.bits	||CLB2_ISR||,32		; PieVectTableInit.CLB2_INT @ 2208
	.bits	||CLB3_ISR||,32		; PieVectTableInit.CLB3_INT @ 2240
	.bits	||CLB4_ISR||,32		; PieVectTableInit.CLB4_INT @ 2272
	.bits	||SPIA_RX_ISR||,32		; PieVectTableInit.SPIA_RX_INT @ 2304
	.bits	||SPIA_TX_ISR||,32		; PieVectTableInit.SPIA_TX_INT @ 2336
	.bits	||SPIB_RX_ISR||,32		; PieVectTableInit.SPIB_RX_INT @ 2368
	.bits	||SPIB_TX_ISR||,32		; PieVectTableInit.SPIB_TX_INT @ 2400
	.bits	||MCBSPA_RX_ISR||,32		; PieVectTableInit.MCBSPA_RX_INT @ 2432
	.bits	||MCBSPA_TX_ISR||,32		; PieVectTableInit.MCBSPA_TX_INT @ 2464
	.bits	||MCBSPB_RX_ISR||,32		; PieVectTableInit.MCBSPB_RX_INT @ 2496
	.bits	||MCBSPB_TX_ISR||,32		; PieVectTableInit.MCBSPB_TX_INT @ 2528
	.bits	||DMA_CH1_ISR||,32		; PieVectTableInit.DMA_CH1_INT @ 2560
	.bits	||DMA_CH2_ISR||,32		; PieVectTableInit.DMA_CH2_INT @ 2592
	.bits	||DMA_CH3_ISR||,32		; PieVectTableInit.DMA_CH3_INT @ 2624
	.bits	||DMA_CH4_ISR||,32		; PieVectTableInit.DMA_CH4_INT @ 2656
	.bits	||DMA_CH5_ISR||,32		; PieVectTableInit.DMA_CH5_INT @ 2688
	.bits	||DMA_CH6_ISR||,32		; PieVectTableInit.DMA_CH6_INT @ 2720
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE16_RESERVED_INT @ 2752
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE17_RESERVED_INT @ 2784
	.bits	||I2CA_ISR||,32		; PieVectTableInit.I2CA_INT @ 2816
	.bits	||I2CA_FIFO_ISR||,32		; PieVectTableInit.I2CA_FIFO_INT @ 2848
	.bits	||I2CB_ISR||,32		; PieVectTableInit.I2CB_INT @ 2880
	.bits	||I2CB_FIFO_ISR||,32		; PieVectTableInit.I2CB_FIFO_INT @ 2912
	.bits	||SCIC_RX_ISR||,32		; PieVectTableInit.SCIC_RX_INT @ 2944
	.bits	||SCIC_TX_ISR||,32		; PieVectTableInit.SCIC_TX_INT @ 2976
	.bits	||SCID_RX_ISR||,32		; PieVectTableInit.SCID_RX_INT @ 3008
	.bits	||SCID_TX_ISR||,32		; PieVectTableInit.SCID_TX_INT @ 3040
	.bits	||SCIA_RX_ISR||,32		; PieVectTableInit.SCIA_RX_INT @ 3072
	.bits	||SCIA_TX_ISR||,32		; PieVectTableInit.SCIA_TX_INT @ 3104
	.bits	||SCIB_RX_ISR||,32		; PieVectTableInit.SCIB_RX_INT @ 3136
	.bits	||SCIB_TX_ISR||,32		; PieVectTableInit.SCIB_TX_INT @ 3168
	.bits	||CANA0_ISR||,32		; PieVectTableInit.CANA0_INT @ 3200
	.bits	||CANA1_ISR||,32		; PieVectTableInit.CANA1_INT @ 3232
	.bits	||CANB0_ISR||,32		; PieVectTableInit.CANB0_INT @ 3264
	.bits	||CANB1_ISR||,32		; PieVectTableInit.CANB1_INT @ 3296
	.bits	||ADCA_EVT_ISR||,32		; PieVectTableInit.ADCA_EVT_INT @ 3328
	.bits	||ADCA2_ISR||,32		; PieVectTableInit.ADCA2_INT @ 3360
	.bits	||ADCA3_ISR||,32		; PieVectTableInit.ADCA3_INT @ 3392
	.bits	||ADCA4_ISR||,32		; PieVectTableInit.ADCA4_INT @ 3424
	.bits	||ADCB_EVT_ISR||,32		; PieVectTableInit.ADCB_EVT_INT @ 3456
	.bits	||ADCB2_ISR||,32		; PieVectTableInit.ADCB2_INT @ 3488
	.bits	||ADCB3_ISR||,32		; PieVectTableInit.ADCB3_INT @ 3520
	.bits	||ADCB4_ISR||,32		; PieVectTableInit.ADCB4_INT @ 3552
	.bits	||CLA1_1_ISR||,32		; PieVectTableInit.CLA1_1_INT @ 3584
	.bits	||CLA1_2_ISR||,32		; PieVectTableInit.CLA1_2_INT @ 3616
	.bits	||CLA1_3_ISR||,32		; PieVectTableInit.CLA1_3_INT @ 3648
	.bits	||CLA1_4_ISR||,32		; PieVectTableInit.CLA1_4_INT @ 3680
	.bits	||CLA1_5_ISR||,32		; PieVectTableInit.CLA1_5_INT @ 3712
	.bits	||CLA1_6_ISR||,32		; PieVectTableInit.CLA1_6_INT @ 3744
	.bits	||CLA1_7_ISR||,32		; PieVectTableInit.CLA1_7_INT @ 3776
	.bits	||CLA1_8_ISR||,32		; PieVectTableInit.CLA1_8_INT @ 3808
	.bits	||XINT3_ISR||,32		; PieVectTableInit.XINT3_INT @ 3840
	.bits	||XINT4_ISR||,32		; PieVectTableInit.XINT4_INT @ 3872
	.bits	||XINT5_ISR||,32		; PieVectTableInit.XINT5_INT @ 3904
	.bits	||PBIST_ISR||,32		; PieVectTableInit.PBIST_INT @ 3936
	.bits	||FMC_ISR||,32		; PieVectTableInit.FMC_INT @ 3968
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE18_RESERVED_INT @ 4000
	.bits	||FPU_OFLOW_ISR||,32		; PieVectTableInit.FPU_OFLOW_INT @ 4032
	.bits	||FPU_UFLOW_ISR||,32		; PieVectTableInit.FPU_UFLOW_INT @ 4064
	.bits	||I2CA_HIGH_ISR||,32		; PieVectTableInit.I2CA_HIGH_INT @ 4096
	.bits	||SYS_ERR_ISR||,32		; PieVectTableInit.SYS_ERR_INT @ 4128
	.bits	||ECATSYNC0_ISR||,32		; PieVectTableInit.ECATSYNC0_INT @ 4160
	.bits	||ECAT_ISR||,32		; PieVectTableInit.ECAT_INT @ 4192
	.bits	||CIPC0_ISR||,32		; PieVectTableInit.CIPC0_INT @ 4224
	.bits	||CIPC1_ISR||,32		; PieVectTableInit.CIPC1_INT @ 4256
	.bits	||CIPC2_ISR||,32		; PieVectTableInit.CIPC2_INT @ 4288
	.bits	||CIPC3_ISR||,32		; PieVectTableInit.CIPC3_INT @ 4320
	.bits	||EPWM9_TZ_ISR||,32		; PieVectTableInit.EPWM9_TZ_INT @ 4352
	.bits	||EPWM10_TZ_ISR||,32		; PieVectTableInit.EPWM10_TZ_INT @ 4384
	.bits	||EPWM11_TZ_ISR||,32		; PieVectTableInit.EPWM11_TZ_INT @ 4416
	.bits	||EPWM12_TZ_ISR||,32		; PieVectTableInit.EPWM12_TZ_INT @ 4448
	.bits	||EPWM13_TZ_ISR||,32		; PieVectTableInit.EPWM13_TZ_INT @ 4480
	.bits	||EPWM14_TZ_ISR||,32		; PieVectTableInit.EPWM14_TZ_INT @ 4512
	.bits	||EPWM15_TZ_ISR||,32		; PieVectTableInit.EPWM15_TZ_INT @ 4544
	.bits	||EPWM16_TZ_ISR||,32		; PieVectTableInit.EPWM16_TZ_INT @ 4576
	.bits	||EPWM9_ISR||,32		; PieVectTableInit.EPWM9_INT @ 4608
	.bits	||EPWM10_ISR||,32		; PieVectTableInit.EPWM10_INT @ 4640
	.bits	||EPWM11_ISR||,32		; PieVectTableInit.EPWM11_INT @ 4672
	.bits	||EPWM12_ISR||,32		; PieVectTableInit.EPWM12_INT @ 4704
	.bits	||EPWM13_ISR||,32		; PieVectTableInit.EPWM13_INT @ 4736
	.bits	||EPWM14_ISR||,32		; PieVectTableInit.EPWM14_INT @ 4768
	.bits	||EPWM15_ISR||,32		; PieVectTableInit.EPWM15_INT @ 4800
	.bits	||EPWM16_ISR||,32		; PieVectTableInit.EPWM16_INT @ 4832
	.bits	||FSITXA1_ISR||,32		; PieVectTableInit.FSITXA1_INT @ 4864
	.bits	||FSITXA2_ISR||,32		; PieVectTableInit.FSITXA2_INT @ 4896
	.bits	||FSITXB1_ISR||,32		; PieVectTableInit.FSITXB1_INT @ 4928
	.bits	||FSITXB2_ISR||,32		; PieVectTableInit.FSITXB2_INT @ 4960
	.bits	||FSIRXA1_ISR||,32		; PieVectTableInit.FSIRXA1_INT @ 4992
	.bits	||FSIRXA2_ISR||,32		; PieVectTableInit.FSIRXA2_INT @ 5024
	.bits	||FSIRXB1_ISR||,32		; PieVectTableInit.FSIRXB1_INT @ 5056
	.bits	||FSIRXB2_ISR||,32		; PieVectTableInit.FSIRXB2_INT @ 5088
	.bits	||SDFM1_ISR||,32		; PieVectTableInit.SDFM1_INT @ 5120
	.bits	||SDFM2_ISR||,32		; PieVectTableInit.SDFM2_INT @ 5152
	.bits	||ECATRSTINTN_ISR||,32		; PieVectTableInit.ECATRST_INT @ 5184
	.bits	||ECATSYNC1_ISR||,32		; PieVectTableInit.ECATSYNC1_INT @ 5216
	.bits	||SDFM1DR1_ISR||,32		; PieVectTableInit.SDFM1DR1_INT @ 5248
	.bits	||SDFM1DR2_ISR||,32		; PieVectTableInit.SDFM1DR2_INT @ 5280
	.bits	||SDFM1DR3_ISR||,32		; PieVectTableInit.SDFM1DR3_INT @ 5312
	.bits	||SDFM1DR4_ISR||,32		; PieVectTableInit.SDFM1DR4_INT @ 5344
	.bits	||SPIC_RX_ISR||,32		; PieVectTableInit.SPIC_RX_INT @ 5376
	.bits	||SPIC_TX_ISR||,32		; PieVectTableInit.SPIC_TX_INT @ 5408
	.bits	||SPID_RX_ISR||,32		; PieVectTableInit.SPID_RX_INT @ 5440
	.bits	||SPID_TX_ISR||,32		; PieVectTableInit.SPID_TX_INT @ 5472
	.bits	||SDFM2DR1_ISR||,32		; PieVectTableInit.SDFM2DR1_INT @ 5504
	.bits	||SDFM2DR2_ISR||,32		; PieVectTableInit.SDFM2DR2_INT @ 5536
	.bits	||SDFM2DR3_ISR||,32		; PieVectTableInit.SDFM2DR3_INT @ 5568
	.bits	||SDFM2DR4_ISR||,32		; PieVectTableInit.SDFM2DR4_INT @ 5600
	.bits	||FSIRXC1_ISR||,32		; PieVectTableInit.FSIRXC1_INT @ 5632
	.bits	||FSIRXC2_ISR||,32		; PieVectTableInit.FSIRXC2_INT @ 5664
	.bits	||FSIRXD1_ISR||,32		; PieVectTableInit.FSIRXD1_INT @ 5696
	.bits	||FSIRXD2_ISR||,32		; PieVectTableInit.FSIRXD2_INT @ 5728
	.bits	||FSIRXE1_ISR||,32		; PieVectTableInit.FSIRXE1_INT @ 5760
	.bits	||FSIRXE2_ISR||,32		; PieVectTableInit.FSIRXE2_INT @ 5792
	.bits	||FSIRXF1_ISR||,32		; PieVectTableInit.FSIRXF1_INT @ 5824
	.bits	||FSIRXF2_ISR||,32		; PieVectTableInit.FSIRXF2_INT @ 5856
	.bits	||FSIRXG1_ISR||,32		; PieVectTableInit.FSIRXG1_INT @ 5888
	.bits	||FSIRXG2_ISR||,32		; PieVectTableInit.FSIRXG2_INT @ 5920
	.bits	||FSIRXH1_ISR||,32		; PieVectTableInit.FSIRXH1_INT @ 5952
	.bits	||FSIRXH2_ISR||,32		; PieVectTableInit.FSIRXH2_INT @ 5984
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.CLB5_INT @ 6016
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.CLB6_INT @ 6048
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.CLB7_INT @ 6080
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.CLB8_INT @ 6112
	.bits	||MCANSS0_ISR||,32		; PieVectTableInit.MCANSS0_INT @ 6144
	.bits	||MCANSS1_ISR||,32		; PieVectTableInit.MCANSS1_INT @ 6176
	.bits	||MCANSS_ECC_CORR_PLS_ISR||,32		; PieVectTableInit.MCANSS_ECC_CORR_PLS_INT @ 6208
	.bits	||MCANSS_WAKE_AND_TS_PLS_ISR||,32		; PieVectTableInit.MCANSS_WAKE_AND_TS_PLS_INT @ 6240
	.bits	||PMBUSA_ISR||,32		; PieVectTableInit.PMBUSA_INT @ 6272
	.bits	||CM_STATUS_ISR||,32		; PieVectTableInit.CM_STATUS_INT @ 6304
	.bits	||USBA_ISR||,32		; PieVectTableInit.USBA_INT @ 6336
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE19_RESERVED_INT @ 6368
	.bits	||ADCC_EVT_ISR||,32		; PieVectTableInit.ADCC_EVT_INT @ 6400
	.bits	||ADCC2_ISR||,32		; PieVectTableInit.ADCC2_INT @ 6432
	.bits	||ADCC3_ISR||,32		; PieVectTableInit.ADCC3_INT @ 6464
	.bits	||ADCC4_ISR||,32		; PieVectTableInit.ADCC4_INT @ 6496
	.bits	||ADCD_EVT_ISR||,32		; PieVectTableInit.ADCD_EVT_INT @ 6528
	.bits	||ADCD2_ISR||,32		; PieVectTableInit.ADCD2_INT @ 6560
	.bits	||ADCD3_ISR||,32		; PieVectTableInit.ADCD3_INT @ 6592
	.bits	||ADCD4_ISR||,32		; PieVectTableInit.ADCD4_INT @ 6624
	.bits	||CMTOCPUXIPC0_ISR||,32		; PieVectTableInit.CMTOCPUXIPC0_INT @ 6656
	.bits	||CMTOCPUXIPC1_ISR||,32		; PieVectTableInit.CMTOCPUXIPC1_INT @ 6688
	.bits	||CMTOCPUXIPC2_ISR||,32		; PieVectTableInit.CMTOCPUXIPC2_INT @ 6720
	.bits	||CMTOCPUXIPC3_ISR||,32		; PieVectTableInit.CMTOCPUXIPC3_INT @ 6752
	.bits	||CMTOCPUXIPC4_ISR||,32		; PieVectTableInit.CMTOCPUXIPC4_INT @ 6784
	.bits	||CMTOCPUXIPC5_ISR||,32		; PieVectTableInit.CMTOCPUXIPC5_INT @ 6816
	.bits	||CMTOCPUXIPC6_ISR||,32		; PieVectTableInit.CMTOCPUXIPC6_INT @ 6848
	.bits	||CMTOCPUXIPC7_ISR||,32		; PieVectTableInit.CMTOCPUXIPC7_INT @ 6880
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE20_RESERVED_INT @ 6912
	.bits	||ECAP6_2_ISR||,32		; PieVectTableInit.ECAP6_2_INT @ 6944
	.bits	||ECAP7_2_ISR||,32		; PieVectTableInit.ECAP7_2_INT @ 6976
	.bits	||PIE_RESERVED_ISR||,32		; PieVectTableInit.PIE21_RESERVED_INT @ 7008
	.bits	||CPUCRC_INT_ISR||,32		; PieVectTableInit.CPUCRC_INT @ 7040
	.bits	||CLA1CRC_INT_ISR||,32		; PieVectTableInit.CLA1CRC_INT @ 7072
	.bits	||CLA_OVERFLOW_ISR||,32		; PieVectTableInit.CLA_OVERFLOW_INT @ 7104
	.bits	||CLA_UNDERFLOW_ISR||,32		; PieVectTableInit.CLA_UNDERFLOW_INT @ 7136

$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("PieVectTableInit")
	.dwattr $C$DW$204, DW_AT_linkage_name("PieVectTableInit")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_addr ||PieVectTableInit||]
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_decl_file("../F2838x_utils/f2838x_pievect.c")
	.dwattr $C$DW$204, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$204, DW_AT_decl_column(0x1d)

	.sblock	".const"
;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-c2000_22.6.1.LTS\bin\acia2000.exe -@C:\\Users\\yahal\\AppData\\Local\\Temp\\{9E022A27-6EDD-47A9-B2CC-0EF2075EC3CE} 
	.sect	".text:Flash_RelinquishPumpSemaphore"
	.clink
	.global	||Flash_RelinquishPumpSemaphore||

$C$DW$205	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$205, DW_AT_name("Flash_RelinquishPumpSemaphore")
	.dwattr $C$DW$205, DW_AT_low_pc(||Flash_RelinquishPumpSemaphore||)
	.dwattr $C$DW$205, DW_AT_high_pc(0x00)
	.dwattr $C$DW$205, DW_AT_linkage_name("Flash_RelinquishPumpSemaphore")
	.dwattr $C$DW$205, DW_AT_external
	.dwattr $C$DW$205, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x61f)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$205, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1568,column 1,is_stmt,address ||Flash_RelinquishPumpSemaphore||,isa 0

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
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1569,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1570,column 5,is_stmt,isa 0
        MOVW      DP,#||IPC_Instance||+66 ; [CPU_ARAU] 
        MOVL      XAR4,@||IPC_Instance||+66 ; [CPU_ALU] |1570| 
        MOVB      AL,#0                 ; [CPU_ALU] |1570| 
        MOV       AH,#23130             ; [CPU_ALU] |1570| 
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |1570| 
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1571,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1572,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$205, DW_AT_TI_end_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$205, DW_AT_TI_end_line(0x624)
	.dwattr $C$DW$205, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$205

	.sect	".text:GetSemaphore"
	.clink
	.global	||GetSemaphore||

$C$DW$207	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$207, DW_AT_name("GetSemaphore")
	.dwattr $C$DW$207, DW_AT_low_pc(||GetSemaphore||)
	.dwattr $C$DW$207, DW_AT_high_pc(0x00)
	.dwattr $C$DW$207, DW_AT_linkage_name("GetSemaphore")
	.dwattr $C$DW$207, DW_AT_external
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$207, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x627)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0f)
	.dwattr $C$DW$207, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1576,column 1,is_stmt,address ||GetSemaphore||,isa 0

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
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1577,column 5,is_stmt,isa 0
        MOVW      DP,#||IPC_Instance||+66 ; [CPU_ARAU] 
        MOVL      XAR4,@||IPC_Instance||+66 ; [CPU_ALU] |1577| 
        MOVL      ACC,*+XAR4[4]         ; [CPU_ALU] |1577| 
	.dwpsn	file "..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h",line 1578,column 1,is_stmt,isa 0
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$207, DW_AT_TI_end_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\flash.h")
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x62a)
	.dwattr $C$DW$207, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$207

	.sect	".text:InitPieVectTable"
	.clink
	.global	||InitPieVectTable||

$C$DW$209	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$209, DW_AT_name("InitPieVectTable")
	.dwattr $C$DW$209, DW_AT_low_pc(||InitPieVectTable||)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_linkage_name("InitPieVectTable")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_decl_file("../F2838x_utils/f2838x_pievect.c")
	.dwattr $C$DW$209, DW_AT_decl_line(0x124)
	.dwattr $C$DW$209, DW_AT_decl_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 293,column 1,is_stmt,address ||InitPieVectTable||,isa 0

	.dwfde $C$DW$CIE, ||InitPieVectTable||

;***************************************************************
;* FNAME: InitPieVectTable              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  0 SOE     *
;***************************************************************

||InitPieVectTable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("Source")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_breg20 -2]

$C$DW$211	.dwtag  DW_TAG_variable
	.dwattr $C$DW$211, DW_AT_name("Dest")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_breg20 -4]

$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("i")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_breg20 -5]

	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 295,column 20,is_stmt,isa 0
        MOVL      XAR4,#||PieVectTableInit|| ; [CPU_ARAU] |295| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |295| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 296,column 18,is_stmt,isa 0
        MOVL      XAR4,#||PieVectTable|| ; [CPU_ARAU] |296| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |296| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 302,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |302| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |302| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |302| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 303,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |303| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |303| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |303| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 305,column 5,is_stmt,isa 0
 EALLOW
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 306,column 9,is_stmt,isa 0
        MOV       *-SP[5],#0            ; [CPU_ALU] |306| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 306,column 16,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |306| 
        CMPB      AL,#221               ; [CPU_ALU] |306| 
        B         ||$C$L2||,HIS         ; [CPU_ALU] |306| 
        ; branchcc occurs ; [] |306| 
||$C$L1||:    
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 308,column 6,is_stmt,isa 0
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |308| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |308| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |308| 
        MOVL      XAR6,*XAR4++          ; [CPU_ALU] |308| 
        ADDB      ACC,#2                ; [CPU_ALU] |308| 
        MOVL      *-SP[2],XAR4          ; [CPU_FPU] |308| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |308| 
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |308| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 306,column 25,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |306| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 306,column 16,is_stmt,isa 0
        MOV       AL,*-SP[5]            ; [CPU_ALU] |306| 
        CMPB      AL,#221               ; [CPU_ALU] |306| 
        B         ||$C$L1||,LO          ; [CPU_ALU] |306| 
        ; branchcc occurs ; [] |306| 
||$C$L2||:    
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 310,column 5,is_stmt,isa 0
 EDIS
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 315,column 5,is_stmt,isa 0
        MOVW      DP,#||PieCtrlRegs||   ; [CPU_ARAU] 
        OR        @$BLOCKED(||PieCtrlRegs||),#0x0001 ; [CPU_ALU] |315| 
	.dwpsn	file "../F2838x_utils/f2838x_pievect.c",line 316,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$209, DW_AT_TI_end_file("../F2838x_utils/f2838x_pievect.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||PIE_RESERVED_ISR||
	.global	||TIMER1_ISR||
	.global	||TIMER2_ISR||
	.global	||DATALOG_ISR||
	.global	||RTOS_ISR||
	.global	||EMU_ISR||
	.global	||NMI_ISR||
	.global	||ILLEGAL_ISR||
	.global	||USER1_ISR||
	.global	||USER2_ISR||
	.global	||USER3_ISR||
	.global	||USER4_ISR||
	.global	||USER5_ISR||
	.global	||USER6_ISR||
	.global	||USER7_ISR||
	.global	||USER8_ISR||
	.global	||USER9_ISR||
	.global	||USER10_ISR||
	.global	||USER11_ISR||
	.global	||USER12_ISR||
	.global	||ADCA1_ISR||
	.global	||ADCB1_ISR||
	.global	||ADCC1_ISR||
	.global	||XINT1_ISR||
	.global	||XINT2_ISR||
	.global	||ADCD1_ISR||
	.global	||TIMER0_ISR||
	.global	||WAKE_ISR||
	.global	||EPWM1_TZ_ISR||
	.global	||EPWM2_TZ_ISR||
	.global	||EPWM3_TZ_ISR||
	.global	||EPWM4_TZ_ISR||
	.global	||EPWM5_TZ_ISR||
	.global	||EPWM6_TZ_ISR||
	.global	||EPWM7_TZ_ISR||
	.global	||EPWM8_TZ_ISR||
	.global	||EPWM1_ISR||
	.global	||EPWM2_ISR||
	.global	||EPWM3_ISR||
	.global	||EPWM4_ISR||
	.global	||EPWM5_ISR||
	.global	||EPWM6_ISR||
	.global	||EPWM7_ISR||
	.global	||EPWM8_ISR||
	.global	||ECAP1_ISR||
	.global	||ECAP2_ISR||
	.global	||ECAP3_ISR||
	.global	||ECAP4_ISR||
	.global	||ECAP5_ISR||
	.global	||ECAP6_ISR||
	.global	||ECAP7_ISR||
	.global	||EQEP1_ISR||
	.global	||EQEP2_ISR||
	.global	||EQEP3_ISR||
	.global	||CLB1_ISR||
	.global	||CLB2_ISR||
	.global	||CLB3_ISR||
	.global	||CLB4_ISR||
	.global	||SPIA_RX_ISR||
	.global	||SPIA_TX_ISR||
	.global	||SPIB_RX_ISR||
	.global	||SPIB_TX_ISR||
	.global	||MCBSPA_RX_ISR||
	.global	||MCBSPA_TX_ISR||
	.global	||MCBSPB_RX_ISR||
	.global	||MCBSPB_TX_ISR||
	.global	||DMA_CH1_ISR||
	.global	||DMA_CH2_ISR||
	.global	||DMA_CH3_ISR||
	.global	||DMA_CH4_ISR||
	.global	||DMA_CH5_ISR||
	.global	||DMA_CH6_ISR||
	.global	||I2CA_ISR||
	.global	||I2CA_FIFO_ISR||
	.global	||I2CB_ISR||
	.global	||I2CB_FIFO_ISR||
	.global	||SCIC_RX_ISR||
	.global	||SCIC_TX_ISR||
	.global	||SCID_RX_ISR||
	.global	||SCID_TX_ISR||
	.global	||SCIA_RX_ISR||
	.global	||SCIA_TX_ISR||
	.global	||SCIB_RX_ISR||
	.global	||SCIB_TX_ISR||
	.global	||CANA0_ISR||
	.global	||CANA1_ISR||
	.global	||CANB0_ISR||
	.global	||CANB1_ISR||
	.global	||ADCA_EVT_ISR||
	.global	||ADCA2_ISR||
	.global	||ADCA3_ISR||
	.global	||ADCA4_ISR||
	.global	||ADCB_EVT_ISR||
	.global	||ADCB2_ISR||
	.global	||ADCB3_ISR||
	.global	||ADCB4_ISR||
	.global	||CLA1_1_ISR||
	.global	||CLA1_2_ISR||
	.global	||CLA1_3_ISR||
	.global	||CLA1_4_ISR||
	.global	||CLA1_5_ISR||
	.global	||CLA1_6_ISR||
	.global	||CLA1_7_ISR||
	.global	||CLA1_8_ISR||
	.global	||XINT3_ISR||
	.global	||XINT4_ISR||
	.global	||XINT5_ISR||
	.global	||PBIST_ISR||
	.global	||FMC_ISR||
	.global	||FPU_OFLOW_ISR||
	.global	||FPU_UFLOW_ISR||
	.global	||I2CA_HIGH_ISR||
	.global	||SYS_ERR_ISR||
	.global	||ECATSYNC0_ISR||
	.global	||ECAT_ISR||
	.global	||CIPC0_ISR||
	.global	||CIPC1_ISR||
	.global	||CIPC2_ISR||
	.global	||CIPC3_ISR||
	.global	||EPWM9_TZ_ISR||
	.global	||EPWM10_TZ_ISR||
	.global	||EPWM11_TZ_ISR||
	.global	||EPWM12_TZ_ISR||
	.global	||EPWM13_TZ_ISR||
	.global	||EPWM14_TZ_ISR||
	.global	||EPWM15_TZ_ISR||
	.global	||EPWM16_TZ_ISR||
	.global	||EPWM9_ISR||
	.global	||EPWM10_ISR||
	.global	||EPWM11_ISR||
	.global	||EPWM12_ISR||
	.global	||EPWM13_ISR||
	.global	||EPWM14_ISR||
	.global	||EPWM15_ISR||
	.global	||EPWM16_ISR||
	.global	||FSITXA1_ISR||
	.global	||FSITXA2_ISR||
	.global	||FSITXB1_ISR||
	.global	||FSITXB2_ISR||
	.global	||FSIRXA1_ISR||
	.global	||FSIRXA2_ISR||
	.global	||FSIRXB1_ISR||
	.global	||FSIRXB2_ISR||
	.global	||SDFM1_ISR||
	.global	||SDFM2_ISR||
	.global	||ECATRSTINTN_ISR||
	.global	||ECATSYNC1_ISR||
	.global	||SDFM1DR1_ISR||
	.global	||SDFM1DR2_ISR||
	.global	||SDFM1DR3_ISR||
	.global	||SDFM1DR4_ISR||
	.global	||SPIC_RX_ISR||
	.global	||SPIC_TX_ISR||
	.global	||SPID_RX_ISR||
	.global	||SPID_TX_ISR||
	.global	||SDFM2DR1_ISR||
	.global	||SDFM2DR2_ISR||
	.global	||SDFM2DR3_ISR||
	.global	||SDFM2DR4_ISR||
	.global	||FSIRXC1_ISR||
	.global	||FSIRXC2_ISR||
	.global	||FSIRXD1_ISR||
	.global	||FSIRXD2_ISR||
	.global	||FSIRXE1_ISR||
	.global	||FSIRXE2_ISR||
	.global	||FSIRXF1_ISR||
	.global	||FSIRXF2_ISR||
	.global	||FSIRXG1_ISR||
	.global	||FSIRXG2_ISR||
	.global	||FSIRXH1_ISR||
	.global	||FSIRXH2_ISR||
	.global	||MCANSS0_ISR||
	.global	||MCANSS1_ISR||
	.global	||MCANSS_ECC_CORR_PLS_ISR||
	.global	||MCANSS_WAKE_AND_TS_PLS_ISR||
	.global	||PMBUSA_ISR||
	.global	||CM_STATUS_ISR||
	.global	||USBA_ISR||
	.global	||ADCC_EVT_ISR||
	.global	||ADCC2_ISR||
	.global	||ADCC3_ISR||
	.global	||ADCC4_ISR||
	.global	||ADCD_EVT_ISR||
	.global	||ADCD2_ISR||
	.global	||ADCD3_ISR||
	.global	||ADCD4_ISR||
	.global	||CMTOCPUXIPC0_ISR||
	.global	||CMTOCPUXIPC1_ISR||
	.global	||CMTOCPUXIPC2_ISR||
	.global	||CMTOCPUXIPC3_ISR||
	.global	||CMTOCPUXIPC4_ISR||
	.global	||CMTOCPUXIPC5_ISR||
	.global	||CMTOCPUXIPC6_ISR||
	.global	||CMTOCPUXIPC7_ISR||
	.global	||ECAP6_2_ISR||
	.global	||ECAP7_2_ISR||
	.global	||CPUCRC_INT_ISR||
	.global	||CLA1CRC_INT_ISR||
	.global	||CLA_OVERFLOW_ISR||
	.global	||CLA_UNDERFLOW_ISR||
	.global	||PieCtrlRegs||
	.global	||IPC_Instance||
	.global	||PieVectTable||
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
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$214, DW_AT_name("IPC_ACK")
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0e)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$215, DW_AT_name("IPC_STS")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0e)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$216, DW_AT_name("IPC_SET")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0e)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_name("IPC_CLR")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0e)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_name("IPC_FLG")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0e)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_name("IPC_RSVDREG")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0e)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$220, DW_AT_name("IPC_COUNTERL")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0e)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_name("IPC_COUNTERH")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("IPC_Flag_Ctr_Reg_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$25, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$222	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$25)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$222)

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
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$223, DW_AT_name("IPC_SENDCOM")
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xed)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0e)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$224, DW_AT_name("IPC_SENDADDR")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xee)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0e)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_name("IPC_SENDDATA")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xef)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0e)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_name("IPC_REMOTEREPLY")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$226, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("IPC_SendCmd_Reg_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$227	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$227)

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
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$228, DW_AT_name("IPC_RECVCOM")
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0e)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_name("IPC_RECVADDR")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0e)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$230, DW_AT_name("IPC_RECVDATA")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0e)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$231, DW_AT_name("IPC_LOCALREPLY")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$23, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("IPC_RecvCmd_Reg_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$31, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$232	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$232)

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
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_name("IPC_BOOTSTS")
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0e)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$234, DW_AT_name("IPC_BOOTMODE")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$234, DW_AT_decl_column(0x0e)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$235, DW_AT_name("IPC_PUMPREQUEST")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xff)
	.dwattr $C$DW$235, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("IPC_Boot_Pump_Reg_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$236	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$34)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$236)

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
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$237, DW_AT_name("IPC_Flag_Ctr_Reg")
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x122)
	.dwattr $C$DW$237, DW_AT_decl_column(0x23)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$238, DW_AT_name("IPC_SendCmd_Reg")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x123)
	.dwattr $C$DW$238, DW_AT_decl_column(0x23)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$239, DW_AT_name("IPC_RecvCmd_Reg")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x124)
	.dwattr $C$DW$239, DW_AT_decl_column(0x23)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$240, DW_AT_name("IPC_Boot_Pump_Reg")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x125)
	.dwattr $C$DW$240, DW_AT_decl_column(0x23)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$241, DW_AT_name("IPC_IntNum")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x126)
	.dwattr $C$DW$241, DW_AT_decl_column(0x23)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_name("IPC_MsgRam_LtoR")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x127)
	.dwattr $C$DW$242, DW_AT_decl_column(0x23)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$243, DW_AT_name("IPC_MsgRam_RtoL")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x128)
	.dwattr $C$DW$243, DW_AT_decl_column(0x23)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_name("IPC_Offset_Corr")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x129)
	.dwattr $C$DW$244, DW_AT_decl_column(0x23)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("IPC_Instance_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$98, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_driverlib\driverlib\ipc.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$245	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$98)

$C$DW$T$99	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$245)

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100

$C$DW$T$100	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x78)
$C$DW$246	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$246, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$100

	.dwendtag $C$DW$TU$100


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$247, DW_AT_name("ACK1")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x41)
	.dwattr $C$DW$247, DW_AT_decl_column(0x0c)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$248, DW_AT_name("ACK2")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x42)
	.dwattr $C$DW$248, DW_AT_decl_column(0x0c)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$249, DW_AT_name("ACK3")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x43)
	.dwattr $C$DW$249, DW_AT_decl_column(0x0c)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$250, DW_AT_name("ACK4")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x44)
	.dwattr $C$DW$250, DW_AT_decl_column(0x0c)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$251, DW_AT_name("ACK5")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x45)
	.dwattr $C$DW$251, DW_AT_decl_column(0x0c)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$252, DW_AT_name("ACK6")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x46)
	.dwattr $C$DW$252, DW_AT_decl_column(0x0c)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$253, DW_AT_name("ACK7")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x47)
	.dwattr $C$DW$253, DW_AT_decl_column(0x0c)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$254, DW_AT_name("ACK8")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x48)
	.dwattr $C$DW$254, DW_AT_decl_column(0x0c)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$255, DW_AT_name("ACK9")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x49)
	.dwattr $C$DW$255, DW_AT_decl_column(0x0c)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$256, DW_AT_name("ACK10")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$256, DW_AT_decl_column(0x0c)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$257, DW_AT_name("ACK11")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$257, DW_AT_decl_column(0x0c)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$258, DW_AT_name("ACK12")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$258, DW_AT_decl_column(0x0c)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$259, DW_AT_name("rsvd1")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$259, DW_AT_bit_size(0x04)
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$259, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$40, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$260, DW_AT_name("all")
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x51)
	.dwattr $C$DW$260, DW_AT_decl_column(0x0d)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$261, DW_AT_name("bit")
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x52)
	.dwattr $C$DW$261, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$41, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$262, DW_AT_name("ENPIE")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x37)
	.dwattr $C$DW$262, DW_AT_decl_column(0x0c)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$263, DW_AT_name("PIEVECT")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$263, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x38)
	.dwattr $C$DW$263, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$42, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$264, DW_AT_name("all")
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$264, DW_AT_decl_column(0x0d)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$265, DW_AT_name("bit")
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$265, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("PIEIER10_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$266, DW_AT_name("INTx1")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x206)
	.dwattr $C$DW$266, DW_AT_decl_column(0x0c)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$267, DW_AT_name("INTx2")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x207)
	.dwattr $C$DW$267, DW_AT_decl_column(0x0c)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$268, DW_AT_name("INTx3")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x208)
	.dwattr $C$DW$268, DW_AT_decl_column(0x0c)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$269, DW_AT_name("INTx4")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x209)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0c)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$270, DW_AT_name("INTx5")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x20a)
	.dwattr $C$DW$270, DW_AT_decl_column(0x0c)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$271, DW_AT_name("INTx6")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$271, DW_AT_decl_column(0x0c)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$272, DW_AT_name("INTx7")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x20c)
	.dwattr $C$DW$272, DW_AT_decl_column(0x0c)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$273, DW_AT_name("INTx8")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x20d)
	.dwattr $C$DW$273, DW_AT_decl_column(0x0c)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$274, DW_AT_name("INTx9")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x20e)
	.dwattr $C$DW$274, DW_AT_decl_column(0x0c)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$275, DW_AT_name("INTx10")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x20f)
	.dwattr $C$DW$275, DW_AT_decl_column(0x0c)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$276, DW_AT_name("INTx11")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x210)
	.dwattr $C$DW$276, DW_AT_decl_column(0x0c)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$277, DW_AT_name("INTx12")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x211)
	.dwattr $C$DW$277, DW_AT_decl_column(0x0c)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$278, DW_AT_name("INTx13")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x212)
	.dwattr $C$DW$278, DW_AT_decl_column(0x0c)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$279, DW_AT_name("INTx14")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x213)
	.dwattr $C$DW$279, DW_AT_decl_column(0x0c)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$280, DW_AT_name("INTx15")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x214)
	.dwattr $C$DW$280, DW_AT_decl_column(0x0c)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$281, DW_AT_name("INTx16")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x215)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x205)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("PIEIER10_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$282, DW_AT_name("all")
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x219)
	.dwattr $C$DW$282, DW_AT_decl_column(0x0d)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$283, DW_AT_name("bit")
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$283, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$45, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x218)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("PIEIER11_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$284, DW_AT_name("INTx1")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x236)
	.dwattr $C$DW$284, DW_AT_decl_column(0x0c)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$285, DW_AT_name("INTx2")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x237)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0c)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$286, DW_AT_name("INTx3")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x238)
	.dwattr $C$DW$286, DW_AT_decl_column(0x0c)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$287, DW_AT_name("INTx4")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x239)
	.dwattr $C$DW$287, DW_AT_decl_column(0x0c)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$288, DW_AT_name("INTx5")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$288, DW_AT_decl_column(0x0c)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$289, DW_AT_name("INTx6")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$289, DW_AT_decl_column(0x0c)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$290, DW_AT_name("INTx7")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$290, DW_AT_decl_column(0x0c)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$291, DW_AT_name("INTx8")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$291, DW_AT_decl_column(0x0c)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$292, DW_AT_name("INTx9")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$292, DW_AT_decl_column(0x0c)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$293, DW_AT_name("INTx10")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0c)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$294, DW_AT_name("INTx11")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x240)
	.dwattr $C$DW$294, DW_AT_decl_column(0x0c)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$295, DW_AT_name("INTx12")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x241)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0c)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$296, DW_AT_name("INTx13")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x242)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0c)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$297, DW_AT_name("INTx14")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x243)
	.dwattr $C$DW$297, DW_AT_decl_column(0x0c)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$298, DW_AT_name("INTx15")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x244)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0c)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$299, DW_AT_name("INTx16")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x245)
	.dwattr $C$DW$299, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$46, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x235)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("PIEIER11_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$300, DW_AT_name("all")
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x249)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0d)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$301, DW_AT_name("bit")
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$301, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$47, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x248)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("PIEIER12_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$302, DW_AT_name("INTx1")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x266)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0c)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$303, DW_AT_name("INTx2")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x267)
	.dwattr $C$DW$303, DW_AT_decl_column(0x0c)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$304, DW_AT_name("INTx3")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x268)
	.dwattr $C$DW$304, DW_AT_decl_column(0x0c)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$305, DW_AT_name("INTx4")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x269)
	.dwattr $C$DW$305, DW_AT_decl_column(0x0c)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$306, DW_AT_name("INTx5")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$306, DW_AT_decl_column(0x0c)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$307, DW_AT_name("INTx6")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x26b)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0c)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$308, DW_AT_name("INTx7")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$308, DW_AT_decl_column(0x0c)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$309, DW_AT_name("INTx8")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$309, DW_AT_decl_column(0x0c)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$310, DW_AT_name("INTx9")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$310, DW_AT_decl_column(0x0c)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$311, DW_AT_name("INTx10")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x26f)
	.dwattr $C$DW$311, DW_AT_decl_column(0x0c)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$312, DW_AT_name("INTx11")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x270)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0c)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$313, DW_AT_name("INTx12")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x271)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0c)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$314, DW_AT_name("INTx13")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x272)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0c)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$315, DW_AT_name("INTx14")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x273)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0c)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$316, DW_AT_name("INTx15")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x274)
	.dwattr $C$DW$316, DW_AT_decl_column(0x0c)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$317, DW_AT_name("INTx16")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x275)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$48, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x265)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("PIEIER12_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$318, DW_AT_name("all")
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x279)
	.dwattr $C$DW$318, DW_AT_decl_column(0x0d)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$319, DW_AT_name("bit")
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$319, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$49, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x278)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("PIEIER1_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$320, DW_AT_name("INTx1")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x56)
	.dwattr $C$DW$320, DW_AT_decl_column(0x0c)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$321, DW_AT_name("INTx2")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x57)
	.dwattr $C$DW$321, DW_AT_decl_column(0x0c)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$322, DW_AT_name("INTx3")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x58)
	.dwattr $C$DW$322, DW_AT_decl_column(0x0c)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$323, DW_AT_name("INTx4")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x59)
	.dwattr $C$DW$323, DW_AT_decl_column(0x0c)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$324, DW_AT_name("INTx5")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$324, DW_AT_decl_column(0x0c)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$325, DW_AT_name("INTx6")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$325, DW_AT_decl_column(0x0c)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$326, DW_AT_name("INTx7")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$326, DW_AT_decl_column(0x0c)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$327, DW_AT_name("INTx8")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$327, DW_AT_decl_column(0x0c)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$328, DW_AT_name("INTx9")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$328, DW_AT_decl_column(0x0c)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$329, DW_AT_name("INTx10")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$329, DW_AT_decl_column(0x0c)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$330, DW_AT_name("INTx11")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x60)
	.dwattr $C$DW$330, DW_AT_decl_column(0x0c)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$331, DW_AT_name("INTx12")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x61)
	.dwattr $C$DW$331, DW_AT_decl_column(0x0c)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$332, DW_AT_name("INTx13")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x62)
	.dwattr $C$DW$332, DW_AT_decl_column(0x0c)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$333, DW_AT_name("INTx14")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x63)
	.dwattr $C$DW$333, DW_AT_decl_column(0x0c)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$334, DW_AT_name("INTx15")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x64)
	.dwattr $C$DW$334, DW_AT_decl_column(0x0c)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$335, DW_AT_name("INTx16")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x65)
	.dwattr $C$DW$335, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$50, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("PIEIER1_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$336, DW_AT_name("all")
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x69)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0d)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$337, DW_AT_name("bit")
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$337, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$51, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("PIEIER2_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$338, DW_AT_name("INTx1")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x86)
	.dwattr $C$DW$338, DW_AT_decl_column(0x0c)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$339, DW_AT_name("INTx2")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x87)
	.dwattr $C$DW$339, DW_AT_decl_column(0x0c)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$340, DW_AT_name("INTx3")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x88)
	.dwattr $C$DW$340, DW_AT_decl_column(0x0c)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$341, DW_AT_name("INTx4")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x89)
	.dwattr $C$DW$341, DW_AT_decl_column(0x0c)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$342, DW_AT_name("INTx5")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$342, DW_AT_decl_column(0x0c)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$343, DW_AT_name("INTx6")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$343, DW_AT_decl_column(0x0c)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$344, DW_AT_name("INTx7")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$344, DW_AT_decl_column(0x0c)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$345, DW_AT_name("INTx8")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$345, DW_AT_decl_column(0x0c)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$346, DW_AT_name("INTx9")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0c)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$347, DW_AT_name("INTx10")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0c)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$348, DW_AT_name("INTx11")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x90)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0c)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$349, DW_AT_name("INTx12")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x91)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0c)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$350, DW_AT_name("INTx13")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x92)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0c)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$351, DW_AT_name("INTx14")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x93)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$352, DW_AT_name("INTx15")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x94)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0c)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$353, DW_AT_name("INTx16")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x95)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$52, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("PIEIER2_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$354, DW_AT_name("all")
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x99)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0d)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$355, DW_AT_name("bit")
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$355, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$53, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("PIEIER3_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$356, DW_AT_name("INTx1")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0c)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$357, DW_AT_name("INTx2")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$358, DW_AT_name("INTx3")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$359, DW_AT_name("INTx4")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$360, DW_AT_name("INTx5")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0xba)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0c)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$361, DW_AT_name("INTx6")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0c)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$362, DW_AT_name("INTx7")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0c)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$363, DW_AT_name("INTx8")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$364, DW_AT_name("INTx9")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$365, DW_AT_name("INTx10")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0c)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$366, DW_AT_name("INTx11")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0c)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$367, DW_AT_name("INTx12")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$368, DW_AT_name("INTx13")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$369, DW_AT_name("INTx14")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$370, DW_AT_name("INTx15")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$371, DW_AT_name("INTx16")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$54, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("PIEIER3_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$372, DW_AT_name("all")
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0d)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$373, DW_AT_name("bit")
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0xca)
	.dwattr $C$DW$373, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$55, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("PIEIER4_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$374, DW_AT_name("INTx1")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$375, DW_AT_name("INTx2")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$376, DW_AT_name("INTx3")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$377, DW_AT_name("INTx4")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0c)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$378, DW_AT_name("INTx5")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0xea)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0c)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$379, DW_AT_name("INTx6")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0c)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$380, DW_AT_name("INTx7")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0xec)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$381, DW_AT_name("INTx8")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0xed)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$382, DW_AT_name("INTx9")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0xee)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$383, DW_AT_name("INTx10")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0xef)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$384, DW_AT_name("INTx11")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$385, DW_AT_name("INTx12")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0c)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$386, DW_AT_name("INTx13")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0c)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$387, DW_AT_name("INTx14")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0c)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$388, DW_AT_name("INTx15")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0c)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$389, DW_AT_name("INTx16")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$56, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("PIEIER4_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$390, DW_AT_name("all")
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0d)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$391, DW_AT_name("bit")
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$391, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$57, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("PIEIER5_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$392, DW_AT_name("INTx1")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x116)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$393, DW_AT_name("INTx2")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x117)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0c)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$394, DW_AT_name("INTx3")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x118)
	.dwattr $C$DW$394, DW_AT_decl_column(0x0c)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$395, DW_AT_name("INTx4")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x119)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0c)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$396, DW_AT_name("INTx5")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$397, DW_AT_name("INTx6")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$398, DW_AT_name("INTx7")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$399, DW_AT_name("INTx8")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0c)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$400, DW_AT_name("INTx9")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0c)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$401, DW_AT_name("INTx10")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0c)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$402, DW_AT_name("INTx11")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x120)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$403, DW_AT_name("INTx12")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x121)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$404, DW_AT_name("INTx13")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x122)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$405, DW_AT_name("INTx14")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x123)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0c)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$406, DW_AT_name("INTx15")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x124)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0c)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$407, DW_AT_name("INTx16")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x125)
	.dwattr $C$DW$407, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$58, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("PIEIER5_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$408, DW_AT_name("all")
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x129)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0d)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$409, DW_AT_name("bit")
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$409, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$59, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x128)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("PIEIER6_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$410, DW_AT_name("INTx1")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x146)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$411, DW_AT_name("INTx2")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x147)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$412, DW_AT_name("INTx3")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x148)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$413, DW_AT_name("INTx4")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x149)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$414, DW_AT_name("INTx5")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0c)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$415, DW_AT_name("INTx6")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0c)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$416, DW_AT_name("INTx7")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0c)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$417, DW_AT_name("INTx8")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0c)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$418, DW_AT_name("INTx9")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$418, DW_AT_decl_column(0x0c)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$419, DW_AT_name("INTx10")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0c)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$420, DW_AT_name("INTx11")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x150)
	.dwattr $C$DW$420, DW_AT_decl_column(0x0c)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$421, DW_AT_name("INTx12")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x151)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0c)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$422, DW_AT_name("INTx13")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x152)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0c)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$423, DW_AT_name("INTx14")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x153)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$424, DW_AT_name("INTx15")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x154)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$425, DW_AT_name("INTx16")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x155)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$60, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x145)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("PIEIER6_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$426, DW_AT_name("all")
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x159)
	.dwattr $C$DW$426, DW_AT_decl_column(0x0d)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$427, DW_AT_name("bit")
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$427, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$61, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("PIEIER7_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$428, DW_AT_name("INTx1")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x176)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$429, DW_AT_name("INTx2")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x177)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0c)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$430, DW_AT_name("INTx3")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x178)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0c)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$431, DW_AT_name("INTx4")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x179)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$432, DW_AT_name("INTx5")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0c)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$433, DW_AT_name("INTx6")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0c)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$434, DW_AT_name("INTx7")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$435, DW_AT_name("INTx8")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$436, DW_AT_name("INTx9")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$437, DW_AT_name("INTx10")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0c)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$438, DW_AT_name("INTx11")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x180)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0c)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$439, DW_AT_name("INTx12")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x181)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$440, DW_AT_name("INTx13")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x182)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$441, DW_AT_name("INTx14")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x183)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$442, DW_AT_name("INTx15")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x184)
	.dwattr $C$DW$442, DW_AT_decl_column(0x0c)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$443, DW_AT_name("INTx16")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x185)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x175)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("PIEIER7_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$444, DW_AT_name("all")
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x189)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0d)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$445, DW_AT_name("bit")
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$445, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$63, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("PIEIER8_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$446, DW_AT_name("INTx1")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0c)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$447, DW_AT_name("INTx2")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0c)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$448, DW_AT_name("INTx3")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$449, DW_AT_name("INTx4")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0c)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$450, DW_AT_name("INTx5")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0c)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$451, DW_AT_name("INTx6")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$452, DW_AT_name("INTx7")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$453, DW_AT_name("INTx8")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$454, DW_AT_name("INTx9")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0c)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$455, DW_AT_name("INTx10")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$455, DW_AT_decl_column(0x0c)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$456, DW_AT_name("INTx11")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0c)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$457, DW_AT_name("INTx12")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0c)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$458, DW_AT_name("INTx13")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$458, DW_AT_decl_column(0x0c)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$459, DW_AT_name("INTx14")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0c)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$460, DW_AT_name("INTx15")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0c)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$461, DW_AT_name("INTx16")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$461, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("PIEIER8_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$462, DW_AT_name("all")
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$462, DW_AT_decl_column(0x0d)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$463, DW_AT_name("bit")
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$463, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$65, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("PIEIER9_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$464, DW_AT_name("INTx1")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0c)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$465, DW_AT_name("INTx2")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0c)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$466, DW_AT_name("INTx3")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0c)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$467, DW_AT_name("INTx4")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0c)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$468, DW_AT_name("INTx5")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0c)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$469, DW_AT_name("INTx6")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0c)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$470, DW_AT_name("INTx7")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0c)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$471, DW_AT_name("INTx8")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0c)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$472, DW_AT_name("INTx9")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0c)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$473, DW_AT_name("INTx10")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0c)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$474, DW_AT_name("INTx11")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0c)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$475, DW_AT_name("INTx12")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0c)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$476, DW_AT_name("INTx13")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0c)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$477, DW_AT_name("INTx14")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0c)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$478, DW_AT_name("INTx15")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0c)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$479, DW_AT_name("INTx16")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$66, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("PIEIER9_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$480, DW_AT_name("all")
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0d)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$481, DW_AT_name("bit")
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$481, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$67, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("PIEIFR10_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$482, DW_AT_name("INTx1")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$482, DW_AT_decl_column(0x0c)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$483, DW_AT_name("INTx2")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0c)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$484, DW_AT_name("INTx3")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x220)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0c)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$485, DW_AT_name("INTx4")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x221)
	.dwattr $C$DW$485, DW_AT_decl_column(0x0c)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$486, DW_AT_name("INTx5")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x222)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0c)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$487, DW_AT_name("INTx6")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x223)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0c)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$488, DW_AT_name("INTx7")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x224)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0c)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$489, DW_AT_name("INTx8")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x225)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0c)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$490, DW_AT_name("INTx9")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x226)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0c)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$491, DW_AT_name("INTx10")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x227)
	.dwattr $C$DW$491, DW_AT_decl_column(0x0c)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$492, DW_AT_name("INTx11")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x228)
	.dwattr $C$DW$492, DW_AT_decl_column(0x0c)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$493, DW_AT_name("INTx12")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x229)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0c)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$494, DW_AT_name("INTx13")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$494, DW_AT_decl_column(0x0c)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$495, DW_AT_name("INTx14")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0c)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$496, DW_AT_name("INTx15")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$496, DW_AT_decl_column(0x0c)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$497, DW_AT_name("INTx16")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$68, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("PIEIFR10_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$498, DW_AT_name("all")
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x231)
	.dwattr $C$DW$498, DW_AT_decl_column(0x0d)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$499, DW_AT_name("bit")
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x232)
	.dwattr $C$DW$499, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$69, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x230)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("PIEIFR11_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$500, DW_AT_name("INTx1")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$500, DW_AT_decl_column(0x0c)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$501, DW_AT_name("INTx2")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0c)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$502, DW_AT_name("INTx3")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x250)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0c)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$503, DW_AT_name("INTx4")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x251)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0c)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$504, DW_AT_name("INTx5")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x252)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0c)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$505, DW_AT_name("INTx6")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x253)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0c)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$506, DW_AT_name("INTx7")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x254)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0c)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$507, DW_AT_name("INTx8")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x255)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0c)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$508, DW_AT_name("INTx9")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x256)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0c)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$509, DW_AT_name("INTx10")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x257)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0c)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$510, DW_AT_name("INTx11")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x258)
	.dwattr $C$DW$510, DW_AT_decl_column(0x0c)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$511, DW_AT_name("INTx12")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x259)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0c)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$512, DW_AT_name("INTx13")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x25a)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0c)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$513, DW_AT_name("INTx14")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0c)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$514, DW_AT_name("INTx15")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x25c)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0c)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$515, DW_AT_name("INTx16")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("PIEIFR11_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$516, DW_AT_name("all")
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x261)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0d)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$517, DW_AT_name("bit")
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x262)
	.dwattr $C$DW$517, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$71, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x260)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("PIEIFR12_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$518, DW_AT_name("INTx1")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x27e)
	.dwattr $C$DW$518, DW_AT_decl_column(0x0c)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$519, DW_AT_name("INTx2")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x27f)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0c)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$520, DW_AT_name("INTx3")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x280)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0c)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$521, DW_AT_name("INTx4")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x281)
	.dwattr $C$DW$521, DW_AT_decl_column(0x0c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$522, DW_AT_name("INTx5")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x282)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0c)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$523, DW_AT_name("INTx6")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x283)
	.dwattr $C$DW$523, DW_AT_decl_column(0x0c)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$524, DW_AT_name("INTx7")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x284)
	.dwattr $C$DW$524, DW_AT_decl_column(0x0c)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$525, DW_AT_name("INTx8")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x285)
	.dwattr $C$DW$525, DW_AT_decl_column(0x0c)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$526, DW_AT_name("INTx9")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x286)
	.dwattr $C$DW$526, DW_AT_decl_column(0x0c)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$527, DW_AT_name("INTx10")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x287)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0c)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$528, DW_AT_name("INTx11")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x288)
	.dwattr $C$DW$528, DW_AT_decl_column(0x0c)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$529, DW_AT_name("INTx12")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x289)
	.dwattr $C$DW$529, DW_AT_decl_column(0x0c)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$530, DW_AT_name("INTx13")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x28a)
	.dwattr $C$DW$530, DW_AT_decl_column(0x0c)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$531, DW_AT_name("INTx14")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x28b)
	.dwattr $C$DW$531, DW_AT_decl_column(0x0c)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$532, DW_AT_name("INTx15")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x28c)
	.dwattr $C$DW$532, DW_AT_decl_column(0x0c)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$533, DW_AT_name("INTx16")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x28d)
	.dwattr $C$DW$533, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x27d)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("PIEIFR12_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$534, DW_AT_name("all")
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x291)
	.dwattr $C$DW$534, DW_AT_decl_column(0x0d)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$535, DW_AT_name("bit")
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x292)
	.dwattr $C$DW$535, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$73, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x290)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("PIEIFR1_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$536, DW_AT_name("INTx1")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$536, DW_AT_decl_column(0x0c)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$537, DW_AT_name("INTx2")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0c)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$538, DW_AT_name("INTx3")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x70)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0c)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$539, DW_AT_name("INTx4")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x71)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0c)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$540, DW_AT_name("INTx5")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x72)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0c)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$541, DW_AT_name("INTx6")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x73)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0c)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$542, DW_AT_name("INTx7")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x74)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0c)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$543, DW_AT_name("INTx8")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x75)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0c)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$544, DW_AT_name("INTx9")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x76)
	.dwattr $C$DW$544, DW_AT_decl_column(0x0c)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$545, DW_AT_name("INTx10")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x77)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0c)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$546, DW_AT_name("INTx11")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x78)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0c)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$547, DW_AT_name("INTx12")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x79)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0c)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$548, DW_AT_name("INTx13")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0c)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$549, DW_AT_name("INTx14")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0c)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$550, DW_AT_name("INTx15")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0c)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$551, DW_AT_name("INTx16")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("PIEIFR1_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$552, DW_AT_name("all")
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x81)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0d)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$553, DW_AT_name("bit")
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x82)
	.dwattr $C$DW$553, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$75, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("PIEIFR2_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$554, DW_AT_name("INTx1")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0c)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$555, DW_AT_name("INTx2")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$556, DW_AT_name("INTx3")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0c)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$557, DW_AT_name("INTx4")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0c)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$558, DW_AT_name("INTx5")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0c)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$559, DW_AT_name("INTx6")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$559, DW_AT_decl_column(0x0c)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$560, DW_AT_name("INTx7")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$560, DW_AT_decl_column(0x0c)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$561, DW_AT_name("INTx8")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$561, DW_AT_decl_column(0x0c)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$562, DW_AT_name("INTx9")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$562, DW_AT_decl_column(0x0c)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$563, DW_AT_name("INTx10")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$563, DW_AT_decl_column(0x0c)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$564, DW_AT_name("INTx11")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$564, DW_AT_decl_column(0x0c)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$565, DW_AT_name("INTx12")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$565, DW_AT_decl_column(0x0c)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$566, DW_AT_name("INTx13")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$566, DW_AT_decl_column(0x0c)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$567, DW_AT_name("INTx14")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0xab)
	.dwattr $C$DW$567, DW_AT_decl_column(0x0c)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$568, DW_AT_name("INTx15")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0xac)
	.dwattr $C$DW$568, DW_AT_decl_column(0x0c)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$569, DW_AT_name("INTx16")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0xad)
	.dwattr $C$DW$569, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$76, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("PIEIFR2_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$570, DW_AT_name("all")
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$570, DW_AT_decl_column(0x0d)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$571, DW_AT_name("bit")
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$571, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$77, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("PIEIFR3_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$572, DW_AT_name("INTx1")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0xce)
	.dwattr $C$DW$572, DW_AT_decl_column(0x0c)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$573, DW_AT_name("INTx2")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$573, DW_AT_decl_column(0x0c)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$574, DW_AT_name("INTx3")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$574, DW_AT_decl_column(0x0c)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$575, DW_AT_name("INTx4")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$575, DW_AT_decl_column(0x0c)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$576, DW_AT_name("INTx5")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$576, DW_AT_decl_column(0x0c)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$577, DW_AT_name("INTx6")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$577, DW_AT_decl_column(0x0c)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$578, DW_AT_name("INTx7")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$578, DW_AT_decl_column(0x0c)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$579, DW_AT_name("INTx8")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$579, DW_AT_decl_column(0x0c)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$580, DW_AT_name("INTx9")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$580, DW_AT_decl_column(0x0c)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$581, DW_AT_name("INTx10")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$581, DW_AT_decl_column(0x0c)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$582, DW_AT_name("INTx11")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$582, DW_AT_decl_column(0x0c)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$583, DW_AT_name("INTx12")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$583, DW_AT_decl_column(0x0c)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$584, DW_AT_name("INTx13")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0xda)
	.dwattr $C$DW$584, DW_AT_decl_column(0x0c)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$585, DW_AT_name("INTx14")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$585, DW_AT_decl_column(0x0c)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$586, DW_AT_name("INTx15")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0c)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$587, DW_AT_name("INTx16")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$587, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$78, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("PIEIFR3_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$588, DW_AT_name("all")
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0d)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$589, DW_AT_name("bit")
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$589, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$79, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("PIEIFR4_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$590, DW_AT_name("INTx1")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0c)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$591, DW_AT_name("INTx2")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0xff)
	.dwattr $C$DW$591, DW_AT_decl_column(0x0c)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$592, DW_AT_name("INTx3")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x100)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0c)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$593, DW_AT_name("INTx4")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x101)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0c)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$594, DW_AT_name("INTx5")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x102)
	.dwattr $C$DW$594, DW_AT_decl_column(0x0c)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$595, DW_AT_name("INTx6")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x103)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0c)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$596, DW_AT_name("INTx7")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x104)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0c)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$597, DW_AT_name("INTx8")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x105)
	.dwattr $C$DW$597, DW_AT_decl_column(0x0c)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$598, DW_AT_name("INTx9")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x106)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0c)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$599, DW_AT_name("INTx10")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x107)
	.dwattr $C$DW$599, DW_AT_decl_column(0x0c)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$600, DW_AT_name("INTx11")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x108)
	.dwattr $C$DW$600, DW_AT_decl_column(0x0c)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$601, DW_AT_name("INTx12")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x109)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0c)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$602, DW_AT_name("INTx13")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$602, DW_AT_decl_column(0x0c)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$603, DW_AT_name("INTx14")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$603, DW_AT_decl_column(0x0c)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$604, DW_AT_name("INTx15")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$604, DW_AT_decl_column(0x0c)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$605, DW_AT_name("INTx16")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$605, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$80, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("PIEIFR4_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$606, DW_AT_name("all")
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x111)
	.dwattr $C$DW$606, DW_AT_decl_column(0x0d)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$607, DW_AT_name("bit")
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x112)
	.dwattr $C$DW$607, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$81, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("PIEIFR5_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$608, DW_AT_name("INTx1")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$608, DW_AT_decl_column(0x0c)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$609, DW_AT_name("INTx2")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$609, DW_AT_decl_column(0x0c)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$610, DW_AT_name("INTx3")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x130)
	.dwattr $C$DW$610, DW_AT_decl_column(0x0c)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$611, DW_AT_name("INTx4")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x131)
	.dwattr $C$DW$611, DW_AT_decl_column(0x0c)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$612, DW_AT_name("INTx5")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x132)
	.dwattr $C$DW$612, DW_AT_decl_column(0x0c)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$613, DW_AT_name("INTx6")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x133)
	.dwattr $C$DW$613, DW_AT_decl_column(0x0c)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$614, DW_AT_name("INTx7")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x134)
	.dwattr $C$DW$614, DW_AT_decl_column(0x0c)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$615, DW_AT_name("INTx8")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x135)
	.dwattr $C$DW$615, DW_AT_decl_column(0x0c)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$616, DW_AT_name("INTx9")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x136)
	.dwattr $C$DW$616, DW_AT_decl_column(0x0c)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$617, DW_AT_name("INTx10")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x137)
	.dwattr $C$DW$617, DW_AT_decl_column(0x0c)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$618, DW_AT_name("INTx11")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x138)
	.dwattr $C$DW$618, DW_AT_decl_column(0x0c)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$619, DW_AT_name("INTx12")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x139)
	.dwattr $C$DW$619, DW_AT_decl_column(0x0c)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$620, DW_AT_name("INTx13")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$620, DW_AT_decl_column(0x0c)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$621, DW_AT_name("INTx14")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$621, DW_AT_decl_column(0x0c)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$622, DW_AT_name("INTx15")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$622, DW_AT_decl_column(0x0c)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$623, DW_AT_name("INTx16")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$82, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("PIEIFR5_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$624, DW_AT_name("all")
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x141)
	.dwattr $C$DW$624, DW_AT_decl_column(0x0d)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$625, DW_AT_name("bit")
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x142)
	.dwattr $C$DW$625, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$83, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("PIEIFR6_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$626, DW_AT_name("INTx1")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$626, DW_AT_decl_column(0x0c)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$627, DW_AT_name("INTx2")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$627, DW_AT_decl_column(0x0c)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$628, DW_AT_name("INTx3")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x160)
	.dwattr $C$DW$628, DW_AT_decl_column(0x0c)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$629, DW_AT_name("INTx4")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x161)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0c)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$630, DW_AT_name("INTx5")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x162)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0c)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$631, DW_AT_name("INTx6")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x163)
	.dwattr $C$DW$631, DW_AT_decl_column(0x0c)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$632, DW_AT_name("INTx7")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x164)
	.dwattr $C$DW$632, DW_AT_decl_column(0x0c)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$633, DW_AT_name("INTx8")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x165)
	.dwattr $C$DW$633, DW_AT_decl_column(0x0c)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$634, DW_AT_name("INTx9")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x166)
	.dwattr $C$DW$634, DW_AT_decl_column(0x0c)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$635, DW_AT_name("INTx10")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x167)
	.dwattr $C$DW$635, DW_AT_decl_column(0x0c)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$636, DW_AT_name("INTx11")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x168)
	.dwattr $C$DW$636, DW_AT_decl_column(0x0c)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$637, DW_AT_name("INTx12")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x169)
	.dwattr $C$DW$637, DW_AT_decl_column(0x0c)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$638, DW_AT_name("INTx13")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0c)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$639, DW_AT_name("INTx14")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$639, DW_AT_decl_column(0x0c)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$640, DW_AT_name("INTx15")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$640, DW_AT_decl_column(0x0c)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$641, DW_AT_name("INTx16")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$84, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("PIEIFR6_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$642, DW_AT_name("all")
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x171)
	.dwattr $C$DW$642, DW_AT_decl_column(0x0d)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$643, DW_AT_name("bit")
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x172)
	.dwattr $C$DW$643, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$85, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x170)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("PIEIFR7_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$644, DW_AT_name("INTx1")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0c)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$645, DW_AT_name("INTx2")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$645, DW_AT_decl_column(0x0c)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$646, DW_AT_name("INTx3")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x190)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0c)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$647, DW_AT_name("INTx4")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x191)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0c)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$648, DW_AT_name("INTx5")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x192)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0c)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$649, DW_AT_name("INTx6")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x193)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$650, DW_AT_name("INTx7")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x194)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$651, DW_AT_name("INTx8")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x195)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$652, DW_AT_name("INTx9")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x196)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$653, DW_AT_name("INTx10")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x197)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0c)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$654, DW_AT_name("INTx11")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x198)
	.dwattr $C$DW$654, DW_AT_decl_column(0x0c)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$655, DW_AT_name("INTx12")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x199)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0c)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$656, DW_AT_name("INTx13")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0c)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$657, DW_AT_name("INTx14")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0c)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$658, DW_AT_name("INTx15")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$658, DW_AT_decl_column(0x0c)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$659, DW_AT_name("INTx16")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$86, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("PIEIFR7_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$660, DW_AT_name("all")
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0d)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$661, DW_AT_name("bit")
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$661, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$87, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("PIEIFR8_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$662, DW_AT_name("INTx1")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0c)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$663, DW_AT_name("INTx2")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0c)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$664, DW_AT_name("INTx3")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$665, DW_AT_name("INTx4")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$666, DW_AT_name("INTx5")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$667, DW_AT_name("INTx6")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$668, DW_AT_name("INTx7")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0c)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$669, DW_AT_name("INTx8")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$670, DW_AT_name("INTx9")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0c)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$671, DW_AT_name("INTx10")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0c)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$672, DW_AT_name("INTx11")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0c)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$673, DW_AT_name("INTx12")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$673, DW_AT_decl_column(0x0c)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$674, DW_AT_name("INTx13")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$675, DW_AT_name("INTx14")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0c)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$676, DW_AT_name("INTx15")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0c)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$677, DW_AT_name("INTx16")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$88, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("PIEIFR8_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$678, DW_AT_name("all")
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0d)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$679, DW_AT_name("bit")
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$679, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$89, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("PIEIFR9_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$680, DW_AT_name("INTx1")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$681, DW_AT_name("INTx2")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$682, DW_AT_name("INTx3")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$683, DW_AT_name("INTx4")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$684, DW_AT_name("INTx5")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$685, DW_AT_name("INTx6")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$686, DW_AT_name("INTx7")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$687, DW_AT_name("INTx8")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0c)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$688, DW_AT_name("INTx9")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0c)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$689, DW_AT_name("INTx10")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$690, DW_AT_name("INTx11")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0c)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$691, DW_AT_name("INTx12")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$692, DW_AT_name("INTx13")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$693, DW_AT_name("INTx14")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$694, DW_AT_name("INTx15")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0c)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$695, DW_AT_name("INTx16")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$90, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$90

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("PIEIFR9_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$696, DW_AT_name("all")
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x201)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0d)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$697, DW_AT_name("bit")
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x202)
	.dwattr $C$DW$697, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$91, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x200)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92

$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x1a)
$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$698, DW_AT_name("PIECTRL")
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x296)
	.dwattr $C$DW$698, DW_AT_decl_column(0x2e)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$699, DW_AT_name("PIEACK")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x297)
	.dwattr $C$DW$699, DW_AT_decl_column(0x2e)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$700, DW_AT_name("PIEIER1")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x298)
	.dwattr $C$DW$700, DW_AT_decl_column(0x2e)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$701, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x299)
	.dwattr $C$DW$701, DW_AT_decl_column(0x2e)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$702, DW_AT_name("PIEIER2")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$702, DW_AT_decl_column(0x2e)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$703, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$703, DW_AT_decl_column(0x2e)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$704, DW_AT_name("PIEIER3")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x29c)
	.dwattr $C$DW$704, DW_AT_decl_column(0x2e)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$705, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$705, DW_AT_decl_column(0x2e)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$706, DW_AT_name("PIEIER4")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$706, DW_AT_decl_column(0x2e)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$707, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$707, DW_AT_decl_column(0x2e)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$708, DW_AT_name("PIEIER5")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x2a0)
	.dwattr $C$DW$708, DW_AT_decl_column(0x2e)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$709, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x2a1)
	.dwattr $C$DW$709, DW_AT_decl_column(0x2e)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$710, DW_AT_name("PIEIER6")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x2a2)
	.dwattr $C$DW$710, DW_AT_decl_column(0x2e)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$711, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$711, DW_AT_decl_column(0x2e)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$712, DW_AT_name("PIEIER7")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x2a4)
	.dwattr $C$DW$712, DW_AT_decl_column(0x2e)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$713, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x2a5)
	.dwattr $C$DW$713, DW_AT_decl_column(0x2e)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$714, DW_AT_name("PIEIER8")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x2a6)
	.dwattr $C$DW$714, DW_AT_decl_column(0x2e)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$715, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x2a7)
	.dwattr $C$DW$715, DW_AT_decl_column(0x2e)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$716, DW_AT_name("PIEIER9")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$716, DW_AT_decl_column(0x2e)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$717, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x2a9)
	.dwattr $C$DW$717, DW_AT_decl_column(0x2e)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$718, DW_AT_name("PIEIER10")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x2aa)
	.dwattr $C$DW$718, DW_AT_decl_column(0x2e)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$719, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$719, DW_AT_decl_column(0x2e)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$720, DW_AT_name("PIEIER11")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x2ac)
	.dwattr $C$DW$720, DW_AT_decl_column(0x2e)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$721, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x2ad)
	.dwattr $C$DW$721, DW_AT_decl_column(0x2e)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$722, DW_AT_name("PIEIER12")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x2ae)
	.dwattr $C$DW$722, DW_AT_decl_column(0x2e)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$723, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x2af)
	.dwattr $C$DW$723, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$92, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_piectrl.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x295)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$92

	.dwendtag $C$DW$TU$92


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$724	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$92)

$C$DW$T$104	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$724)

	.dwendtag $C$DW$TU$104


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96

$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("PIE_VECT_TABLE")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x1c0)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$725, DW_AT_name("PIE1_RESERVED_INT")
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x39)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0b)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$726, DW_AT_name("PIE2_RESERVED_INT")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$726, DW_AT_decl_column(0x0b)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$727, DW_AT_name("PIE3_RESERVED_INT")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0b)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$728, DW_AT_name("PIE4_RESERVED_INT")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0b)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$729, DW_AT_name("PIE5_RESERVED_INT")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0b)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$730, DW_AT_name("PIE6_RESERVED_INT")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0b)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$731, DW_AT_name("PIE7_RESERVED_INT")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$731, DW_AT_decl_column(0x0b)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$732, DW_AT_name("PIE8_RESERVED_INT")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x40)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0b)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$733, DW_AT_name("PIE9_RESERVED_INT")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x41)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0b)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$734, DW_AT_name("PIE10_RESERVED_INT")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x42)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0b)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$735, DW_AT_name("PIE11_RESERVED_INT")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x43)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0b)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$736, DW_AT_name("PIE12_RESERVED_INT")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x44)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0b)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$737, DW_AT_name("PIE13_RESERVED_INT")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x45)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0b)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$738, DW_AT_name("TIMER1_INT")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x46)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0b)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$739, DW_AT_name("TIMER2_INT")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x47)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0b)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$740, DW_AT_name("DATALOG_INT")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x48)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0b)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$741, DW_AT_name("RTOS_INT")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x49)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0b)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$742, DW_AT_name("EMU_INT")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0b)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$743, DW_AT_name("NMI_INT")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0b)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$744, DW_AT_name("ILLEGAL_INT")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0b)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$745, DW_AT_name("USER1_INT")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0b)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$746, DW_AT_name("USER2_INT")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0b)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$747, DW_AT_name("USER3_INT")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0b)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$748, DW_AT_name("USER4_INT")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x50)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0b)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$749, DW_AT_name("USER5_INT")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x51)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0b)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$750, DW_AT_name("USER6_INT")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x52)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0b)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$751, DW_AT_name("USER7_INT")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x53)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0b)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$752, DW_AT_name("USER8_INT")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x54)
	.dwattr $C$DW$752, DW_AT_decl_column(0x0b)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$753, DW_AT_name("USER9_INT")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x55)
	.dwattr $C$DW$753, DW_AT_decl_column(0x0b)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$754, DW_AT_name("USER10_INT")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x56)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0b)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$755, DW_AT_name("USER11_INT")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x57)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0b)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$756, DW_AT_name("USER12_INT")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x58)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0b)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$757, DW_AT_name("ADCA1_INT")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x59)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0b)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$758, DW_AT_name("ADCB1_INT")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0b)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$759, DW_AT_name("ADCC1_INT")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0b)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$760, DW_AT_name("XINT1_INT")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0b)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$761, DW_AT_name("XINT2_INT")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0b)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$762, DW_AT_name("ADCD1_INT")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$762, DW_AT_decl_column(0x0b)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$763, DW_AT_name("TIMER0_INT")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0b)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$764, DW_AT_name("WAKE_INT")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x60)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0b)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$765, DW_AT_name("EPWM1_TZ_INT")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x61)
	.dwattr $C$DW$765, DW_AT_decl_column(0x0b)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$766, DW_AT_name("EPWM2_TZ_INT")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x62)
	.dwattr $C$DW$766, DW_AT_decl_column(0x0b)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$767, DW_AT_name("EPWM3_TZ_INT")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x63)
	.dwattr $C$DW$767, DW_AT_decl_column(0x0b)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$768, DW_AT_name("EPWM4_TZ_INT")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0x64)
	.dwattr $C$DW$768, DW_AT_decl_column(0x0b)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$769, DW_AT_name("EPWM5_TZ_INT")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0x65)
	.dwattr $C$DW$769, DW_AT_decl_column(0x0b)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$770, DW_AT_name("EPWM6_TZ_INT")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0x66)
	.dwattr $C$DW$770, DW_AT_decl_column(0x0b)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$771, DW_AT_name("EPWM7_TZ_INT")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0x67)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0b)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$772, DW_AT_name("EPWM8_TZ_INT")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0x68)
	.dwattr $C$DW$772, DW_AT_decl_column(0x0b)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$773, DW_AT_name("EPWM1_INT")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x69)
	.dwattr $C$DW$773, DW_AT_decl_column(0x0b)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$774, DW_AT_name("EPWM2_INT")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0b)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$775, DW_AT_name("EPWM3_INT")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0b)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$776, DW_AT_name("EPWM4_INT")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0b)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$777, DW_AT_name("EPWM5_INT")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0b)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$778, DW_AT_name("EPWM6_INT")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0b)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$779, DW_AT_name("EPWM7_INT")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0b)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$780, DW_AT_name("EPWM8_INT")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x70)
	.dwattr $C$DW$780, DW_AT_decl_column(0x0b)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$781, DW_AT_name("ECAP1_INT")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x71)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0b)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$782, DW_AT_name("ECAP2_INT")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x72)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0b)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$783, DW_AT_name("ECAP3_INT")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x73)
	.dwattr $C$DW$783, DW_AT_decl_column(0x0b)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$784, DW_AT_name("ECAP4_INT")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x74)
	.dwattr $C$DW$784, DW_AT_decl_column(0x0b)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$785, DW_AT_name("ECAP5_INT")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x75)
	.dwattr $C$DW$785, DW_AT_decl_column(0x0b)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$786, DW_AT_name("ECAP6_INT")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x76)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0b)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$787, DW_AT_name("ECAP7_INT")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x77)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0b)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$788, DW_AT_name("PIE14_RESERVED_INT")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x78)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0b)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$789, DW_AT_name("EQEP1_INT")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x79)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0b)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$790, DW_AT_name("EQEP2_INT")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$790, DW_AT_decl_column(0x0b)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$791, DW_AT_name("EQEP3_INT")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$791, DW_AT_decl_column(0x0b)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$792, DW_AT_name("PIE15_RESERVED_INT")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0b)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$793, DW_AT_name("CLB1_INT")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0b)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$794, DW_AT_name("CLB2_INT")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0b)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$795, DW_AT_name("CLB3_INT")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0b)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$796, DW_AT_name("CLB4_INT")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x80)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0b)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$797, DW_AT_name("SPIA_RX_INT")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x81)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0b)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$798, DW_AT_name("SPIA_TX_INT")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x82)
	.dwattr $C$DW$798, DW_AT_decl_column(0x0b)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$799, DW_AT_name("SPIB_RX_INT")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x83)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0b)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$800, DW_AT_name("SPIB_TX_INT")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x84)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0b)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$801, DW_AT_name("MCBSPA_RX_INT")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x85)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0b)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$802, DW_AT_name("MCBSPA_TX_INT")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x86)
	.dwattr $C$DW$802, DW_AT_decl_column(0x0b)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$803, DW_AT_name("MCBSPB_RX_INT")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x87)
	.dwattr $C$DW$803, DW_AT_decl_column(0x0b)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$804, DW_AT_name("MCBSPB_TX_INT")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x88)
	.dwattr $C$DW$804, DW_AT_decl_column(0x0b)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$805, DW_AT_name("DMA_CH1_INT")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x89)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0b)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$806, DW_AT_name("DMA_CH2_INT")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$806, DW_AT_decl_column(0x0b)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$807, DW_AT_name("DMA_CH3_INT")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$807, DW_AT_decl_column(0x0b)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$808, DW_AT_name("DMA_CH4_INT")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0b)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$809, DW_AT_name("DMA_CH5_INT")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0b)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$810, DW_AT_name("DMA_CH6_INT")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0b)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$811, DW_AT_name("PIE16_RESERVED_INT")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0b)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$812, DW_AT_name("PIE17_RESERVED_INT")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x90)
	.dwattr $C$DW$812, DW_AT_decl_column(0x0b)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$813, DW_AT_name("I2CA_INT")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x91)
	.dwattr $C$DW$813, DW_AT_decl_column(0x0b)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$814, DW_AT_name("I2CA_FIFO_INT")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x92)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0b)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$815, DW_AT_name("I2CB_INT")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0x93)
	.dwattr $C$DW$815, DW_AT_decl_column(0x0b)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$816, DW_AT_name("I2CB_FIFO_INT")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0x94)
	.dwattr $C$DW$816, DW_AT_decl_column(0x0b)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$817, DW_AT_name("SCIC_RX_INT")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0x95)
	.dwattr $C$DW$817, DW_AT_decl_column(0x0b)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$818, DW_AT_name("SCIC_TX_INT")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0x96)
	.dwattr $C$DW$818, DW_AT_decl_column(0x0b)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$819, DW_AT_name("SCID_RX_INT")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0x97)
	.dwattr $C$DW$819, DW_AT_decl_column(0x0b)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$820, DW_AT_name("SCID_TX_INT")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0x98)
	.dwattr $C$DW$820, DW_AT_decl_column(0x0b)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$821, DW_AT_name("SCIA_RX_INT")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$821, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0x99)
	.dwattr $C$DW$821, DW_AT_decl_column(0x0b)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$822, DW_AT_name("SCIA_TX_INT")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$822, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$822, DW_AT_decl_column(0x0b)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$823, DW_AT_name("SCIB_RX_INT")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$823, DW_AT_decl_column(0x0b)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$824, DW_AT_name("SCIB_TX_INT")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$824, DW_AT_decl_column(0x0b)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$825, DW_AT_name("CANA0_INT")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$825, DW_AT_decl_column(0x0b)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$826, DW_AT_name("CANA1_INT")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$826, DW_AT_decl_column(0x0b)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$827, DW_AT_name("CANB0_INT")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$827, DW_AT_decl_column(0x0b)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$828, DW_AT_name("CANB1_INT")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$828, DW_AT_decl_column(0x0b)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$829, DW_AT_name("ADCA_EVT_INT")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$829, DW_AT_decl_column(0x0b)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$830, DW_AT_name("ADCA2_INT")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$830, DW_AT_decl_column(0x0b)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$831, DW_AT_name("ADCA3_INT")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0b)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$832, DW_AT_name("ADCA4_INT")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$832, DW_AT_decl_column(0x0b)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$833, DW_AT_name("ADCB_EVT_INT")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0b)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$834, DW_AT_name("ADCB2_INT")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0b)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$835, DW_AT_name("ADCB3_INT")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$835, DW_AT_decl_column(0x0b)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$836, DW_AT_name("ADCB4_INT")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$836, DW_AT_decl_column(0x0b)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$837, DW_AT_name("CLA1_1_INT")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$837, DW_AT_decl_column(0x0b)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$838, DW_AT_name("CLA1_2_INT")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$838, DW_AT_decl_column(0x0b)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$839, DW_AT_name("CLA1_3_INT")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0xab)
	.dwattr $C$DW$839, DW_AT_decl_column(0x0b)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$840, DW_AT_name("CLA1_4_INT")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0xac)
	.dwattr $C$DW$840, DW_AT_decl_column(0x0b)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$841, DW_AT_name("CLA1_5_INT")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0xad)
	.dwattr $C$DW$841, DW_AT_decl_column(0x0b)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$842, DW_AT_name("CLA1_6_INT")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0xae)
	.dwattr $C$DW$842, DW_AT_decl_column(0x0b)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$843, DW_AT_name("CLA1_7_INT")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$843, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$843, DW_AT_decl_column(0x0b)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$844, DW_AT_name("CLA1_8_INT")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0b)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$845, DW_AT_name("XINT3_INT")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$845, DW_AT_decl_column(0x0b)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$846, DW_AT_name("XINT4_INT")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0b)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$847, DW_AT_name("XINT5_INT")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0b)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$848, DW_AT_name("PBIST_INT")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0b)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$849, DW_AT_name("FMC_INT")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$849, DW_AT_decl_column(0x0b)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$850, DW_AT_name("PIE18_RESERVED_INT")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0b)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$851, DW_AT_name("FPU_OFLOW_INT")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0b)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$852, DW_AT_name("FPU_UFLOW_INT")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0b)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$853, DW_AT_name("I2CA_HIGH_INT")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0b)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$854, DW_AT_name("SYS_ERR_INT")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x102]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0xba)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0b)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$855, DW_AT_name("ECATSYNC0_INT")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x104]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0b)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$856, DW_AT_name("ECAT_INT")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x106]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0b)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$857, DW_AT_name("CIPC0_INT")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x108]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$857, DW_AT_decl_column(0x0b)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$858, DW_AT_name("CIPC1_INT")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x10a]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0b)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$859, DW_AT_name("CIPC2_INT")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x10c]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$859, DW_AT_decl_column(0x0b)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$860, DW_AT_name("CIPC3_INT")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x10e]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$860, DW_AT_decl_column(0x0b)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$861, DW_AT_name("EPWM9_TZ_INT")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x110]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$861, DW_AT_decl_column(0x0b)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$862, DW_AT_name("EPWM10_TZ_INT")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x112]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$862, DW_AT_decl_column(0x0b)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$863, DW_AT_name("EPWM11_TZ_INT")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x114]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$863, DW_AT_decl_column(0x0b)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$864, DW_AT_name("EPWM12_TZ_INT")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x116]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$864, DW_AT_decl_column(0x0b)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$865, DW_AT_name("EPWM13_TZ_INT")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x118]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$865, DW_AT_decl_column(0x0b)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$866, DW_AT_name("EPWM14_TZ_INT")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x11a]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$866, DW_AT_decl_column(0x0b)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$867, DW_AT_name("EPWM15_TZ_INT")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x11c]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$867, DW_AT_decl_column(0x0b)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$868, DW_AT_name("EPWM16_TZ_INT")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x11e]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0b)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$869, DW_AT_name("EPWM9_INT")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x120]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$869, DW_AT_decl_column(0x0b)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$870, DW_AT_name("EPWM10_INT")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x122]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$870, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0xca)
	.dwattr $C$DW$870, DW_AT_decl_column(0x0b)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$871, DW_AT_name("EPWM11_INT")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x124]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$871, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$871, DW_AT_decl_column(0x0b)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$872, DW_AT_name("EPWM12_INT")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x126]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$872, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$872, DW_AT_decl_column(0x0b)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$873, DW_AT_name("EPWM13_INT")
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x128]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$873, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$873, DW_AT_decl_column(0x0b)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$874, DW_AT_name("EPWM14_INT")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x12a]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0xce)
	.dwattr $C$DW$874, DW_AT_decl_column(0x0b)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$875, DW_AT_name("EPWM15_INT")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$875, DW_AT_decl_column(0x0b)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$876, DW_AT_name("EPWM16_INT")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x12e]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$876, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$876, DW_AT_decl_column(0x0b)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$877, DW_AT_name("FSITXA1_INT")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x130]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$877, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$877, DW_AT_decl_column(0x0b)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$878, DW_AT_name("FSITXA2_INT")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x132]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$878, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$878, DW_AT_decl_column(0x0b)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$879, DW_AT_name("FSITXB1_INT")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$879, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$879, DW_AT_decl_column(0x0b)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$880, DW_AT_name("FSITXB2_INT")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$880, DW_AT_decl_column(0x0b)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$881, DW_AT_name("FSIRXA1_INT")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$881, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$881, DW_AT_decl_column(0x0b)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$882, DW_AT_name("FSIRXA2_INT")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$882, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$882, DW_AT_decl_column(0x0b)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$883, DW_AT_name("FSIRXB1_INT")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$883, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$883, DW_AT_decl_column(0x0b)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$884, DW_AT_name("FSIRXB2_INT")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$884, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$884, DW_AT_decl_column(0x0b)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$885, DW_AT_name("SDFM1_INT")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$885, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$885, DW_AT_decl_column(0x0b)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$886, DW_AT_name("SDFM2_INT")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$886, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0xda)
	.dwattr $C$DW$886, DW_AT_decl_column(0x0b)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$887, DW_AT_name("ECATRST_INT")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$887, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$887, DW_AT_decl_column(0x0b)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$888, DW_AT_name("ECATSYNC1_INT")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$888, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$888, DW_AT_decl_column(0x0b)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$889, DW_AT_name("SDFM1DR1_INT")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$889, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$889, DW_AT_decl_column(0x0b)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$890, DW_AT_name("SDFM1DR2_INT")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0xde)
	.dwattr $C$DW$890, DW_AT_decl_column(0x0b)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$891, DW_AT_name("SDFM1DR3_INT")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x14c]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$891, DW_AT_decl_column(0x0b)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$892, DW_AT_name("SDFM1DR4_INT")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x14e]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$892, DW_AT_decl_column(0x0b)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$893, DW_AT_name("SPIC_RX_INT")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x150]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$893, DW_AT_decl_column(0x0b)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$894, DW_AT_name("SPIC_TX_INT")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x152]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$894, DW_AT_decl_column(0x0b)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$895, DW_AT_name("SPID_RX_INT")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x154]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$895, DW_AT_decl_column(0x0b)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$896, DW_AT_name("SPID_TX_INT")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x156]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$896, DW_AT_decl_column(0x0b)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$897, DW_AT_name("SDFM2DR1_INT")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x158]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$897, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$897, DW_AT_decl_column(0x0b)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$898, DW_AT_name("SDFM2DR2_INT")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x15a]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$898, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$898, DW_AT_decl_column(0x0b)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$899, DW_AT_name("SDFM2DR3_INT")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x15c]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$899, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$899, DW_AT_decl_column(0x0b)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$900, DW_AT_name("SDFM2DR4_INT")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x15e]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$900, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$900, DW_AT_decl_column(0x0b)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$901, DW_AT_name("FSIRXC1_INT")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x160]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$901, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$901, DW_AT_decl_column(0x0b)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$902, DW_AT_name("FSIRXC2_INT")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$902, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0xea)
	.dwattr $C$DW$902, DW_AT_decl_column(0x0b)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$903, DW_AT_name("FSIRXD1_INT")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x164]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$903, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$903, DW_AT_decl_column(0x0b)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$904, DW_AT_name("FSIRXD2_INT")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x166]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$904, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0xec)
	.dwattr $C$DW$904, DW_AT_decl_column(0x0b)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$905, DW_AT_name("FSIRXE1_INT")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x168]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$905, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0xed)
	.dwattr $C$DW$905, DW_AT_decl_column(0x0b)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$906, DW_AT_name("FSIRXE2_INT")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x16a]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$906, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0xee)
	.dwattr $C$DW$906, DW_AT_decl_column(0x0b)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$907, DW_AT_name("FSIRXF1_INT")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x16c]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$907, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0xef)
	.dwattr $C$DW$907, DW_AT_decl_column(0x0b)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$908, DW_AT_name("FSIRXF2_INT")
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x16e]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$908, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$908, DW_AT_decl_column(0x0b)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$909, DW_AT_name("FSIRXG1_INT")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x170]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$909, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$909, DW_AT_decl_column(0x0b)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$910, DW_AT_name("FSIRXG2_INT")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x172]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$910, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$910, DW_AT_decl_column(0x0b)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$911, DW_AT_name("FSIRXH1_INT")
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$911, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$911, DW_AT_decl_column(0x0b)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$912, DW_AT_name("FSIRXH2_INT")
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x176]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$912, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$912, DW_AT_decl_column(0x0b)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$913, DW_AT_name("CLB5_INT")
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x178]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$913, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$913, DW_AT_decl_column(0x0b)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$914, DW_AT_name("CLB6_INT")
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x17a]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$914, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$914, DW_AT_decl_column(0x0b)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$915, DW_AT_name("CLB7_INT")
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x17c]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$915, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$915, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$915, DW_AT_decl_column(0x0b)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$916, DW_AT_name("CLB8_INT")
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x17e]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$916, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$916, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$916, DW_AT_decl_column(0x0b)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$917, DW_AT_name("MCANSS0_INT")
	.dwattr $C$DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$917, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$917, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$917, DW_AT_decl_column(0x0b)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$918, DW_AT_name("MCANSS1_INT")
	.dwattr $C$DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x182]
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$918, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$918, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$918, DW_AT_decl_column(0x0b)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$919, DW_AT_name("MCANSS_ECC_CORR_PLS_INT")
	.dwattr $C$DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x184]
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$919, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$919, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$919, DW_AT_decl_column(0x0b)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$920, DW_AT_name("MCANSS_WAKE_AND_TS_PLS_INT")
	.dwattr $C$DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x186]
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$920, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$920, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$920, DW_AT_decl_column(0x0b)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$921, DW_AT_name("PMBUSA_INT")
	.dwattr $C$DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x188]
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$921, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$921, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$921, DW_AT_decl_column(0x0b)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$922, DW_AT_name("CM_STATUS_INT")
	.dwattr $C$DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x18a]
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$922, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$922, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$922, DW_AT_decl_column(0x0b)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$923, DW_AT_name("USBA_INT")
	.dwattr $C$DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x18c]
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$923, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$923, DW_AT_decl_line(0xff)
	.dwattr $C$DW$923, DW_AT_decl_column(0x0b)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$924, DW_AT_name("PIE19_RESERVED_INT")
	.dwattr $C$DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x18e]
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$924, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$924, DW_AT_decl_line(0x100)
	.dwattr $C$DW$924, DW_AT_decl_column(0x0b)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$925, DW_AT_name("ADCC_EVT_INT")
	.dwattr $C$DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x190]
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$925, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$925, DW_AT_decl_line(0x101)
	.dwattr $C$DW$925, DW_AT_decl_column(0x0b)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$926, DW_AT_name("ADCC2_INT")
	.dwattr $C$DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x192]
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$926, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$926, DW_AT_decl_line(0x102)
	.dwattr $C$DW$926, DW_AT_decl_column(0x0b)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$927, DW_AT_name("ADCC3_INT")
	.dwattr $C$DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x194]
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$927, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x103)
	.dwattr $C$DW$927, DW_AT_decl_column(0x0b)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$928, DW_AT_name("ADCC4_INT")
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x196]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$928, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x104)
	.dwattr $C$DW$928, DW_AT_decl_column(0x0b)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$929, DW_AT_name("ADCD_EVT_INT")
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x198]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$929, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x105)
	.dwattr $C$DW$929, DW_AT_decl_column(0x0b)

$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$930, DW_AT_name("ADCD2_INT")
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x19a]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$930, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x106)
	.dwattr $C$DW$930, DW_AT_decl_column(0x0b)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$931, DW_AT_name("ADCD3_INT")
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x19c]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$931, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x107)
	.dwattr $C$DW$931, DW_AT_decl_column(0x0b)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$932, DW_AT_name("ADCD4_INT")
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x19e]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$932, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0x108)
	.dwattr $C$DW$932, DW_AT_decl_column(0x0b)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$933, DW_AT_name("CMTOCPUXIPC0_INT")
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a0]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$933, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0x109)
	.dwattr $C$DW$933, DW_AT_decl_column(0x0b)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$934, DW_AT_name("CMTOCPUXIPC1_INT")
	.dwattr $C$DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a2]
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$934, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$934, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$934, DW_AT_decl_column(0x0b)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$935, DW_AT_name("CMTOCPUXIPC2_INT")
	.dwattr $C$DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a4]
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$935, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$935, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$935, DW_AT_decl_column(0x0b)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$936, DW_AT_name("CMTOCPUXIPC3_INT")
	.dwattr $C$DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a6]
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$936, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$936, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$936, DW_AT_decl_column(0x0b)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$937, DW_AT_name("CMTOCPUXIPC4_INT")
	.dwattr $C$DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a8]
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$937, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$937, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$937, DW_AT_decl_column(0x0b)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$938, DW_AT_name("CMTOCPUXIPC5_INT")
	.dwattr $C$DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x1aa]
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$938, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$938, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$938, DW_AT_decl_column(0x0b)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$939, DW_AT_name("CMTOCPUXIPC6_INT")
	.dwattr $C$DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ac]
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$939, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$939, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$939, DW_AT_decl_column(0x0b)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$940, DW_AT_name("CMTOCPUXIPC7_INT")
	.dwattr $C$DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ae]
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$940, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$940, DW_AT_decl_line(0x110)
	.dwattr $C$DW$940, DW_AT_decl_column(0x0b)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$941, DW_AT_name("PIE20_RESERVED_INT")
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b0]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$941, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0x111)
	.dwattr $C$DW$941, DW_AT_decl_column(0x0b)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$942, DW_AT_name("ECAP6_2_INT")
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b2]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$942, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0x112)
	.dwattr $C$DW$942, DW_AT_decl_column(0x0b)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$943, DW_AT_name("ECAP7_2_INT")
	.dwattr $C$DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b4]
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$943, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$943, DW_AT_decl_line(0x113)
	.dwattr $C$DW$943, DW_AT_decl_column(0x0b)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$944, DW_AT_name("PIE21_RESERVED_INT")
	.dwattr $C$DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b6]
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$944, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$944, DW_AT_decl_line(0x114)
	.dwattr $C$DW$944, DW_AT_decl_column(0x0b)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$945, DW_AT_name("CPUCRC_INT")
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b8]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$945, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$945, DW_AT_decl_line(0x115)
	.dwattr $C$DW$945, DW_AT_decl_column(0x0b)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$946, DW_AT_name("CLA1CRC_INT")
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ba]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$946, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$946, DW_AT_decl_line(0x116)
	.dwattr $C$DW$946, DW_AT_decl_column(0x0b)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$947, DW_AT_name("CLA_OVERFLOW_INT")
	.dwattr $C$DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x1bc]
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$947, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$947, DW_AT_decl_line(0x117)
	.dwattr $C$DW$947, DW_AT_decl_column(0x0b)

$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$948, DW_AT_name("CLA_UNDERFLOW_INT")
	.dwattr $C$DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x1be]
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$948, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$948, DW_AT_decl_line(0x118)
	.dwattr $C$DW$948, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$96, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$96

	.dwendtag $C$DW$TU$96


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$949	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$96)

$C$DW$T$105	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$949)

	.dwendtag $C$DW$TU$105


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$950	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$96)

$C$DW$T$107	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$950)

	.dwendtag $C$DW$TU$107


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_subroutine_type
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("PINT")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_decl_file("..\F2838x_utils\..\Drivers\..\F2838x_utils\f2838x_pievect.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$95


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
	.dwattr $C$DW$T$39, DW_AT_decl_file("..\F2838x_utils\..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x123)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$39


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


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("Uint32")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$111, DW_AT_decl_file("..\F2838x_utils\..\Drivers\../F2838x_utils/f2838x_device.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$T$112	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$112


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
$C$DW$951	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$951, DW_AT_upper_bound(0x07)

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

