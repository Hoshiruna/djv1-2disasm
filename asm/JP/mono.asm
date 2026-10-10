
; Read the bank-9 graphics/map resources, set BGP/LCDC, then remain in the original self-jump.
ShowMono:
    ld hl, $761d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call ReadGfx
    ld hl, $7562
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_009_400f:
    call ReadBgMap
    ld a, $e4
    ldh [rBGP], a
    ld a, $c1
    ldh [rLCDC], a

Jump_009_401a:
    jp Jump_009_401a
