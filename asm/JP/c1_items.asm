; Restore presence for object IDs $00/$01/$02/$09/$14/$15 before setting their flags.
KeepC1Obj:

    ld a, [wArg0]
    cp $00
    jr nz, jr_002_60ef

    call SetObjPresent
    ret


jr_002_60ef:
    cp $01
    jr nz, jr_002_60f7

    call SetObjPresent
    ret


jr_002_60f7:
    cp $02
    jr nz, jr_002_60ff

    call SetObjPresent
    ret


jr_002_60ff:
    cp $09
    jr nz, jr_002_6107

    call SetObjPresent
    ret


jr_002_6107:
    cp $14
    jr nz, jr_002_610f

    call SetObjPresent
    ret


jr_002_610f:
    cp $15
    jr nz, jr_002_6117

    call SetObjPresent
    ret


jr_002_6117:
    ret

; Restore each six-object group when its associated counter is zero.
RestoreC1Objs:

    ld a, [wBullet1Count]
    cp $00
    jr nz, jr_002_613d

    ld c, $00
    ld hl, ItemObjIds1

jr_002_6124:
    ld a, [hl+]
    push bc
    call ClearItemFlag
    pop bc
    ld a, c
    add $26
    push bc
    push af
    call SetObjPresent
    pop af
    call SetObjVisible
    pop bc
    inc c
    ld a, $06
    cp c
    jr nz, jr_002_6124

jr_002_613d:
    ld a, [wBullet2Count]
    cp $00
    jr nz, jr_002_6162

    ld c, $00
    ld hl, ItemObjIds

jr_002_6149:
    ld a, [hl+]
    push bc
    call ClearItemFlag
    pop bc
    ld a, c
    add $20
    push bc
    push af
    call SetObjPresent
    pop af
    call SetObjVisible
    pop bc
    inc c
    ld a, $06
    cp c
    jr nz, jr_002_6149

jr_002_6162:
    ret

; Map the current item ID through ItemObjIds; return object ID $20 + index.
MapItemObj:

    ld a, [wItemId]
    ld bc, $0000
    ld hl, ItemObjIds

jr_002_616c:
    cp [hl]
    jr z, jr_002_6173

    inc hl
    inc bc
    jr jr_002_616c

jr_002_6173:
    ld a, c
    add $20
    ret

ItemObjIds:
    db $4a, $4f, $50, $51, $52, $53
ItemObjIds1:
    db $3d, $3e, $3f, $40, $41, $42
