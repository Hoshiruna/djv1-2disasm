
; Score the player hand and process hit/stand input; stop on a special result or after the sixth card.
PlayBJPlayer:


Call_029_6c6c:
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, jr_029_6c7b

    bit 7, a
    ret nz

jr_029_6c7b:
    ld a, $02
    call ShowBJText
    xor a
    ld [wBJChoice], a
    ld [wBJResult], a
    call ChooseBJAction
    ld a, [wBJChoice]
    cp $00
    jr nz, jr_029_6ce4

    ld a, [wBJBias]
    cp $00
    jr z, jr_029_6cb4

    ld a, [wBJPlayer]
    ld [wBJTarget], a
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, jr_029_6caf

    call DealBJBelow
    jr jr_029_6cbc

jr_029_6caf:
    call DealBJNear21
    jr jr_029_6cbc

jr_029_6cb4:
    ld a, [wBJNextP]
    ldh [hBJSlot], a
    call DealBJRandom

jr_029_6cbc:
    ld a, [wBJNextP]
    call ShowBJHandCard
    call SubmitOam
    call ShowBJPause
    ld a, $01
    call ScoreBJHand
    ld [wBJPlayer], a
    cp $00
    jr z, jr_029_6ce3

    bit 7, a
    jr nz, jr_029_6ce3

    ld a, [wBJNextP]
    inc a
    ld [wBJNextP], a
    cp $0c
    jr nz, jr_029_6c7b

jr_029_6ce3:
    ret


jr_029_6ce4:
    call SubmitOam
    call ShowBJPause
    ret
