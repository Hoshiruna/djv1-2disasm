
; Draw rectangle state one, wait sixty ticks, then draw state zero.
MapPulse10:
    ld a, $01
    call DrawMapPulse
    ld a, $3c
    call WaitTicks
    xor a
    call DrawMapPulse
    ret

; Draw rectangle state two, wait forty ticks, draw state three, and wait twenty ticks.
MapPulse23:


    ld a, $02
    call DrawMapPulse
    ld a, $28
    call WaitTicks
    ld a, $03
    call DrawMapPulse
    ld a, $14
    call WaitTicks
    ret

; Queue the map rectangle selected by A, submit it, and wait one frame.
DrawMapPulse:


Call_029_690d:
    ld l, a
    ld h, $00
    add hl, hl
    push hl
    ld bc, MapPulseDests
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ld de, MapPulsePtrs
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call QueueMapRect
    call SubmitMapQueue
    call WaitFrame
    ret

MapPulseDests:
    dw $9860, $9860, $9846, $9846

MapPulsePtrs:
    dw C2Patch32+1, C2Patch33+1, C2Patch0A+1, C2Patch0B+1
