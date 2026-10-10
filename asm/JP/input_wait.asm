
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


jr_001_5f8d:
    ld a, [wInputSel]
    cp $08
    jr c, jr_001_5f98

    ld d, $07
    jr jr_001_5fb4

jr_001_5f98:
    ld d, $12
    jr jr_001_5fb4

; Redraw and poll input with the original repeat delay; preserve direction priority and button mode/selection handling.
WaitCursor:

Call_001_5f9c:
    ld a, [wInputSel]
    cp $17
    jr z, jr_001_5f8d

    cp $15
    jr nc, jr_001_5fc9

    ld a, [wJoyHeld]
    bit 6, a
    jr nz, jr_001_5f8d

    bit 7, a
    jr nz, jr_001_5f8d

    ld d, $0c

jr_001_5fb4:
    call PollJoy
    ld a, [wJoyHeld]
    cp $00
    jr z, jr_001_5fc9

    push de
    call DrawCursorObjs
    call SubmitOam
    pop de
    dec d
    jr nz, jr_001_5fb4

jr_001_5fc9:
    call DrawCursorObjs
    call SubmitOam
    call PollJoy
    ld a, [wJoyHeld]
    cp $00
    jr z, jr_001_5fc9

    and $f0
    jp nz, MoveCursor

    ld a, [wJoyPress]
    cp $00
    jr z, jr_001_5fc9

    bit 0, a
    jr nz, jr_001_6002

    bit 1, a
    jr nz, jr_001_6012

    bit 3, a
    jr nz, jr_001_5ff3

    jr jr_001_5fc9

jr_001_5ff3:
    ld a, $16
    ld [wInputSel], a
    ld a, $38
    ld [wInputX], a
    ld [wInputY], a
    ret


    ret


jr_001_6002:
    ld a, $19
    call PlayAudio
    ld a, $05
    call WaitTicks
    ld a, $01
    ld [wInputMode], a
    ret


jr_001_6012:
    ld a, $02
    ld [wInputMode], a
    ret
