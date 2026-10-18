
; Choose card IDs one through fifty-two, retry used cards, then store the new card and update the remaining count.
DealBJRandom:


Call_029_6d8a:
Jump_029_6d8a:
jr_029_6d8a:
    call NextRandom
    ldh a, [hRandByte]
    cp $00
    jr z, DealBJRandom

    cp $35
    jr nc, DealBJRandom

    ld [wBJDraw], a
    ld [wBJBitId], a
    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a

; Convert the pending card to its byte/bit index; reject used cards, mark a new card, store its hand slot, and decrement the remaining count.
StoreBJCard:

Jump_029_6da7:
    ld a, [wBJBitId]
    dec a
    ld [wBJBitId], a
    srl a
    srl a
    srl a
    ldh [hBJByte], a
    ld a, [wBJBitId]
    and $07
    ldh [hBJBit], a
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
    jr z, BJStoreUnusedCard

    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jr DealBJRandom

; Mark the unused card, store it in the current hand slot, and decrement the deck count.
BJStoreUnusedCard:
jr_029_6de1:
    ldh a, [hBJByte]
    ld l, a
    ld h, $00
    ld bc, wBJUsed
    add hl, bc
    ld a, [hl]
    push hl
    push af
    ldh a, [hBJBit]
    ld l, a
    ld h, $00
    ld bc, BJMasks
    add hl, bc
    pop af
    or [hl]
    pop hl
    ld [hl], a
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    ld l, a
    ld h, $00
    ld bc, wBJCards
    add hl, bc
    ld a, [wBJDraw]
    ld [hl], a
    ld a, [wBJLeft]
    dec a
    ld [wBJLeft], a
    jp ShowBJLeft

BJMasks:
    db $80, $40, $20, $10, $08, $04, $02, $01
