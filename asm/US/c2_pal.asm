
; Choose the Case II palette from scene and gameplay state, then stage both sets.
LoadC2Pal:
Call_003_556f:
    ld a, [wRoomCueHold]
    cp $00
    jr nz, C2PalUseScene

    ld a, [wStateResult]
    and $40
    jr nz, C2PalUseScene

    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, C2PalUseScene

    ld a, C2LampFlag
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, C2PalCheckLampAge

    ld a, [wRoomId]
    cp RoomJoeOffice
    jr z, C2PalUseTimed

    cp RoomJoeRearHallway
    jr z, C2PalUseTimed

    ld a, $49
    jr C2PalStageSelected

; Check whether the active lamp has reached its dimming step.
C2PalCheckLampAge:
jr_003_55a2:
    ld a, [wC2LampTick]
    cp $1d
    jr c, C2PalUseScene

; Use the room-specific timed palette.
C2PalUseTimed:
jr_003_55a9:
    ld a, [wC2TimedPal]
    jr C2PalStageSelected

; Use the current scene palette.
C2PalUseScene:
jr_003_55ae:
    ld a, [wSceneId]

; Stage the selected background and object palettes.
C2PalStageSelected:
jr_003_55b1:
    ld [wScenePalId], a
    call StagePals
    ret
