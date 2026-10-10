
; Choose the Case II palette from scene and gameplay state, then stage both sets.
LoadC2Pal:
Call_003_556f:
    ld a, [$c5c9]
    cp $00
    jr nz, jr_003_55ae

    ld a, [$c523]
    and $40
    jr nz, jr_003_55ae

    call FindC2TimedPal
    ld a, [$c523]
    and $01
    jr nz, jr_003_55ae

    ld a, $4d
    call ReadObjFlag
    ld a, [$c523]
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
    ld a, [$c585]
    cp $1d
    jr c, jr_003_55ae

jr_003_55a9:
    ld a, [$c5c6]
    jr jr_003_55b1

jr_003_55ae:
    ld a, [wSceneId]

jr_003_55b1:
    ld [wScenePalId], a
    call StagePals
    ret
