
; Show train object $a7 only at the platform selected by train index BC.
ShowTrainHere:
ShowC2SchedObj:


Call_003_64f2:
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    ret nz

; Set the train object $a7 visibility bit.
ShowTrainObj:
ShowC2ObjA7:

Call_003_64fb:
    ld a, $a7
    call SetObjVisible
    ret

; Hide train object $a7 only at the platform selected by train index BC.
HideTrainHere:
HideC2SchedObj:


Call_003_6501:
    ld a, [wRoomId]
    ld hl, TrainPlatforms
    add hl, bc
    cp [hl]
    ret nz

    ld a, $a7
    call ClearObjVisible
    ret
