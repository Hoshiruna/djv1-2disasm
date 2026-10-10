
; Write $ff to the type and ID fields of both operation slots.
ResetItemSlots:


    ld a, $ff
    ld [wItemType], a
    ld [wItemId], a
    ld [wAltSlot], a
    ld [wAltSlot+1], a
    ret

; Fill the regional working-list row with $ff.
ClearWorkList:


Call_000_3288:
    ld hl, wWorkList+1
    ld d, $00

jr_000_328d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp $08
    jr c, jr_000_328d

    ret
