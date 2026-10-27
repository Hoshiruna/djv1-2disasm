
; Copy bank $0a entry A to the live BG palette buffer and request palette upload.
LoadUiPal:


    push de
    push af
    ld a, UiPaletteRomBank
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
    ld d, UiPaletteByteCount
    ld hl, wBgPal

; Copy the next UI palette byte into the live buffer.
LoadUiPalNextByte:
jr_000_1ad8:
    ld a, [bc]

Call_000_1ad9:
    ld [hl+], a
    inc bc
    dec d
    jr nz, LoadUiPalNextByte

    call PopRomBank
    call RequestPals
    pop de
    ret

; Stage 64 BG bytes from UiMapPalRefs using the original eight-bit doubled index.
StageUiMapPal:
StageMapPal:


Call_000_1ae6:
    push de
    push af
    ld hl, UiMapPalRefs
    ld a, UiPaletteRomBank
    jr StageUiPalSelectEntry

; Stage 64 BG palette bytes from bank $0a table $4000 through the shared copy path.
StageUiBg:

    push de
    push af
    ld hl, UiPalRefs
    ld a, UiPaletteRomBank

; Select a UI or map palette table entry.
StageUiPalSelectEntry:
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
    ld d, UiPaletteByteCount
    ld hl, wBgPalNext

; Copy the next UI background-palette byte into staging.
StageUiBgNextByte:
jr_000_1b09:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, StageUiBgNextByte

    call PopRomBank
    pop de
    ret

; Stage 64 OBJ bytes from UiPalRefs into wObjPalNext, preserving DE.
StageUiObjPal:
StageUiObj:


Call_000_1b14:
    push de
    push af
    ld a, UiPaletteRomBank
    call PushRomBank
    pop af
    sla a

Jump_000_1b1e:
    ld c, a
    ld b, $00
    ld hl, UiPalRefs
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld d, UiPaletteByteCount
    ld hl, wObjPalNext

; Copy the next UI object-palette byte into staging.
StageUiObjNextByte:
jr_000_1b2e:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, StageUiObjNextByte

    call PopRomBank
    pop de
    ret
