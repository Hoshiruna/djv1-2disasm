
; Load UI graphics zero and one in sequence.
LoadSaveGfx:


Call_000_09ea:
    ld a, $00

Call_000_09ec:
    call ReadUiGfx
    ld a, $01
    call ReadUiGfx
    ret
