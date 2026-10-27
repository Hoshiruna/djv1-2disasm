
; Load one inventory round into the first empty chamber: clear its flag and decrement the inventory count.
; Refresh the selected list mode and retain both failure messages.
UseC2Bullet:


    ld a, [wC2Bullets]
    cp $00
    jr nz, C2BulletUseReady

    ld a, $2d
    call ShowMsg0 ; Message Text12Message2D: おれ・・・。 / なにを しているのだろう・・・。[END]
    call ClearResult
    ret


; With inventory available, scan for a set chamber flag (empty chamber).
C2BulletUseReady:
jr_003_4f44:
    ld hl, C2BulletIds

; Scan the six chamber flags for the first set bit, then clear it to load that chamber.
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
    call ShowMsg1 ; Message Text15Message0E: ピストルに たまを こめた。[END]
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


; All six chamber flags are clear: the gun is already fully loaded.
C2BulletNoLoaded:
jr_003_4f77:
    ld a, $8f
    call ShowMsg1 ; Message Text15Message0F: これいじょう たまは はいらない。[END]
    call ClearResult
    ret

; Fire the first loaded chamber: set its clear flag and play cue $10; inventory count is unchanged.
; If all six chamber flags are set (empty), show message $90 and clear the result.
TakeC2Bullet:


    ld hl, C2BulletIds

; Scan for the first clear chamber flag (loaded round).
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


; All six chamber flags are set: no loaded rounds remain.
C2BulletAllLoaded:
jr_003_4f9b:
    ld a, $90
    call ShowMsg1 ; Message Text15Message10: ねらいを さだめて・・・。 / トリガーを ひいた。[PAGE] / カチッ![PAGE] / ・・・・・・・・・あれっ? / たまが はいっていない![END]
    call ClearResult
    ret

; Six item-bitmap chamber flag IDs; set means empty, clear means loaded; $ff ends the scan.
C2BulletIds:
    db $55, $56, $57, $58, $59, $5a, $ff
