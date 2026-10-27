
; Read the bank-9 graphics/map resources, set BGP/LCDC, then remain in the original self-jump.
ShowMono:

Jump_000_3707:
    ld hl, MonoGfxRef
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call ReadGfx
    ld hl, MonoMapRef

Jump_000_3713:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call ReadBgMap
    ld a, MonoFallbackBgPalette
    ldh [rBGP], a
    ld a, MonoFallbackLcdControl
    ldh [rLCDC], a

; Remain on the monochrome screen.
MonoSpin:
Jump_000_3721:
    jp MonoSpin
