
; Require the selected state bit, save state, read the target room, and unwind on a handled event.
TryC1RoomEvent:


    ld a, [wItemId]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_662e

    ld a, $63
    call ShowMsg2
    pop bc
    jp EndNestedAction


jr_002_662e:
    call SaveState
    call ReadC1Arg
    ld a, [wArg0]
    ld [wArg3], a
    call DispatchC1RoomEvt
    ld a, [wStateResult]
    and $01
    ret z

    pop bc
    jp EndNestedAction

; Find the target room in the terminated list, set scene effect six, and dispatch its event.
DispatchC1RoomEvt:


Call_002_6647:
    ld c, $00
    ld a, [wArg3]
    ld b, a
    ld hl, C1RoomEvtIds

jr_002_6650:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_002_665a

    inc c
    jr jr_002_6650

jr_002_665a:
    ld a, $06
    ld [wSceneFx], a
    ld a, c
    rst RST_00

C1RoomEvtCalls:
    dw C1RoomEvt1E
    dw C1RoomEvt20
    dw C1RoomEvt24
    dw C1RoomEvt1F
    dw C1RoomEvt4A
    dw C1RoomEvt4D
    dw C1RoomEvt4B
    dw C1RoomEvt4C
