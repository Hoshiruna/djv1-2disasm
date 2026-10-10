
; In rooms $62/$63 or $66..$a0, increment counter three and retain events at eight, sixteen, thirty-two and forty.
StepC2RangeTimer:


Call_003_5e3d:
    ld a, [wRoomId]
    cp $62
    jr z, jr_003_5e4e

    cp $63
    jr z, jr_003_5e4e

    cp $66
    ret c

    cp $a1
    ret nc

jr_003_5e4e:
    ld a, [wC2Counters+3]
    inc a
    ld [wC2Counters+3], a
    cp $08
    jr z, jr_003_5e66

    cp $10
    jr z, jr_003_5e6b

    cp $20
    jr z, jr_003_5e70

    cp $28
    jr z, jr_003_5ea7

    ret


jr_003_5e66:
    ld a, $d8
    jp ShowMsg0


jr_003_5e6b:
    ld a, $d9
    jp ShowMsg0


jr_003_5e70:
    call ResetObjScroll
    xor a
    call PlayAudio
    ld a, $db
    call ShowMsg0
    ld a, $0f
    call BeginC2Fx
    call LoadC2Pal
    call C2PalNoop
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $dc
    call ShowMsg0
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    ld a, $de
    call ShowMsg0
    jp RoomCueCall


jr_003_5ea7:
    ld a, $09
    call PlayAudio
    ld a, $df
    call ShowMsg0
    ld a, [wC2EventBits]
    or $01
    ld [wC2EventBits], a
    jp PlayExitEffect
