
; Read type, ID, and script address tuples until the item matches; type $fe bypasses the item comparison.
MatchItemScript:


jr_000_2c56:
    call ReadArgs4
    ld a, [wArg0]
    cp $fe
    jr z, jr_000_2c81

    ld d, a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2c56

    ld a, [wArg1]
    ld d, a
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_000_2c56

jr_000_2c81:
    ld a, [wArg2]
    ld [wScriptPtr], a
    ld a, [wArg3]
    ld [$c8a6], a
    ret
