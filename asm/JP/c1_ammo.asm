
; Below six, add one loaded round if BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncGun1Ammo:
IncC1Count0:


    ld a, [wGun1Ammo]
    cp $06
    jr nc, jr_000_2e29

    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2e25

    ld a, [wGun1Ammo]
    inc a
    ld [wGun1Ammo], a

jr_000_2e25:
    call SetResult
    ret


jr_000_2e29:
    ld a, $80
    call ClearObjFlag

Call_000_2e2e:
    call ClearResult
    ret

; Consume a loaded round when available and set the result; at zero, clear the result.
DecGun1Ammo:
DecC1Count0:


    ld a, [wGun1Ammo]
    cp $00
    jr z, jr_000_2e41

    dec a
    ld [wGun1Ammo], a
    call SetResult
    ret


jr_000_2e41:
    call ClearResult
    ret

; Below six, add one loaded round if BULLET2 is nonzero and set the result; keep the original flag $b1/item $4b branch.
IncGun3Ammo:
IncC1Count2:


    ld a, [wGun3Ammo]
    cp $06
    jr nc, jr_000_2e78

    ld a, [wBullet2Count]
    cp $00
    jr z, jr_000_2e6b

    ld a, [wGun3Ammo]
    inc a
    ld [wGun3Ammo], a
    ld a, $b1
    call ReadObjFlag

Jump_000_2e5f:
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2e6f

Jump_000_2e66:
    ld a, $4b
    call ClearItemFlag

jr_000_2e6b:
    call SetResult

Call_000_2e6e:
    ret


jr_000_2e6f:
    ld a, $b1
    call SetObjFlag
    call SetResult
    ret


jr_000_2e78:
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
    jr z, jr_000_2e97

    ld d, a
    ld a, [wGun3Ammo]
    dec a
    ld [wGun3Ammo], a
    ld a, d
    call SetResult

jr_000_2e97:
    ret

; Below six, add one loaded round if BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncGun2Ammo:
IncC1Count1:


    ld a, [wGun2Ammo]
    cp $06
    jr nc, jr_000_2eb1

    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2ead

    ld a, [wGun2Ammo]
    inc a
    ld [wGun2Ammo], a

jr_000_2ead:
    call SetResult
    ret


jr_000_2eb1:
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
    jr z, jr_000_2ed0

    ld d, a
    ld a, [wGun2Ammo]
    dec a
    ld [wGun2Ammo], a

Call_000_2ecc:
    ld a, d
    call SetResult

jr_000_2ed0:
    ret
