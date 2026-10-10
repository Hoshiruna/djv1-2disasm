
; Resolve the regional character glyph and draw at the text or sprite position.
DrawTextGlyph:


Call_000_1461:
Jump_000_1461:
    ld a, [wTextChar]
    cp $d0
    jr nc, jr_000_1470

    ld e, a
    ld d, $00
    ld hl, TextGlyphMap
    add hl, de
    ld a, [hl]

jr_000_1470:
    ld [wTextTile], a
    ld a, [wTextMode]
    and $02
    jp z, DrawWindowGlyph

    ld a, [wTextX]
    ld [wTextMapX], a
    ld a, [wTextY]
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTextGlyph
    ld a, [wTextX]
    inc a
    ld [wTextX], a
    and $e0
    ret z

    jp TextNewline

TextGlyphMap:
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
Call_000_14b0:
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $7f
    db $7f, $7f, $7f, $7f, $7f, $a1, $a4, $a5, $cb, $cc, $cd, $d5, $8a, $8b, $ce, $cf
    db $7f, $fe, $a3, $7f, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $7f
    db $7f, $7f, $7f, $7f, $7f, $d1, $d3, $d4, $d6, $d0, $d2, $d8, $d9, $da, $d7, $7f
    db $7f, $7f, $7f, $7f, $7f

; Queue the glyph tiles, or tiles and attribute six/seven according to text mode bits six/seven.
QueueTextGlyph:

Call_000_14f5:
    ld a, [wTextMode]
    bit 6, a
    jr nz, jr_000_1500

    call QueueTileRect
    ret


jr_000_1500:
    ld a, [wTextMode]
    bit 7, a
    jr z, jr_000_150b

    ld a, $06
    jr jr_000_150d

jr_000_150b:
    ld a, $07

jr_000_150d:
    ld [wTextAux], a
    call QueueMapRect
    ret

; Draw the glyph in the text window, retain its buffer entry, and advance the column.
DrawWindowGlyph:


Jump_000_1514:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_153a

    call PollJoy
    ld a, [$c188]
    bit 0, a
    jr z, jr_000_153a

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2TextObj
    call PopRomBank
    call RefreshObjOam

jr_000_153a:
    ld a, [wTextOriginX]
    inc a

Jump_000_153e:
    ld b, a
    ld a, [wTextCol]
    add b
    ld [wTextMapX], a
    ld a, [wTextOriginY]
    inc a
    ld b, a
    ld a, [wTextRow]
    add b
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a

Jump_000_155a:
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTextGlyph
    ld a, [wC1Exit]
    cp $ff
    jr z, jr_000_1571

    ld a, [$c890]
    cp $00
    jr nz, jr_000_158e

jr_000_1571:
    call SubmitMapQueue
    ld a, $03

jr_000_1576:
    push af
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2TextObj
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, jr_000_1576

jr_000_158e:
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
    jr nz, jr_000_15c1

    call TextNewline
    ret


jr_000_15c1:
    ld a, $11
    ld [wTextCol], a
    ret
