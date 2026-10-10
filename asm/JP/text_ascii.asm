
; Read single-row text codes until $5f, then wait for A release.
ReadAsciiText:


Call_000_16c1:
jr_000_16c1:
    call ReadTextByte
    ld [wTextChar], a
    cp $5f
    jp z, WaitTextRelease

    call DispatchAscii
    jr jr_000_16c1

; Handle single-row text line, position, map, and mode-bit controls.
DispatchAscii:

Call_000_16d1:
    cp $1d

Jump_000_16d3:
    jp z, AsciiNewline

    cp $50
    jp z, SetTextX

    cp $51
    jp z, SetTextY

    cp $52
    jp z, TextUseMap0

    cp $53
    jp z, TextUseMap1

    cp $55
    jp z, SetAsciiFlag7

    jp DrawAsciiGlyph

; Set text mode bit seven for the single-row text path.
SetAsciiFlag7:


Jump_000_16f2:
    ld a, [wTextMode]
    or $80
    ld [wTextMode], a
    ret

; Use the single-row glyph mapping and draw at the current text position.
DrawAsciiGlyph:


Jump_000_16fb:
    ld a, [wTextChar]
    cp $d0

Jump_000_1700:
    jr nc, jr_000_170a

    ld e, a
    ld d, $00
    ld hl, AsciiGlyphMap
    add hl, de
    ld a, [hl]

jr_000_170a:
    ld [wTextTile], a
    ld a, [wTextMode]
    and $02
    jp z, DrawAsciiWindow

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

    jp AsciiNewline

AsciiGlyphMap:
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
Jump_000_1748:
    db $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1
Jump_000_1750:
    db $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $7f, $7f, $7f, $7f, $7f, $7f, $a1
    db $a4, $a5, $cb, $cc, $cd, $d5, $8a, $8b, $ce, $cf, $7f, $fe, $a3, $7f
Call_000_176e:
    db $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $7f, $7f, $7f, $7f, $7f
    db $7f, $d1, $d3, $d4, $d6, $d0, $d2, $d8, $d9, $da, $d7, $7f, $7f, $7f, $7f, $7f
Jump_000_178e:
    db $7f

; Queue the glyph tiles, or tiles and attribute six/seven according to text mode bits six/seven.
QueueTextGlyph:

Call_000_178f:
    ld a, [wTextMode]
    bit 6, a
    jr nz, jr_000_179a

    call QueueTileRect
    ret


jr_000_179a:
    ld a, [wTextMode]
    bit 7, a
    jr z, jr_000_17a5

    ld a, $06
    jr jr_000_17a7

jr_000_17a5:
    ld a, $07

jr_000_17a7:
    ld [wTextAux], a
    call QueueMapRect
    ret

; Draw one glyph tile in the text window, record it in the buffer, and advance the column.
DrawAsciiWindow:


Jump_000_17ae:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_17d4

    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr z, jr_000_17d4

    ld a, $ff
    ld [$c890], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2TextObj

Call_000_17ce:
    call PopRomBank
    call RefreshObjOam

jr_000_17d4:
    ld a, [wTextOriginX]
    inc a
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
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTextGlyph
    ld a, [$c5df]
    cp $ff
    jr z, jr_000_180b

Call_000_1804:
    ld a, [$c890]
    cp $00
    jr nz, jr_000_1828

jr_000_180b:
    call SubmitMapQueue
    ld a, $03

jr_000_1810:
    push af
    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_1818:
    call StepC2TextObj
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, jr_000_1810

jr_000_1828:
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

Call_000_183b:
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

Jump_000_1850:
    ld a, [$c894]
    cp $00
    jr nz, jr_000_185b

    call AsciiNewline
    ret


jr_000_185b:
    ld a, $11
    ld [wTextCol], a
    ret

; Advance one tile row, or enter the shared sprite newline continuation.
AsciiNewline:


Call_000_1861:
Jump_000_1861:
    ld a, [wTextMode]
    and $02
    jp nz, Jump_000_1573

    ld a, [wTextRow]
    inc a
    ld [wTextRow], a
    ld b, a
    ld a, [wTextHeight]
    cp b
    jr nz, jr_000_1881

    call Call_000_158e
    ld a, [wTextRow]
    dec a
    ld [wTextRow], a

Jump_000_1881:
jr_000_1881:
    xor a
    ld [wTextCol], a
    ret
