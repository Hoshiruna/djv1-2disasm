
; Below six, increment count zero only when BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncC1Count0:


    ld a, [wC1Count0]
    cp $06
    jr nc, jr_000_2cd9

    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2cd5

    ld a, [wC1Count0]
    inc a
    ld [wC1Count0], a

jr_000_2cd5:
    call SetResult
    ret


jr_000_2cd9:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret

; Decrement a nonzero count zero and set the result; at zero, clear the result.
DecC1Count0:


    ld a, [wC1Count0]
    cp $00
    jr z, jr_000_2cf1

    dec a
    ld [wC1Count0], a
    call SetResult
    ret


jr_000_2cf1:
    call ClearResult
    ret

; Below six, increment count two only when BULLET2 is nonzero, retain the flag $b1 and item $4b branch, and set the result.
IncC1Count2:


    ld a, [wC1Count2]
    cp $06
    jr nc, jr_000_2d28

    ld a, [wBullet2Count]
    cp $00
    jr z, jr_000_2d1b

    ld a, [wC1Count2]
    inc a
    ld [wC1Count2], a
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

; Decrement a nonzero count two and set the result, retaining the original pre-decrement value passed in A.
DecC1Count2:


    call ClearResult
    ld a, [wC1Count2]
    cp $00
    jr z, jr_000_2d47

    ld d, a
    ld a, [wC1Count2]
    dec a
    ld [wC1Count2], a
    ld a, d
    call SetResult

jr_000_2d47:
    ret

; Below six, increment count one only when BULLET1 is nonzero and set the result; at six, clear flag $80 and the result.
IncC1Count1:


    ld a, [wC1Count1]
    cp $06
    jr nc, jr_000_2d61

    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2d5d

    ld a, [wC1Count1]
    inc a
    ld [wC1Count1], a

jr_000_2d5d:
    call SetResult
    ret


jr_000_2d61:
    ld a, $80
    call ClearObjFlag
    call ClearResult
    ret

; Decrement a nonzero count one and set the result, retaining the original pre-decrement value passed in A.
DecC1Count1:


    call ClearResult
    ld a, [wC1Count1]
    cp $00
    jr z, jr_000_2d80

    ld d, a
    ld a, [wC1Count1]
    dec a
    ld [wC1Count1], a
    ld a, d
    call SetResult

jr_000_2d80:
    ret
