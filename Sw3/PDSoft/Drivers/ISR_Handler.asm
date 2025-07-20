	;.cdecls   C,LIST,"..\..\TiSoft\include\F2837xS_device.h"
	.cdecls   C,LIST,"..\Application\PdStructDef.h"

INT_STACK_SIZE .equ 64 

	;.sect	".TI.ramfunc"

	.global _Epwm1IsrAsm

	.ref	_FastIsrBody


_Epwm1IsrAsm:
; Prepare stack frame
	asp				 
	push	rb
	push    ar1h:ar0h
	movl    *sp++,xar2	  
    movl    *sp++,xar3   
    movl    *sp++,xar4
    movl    *sp++,xar5
    movl    *sp++,xar6
    movl    *sp++,xar7
    movl    *sp++,xt
	mov32	*sp++,stf
	mov32	*sp++,r0h
	mov32	*sp++,r1h
	mov32	*sp++,r2h
	mov32	*sp++,r3h
	mov32	*sp++,r4h	 
	mov32	*sp++,r5h	 
	mov32	*sp++,r6h	 
	mov32	*sp++,r7h	 
    push	rpc			 
	addb	sp,#INT_STACK_SIZE		
	
	SETFLG    RNDF32=1, RNDF64=1
	spm	    0						
    clrc    PAGE0,OVM
	clrc	amode
 	setc	SXM		

	lcr		_FastIsrBody


; End of ISR
	subb	sp,#INT_STACK_SIZE		 
	pop		rpc
    mov32     r7h,*--sp
    mov32     r6h,*--sp
    mov32     r5h,*--sp
    mov32     r4h,*--sp
    mov32     r3h,*--sp
    mov32     r2h,*--sp
    mov32     r1h,*--sp
    mov32     r0h,*--sp
    mov32     stf,*--sp
    movl    xt,*--sp
    movl    xar7,*--sp
    movl    xar6,*--sp
    movl    xar5,*--sp
    movl    xar4,*--sp
    movl    xar3,*--sp
    movl    xar2,*--sp
	setc	intm	
    pop     ar1h:ar0h
	pop		rb
    nasp

	iret



	.global _WaitIfRdy
	.global _ReadMboxNoKill
	.global _ReadMboxNormal
	.global _ProgMbox4Rx

;//WaitIfRdy(long umsigned * if_address)
; // Wait till the mechanism is again ready for transfers between the
; // CPU and the CAN peripheral
_WaitIfRdy:
	tbit 	*+xar4[0],#15
	bf	_WaitIfRdy,tc
	lretr



	.sect .text
; // Program a mailbox of the DCAN for receive
_ProgMbox4Rx:
	addb	sp,#4
	movl	*-sp[2],acc		; // Remeber cob id and message num

	lcr	_WaitIfRdy
	mov		al,#0xf3
	mov		*+xar4[2],al	; // First half of command register - what to do

	lcr	_WaitIfRdy
	movl	*-sp[4],xar4     ; // Remember base address

	; Put data
	movb	acc,#0
	mov		ah,#0x4000
	addb	xar4,#4
	movl	*+xar4[0],acc		; mask (dont use extended ID, use direction, all ID bits are dont care)

	movl	acc,*-sp[2]
	mov		al,#0
	and		ah,#0x7ff
	lsl		ah,#2
	or		ah,#0x8000 			; message valid, receive, ID = 0 ( dont care by no mask)

	addb	xar4,#4
	movl	*+xar4[0],acc		; arb

	movl	acc,*-sp[2]
	mov		ah,#0
	cmp		al,#16
	bf		LastRxMsg,eq
	mov		al,#0x1008
	bf		wrtmctl,unc
LastRxMsg
	mov		al,#0x1088
wrtmctl:

	addb	xar4,#4				; mctl
	movl	*+xar4[0],acc

	movb	acc,#0

	addb	xar4,#4				; write the data
	movl	*+xar4[0],acc
	addb	xar4,#4
	movl	*+xar4[0],acc

	; Finally write the message number to the cmd
	movl	xar4,*-sp[4]
	movl	acc,*-sp[2]
	mov		*+xar4[0],al

	subb	sp,#4
	lretr



;//ReadMboxNoKill ( long umsigned * if_address, short box)
_ReadMboxNoKill:
	mov		t,#0x73
	bf 		ActualDcanMsgRead,unc

;//ReadMboxNormal ( long umsigned * if_address, short box)
_ReadMboxNormal:
	mov		t,#0x7f

ActualDcanMsgRead:
; Wait ready
	lcr	_WaitIfRdy

	mov		*+xar4[2],t	; // First half of command register - what to do

	lcr	_WaitIfRdy

	mov		*+xar4[0],al 		; // 2nd half of command - action

	lcr	_WaitIfRdy

	movw	dp,#_CAN_IFRx

	mov		@_CAN_IFRx.cmd,al
	mov		@_CAN_IFRx.cmd+1,t

