
; Run the original event checks in order; return when state bit six is set, except between the final two checks.
StepC2Events:


    call TestC2Exit
    ret nz

    call StepC2Time
    call TestC2Exit
    ret nz

    call CheckC2Watch
    call TestC2Exit
    ret nz

    call StepC2End
    call TestC2Exit
    ret nz

    call StepC2Lamp
    call TestC2Exit
    ret nz

    call StepC2Heat
    call TestC2Exit
    ret nz

    call StepC2Goons
    call TestC2Exit
    ret nz

    call StepC2Hunt
    call TestC2Exit
    ret nz

    call StepC2Hamper
    call TestC2Exit
    ret nz

    call StepC2Guard
    call TestC2Exit
    ret nz

    call StepC2Doors
    call StepC2BedDoor
    ret

; Return A = state bit six and leave Z set only when the bit is clear.
TestC2Exit:


Call_003_5604:
    ld a, [wStateResult]
    and $40
    ret
