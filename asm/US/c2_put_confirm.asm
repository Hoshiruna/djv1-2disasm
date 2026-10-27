
; Accept desk placement or an allowed packed item, show its confirmation, and update attributes and lists.
; Select slot one and return $ff on success; rejection returns zero.
CheckC2Put:


Call_003_512c:
    ld a, [wArg0]
    cp GrpDesk
    jr z, C2PutAccepted

    call CanC2Put
    cp $00
    jr z, C2PutRejected

; Prepare confirmation text for an accepted placement.
C2PutAccepted:
jr_003_513a:
    ld a, [wSelName]
    ld [wTextName0], a
    ld a, [wArg0]
    cp GrpDesk
    jr z, C2PutDeskMessage

    ld a, $2c ; Message Text18Message2C: YOU THROW OUT THE / [OBJECT_WRAM:37C5].[END]
    jr C2PutConfirmMessage

; Select the desk-specific placement message.
C2PutDeskMessage:
jr_003_514b:
    ld a, $0f ; Message Text18Message0F: YOU PLACE THE / [OBJECT_WRAM:37C5] IN / THE DESK DRAWER.[END]

; Show the selected confirmation and update list attributes.
C2PutConfirmMessage:
jr_003_514d:
    call ShowMsg3
    call SelectSlot0
    call SetAttr1
    call ClearAttr0
    call DropSelList
    call TestAttr2
    ld a, [wStateResult]
    and $01
    jr z, C2PutCheckRefresh

    call RemoveChange
    call ClearAttr2
    ld a, [wPendingLast]
    cp $ff
    jr z, C2PutSuccess

; Refresh the direct-placement list when required.
C2PutCheckRefresh:
jr_003_5173:
    ld a, [wPutMode]
    cp PutDirect
    call z, RefreshC2Put

; Restore slot one and return success.
C2PutSuccess:
jr_003_517b:
    call SelectSlot1
    ld a, $ff
    ret


; Show the rejected-placement message and return zero.
C2PutRejected:
jr_003_5181:
    ld a, $f3
    call ShowMsg1 ; Message Text15Message73: YOU'D BETTER GIVE / UP.[END]
    xor a
    ret

; Refresh saved list mode zero or one; mode one first calls the original bank-zero helper, while other modes return.
RefreshC2Put:


Call_003_5188:
    ld a, [wPutList]
    cp $01
    jr z, C2PutRefreshPending

    jr c, C2PutRefreshBase

    ret


; Prepare and refresh the pending-change list.
C2PutRefreshPending:
jr_003_5192:
    call PrepItemBank
    ld a, $01
    ld [wChangeMode], a
    call RefreshLists
    ret


; Refresh the base list after placement.
C2PutRefreshBase:
jr_003_519e:
    xor a
    ld [wChangeMode], a
    call RefreshLists
    ret

; Return $ff when the packed selection is in the terminated allowlist, otherwise return zero.
CanC2Put:


Call_003_51a6:
    ld de, $0000

; Compare the packed selection with the next allowed value.
C2PutScanAllowed:
jr_003_51a9:
    ld hl, C2PutAllowed
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, C2PutNotAllowed

    ld hl, wListPacked
    cp [hl]
    jr z, C2PutAllowMatch

    inc e
    jr C2PutScanAllowed

; Return zero when the allowlist terminator is reached.
C2PutNotAllowed:
jr_003_51bb:
    xor a
    ret


; Return $ff for an allowed packed selection.
C2PutAllowMatch:
jr_003_51bd:
    ld a, $ff
    ret
