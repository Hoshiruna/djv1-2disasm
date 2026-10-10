
; Advance the eight-bit random state and combine its low nibble with the incremented-state high nibble.
StepRandom:

    push bc

    ldh a, [hRandState]
    add $01
    ldh [hRandByte], a
    ld c, a
    add a
    add a
    add c
    ldh [hRandState], a
    ldh a, [hRandByte]
    swap a
    and $0f
    ldh [hRandByte], a
    ld c, a
    ldh a, [hRandState]
    swap a
    and $f0
    or c
    ldh [hRandByte], a
    pop bc
    ret
