; Dispatch the room record rule in Case I; Case II returns immediately.
C1ObjRule:

    ld a, [wCaseId]
    cp $00
    ret nz

    ld a, [wObjRule]
    and $07
    rst RST_00

C1ObjRules:
    dw C1ObjSwap, C1Rule1, C1Rule2, C1ObjOnly, C1Rule4

; Tail transfer: SkipRoomObj removes this call from the stack.
; Tail-call SkipRoomObj through the original stack-removing path.
C1ObjSkipRoom:
jr_002_6c0a:
    jp SkipRoomObj


    ret

; Rule 0: select the open spigot object in the cellar, otherwise check the scene replacement.
C1ObjSwap:

    ld a, [wRoomId]
    cp C1RoomIdCellar
    jr nz, C1ObjSwapSceneCheck

    ld a, C1SpigotOpen
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1ObjSpigotReturn

    ld a, C1ObjectCellarSpigotOpen
    ld [wDrawObj], a

; Return after the room-six spigot object selection.
C1ObjSpigotReturn:
jr_002_6c26:
    ret


; Check the scene-specific replacement outside room six.
C1ObjSwapSceneCheck:
jr_002_6c27:
    call SwapSceneObj ; Always returns with result bit 0 clear.
    ld a, [wStateResult]
    and $01
    ret z

    jr C1ObjSkipRoom

C1Rule2:
    ret

; Replace the scene-$73 door-shadow object while the shadow-shot flag is clear.
SwapSceneObj:

Call_002_6c33:
    call ClearResult
    ld a, [wDrawObj]
    cp C1ObjectAceOfficeDoorShadow
    ret nz

    ld a, [wSceneId]
    cp C1SceneAceOfficeDoorClosed
    ret nz

    ld a, C1ShadowShot
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1SwapSceneObjDone

    ld a, C1ObjectAceOfficeUnshotShadow
    ld [wDrawObj], a

; Clear the result after the scene-$73 object replacement check.
C1SwapSceneObjDone:
jr_002_6c53:
    call ClearResult
    ret

C1Rule1:
    ret

; Rule 3: skip the gag object unless the current scene is $44.
C1ObjOnly:

    ld a, [wDrawObj]
    cp C1ObjectGag
    ret nz

    ld a, [wSceneId]
    cp C1SceneCarTrunkOpen
    ret z

    jr C1ObjSkipRoom

C1Rule4:
    ret
