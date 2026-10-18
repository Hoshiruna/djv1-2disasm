
; Convert the remaining card count into two decimal tiles and submit the rectangle at $9811.
ShowBJLeft:


Call_029_7014:
Jump_029_7014:
    ld a, [wBJLeft]
    call SplitBJDigits
    ld a, $02
    ld [wBJRect], a
    ld a, $01
    ld [wBJRect+1], a
    ld a, [wBJDigits]
    cp $00
    jr nz, BJLeftNonzeroTens

    ld a, $7f
    jr BJLeftWriteDigits

; Set the visible tens digit when it is nonzero.
BJLeftNonzeroTens:
jr_029_702f:
    or $80

; Write the remaining-card digits to the map queue.
BJLeftWriteDigits:
jr_029_7031:
    ld [wBJDigits], a
    ld a, [wBJDigits+1]
    or $80
    ld [wBJDigits+1], a
    ld l, $55
    ld h, $c8
    ld bc, $9811
    call QueueTileRect
    call SubmitMapQueue
    ret

; Split A into a byte tens count and a remainder by repeated subtraction of ten.
SplitBJDigits:


Call_029_704a:
    ld [wBJDigits+1], a
    xor a
    ld [wBJDigits], a

; Subtract tens until the remainder is below ten.
BJSplitDigitsLoop:
jr_029_7051:
    ld a, [wBJDigits+1]
    cp $0a
    jr c, BJSplitDigitsDone

    ld a, [wBJDigits+1]
    sub $0a
    ld [wBJDigits+1], a
    ld a, [wBJDigits]
    inc a
    ld [wBJDigits], a
    jr BJSplitDigitsLoop

; Return the decimal tens and remainder.
BJSplitDigitsDone:
jr_029_7069:
    ret

; Add the pending chips one at a time with redraw and cue $23; stop when the byte reaches $ff.
PayBJChips:


Jump_029_706a:
    ld a, [wBJPayout]
    cp $00
    jr z, BJPayNothing

; Add and display one chip from the pending payout.
BJPayNextChip:
jr_029_7071:
    ld a, [wChips]
    inc a
    ld [wChips], a
    call ShowBJChips
    ld a, $23
    call PlayAudio
    ld a, $08
    call WaitTicks
    ld a, [wChips]
    cp $ff
    jr z, BJPayDelay

    ld a, [wBJPayout]
    dec a
    ld [wBJPayout], a
    jr nz, BJPayNextChip

; Wait after the payout reaches zero or chips reach $ff.
BJPayDelay:
jr_029_7095:
    ld a, $28
    call WaitTicks
    ret


; Display the chip total when the payout is zero.
BJPayNothing:
jr_029_709b:
    call ShowBJChips
    ld a, $3c
    call WaitTicks
    ret

; Display the chip list text at its original regional coordinates and submit the map queue.
ShowBJChips:


Call_029_70a4:
Jump_029_70a4:
    ld a, $0b
    ld [wTextX], a
    ld a, $0c
    ld [wTextY], a
    ld a, $04
    ld [wListName], a
    ld a, $06
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ret

; Fade out, load the blackjack table and its text/count, conditionally show chips, and fade in.
LoadBJTable:


Call_029_70bf:
    call FadeOut
    call LoadBJMap
    ld a, $10
    call ShowBJText
    ld a, $11
    call ShowBJText
    call ShowBJLeft
    ld a, [wChips]
    cp $00
    jr z, BJTableFadeIn

    ld a, [wBJLeft]
    cp $10
    jr c, BJTableFadeIn

    call ShowBJChips

; Fade in the prepared blackjack table.
BJTableFadeIn:
jr_029_70e3:
    call FadeIn
    ret

; Display list text A plus twelve at the indexed coordinates while preserving BC and DE.
ShowBJText:


Call_029_70e7:
    push de
    push bc
    push af
    add $0c
    ld [wListMark], a
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, BJTextCoords
    add hl, bc
    ld a, [hl+]
    ld [wTextX], a
    ld a, [hl]
    ld [wTextY], a
    call ShowListText
    call SubmitMapQueue
    pop bc
    pop de
    ret

; Read the destination for the hand slot and the rectangle for the card, skip its prefix, and submit it.
DrawBJCard:


Call_029_7109:
    ld a, [wBJSlot]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, BJCardDests
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [wBJCard]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, BJCardPtrs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    call QueueMapRect
    call SubmitMapQueue
    ret
