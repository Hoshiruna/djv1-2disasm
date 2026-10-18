; Check the selected item state bit before running the room transition.
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

Call_000_2023:
    cp $00
    jr nz, RejectCase2RoomExit

    ld a, $63
    call ShowMsg2
    pop bc
    jp EndBankAction


; Show the Case II message when the selected exit is unavailable.
RejectCase2RoomExit:
jr_000_2030:
    ld a, $d1
    call ShowMsg0
    pop bc
    jp EndBankAction

; Save state and return without reading script arguments.
SaveStateRet:


    call SaveState
    ret

; Restore Case I objects and update room-dependent object flags before moving.
PrepRoomMove:

Jump_000_203d:
jr_000_203d:
    ld a, [wCaseId]

Call_000_2040:
    cp $00
    jr nz, RoomMoveSaveState

    push af
    ld a, $02
    call PushRomBank

Call_000_204a:
    pop af

Call_000_204b:
    call RestoreC1Objs
    call PopRomBank

Call_000_2051:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, RoomMoveCheckItem28

    ld a, $bb
    call ClearObjFlag
    jr RoomMoveCheckCabFare

; Check whether item 28 should set object flag BB.
RoomMoveCheckItem28:
jr_000_2067:
    cp $28
    jr nz, RoomMoveCheckCabFare

    ld a, $bb

Jump_000_206d:
    call SetObjFlag

; Read the pending cab fare flag before leaving the room.
RoomMoveCheckCabFare:
jr_000_2070:
    ld a, C1CabFarePending
    call ReadObjFlag

Jump_000_2075:
    ld a, [wStateResult]
    and $01

Jump_000_207a:
    jr z, RoomMoveClearCabFare

    ld a, [wRoomId]
    cp $26
    jr z, RoomMoveSetBlueCabDebt

Jump_000_2083:
    cp $27
    jr z, RoomMoveSetYellowCabDebt

Jump_000_2087:
    jr RoomMoveClearCabFare

; Set the blue cab debt flag when leaving room 26h.
RoomMoveSetBlueCabDebt:
jr_000_2089:
    ld a, C1BlueCabDebt
    call SetObjFlag
    jr RoomMoveClearCabFare

; Set the yellow cab debt flag when leaving room 27h.
RoomMoveSetYellowCabDebt:
jr_000_2090:
    ld a, C1YellowCabDebt
    call SetObjFlag

; Clear the pending cab fare flag after the room check.
RoomMoveClearCabFare:
jr_000_2095:
    ld a, C1CabFarePending
    call ClearObjFlag

; Save the current state before flushing room changes.
RoomMoveSaveState:
jr_000_209a:
    call SaveState

; Flush pending changes, then read destination arguments and enter the room.
MoveRoomFlush:
    push af

Jump_000_209e:
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [wChangeMode]
    cp $01
    jr nz, MoveRoom

    ld a, $02
    ld [wChangeMode], a

Call_000_20b6:
    call RefreshLists
; Save the previous room, read the case-specific destination arguments, then enter it.
MoveRoom:

jr_000_20b9:
    ld a, [wRoomId]
    ld [wPrevRoom], a
    ld a, [wCaseId]
    cp $00
    jr nz, RoomMoveReadCase2Args

    call ReadArg
    jr RoomMoveChooseDestination

; Read two destination arguments for a Case II room move.
RoomMoveReadCase2Args:
jr_000_20cb:
    call ReadArgs2

; Use argument zero unless it matches the current room, then use argument one.
RoomMoveChooseDestination:
jr_000_20ce:
    ld a, [wRoomId]
    ld d, a
    ld a, [wArg0]
    cp d
    jr nz, EnterRoom

    ld a, [wArg1] ; Case I only reads arg 0 here; arg 1 can retain its previous value.

; A = new room ID; use previous-room effects, then draw its scene and objects.
EnterRoom:

Call_000_20db:
Jump_000_20db:
jr_000_20db:
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

Call_000_20ff:
Jump_000_20ff:
    call PopRomBank
    push af

Call_000_2103:
    ld a, $01
    call PushRomBank

Jump_000_2108:
    pop af

Jump_000_2109:
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
jr_000_211e:
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

Jump_000_2146:
    ld a, $03

Jump_000_2148:
    call PushRomBank
    pop af
    call DrawC2Marks
    call PopRomBank

; Draw the selected scene and build the room object list.
EnterRoomDrawScene:
jr_000_2152:
    call ShowScene
    call BuildObjList
    push af
    ld a, $03
    call PushRomBank

Call_000_215e:
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
jr_000_2172:
    xor a

; Store the updated escape-step counter before the end check.
StoreEscapeSteps:
jr_000_2173:
    ld [wC2EscapeSteps], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call CheckDesertEnd
    call PopRomBank

Call_000_2183:
    ret
