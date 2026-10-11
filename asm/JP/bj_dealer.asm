
; Reveal and score the dealer hand, draw according to the original score/mode conditions, then compare the two hands.
PlayBJDealer:


Call_029_6bc1:
    ld a, [wBJPlayer]
    cp $ff
    jr nz, jr_029_6bcd

; Set result two and enter the shared blackjack settlement.
BJPlayerWin:

Jump_029_6bc8:
jr_029_6bc8:
    ld a, $02
    jp PayBJResult


jr_029_6bcd:
    cp $00
    jr nz, jr_029_6bd6

; Set result one and enter the shared blackjack settlement.
BJPlayerLose:

Jump_029_6bd1:
jr_029_6bd1:
    ld a, $01
    jp PayBJResult


jr_029_6bd6:
    xor a
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a

jr_029_6be1:
    ld a, $20
    call WaitTicks
    ld a, [wBJDealer]
    cp $11
    jr nc, jr_029_6c4e

    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr nz, jr_029_6bfd

    ld a, [wBJBias]
    cp $00
    jr nz, jr_029_6c06

jr_029_6bfd:
    jr nc, jr_029_6bd1

    ld a, [wBJBias]
    cp $00
    jr z, jr_029_6c22

jr_029_6c06:
    ld a, [wBJDealer]
    ld [wBJTarget], a
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, jr_029_6c1d

    call DealBJNear21
    jr jr_029_6c2a

jr_029_6c1d:
    call DealBJBelow
    jr jr_029_6c2a

jr_029_6c22:
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    call DealBJRandom

jr_029_6c2a:
    ld a, [wBJNextD]
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a
    cp $00
    jr z, jr_029_6bc8

    cp $ff
    jr z, jr_029_6bd1

    bit 7, a
    jr nz, jr_029_6c4e

    ld a, [wBJNextD]
    inc a
    ld [wBJNextD], a
    cp $06
    jr nz, jr_029_6be1

jr_029_6c4e:
    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr z, jr_029_6c5d

    jp nc, BJPlayerLose

    jp BJPlayerWin


jr_029_6c5d:
    xor a
