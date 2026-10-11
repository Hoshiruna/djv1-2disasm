
; Choose the Case II palette from scene and gameplay state, then stage both sets.
LoadC2Pal:
Call_003_556f:
    ld a, [wRoomCueHold]
    cp $00
    jr nz, jr_003_55ae

    ld a, [wStateResult]
    and $40
    jr nz, jr_003_55ae

    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_55ae

    ld a, C2LampFlag
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_55a2

    ld a, [wRoomId]
    cp $38
    jr z, jr_003_55a9

    cp $3a
    jr z, jr_003_55a9

    ld a, $49
    jr jr_003_55b1

jr_003_55a2:
    ld a, [wC2LampTick]
    cp $1d
    jr c, jr_003_55ae

jr_003_55a9:
    ld a, [wC2TimedPal]
    jr jr_003_55b1

jr_003_55ae:
    ld a, [wSceneId]

jr_003_55b1:
    ld [wScenePalId], a
    call StagePals
    ret
