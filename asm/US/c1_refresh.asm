; Refresh the Case I scene and apply scene-specific object presence changes.
RefreshC1:

    ld a, [wSceneId]
    cp C1SceneAlligatorShotView
    jr z, C1RefreshShowEffect

    cp C1SceneCellarRackPassageOpen
    jr nz, C1RefreshReload

    ld a, [wItemId]
    cp $06
    jr nz, C1RefreshReload

; Use diagonal stripes to redraw the special scene before applying presence changes.
C1RefreshShowEffect:

jr_002_69a3:
    ld a, SceneFxDiagonalStripes
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
    cp C1SceneStartStallDoorClosed
    jr nz, C1RefreshScene01

    ld a, C1ObjectCoat
    call SetObjPresent
    call RefreshObjs
    ld a, C1ObjectGun1
    call SetObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $01, clear presence for the coat and gun one.
C1RefreshScene01:

jr_002_69cc:
    cp C1SceneStartStallDoorOpen
    jr nz, C1RefreshScene12

    ld a, C1ObjectCoat
    call ClearObjPresent
    call RefreshObjs
    ld a, C1ObjectGun1
    call ClearObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $12, queue the tile-$70 overlay and refresh objects.
C1RefreshScene12:

jr_002_69e2:
    cp C1SceneCellarRackPassageClosed
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
    cp C1SceneCellarRackPassageOpen
    jr nz, C1RefreshScene43

    ld bc, $98cf
    ld hl, C1ObjTile73
    call QueueTileRect
    call SubmitMapQueue
    call RefreshObjs
    jr C1RefreshDone

; In scene $43, clear gag presence.
C1RefreshScene43:

jr_002_6a0c:
    cp C1SceneCarTrunkClosed
    jr nz, C1RefreshScene44

    ld a, C1ObjectGag
    call ClearObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $44, restore gag presence.
C1RefreshScene44:

jr_002_6a1a:
    cp C1SceneCarTrunkOpen
    jr nz, C1RefreshScene73

    ld a, C1ObjectGag
    call SetObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $73, restore door-shadow presence.
C1RefreshScene73:

jr_002_6a28:
    cp C1SceneAceOfficeDoorClosed
    jr nz, C1RefreshScene74

    ld a, C1ObjectAceOfficeDoorShadow
    call SetObjPresent
    call RefreshObjs
    jr C1RefreshDone

; In scene $74, clear door-shadow presence.
C1RefreshScene74:

jr_002_6a36:
    cp C1SceneAceOfficeDoorOpen
    jr nz, C1RefreshDone

    ld a, C1ObjectAceOfficeDoorShadow
    call ClearObjPresent
    call RefreshObjs
    jr C1RefreshDone

; Return after the scene-specific refresh checks.
C1RefreshDone:

jr_002_6a44:
    ret