;	mov		ar0,#0x10 ; // data0
;	movl	xar6,#0x12345
;	movl	*+xar4[ar0],xar6
;	movl	xar6,#0x12367
;	mov		ar0,#0x14 ; // data1
;	movl	*+xar4[ar0],xar6
;	mov		ar0,#0xc ; // mctl
;	movl	xar6,#0x8
;	movl	*+xar4[ar0],xar6


	; Retrieve data
	addb	xar4,#4
	movl	acc,*+xar4[0]
	movl	@_CAN_IFRx.mask,acc

	addb	xar4,#4
	movl	acc,*+xar4[0]
	movl	@_CAN_IFRx.arb,acc

	addb	xar4,#4
	movl	acc,*+xar4[0]
	movl	@_CAN_IFRx.mctl,acc

	addb	xar4,#4
	movl	acc,*+xar4[0]
	movl	@_CAN_IFRx.data0,acc

	addb	xar4,#4
	movl	acc,*+xar4[0]
	movl	@_CAN_IFRx.data1,acc

	lretr

	
;/////////////////////////////////////////////////////////////////////////////////////////
; Just general functions
	.global _InitEbss
	.global _MemClr
	.global _GetUnalignedFloat
	.global _GetUnalignedLong
	.global _CopyLong
	.global _Invsqrt
	.global _ReadAngle

; // Initialize the eBSS, starting all the variables at zero
_InitEbss:
	movl	xar4,#EBSS_END
	movl	acc,xar4
	movl	xar4,#EBSS_START
	subl	acc,xar4
	subb	acc,#0x1

_MemClr:
;//	MemClr((short unsigned *)&Recorder,sizeof(struct Recorder)  ) ;
	cmp		al,#0
	bf		MemClrExit,eq
	dec		al
	rpt		al ||
		mov	*xar4++,#0
MemClrExit:
	lretr

_GetUnalignedFloat:
_GetUnalignedLong:
	push dp:st1
	setc intm

	mov	 al,*xar4++
	mov  ah,*xar4++
	mov32	r0h,acc

	pop	dp:st1
	lretr

_CopyLong:
	push dp:st1
	setc intm

	mov	 al,*+xar4[0]
	mov  ah,*+xar4[1]
	mov	 *+xar5[0],al
	mov	 *+xar5[1],ah

	pop	dp:st1
	lretr

; Y = sqrt(X)
; Ye = Estimate(1/sqrt(X));
; Ye = Ye*(1.5 - Ye*Ye*X*0.5)
; Ye = Ye*(1.5 - Ye*Ye*X*0.5)
; Y = X*Ye
_Invsqrt:
; R0H = X on entry
	EISQRTF32 R1H, R0H ; R1H = Ye = Estimate(1/sqrt(X))
	MPYF32 R2H, R0H, #0.5 ; R2H = X*0.5
	MPYF32 R3H, R1H, R1H ; R3H = Ye*Ye
	NOP
	MPYF32 R3H, R3H, R2H ; R3H = Ye*Ye*X*0.5
	NOP
	SUBF32 R3H, #1.5, R3H ; R3H = 1.5 - Ye*Ye*X*0.5
	NOP
	MPYF32 R1H, R1H, R3H ; R2H = Ye = Ye*(1.5 - Ye*Ye*X*0.5)
	NOP
	MPYF32 R3H, R1H, R2H ; R3H = Ye*X*0.5
	NOP
	MPYF32 R3H, R1H, R3H ; R3H = Ye*Ye*X*0.5
	NOP
	SUBF32 R3H, #1.5, R3H ; R3H = 1.5 - Ye*Ye*X*0.5
	CMPF32 R0H, #0.0 ; Check if X == 0
	MPYF32 R1H, R1H, R3H ; R1H = Ye = Ye*(1.5 - Ye*Ye*X*0.5)
	NOP
	MOV32 R0H, R1H, NEQ ; If X is zero, change the Ye estimate to 0
	LRETR


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


; void Ysin(float x , float *sx , float *cx )
	.global _Ysin
_Ysin:
	DIV2PIF32 R0H,R0H
	nop
	nop
	sinpuf32	r0h,r0h
	nop
	nop
	nop
	lretr


; void Ysin(float x , float *sx , float *cx )
	.global _Ycos
_Ycos:
	DIV2PIF32 R0H,R0H
	nop
	nop
	cospuf32	r0h,r0h
	nop
	nop
	nop
	lretr


	.global _Ysqrt
_Ysqrt:
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


	.global _HYpot
_HYpot:
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


	.global _aYcos
_aYcos:
	mpyf32	r1h,r0h,r0h
	movizf32	r2h,#1.0F
	subf32	r1h,r2h,r1h
	movizf32	r2h,#0.0f
	maxf32	r1h,r2h
	sqrtf32	r1h,r1h
	nop
	nop
	nop
	nop
	swapf r1h,r0h
	bf	_Yatan2,unc

	.global _aYsin
_aYsin:
	mpyf32	r1h,r0h,r0h
	movizf32	r2h,#1.0f
	subf32	r1h,r2h,r1h
	movizf32	r2h,#0.0f
	maxf32	r1h,r2h
	sqrtf32	r1h,r1h
	nop
	nop
	nop
	nop


	.global _Yatan2
_Yatan2:
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


	.end
	.include   "StructDef.h"


	
