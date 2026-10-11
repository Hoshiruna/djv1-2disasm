
; On phase four, set train access; at its platform, announce arrival and refresh the train view.
TrainArrive:
C2SchedPhase4:


    call SetTrainAccess
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    ret nz

    call ResetObjScroll
    ld a, $2f
    call ShowMsg1
    ld a, $14
    call PlayAudio
    call MapStepsBank
    ld a, $1e
    call WaitTicks
    ld a, $12
    call PlayAudio
    call RefreshStateView
    call DrawC2Panel
    call RoomCueCall
    ret
