
; Dispatch the current effect index through the original twenty-seven-entry end table.
DispatchC1FxEnd:


Call_002_71fd:
    ld a, [wFxId]
    rst RST_00

C1FxEndCalls:
    dw C1FxEndNone ; C1FxIdSlots ($00)
    dw C1FxEndNone ; C1FxIdDogMemory ($01)
    dw C1FxEndNone ; C1FxIdMotherMemory ($02)
    dw C1FxEndNone ; C1FxIdPriestMemory ($03)
    dw C1FxEndNone ; C1FxIdSuzyMemory ($04)
    dw C1FxEndNone ; C1FxIdMirrorReflection ($05)
    dw C1FxEndImpact ; C1FxIdImpact ($06)
    dw C1FxEndGunshot ; C1FxIdGunshot ($07)
    dw C1FxEndExplosion ; C1FxIdExplosion ($08)
    dw C1FxEndSkip ; C1FxIdSnapshot ($09)
    dw C1FxEndSkip ; C1FxIdPosterUncertain ($0a)
    dw C1FxEndSkip ; C1FxIdPosterRecognized ($0b)
    dw C1FxEndSkip ; C1FxIdRobbingMugger ($0c)
    dw C1FxEndSkip ; C1FxIdArmedWomanEncounter ($0d)
    dw C1FxEndSkip ; C1FxIdAlligatorEncounter ($0e)
    dw C1FxEndSkip ; C1FxIdBumEncounter ($0f)
    dw C1FxEndSkip ; C1FxIdMuggerJoeStreet ($10)
    dw C1FxEndSkip ; C1FxIdMuggerNewsstand ($11)
    dw C1FxEndSkip ; C1FxIdMuggerGunShopStreet ($12)
    dw C1FxEndSkip ; C1FxIdMuggerPeoria ($13)
    dw C1FxEndArrestAudio ; C1FxIdArrest ($14)
    dw C1FxEndDefeatAudio ; C1FxIdDefeat ($15)
    dw C1FxEndSkip ; C1FxIdArmedWomanFires ($16)
    dw C1FxEndCaseSolved ; C1FxIdCaseSolved ($17)
    dw C1FxEndSkip ; C1FxIdHeadacheUpstairs ($18)
    dw C1FxEndSkip ; C1FxIdHeadacheOffice ($19)
    dw C1FxEndSkip ; C1FxIdRubberDuckMemory ($1a)

; Return immediately for the first group of effect end entries.
C1FxEndNone:
    ret

; Run the impact effect from the end table.
C1FxEndImpact:
C1FxEnd20:


    jp C1FxImpact

; Run the gunshot effect from the end table.
C1FxEndGunshot:
C1FxEnd1A:


    jp C1FxGunshot

; Run the explosion effect from the end table.
C1FxEndExplosion:
C1FxEnd1F:


    jp C1FxExplosion

; Return immediately for the second group of effect end entries.
C1FxEndSkip:


    ret

; Play cues zero and $28, wait one hundred twenty ticks, then play zero, wait one frame, and play cue four.
C1FxEndArrestAudio:
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
C1FxEndDefeatAudio:
C1FxEnd04:


    ld a, $04
    call PlayAudio
    ret

; Run the solved-case sequence and return.
C1FxEndCaseSolved:
C1FxEndFinal:


    call C1FxCaseSolved
    ret
