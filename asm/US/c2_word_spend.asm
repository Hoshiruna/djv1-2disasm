
; Subtract argument zero from the little-endian word only when sufficient; set the result on subtraction and clear it on borrow.
SpendC2Word:


Call_003_4fca:
    ld a, [wC2Word]
    ld hl, wArg0
    sub [hl]
    ld a, [wC2Word+1]
    sbc $00
    jr c, jr_003_4fee

    ld a, [wC2Word]
    ld hl, wArg0
    sub [hl]
    ld [wC2Word], a
    ld a, [wC2Word+1]
    sbc $00
    ld [wC2Word+1], a
    call SetResult
    ret


jr_003_4fee:
    call ClearResult
    ret

; Set the result when the little-endian word is at least the stored byte cost; otherwise clear it without changing the word.
TestC2Word:


    ld a, [wC2Word]
    ld hl, wC2Cost
    sub [hl]
    ld a, [wC2Word+1]
    sbc $00
    jr c, jr_003_4fee

    call SetResult
    ret
