
; Call PrepItem in bank one with the original A and restore the previous ROM bank.
PrepItemBank:


Call_000_386f:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PrepItem
    call PopRomBank
    ret
