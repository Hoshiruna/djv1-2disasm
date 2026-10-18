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

; Rule 0: select object $04 in room $06, otherwise check the scene replacement.
C1ObjSwap:

    ld a, [wRoomId]
    cp $06
    jr nz, C1ObjSwapSceneCheck

    ld a, C1SpigotOpen
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, C1ObjSpigotReturn

    ld a, $04
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

; Replace object $16 with $0a in scene $73 when its third-bitmap flag is clear.
SwapSceneObj:

Call_002_6c33:
    call ClearResult
    ld a, [wDrawObj]
    cp $16
    ret nz

    ld a, [wSceneId]
    cp $73
    ret nz

    ld a, C1ShadowShot
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C1SwapSceneObjDone

    ld a, $0a
    ld [wDrawObj], a

; Clear the result after the scene-$73 object replacement check.
C1SwapSceneObjDone:
jr_002_6c53:
    call ClearResult
    ret

C1Rule1:
    ret

; Rule 3: skip object $1f unless the current scene is $44.
C1ObjOnly:

    ld a, [wDrawObj]
    cp $1f
    ret nz

    ld a, [wSceneId]
    cp $44
    ret z

    jr C1ObjSkipRoom

C1Rule4:
    ret
