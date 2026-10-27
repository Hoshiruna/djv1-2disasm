
; Subtract the byte in wArg0 from 16-bit Case II cash; commit only without borrow.
SpendC2Cash:
SpendC2Word:


Call_003_4fca:
    ld a, [wC2Cash]
    ld hl, wArg0
    sub [hl]
    ld a, [wC2Cash+1]
    sbc $00
    jr c, C2CashInsufficient

    ld a, [wC2Cash]
    ld hl, wArg0
    sub [hl]
    ld [wC2Cash], a
    ld a, [wC2Cash+1]
    sbc $00
    ld [wC2Cash+1], a
    call SetResult
    ret


; Clear the result when cash is below the requested amount.
C2CashInsufficient:
jr_003_4fee:
    call ClearResult
    ret

; Compare 16-bit Case II cash with the byte in wTrainFare and set result bit 0 on sufficient cash.
TestC2Cash:
TestC2Word:


    ld a, [wC2Cash]
    ld hl, wTrainFare
    sub [hl]
    ld a, [wC2Cash+1]
    sbc $00
    jr c, C2CashInsufficient

    call SetResult
    ret
