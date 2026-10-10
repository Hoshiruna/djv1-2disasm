
; In rooms $0a/$0e/$0f/$10, increment counter seven and run the original exit sequence at $28.
StepC2FourRooms:

Call_003_5b25:
    ld a, [wRoomId]
    cp $0a
    jr z, jr_003_5b37

    cp $0e
    jr z, jr_003_5b37

    cp $0f
    jr z, jr_003_5b37

    cp $10
    ret nz

jr_003_5b37:
    ld a, [wC2Counters+7]
    inc a
    ld [wC2Counters+7], a
    cp $28
    ret nz

    call ResetObjScroll
    ld a, $6b
    call ShowMsg0
    ld a, $09
    call PlayAudio
    ld a, $0e
    call BeginC2Fx
    ld a, $78
    call WaitTicks

jr_003_5b58:
    ld a, $6c
    call ShowMsg0
    call RepeatCue10
    ld a, $3c
    call WaitTicks
    ld a, $6d
    call ShowMsg0
    ld a, [wC2EventBits]
    or $08
    ld [wC2EventBits], a
    jp PlayExitEffect

; In room $0d, increment counter six; at five run the original state/list-dependent dialogue and room transition.
StepC2Room0D:


Call_003_5b75:
    ld a, [wRoomId]
    cp $0d
    ret nz

    ld a, [wC2Counters+6]
    inc a
    ld [wC2Counters+6], a
    cp $05
    ret nz

    call ResetObjScroll
    call ScriptHoldText
    ld a, $0d
    call ReadStateBit
    jr z, jr_003_5ba1

    ld a, $a8
    call ShowMsg2
    ld a, $12
    call PlayAudio
    ld a, $0d
    call ClearStateView

jr_003_5ba1:
    xor a
    call PlayAudio
    ld a, $a9
    call ShowMsg2
    ld a, $12
    call PlayAudio
    ld a, $0d
    call SetStateDraw
    ld a, $aa
    call ShowMsg2
    call BeginC2Fx6
    ld a, $78
    call WaitTicks
    ld a, $a6
    call ShowMsg2
    ld a, $19
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_5c54

    ld a, $86
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr z, jr_003_5beb

    ld a, $19
    call ReadItemFlag
    jr z, jr_003_5c2e

jr_003_5beb:
    ld a, $18
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr nz, jr_003_5c14

    ld a, $ab
    call ShowMsg2
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    jp PlayExitEffect


jr_003_5c14:
    ld a, $ac
    call ShowMsg2
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    jp PlayExitEffect


jr_003_5c2e:
    ld a, $ad
    call ShowMsg2
    call ResumeTextUI
    call FlushChangesCall
    ld a, $04
    ld [wArg0], a
    ld a, $06
    ld [wArg1], a
    call AddChange
    ld a, $01
    ld a, $19
    ld [wArg0], a
    call DropHeadValue
    ld a, $01
    jr jr_003_5c64

jr_003_5c54:
    ld a, $ad
    call ShowMsg2
    call ResumeTextUI
    call DropFoundList
    ld a, $01
    call WaitTicks

jr_003_5c64:
    ld a, $19
    call SetItemState
    ld a, $18
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr z, jr_003_5c87

    call DropFoundList
    ld a, $01
    call WaitTicks
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

jr_003_5c87:
    ld a, $89
    ld [wFindListValue], a
    call FindListValue
    ld a, [wStateResult]
    and $01
    jr z, jr_003_5ca5

    call DropFoundList
    ld a, $01
    call WaitTicks
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

jr_003_5ca5:
    ld a, $47
    call EnterRoom
    ld a, $77
    call SetObjFlag
    call RoomCueCall
    ret
