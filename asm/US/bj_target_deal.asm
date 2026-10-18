
; Seek an unused card from the requested twenty-one-minus-score group; use random dealing if the target or search fails.
DealBJNear21:

    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a
    ld a, $15

; Replace the target score with 21 minus that score.
BJNear21ComputeGap:
jr_029_6df5:
    ld hl, wBJTarget
    sub [hl]
    ld [hl], a
    jr z, BJNear21RandomFallback

    cp $0c
    jr nc, BJNear21RandomFallback

; Search for an unused card matching the target rank.
BJTargetPickRank:
jr_029_6e00:
    call PickBJRank
    bit 7, a
    jr nz, BJNear21RandomFallback

    ld [wBJDraw], a
    ld [wBJBitId], a
    jp StoreBJCard


; Restore the saved loop and slot state before random dealing.
BJNear21RandomFallback:
jr_029_6e10:
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jp DealBJRandom

; Select the original score-dependent target or player-minus-dealer-minus-one target; use random dealing if it is invalid.
DealBJBelow:


Call_029_6e1d:
    ldh a, [hBJLoop]
    ld [wBJCard], a
    ldh a, [hBJSlot]
    ld [wBJFace], a
    ld a, $15
    ld hl, wBJTarget
    sub [hl]
    ld [hl], a
    cp $09
    jr nc, BJBelowUseScoreGap

    ld a, $0a
    ld [wBJTarget], a
    jr BJTargetPickRank

; Target player total minus dealer total minus one.
BJBelowUseScoreGap:
jr_029_6e39:
    ld a, [wBJPlayer]
    ld hl, wBJDealer
    sub [hl]
    dec a
    ld [wBJTarget], a
    cp $00
    jr z, BJBelowRandomFallback

    bit 7, a
    jr z, BJTargetPickRank

; Restore the saved loop and slot state before random dealing.
BJBelowRandomFallback:
jr_029_6e4c:
    ld a, [wBJCard]
    ldh [hBJLoop], a
    ld a, [wBJFace]
    ldh [hBJSlot], a
    jp DealBJRandom
