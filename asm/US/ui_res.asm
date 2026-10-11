
; Stage the matching map palette, then read the indexed bank-9 background map.
ReadUiMap:


Call_000_19e9:
    push af
    call StageMapPal
    ld a, $09
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

Call_000_19ff:
Jump_000_19ff:
    ld l, a

Jump_000_1a00:
    inc bc

Jump_000_1a01:
    ld a, [bc]

Jump_000_1a02:
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

; Read the indexed bank-9 graphics resource; preserve BC/DE and restore the ROM bank.
ReadUiGfx:

Call_000_1a17:
    push de
    push bc

Jump_000_1a19:
    push af
    ld bc, UiGfxRefs
    ld a, $09
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
