
; After escape, show the planted-evidence mob war and Chicago epilogue, play the credits, then remain in the ending loop.
WinCase2:
PlayC2Final:


Jump_003_577b:
jr_003_577b:
    xor a
    call PlayAudio
    ld a, $d3
    call ShowMsg1
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $d5
    call ShowMsg1
    ld a, $09
    call PlayAudio
    ld a, FxLuckyDoor
    call SwitchC2Fx
    ld a, $d8
    call ShowMsg1
    ld a, FxCleaners
    call SwitchC2Fx
    ld a, $28
    call PlayAudio
    call PlayMobWar
    ld a, $09
    call PlayAudio
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, C2TextAnim
    call SetObjFlag
    ld a, $e7
    call ShowMsg1
    ld a, C2TextAnim
    call ClearObjFlag
    ld a, FxLuckyDoor
    call SwitchC2Fx
    ld a, $ab
    call SetObjFlag
    call AnimateWarMarks
    ld a, $e8
    call ShowMsg1
    ld a, $ab
    call ClearObjFlag
    ld a, $02
    call PlayAudio
    ld a, FxVegasNews1
    call SwitchC2Fx
    ld a, $78
    call WaitTicks
    ld a, $eb
    call ShowMsg1
    call ResumeTextUI
    ld a, $78
    call WaitTicks
    call PlayEndCredits

; Remain in the final ending loop.
C2EndingHold:
jr_003_57fb:
    jr C2EndingHold
