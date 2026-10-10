
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

jr_000_1ad8:
    ld a, [bc]

Call_000_1ad9:
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1ad8

    call PopRomBank
    call RequestPals
    pop de
    ret

; Stage 64 BG palette bytes from bank $0a table $4210, using the original eight-bit doubled index.
StageMapPal:


Call_000_1ae6:
    push de
    push af
    ld hl, $4210
    ld a, $0a
    jr jr_000_1af6

; Stage 64 BG palette bytes from bank $0a table $4000 through the shared copy path.
StageUiBg:

    push de
    push af
    ld hl, $4000
    ld a, $0a

jr_000_1af6:
    call PushRomBank
    pop af
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]

Call_000_1b03:
    ld b, a
    ld d, $40
    ld hl, wBgPalNext

jr_000_1b09:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1b09

    call PopRomBank
    pop de
    ret

; Stage 64 object palette bytes from bank $0a table $4000; preserve DE.
StageUiObj:


Call_000_1b14:
    push de
    push af
    ld a, $0a
    call PushRomBank
    pop af
    sla a

Jump_000_1b1e:
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

jr_000_1b2e:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1b2e

    call PopRomBank
    pop de
    ret
