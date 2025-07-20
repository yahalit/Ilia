
	.cdecls   C,LIST,"StructDef.h"


	.asg BlockInts,_BlockInts
	.asg RestoreInts,_RestoreInts
	.asg ClearMemRpt,_ClearMemRpt
	.asg GetLeadingOne,_GetLeadingOne
	.asg UpdateSysTimerAsm,_UpdateSysTimerAsm
	.asg UpdateIsrTimer,_UpdateIsrTimer
	.asg IsEqualBinary,_IsEqualBinary
	.asg IsrTimer,_IsrTimer
	.asg CpuTimer1Regs,_CpuTimer1Regs


	.global _BlockInts
	.global _RestoreInts
	.global _ClearMemRpt
	.global _GetLeadingOne
	.global _UpdateSysTimerAsm
	.global _UpdateIsrTimer
	.global _IsEqualBinary

_BlockInts:
	push dp:st1
	pop  acc
	setc intm
	lretr


_RestoreInts:
	push  acc
	pop   dp:st1
	lretr


_IsEqualBinary:
; IsEqualBinary ( pItem1 , pItem2 , n )
	mov		ar0,al
	movb	acc,#1	; Optimistic: good
	cmp		ar0,#0  ; Trivially good if nothing to compare
	bf		IsEqualBinaryExit,eq
	dec		ar0 	; Check loop
IsEqualBinaryLoop:
	mov		ah,*xar4++
	cmp		ah,*xar5++
	movb	al,#0,neq		; // Mark bad if not equal
	banz	IsEqualBinaryLoop,ar0--
IsEqualBinaryExit:
	lretr

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

	.global _CopyMemRpt
_CopyMemRpt:
; // CopyMemRpt( dst , src , n )
	cmp	al,#0
	bf CopyMemRptExit,eq
	dec	al
	movl	xar7,xar5
	rpt al || pread *xar4++,*xar7
CopyMemRptExit:
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




_UpdateIsrTimer:
	spm		#0
	movw	dp,#_CpuTimer1Regs
	movl	acc,@_CpuTimer1Regs
	neg		acc					; // acc = usec counter

	movl	xar6,#1000

	movw	dp,#_IsrTimer
	movl	@_IsrTimer.UsecTimer,acc ; // Update usec counter
	subl	acc,@_IsrTimer.UsecTimerAtMsec

	; // There can be a multiple msec in between, so we have to divide
	movl	xt,@_IsrTimer.OneOver1000Iq32
	qmpyl	acc,xt,acc			; // acc = amount of msec that came up
	test	acc
	bf		SecUpdDone,eq		; // No update, seconds shall not update as well

	movl	xt,acc
	addl	@_IsrTimer.mSecTimer,acc

	impyl	p,xt,xar6			; // Amount of use to subtract
	movl	acc,@_IsrTimer.UsecTimerAtMsec
	addl	acc,p
	movl	@_IsrTimer.UsecTimerAtMsec,acc

;msecUpdDone:

	movl	acc,@_IsrTimer.mSecTimer
	subl	acc,@_IsrTimer.mSecTimerAtSec
	cmpl	acc,xar6
	bf		SecUpdDone,lt

	movl	acc,xar6
	addl	@_IsrTimer.mSecTimerAtSec,acc
	movb	acc,#1
	addl	@_IsrTimer.SecTimer,acc
SecUpdDone:
	lretr


	.ref	_CpuTimer1Regs
_UpdateSysTimerAsm:
	push	dp:st1
	setc	intm
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


	.global _Yfabs
_Yfabs:
	absf32	r0h,r0h
	lretr

	.global _Ysign
_Ysign:
	movb	acc,#1
	sub		ah,#1
	cmpf32	r0h,#0.0F
	movst0  zf,nf
	movb	al,#0,eq
	mov		al,ah,lt
	lretr

