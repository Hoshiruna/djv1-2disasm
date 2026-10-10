
; Accept mode three or an allowed packed value, show the original confirmation, update first-slot attributes and lists, then select slot one and return $ff; rejection returns zero.
CheckC2Put:


Call_003_512c:
    ld a, [wArg0]
    cp $03
    jr z, jr_003_513a

    call CanC2Put
    cp $00
    jr z, jr_003_5181

jr_003_513a:
    ld a, [wSelName]
    ld [wTextName0], a
    ld a, [wArg0]
    cp $03
    jr z, jr_003_514b

    ld a, $2c
    jr jr_003_514d

jr_003_514b:
    ld a, $0f

jr_003_514d:
    call ShowMsg3
    call SelectSlot0
    call SetAttr1
    call ClearAttr0
    call DropSelList
    call TestAttr2
    ld a, [wStateResult]
    and $01
    jr z, jr_003_5173

    call RemoveChange
    call ClearAttr2
    ld a, [wPendingLast]
    cp $ff
    jr z, jr_003_517b

jr_003_5173:
    ld a, [wPutMode]
    cp $04
    call z, RefreshC2Put

jr_003_517b:
    call SelectSlot1
    ld a, $ff
    ret


jr_003_5181:
    ld a, $f3
    call ShowMsg1
    xor a
    ret

; Refresh saved list mode zero or one; mode one first calls the original bank-zero helper, while other modes return.
RefreshC2Put:


Call_003_5188:
    ld a, [wPutList]
    cp $01
    jr z, jr_003_5192

    jr c, jr_003_519e

    ret


jr_003_5192:
    call PrepItemBank
    ld a, $01
    ld [wChangeMode], a
    call RefreshLists
    ret


jr_003_519e:
    xor a
    ld [wChangeMode], a
    call RefreshLists
    ret

; Return $ff when the packed selection is in the terminated allowlist, otherwise return zero.
CanC2Put:


Call_003_51a6:
    ld de, $0000

jr_003_51a9:
    ld hl, C2PutAllowed
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_003_51bb

    ld hl, wListPacked
    cp [hl]
    jr z, jr_003_51bd

    inc e
    jr jr_003_51a9

jr_003_51bb:
    xor a
    ret


jr_003_51bd:
    ld a, $ff
    ret
