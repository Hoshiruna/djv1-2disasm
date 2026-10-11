
; Read six hand slots, count cards and aces, and reduce aces by ten while the total exceeds twenty-one; retain the original special markers.
SumBJHand:

Call_029_6a89:
    xor a
    ld [wBJTotal], a
    ld [wBJAces], a
    ld [wBJCount], a
    ld de, $0005

jr_029_6a96:
    ld a, [wBJHandPtr]
    ld l, a
    ld a, [wBJHandPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_029_6aad

    push af
    ld a, [wBJCount]
    inc a
    ld [wBJCount], a
    pop af

jr_029_6aad:
    ld l, a
    ld h, $00
    ld bc, BJCardFaces
    add hl, bc
    ld a, [hl]
    and $0f
    cp $0b
    jr nz, jr_029_6ac4

    push af
    ld a, [wBJAces]
    inc a
    ld [wBJAces], a
    pop af

jr_029_6ac4:
    ld hl, wBJTotal
    add [hl]
    ld [hl], a
    dec de
    bit 7, d
    jr z, jr_029_6a96

jr_029_6ace:
    cp $15
    jr nz, jr_029_6ae5

    ld a, [wBJCount]
    cp $02
    jr nz, jr_029_6adf

    ld a, $ff
    ld [wBJTotal], a
    ret


jr_029_6adf:
    ld a, $95
    ld [wBJTotal], a
    ret


jr_029_6ae5:
    cp $16
    jr c, jr_029_6b02

    ld a, [wBJAces]
    cp $00
    jr z, jr_029_6b01

    ld a, [wBJAces]
    dec a
    ld [wBJAces], a
    ld a, [wBJTotal]
    sub $0a
    ld [wBJTotal], a
    jr jr_029_6ace

jr_029_6b01:
    xor a

jr_029_6b02:
    ld [wBJTotal], a
    ret
