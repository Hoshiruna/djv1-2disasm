
; Load extra regional UI graphics: US uses ten/five for boot; JP uses eight/nine.
LoadExtraUiGfx:


Call_000_09f5:
    ld a, $0a
    call ReadUiGfx
    ld a, $05
    call ReadUiGfx

Call_000_09ff:
    ret
