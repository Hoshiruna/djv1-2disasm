
; With a nonzero category count, clear the first set bullet flag, decrement the count, refresh the selected mode, and retain both failure messages.
UseC2Bullet:


    ld a, [wC2Count1]
    cp $00
    jr nz, jr_003_4f44

    ld a, $2d
    call ShowMsg0
    call ClearResult
    ret


jr_003_4f44:
    ld hl, C2BulletIds

jr_003_4f47:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4f77

    call ReadItemFlag
    jr z, jr_003_4f47

    dec hl
    ld a, [hl]
    call ClearItemFlag
    ld a, $8e
    call ShowMsg1
    call SetResult
    ld a, [wC2Count1]
    dec a
    ld [wC2Count1], a
    ld bc, wSelMode
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wOpByte], a
    call RefreshListMode
    ret


jr_003_4f77:
    ld a, $8f
    call ShowMsg1
    call ClearResult
    ret

; Set the first clear bullet flag and play cue $10; if all six are set, show message $90 and clear the result.
TakeC2Bullet:


    ld hl, C2BulletIds

jr_003_4f83:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4f9b

    call ReadItemFlag
    jr nz, jr_003_4f83

    dec hl
    ld a, [hl]
    call SetItemFlag
    call SetResult
    ld a, $10
    call PlayAudio
    ret


jr_003_4f9b:
    ld a, $90
    call ShowMsg1
    call ClearResult
    ret

; Six BULLET item IDs; $ff ends the table.
C2BulletIds:
    db $55, $56, $57, $58, $59, $5a, $ff
