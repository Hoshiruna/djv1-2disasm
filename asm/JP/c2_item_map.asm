
; Update the mapped category counter, derive its item flag ID, and retain the existing-item list branch.
MapC2ListItem:


    call ClearResult
    ld bc, wListPacked
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld e, a
    ld bc, $0000

; Compare the packed item with the next counted category.
C2ListMapNextKind:
jr_003_4eb2:
    ld hl, C2ListItemKinds
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    cp e
    jr z, C2ListMapCountKind

    inc bc
    inc bc
    jr C2ListMapNextKind

; Update the matched category count and derive its item flag.
C2ListMapCountKind:
jr_003_4ec1:
    ld hl, C2ListItemKinds+1
    add hl, bc
    ld a, [hl]
    push bc
    call CountC2Item
    pop bc
    ld hl, C2ListItemKinds+1
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, C2ListMapCheckExisting

    dec a

; Check whether the mapped item is already present.
C2ListMapCheckExisting:
jr_003_4ed5:
    push af
    call ReadItemFlag
    jr nz, C2ListMapRefreshExisting

    pop af
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListPacked
    add hl, bc
    ld [hl], a
    call SetItemFlag
    ret


; Refresh the list for an already mapped item.
C2ListMapRefreshExisting:
jr_003_4eed:
    pop af
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    call SetResult
    ret

; Dispatch category zero to four to the original counter update.
CountC2Item:


Call_003_4f01:
    rst RST_00

C2ItemCounters:
    dw AddC2Ten
    dw AddC2Dollar
    dw AddC2Quarter
    dw AddC2Bullet
    dw AddC2Cell

; Add ten dollars to Case II cash.
AddC2Ten:
AddC2Word10:
    ld a, $0a

; Add A to Case II cash with carry into the high byte.
AddC2Cash:
AddC2Word:

Call_003_4f0e:
jr_003_4f0e:
    ld hl, wC2Cash
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret

; Add one dollar to Case II cash.
AddC2Dollar:
AddC2Word1:


    ld a, $01
    jr AddC2Cash

; Add one Case II quarter with byte wrap.
AddC2Quarter:
IncC2Count0:

    ld a, [wC2Quarters]
    inc a
    ld [wC2Quarters], a
    ret

; Add one Case II bullet to the inventory count with byte wrap.
AddC2Bullet:
IncC2Count1:


    ld a, [wC2Bullets]
    inc a
    ld [wC2Bullets], a
    ret

; Add one Case II battery with byte wrap.
AddC2Cell:
IncC2Count2:


    ld a, [wC2Cells]
    inc a
    ld [wC2Cells], a
    ret
