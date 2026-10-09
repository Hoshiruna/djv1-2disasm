
; A = palette ID; copy BG and object sets into the next-palette buffers.
StagePals:
Call_000_1a3f:
    push af
    call StageBgPal
    pop af
    call StageObjPal
    ret

; A = palette ID; copy 64 bytes to wBgPalNext.
StageBgPal:
Call_000_1a48:
    push hl
    push bc
    push de
    push af
    ld a, [wCaseId]
    ld l, a
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

jr_000_1a76:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1a76

    call PopRomBank
    pop de
    pop bc
    pop hl
    ret

; A = palette ID; copy 64 bytes to wObjPalNext.
StageObjPal:
Call_000_1a83:
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

jr_000_1ab1:
    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_1ab1

    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
