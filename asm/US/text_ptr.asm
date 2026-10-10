
; Advance the text pointer by two bytes with carry.
AdvanceText2:


Call_000_13e8:
    ld a, [wTextPtr]
    add $02
    jr jr_000_13f4

; Advance the text pointer by one byte with carry.
AdvanceText1:

Call_000_13ef:
    ld a, [wTextPtr]
    add $01

jr_000_13f4:
    ld [wTextPtr], a
    ld a, [wTextPtr+1]
    adc $00

Jump_000_13fc:
    ld [wTextPtr+1], a
    ret
