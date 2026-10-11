
; Set train access; announce imminent departure when passenger clearance is clear and call all aboard at the platform.
TrainLastCall:
C2SchedMsg7D:


    call SetTrainAccess
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, jr_003_6493

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, jr_003_6493

    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    jr z, jr_003_64a9

    ret


jr_003_6493:
    ld hl, TrainPassFlags
    add hl, bc
    ld a, [hl]
    call ReadObjFlag
    cp $00
    ret nz

    ld a, $77
    call ShowMsg2
    ld a, $7d
    call ShowMsg2
    ret


jr_003_64a9:
    ld a, $1b
    call PlayAudio
    call ScriptHoldText
    ld a, $30
    call ShowMsg1
    ld a, $2b
    call ShowMsg1
    call ResumeTextUI
    ret

; Set train access; in the paired train rooms, warn passengers whose clearance flag is clear.
TrainFareWarn:
C2SchedMsg7E:


    call SetTrainAccess
    ld a, [wRoomId]
    ld hl, TrainCarA
    add hl, bc
    cp [hl]
    jr z, jr_003_64d4

    ld hl, TrainCarB
    add hl, bc
    cp [hl]
    jr z, jr_003_64d4

    ret


jr_003_64d4:
    ld hl, TrainPassFlags
    add hl, bc
    ld a, [hl]
    push bc
    call ReadObjFlag
    pop bc
    cp $00
    ret nz

    call ScriptHoldText
    ld a, $77
    call ShowMsg2
    ld a, $7e
    call ShowMsg2
    call ResumeTextUI
    ret
