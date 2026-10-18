
; Read type, ID, and script address tuples until the item matches; type $fe bypasses the item comparison.
MatchItemScript:


jr_000_2b06:
    call ReadArgs4
    ld a, [wArg0]
    cp $fe
    jr z, MatchItemApplyBranch

    ld d, a
    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, MatchItemScript

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
    jr nz, MatchItemScript

; Replace the script pointer with the matching table target.
MatchItemApplyBranch:
jr_000_2b31:
    ld a, [wArg2]
    ld [wScriptPtr], a

Call_000_2b37:
    ld a, [wArg3]
    ld [wScriptPtr+1], a
    ret
