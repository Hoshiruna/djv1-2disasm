
; Preserve AF and both scratch index low bytes, hide text, run the case-one effect, restore its view, and replay the saved audio byte.
PlayC1Effect:
    push af
    ldh a, [hItemSlot]
    push af
    ldh a, [hChangePos]
    push af
    ld a, [wAudioState]
    push af
    call HideTextWindow
    call SaveC1FxScene
    call DispatchC1Fx
    call RestoreC1FxView
    pop af
    call PlayAudio
    pop af
    ldh [hChangePos], a
    pop af
    ldh [hItemSlot], a
    pop af
    ret
