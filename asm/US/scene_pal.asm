
; A = palette ID; copy BG and object sets into the next-palette buffers.
StagePals:
Call_000_18ef:
    push af
    call StageBgPal
    pop af
    call StageObjPal
    ret

; A = palette ID; copy 64 bytes to wBgPalNext.
StageBgPal:
Call_000_18f8:
    push hl
    push bc
    push de
    push af
    ld a, [wCaseId]

Call_000_18ff:
Jump_000_18ff:
    ld l, a

Jump_000_1900:
    ld h, $00
    ld bc, BgPalBanks
    add hl, bc
    ld a, [hl]
    call PushRomBank
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, BgPalTables
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld d, $40
    ld hl, wBgPalNext

jr_000_1926:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1926

    call PopRomBank
    pop de
    pop bc
    pop hl
    ret

; A = palette ID; copy 64 bytes to wObjPalNext.
StageObjPal:
Call_000_1933:
    push hl
    push bc
    push de
    push af
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    ld bc, ObjPalBanks
    add hl, bc
    ld a, [hl]
    call PushRomBank
    ld a, [wCaseId]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, ObjPalTables
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld d, $40
    ld hl, wObjPalNext

jr_000_1961:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1961

    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
