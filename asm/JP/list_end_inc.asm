
; Increment the end row; at the regional row count, reset it and increment the end group.
IncListEnd:
    ld a, [wListEndRow]
    inc a
    ld [wListEndRow], a
    cp $08
    ret c

    xor a
    ld [wListEndRow], a
    ld a, [wListMax]
    inc a
    ld [wListMax], a
    ret
