
; With the police uniform worn outside room $41, a random value of seven triggers arrest, bail, and Stogie killing Ace.
CheckC2Uniform:
RandomC2RoomFx:


Call_003_5ab7:
    ld a, C2Uniform
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp $41
    ret z

    call NextRandom
    ldh a, [hRandByte]
    and $07
    xor $07
    ret nz

    call ResetObjScroll
    ld a, $08
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $6d
    call ShowMsg2
    ld a, $3c
    call WaitTicks
    ld a, $09
    call PlayAudio
    ld a, $09
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fd
    call ShowMsg0
    ld a, $3c
    call WaitTicks
    ld a, FxStogie
    call BeginC2Fx
    ld a, $78
    call WaitTicks
    ld a, $fe
    call ShowMsg0
    jp PlayExitEffect

C2FxSkipRooms:
    db $04, $05, $06, $07, $08, $09, $0a, $0d, $0f, $10, $31, $0e, $37, $38, $3a, $3b, $3c, $3d, $3e, $3f, $34, $ff
