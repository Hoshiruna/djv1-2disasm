
; Remove flagged items seven and $54, set their states, clear the case-one count, refresh value zero, and draw room $16.
ClearC1Count:


Call_000_2eef:
    ld a, $07
    call ReadItemFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_000_2f0a

    ld a, $07
    call DropListValue
    ld a, $07
    call ClearItemFlag
    ld a, $07
    call SetItemState

jr_000_2f0a:
    ld a, $54
    call ReadItemFlag

Jump_000_2f0f:
    ld a, [wStateResult]
    and $01
    jr z, jr_000_2f25

    ld a, $54
    call DropListValue
    ld a, $54
    call ClearItemFlag
    ld a, $54
    call SetItemState

jr_000_2f25:
    call ResumeTextUI
    xor a
    ld [wC1ListCount], a
    ld [wArg0], a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    ld a, $06
    ld [wSceneFx], a
    ld a, $16
    call DrawRoomAt
    ret
