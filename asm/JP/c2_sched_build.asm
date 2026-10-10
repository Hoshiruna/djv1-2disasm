
; Clear the thirty-two-byte schedule, then select records zero through seven using their ROM pointer table.
BuildC2Schedule:


Call_003_62a3:
    call ClearC2Schedule
    xor a
    ld [wC2SchedIndex], a

jr_003_62aa:
    ld a, [wC2SchedIndex]
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, $68fb
    add hl, bc
    ld a, [hl+]
    ld [wC2SchedPtr], a
    ld a, [hl]
    ld [wC2SchedPtr+1], a
    pop hl
    add hl, hl
    ld e, l
    ld d, h
    call SelectC2SchedRec
    ld a, [wC2SchedIndex]
    inc a
    ld [wC2SchedIndex], a
    cp $08
    jr c, jr_003_62aa

    ret
