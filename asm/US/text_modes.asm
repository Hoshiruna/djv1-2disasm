
; Write text mode two.
SetTextMode2:


Call_000_11df:
    ld a, $02
    ld [wTextMode], a
    ret

; Write text mode one.
SetTextMode1:


Call_000_11e5:
    ld a, $01
    ld [wTextMode], a
    ret
