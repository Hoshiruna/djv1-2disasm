
; Pick a restricted list selection or $ff, mark a confirmed row, then restore the action cursor.
ChooseListRow:

    ld a, [wListBase]
    cp $ff
    jr z, jr_001_61b1

    ld a, $0d
    ld [wInputSel], a

jr_001_6195:
    call WaitListPick
    call CommitCursor
    call DrawCursor
    call DrawRoomObjs
    call SubmitOam
    ld a, [wJoyPress]

jr_001_61a7:
    bit 0, a
    jr nz, jr_001_61ba

jr_001_61ab:
    bit 1, a
    jr nz, jr_001_61b6

    jr jr_001_6195

jr_001_61b1:
    ld a, $69
    call ShowMsg2

jr_001_61b6:
    ld a, $ff
    jr jr_001_61d2

jr_001_61ba:
    ld a, $19
    call PlayAudio
    ld a, [wInputSel]
    sub $0d

jr_001_61c4:
    ld [wListMarkRow], a
    call DrawListMark
    ld a, $10
    call WaitTicks
    ld a, [wInputSel]

jr_001_61d2:
    ld [wListPick], a
    ld a, $10
    ld [wCursorX], a
    ld a, $80
    ld [wCursorY], a
    ld a, $00
    ld [wInputSel], a
    call ScrollSelection
    ret

; Poll fresh button and direction presses; confirm/cancel return before following a list link.
WaitListPick:


Call_001_61e8:
jr_001_61e8:
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    ret nz

    bit 1, a
    ret nz

    ld a, [wJoyPress]
    swap a
    and $0f
    ld e, a
    ld d, $00
    ld hl, CursorDirs
    add hl, de
    ld a, [hl]
    cp $04
    jr z, jr_001_61e8

    ld e, a
    ld a, [wInputSel]
    add a
    add a
    or e
    ld e, a
    ld d, $00
    ld hl, ListLinks
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_001_61e8

    ld [wInputSel], a
    call SnapCursor
    ret
