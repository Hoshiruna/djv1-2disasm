
; Read a two-byte target and branch when chips are zero and Case II cash is below five dollars.
BranchNoFunds:
BranchWordFive:


    call TestC2Funds
    jp BranchIfClear

; Set the result when chips are nonzero or Case II cash is at least five dollars; otherwise clear it.
TestC2Funds:
TestWordFive:


Call_000_30a3:
    ld a, [wChips]
    cp $00
    jr nz, jr_000_30ba

    ld a, [wC2Cash]

Jump_000_30ad:
    sub $05
    ld a, [wC2Cash+1]
    sbc $00
    jr nc, jr_000_30ba

    call ClearResult
    ret


Jump_000_30ba:
jr_000_30ba:
    call SetResult
    ret
