
; Load the case font and HUD, then entry 0 from Case I bank $3f or Case II bank $32.
LoadBaseGfx:


Call_000_0a00:
Jump_000_0a00:
    call LoadFontGfx
    call LoadHudGfx
    ld a, [wCaseId]
    cp $00
    jr nz, BaseGfxCaseII

    ld a, $3f
    call PushRomBank
    ld hl, C1ObjGfxRefs
    jr BaseGfxReadEntry

; Choose the Case II object-graphics bank and table.
BaseGfxCaseII:
jr_000_0a17:
    ld a, $32
    call PushRomBank
    ld hl, C2ObjGfxRefs

; Read the selected object or HUD graphics pointer.
BaseGfxReadEntry:
jr_000_0a1f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call ReadGfx
    jp PopRomBank

; Read entry 0 of Case I bank $33 or Case II bank $2a and restore the ROM bank.
LoadFontGfx:


Call_000_0a2b:
    ld a, [wCaseId]
    cp $00
    jr nz, FontGfxCaseII

    ld a, $33
    call PushRomBank
    ld hl, C1Gfx0Refs
    jr FontGfxReadEntry

; Choose the Case II font-graphics bank and table.
FontGfxCaseII:
jr_000_0a3c:
    ld a, $2a
    call PushRomBank
    ld hl, C2Gfx0Refs

Jump_000_0a44:
; Read the selected font-graphics pointer.
FontGfxReadEntry:
jr_000_0a44:
    ld a, [hl+]

Jump_000_0a45:
    ld c, a

Jump_000_0a46:
    ld a, [hl+]

Jump_000_0a47:
    ld b, a

Jump_000_0a48:
    ld l, c

Jump_000_0a49:
    ld h, b

Jump_000_0a4a:
    call ReadGfx

Jump_000_0a4d:
    jp PopRomBank

; Read entry 1 of the case font/HUD bank through the shared pointer path.
LoadHudGfx:


Call_000_0a50:
Jump_000_0a50:
    ld a, [wCaseId]

Jump_000_0a53:
    cp $00

Jump_000_0a55:
    jr nz, HudGfxCaseII

Jump_000_0a57:
    ld a, $33
    call PushRomBank
    ld hl, C1Gfx0Refs+2
    jr BaseGfxReadEntry

; Choose the Case II HUD graphics bank and table.
HudGfxCaseII:
jr_000_0a61:
    ld a, $2a
    call PushRomBank

Call_000_0a66:
    ld hl, C2Gfx0Refs+2
    jr BaseGfxReadEntry
