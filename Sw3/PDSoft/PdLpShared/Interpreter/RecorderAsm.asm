	.cdecls   C,LIST,"Recorder.h"

	.sect	".TI.ramfunc"


	.global _RtRecorder

_RtRecorder:
; // If recorder is synchronized to main process ...
	movw	dp,#_Recorder
	tbit	@_Recorder.TimeBasis,#0
	bf		TestTimeBasisDone,ntc
	cmp		al,#0
	bf		RecorderDone,neq
TestTimeBasisDone:

	tbit 	@_Recorder.Stopped,#0 ; // If recorder is stopped, nothing to do
	bf		RecorderDone,tc

	tbit	@_Recorder.TriggerActive,#0 ; // If trigger already met, no need to continue trigger check
	bf		TriggerCondDone,tc

	; // Look for trigger
	movl	xar7,@_Recorder.TriggerFunc
	lcr		*xar7
	movw	dp,#_Recorder
	mov		@_Recorder.TriggerActive,al
	cmp		al,#0
	bf		TriggerCondDone,eq

	; // Trigger is met
	mov		ah,@_Recorder.PutCntr
	sub		ah,@_Recorder.GetCntr

	;and		ah,@_Recorder.BufModuloAnd	; // ah = number of existing valid records
	mov		al,ah
	add		al,@_Recorder.BufSize
	cmp		ah,#0
	mov		ah,al,lt ; // ah = mod( PutCntr - GetCntr, BufSize ) ;

	mov		al,@_Recorder.PreTrigTotalCnt	; // al = desired number of pre-trigger records
	min		al,ah						; // Take of them the minimum
	mov		ah,@_Recorder.PutCntr
	sub		ah,al

	;and		ah,@_Recorder.BufModuloAnd	; // ah = the start of recorded session
	mov		al,ah
	add		al,@_Recorder.BufSize
	cmp		ah,#0
	mov		ah,al,lt

	mov		@_Recorder.StartRec,ah
	add		ah,@_Recorder.TotalRecLength

	;and		ah,@_Recorder.BufModuloAnd
	mov		al,ah
	sub		al,@_Recorder.BufSize
	cmp		ah,@_Recorder.BufSize
	mov		ah,al,geq

	mov		@_Recorder.EndRec,ah		; // ah = the last expected record in the buffer

TriggerCondDone:

	; // Run the gap counter
	inc		@_Recorder.GapCntr
	mov		al,@_Recorder.GapCntr
	cmp		al,@_Recorder.RecorderGap
	bf		RecorderDone,neq
	mov		@_Recorder.GapCntr,#0

	; // We are in the decimation count, actual record taking
	movl	xar4,#_Recorder2.RecorderList
	mov		al,@_Recorder.RecorderListLen
	bf		RecorderDone,leq				; // Do nothing if empty list
	mov		ah,#N_RECS_MAX
	min		al,ah						; // Limit the pointer count, to avoid disaster
	dec		al

	mov		ar0,al			; // Loop counter

	movl	xar6,#_RecorderBuffer

	movl	acc,@_Recorder.Minus1		; // Set RFlag and EndFlag as unmarked
	movl	@_Recorder.RFlag,acc
	movl	@_Recorder.EndFlag,acc
RecorderLoop:
	movl	xar5,*xar4++				; // xar5-> next signal
	mov		pl,*xar5++					; // Load as two shorts to avoid alignment problems
	mov		ph,*xar5++
	movl	xar7,xar6
	mov		acc,@_Recorder.PutCntr
	addl	xar7,acc					; xar7 = _RecorderBuffer + PutCntr, place to put the next
	addl    xar7,acc					; add twice because its a long pointer
	movl	*+xar7[0],p					; Put the next record to place
	inc		al
	;and		al,@_Recorder.BufModuloAnd	; // al = next PutCntr
	cmp		al,@_Recorder.BufSize
	movb	al,#0,geq

	mov		@_Recorder.PutCntr,al
	cmp		al,@_Recorder.GetCntr		; // Modify RFlag if GetCntr bypassed
	mov		@_Recorder.RFlag,al,eq
	cmp		al,@_Recorder.EndRec		; // Modify EndFlag if EndRec bypassed
	mov		@_Recorder.EndFlag,al,eq
	banz	RecorderLoop,ar0--

	; // If RFlag changed, set GetCntr  = mod( PutCntr + 1)
	movl	acc,@_Recorder.RFlag
	cmpl	acc,@_Recorder.Minus1
	bf		RecAdvanceGetDone,eq

	mov		al,@_Recorder.PutCntr
	inc		al
	;and		al,@_Recorder.BufModuloAnd
	cmp		al,@_Recorder.BufSize
	movb	al,#0,geq

	mov		@_Recorder.GetCntr,al
RecAdvanceGetDone:

	; if the EndFlag changed, stop the recorder
	movl	acc,@_Recorder.EndFlag
	cmpl	acc,@_Recorder.Minus1

	bf		RecorderDone,eq
	tset 	@_Recorder.Stopped,#0
RecorderDone:
	lretr
