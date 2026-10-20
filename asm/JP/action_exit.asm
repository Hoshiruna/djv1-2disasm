
; Set state bit six, show case-two effect ten, play cue seven, wait, show message $4e, and resume the text UI.
PlayExitEffect:

Call_000_2f55:
Jump_000_2f55:
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    ld a, $0a
    ld [wFxId], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call SaveC2Effect
    call PopRomBank
    ld a, $07
    call PlayAudio
    ld a, $78
    call WaitTicks
    ld a, $4e
    call ShowMsg1

; Resume the text UI and wait sixty ticks.
ResumeEffectUi:
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ret

; Reset scrolling, wait one tick, and play the exit effect.
; Discard the opcode-loop CPU return address and finish through EndBankAction.
; Consume no script operand; a following script $ff is left unread.
ExitActionFx:


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    call PlayExitEffect
    pop bc
    jp EndBankAction

; Reset scrolling, wait one tick, and set result bit six.
; Discard the opcode-loop CPU return address and finish through EndBankAction.
; Consume no script operand; a following script $ff is left unread.
ExitActionFlag:


    call ResetObjScroll
    ld a, $01
    call WaitTicks
    ld a, [wStateResult]
    or $40
    ld [wStateResult], a
    pop bc
    jp EndBankAction
