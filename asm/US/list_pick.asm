
; Pick a restricted list selection or $ff, mark a confirmed row, then restore the action cursor.
ChooseListRow:

    ld a, [wListBase]
    cp $ff
    jr z, ListPickNoEntries

    ld a, InputSelListFirst
    ld [wInputSel], a

; Wait for list input and redraw the selected cursor.
ListPickInputLoop:
jr_001_6195:
    call WaitListPick
    call CommitCursor
    call DrawCursor
    call DrawRoomObjs
    call SubmitOam
    ld a, [wJoyPress]

; Check whether A confirmed the current list row.
ListPickCheckConfirm:
jr_001_61a7:
    bit PADB_A, a
    jr nz, ListPickConfirm

; Check whether B canceled list selection.
ListPickCheckCancel:
jr_001_61ab:
    bit PADB_B, a
    jr nz, ListPickCancel

    jr ListPickInputLoop

; Show the message used when the list has no entries.
ListPickNoEntries:
jr_001_61b1:
    ld a, $69
    call ShowMsg2

; Return FF as the list selection.
ListPickCancel:
jr_001_61b6:
    ld a, $ff
    jr ListPickRestoreCursor

; Mark the selected list row and play the confirm cue.
ListPickConfirm:
jr_001_61ba:
    ld a, $19
    call PlayAudio
    ld a, [wInputSel]
    sub InputSelListFirst

jr_001_61c4:
    ld [wListMarkRow], a
    call DrawListMark
    ld a, $10
    call WaitTicks
    ld a, [wInputSel]

; Store the result and return the cursor to its action position.
ListPickRestoreCursor:
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
    bit PADB_A, a
    ret nz

    bit PADB_B, a
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
    jr z, WaitListPick

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
    jr z, WaitListPick

    ld [wInputSel], a
    call SnapCursor
    ret
