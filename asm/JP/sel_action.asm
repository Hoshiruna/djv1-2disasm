
; Initialize an unset action in slot zero and mark it for clearing after action completion.
InitSelAction:


    ld d, a
    ldh a, [hItemSlot]
    cp OpSlotPrimary
    ld a, d
    ret nz

    ld a, [wSelAction]
    cp $ff
    ret nz

    ld a, AutoActionResetPending
    call SetObjFlag
    ld a, [wItemType]

jr_002_747e:
    rst RST_00

SelActionCalls:
    dw SelectLookAction
    dw SelectLookAction
    dw SelectLookAction
    dw SelectLookAction
    dw SelectLookAction
    dw PickOpenOrMoveAction

; Select look for item types $00..$04.
SelectLookAction:
ClearSelAction:

jr_002_748b:
    ld a, SelActionLook
    ld [wSelAction], a
    ret

; Select open or move from the item state bit, retaining the Case I ID exception.
PickOpenOrMoveAction:
PickBitAction:


    ld a, [wCaseId]
    cp $00
    jr nz, DefaultActionReadState

    ld a, [wItemId]
    cp C1DoorIdBlueCabPeoria
    jr c, DefaultActionReadState

    cp C1DoorIdYellowCabEstate
    jr c, SelectMoveAction

; Use the selected room-state bit outside the Case I forced-action range.
DefaultActionReadState:
jr_002_74a3:
    ld a, [wItemId]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, SelectMoveAction

    ld a, SelActionOpen
    ld [wSelAction], a
    ret


; Select move when the state bit or Case I ID exception requires it.
SelectMoveAction:
DefaultActionEight:
jr_002_74b6:
    ld a, SelActionMove
    ld [wSelAction], a
    ret
