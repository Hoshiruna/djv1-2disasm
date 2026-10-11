
; Below six, add one loaded round if BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncGun1Ammo:
IncC1Count0:


    ld a, [wGun1Ammo]
    cp $06
    jr nc, jr_000_2cd9

    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2cd5

    ld a, [wGun1Ammo]
    inc a
    ld [wGun1Ammo], a

jr_000_2cd5:
    call SetResult
    ret


jr_000_2cd9:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret

; Consume a loaded round when available and set the result; at zero, clear the result.
DecGun1Ammo:
DecC1Count0:


    ld a, [wGun1Ammo]
    cp $00
    jr z, jr_000_2cf1

    dec a
    ld [wGun1Ammo], a
    call SetResult
    ret


jr_000_2cf1:
    call ClearResult
    ret

; Below six, add one loaded round if BULLET2 is nonzero and set the result; keep the original flag $b1/item $4b branch.
IncGun3Ammo:
IncC1Count2:


    ld a, [wGun3Ammo]
    cp $06
    jr nc, jr_000_2d28

    ld a, [wBullet2Count]
    cp $00
    jr z, jr_000_2d1b

    ld a, [wGun3Ammo]
    inc a
    ld [wGun3Ammo], a
    ld a, $b1
    call ReadObjFlag

Jump_000_2d0f:
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2d1f

    ld a, $4b
    call ClearItemFlag

jr_000_2d1b:
    call SetResult
    ret


jr_000_2d1f:
    ld a, $b1
    call SetObjFlag
    call SetResult
    ret


jr_000_2d28:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret

; Consume a loaded round when available and set the result; keep the pre-decrement count in A.
DecGun3Ammo:
DecC1Count2:


    call ClearResult
    ld a, [wGun3Ammo]
    cp $00
    jr z, jr_000_2d47

    ld d, a
    ld a, [wGun3Ammo]
    dec a
    ld [wGun3Ammo], a
    ld a, d
    call SetResult

jr_000_2d47:
    ret

; Below six, add one loaded round if BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncGun2Ammo:
IncC1Count1:


    ld a, [wGun2Ammo]
    cp $06
    jr nc, jr_000_2d61

    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2d5d

    ld a, [wGun2Ammo]
    inc a
    ld [wGun2Ammo], a

jr_000_2d5d:
    call SetResult
    ret


jr_000_2d61:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret

; Consume a loaded round when available and set the result; keep the pre-decrement count in A.
DecGun2Ammo:
DecC1Count1:


    call ClearResult
    ld a, [wGun2Ammo]
    cp $00
    jr z, jr_000_2d80

    ld d, a
    ld a, [wGun2Ammo]
    dec a
    ld [wGun2Ammo], a
    ld a, d
    call SetResult

jr_000_2d80:
    ret
