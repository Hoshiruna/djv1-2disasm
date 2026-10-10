

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
    jp DecodeLz

; Decode four bytes into one tile plane, advancing BC by two per byte.
CopyRle4:


Call_000_057b:
    call CopyRle2

; Decode two bytes through the original call-and-fall-through cascade.
CopyRle2:

Call_000_057e:
    call CopyRle1

; Decode one byte to BC and advance BC by two.
CopyRle1:

Call_000_0581:
    call ReadRleByte
    ld [bc], a
    inc bc
    inc bc
    ret


; HL = marker byte, BC = low-plane destination; decode both interleaved planes.
DecodeRleTiles:
Jump_000_0588:
jr_000_0588:
    ld a, [hl+]
    ldh [hRleMark], a
    ld a, [hl+]
    ld d, a
    xor a
    ldh [hRleFlags], a
    push bc
    push de
    call DecodeRlePlane
    pop de
    pop bc
    inc bc

; Decode D tiles into one plane and retain run state for the next plane.
DecodeRlePlane:

Call_000_0598:
jr_000_0598:
    push de
    ldh a, [hRleFlags]
    ld d, a
    ldh a, [hRleLeft]
    ld e, a
    call CopyRle4

Jump_000_05a2:
    call CopyRle4
    ld a, d
    ldh [hRleFlags], a
    ld a, e
    ldh [hRleLeft], a
    pop de

Call_000_05ac:
    dec d
    jr nz, jr_000_0598

Call_000_05af:
    ret

; Return a literal or run byte; marker/value/count emits count+1 copies.
ReadRleByte:


Call_000_05b0:
    bit 0, d
    jr z, jr_000_05bd

    xor a
    cp e
    jr z, jr_000_05bc

    dec e
    ldh a, [hRleValue]
    ret


jr_000_05bc:
    ld d, a

jr_000_05bd:
    ldh a, [hRleMark]
    cp [hl]
    jr z, jr_000_05c4

    ld a, [hl+]

Jump_000_05c3:
    ret


jr_000_05c4:
    inc hl
    ld a, [hl+]
    ldh [hRleValue], a
    ld a, [hl+]
    ld e, a
    ldh a, [hRleValue]
    inc d

Jump_000_05cd:
    ret
