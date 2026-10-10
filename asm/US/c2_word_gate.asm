
; Test the case-two word/gate condition and jump to the existing clear-result branch handler.
BranchWordFive:


    call TestWordFive
    jp BranchIfClear

; Set the result when the gate byte is nonzero or the case-two word is at least five; otherwise clear it without changing the word.
TestWordFive:


Call_000_30a3:
    ld a, [$c58c]
    cp $00
    jr nz, jr_000_30ba

    ld a, [wC2Word]

Jump_000_30ad:
    sub $05
    ld a, [wC2Word+1]
    sbc $00
    jr nc, jr_000_30ba

    call ClearResult
    ret


Jump_000_30ba:
jr_000_30ba:
    call SetResult
    ret
