
	.global RecorderFill

RecorderFill:

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    movl    xar6,*xar4++                ; // xar5-> next signal
    mov     pl,*xar6++                  ; // Load as two shorts to avoid alignment problems
    mov     ph,*xar6++
    movl    *xar5++,p                 ; Put the next record to place

    lretr
