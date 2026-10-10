; Refresh the Case I scene and apply scene-specific object presence changes.
RefreshC1:

    ld a, [wSceneId]
    cp $8e
    jr z, jr_002_69a3

    cp $13
    jr nz, jr_002_69ad

    ld a, [wItemId]
    cp $06
    jr nz, jr_002_69ad

jr_002_69a3:
    ld a, $06
    ld [wSceneFx], a
    call ShowScene
    jr jr_002_69b0

jr_002_69ad:
    call ReloadScene

jr_002_69b0:
    call SubmitMapQueue
    ld a, [wSceneId]
    cp $00
    jr nz, jr_002_69cc

    ld a, $41
    call SetObjPresent
    call RefreshObjs
    ld a, $42
    call SetObjPresent
    call RefreshObjs
    jr jr_002_6a44

jr_002_69cc:
    cp $01
    jr nz, jr_002_69e2

    ld a, $41
    call ClearObjPresent
    call RefreshObjs
    ld a, $42
    call ClearObjPresent
    call RefreshObjs
    jr jr_002_6a44

jr_002_69e2:
    cp $12
    jr nz, jr_002_69f7

    ld bc, $98cf
    ld hl, $6c6a
    call QueueTileRect
    call SubmitMapQueue
    call RefreshObjs
    jr jr_002_6a44

jr_002_69f7:
    cp $13
    jr nz, jr_002_6a0c

    ld bc, $98cf
    ld hl, $6c67
    call QueueTileRect
    call SubmitMapQueue
    call RefreshObjs
    jr jr_002_6a44

jr_002_6a0c:
    cp $43
    jr nz, jr_002_6a1a

    ld a, $1f
    call ClearObjPresent
    call RefreshObjs
    jr jr_002_6a44

jr_002_6a1a:
    cp $44
    jr nz, jr_002_6a28

    ld a, $1f
    call SetObjPresent
    call RefreshObjs
    jr jr_002_6a44

jr_002_6a28:
    cp $73
    jr nz, jr_002_6a36

    ld a, $16
    call SetObjPresent
    call RefreshObjs
    jr jr_002_6a44

jr_002_6a36:
    cp $74
    jr nz, jr_002_6a44

    ld a, $16
    call ClearObjPresent
    call RefreshObjs
    jr jr_002_6a44

jr_002_6a44:
    ret
