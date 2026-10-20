
; Save the current audio byte and scene ID, hide the text window, and enter the case-two scene effect.
SaveC2Effect:

Call_003_526c:
Jump_003_526c:
    ld a, [wAudioState]
    ld [wFxCue], a
    call HideTextWindow
    ld a, [wSceneId]
    ld [wFxScene], a

; Save both scratch index low bytes, select the effect scene and optional object, then restore those low bytes.
ShowC2Effect:

Call_003_527b:
Jump_003_527b:
    ldh a, [hItemSlot]
    push af
    ldh a, [hChangePos]
    push af
    ld a, $ff
    ld [wRoomCueHold], a
    ld a, $06
    ld [wSceneFx], a
    ld a, [wFxId]
    ld l, a
    ld h, $00
    ld bc, C2EffectScenes
    add hl, bc
    ld a, [hl]
    ld [wSceneId], a
    call ShowScene

; Play cue $1a only for the policeman effect before selecting the effect object.
C2FxCheckPoliceCue:
jr_003_529c:
    ld a, [wFxId]
    cp FxPoliceman
    jr nz, C2FxSelectObject

    ld a, $1a
    call PlayAudio

; Select the effect object and draw it unless the table returns $ff.
C2FxSelectObject:
jr_003_52a8:
    xor a
    ld [wRoomCueHold], a
    ld a, [wFxId]
    ld l, a
    ld h, $00
    ld bc, C2EffectObjs
    add hl, bc
    ld a, [hl]
    ld [wObjList], a
    ld [wDrawObj], a
    cp $ff
    jr z, C2FxRestoreScratch

    call DrawEffectObj
    call SubmitOam

; Restore the saved change and item-slot low bytes before returning.
C2FxRestoreScratch:
jr_003_52c7:
    pop af
    ldh [hChangePos], a
    pop af
    ldh [hItemSlot], a
    ret

; Run case-two scene selection, restore the saved scene and audio cue, and refresh room objects.
; Submit wFxCue unchanged; a saved base state can still contain bit seven.
RestoreC2Effect:


Call_003_52ce:
    call PickC2Scene
    ld a, [wFxScene]
    ld [wSceneId], a
    ld a, $06
    ld [wSceneFx], a
    call ShowScene
    call RefreshObjs
    ld a, [wFxCue]
    call PlayAudio
    ret
