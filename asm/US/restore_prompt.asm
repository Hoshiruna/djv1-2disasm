
; Show restore confirmation; on answer zero restore state and clear case-two event state, then fade out.
RunRestorePrompt:


    call FadeOut
    call HideTextWindow
    call LoadSaveUi
    call ClearSavePanel
    ld hl, SaveContinueEndPointers
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    ld a, $01
    ld [wSaveMenuRow], a
    call FadeIn
    call ChooseSaveAnswer
    ld a, [wSaveAnswer]
    cp $00
    jr nz, RestorePromptFadeOut

    call RestoreState
    call ClearC2Events

; Fade out after restoring state or declining the restore prompt.
RestorePromptFadeOut:
jr_002_788e:
    call FadeOut
    ret
