
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


jr_001_5f06:
    ld a, [wInputSel]
    cp $08
    jr c, jr_001_5f11

    ld d, $07
    jr jr_001_5f2d

jr_001_5f11:
    ld d, $12
    jr jr_001_5f2d

; Redraw and poll input with the original repeat delay; preserve direction priority and button mode/selection handling.
WaitCursor:

Call_001_5f15:
    ld a, [wInputSel]
    cp $17
    jr z, jr_001_5f06

    cp $15
    jr nc, jr_001_5f42

    ld a, [wJoyHeld]
    bit 6, a
    jr nz, jr_001_5f06

    bit 7, a
    jr nz, jr_001_5f06

    ld d, $0c

jr_001_5f2d:
    call PollJoy
    ld a, [wJoyHeld]
    cp $00
    jr z, jr_001_5f42

    push de
    call DrawCursorObjs
    call SubmitOam
    pop de
    dec d
    jr nz, jr_001_5f2d

jr_001_5f42:
    call DrawCursorObjs
    call SubmitOam
    call PollJoy
    ld a, [wJoyHeld]
    cp $00
    jr z, jr_001_5f42

    and $f0
    jp nz, MoveCursor

    ld a, [wJoyPress]
    cp $00
    jr z, jr_001_5f42

    bit 0, a
    jr nz, jr_001_5f7b

    bit 1, a
    jr nz, jr_001_5f8b

    bit 3, a
    jr nz, jr_001_5f6c

    jr jr_001_5f42

jr_001_5f6c:
    ld a, $16
    ld [wInputSel], a
    ld a, $38
    ld [wInputX], a
    ld [wInputY], a
    ret


    ret


jr_001_5f7b:
    ld a, $19
    call PlayAudio
    ld a, $05
    call WaitTicks
    ld a, $01
    ld [wInputMode], a
    ret


jr_001_5f8b:
    ld a, $02
    ld [wInputMode], a
    ret
