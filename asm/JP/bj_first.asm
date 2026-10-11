
; Prepare and deal hand slots zero, one, six, and seven in order, waiting thirty-two ticks after each.
DealBJFirst4:


Call_029_6a71:
    ld d, a
    ld a, $03
    ldh [hBJLoop], a
    ld a, $00
    ldh [hBJLoop+1], a
    ld a, d

jr_029_6a7b:
    ld bc, BJFirstSlots
    ldh a, [hBJLoop]
    ld l, a
    ldh a, [hBJLoop+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ShowBJHandCard
    ld bc, BJFirstSlots
    ldh a, [hBJLoop]
    ld l, a
    ldh a, [hBJLoop+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [hBJSlot], a
    call DealBJRandom
    ld a, $20
    call WaitTicks
    ldh a, [hBJLoop]
    dec a
    ldh [hBJLoop], a
    bit 7, a
    jr z, jr_029_6a7b

    ret

BJFirstSlots:
    db $07, $06, $01, $00
