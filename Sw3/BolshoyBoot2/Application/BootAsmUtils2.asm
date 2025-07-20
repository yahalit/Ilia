
	.cdecls   C,LIST,"StructDefB2.h"


	.asg BlockInts,_BlockInts
	.asg RestoreInts,_RestoreInts
	.asg ClearMemRpt,_ClearMemRpt
	.asg GetLeadingOne,_GetLeadingOne
	.asg UpdateSysTimerAsm,_UpdateSysTimerAsm
	.asg UpdateIsrTimer,_UpdateIsrTimer
	.asg IsEqualBinary,_IsEqualBinary
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






