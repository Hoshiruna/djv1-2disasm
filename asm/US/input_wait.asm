
; Reset the input mode, copy cursor coordinates to the candidate position, then wait for cursor input.
PollCursor:
    xor a
    ld [wInputMode], a
    ld a, [wCursorX]
    ld [wInputX], a
    ld a, [wCursorY]
    ld [wInputY], a
    call WaitCursor
    ret


; Use the selection index to choose the directional repeat delay.
WaitCursorSetDirectionalDelay:
jr_001_5f06:
    ld a, [wInputSel]
    cp $08
    jr c, WaitCursorSetLongDelay

    ld d, $07
    jr WaitCursorPollRepeat

; Use the longer repeat delay for selection indices below eight.
WaitCursorSetLongDelay:
jr_001_5f11:
    ld d, $12
    jr WaitCursorPollRepeat

; Redraw and poll input with the original repeat delay; preserve direction priority and button mode/selection handling.
WaitCursor:

Call_001_5f15:
    ld a, [wInputSel]
    cp $17
    jr z, WaitCursorSetDirectionalDelay

    cp $15
    jr nc, WaitCursorPollButtons

    ld a, [wJoyHeld]
    bit 6, a
    jr nz, WaitCursorSetDirectionalDelay

    bit 7, a
    jr nz, WaitCursorSetDirectionalDelay

    ld d, $0c

; Poll held input while the repeat delay counts down.
WaitCursorPollRepeat:
jr_001_5f2d:
    call PollJoy
    ld a, [wJoyHeld]
    cp $00
    jr z, WaitCursorPollButtons

    push de
    call DrawCursorObjs
    call SubmitOam
    pop de
    dec d
    jr nz, WaitCursorPollRepeat

; Keep drawing the cursor until held or newly pressed input arrives.
WaitCursorPollButtons:
jr_001_5f42:
    call DrawCursorObjs
    call SubmitOam
    call PollJoy
    ld a, [wJoyHeld]
    cp $00
    jr z, WaitCursorPollButtons

    and $f0
    jp nz, MoveCursor

    ld a, [wJoyPress]
    cp $00
    jr z, WaitCursorPollButtons

    bit 0, a
    jr nz, WaitCursorPressA

    bit 1, a
    jr nz, WaitCursorPressB

    bit 3, a
    jr nz, WaitCursorSetSpecialSelection

    jr WaitCursorPollButtons

; Set selection 16 and center the candidate position.
WaitCursorSetSpecialSelection:
jr_001_5f6c:
    ld a, $16
    ld [wInputSel], a
    ld a, $38
    ld [wInputX], a
    ld [wInputY], a
    ret


    ret


; Play the select sound and return input mode one.
WaitCursorPressA:
jr_001_5f7b:
    ld a, $19
    call PlayAudio
    ld a, $05
    call WaitTicks
    ld a, $01
    ld [wInputMode], a
    ret


; Return input mode two.
WaitCursorPressB:
jr_001_5f8b:
    ld a, $02
    ld [wInputMode], a
    ret
