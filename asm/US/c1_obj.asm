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
jr_002_6c0a:
    jp SkipRoomObj


    ret

; Rule 0: select object $04 in room $06, otherwise check the scene replacement.
C1ObjSwap:

    ld a, [wRoomId]
    cp $06
    jr nz, jr_002_6c27

    ld a, $04
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_6c26

    ld a, $04
    ld [wDrawObj], a

jr_002_6c26:
    ret


jr_002_6c27:
    call SwapSceneObj ; Always returns with result bit 0 clear.
    ld a, [wStateResult]
    and $01
    ret z

    jr jr_002_6c0a

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

    ld a, $16
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_002_6c53

    ld a, $0a
    ld [wDrawObj], a

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

    jr jr_002_6c0a

C1Rule4:
    ret
