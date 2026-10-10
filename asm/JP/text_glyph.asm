
; Resolve the regional character glyph and draw at the text or sprite position.
DrawTextGlyph:


Call_000_1414:
    ld a, $7f
    ld [wTextTile], a
    ld a, [wTextChar]
    ld [wTextAux], a
    cp $7f
    jr z, jr_000_1441

    bit 7, a
    jr nz, jr_000_1461

    cp $10
    jr c, jr_000_1461

    swap a
    and $07
    rst RST_00

JpGlyphParts:
    dw $1440
    dw $1448
    dw $1440
    dw $1448
    dw $1448
    dw $1454
    dw $1448
    dw $1454
    ret


jr_000_1441:
    ld a, $7f
    ld [wTextAux], a
    jr jr_000_1461

    ld a, [wTextAux]
    add $80
    ld [wTextAux], a
    ld a, $90
    jr jr_000_145e

    ld a, [wTextAux]
    add $70
    ld [wTextAux], a
    ld a, $a0

jr_000_145e:
    ld [wTextTile], a

jr_000_1461:
    ld a, [wTextMode]
    and $02
    jr nz, jr_000_146b

    jp DrawWindowGlyph


jr_000_146b:
    ld a, [wTextX]
    ld [wTextMapX], a
    ld a, [wTextY]
    dec a
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a
    ld a, $02
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTileRect
    ld a, [wTextX]
    inc a
    ld [wTextX], a
    and $e0
    ret z

    jp TextNewline

; Draw the glyph in the text window, retain its buffer entry, and advance the column.
DrawWindowGlyph:


Jump_000_1498:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_14be

    call PollJoy
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_14be

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2TextObj
    call PopRomBank
    call RefreshObjOam

jr_000_14be:
    ld a, [wTextOriginX]
    inc a
    ld b, a
    ld a, [wTextCol]
    add b
    ld [wTextMapX], a
    ld a, [wTextOriginY]
    inc a
    ld b, a

Jump_000_14cf:
    ld a, [wTextRow]
    add a
    add b
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a
    ld a, $02
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTileRect
    ld a, [wC1Exit]
    cp $ff
    jr z, jr_000_14f8

    ld a, [$c890]
    cp $00
    jr nz, jr_000_1515

jr_000_14f8:
    call SubmitMapQueue
    ld a, $03

jr_000_14fd:
    push af
    push af
    ld a, $03
    call PushRomBank

Jump_000_1504:
    pop af
    call StepC2TextObj
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, jr_000_14fd

jr_000_1515:
    ld a, [wTextRow]
    ld e, a
    ld d, $00
    ld hl, TextRowOffsets
    add hl, de
    ld a, [hl]
    ld b, a
    ld a, [wTextCol]
    add b
    ld e, a
    ld d, $00
    ld a, [wTextTile]
    ld hl, wTextBuf
    add hl, de
    ld [hl], a
    ld a, [wTextCol]
    inc a
    ld [wTextCol], a
    ld b, a
    ld a, [wTextWidth]
    cp b
    ret nz

    ld a, [$c894]
    cp $00
    jr nz, jr_000_1548

    call TextNewline
    ret


jr_000_1548:
    ld a, $11
    ld [wTextCol], a
    ret
