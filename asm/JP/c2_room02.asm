
; In room two, increment counter one; at two play audio $12, show stream-one message three and clear state bit one.
StepC2Room02:

Call_003_5f1e:
    ld a, [wRoomId]
    cp $02
    ret nz

    ld a, [wC2Counters+1]
    inc a
    ld [wC2Counters+1], a
    cp $02
    ret nz

    ld a, $12
    call PlayAudio
    ld a, $03
    call ShowMsg1
    ld a, $01
    call ClearStateBit
    ret
