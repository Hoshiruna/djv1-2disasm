
; Stage 64 map-palette bytes in bank $0a, restore the caller bank, then read bank 9.
; Both map/palette offsets use eight-bit A*2; neither path checks the index bound.
ReadUiMap:


Call_000_1b39:
    push af
    call StageUiMapPal
    ld a, UiResourceRomBank
    call PushRomBank
    ld hl, UiMapRefs
    pop af
    sla a
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld c, l
    ld b, h
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    call ReadBgMap
    call PopRomBank
    ret
BgPalBanks:
    db $0a, $0b
BgPalTables:
    dw C1BgPalRefs, C2BgPalRefs
ObjPalBanks:
    db $0a, $0b
ObjPalTables:
    dw C1ObjPalRefs, C2ObjPalRefs

; Read the bank-9 graphics pointer using sixteen-bit A*2, with no index bound check.
; Preserve BC/DE and restore the caller ROM bank after decoding.
ReadUiGfx:

Call_000_1b67:
    push de
    push bc
    push af

Call_000_1b6a:
    ld bc, UiGfxRefs
    ld a, UiResourceRomBank
    call PushRomBank
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call ReadGfx
    call PopRomBank
    pop bc
    pop de
    ret
