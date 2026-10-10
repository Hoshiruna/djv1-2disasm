
; Match one of twelve room entries by its low seven bits; if its state bit is set, increment counter two and apply the original clear operation at three.
StepC2StateTimer:


Call_003_5ebc:
    ld hl, C2TimerRooms
    ld a, [wRoomId]
    ld e, a
    ld c, $0c

jr_003_5ec5:
    ld a, [hl+]
    and $7f
    cp e
    jr z, jr_003_5ecf

    dec c
    jr nz, jr_003_5ec5

    ret


jr_003_5ecf:
    ld bc, $000b
    add hl, bc
    ld a, [hl]
    call ReadStateBit
    ret z

    ld a, [wC2Counters+2]
    inc a
    ld [wC2Counters+2], a
    cp $03
    ret nz

    ld bc, $fff4
    add hl, bc
    bit 7, [hl]
    jr nz, jr_003_5ef8

    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateView
    ld a, $66
    call ShowMsg1
    ret


jr_003_5ef8:
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    ret

; Room low seven bits select the paired state ID; bit seven selects ClearStateBit.
C2TimerRooms:
    db $02, $07, $83, $0b, $08, $0c, $09, $8d, $0e, $0a, $8f, $90
C2TimerStates:
    db $04, $04, $04, $09, $09, $0c, $0c, $0c, $0e, $0e, $0e, $0e
