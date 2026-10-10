
; Dispatch the current effect index through the original twenty-seven-entry end table.
DispatchC1FxEnd:


Call_002_71fd:
    ld a, [wFxId]
    rst RST_00

C1FxEndCalls:
    dw C1FxEndNone
    dw C1FxEndNone
    dw C1FxEndNone
    dw C1FxEndNone
    dw C1FxEndNone
    dw C1FxEndNone
    dw C1FxEnd20
    dw C1FxEnd1A
    dw C1FxEnd1F
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEnd28
    dw C1FxEnd04
    dw C1FxEndSkip
    dw C1FxEndFinal
    dw C1FxEndSkip
    dw C1FxEndSkip
    dw C1FxEndSkip

; Return immediately for the first group of effect end entries.
C1FxEndNone:
    ret

; Jump to the existing cue-$20 effect.
C1FxEnd20:


    jp C1FxCue20

; Jump to the existing cue-$1a effect.
C1FxEnd1A:


    jp C1FxCue1A

; Jump to the existing cue-$1f effect.
C1FxEnd1F:


    jp C1FxCue1F

; Return immediately for the second group of effect end entries.
C1FxEndSkip:


    ret

; Play cues zero and $28, wait one hundred twenty ticks, then play zero, wait one frame, and play cue four.
C1FxEnd28:


    xor a
    call PlayAudio
    ld a, $28
    call PlayAudio
    ld a, $78
    call WaitTicks
    xor a
    call PlayAudio
    call WaitFrame
    ld a, $04
    call PlayAudio
    ret

; Play cue four and return.
C1FxEnd04:


    ld a, $04
    call PlayAudio
    ret

; Call the existing final effect and return.
C1FxEndFinal:


    call C1FxFinal
    ret
