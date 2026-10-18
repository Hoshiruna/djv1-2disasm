; Refresh the Case I scene and apply scene-specific object presence changes.
RefreshC1:

    ld a, [wSceneId]
    cp $8e
    jr z, C1RefreshShowEffect

    cp $13
    jr nz, C1RefreshReload

    ld a, [wItemId]
    cp $06
    jr nz, C1RefreshReload

; Use scene effect six to redraw the special scene before applying presence changes.
C1RefreshShowEffect:

jr_002_69a3:
    ld a, $06
    ld [wSceneFx], a
    call ShowScene
    jr C1RefreshApplyPresence

; Reload the ordinary scene before applying presence changes.
C1RefreshReload:

jr_002_69ad:
    call ReloadScene

; Submit the map queue and select the scene-specific presence update.
C1RefreshApplyPresence:

jr_002_69b0:
    call SubmitMapQueue
    ld a, [wSceneId]
    cp $00
    jr nz, C1RefreshScene01

    ld a, $41
    call SetObjPresent
    call RefreshObjs
    ld a, $42
    call SetObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $01, clear presence for objects $41 and $42.
C1RefreshScene01:

jr_002_69cc:
    cp $01
    jr nz, C1RefreshScene12

    ld a, $41
    call ClearObjPresent
    call RefreshObjs
    ld a, $42
    call ClearObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $12, queue the tile-$70 overlay and refresh objects.
C1RefreshScene12:

jr_002_69e2:
    cp $12
    jr nz, C1RefreshScene13

    ld bc, $98cf
    ld hl, C1ObjTile70
    call QueueTileRect
    call SubmitMapQueue
    call RefreshObjs
    jr C1RefreshDone

; In scene $13, queue the tile-$73 overlay and refresh objects.
C1RefreshScene13:

jr_002_69f7:
    cp $13
    jr nz, C1RefreshScene43

    ld bc, $98cf
    ld hl, C1ObjTile73
    call QueueTileRect
    call SubmitMapQueue
    call RefreshObjs
    jr C1RefreshDone

; In scene $43, clear presence for object $1f.
C1RefreshScene43:

jr_002_6a0c:
    cp $43
    jr nz, C1RefreshScene44

    ld a, $1f
    call ClearObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $44, restore presence for object $1f.
C1RefreshScene44:

jr_002_6a1a:
    cp $44
    jr nz, C1RefreshScene73

    ld a, $1f
    call SetObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $73, restore presence for object $16.
C1RefreshScene73:

jr_002_6a28:
    cp $73
    jr nz, C1RefreshScene74

    ld a, $16
    call SetObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $74, clear presence for object $16.
C1RefreshScene74:

jr_002_6a36:
    cp $74
    jr nz, C1RefreshDone

    ld a, $16
    call ClearObjPresent
    call RefreshObjs
    jr C1RefreshDone

; Return after the scene-specific refresh checks.
C1RefreshDone:

jr_002_6a44:
    ret
