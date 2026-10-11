
; Select the original ace, ten-point, or descending rank search for the pending target.
PickBJRank:


Call_029_6e59:
    ld a, [wBJTarget]
    cp $0a
    jp z, PickBJTen

    cp $0b
    jr z, jr_029_6ed7

; Scan lower rank groups for an unused card, using the original group offsets and returning $ff when exhausted.
ScanBJRanks:

Jump_029_6e65:
jr_029_6e65:
    ld a, [wBJTarget]
    dec a
    ld [wBJTarget], a
    bit 7, a
    jr z, jr_029_6e73

    ld a, $ff
    ret


jr_029_6e73:
    srl a
    ldh [hBJByte], a
    ld a, [wBJTarget]
    and $01
    ldh [hBJHalf], a
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    ld [wBJScan], a
    push af
    ldh a, [hBJHalf]
    ld l, a
    ld h, $00
    ld bc, BJHalfMasks
    add hl, bc
    pop af
    and [hl]
    cp [hl]
    jr z, jr_029_6e65

    ld a, [wBJTarget]
    and $01
    jr z, jr_029_6eb2

    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    add a
    add a
    add a
    add a
    ld [wBJScan], a

jr_029_6eb2:
    ld a, [wBJTarget]
    ldh [hBJRank], a
    ld l, a
    ld h, $00
    ld bc, BJRankBases
    add hl, bc
    ld a, [hl]
    ld [wBJScanId], a

jr_029_6ec2:
    ld a, [wBJScanId]
    inc a
    ld [wBJScanId], a
    ld a, [wBJScan]
    sla a
    ld [wBJScan], a
    jr c, jr_029_6ec2

    ld a, [wBJScanId]
    ret


jr_029_6ed7:
    xor a
    ld [wBJScanId], a
    ld a, [wBJUsed]
    ld [wBJScan], a
    and $f0
    cp $f0
    jr nz, jr_029_6ec2

    ld a, [wBJTarget]
    dec a
    ld [wBJTarget], a

; Search ten-point cards from ID thirty-seven upward, falling back to lower ranks if those cards are used.
PickBJTen:

Jump_029_6eee:
    ld a, $24
    ld [wBJScan], a
    ld a, $04
    ldh [hBJByte], a
    ldh [hBJBit], a

jr_029_6ef9:
    ld a, [wBJScan]
    inc a
    ld [wBJScan], a
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    push af
    ldh a, [hBJBit]
    ld l, a
    ld h, $00
    ld bc, BJMasks
    add hl, bc
    pop af
    and [hl]
    jr z, jr_029_6f37

    ldh a, [hBJBit]
    inc a
    ldh [hBJBit], a
    cp $08
    jr nz, jr_029_6ef9

    xor a
    ldh [hBJBit], a
    ldh a, [hBJByte]
    inc a
    ldh [hBJByte], a
    cp $07
    jr nz, jr_029_6ef9

    ld a, [wBJTarget]
    dec a
    ld [wBJTarget], a
    jp ScanBJRanks


jr_029_6f37:
    ld a, [wBJScan]
    ret
