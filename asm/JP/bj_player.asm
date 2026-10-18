
; Score the player hand and process hit/stand input; stop on a special result or after the sixth card.
PlayBJPlayer:


Call_029_6ca4:
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, BJPlayerChooseAction

    bit 7, a
    ret nz

; Show the action prompt and read the next hit or stand choice.
BJPlayerChooseAction:
jr_029_6cb3:
    ld a, $02
    call ShowBJText
    xor a
    ld [wBJChoice], a
    ld [wBJResult], a
    call ChooseBJAction
    ld a, [wBJChoice]
    cp $00
    jr nz, BJPlayerStand

    ld a, [wBJBias]
    cp $00
    jr z, BJPlayerDealRandom

    ld a, [wBJPlayer]
    ld [wBJTarget], a
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, BJPlayerDealNear21

    call DealBJBelow
    jr BJPlayerShowNewCard

; Use the near-21 dealing path for this bias mode.
BJPlayerDealNear21:
jr_029_6ce7:
    call DealBJNear21
    jr BJPlayerShowNewCard

; Use the unbiased random dealing path.
BJPlayerDealRandom:
jr_029_6cec:
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    call DealBJRandom

; Draw the new card, pause, and rescore the player hand.
BJPlayerShowNewCard:
jr_029_6cf4:
    ld a, [wBJNextP]
    call ShowBJHandCard
    call SubmitOam
    call ShowBJPause
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, BJPlayerDone

    bit 7, a
    jr nz, BJPlayerDone

    ld a, [wBJNextP]
    inc a
    ld [wBJNextP], a
    cp $0c
    jr nz, BJPlayerChooseAction

; Return after a special total or the sixth card.
BJPlayerDone:
jr_029_6d1b:
    ret


; Finish the player turn after a stand choice.
BJPlayerStand:
jr_029_6d1c:
    call SubmitOam
    call ShowBJPause
    ret
