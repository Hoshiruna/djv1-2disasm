
; Read an indirect eight-bit value, split it into decimal digits, and draw it.
DrawTextNum8:

Jump_000_1256:
    call ReadTextValue8

Jump_000_1259:
    call SplitTextNumber
    ld a, [wTextNum100]

Call_000_125f:
    call DrawTextDigit
    ld a, [wTextNum10]
    call DrawTextDigit
    ld a, [wTextNum1]
    call EmitTextDigit
    ret

; Read an indirect sixteen-bit value and draw up to five decimal digits.
DrawTextNum16:


Jump_000_126f:
    call ReadTextValue16
    call SplitTextNum16
    ld a, [wTextNum10000]
    call DrawTextDigit
    ld a, [wTextNum1000]
    call DrawTextDigit
    ld a, [wTextNum100]
    call DrawTextDigit
    ld a, [wTextNum10]
    call DrawTextDigit
    ld a, [wTextNum1]
    call EmitTextDigit
    ret

; Subtract the original decimal place values into the digit buffer and retain the units remainder.
SplitTextNum16:


Call_000_1294:
    ld de, $0000

jr_000_1297:
    ld c, e
    ld b, d
    sla c

jr_000_129b:
    ld a, [wTextValue]
    ld [wTextTmp], a
    ld hl, TextDecPlaces
    add hl, bc
    sub [hl]
    ld [wTextValue], a
    ld a, [wTextValue+1]
    ld [wTextTmp+1], a
    inc hl
    sbc [hl]
    ld [wTextValue+1], a
    jr c, jr_000_12c0

    ld hl, wTextNum10000
    add hl, de
    ld a, [hl]
    add $01
    ld [hl], a
    jr jr_000_129b

jr_000_12c0:
    ld a, [wTextTmp]
    ld [wTextValue], a
    ld a, [wTextTmp+1]
    ld [wTextValue+1], a
    inc de
    ld a, $04
    cp e
    jr nz, jr_000_1297

    ld a, [wTextValue]
    ld [wTextNum1], a
    xor a
    ld [wTextNumShown], a
    ret

; Decimal places 10000, 1000, 100, 10, 1.
TextDecPlaces:
    dw $2710, $03e8, $0064, $000a, $0001

; Read an address from the text stream, advance two bytes, and load its sixteen-bit value.
ReadTextValue16:

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextTmp], a
    ld a, [hl]
    ld [wTextTmp+1], a

Call_000_12f7:
    call AdvanceText2
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a
    ld a, [hl+]

Call_000_1303:
    ld [wTextValue], a
    ld a, [hl]
    ld [wTextValue+1], a
    ld hl, wTextNum10000
    xor a
    ld c, $05

Jump_000_1310:
jr_000_1310:
    ld [hl+], a
    dec c
    jr nz, jr_000_1310

    ret
