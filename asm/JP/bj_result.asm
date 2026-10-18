
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
    jr z, BJResultReturnBet

    cp $01
    jr z, BJResultPayChips

    ld a, [wBJBet]
    add a
    ld [wBJPayout], a
    ld a, [wBJPlayer]
    cp $ff
    jr nz, BJResultPayChips

    ld a, [wBJPayout]
    add a
    ld [wBJPayout], a
    jr BJResultPayChips

; Set a tie payout equal to the original bet.
BJResultReturnBet:
jr_029_6c9b:
    ld a, [wBJBet]
    ld [wBJPayout], a

; Pass the calculated payout to the chip update routine.
BJResultPayChips:
jr_029_6ca1:
    jp PayBJChips
