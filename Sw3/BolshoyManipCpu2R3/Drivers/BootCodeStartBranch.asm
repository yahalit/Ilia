;//###########################################################################


***********************************************************************

; WD_DISABLE	.set	1		;set to 1 to disable WD, else set to 0

	.if __TI_EABI__
	.asg main,_main

	.ref _c_int00
	.endif

    .global code_start
    .global entry_from_fw
	.ref 	_main
***********************************************************************
* Function: codestart section
*
* Description: Branch to code starting point
***********************************************************************

    .sect "codestart"


code_start:
        LB wd_disable       ; Branch to watchdog disable code
		nop
		nop

;end codestart section

	.text

***********************************************************************
* Function: wd_disable
*
* Description: Disables the watchdog timer
***********************************************************************
;    .if WD_DISABLE == 1


wd_disable:

    MOV @SP,#0582h      ; Initialize stack pointer.
    SETC OBJMODE        ;Set OBJMODE for 28x object code
    EALLOW              ;Enable EALLOW protected register access
    MOVZ DP, #7029h>>6  ;Set data page for WDCR register
    MOV @7029h, #0068h  ;Set WDDIS bit in WDCR to disable WD
    EDIS                ;Disable EALLOW protected register access

	.if __TI_EABI__
	LB _c_int00         ;Branch to start of boot._asm in RTS library
    .else
    LB _main         ;ignore boot.asm in RTS library
	.endif

;    .endif

;end wd_disable



	.end
	
;//===========================================================================
;// End of file.
;//===========================================================================
























11
