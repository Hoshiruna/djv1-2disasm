
; Keep the selected pair and append its pending record when capacity permits; retain the case-one type-one ID-six exception.
KeepSelChange:


    ld a, [wCaseId]
    cp $00
    jr nz, KeepChangeCheckCapacity

    ld bc, wItemType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, KeepChangeCheckCapacity

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $06
    jr z, KeepChangeAppendSelected

; Accept an empty pending list or a last index below three.
KeepChangeCheckCapacity:
jr_000_23d5:
    ld a, [wPendingLast]
    cp $ff
    jr z, KeepChangeAppendSelected

    cp $03
    jr c, KeepChangeAppendSelected

    ld a, [wCaseId]
    cp $00
    jr nz, KeepChangeFullCase2

    ld a, $71
    call ShowMsg2
    call ClearAttr2
    ret


; Show the Case II pending-list limit reply and clear selected attribute two.
KeepChangeFullCase2:
jr_000_23f0:
    ld a, $9d
    call ShowMsg1
    call ClearAttr2
    ret


; Apply the Case I presence hook, append the selected pair, and copy its list.
KeepChangeAppendSelected:
jr_000_23f9:
    push af
    ld a, $02
    call PushRomBank
    pop af

Call_000_2400:
Jump_000_2400:
    call KeepC1Pair

Call_000_2403:
    call PopRomBank
    call SetAttr2
    ld a, [wPendingLast]
    inc a
    ld [wPendingLast], a
    ld [wPendingCur], a
    call WriteChange
    call ClearWorkList
    call CopySlotList

; Set the operation byte to one and refresh the list mode.
SelectListMode1:

Call_000_241c:
    ld a, $01
    ld [wOpByte], a
    call RefreshListMode
    ret
