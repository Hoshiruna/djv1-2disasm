
; Read the bank-9 graphics/map resources, set BGP/LCDC, then remain in the original self-jump.
ShowMono:

Jump_000_3707:
    ld hl, $7b32
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call ReadGfx
    ld hl, $7a8f

Jump_000_3713:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call ReadBgMap
    ld a, $e4
    ldh [rBGP], a
    ld a, $c1
    ldh [rLCDC], a

Jump_000_3721:
    jp Jump_000_3721
