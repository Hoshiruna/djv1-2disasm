
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

jr_003_4eb2:
    ld hl, C2ListItemKinds
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    cp e
    jr z, jr_003_4ec1

    inc bc
    inc bc
    jr jr_003_4eb2

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
    jr z, jr_003_4ed5

    dec a

jr_003_4ed5:
    push af
    call ReadItemFlag
    jr nz, jr_003_4eed

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
    dw AddC2Word10
    dw AddC2Word1
    dw IncC2Count0
    dw IncC2Count1
    dw IncC2Count2

; Add ten to the shared case-two word counter.
AddC2Word10:
    ld a, $0a

; Add A to the little-endian case-two word counter with carry.
AddC2Word:

Call_003_4f0e:
jr_003_4f0e:
    ld hl, wC2Word
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret

; Add one to the shared case-two word counter.
AddC2Word1:


    ld a, $01
    jr jr_003_4f0e

; Increment the case-two byte counter at wC2Count0.
IncC2Count0:

    ld a, [wC2Count0]
    inc a
    ld [wC2Count0], a
    ret

; Increment the case-two byte counter at wC2Count1.
IncC2Count1:


    ld a, [wC2Count1]
    inc a
    ld [wC2Count1], a
    ret

; Increment the case-two byte counter at wC2Count2.
IncC2Count2:


    ld a, [wC2Count2]
    inc a
    ld [wC2Count2], a
    ret
