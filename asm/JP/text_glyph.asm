
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
    dw JpGlyphPlain
    dw JpGlyphTop90
    dw JpGlyphPlain
    dw JpGlyphTop90
    dw JpGlyphTop90
    dw JpGlyphTopA0
    dw JpGlyphTop90
    dw JpGlyphTopA0

; Keep the blank upper tile and unchanged lower tile.
JpGlyphPlain:
    ret


jr_000_1441:
    ld a, $7f
    ld [wTextAux], a
    jr jr_000_1461

; Add $80 to the lower tile and select upper tile $90.
JpGlyphTop90:

    ld a, [wTextAux]
    add $80
    ld [wTextAux], a
    ld a, $90
    jr jr_000_145e

; Add $70 to the lower tile and select upper tile $a0.
JpGlyphTopA0:

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
    ld a, [wTextFast]
    cp $00
    jr nz, WindowGlyphPosition

    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr z, WindowGlyphPosition

    ld a, $ff
    ld [wTextFast], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2WarText
    call PopRomBank
    call RefreshObjOam

; Compute the window-map coordinates for the current glyph.
WindowGlyphPosition:
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
    jr z, WindowGlyphSubmit

    ld a, [wTextFast]
    cp $00
    jr nz, WindowGlyphStoreBuffer

; Submit the glyph map update before the short display delay.
WindowGlyphSubmit:
jr_000_14f8:
    call SubmitMapQueue
    ld a, $03

; Update room objects during the short glyph delay.
WindowGlyphDelayFrame:
jr_000_14fd:
    push af
    push af
    ld a, $03
    call PushRomBank

Jump_000_1504:
    pop af
    call StepC2WarText
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, WindowGlyphDelayFrame

; Store the glyph in the text buffer and advance the column.
WindowGlyphStoreBuffer:
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

    ld a, [wTextNoWrap]
    cp $00
    jr nz, WindowGlyphNoWrap

    call TextNewline
    ret


; Keep the column at the no-wrap position.
WindowGlyphNoWrap:
jr_000_1548:
    ld a, $11
    ld [wTextCol], a
    ret
