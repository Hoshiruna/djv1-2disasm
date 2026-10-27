
; Load the save-screen low and high tile blocks.
LoadSaveGfx:


Call_000_09ea:
    ld a, UiGfxIdSaveScreenLow

Call_000_09ec:
    call ReadUiGfx
    ld a, UiGfxIdSaveScreenHigh
    call ReadUiGfx
    ret
