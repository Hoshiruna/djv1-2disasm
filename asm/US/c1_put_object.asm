
; Remove the first-slot list entry and item flag, show the hit object and message $58, and retain the item-$2c flag exception.
DropC1ItemObj:


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
    ld a, [wItemId]
    call ClearItemFlag
    ld a, [wOpAttr]
    and $fe
    ld [wOpAttr], a
    ld a, [wHitObj]
    call SetObjVisible
    call RefreshObjs
    ld a, $58
    call ShowMsg2
    call ClearResult
    ld a, [wItemId]
    cp $2c
    ret nz

    ld a, $87
    call ClearObjFlag
    ret

; Remove the first-slot list entry and property-four bit zero, show the hit object and message $58, then clear the result.
DropC1PropObj:


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
    ld a, [wItemId]
    call ClearProp4Bit0
    ld a, [wOpAttr]
    and $fe
    ld [wOpAttr], a
    ld a, [wHitObj]
    call SetObjVisible
    call RefreshObjs
    ld a, $58
    call ShowMsg2
    call ClearResult
    ret
