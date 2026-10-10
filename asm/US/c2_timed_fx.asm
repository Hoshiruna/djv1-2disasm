
; When object flag $34 or $3e is set, increment counter eleven and run the original group-dependent effect sequence only at $34.
StepC2TimedFx:

Call_003_5649:
    ld a, $34
    call ReadObjFlag
    jr nz, jr_003_5656

    ld a, $3e
    call ReadObjFlag
    ret z

jr_003_5656:
    ld a, [wC2Counters+11]
    inc a
    ld [wC2Counters+11], a
    cp $34
    ret nz

    ld a, $3e
    call ReadObjFlag
    jr nz, jr_003_56a6

    call C2Fx6Msg94
    ld a, $78
    call WaitTicks
    ld a, $ae
    call ShowMsg1
    ld a, $3c
    call WaitTicks
    call C2Fx11Cue10
    ld a, $b9
    call ShowMsg1

; Resume text UI, set event bit five, then enter PlayExitEffect.
EndC2TimedFx:

Jump_003_5681:
jr_003_5681:
    call ResumeTextUI
    call SetC2Event5
    jp PlayExitEffect

; Play audio $10, then switch to effect $11.
C2Fx11Cue10:


Call_003_568a:
    ld a, $10
    call PlayAudio
    ld a, $11
    jp SwitchC2Fx

; Reset object scrolling, show message $94 in stream one, begin effect six and play audio nine.
C2Fx6Msg94:


Call_003_5694:
    call ResetObjScroll
    ld a, $94
    call ShowMsg1
    ld a, $06
    call BeginC2Fx
    ld a, $09
    jp PlayAudio


jr_003_56a6:
    ld a, [wGroupData+25]
    cp $ff
    jr nz, jr_003_56c9

    call C2Fx6Msg94
    ld a, $78
    call WaitTicks
    ld a, $33
    call ShowMsg3
    ld a, $3c
    call WaitTicks
    call C2Fx11Cue10
    ld a, $42
    call ShowMsg3
    jr jr_003_5681

jr_003_56c9:
    call TestC2Absent
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_5701

    call ResetObjScroll
    ld a, $c4
    call ShowMsg1
    call C2Fx10Cue9
    ld a, $78
    call WaitTicks
    ld a, $c7
    call ShowMsg1
    ld a, $3c
    call WaitTicks
    call C2Fx11Cue10
    ld a, $ca
    call ShowMsg1
    jr jr_003_5681

; Begin effect $10, then play audio nine.
C2Fx10Cue9:

Call_003_56f7:
    ld a, $10
    call BeginC2Fx
    ld a, $09
    jp PlayAudio


jr_003_5701:
    call TestC2Required
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_5730

    call ResetObjScroll
    ld a, $c4
    call ShowMsg1
    call C2Fx10Cue9
    ld a, $78
    call WaitTicks
    ld a, $ce
    call ShowMsg1
    ld a, $3c
    call WaitTicks
    call C2Fx11Cue10
    ld a, $f0
    call ShowMsg1
    jp EndC2TimedFx


jr_003_5730:
    ld a, [wC2Counters+11]
    cp $52
    ret nc

    call ResetObjScroll
    call RepeatCue10
    ld a, $09
    call PlayAudio
    ld a, $d1
    call ShowMsg1
    ld a, $11
    call BeginC2Fx
    ld a, $3c
    call WaitTicks
    ld a, $43
    call ShowMsg3
    jp EndC2TimedFx
