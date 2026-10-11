
; Read six hand slots, count cards and aces, and reduce aces by ten while the total exceeds twenty-one; retain the original special markers.
SumBJHand:

Call_029_6aac:
    xor a
    ld [wBJTotal], a
    ld [wBJAces], a
    ld [wBJCount], a
    ld de, $0005

jr_029_6ab9:
    ld a, [wBJHandPtr]
    ld l, a
    ld a, [wBJHandPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_029_6ad0

    push af
    ld a, [wBJCount]
    inc a
    ld [wBJCount], a
    pop af

jr_029_6ad0:
    ld l, a
    ld h, $00
    ld bc, BJCardFaces
    add hl, bc
    ld a, [hl]
    and $0f
    cp $0b
    jr nz, jr_029_6ae7

    push af
    ld a, [wBJAces]
    inc a
    ld [wBJAces], a
    pop af

jr_029_6ae7:
    ld hl, wBJTotal
    add [hl]
    ld [hl], a
    dec de
    bit 7, d
    jr z, jr_029_6ab9

jr_029_6af1:
    cp $15
    jr nz, jr_029_6b08

    ld a, [wBJCount]
    cp $02
    jr nz, jr_029_6b02

    ld a, $ff
    ld [wBJTotal], a
    ret


jr_029_6b02:
    ld a, $95
    ld [wBJTotal], a
    ret


jr_029_6b08:
    cp $16
    jr c, jr_029_6b25

    ld a, [wBJAces]
    cp $00
    jr z, jr_029_6b24

    ld a, [wBJAces]
    dec a
    ld [wBJAces], a
    ld a, [wBJTotal]
    sub $0a
    ld [wBJTotal], a
    jr jr_029_6af1

jr_029_6b24:
    xor a

jr_029_6b25:
    ld [wBJTotal], a
    ret
