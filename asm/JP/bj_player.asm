
; Score the player hand and process hit/stand input; stop on a special result or after the sixth card.
PlayBJPlayer:


Call_029_6ca4:
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, jr_029_6cb3

    bit 7, a
    ret nz

jr_029_6cb3:
    ld a, $02
    call ShowBJText
    xor a
    ld [wBJChoice], a
    ld [wBJResult], a
    call ChooseBJAction
    ld a, [wBJChoice]
    cp $00
    jr nz, jr_029_6d1c

    ld a, [wBJBias]
    cp $00
    jr z, jr_029_6cec

    ld a, [wBJPlayer]
    ld [wBJTarget], a
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, jr_029_6ce7

    call DealBJBelow
    jr jr_029_6cf4

jr_029_6ce7:
    call DealBJNear21
    jr jr_029_6cf4

jr_029_6cec:
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    call DealBJRandom

jr_029_6cf4:
    ld a, [wBJNextP]
    call ShowBJHandCard
    call SubmitOam
    call ShowBJPause
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, jr_029_6d1b

    bit 7, a
    jr nz, jr_029_6d1b

    ld a, [wBJNextP]
    inc a
    ld [wBJNextP], a
    cp $0c
    jr nz, jr_029_6cb3

jr_029_6d1b:
    ret


jr_029_6d1c:
    call SubmitOam
    call ShowBJPause
    ret
