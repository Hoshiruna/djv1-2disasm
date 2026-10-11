
; Run betting, player/dealer hands, and replay input; reset the deck when fewer than sixteen cards remain and stop on the original exit conditions.
PlayBJRounds:


Call_029_6986:
    xor a
    ld [wBJExit], a
    ld a, $0a
    ld [wBJBet], a

jr_029_698f:
    call ResetBJDeck

; Check chips and remaining cards before preparing the next blackjack hand.
BJRoundCheck:

Jump_029_6992:
    ld a, [wChips]
    cp $00
    jr nz, jr_029_69a6

    ld a, $0f
    call ShowBJText
    ld a, $8c
    call WaitTicks
    jp BJRoundExit


jr_029_69a6:
    call SetBJBias
    ld a, [wBJLeft]
    cp $10
    jr nc, jr_029_69c4

    ld a, $0d
    call ShowBJText
    ld a, $27
    call PlayAudio
    ld a, $8c
    call WaitTicks
    call ShowBJPause
    jr jr_029_698f

jr_029_69c4:
    call ShowBJChips
    call ClearBJHands
    call DealBJFirst4
    ld a, $07
    call ShowBJHandCard
    call ChooseBJBet
    ld a, $01
    call ShowBJHandCard
    ld a, $06
    call ShowBJHandCard
    call ShowBJPause
    call PlayBJPlayer
    ld a, $3c
    call WaitTicks
    call ShowBJPause
    call PlayBJDealer
    call ShowBJPause
    ld a, [wBJExit]
    cp $ff
    ret z

    ld a, $15
    call ShowBJText
    call ShowBJChips
    ld a, $03
    call ShowBJText
    ld a, $00
    ld [wBJChoice], a
    ld a, $10
    ld [wBJResult], a
    call ChooseBJAction
    call SubmitOam
    ld a, [wBJChoice]
    cp $00
    jr nz, jr_029_6a23

    call LoadBJTable
    jp BJRoundCheck


jr_029_6a23:
    call SubmitOam
    call ShowBJPause
    ld a, $04
    call ShowBJText
    ld a, $3c
    call WaitTicks

; Return from the blackjack round loop.
BJRoundExit:

Jump_029_6a33:
    ret
