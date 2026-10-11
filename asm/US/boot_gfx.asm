
; Load UI graphics two and three for the title screen.
LoadTitleGfx:


Call_000_09d4:
    ld a, $02
    call ReadUiGfx
    ld a, $03
    call ReadUiGfx
    ret

; Load UI graphics four and five for the boot-screen display.
LoadBootGfx:


Call_000_09df:
    ld a, $04
    call ReadUiGfx
    ld a, $05
    call ReadUiGfx
    ret
