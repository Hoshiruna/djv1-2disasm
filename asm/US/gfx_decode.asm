

; HL = tile-count byte, BC = destination; decode count*16 LZ bytes.
DecodeLzTiles:
Jump_000_0568:
jr_000_0568:
    ld a, [hl+]
    ld e, a
    xor a
    sla e
    rla
    sla e
    rla
    sla e
    rla
    sla e
    rla
    ld d, a
    jp Jump_000_0680


Call_000_057b:
    call Call_000_057e

Call_000_057e:
    call Call_000_0581

Call_000_0581:
    call Call_000_05b0
    ld [bc], a
    inc bc
    inc bc
    ret


; HL = marker byte, BC = low-plane destination; decode both interleaved planes.
DecodeRleTiles:
Jump_000_0588:
jr_000_0588:
    ld a, [hl+]
    ldh [$ffe3], a
    ld a, [hl+]
    ld d, a
    xor a
    ldh [$ffe0], a
    push bc
    push de
    call Call_000_0598
    pop de
    pop bc
    inc bc

Call_000_0598:
jr_000_0598:
    push de
    ldh a, [$ffe0]
    ld d, a
    ldh a, [$ffe1]
    ld e, a
    call Call_000_057b

Jump_000_05a2:
    call Call_000_057b
    ld a, d
    ldh [$ffe0], a
    ld a, e
    ldh [$ffe1], a
    pop de

Call_000_05ac:
    dec d
    jr nz, jr_000_0598

Call_000_05af:
    ret


Call_000_05b0:
    bit 0, d
    jr z, jr_000_05bd

    xor a
    cp e
    jr z, jr_000_05bc

    dec e
    ldh a, [$ffe2]
    ret


jr_000_05bc:
    ld d, a

jr_000_05bd:
    ldh a, [$ffe3]
    cp [hl]
    jr z, jr_000_05c4

    ld a, [hl+]

Jump_000_05c3:
    ret


jr_000_05c4:
    inc hl
    ld a, [hl+]
    ldh [$ffe2], a
    ld a, [hl+]
    ld e, a
    ldh a, [$ffe2]
    inc d

Jump_000_05cd:
    ret
