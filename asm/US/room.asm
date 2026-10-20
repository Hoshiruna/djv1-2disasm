; Test the selected item state without fetching a script operand.
; Accepted exits consume one destination byte in Case I, two in Case II.
; Rejected exits consume neither destination byte and end the action.
CheckRoomExit:

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, PrepRoomMove

    ld a, [wCaseId]
    cp $00
    jr nz, RejectCase2RoomExit

    ld a, $63
    call ShowMsg2
    pop bc
    jp EndBankAction


; Show the Case II message when the selected exit is unavailable.
RejectCase2RoomExit:
jr_000_1ee0:
    ld a, $d1
    call ShowMsg0
    pop bc
    jp EndBankAction

; Save state and return without reading script arguments.
SaveStateRet:


    call SaveState
    ret

; Restore Case I objects and update room-dependent object flags before moving.
; Case II opcode $3b enters here without checking the selected exit state.
PrepRoomMove:

jr_000_1eed:
    ld a, [wCaseId]
    cp $00
    jr nz, RoomMoveSaveState

    push af
    ld a, $02

Call_000_1ef7:
    call PushRomBank
    pop af
    call RestoreC1Objs
    call PopRomBank
    ld bc, wItemId

Jump_000_1f04:
    ldh a, [hItemSlot]
    ld l, a

Jump_000_1f07:
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, RoomMoveCheckItem28

    ld a, $bb

Jump_000_1f12:
    call ClearObjFlag
    jr RoomMoveCheckCabFare

; Check whether item 28 should set object flag BB.
RoomMoveCheckItem28:
jr_000_1f17:
    cp $28
    jr nz, RoomMoveCheckCabFare

    ld a, $bb

Call_000_1f1d:
    call SetObjFlag

Jump_000_1f20:
; Read the pending cab fare flag before leaving the room.
RoomMoveCheckCabFare:
jr_000_1f20:
    ld a, C1CabFarePending
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, RoomMoveClearCabFare

    ld a, [wRoomId]
    cp $26
    jr z, RoomMoveSetBlueCabDebt

    cp $27
    jr z, RoomMoveSetYellowCabDebt

    jr RoomMoveClearCabFare

; Set the blue cab debt flag when leaving room 26h.
RoomMoveSetBlueCabDebt:
jr_000_1f39:
    ld a, C1BlueCabDebt
    call SetObjFlag
    jr RoomMoveClearCabFare

Call_000_1f40:
; Set the yellow cab debt flag when leaving room 27h.
RoomMoveSetYellowCabDebt:
jr_000_1f40:
    ld a, C1YellowCabDebt
    call SetObjFlag

; Clear the pending cab fare flag after the room check.
RoomMoveClearCabFare:
jr_000_1f45:
    ld a, C1CabFarePending
    call ClearObjFlag

; Save the current state before flushing room changes.
RoomMoveSaveState:
jr_000_1f4a:
    call SaveState

; Flush pending changes, then read destination arguments and enter the room.
; Direct entry through Case II opcode $4f skips the SaveState call above.
MoveRoomFlush:
    push af
    ld a, $02
    call PushRomBank

Call_000_1f53:
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [wChangeMode]
    cp $01
    jr nz, MoveRoom

    ld a, $02
    ld [wChangeMode], a
    call RefreshLists

; Save the previous room, read the case-specific destination arguments, then enter it.
MoveRoom:

jr_000_1f69:
    ld a, [wRoomId]
    ld [wPrevRoom], a
    ld a, [wCaseId]
    cp $00
    jr nz, RoomMoveReadCase2Args

    call ReadArg
    jr RoomMoveChooseDestination

; Read two room IDs for a Case II move; arg 1 is not a bank or opcode.
RoomMoveReadCase2Args:
jr_000_1f7b:
    call ReadArgs2

Call_000_1f7e:
; Use argument zero unless it matches the current room, then use argument one.
RoomMoveChooseDestination:
jr_000_1f7e:
    ld a, [wRoomId]
    ld d, a
    ld a, [wArg0]
    cp d
    jr nz, EnterRoom

    ld a, [wArg1] ; Case I only reads arg 0 here; arg 1 can retain its previous value.

; A = new room ID; use previous-room effects, then draw its scene and objects.
EnterRoom:

Call_000_1f8b:
Jump_000_1f8b:
jr_000_1f8b:
    ld [wRoomId], a
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, EnterCase2Room

    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Fx
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Scene
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    jr EnterRoomDrawScene

; Select Case II scene effects, art, panel, and object marks.
EnterCase2Room:
jr_000_1fce:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Fx
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $03

Jump_000_1ff8:
    call PushRomBank

Call_000_1ffb:
    pop af

Jump_000_1ffc:
    call DrawC2Marks

Jump_000_1fff:
    call PopRomBank

Jump_000_2002:
; Draw the selected scene and build the room object list.
EnterRoomDrawScene:
jr_000_2002:
    call ShowScene
    call BuildObjList
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PlayDesertMotion
    call PopRomBank
    ld a, [wRoomId]
    cp RoomTracksA
    jr c, ResetEscapeSteps

    ld a, [wC2EscapeSteps]
    inc a
    jr StoreEscapeSteps

; Clear the escape-step counter outside the tracked room range.
ResetEscapeSteps:
jr_000_2022:
    xor a

Call_000_2023:
; Store the updated escape-step counter before the end check.
StoreEscapeSteps:
jr_000_2023:
    ld [wC2EscapeSteps], a
    push af

Call_000_2027:
    ld a, $03
    call PushRomBank
    pop af
    call CheckDesertEnd
    call PopRomBank

Jump_000_2033:
    ret
