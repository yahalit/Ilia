
	;.cdecls   C,LIST,"StructDef2.h"


	.global BlockInts
	.global RestoreInts
	.global ClearMemRpt
	.global GetLeadingOne
	.global IsEqualBinary
	.global MemClr
	.global GetUnalignedFloat
	.global GetUnalignedLong

GetUnalignedFloat:
GetUnalignedLong:
	push dp:st1
	setc intm

	mov	 al,*xar4++
	mov  ah,*xar4++
	mov32	r0h,acc

	pop	dp:st1
	lretr



MemClr:
;//	MemClr((short unsigned *)&Recorder,sizeof(struct Recorder)  ) ;
	cmp		al,#0
	bf		MemClrExit,eq
	dec		al
	rpt		al ||
		mov	*xar4++,#0
MemClrExit:
	lretr


BlockInts:
	push dp:st1
	pop  acc
	setc intm
	lretr


RestoreInts:
	push  acc
	pop   dp:st1
	lretr


; Compare two items on a binary basis , treating them as word arrays
; \param pItem1 (xar4) points to first item
; \param pItem2 (xar4) points to 2nd item
; \param n      Number of words to compare
IsEqualBinary:
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


	.global _CopyMemRpt
CopyMemRpt:
; // CopyMemRpt( dst , src , n )
	cmp	al,#0
	bf CopyMemRptExit,eq
	dec	al
	movl	xar7,xar5
	rpt al || pread *xar4++,*xar7
CopyMemRptExit:
	lretr

	.global _ClearStart2End

ClearStart2End:
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


ClearMemRpt:
; // Clear a memory block in RPT (very fast, uninterruptible)
	cmp	al,#0
	bf ClearMemRptExit,eq

	dec al
	mov	ah,#0
	rpt al || mov*xar4++,ah
ClearMemRptExit:
	lretr

GetLeadingOne:
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




	.global Yfabs
Yfabs:
	absf32	r0h,r0h
	lretr

	.global Ysign
Ysign:
	movb	acc,#1
	sub		ah,#1
	cmpf32	r0h,#0.0F
	movst0  zf,nf
	movb	al,#0,eq
	mov		al,ah,lt
	lretr


; void Ysin(float x , float *sx , float *cx )
	.global Ysin
Ysin:
	DIV2PIF32 R0H,R0H
	nop
	nop
	sinpuf32	r0h,r0h
	nop
	nop
	nop
	lretr


; void Ysin(float x , float *sx , float *cx )
	.global Ycos
Ycos:
	DIV2PIF32 R0H,R0H
	nop
	nop
	cospuf32	r0h,r0h
	nop
	nop
	nop
	lretr


	.global Ysqrt
Ysqrt:
	moviz	r1h,#0
	maxf32	r0h,r1h
	nop
	nop
	SQRTF32 R0H,R0H ; R0H = sqrt(X)
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	lretr


	.global HYpot
HYpot:
	mpyf32	r0h,r0h,r0h
	mpyf32	r1h,r1h,r1h
	nop
	addf32  r1h,r0h,r1h
	nop
	nop
	SQRTF32 R0H,R1H ; R1H = sqrt(X)
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	lretr


	.global aYcos
aYcos:
	mpyf32	r1h,r0h,r0h
	movizf32	r2h,#1.0F
	subf32	r1h,r2h,r1h
	movizf32	r2h,#0.0f
	maxf32	r1h,r2h
	sqrtf32	r1h,r1h  ; r1 = sqrt( max( 0 , 1 - x^2 ) )
	nop
	nop
	nop
	nop
	swapf r1h,r0h	; next have acos(x) as atan2( sqrt(1-x^2) , x )
	bf	Yatan2,unc

	.global aYsin
aYsin:
	mpyf32	r1h,r0h,r0h
	movizf32	r2h,#1.0f
	subf32	r1h,r2h,r1h  ; r1 = 1 - x^2
	movizf32	r2h,#0.0f
	maxf32	r1h,r2h		; r1 = max( 0 , 1 - x^2 )
	sqrtf32	r1h,r1h		; r1 = sqrt( max( 0 , 1 - x^2 ) )
	nop					; next have asin(x) as atan2( x , sqrt(1-x^2) )
	nop
	nop
	nop


	.global Yatan2
Yatan2:
	;; Calculate Z = atan2(Y,X), where Z is in
	;; radians:
	;; if(Y <= X) R2H= R1H/R0H
	;; else R2H= -R0H/R1H
	;; R3H= 0.0, +/-0.25, +/-0.5
	QUADF32 R3H,R2H,R0H,R1H
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	;; R4H = ATANPU(R2H)(Per Unit result)
	ATANPUF32 R1H,R2H
	NOP ; pipeline delay
	NOP ; pipeline delay
	NOP ; pipeline delay
	;; R5H = R3H + ATANPU(R4H) = ATANPU2 value
	ADDF32 R1H,R3H,R1H
	NOP ; pipeline delay
	;; R6H = ATANPU2 * 2pi = atan2 value(radians)
	nop
	MPY2PIF32 R0H,R1H
	lretr


; * \brief Take signed modulo 2*pi (result need be - [-pi,pi-eps])
; * \param x: Value to take modulo from
; * \return : modulo result
  	.global mod2piS
mod2piS:
; float mod2piS( float x )
	div2pif32	r1h,r0h			; // r1h = input / 2 / pi0
	movizf32	r2h,#0.0f
	movizf32	r0h,#1.0f
	fracf32	r1h,r1h				; // r1h = frac (input / 2 / pi0)
	nop
	cmpf32	r1h,#-0.5F			; // if r1 < -0.5
	mov32	r2h,r0h,lt			; //    r2 = 1 ; else r2 = 0
	addf32	r1h,r1h,r2h			; // r1 += r2
	movizf32	r2h,#0.0f
	cmpf32	r1h,#0.5F			; // if r1 >= 0.5
	mov32	r2h,r0h,geq			; // 	r1 -= 1
	subf32	r1h,r1h,r2h
	nop
	nop
	mpy2pif32 r0h,r1h			; // r1 *= (2 * pi )
	lretr


	.global AngleItoF
AngleItoF: ; // Convert an angle from short to 2PI
	mov32		r0h,acc
	rpt	#2	||	nop
	movizf32	r1h,#1.525878906250000e-05
	i16tof32 	r0h,r0h
	nop
	mpyf32	r0h,r0h,r1h
	nop
	nop
	mpy2pif32 r0h,r0h
	lretr


	.global FtoAngle
FtoAngle: ; // Convert an angle to short number
	div2pif32	r1h,r0h
	nop
	nop
	fracf32	r1h,r1h
	nop
	mpyf32	r1h,#65536.0F,r1h
	nop
	f32toi32	r0h,r1h
	nop
	nop
	mov32	xar4,r0h
	mov		al,ar4
	lretr

