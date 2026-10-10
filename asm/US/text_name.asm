
; Read a two-byte address from the text stream and draw the name ID stored there.
DrawNameIndirect:


Jump_000_11eb:
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
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [wTextValue], a
    jr jr_000_120f

; Read a name ID from the text stream and select its regional name record.
DrawTextName:

Jump_000_1209:
    call ReadTextByte
    ld [wTextValue], a

jr_000_120f:
    ld a, [wTextValue]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc hl
    ld a, [wTextRefs]
    ld c, a
    ld a, [wTextRefs+1]
    ld b, a
    add hl, bc
    ld a, l
    ld [wTextTmp], a

Jump_000_1227:
    ld a, h
    ld [wTextTmp+1], a
    ld a, [wTextRefs+2]
    call PushRomBank
    call EmitTextName
    jp PopRomBank

; Draw the selected name until the regional terminator, retaining the Japan eight-character limit.
EmitTextName:


Call_000_1237:
jr_000_1237:
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a

Call_000_123f:
    ld a, [hl+]
    cp $1f
    ret z

    ld [wTextChar], a
    ld a, l
    ld [wTextTmp], a
    ld a, h
    ld [wTextTmp+1], a
    ld a, [wTextChar]
    call DrawTextGlyph
    jr jr_000_1237
