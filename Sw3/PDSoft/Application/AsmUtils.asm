
;	.cdecls   C,LIST,"F2837xS_device.h"
	; .cdecls   C,LIST,"..\..\TiSoft\include\F2837xS_device.h"
	.cdecls   C,LIST,"PdStructDef.h"


	.global _BlockInts
	.global _RestoreInts
	.global _ClearMemRpt
	.global _GetLeadingOne
	.global _GetTrailingOne
	.global _UpdateSysTimerAsm


	.global _ClearStart2End

_ClearStart2End:
; // Clear a memory block in RPT (very fast, uninterruptible)
	movb	acc,#0
	movl	xt,acc
	push 	xar5
ClearStart2EndLoop
	movl	*xar4++,xt

	movl	acc,xar4
	cmpl	acc,*-sp[2]
	bf		ClearStart2EndLoop,lt


	pop		xar5

	lretr




; * \brief Take signed modulo 2*pi (result need be - [-pi,pi-eps])
; * \param x: Value to take modulo from
; * \return : modulo result
  	.global _mod2piS
_mod2piS:
; float mod2piS( float x )
	div2pif32	r1h,r0h
	movizf32	r2h,#0.0f
	movizf32	r0h,#1.0f
	fracf32	r1h,r1h
	nop
	cmpf32	r1h,#-0.5F
	mov32	r2h,r0h,lt
	addf32	r1h,r1h,r2h
	movizf32	r2h,#0.0f
	cmpf32	r1h,#0.5F
	mov32	r2h,r0h,geq
	subf32	r1h,r1h,r2h
	nop
	nop
	mpy2pif32 r0h,r1h
	lretr



_BlockInts:
	push dp:st1
	pop  acc
	setc intm
	lretr


_RestoreInts:
	push  acc
	pop   dp:st1
	lretr


_ClearMemRpt:
; // Clear a memory block in RPT (very fast, uninterruptible)
	cmp	al,#0
	bf ClearMemRptExit,eq

	dec al
	mov	ah,#0
	rpt al || mov*xar4++,ah
ClearMemRptExit:
	lretr

_GetLeadingOne:
; short unsigned GetLeadingOne(long unsigned dat)
; Note: The routine assumes that there is at least one "1" in dat.
;		If dat == 0 , -1 shall be returned
	tbit ah,#15
	bf	GetLeadingOneTrivial,tc
	csb	acc
	mov	al,#30
	sub	al,t
	lretr

GetLeadingOneTrivial:
	mov	al,#31
	lretr

_GetTrailingOne:
	flip 	al
	movu	acc,al
	csb		acc
	mov		al,t
	sub		al,#15
	lretr




;	.global _GetTmr1_4Kaka
;_GetTmr1_4Kaka:
;	movw	dp,#_CpuTimer1Regs
;	movl	acc,@_CpuTimer1Regs
;	neg		acc
;	lretr


	.ref	_CpuTimer1Regs
_UpdateSysTimerAsm:
	push	dp:st1
	setc    intm

	movw	dp,#_CpuTimer1Regs
	movl	acc,@_CpuTimer1Regs
	addl	acc,*+xar4[0]		  ; // acc = SysTimer - now
	neg 	acc
	mov		t,#32
	asr64	acc:p,t			 	 ; // p:acc = add to SysTimer = (int64) (now - SysTimer)

	addul	p,*+xar4[0]
	movl	*+xar4[0],p
	movl	p,*+xar4[2]		  ; // Update the carry to the high word
	addcl	acc,p
	movl	*+xar4[2],acc

	pop		dp:st1

	lretr


	.global _ResetHardwareSysTimer

_ResetHardwareSysTimer:
	movw	dp,#_CpuTimer1Regs
	movb	acc,#0
	movl	@_CpuTimer1Regs,acc
	lretr


;	extern void TestStructInPage ( short unsigned * ptr , short unsigned size) ;
	.global  _TestStructInPage
_TestStructInPage:
	mov	ah,ar4	; // ah = start address
	add	al,ar4	; // al = end address
	xor	ah,al	; // Compare all the bits
	and	ah,#0xffc0 ; // al but the least 6 need be equal
StuckPageOutOfRange	; // Stuck forever if problem
	cmp	ah,#0
	bf	StuckPageOutOfRange,neq
	lretr



