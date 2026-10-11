
; Load UI graphics eight and nine for the audio-test and ending displays.
LoadAuxGfx:

; Load extra regional UI graphics: US uses ten/five for boot; JP uses eight/nine.
LoadExtraUiGfx:


Call_000_09f5:
    ld a, $08
    call ReadUiGfx
    ld a, $09
    call ReadUiGfx

Call_000_09ff:
    ret
