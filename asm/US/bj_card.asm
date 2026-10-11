
; Read the card in slot A, map it to its rank/suit byte, play cue $25, and draw it.
ShowBJHandCard:


Call_029_6d30:
    ld [wBJSlot], a
    ld l, a
    ld h, $00
    ld bc, wBJCards
    add hl, bc
    ld a, [hl]
    ld [wBJCard], a
    ld l, a
    ld h, $00
    ld bc, BJCardFaces
    add hl, bc
    ld a, [hl]
    ld [wBJFace], a
    ld a, $25
    call PlayAudio
    call DrawBJCard
    ret
