
; Test the case-two word/gate condition and jump to the existing clear-result branch handler.
BranchWordFive:


    call TestWordFive
    jp BranchIfClear

; Set the result when the gate byte is nonzero or the case-two word is at least five; otherwise clear it without changing the word.
TestWordFive:


Call_000_31f3:
    ld a, [$c58c]
    cp $00
    jr nz, jr_000_320a

    ld a, [wC2Word]
    sub $05
    ld a, [wC2Word+1]
    sbc $00
    jr nc, jr_000_320a

    call ClearResult
    ret


jr_000_320a:
    call SetResult
    ret
