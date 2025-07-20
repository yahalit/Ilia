
	.sect .text

	.global GetFloatFromStr
	.global GetLongFromStr
_	.global GetShortFromStr
GetFloatFromStr:
GetLongFromStr:
GetShortFromStr:
	push dp:st1
	setc intm

	and	 al,*+xar4[2],0xff
	and	 ah,*+xar4[3],0xff
	lsl	 ah,#8
	or	 ah,al
	and	 al,*+xar4[0],0xff
	mov	 t,al
	and	 al,*+xar4[1],0xff
	lsl	 al,#8
	or	 al,t
	mov32	r0h,acc

	pop	dp:st1
	lretr


	.global GetStrFromLong
; void GetStrFromLong( short unsigned * pStr , long a )
GetStrFromLong:
	push acc
	and al,#0xff
	mov		*+xar4[0],al
	and ah,#0xff
	mov		*+xar4[2],al
	pop		acc
	sfr		acc,#8
	and al,#0xff
	mov		*+xar4[1],al
	and ah,#0xff
	mov		*+xar4[3],al
	lretr

;/*
; Dynamixel maintainance
;*/




; * \brief Get a speed command out of:
; *
;* \param e : Position error
;* \param kp: Position control gain
;* \param a : Maximum acceleration
;*
;float GetSpeedCmd ( float e , float kp , float a )
	.global GetSpeedCmd
GetSpeedCmd:
	mov32	r3h,r0h
	absf32	r0h,r0h
	mpyf32	r2h,#2.0F,r2h
	mpyf32	r1h,r0h,r1h	 ; // kp * e version
	mpyf32	r2h,r2h,r0h  ; // 2 * a * abs(e)
	nop
	nop
	sqrtf32 r0h,r2h
	nop
	nop
	nop
	nop
	minf32	r0h,r1h
	cmpf32	r3h,#0.0f
	negf32	r0h,r0h,lt
	lretr


