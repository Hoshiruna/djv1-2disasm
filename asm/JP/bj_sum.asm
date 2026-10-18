
; Read six hand slots, count cards and aces, and reduce aces by ten while the total exceeds twenty-one; retain the original special markers.
SumBJHand:

Call_029_6aac:
    xor a
    ld [wBJTotal], a
    ld [wBJAces], a
    ld [wBJCount], a
    ld de, $0005

; Read the next of six hand slots in reverse order.
BJSumNextSlot:
jr_029_6ab9:
    ld a, [wBJHandPtr]
    ld l, a
    ld a, [wBJHandPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    cp $00
    jr z, BJSumCardFace

    push af
    ld a, [wBJCount]
    inc a
    ld [wBJCount], a
    pop af

; Look up the card face and count aces.
BJSumCardFace:
jr_029_6ad0:
    ld l, a
    ld h, $00
    ld bc, BJCardFaces
    add hl, bc
    ld a, [hl]
    and $0f
    cp $0b
    jr nz, BJSumAddFace

    push af
    ld a, [wBJAces]
    inc a
    ld [wBJAces], a
    pop af

; Add the face value to the running hand total.
BJSumAddFace:
jr_029_6ae7:
    ld hl, wBJTotal
    add [hl]
    ld [hl], a
    dec de
    bit 7, d
    jr z, BJSumNextSlot

; Distinguish a two-card 21 from a longer 21.
BJSumCheckTwentyOne:
jr_029_6af1:
    cp $15
    jr nz, BJSumReduceAces

    ld a, [wBJCount]
    cp $02
    jr nz, BJSumLongTwentyOne

    ld a, $ff
    ld [wBJTotal], a
    ret


; Store marker 95h for a hand of 21 with more than two cards.
BJSumLongTwentyOne:
jr_029_6b02:
    ld a, $95
    ld [wBJTotal], a
    ret


; Reduce an ace by ten while the total exceeds 21.
BJSumReduceAces:
jr_029_6b08:
    cp $16
    jr c, BJSumStoreTotal

    ld a, [wBJAces]
    cp $00
    jr z, BJSumBust

    ld a, [wBJAces]
    dec a
    ld [wBJAces], a
    ld a, [wBJTotal]
    sub $0a
    ld [wBJTotal], a
    jr BJSumCheckTwentyOne

; Use zero when the hand exceeds 21 without an adjustable ace.
BJSumBust:
jr_029_6b24:
    xor a

; Store the final total or bust marker.
BJSumStoreTotal:
jr_029_6b25:
    ld [wBJTotal], a
    ret
