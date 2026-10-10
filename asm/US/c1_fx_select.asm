
; Save the current scene, select the indexed case-one effect scene, and clear the object list.
SaveC1FxScene:

    ld a, [wSceneId]
    ld [wFxScene], a
    ld a, [wFxId]
    cp $06
    jr z, jr_002_71ba

    cp $07
    jr z, jr_002_71ba

    cp $08
    jr z, jr_002_71ba

    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call Call_000_0bb6
    ld a, $ff
    ld [wObjList], a
    ret

; Save the current scene and select the indexed end-effect scene through the original alternate entry.
SelectC1FxScene:


Call_002_718c:
    ld a, [wSceneId]
    ld [wFxScene], a
    ld a, [wFxId]
    cp $06
    jr z, jr_002_71ba

    cp $07
    jr z, jr_002_71ba

    cp $08
    jr z, jr_002_71ba

    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call Call_000_0bb6
    ld a, $ff
    ld [wObjList], a
    ret

; Select the effect scene with ReloadScene for indices six, seven, and eight, then clear the object list.
ReloadC1FxScene:


jr_002_71ba:
    ld e, a
    ld d, $00
    ld hl, C1FxScenes
    add hl, de
    ld a, [hl]
    ld [wSceneId], a
    call Call_000_0c08
    ld a, $ff
    ld [wObjList], a
    ret
