
; Read a two-byte address from the text stream and draw the name ID stored there.
DrawNameIndirect:


Call_000_1214:
Jump_000_1214:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [bc]
    ld [wTextValue], a
    jr jr_000_1242

; Read a name ID from the text stream and select its regional name record.
DrawTextName:

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextValue], a
    ld a, l
    ld [wTextPtr], a
    ld a, h

Call_000_123f:
    ld [wTextPtr+1], a

Jump_000_1242:
jr_000_1242:
    ld a, [wTextValue]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [wTextRefs]
    ld c, a
    ld a, [wTextRefs+1]
    ld b, a
    add hl, bc
    ld a, l

Jump_000_1255:
    ld [wTextTmp], a
    ld a, h

Jump_000_1259:
    ld [wTextTmp+1], a
    ld a, [wTextRefs+2]

Call_000_125f:
    call PushRomBank
    call EmitTextName
    jp PopRomBank


    ret

; Draw the selected name until the regional terminator, retaining the Japan eight-character limit.
EmitTextName:


Call_000_1269:
    ld d, $08

jr_000_126b:
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld [wTextChar], a
    ld a, l
    ld [wTextTmp], a
    ld a, h
    ld [wTextTmp+1], a
    ld a, [hl+]

Jump_000_1283:
    ld [$c661], a
    push de
    call DrawTextGlyph
    pop de

Call_000_128b:
    dec d
    jr nz, jr_000_126b

    ret
