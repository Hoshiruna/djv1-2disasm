
; Reject count-backed item IDs zero, eight, and $2d through the original messages; otherwise dispatch put and retain the nested-action exit path.
CheckC1Put:


    ld a, [wItemType]
    cp $03
    jr nz, jr_002_6a8a

    ld a, [wItemId]
    cp $00
    jr nz, jr_002_6a66

    ld a, [wC1ListCount]
    cp $00
    jr nz, jr_002_6a7e

jr_002_6a5a:
    ld a, $29
    call ShowMsg2
    ld a, $80
    call ClearObjFlag
    jr jr_002_6aae

jr_002_6a66:
    cp $08
    jr nz, jr_002_6a73

    ld a, [wBullet1Count]
    cp $00
    jr nz, jr_002_6a7e

    jr jr_002_6a5a

jr_002_6a73:
    cp $2d
    jr nz, jr_002_6a8a

    ld a, [wBullet2Count]
    cp $00
    jr z, jr_002_6a5a

jr_002_6a7e:
    ld a, $80
    call ClearObjFlag
    ld a, $7d
    call ShowMsg2
    jr jr_002_6aae

jr_002_6a8a:
    ldh a, [hChangePos]
    push af
    ldh a, [hItemSlot]
    push af
    ld a, [wStateResult]
    and $ef
    ld [wStateResult], a
    call DispatchC1Put
    ld a, $80
    call ClearObjFlag
    pop af
    ldh [hItemSlot], a
    pop af
    ldh [hChangePos], a
    ld a, [wStateResult]
    and $10
    jr nz, jr_002_6aae

    ret


jr_002_6aae:
    ld a, [wStateResult]
    and $ef
    ld [wStateResult], a
    pop bc
    jp EndNestedAction

; Clear the result and dispatch the alternate-slot type through six put handlers.
DispatchC1Put:


Call_002_6aba:
    call ClearResult
    ld a, [wAltSlot]
    rst RST_00

C1PutCalls:
    dw RejectC1Put
    dw RejectC1Put
    dw PutC1Group
    dw DropC1ItemObj
    dw DropC1PropObj
    dw RejectC1Put

; Show message $13 through stream zero and return.
RejectC1Put:

    ld a, $13
    call ShowMsg0
    ret

; Accept alternate ID four immediately; otherwise scan seven group bytes for $ff using the original scratch high byte and jump to WriteC1Group when found.
PutC1Group:


    ld a, [wAltSlot+1]
    cp $04
    jr nz, jr_002_6ade

    call SetResult
    ret


jr_002_6ade:
    add a
    add a
    add a
    ldh [hChangePos], a
    ld e, $00

jr_002_6ae5:
    ld bc, wGroupData
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jp z, WriteC1Group

    ld d, a
    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    ld a, d
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, jr_002_6ae5

    ld a, $76
    call ShowMsg2
    ld a, [wStateResult]
    or $10
    ld [wStateResult], a
    ret
