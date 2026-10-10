
; Stage the matching map palette, then read the indexed bank-9 background map.
ReadUiMap:


Call_000_1b39:
    push af
    call StageMapPal
    ld a, $09
    call PushRomBank
    ld hl, $401d
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
    dw $43de, $4000
ObjPalBanks:
    db $0a, $0b
ObjPalTables:
    dw $5a0a, $5398

; Read the indexed bank-9 graphics resource; preserve BC/DE and restore the ROM bank.
ReadUiGfx:

Call_000_1b67:
    push de
    push bc
    push af

Call_000_1b6a:
    ld bc, $4613
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
