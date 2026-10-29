
; Reject count-backed item IDs zero, eight, and $2d through the original messages; otherwise dispatch put and retain the nested-action exit path.
CheckC1Put:


    ld a, [wItemType]
    cp $03
    jr nz, C1PutDispatchSavedSlots

    ld a, [wItemId]
    cp C1ItemCoins
    jr nz, C1PutCheckBullet1

    ld a, [wC1Coins]
    cp $00
    jr nz, C1PutCountRejected

; Show the empty-count reply and leave the nested action.
; Zero and nonzero quantities select different replies, then enter C1PutEndNested.
C1PutCountEmpty:
jr_002_6a5a:
    ld a, $29
    call ShowMsg2 ; Message Text11Message29: YOU CAN'T GET RID / OF WHAT YOU DIDN'TTAKE![END]
    ld a, C1AltTargetBypass
    call ClearObjFlag
    jr C1PutEndNested

; Check the first ammunition count for item eight.
C1PutCheckBullet1:
jr_002_6a66:
    cp C1ItemBullet1
    jr nz, C1PutCheckBullet2

    ld a, [wBullet1Count]
    cp $00
    jr nz, C1PutCountRejected

    jr C1PutCountEmpty

; Check the second ammunition count for item $2d.
C1PutCheckBullet2:
jr_002_6a73:
    cp C1ItemBullet2
    jr nz, C1PutDispatchSavedSlots

    ld a, [wBullet2Count]
    cp $00
    jr z, C1PutCountEmpty

; Reject placing a count-backed item whose count is nonzero.
C1PutCountRejected:
jr_002_6a7e:
    ld a, C1AltTargetBypass
    call ClearObjFlag
    ld a, $7d
    call ShowMsg2 ; Message Text11Message7D: HOLD ON![PAGE] / IF YOU DO THAT, / IT MAY CAUSE YOU / TROUBLE LATER.[END]
    jr C1PutEndNested

; Save selection scratch values around the put dispatcher.
; Only the low bytes are saved; this wrapper does not restore their high bytes.
C1PutDispatchSavedSlots:
jr_002_6a8a:
    ldh a, [hChangePos]
    push af
    ldh a, [hItemSlot]
    push af
    ld a, [wStateResult]
    and $ef
    ld [wStateResult], a
    call DispatchC1Put
    ld a, C1AltTargetBypass
    call ClearObjFlag
    pop af
    ldh [hItemSlot], a
    pop af
    ldh [hChangePos], a
    ld a, [wStateResult]
    and $10
    jr nz, C1PutEndNested

    ret


; Clear the nested-action result bit and return through EndNestedAction.
C1PutEndNested:
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
    call ShowMsg0 ; Message Text0CMessage13: WHAT DO YOU THINK / YOU ARE DOING?[END]
    ret

; Accept alternate ID four immediately; otherwise scan seven group bytes for $ff using the original scratch high byte and jump to WriteC1Group when found.
PutC1Group:


    ld a, [wAltSlot+1]
    cp C1DisposalDeepSewer
    jr nz, C1PutFindGroupSlot

    call SetResult
    ret


; Calculate the group offset before scanning its seven slots.
; Offsets zero through six are payload bytes here; Case II uses a separate header layout.
C1PutFindGroupSlot:
jr_002_6ade:
    add a
    add a
    add a
    ldh [hChangePos], a
    ld e, $00

; Find an empty group byte while retaining the original scratch high byte.
C1PutGroupSlotLoop:
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
    cp C1GroupStoreBytes
    jr c, C1PutGroupSlotLoop

    ld a, $76
    call ShowMsg2 ; Message Text11Message76: THE WASTEBASKET / IS FULL.[PAGE] / IT WON'T HOLD / ANYMORE.[END]
    ld a, [wStateResult]
    or $10
    ld [wStateResult], a
    ret
