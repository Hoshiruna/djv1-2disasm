
; Reveal and score the dealer hand, draw according to the original score/mode conditions, then compare the two hands.
PlayBJDealer:


Call_029_6b89:
    ld a, [wBJPlayer]
    cp $ff
    jr nz, BJDealerCheckPlayerZero

; Set result two and enter the shared blackjack settlement.
BJPlayerWin:

Jump_029_6b90:
jr_029_6b90:
    ld a, $02
    jp PayBJResult


; Check the zero player result before revealing the dealer hand.
BJDealerCheckPlayerZero:
jr_029_6b95:
    cp $00
    jr nz, BJDealerReveal

; Set result one and enter the shared blackjack settlement.
BJPlayerLose:

Jump_029_6b99:
jr_029_6b99:
    ld a, $01
    jp PayBJResult


; Reveal the dealer card and score the hand.
BJDealerReveal:
jr_029_6b9e:
    xor a
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a

; Pause and decide whether the dealer should draw again.
BJDealerTurnLoop:
jr_029_6ba9:
    ld a, $20
    call WaitTicks
    ld a, [wBJDealer]
    cp $11
    jr nc, BJDealerCompareFinal

    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr nz, BJDealerCheckLead

    ld a, [wBJBias]
    cp $00
    jr nz, BJDealerDealBiased

; Compare dealer and player totals before another draw.
BJDealerCheckLead:
jr_029_6bc5:
    jr nc, BJPlayerLose

    ld a, [wBJBias]
    cp $00
    jr z, BJDealerDealRandom

; Choose a bias-specific target for the dealer draw.
BJDealerDealBiased:
jr_029_6bce:
    ld a, [wBJDealer]
    ld [wBJTarget], a
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    ld a, [wBJBias]
    cp $01
    jr nz, BJDealerDealBelow

    call DealBJNear21
    jr BJDealerShowNewCard

; Use the below-target dealing path for this bias mode.
BJDealerDealBelow:
jr_029_6be5:
    call DealBJBelow
    jr BJDealerShowNewCard

; Use the unbiased random dealing path.
BJDealerDealRandom:
jr_029_6bea:
    ld a, [wBJNextD]
    ldh [hBJSlot], a
    call DealBJRandom

; Draw and score the newly dealt dealer card.
BJDealerShowNewCard:
jr_029_6bf2:
    ld a, [wBJNextD]
    call ShowBJHandCard
    xor a
    call ScoreBJHand
    ld [wBJDealer], a
    cp $00
    jr z, BJPlayerWin

    cp $ff
    jr z, BJPlayerLose

    bit 7, a
    jr nz, BJDealerCompareFinal

    ld a, [wBJNextD]
    inc a
    ld [wBJNextD], a
    cp $06
    jr nz, BJDealerTurnLoop

; Compare final dealer and player totals.
BJDealerCompareFinal:
jr_029_6c16:
    ld a, [wBJDealer]
    ld hl, wBJPlayer
    cp [hl]
    jr z, BJDealerTie

    jp nc, BJPlayerLose

    jp BJPlayerWin


; Pass result zero into the shared settlement path.
BJDealerTie:
jr_029_6c25:
    xor a
