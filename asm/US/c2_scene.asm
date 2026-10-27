
Call_003_41ee:
; Update room state and select its visual scene; special scenes retain their current ID.
PickC2Scene:
    call BuildC2Scene
    ld a, [wCaseResume]
    cp CaseStartLoadedMarker
    jr nz, C2SceneSelectVariant

    ld a, [wSceneId]
    cp SceneConductor1
    jr z, C2SceneCheckTrainPass

    cp SceneConductor2
    jr nz, C2SceneSelectVariant

; Retain on ReadTrainPass Z, including its unmatched-room return; then show the conductor.
C2SceneCheckTrainPass:
jr_003_4203:
    call ReadTrainPass
    jr nz, C2SceneSelectVariant

    ld a, C2VisIdTrainConductor
    call SetObjVisible
    jr C2SceneReturn

; Read the visual scene selected by the room and variant index.
C2SceneSelectVariant:
jr_003_420f:
    ld a, [wRoomId]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, C2SceneRefs
    add hl, de
    ld a, [hl+]
    ld [wRoomDataPtr], a
    ld a, [hl]
    ld [wRoomDataPtr+1], a
    ld a, [wSceneVariant]
    ld e, a
    ld d, $00
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    add hl, de
    ld a, [hl]
    ld [wSceneId], a

; Return after choosing or retaining the scene.
C2SceneReturn:
jr_003_4235:
    ret


; Build the scene-list offset and map patch list from room state records.
BuildC2Scene:
Call_003_4236:
    call ReadC2Room
    ld b, $09
    ld a, C2PatchListEnd
    ld hl, wPatchList

; Fill the next patch-list slot with the terminator.
C2SceneClearNextPatch:
jr_003_4240:
    ld [hl+], a
    dec b
    jr nz, C2SceneClearNextPatch

    xor a
    ld [wSceneVariant], a
    ld bc, $0000

; Continue building scene variants and patch entries from the current room record.
ScanC2Patch:

Jump_003_424b:
jr_003_424b:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    ld a, [hl]
    cp C2RoomRecordEnd
    ret z

    call GroupC2Patch
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [wPatchId], a
    cp C2PatchListEnd
    ret z

    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
    push bc
    call ReadStateBit
    pop bc
    ld a, [wStateResult]
    and $01
    jr z, C2SceneStorePatch

    ld a, [wPatchId]
    inc a
    ld [wPatchId], a
    ld a, [wSceneVariant]
    ld hl, BitMasks
    add hl, bc
    add [hl]
    ld [wSceneVariant], a

; Store the selected patch ID for this room record.
C2SceneStorePatch:
jr_003_4294:
    ld a, [wPatchId]
    ld hl, wPatchList
    add hl, bc
    ld [hl], a
    call NextC2State
    inc c
    jr ScanC2Patch

    ret


; Combine adjacent records sharing a patch base; grouped records bypass the single-bit path.
GroupC2Patch:
Call_003_42a3:
    push hl
    push de
    push bc
    xor a
    ld [wPatchBits], a
    ld de, $0000

; Accumulate state bits from adjacent grouped patch records.
C2SceneGroupNext:
jr_003_42ad:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    ld a, [hl]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr z, C2SceneCheckGroupEnd

    ld a, [wPatchBits]
    ld hl, BitMasks
    add hl, de
    add [hl]
    ld [wPatchBits], a

; Check whether the next record continues the patch group.
C2SceneCheckGroupEnd:
jr_003_42cc:
    ld a, [wRoomDataPtr]
    ld l, a
    ld a, [wRoomDataPtr+1]
    ld h, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp C2RoomRecordEnd
    jr z, C2SceneFinishGroup

    ld a, [hl+]
    cp C2PatchListEnd
    jr z, C2SceneFinishGroup

    ld [wPatchBase], a
    inc hl
    inc hl
    inc hl
    cp [hl]
    jr nz, C2SceneFinishGroup

    inc e
    call NextC2State
    jr C2SceneGroupNext

; Return for a single record or prepare the grouped patch ID.
C2SceneFinishGroup:
jr_003_42f1:
    ld a, e
    cp $00
    jr nz, C2SceneStoreGroupedPatch

    ld [wPatchBits], a
    pop bc
    pop de
    pop hl
    ret


; Store the grouped patch ID and resume outer record scanning.
C2SceneStoreGroupedPatch:
jr_003_42fd:
    call NextC2State
    ld a, [wPatchBase]
    ld c, a
    ld a, [wPatchBits]
    add c
    ld hl, wPatchList
    pop bc
    add hl, bc
    ld [hl], a
    inc c
    pop de
    pop hl
    ; Discard this call's return address and resume the outer record loop.
    pop af
    jp ScanC2Patch
