
; Initialize an unset selected action only for list slot zero, preserving the original flag change.
InitSelAction:


    ld d, a
    ldh a, [hItemSlot]
    cp $00
    ld a, d
    ret nz

    ld a, [wSelAction]
    cp $ff
    ret nz

    ld a, $bf
    call SetObjFlag
    ld a, [wItemType]

jr_002_747e:
    rst RST_00

SelActionCalls:
    dw ClearSelAction
    dw ClearSelAction
    dw ClearSelAction
    dw ClearSelAction
    dw ClearSelAction
    dw PickBitAction

; Select action zero for item types $00..$04.
ClearSelAction:

jr_002_748b:
    ld a, $00
    ld [wSelAction], a
    ret

; Select action $01 or $08 from the item state bit, retaining the Case I ID exception.
PickBitAction:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_74a3

    ld a, [wItemId]
    cp $23
    jr c, jr_002_74a3

    cp $2c
    jr c, jr_002_74b6

jr_002_74a3:
    ld a, [wItemId]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_74b6

    ld a, $01
    ld [wSelAction], a
    ret


jr_002_74b6:
    ld a, $08
    ld [wSelAction], a
    ret
