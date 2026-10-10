
; Copy bank $0a entry A to the live BG palette buffer and request palette upload.
LoadUiPal:


    push de
    push af
    ld a, $0a
    call PushRomBank
    pop af
    sla a
    ld c, a
    ld b, $00
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, wBgPal

jr_000_1988:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1988

    call PopRomBank
    call RequestPals
    pop de
    ret

; Stage 64 BG palette bytes from bank $0a table $4210, using the original eight-bit doubled index.
StageMapPal:


Call_000_1996:
    push de
    push af
    ld hl, $4210
    ld a, $0a
    jr jr_000_19a6

; Stage 64 BG palette bytes from bank $0a table $4000 through the shared copy path.
StageUiBg:

    push de
    push af
    ld hl, $4000
    ld a, $0a

jr_000_19a6:
    call PushRomBank
    pop af
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, wBgPalNext

jr_000_19b9:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_19b9

    call PopRomBank
    pop de
    ret

; Stage 64 object palette bytes from bank $0a table $4000; preserve DE.
StageUiObj:


Call_000_19c4:
    push de
    push af
    ld a, $0a
    call PushRomBank
    pop af
    sla a
    ld c, a
    ld b, $00
    ld hl, $4000
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, wObjPalNext

jr_000_19de:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_19de

    call PopRomBank
    pop de
    ret
