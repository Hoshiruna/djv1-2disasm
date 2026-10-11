
; Show the result and cue, then pay one bet on a tie, zero on a loss, or two bets on a win; player blackjack doubles the win payout again.
PayBJResult:

Jump_029_6c5e:
    ld [wBJResult], a
    add $0a
    call ShowBJText
    ld a, [wBJResult]
    and $02
    add $24
    call PlayAudio
    ld a, $20
    call WaitTicks
    xor a
    ld [wBJPayout], a
    ld a, [wBJResult]
    cp $00
    jr z, jr_029_6c9b

    cp $01
    jr z, jr_029_6ca1

    ld a, [wBJBet]
    add a
    ld [wBJPayout], a
    ld a, [wBJPlayer]
    cp $ff
    jr nz, jr_029_6ca1

    ld a, [wBJPayout]
    add a
    ld [wBJPayout], a
    jr jr_029_6ca1

jr_029_6c9b:
    ld a, [wBJBet]
    ld [wBJPayout], a

jr_029_6ca1:
    jp PayBJChips
