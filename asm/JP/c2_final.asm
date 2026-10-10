
; Run the original final dialogue, effects and animations, call the ending display, then remain in the existing loop.
PlayC2Final:


Jump_003_577b:
jr_003_577b:
    xor a
    call PlayAudio
    ld a, $d3
    call ShowMsg1
    ld a, $11
    call SwitchC2Fx
    ld a, $d5
    call ShowMsg1
    ld a, $09
    call PlayAudio
    ld a, $12
    call SwitchC2Fx
    ld a, $d8
    call ShowMsg1
    ld a, $13
    call SwitchC2Fx
    ld a, $28
    call PlayAudio
    call PlayC2FinalAnim
    ld a, $09
    call PlayAudio
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, $aa
    call SetObjFlag
    ld a, $e7
    call ShowMsg1
    ld a, $aa
    call ClearObjFlag
    ld a, $12
    call SwitchC2Fx
    ld a, $ab
    call SetObjFlag
    call AnimateC2FxObjs
    ld a, $e8
    call ShowMsg1
    ld a, $ab
    call ClearObjFlag
    ld a, $02
    call PlayAudio
    ld a, $14
    call SwitchC2Fx
    ld a, $78
    call WaitTicks
    ld a, $eb
    call ShowMsg1
    call ResumeTextUI
    ld a, $78
    call WaitTicks
    call PlayEndCredits

jr_003_57fb:
    jr jr_003_57fb
