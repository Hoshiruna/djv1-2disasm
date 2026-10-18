
; With a nonzero inventory count, clear the first loaded-bullet flag and consume one bullet.
; Refresh the selected list mode and retain both failure messages.
UseC2Bullet:


    ld a, [wC2Bullets]
    cp $00
    jr nz, C2BulletUseReady

    ld a, $2d
    call ShowMsg0
    call ClearResult
    ret


; Start scanning loaded bullet flags when inventory count is nonzero.
C2BulletUseReady:
jr_003_4f44:
    ld hl, C2BulletIds

; Scan the six bullet flags for the first loaded slot.
C2BulletFindLoaded:
jr_003_4f47:
    ld a, [hl+]
    cp $ff
    jr z, C2BulletNoLoaded

    call ReadItemFlag
    jr z, C2BulletFindLoaded

    dec hl
    ld a, [hl]
    call ClearItemFlag
    ld a, $8e
    call ShowMsg1
    call SetResult
    ld a, [wC2Bullets]
    dec a
    ld [wC2Bullets], a
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


; Report that no loaded bullet flag is set.
C2BulletNoLoaded:
jr_003_4f77:
    ld a, $8f
    call ShowMsg1
    call ClearResult
    ret

; Mark the first unloaded bullet slot and play cue $10; the inventory count is unchanged.
; If all six slots are loaded, show message $90 and clear the result.
TakeC2Bullet:


    ld hl, C2BulletIds

; Scan the six bullet flags for the first empty slot.
C2BulletFindEmpty:
jr_003_4f83:
    ld a, [hl+]
    cp $ff
    jr z, C2BulletAllLoaded

    call ReadItemFlag
    jr nz, C2BulletFindEmpty

    dec hl
    ld a, [hl]
    call SetItemFlag
    call SetResult
    ld a, $10
    call PlayAudio
    ret


; Report that all six bullet flags are already set.
C2BulletAllLoaded:
jr_003_4f9b:
    ld a, $90
    call ShowMsg1
    call ClearResult
    ret

; Six BULLET item IDs; $ff ends the table.
C2BulletIds:
    db $55, $56, $57, $58, $59, $5a, $ff
