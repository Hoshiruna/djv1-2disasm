
; Suppress leading zeroes until a digit has been emitted.
DrawTextDigit:


Call_000_133d:
    ld [wTextChar], a
    cp $00
    jr nz, jr_000_134a

    ld a, [wTextNumShown]
    cp $00
    ret z

jr_000_134a:
    ld a, [wTextChar]

; Apply the regional digit glyph bits, mark the number started, and draw the glyph.
EmitTextDigit:

Call_000_134d:
    or $30
    ld [wTextChar], a
    ld a, $ff
    ld [wTextNumShown], a
    call DrawTextGlyph
    ret

; Split the eight-bit text value into hundreds, tens, and units; clear the digit-start flag.
SplitTextNumber:


Call_000_135b:
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


Call_000_1379:
    ld d, $00

jr_000_137b:
    ld a, e
    sub b
    jr c, jr_000_1383

    inc d
    ld e, a

Call_000_1381:
    jr jr_000_137b

jr_000_1383:
    ld a, d
    ret
