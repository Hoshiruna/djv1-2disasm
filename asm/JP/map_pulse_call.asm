
; Select bank $29, draw rectangle states one and zero with the original wait, and restore the bank.
MapPulse10Call:


Call_000_39ac:
    push af
    ld a, $29
    call PushRomBank
    pop af
    call MapPulse10
    call PopRomBank
    ret
