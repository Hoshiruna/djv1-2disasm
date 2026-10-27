
; Load the title low and high tile blocks.
LoadTitleGfx:


Call_000_09d4:
    ld a, UiGfxIdTitleLow
    call ReadUiGfx
    ld a, UiGfxIdTitleHigh
    call ReadUiGfx
    ret

; Load the developer-logo low tiles and shared boot text high tiles.
LoadBootGfx:


Call_000_09df:
    ld a, UiGfxIdDeveloperLogoLow
    call ReadUiGfx
    ld a, UiGfxIdBootTextHigh
    call ReadUiGfx
    ret
