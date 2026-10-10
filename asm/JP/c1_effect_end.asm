
; Preserve AF and both scratch index low bytes, hide text, run the case-one end effect, and wait sixty ticks.
FinishC1Effect:


Call_002_71ce:
    push af
    ldh a, [hItemSlot]
    push af
    ldh a, [hChangePos]
    push af
    call HideTextWindow
    call SelectC1FxScene
    call DispatchC1FxEnd
    ld a, $3c
    call WaitTicks
    pop af
    ldh [hChangePos], a
    pop af
    ldh [hItemSlot], a
    pop af
    ret

; Restore the saved scene ID, set scene effect six, redraw it, and refresh room objects.
RestoreC1FxView:


Call_002_71eb:
    ld a, [wFxScene]
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call Call_000_0bab
    call RefreshObjs
    ret
