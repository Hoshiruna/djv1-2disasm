
; Suppress leading zeroes until a digit has been emitted.
DrawTextDigit:


Call_000_136b:
    ld [wTextChar], a
    cp $00
    jr nz, jr_000_1378

    ld a, [wTextNumShown]
    cp $00
    ret z

jr_000_1378:
    ld a, [wTextChar]

; Apply the regional digit glyph bits, mark the number started, and draw the glyph.
EmitTextDigit:

Call_000_137b:
    or $80
    ld [wTextChar], a
    ld a, $ff
    ld [wTextNumShown], a
    call DrawTextGlyph
    ret

; Split the eight-bit text value into hundreds, tens, and units; clear the digit-start flag.
SplitTextNumber:


Call_000_1389:
    ld a, [wTextValue]
    ld e, a
    ld b, $64
    call DivTextDigit
    ld [wTextNum100], a
    ld b, $0a
    call DivTextDigit
    ld [wTextNum10], a
    ld a, e
    ld [wTextNum1], a
    ld a, $00
    ld [wTextNumShown], a
    ret

; Repeatedly subtract B from E, returning the quotient in A and remainder in E.
DivTextDigit:


Call_000_13a7:
    ld d, $00

jr_000_13a9:
    ld a, e
    sub b
    jr c, jr_000_13b1

    inc d
    ld e, a
    jr jr_000_13a9

jr_000_13b1:
    ld a, d
    ret
