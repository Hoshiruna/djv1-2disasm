
; Update first-slot item/property flags and attributes, remove its list entry, show message five with its name, and clear the result.
FinishC1Put:


    ld a, [wItemType]
    cp $03
    jr nz, jr_002_6b30

    ld a, [wItemId]
    call ClearItemFlag
    ld a, [wOpAttr]
    and $fe
    or $02
    ld [wOpAttr], a
    ld a, [wItemId]
    call SetItemState
    jr jr_002_6b46

jr_002_6b30:
    ld a, [wItemId]
    call ClearProp4Bit0
    ld a, [wOpAttr]
    and $fe
    or $02
    ld [wOpAttr], a
    ld a, [wItemId]
    call SetProp4Bit1

jr_002_6b46:
    ld a, [wSelMode]
    ld [wChangeMode], a
    ld a, [wSelRow]
    ld [wListRow], a
    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a
    call DropListEntry
    call RefreshLists
    call DecListEnd
    ld a, [wSelName]
    ld [wTextName0], a
    ld a, $05
    call ShowMsg2
    call ClearResult
    ret
