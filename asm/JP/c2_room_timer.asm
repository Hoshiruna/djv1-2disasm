
; Skip the listed rooms, rooms at least $42 and scenes $17/$19; otherwise run the timer and random checks.
CheckC2RoomFx:


Call_003_59cf:
    ld hl, C2FxSkipRooms
    ld a, [wRoomId]
    ld e, a
    cp $42
    ret nc

jr_003_59d9:
    ld a, [hl+]
    cp e
    ret z

    cp $ff
    jr nz, jr_003_59d9

    ld a, [wSceneId]
    cp $17
    ret z

    cp $19
    ret z

    call StepC2RoomTimer
    call RandomC2RoomFx
    ret

; With flags $34/$3e clear, advance counter eight; at $85 reset it, increment counter nine and dispatch the original six-entry table.
StepC2RoomTimer:


Call_003_59f0:
    ld a, $34
    call ReadObjFlag
    ret nz

    ld a, $3e
    call ReadObjFlag
    ret nz

    ld a, [wC2Counters+8]
    inc a
    ld [wC2Counters+8], a
    cp $85
    ret nz

    call ResetObjScroll
    call ScriptHoldText
    xor a
    ld [wC2Counters+8], a
    ld a, [wC2Counters+9]
    inc a
    ld [wC2Counters+9], a
    dec a
    rst RST_00

C2RoomFxCalls:
    dw C2TimedMsg0D
    dw C2TimedMsg0E
    dw C2TimedMsg0F
    dw C2TimedMsg10
    dw C2TimedMsg11
    dw C2TimedMsg13

; Show stream-one message $0c, begin effect $10, then play audio nine.
C2Fx10Msg0C:

Call_003_5a25:
    ld a, $0c
    call ShowMsg1
    ld a, $10
    call BeginC2Fx
    ld a, $09
    call PlayAudio
    ret

; Begin the shared effect, wait 120 ticks and show message $0d before the shared finish.
C2TimedMsg0D:


    call C2Fx10Msg0C
    ld a, $78
    call WaitTicks
    ld a, $0d
    call ShowMsg1
    jr jr_003_5a7e

; Begin the shared effect, wait 120 ticks and show message $0e before the shared finish.
C2TimedMsg0E:

    call C2Fx10Msg0C
    ld a, $78
    call WaitTicks
    ld a, $0e
    call ShowMsg1
    jr jr_003_5a7e

; Begin the shared effect, wait 120 ticks and show message $0f before the shared finish.
C2TimedMsg0F:

    call C2Fx10Msg0C
    ld a, $78
    call WaitTicks
    ld a, $0f
    call ShowMsg1
    jr jr_003_5a7e

; Begin the shared effect, wait 120 ticks and show message $10 before the shared finish.
C2TimedMsg10:

    call C2Fx10Msg0C
    ld a, $78
    call WaitTicks
    ld a, $10
    call ShowMsg1
    jr jr_003_5a7e

; Begin the shared effect, wait 120 ticks and show message $11, then continue into the shared finish.
C2TimedMsg11:

    call C2Fx10Msg0C
    ld a, $78
    call WaitTicks
    ld a, $11
    call ShowMsg1

; Show message $12, resume text UI, wait sixty ticks, restore the effect and select room audio.
FinishC2RoomFx:

jr_003_5a7e:
    ld a, $12
    call ShowMsg1
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    call RoomCueCall
    ret

; Show timed message $13 and stream-zero message $d7, set event bit four and enter PlayExitEffect.
C2TimedMsg13:


    call C2Fx10Msg0C
    ld a, $78
    call WaitTicks
    ld a, $13
    call ShowMsg1
    ld a, $10
    call PlayAudio
    ld a, $d7
    call ShowMsg0
    call ResumeTextUI
    ld a, [wC2EventBits]
    or $10
    ld [wC2EventBits], a
    jp PlayExitEffect
