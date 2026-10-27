
; Load the auxiliary low/high tiles used by the audio test and credits.
LoadAuxGfx:

; Load extra regional UI graphics: US uses ten/five for boot; JP uses eight/nine.
LoadExtraUiGfx:


Call_000_09f5:
    ld a, UiGfxIdAuxLow
    call ReadUiGfx
    ld a, UiGfxIdAuxHigh
    call ReadUiGfx

Call_000_09ff:
    ret
