
; Save the scene, hide the normal interface, run blackjack, then restore the scene and its view; retain the original exit message condition.
RunBlackjack:
    ld a, [wSceneId]
    ld [wBJSavedScene], a
    call FadeOut
    call HideTextWindow
    call BlankOam
    call ResetBJDeck
    call LoadBJTable
    call PlayBJRounds
    call FadeOut
    ld a, $ff
    ldh [hBgLoaded], a
    ldh [hObjLoaded], a
    ld a, [wBJSavedScene]
    ld [wSceneId], a
    call ReloadC2View
    ld a, [wBJExit]
    cp $ff
    ret nz

    ld a, $4e
    call ShowMsg3
    ret
