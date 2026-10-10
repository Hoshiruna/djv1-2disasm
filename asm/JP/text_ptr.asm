
; Advance the text pointer by two bytes with carry.
AdvanceText2:


Call_000_11fc:
    ld a, [wTextPtr]
    add $02
    jr jr_000_1208

; Advance the text pointer by one byte with carry.
AdvanceText1:

Call_000_1203:
    ld a, [wTextPtr]
    add $01

jr_000_1208:
    ld [wTextPtr], a
    ld a, [wTextPtr+1]
    adc $00
    ld [wTextPtr+1], a
    ret
