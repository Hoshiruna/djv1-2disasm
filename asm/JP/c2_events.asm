
; Run the original event checks in order; return when state bit six is set, except between the final two checks.
StepC2Events:


    call TestC2Exit
    ret nz

    call StepC2RoomTick
    call TestC2Exit
    ret nz

    call CheckC2RoomFx
    call TestC2Exit
    ret nz

    call StepC2TimedFx
    call TestC2Exit
    ret nz

    call StepC2PalTimer
    call TestC2Exit
    ret nz

    call StepC2RangeTimer
    call TestC2Exit
    ret nz

    call StepC2ThreeRooms
    call TestC2Exit
    ret nz

    call StepC2Flag84Timer
    call TestC2Exit
    ret nz

    call StepC2Room0D
    call TestC2Exit
    ret nz

    call StepC2FourRooms
    call TestC2Exit
    ret nz

    call StepC2StateTimer
    call StepC2Room02
    ret

; Return A = state bit six and leave Z set only when the bit is clear.
TestC2Exit:


Call_003_5604:
    ld a, [wStateResult]
    and $40
    ret
