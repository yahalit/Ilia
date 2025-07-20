
	.cdecls   C,LIST,"StructDef.h"


	.global BlockInts
	.global RestoreInts
	.global ClearMemRpt
	.global GetLeadingOne
	.global IsEqualBinary
	.global MemClr
	.global GetUnalignedLong
	.global Interrupt_nmiHandler


;static void Interrupt_nmiHandler(void);


	.ref 	IntReturnStack
	.ref 	NmiServiceFunction

Interrupt_nmiHandler:

	movw 		dp,#IntReturnStack
	mov			al,*-sp[3]
	mov			@IntReturnStack,al
	mov			al,*-sp[2]
	mov			@IntReturnStack+1,al

	ASP
	PUSH         RB
	PUSH         AR1H:AR0H
	MOVL         *SP++, P
	MOVL         *SP++, XT
	MOVL         *SP++, XAR4
	MOVL         *SP++, XAR5
	MOVL         *SP++, XAR6
	MOVL         *SP++, XAR7
	MOV32        *SP++, STF
	MOV32        *SP++, R0L
	MOV32        *SP++, R0H
	MOV32        *SP++, R1L
	MOV32        *SP++, R1H
	MOV32        *SP++, R2L
	MOV32        *SP++, R2H
	MOV32        *SP++, R3L
	MOV32        *SP++, R3H
	SETFLG       RNDF32=1,RNDF64=1
	ADDB         SP, #4
	SPM          #0
	CLRC         OVM|PAGE0
	CLRC         AMODE


	lcr			NmiServiceFunction
    ESTOP0;


	SUBB         SP, #4
	MOV32        R3H, *--SP, UNCF
	MOV32        R3L, *--SP, UNCF
	MOV32        R2H, *--SP, UNCF
	MOV32        R2L, *--SP, UNCF
	MOV32        R1H, *--SP, UNCF
	MOV32        R1L, *--SP, UNCF
	MOV32        R0H, *--SP, UNCF
	MOV32        R0L, *--SP, UNCF
	MOV32        STF, *--SP
	MOVL         XAR7, *--SP
	MOVL         XAR6, *--SP
	MOVL         XAR5, *--SP
	MOVL         XAR4, *--SP
	MOVL         XT, *--SP
	MOVL         P, *--SP
	POP          AR1H:AR0H
	SETC         INTM|DBGM
	POP          RB
	NASP
	IRET

;// Get a int32 number from a word buffer, where it need not be aligned to even word boundary
;// (The TI core does not have the hardware to read long numbers from odd addresses)
GetUnalignedLong:
	push dp:st1 ; // Set critical section
	setc intm

	mov	 al,*xar4++  ;// Copy wordwise to user pointer
	mov  ah,*xar4++
	mov32	r0h,acc ;// Make the result also useful as floating point

	pop	dp:st1 ;// Exit criitcal section
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






	.global CopyMemRpt
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

;GetLeadingOne:
; short unsigned GetLeadingOne(long unsigned dat)
; Note: The routine assumes that there is at least one "1" in dat.
;		If dat == 0 , -1 shall be returned
;	tbit ah,#15
;	bf	GetLeadingOneTrivial,tc
;	csb	acc
;	mov	al,#30
;	sub	al,t
;	lretr

;GetLeadingOneTrivial:
;	mov	al,#31
;	lretr


;
;	.global Ysign
;Ysign:
;	movb	acc,#1
;	sub		ah,#1
;	cmpf32	r0h,#0.0F
;	movst0  zf,nf
;	movb	al,#0,eq
;	mov		al,ah,lt
;	lretr


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


;	.global Ysqrt
;Ysqrt:
;	moviz	r1h,#0
;	maxf32	r0h,r1h
;	nop
;	nop
;	SQRTF32 R0H,R0H ; R0H = sqrt(X)
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	lretr


;	.global HYpot
;HYpot:
;	mpyf32	r0h,r0h,r0h
;	mpyf32	r1h,r1h,r1h
;	nop
;	addf32  r1h,r0h,r1h
;	nop
;	nop
;	SQRTF32 R0H,R1H ; R1H = sqrt(X)
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	lretr


;	.global aYcos
;aYcos:
;	mpyf32	r1h,r0h,r0h
;	movizf32	r2h,#1.0F
;	subf32	r1h,r2h,r1h
;	movizf32	r2h,#0.0f
;	maxf32	r1h,r2h
;	sqrtf32	r1h,r1h  ; r1 = sqrt( max( 0 , 1 - x^2 ) )
;	nop
;	nop
;	nop
;	nop
;	swapf r1h,r0h	; next have acos(x) as atan2( sqrt(1-x^2) , x )
;	bf	Yatan2,unc

;	.global aYsin
;aYsin:
;	mpyf32	r1h,r0h,r0h
;	movizf32	r2h,#1.0f
;	subf32	r1h,r2h,r1h  ; r1 = 1 - x^2
;	movizf32	r2h,#0.0f
;	maxf32	r1h,r2h		; r1 = max( 0 , 1 - x^2 )
;	sqrtf32	r1h,r1h		; r1 = sqrt( max( 0 , 1 - x^2 ) )
;	nop					; next have asin(x) as atan2( x , sqrt(1-x^2) )
;	nop
;	nop
;	nop


;	.global Yatan2
;Yatan2:
	;; Calculate Z = atan2(Y,X), where Z is in
	;; radians:
	;; if(Y <= X) R2H= R1H/R0H
	;; else R2H= -R0H/R1H
	;; R3H= 0.0, +/-0.25, +/-0.5
;	QUADF32 R3H,R2H,R0H,R1H
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
	;; R4H = ATANPU(R2H)(Per Unit result)
;	ATANPUF32 R1H,R2H
;	NOP ; pipeline delay
;	NOP ; pipeline delay
;	NOP ; pipeline delay
	;; R5H = R3H + ATANPU(R4H) = ATANPU2 value
;	ADDF32 R1H,R3H,R1H
;	NOP ; pipeline delay
	;; R6H = ATANPU2 * 2pi = atan2 value(radians)
;	nop
;	MPY2PIF32 R0H,R1H
;	lretr


;	.global IsNear
;IsNear:
;	; // Numbers are near if their difference < 1/16384 of the abs bigger
;	absf32	r2h,r0h
;	subf32	r0h,r0h,r1h ; // r0 = diff
;	absf32	r1h,r1h
;	maxf32	r1h,r2h		; // r1 = max(abs)
;	absf32	r0h,r0h		; // r0 = abs(diff)
;	mpyf32	r1h,#6.103515625000000e-05F,r1h ; // r1 = max(abs)/16384
;	nop
;
;	movb	acc,#0
;	mov		ah,#1
;	cmpf32	r0h,r1h
;	MOVST0 ZF, NF
;	mov		al,ah,leq
;	lretr

