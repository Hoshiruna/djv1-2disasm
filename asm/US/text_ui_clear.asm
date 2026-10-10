
; Clear UI text cell by cell, retaining the initial column offset and regional row step.
ClearUiText:


Call_001_6e22:
    ld a, $01
    ld [$c5c3], a
    ld [$c5c4], a

jr_001_6e2a:
    ld a, [$c5c4]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9800
    add hl, de
    ld a, [$c5c3]
    ld e, a
    ld d, $00
    add hl, de
    ld c, l
    ld b, h
    ld hl, UiBlankGlyph
    call QueueTileRect
    call SubmitMapQueue
    ld a, [$c5c3]
    inc a
    cp $13
    jr nz, jr_001_6e5e

    ld a, [$c5c4]
    inc a
    cp $11
    ret z

    ld [$c5c4], a
    xor a

jr_001_6e5e:
    ld [$c5c3], a
    jr jr_001_6e2a

; Width, height, blank tile(s).
UiBlankGlyph:
    db $01, $01, $7f
