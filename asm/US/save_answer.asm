
; Select answer cursor coordinates from row times four plus answer times two; preserve BC and HL for the shared draw tail.
DrawSaveAnswer:


Call_002_76fb:
    push bc
    push hl
    ld a, [wSaveMenuRow]
    add a
    add a
    ld c, a
    ld a, [wSaveAnswer]
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, SaveAnswerPos
    add hl, bc
    ld a, [hl+]
    ldh [hSpriteX], a
    ld a, [hl]
    ldh [hSpriteY], a
    jp DrawSaveCursor

SaveAnswerPos:
    db $34, $68, $34, $70, $20, $60, $20, $70, $34, $80, $34, $88

; Select answer zero/one with direction input, confirm the current answer, or cancel as answer one.
ChooseSaveAnswer:

Call_002_7724:
Jump_002_7724:
    xor a
    ld [wSaveAnswer], a

; Draw the answer cursor and poll for confirmation or movement.
SaveAnswerInputLoop:
jr_002_7728:
    call DrawSaveAnswer
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr nz, SaveAnswerConfirm

    bit 1, a
    jr nz, SaveAnswerCancel

    bit 7, a
    jr nz, SaveAnswerMoveDown

    bit 6, a
    jr z, SaveAnswerInputLoop

    ld a, $19
    call PlayAudio
    xor a
    ld [wSaveAnswer], a
    jr SaveAnswerInputLoop

; Set answer one after a downward press.
SaveAnswerMoveDown:
jr_002_774f:
    ld a, $19
    call PlayAudio
    ld a, $01
    ld [wSaveAnswer], a
    jr SaveAnswerInputLoop

; Return answer one after a cancel press.
SaveAnswerCancel:
jr_002_775b:
    ld a, $2f
    call PlayAudio
    ld a, $01
    ld [wSaveAnswer], a
    ret


; Return the current answer after a confirm press.
SaveAnswerConfirm:
jr_002_7766:
    ld a, $19
    call PlayAudio
    ret
