
; Load extra regional UI graphics: US uses ten/five for boot; JP uses eight/nine.
LoadExtraUiGfx:


Call_000_09f5:
    ld a, UiGfxIdPublisherLogoLow
    call ReadUiGfx
    ld a, UiGfxIdBootTextHigh
    call ReadUiGfx

Call_000_09ff:
    ret
