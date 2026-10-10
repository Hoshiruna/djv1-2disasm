
; With flag $4d set, increment counter ten; at $1d stage the room palette, and at or above $3b run the original follow-up branch.
StepC2PalTimer:

Call_003_591b:
    ld a, $4d
    call ReadObjFlag
    ret z

    ld a, [wC2Counters+10]
    inc a
    cp $1d
    jr z, jr_003_5931

    cp $3b
    jr nc, jr_003_595d

    ld [wC2Counters+10], a
    ret


jr_003_5931:
    ld [wC2Counters+10], a
    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_5953

    call ResetObjScroll
    ld a, [wC2TimedPal]
    ld [wScenePalId], a
    call C2PalNoop
    call LoadC2Pal
    call PickC2Scene
    call ReloadScene

jr_003_5953:
    ld a, $86
    call ShowMsg1
    ld a, $a8
    jp SetObjFlag


jr_003_595d:
    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_59bb

    ld a, [wRoomId]
    cp $38
    jr z, jr_003_59bb

    cp $3a
    jr z, jr_003_59bb

    call ResetObjScroll
    ld a, $4d
    call ClearObjFlag
    ld a, $49
    ld [wScenePalId], a
    call C2PalNoop
    call LoadC2Pal
    call PickC2Scene
    call ReloadScene
    call ScriptHoldText
    ld a, $88
    call ShowMsg1
    ld a, $09
    call PlayAudio
    ld a, $e9
    call ShowMsg1
    ld a, $17
    call PlayAudio
    call ScriptNoop
    ld a, $3b
    call ShowMsg3
    call ResumeTextUI
    call ClearC2PalFlags
    ld a, [wC2EventBits]
    or $80
    ld [wC2EventBits], a
    jp PlayExitEffect


jr_003_59bb:
    ld a, $88
    call ShowMsg1

; Clear object flags $76, $4d and $4e in order.
ClearC2PalFlags:

Call_003_59c0:
    ld a, $76
    call ClearObjFlag
    ld a, $4d
    call ClearObjFlag
    ld a, $4e
    jp ClearObjFlag
