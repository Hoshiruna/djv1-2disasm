
; Remove flagged items seven and $54, set their states, clear the case-one count, refresh value zero, and draw room $16.
ClearC1Count:


Call_000_303f:
Jump_000_303f:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]

Jump_000_3047:
    and $01
    jr z, jr_000_305a

Jump_000_304b:
    ld a, $07
    call DropListValue

Call_000_3050:
    ld a, $07
    call ClearItemFlag
    ld a, $07
    call SetItemState

jr_000_305a:
    ld a, $54
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_000_3075

    ld a, $54
    call DropListValue
    ld a, $54
    call ClearItemFlag
    ld a, $54
    call SetItemState

jr_000_3075:
    call ResumeTextUI
    xor a
    ld [wC1ListCount], a
    ld [wArg0], a

Jump_000_307f:
    ld [wFindListValue], a
    call FindListValue

Jump_000_3085:
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    ld a, $06
    ld [wSceneFx], a
    ld a, $16
    call DrawRoomAt
    ret
