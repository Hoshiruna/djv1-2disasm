
; Store the current room state, select the case-two next room in bank three, then enter it.
MoveC2Room:


    push af
    ld a, $00

Call_000_2187:
    call PushRomBank
    pop af
    call StoreRoomState
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomNext
    call PopRomBank
    jp EnterRoom

; Save state, flush changes, promote list mode one to two, and store the previous room ID.
StoreRoomState:


Call_000_21a1:
    call SaveState
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [wChangeMode]
    cp $01
    jr nz, jr_000_21c0

    ld a, $02
    ld [wChangeMode], a
    call RefreshLists

jr_000_21c0:
    ld a, [wRoomId]
    ld [wPrevRoom], a
    ret

; Read one room argument and enter the direct room drawing path.
ScriptRoomDraw:


    call ReadArg

; Set the room ID, select its scene and panel, then show the scene and build room objects.
DrawRoomAt:

Call_000_21ca:
    ld [wRoomId], a
    call ResetObjScroll
    ld a, [wCaseId]

Jump_000_21d3:
    cp $00
    jr nz, jr_000_2200

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
    jr jr_000_2227

Jump_000_2200:
jr_000_2200:
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
    call PushRomBank
    pop af
    call DrawC2Marks
    call PopRomBank

jr_000_2227:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    call ShowScene
    call BuildObjList
    ret
