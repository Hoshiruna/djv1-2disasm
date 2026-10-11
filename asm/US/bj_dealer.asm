
; Reveal and score the dealer hand, draw according to the original score/mode conditions, then compare the two hands.
PlayBJDealer:


Call_029_6b89:
    ld a, [wBJPlayer]
    cp $ff
    jr nz, jr_029_6b95

; Set result two and enter the shared blackjack settlement.
BJPlayerWin:

Jump_029_6b90:
jr_029_6b90:
    ld a, $02
    jp PayBJResult


jr_029_6b95:
    cp $00
    jr nz, jr_029_6b9e

; Set result one and enter the shared blackjack settlement.
BJPlayerLose:

Jump_029_6b99:
jr_029_6b99:
    ld a, $01
    jp PayBJResult


jr_029_6b9e:
    xor a
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a

jr_029_6ba9:
    ld a, $20
    call WaitTicks
    ld a, [wBJDealer]
    cp $11
    jr nc, jr_029_6c16

    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr nz, jr_029_6bc5

    ld a, [wBJBias]
    cp $00
    jr nz, jr_029_6bce

jr_029_6bc5:
    jr nc, jr_029_6b99

    ld a, [wBJBias]
    cp $00
    jr z, jr_029_6bea

jr_029_6bce:
    ld a, [wBJDealer]
    ld [wBJTarget], a
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, jr_029_6be5

    call DealBJNear21
    jr jr_029_6bf2

jr_029_6be5:
    call DealBJBelow
    jr jr_029_6bf2

jr_029_6bea:
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    call DealBJRandom

jr_029_6bf2:
    ld a, [wBJNextD]
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a
    cp $00
    jr z, jr_029_6b90

    cp $ff
    jr z, jr_029_6b99

    bit 7, a
    jr nz, jr_029_6c16

    ld a, [wBJNextD]
    inc a
    ld [wBJNextD], a
    cp $06
    jr nz, jr_029_6ba9

jr_029_6c16:
    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr z, jr_029_6c25

    jp nc, BJPlayerLose

    jp BJPlayerWin


jr_029_6c25:
    xor a
