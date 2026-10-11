
; Display save confirmation, store only on answer zero, restore the UI flag, and reload the active case view.
RunSavePrompt:

    call FadeOut
    xor a

    ld [wScrollY], a
    call HideTextWindow
    call LoadSaveUi
    call ClearSavePanel
    ld hl, SaveUiPtrs5
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveUiPtrs4
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    ld a, $02
    call StageUiObj
    call FadeIn
    xor a
    ld [wSaveMenuRow], a
    call ChooseSaveAnswer
    ld a, [wSaveAnswer]
    cp $00
    jr nz, jr_002_7933

    call StoreGame

jr_002_7933:
    call FadeOut
    ld a, [wSpriteScrollY]
    ld [wScrollY], a
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_794d

    call ReloadC1View
    ret


jr_002_794d:
    call ReloadC2View
    ret
