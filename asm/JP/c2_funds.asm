
; Read a two-byte target and branch when chips are zero and Case II cash is below five dollars.
BranchNoFunds:
BranchWordFive:


    call TestC2Funds
    jp BranchIfClear

; Set the result when chips are nonzero or Case II cash is at least five dollars; otherwise clear it.
TestC2Funds:
TestWordFive:


Call_000_31f3:
    ld a, [wChips]
    cp $00
    jr nz, jr_000_320a

    ld a, [wC2Cash]
    sub $05
    ld a, [wC2Cash+1]
    sbc $00
    jr nc, jr_000_320a

    call ClearResult
    ret


jr_000_320a:
    call SetResult
    ret
