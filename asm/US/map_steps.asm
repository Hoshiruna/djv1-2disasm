
; Draw steps one through twelve, submitting each map rectangle and waiting eight ticks.
RunMapSteps:

    ld e, $01

; Queue the next forward step, submit its rectangle, and wait eight ticks.
MapStepsNextForward:
jr_029_6888:
    ld a, e
    push de
    call QueueMapStep
    call SubmitMapQueue
    ld a, $08
    call WaitTicks
    pop de
    inc e
    ld a, $0d
    cp e
    jr nz, MapStepsNextForward

    ret

; Draw steps twelve through zero, submitting each map rectangle and waiting eight ticks.
ReverseMapSteps:


    ld e, $0c

; Queue the next reverse step through zero, submit it, and wait eight ticks.
MapStepsNextReverse:
jr_029_689f:
    ld a, e
    push de
    call QueueMapStep
    call SubmitMapQueue
    ld a, $08
    call WaitTicks
    pop de
    dec e
    ld a, $ff
    cp e
    jr nz, MapStepsNextReverse

    ret

; Select the destination and source for A, skip the source prefix byte, and queue its map rectangle.
QueueMapStep:


Call_029_68b4:
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, MapStepDests
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    push bc
    ld bc, MapStepPtrs
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    pop bc
    call QueueMapRect
    ret

MapStepDests:
    dw $982b, $982a, $9829, $9828, $9827, $9826, $9825, $9824, $9823, $9822, $9822, $9822, $9822
