
; Below six, add one loaded round if BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncGun1Ammo:
IncC1Count0:


    ld a, [wGun1Ammo]
    cp $06
    jr nc, C1Gun1LoadFull

    ld a, [wBullet1Count]
    cp $00
    jr z, C1Gun1LoadResult

    ld a, [wGun1Ammo]
    inc a
    ld [wGun1Ammo], a

; Set the result after the first-gun reserve-count check.
C1Gun1LoadResult:
jr_000_2cd5:
    call SetResult
    ret


; Clear the alternate-target bypass and result when the first gun is full.
C1Gun1LoadFull:
jr_000_2cd9:
    ld a, C1AltTargetBypass
    call ClearObjFlag
    call ClearResult
    ret

; Consume a loaded round when available and set the result; at zero, clear the result.
DecGun1Ammo:
DecC1Count0:


    ld a, [wGun1Ammo]
    cp $00
    jr z, C1Gun1FireEmpty

    dec a
    ld [wGun1Ammo], a
    call SetResult
    ret


; Clear the result when the first gun has no loaded rounds.
C1Gun1FireEmpty:
jr_000_2cf1:
    call ClearResult
    ret

; Below six, add one loaded round if BULLET2 is nonzero and set the result; keep the original flag $b1/item $4b branch.
IncGun3Ammo:
IncC1Count2:


    ld a, [wGun3Ammo]
    cp $06
    jr nc, C1Gun3LoadFull

    ld a, [wBullet2Count]
    cp $00
    jr z, C1Gun3LoadResult

    ld a, [wGun3Ammo]
    inc a
    ld [wGun3Ammo], a
    ld a, $b1
    call ReadObjFlag

Jump_000_2d0f:
    ld a, [wStateResult]
    and $01
    jr nz, C1Gun3LoadFlagSet

    ld a, $4b
    call ClearItemFlag

; Set the result after the third-gun loading checks.
C1Gun3LoadResult:
jr_000_2d1b:
    call SetResult
    ret


; Retain the original branch that sets an already-tested flag $b1.
C1Gun3LoadFlagSet:
jr_000_2d1f:
    ld a, $b1
    call SetObjFlag
    call SetResult
    ret


; Clear the alternate-target bypass and result when the third gun is full.
C1Gun3LoadFull:
jr_000_2d28:
    ld a, C1AltTargetBypass
    call ClearObjFlag
    call ClearResult
    ret

; Consume a loaded round when available and set the result; keep the pre-decrement count in A.
DecGun3Ammo:
DecC1Count2:


    call ClearResult
    ld a, [wGun3Ammo]
    cp $00
    jr z, C1Gun3FireReturn

    ld d, a
    ld a, [wGun3Ammo]
    dec a
    ld [wGun3Ammo], a
    ld a, d
    call SetResult

; Return after the third-gun round-consumption check.
C1Gun3FireReturn:
jr_000_2d47:
    ret

; Below six, add one loaded round if BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncGun2Ammo:
IncC1Count1:


    ld a, [wGun2Ammo]
    cp $06
    jr nc, C1Gun2LoadFull

    ld a, [wBullet1Count]
    cp $00
    jr z, C1Gun2LoadResult

    ld a, [wGun2Ammo]
    inc a
    ld [wGun2Ammo], a

; Set the result after the second-gun reserve-count check.
C1Gun2LoadResult:
jr_000_2d5d:
    call SetResult
    ret


; Clear the alternate-target bypass and result when the second gun is full.
C1Gun2LoadFull:
jr_000_2d61:
    ld a, C1AltTargetBypass
    call ClearObjFlag
    call ClearResult
    ret

; Consume a loaded round when available and set the result; keep the pre-decrement count in A.
DecGun2Ammo:
DecC1Count1:


    call ClearResult
    ld a, [wGun2Ammo]
    cp $00
    jr z, C1Gun2FireReturn

    ld d, a
    ld a, [wGun2Ammo]
    dec a
    ld [wGun2Ammo], a
    ld a, d
    call SetResult

; Return after the second-gun round-consumption check.
C1Gun2FireReturn:
jr_000_2d80:
    ret
