
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
    ld hl, UiPalRefs
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, wBgPal

; Copy the next UI palette byte into the live buffer.
LoadUiPalNextByte:
jr_000_1988:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, LoadUiPalNextByte

    call PopRomBank
    call RequestPals
    pop de
    ret

; Stage 64 BG palette bytes from bank $0a table $4210, using the original eight-bit doubled index.
StageMapPal:


Call_000_1996:
    push de
    push af
    ld hl, UiMapPalRefs
    ld a, $0a
    jr StageUiPalSelectEntry

; Stage 64 BG palette bytes from bank $0a table $4000 through the shared copy path.
StageUiBg:

    push de
    push af
    ld hl, UiPalRefs
    ld a, $0a

; Select a UI or map palette table entry.
StageUiPalSelectEntry:
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

; Copy the next UI background-palette byte into staging.
StageUiBgNextByte:
jr_000_19b9:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, StageUiBgNextByte

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
    ld hl, UiPalRefs
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, $40
    ld hl, wObjPalNext

; Copy the next UI object-palette byte into staging.
StageUiObjNextByte:
jr_000_19de:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, StageUiObjNextByte

    call PopRomBank
    pop de
    ret
