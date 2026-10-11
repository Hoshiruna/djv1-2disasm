
; Write text mode two.
SetTextMode2:

Call_000_1184:
    ld a, $02
    ld [wTextMode], a
    ret

; Write text mode one.
SetTextMode1:


Call_000_118a:
    ld a, $01
    ld [wTextMode], a
    ret

; Set text mode bit seven.
SetTextFlag7:


    ld a, [wTextMode]
    or $80
    ld [wTextMode], a
    ret
