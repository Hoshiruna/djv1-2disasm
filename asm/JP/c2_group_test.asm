
; Set the result if all three required bytes occur within group-three offsets one through seven.
TestC2Required:


Call_003_560a:
    ld bc, C2Required

jr_003_560d:
    ld a, [bc]
    ld hl, wGroupData+25

jr_003_5611:
    cp [hl]
    jr z, jr_003_561f

    inc hl
    ld e, a
    ld a, $5b
    cp l
    ld a, e
    jr nz, jr_003_5611

    jp ClearResult


jr_003_561f:
    inc bc
    ld a, $2b
    cp c
    jr nz, jr_003_560d

    jp SetResult

C2Required:
    db $4d, $2f, $39

; Set the result if neither forbidden byte occurs within group-three offsets one through seven.
TestC2Absent:

Call_003_562b:
    ld bc, C2Forbidden

jr_003_562e:
    ld a, [bc]
    ld hl, wGroupData+25

jr_003_5632:
    cp [hl]
    jp z, ClearResult

    inc hl
    ld e, a
    ld a, $5b
    cp l
    ld a, e
    jr nz, jr_003_5632

    inc bc
    ld a, $49
    cp c
    jr nz, jr_003_562e

    jp SetResult

C2Forbidden:
    db $10, $44
