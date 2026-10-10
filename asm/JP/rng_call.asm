
; Call the bank-2 random step while preserving HL/BC and restoring the ROM bank.
NextRandom:


Call_000_0b99:
    push hl
    push bc
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepRandom
    call PopRomBank
    pop bc
    pop hl
    ret
