
; Prepare the selected type/value list, then copy all six scratch bytes into the operation slot.
ReadOpList:


Call_001_58ef:
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wChangeType], a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wChangeValue], a
    call PrepChangeList
    ld a, [wListScratch]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+1]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+1
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+2]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+2
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+3]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+3
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+4]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+4
    add hl, bc
    ld [hl], a
    ld a, [wListScratch+5]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wOpList+5
    add hl, bc
    ld [hl], a
    ret

C2OpClasses:
    db $00, $01, $01
    db $00, $02, $01
    db $00, $07, $01
    db $00, $40, $01
    db $00, $4e, $01
    db $00, $50, $06
    db $00, $5a, $01
    db $00, $5b, $01
    db $00, $5f, $01
    db $00, $66, $01
    db $00, $63, $06
    db $00, $6b, $01
    db $00, $70, $06
    db $00, $73, $01
    db $00, $80, $01
    db $00, $81, $01
    db $00, $92, $01
    db $00, $94, $01
    db $00, $9e, $01
    db $00, $9f, $01
    db $00, $a4, $01
    db $00, $88, $01
    db $00, $89, $01
    db $01, $09, $06
    db $03, $11, $04
    db $03, $17, $06
    db $03, $1a, $04
    db $03, $1e, $06
    db $03, $24, $04
    db $03, $2f, $04
    db $03, $3b, $04
    db $03, $44, $04
    db $03, $46, $06
    db $03, $4b, $04
    db $03, $4f, $04
    db $03, $50, $04
    db $04, $0a, $03
    db $05, $06, $06
    db $05, $15, $06
    db $05, $19, $06
    db $05, $39, $06
    db $05, $46, $06
    db $05, $48, $06
    db $05, $49, $06
    db $05, $4a, $06
    db $05, $4b, $06
    db $05, $4c, $06
    db $05, $53, $06
    db $05, $65, $06
    db $05, $68, $06
    db $ff
