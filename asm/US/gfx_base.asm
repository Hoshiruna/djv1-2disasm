
; Load the case font and HUD, then entry 0 from Case I bank $3f or Case II bank $32.
LoadBaseGfx:


Call_000_0a0b:
    call LoadFontGfx
    call LoadHudGfx
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0a22

Call_000_0a18:
    ld a, $3f
    call PushRomBank
    ld hl, $4000
    jr jr_000_0a2a

jr_000_0a22:
    ld a, $32
    call PushRomBank
    ld hl, $4000

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

; Read entry 0 of Case I bank $33 or Case II bank $2a and restore the ROM bank.
LoadFontGfx:


Call_000_0a36:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0a47

    ld a, $33
    call PushRomBank
    ld hl, $4000
    jr jr_000_0a4f

jr_000_0a47:
    ld a, $2a
    call PushRomBank
    ld hl, $4000

jr_000_0a4f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    call ReadGfx
    jp PopRomBank

; Read entry 1 of the case font/HUD bank through the shared pointer path.
LoadHudGfx:


Call_000_0a5b:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0a6c

    ld a, $33
    call PushRomBank
    ld hl, $4002
    jr jr_000_0a2a

jr_000_0a6c:
    ld a, $2a
    call PushRomBank
    ld hl, $4002
    jr jr_000_0a2a
