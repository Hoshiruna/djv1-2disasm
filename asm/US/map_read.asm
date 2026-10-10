
; Start at $9800 and dispatch the original single or paired map format.
ReadBgMap:


Call_000_05ce:
    ld bc, $9800
    ld a, [hl+]
    cp $20
    jp z, ReadMapRle

    cp $21
    jr z, jr_000_060c

    cp $17
    jr z, jr_000_062d

    cp $18
    jr z, jr_000_05ed

    cp $07
    jr z, jr_000_0651

    cp $08
    jr z, jr_000_060c

jr_000_05eb:
    jr jr_000_05eb

; Copy raw tiles, restore dimensions, then copy attributes in VRAM bank 1.
ReadMapPair:

jr_000_05ed:
    ld a, [hl+]
    ldh [hReadWidth], a

Call_000_05f0:
    push af
    ld a, [hl+]
    ldh [hReadHeight], a
    push af
    call CopyMapRaw
    pop af
    ldh [hReadHeight], a
    pop af
    ldh [hReadWidth], a
    ld bc, $9800

Jump_000_0601:
    ld a, $01
    ldh [rVBK], a
    call CopyMapRaw
    xor a
    ldh [rVBK], a
    ret

; Read width and height before copying raw map rows.
ReadMapRaw:


jr_000_060c:
    ld a, [hl+]
    ldh [hReadWidth], a
    ld a, [hl+]
    ldh [hReadHeight], a

; Copy width bytes per row and advance the row base by $20.
CopyMapRaw:

Call_000_0612:
jr_000_0612:
    push bc
    ldh a, [hReadWidth]
    ld e, a

jr_000_0616:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_0616

    pop bc
    ld a, $20

Jump_000_061f:
    add c

Call_000_0620:
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ldh a, [hReadHeight]
    dec a
    ldh [hReadHeight], a
    jr nz, jr_000_0612

    ret

; Read one marker and continue RLE run state from tiles into attributes.
ReadRlePair:


jr_000_062d:
    ld a, [hl+]
    ldh [hReadWidth], a

Call_000_0630:
    push af
    ld a, [hl+]
    ldh [hReadHeight], a
    push af
    ld a, [hl+]
    ldh [hRleMark], a
    xor a
    ld d, a
    call CopyMapRle
    pop af
    ldh [hReadHeight], a

Call_000_0640:
    pop af
    ldh [hReadWidth], a
    ld bc, $9800
    ld a, $01
    ldh [rVBK], a

Call_000_064a:
    call CopyMapRle
    xor a
    ldh [rVBK], a
    ret

; Read dimensions and marker, clear the run flag, then copy RLE map rows.
ReadMapRle:


Jump_000_0651:
jr_000_0651:
    ld a, [hl+]
    ldh [hReadWidth], a
    ld a, [hl+]
    ldh [hReadHeight], a
    ld a, [hl+]

Jump_000_0658:
    ldh [hRleMark], a
    xor a
    ld d, a

; Decode width bytes per row and retain DE run state across rows.
CopyMapRle:

Call_000_065c:
jr_000_065c:
    push bc
    ldh a, [hReadWidth]
    push af

jr_000_0660:
    call ReadRleByte
    ld [bc], a
    inc bc
    ldh a, [hReadWidth]
    dec a
    ldh [hReadWidth], a
    jr nz, jr_000_0660

    pop af
    ldh [hReadWidth], a
    pop bc
    ld a, c
    add $20
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ldh a, [hReadHeight]
    dec a
    ldh [hReadHeight], a
    jr nz, jr_000_065c

Call_000_067f:
    ret
