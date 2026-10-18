
; Clear both scores and all twelve hand slots, then set the next dealer/player slots to two/eight.
ClearBJHands:


Call_029_6fb3:
    xor a
    ld [wBJDealer], a
    ld [wBJPlayer], a
    ld c, $0b
    ld hl, wBJCards

; Clear each of the twelve hand-card slots.
BJClearHandSlots:
jr_029_6fbf:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, BJClearHandSlots

    ld a, $02
    ld [wBJNextD], a
    ld a, $08
    ld [wBJNextP], a
    ret

; Clear six used-card bytes, set the seventh to $0f, and mark all fifty-two cards available.
ResetBJDeck:


Call_029_6fd0:
    xor a
    ld c, $05
    ld hl, wBJUsed

; Clear the first six used-card bitmap bytes.
BJClearUsedCardBytes:
jr_029_6fd6:
    ld [hl+], a
    dec c
    bit 7, c
    jr z, BJClearUsedCardBytes

    ld a, $0f
    ld [wBJUsed+6], a
    ld a, $34
    ld [wBJLeft], a
    ret
