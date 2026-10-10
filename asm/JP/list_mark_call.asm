
; Call ClearListMark in bank one with the original A, then restore the previous ROM bank.
ClearListMarkCall:


Call_000_3a5d:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ClearListMark
    call PopRomBank
    ret
