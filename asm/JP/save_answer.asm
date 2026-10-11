
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

jr_002_7728:
    call DrawSaveAnswer
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr nz, jr_002_7766

    bit 1, a
    jr nz, jr_002_775b

    bit 7, a
    jr nz, jr_002_774f

    bit 6, a
    jr z, jr_002_7728

    ld a, $19
    call PlayAudio
    xor a
    ld [wSaveAnswer], a
    jr jr_002_7728

jr_002_774f:
    ld a, $19
    call PlayAudio
    ld a, $01
    ld [wSaveAnswer], a
    jr jr_002_7728

jr_002_775b:
    ld a, $2f
    call PlayAudio
    ld a, $01
    ld [wSaveAnswer], a
    ret


jr_002_7766:
    ld a, $19
    call PlayAudio
    ret
