
; Handle rooms $1e, $20, $24 and $4a..$4d; clear result bit 0 for other rooms.
CheckC1Rooms:


Call_002_6d28:
    ld a, [wRoomId]
    cp $1e
    jr z, jr_002_6d4d

    cp $20
    jr z, jr_002_6d76

    cp $24
    jr z, jr_002_6da4

    cp $4a
    jp z, Jump_002_6dc2

    cp $4b
    jp z, Jump_002_6dc2

    cp $4c
    jr z, jr_002_6dc2

    cp $4d
    jr z, jr_002_6dc2

    call ClearResult
    ret


jr_002_6d4d:
    ld a, $06
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $e4
    call ShowMsg1
    call Call_000_2eef
    ld a, [wStateResult]
    or $08
    ld [wStateResult], a
    ld a, $e5
    call ShowMsg1
    ld a, $e7
    call ShowMsg1
    call Call_000_2a6b
    call SetResult
    ret


jr_002_6d76:
    ld a, $07
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $16
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $e6
    call ShowMsg2
    ld a, $15
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $62
    call ShowMsg2
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    call SetResult
    ret


jr_002_6da4:
    ld a, $37
    call ShowMsg1
    ld a, $15
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $62
    call ShowMsg2
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    call SetResult
    ret


Jump_002_6dc2:
jr_002_6dc2:
    ld a, $07
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $f0
    call ShowMsg1
    ld a, $15
    ld [$c8e9], a
    call Call_002_71ce
    ld a, $62
    call ShowMsg2
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    ld a, $07
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_002_6df5

    ld a, $95
    call SetObjFlag

jr_002_6df5:
    call SetResult
    ret

; Handle first-slot type 0/value $12 for actions 1 and 5; clear result bit 0 before checking.
CheckC1Op12:


Call_002_6df9:
    call ClearResult
    ld a, [wItemType]
    cp $00
    ret nz

    ld a, [wItemId]
    cp $12
    ret nz

    ld a, [wSelAction]
    cp $01
    jr z, jr_002_6e14

    cp $05
    jr z, jr_002_6e44

    ret


jr_002_6e14:
    ld a, $04
    call ReadObjFlag
    ld a, $6a
    ld [$c537], a
    ld a, [wStateResult]
    and $01
    jr z, jr_002_6e2e

    ld a, $01
    call ShowMsg2
    call SetResult
    ret


jr_002_6e2e:
    ld a, $00
    call ShowMsg2
    ld a, $03
    call ClearObjFlag
    ld a, $04
    call SetObjFlag
    call RefreshObjs
    call SetResult
    ret


jr_002_6e44:
    ld a, $03
    call ReadObjFlag
    ld a, $6a
    ld [$c537], a
    ld a, [wStateResult]
    and $01
    jr z, jr_002_6e5e

    ld a, $03
    call ShowMsg2
    call SetResult
    ret


jr_002_6e5e:
    ld a, $02
    call ShowMsg2
    ld a, $04
    call ClearObjFlag
    ld a, $03
    call SetObjFlag
    call RefreshObjs
    call SetResult
    ret

; Handle first-slot type 0/value $3f in scene $44 for action 5; clear result bit 0 before checking.
CheckC1Op3f:


Call_002_6e74:
    call ClearResult
    ld a, [wItemType]
    cp $00
    ret nz

    ld a, [wItemId]
    cp $3f
    ret nz

    ld a, [wSceneId]
    cp $44
    ret nz

    ld a, [wSelAction]
    cp $05
    ret nz

    ld a, $05
    ld [wItemType], a
    ld a, $47
    ld [wItemId], a
    call Call_000_216c
    ld a, $5d
    call ClearObjFlag
    call SetResult
    ret
