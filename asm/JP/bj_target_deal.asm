
; Seek an unused card from the requested twenty-one-minus-score group; use random dealing if the target or search fails.
DealBJNear21:

    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a
    ld a, $15

jr_029_6e2d:
    ld hl, wBJTarget
    sub [hl]
    ld [hl], a
    jr z, jr_029_6e48

    cp $0c
    jr nc, jr_029_6e48

jr_029_6e38:
    call PickBJRank
    bit 7, a
    jr nz, jr_029_6e48

    ld [wBJDraw], a
    ld [wBJBitId], a
    jp StoreBJCard


jr_029_6e48:
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jp DealBJRandom

; Select the original score-dependent target or player-minus-dealer-minus-one target; use random dealing if it is invalid.
DealBJBelow:


Call_029_6e55:
    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a
    ld a, $15
    ld hl, wBJTarget
    sub [hl]
    ld [hl], a
    cp $09
    jr nc, jr_029_6e71

    ld a, $0a
    ld [wBJTarget], a
    jr jr_029_6e38

jr_029_6e71:
    ld a, [wBJPlayer]
    ld hl, wBJDealer
    sub [hl]
    dec a
    ld [wBJTarget], a
    cp $00
    jr z, jr_029_6e84

    bit 7, a
    jr z, jr_029_6e38

jr_029_6e84:
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jp DealBJRandom
