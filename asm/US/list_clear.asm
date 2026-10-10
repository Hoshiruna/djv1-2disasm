
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


Call_000_3138:
Jump_000_3138:
    ld hl, wWorkList
    ld d, $00

Jump_000_313d:
jr_000_313d:
    ld a, $ff
    ld [hl+], a
    inc d
    ld a, d
    cp $07
    jr c, jr_000_313d

    ret
