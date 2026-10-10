
; Add one script argument to the BULLET1 count with eight-bit wrap and write its name and packed selection.
AddBullet1Arg:


Call_000_2bef:
    call ReadArg
    ld hl, wBullet1Count
    add [hl]
    ld [hl], a
    ld a, $08
    ld [wListName], a
    ld [wListPacked], a

Call_000_2bff:
    ret

; Add the argument to BULLET1, refresh its list group, hide the hit object, and set the result.
PickBullet1:


    call AddBullet1Arg

Jump_000_2c03:
    ld a, $08
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    ld a, [wHitObj]
    call ClearObjVisible
    call RefreshObjs
    call SetResult
    ret

; Increment the BULLET2 count with eight-bit wrap and write its name and packed selection.
AddBullet2:


Call_000_2c24:
    ld a, [wBullet2Count]
    inc a
    ld [wBullet2Count], a
    ld a, $2d
    ld [wListName], a
    ld [wListPacked], a
    ret

; Increment BULLET2, refresh its list group, hide the hit object, and set the result.
PickBullet2:


    call AddBullet2
    ld a, $2d
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a

Jump_000_2c48:
    call RefreshListMode
    ld a, [wHitObj]
    call ClearObjVisible
    call RefreshObjs
    call SetResult
    ret

; Consume one BULLET1 and refresh its list group; at zero, clear flag $80, show message $77, and clear the result.
UseBullet1:


    ld a, [wBullet1Count]
    cp $00
    jr z, jr_000_2c7e

Jump_000_2c5f:
    dec a
    ld [wBullet1Count], a
    ld a, $08
    ld [wListName], a
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    call SetResult
    ret


jr_000_2c7e:
    ld a, $80
    call ClearObjFlag
    ld a, $77
    call ShowMsg2
    call ClearResult
    ret

; Consume one BULLET2 and refresh its list group; at zero, clear flag $80, show message $78, and clear the result.
UseBullet2:


    ld a, [wBullet2Count]
    cp $00
    jr z, jr_000_2cb2

    dec a
    ld [wBullet2Count], a
    ld a, $2d
    ld [wListName], a
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    call SetResult
    ret


jr_000_2cb2:
    ld a, $80
    call ClearObjFlag
    ld a, $78
    call ShowMsg2
    call ClearResult
    ret
