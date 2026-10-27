
; Load the case font/HUD, then 64 base-object tiles at $8400-$87ff; restore each ROM bank.
LoadBaseGfx:


Call_000_0a0b:
    call LoadFontGfx
    call LoadHudGfx
    ld a, [wCaseId]
    cp $00
    jr nz, BaseGfxCaseII

Call_000_0a18:
    ld a, C1BaseObjGfxRomBank
    call PushRomBank
    ld hl, C1ObjGfxRefs
    jr BaseGfxReadEntry

; Choose the Case II object-graphics bank and table.
BaseGfxCaseII:
jr_000_0a22:
    ld a, C2BaseObjGfxRomBank
    call PushRomBank
    ld hl, C2ObjGfxRefs

; Read the selected object or HUD graphics pointer.
BaseGfxReadEntry:
jr_000_0a2a:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call ReadGfx

Jump_000_0a33:
    jp PopRomBank

; Read font table entry 0 to signed BG tiles $80-$ff ($8800-$8fff), then restore the ROM bank.
LoadFontGfx:


Call_000_0a36:
    ld a, [wCaseId]
    cp $00
    jr nz, FontGfxCaseII

    ld a, C1FontHudRomBank
    call PushRomBank
    ld hl, C1Gfx0Refs
    jr FontGfxReadEntry

; Choose the Case II font-graphics bank and table.
FontGfxCaseII:
jr_000_0a47:
    ld a, C2FontHudRomBank
    call PushRomBank
    ld hl, C2Gfx0Refs

; Read the selected font-graphics pointer.
FontGfxReadEntry:
jr_000_0a4f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call ReadGfx
    jp PopRomBank

; Read font/HUD table entry 1; Case I leaves signed BG tiles $00-$0f untouched.
LoadHudGfx:


Call_000_0a5b:
    ld a, [wCaseId]
    cp $00
    jr nz, HudGfxCaseII

    ld a, C1FontHudRomBank
    call PushRomBank
    ld hl, C1Gfx0Refs+2
    jr BaseGfxReadEntry

; Choose the Case II HUD graphics bank and table.
HudGfxCaseII:
jr_000_0a6c:
    ld a, C2FontHudRomBank
    call PushRomBank
    ld hl, C2Gfx0Refs+2
    jr BaseGfxReadEntry
