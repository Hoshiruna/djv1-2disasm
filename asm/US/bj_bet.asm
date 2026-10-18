
; Adjust the previous bet between one, ten, and the available chips; confirm and deduct it from the saved balance.
ChooseBJBet:


Call_029_6b06:
    ld a, [wChips]
    ld [wBJFunds], a
    xor a
    call ShowBJText
    ld a, [wBJBet]
    ld hl, wChips
    cp [hl]
    jr nc, BJBetDrawAmount

    ld [wChips], a

; Draw the current bet amount in the chip display.
BJBetDrawAmount:
jr_029_6b1c:
    ld a, $00
    ld [wTextX], a
    ld a, $0f
    ld [wTextY], a
    ld a, $1f
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue

; Poll confirmation and increase or decrease presses.
BJBetPollInput:
jr_029_6b31:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    and $f1
    jr z, BJBetPollInput

    bit 0, a
    jr nz, BJBetConfirm

    and $90
    jr z, BJBetDecrease

    ld a, [wChips]
    cp $0a
    jr z, BJBetPollInput

    ld hl, wBJFunds
    cp [hl]
    jr z, BJBetPollInput

    ld a, [wChips]
    inc a
    ld [wChips], a
    jr BJBetDrawAmount

; Lower the proposed bet unless it is already one.
BJBetDecrease:
jr_029_6b5c:
    ld a, [wChips]
    cp $01
    jr z, BJBetPollInput

    ld a, [wChips]
    dec a
    ld [wChips], a
    jr BJBetDrawAmount

; Store and deduct the chosen bet from available chips.
BJBetConfirm:
jr_029_6b6c:
    ld a, $01
    call ShowBJText
    ld a, [wChips]
    ld [wBJBet], a
    ld a, [wBJFunds]
    ld hl, wBJBet
    sub [hl]
    ld [wChips], a
    ld a, $1e
    call WaitTicks
    jp ShowBJChips
