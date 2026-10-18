
; Select from list mode zero; map the Case I row to arg 3 or delegate Case II to bank 3.
PickListRoom:


    call ClearResult
    xor a
    ld [wListRow], a
    ld a, [wChangeMode]
    cp $00
    jr z, ListRoomChooseRow

    ld [wSavedListMode], a
    xor a
    ld [wChangeMode], a
    call RefreshLists

; Prepare the room-list cursor and choose a row.
ListRoomChooseRow:
jr_000_2acb:
    call ResumeTextUI
    ld a, $04
    ld [wCursorX], a
    ld a, $b4
    ld [wCursorY], a
    ld a, $0d
    ld [wInputSel], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ScrollSelection
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ChooseListRow
    call PopRomBank
    ld a, [wListPick]
    cp $ff
    jr nz, ListRoomResolveRow

; Restore text and lists after a cancelled or empty selection.
ListRoomCancelled:
jr_000_2afe:
    call RestoreTextLists
    call SetResult
    ret


; Resolve the selected list byte and choose the case-specific room mapper.
ListRoomResolveRow:
jr_000_2b05:
    sub $0d
    ld c, a
    ld b, $00
    ld hl, wListBase
    add hl, bc
    ld a, [wCaseId]
    cp $00
    jr nz, C2ListRoomDispatch

    ld a, [hl]
    cp $ff
    jr z, ListRoomCancelled

    ld c, $00
    cp $a3
    jr z, C1ListRoomLookup

    inc c
    cp $a0
    jr z, C1ListRoomLookup

    inc c
    cp $a1
    jr z, C1ListRoomLookup

Call_000_2b2a:
    inc c
    cp $a2
    jr z, C1ListRoomLookup

    inc c

; Read the destination pair and adjust it using the current room parity.
C1ListRoomLookup:
jr_000_2b30:
    ld hl, C1RoomPick
    add hl, bc
    ld c, [hl]
    ld a, [wRoomId]
    and $01
    jr z, C1ListRoomStore

    inc c

; Store the selected destination in argument three.
C1ListRoomStore:
jr_000_2b3d:
    ld a, c
    ld [wArg3], a
    ret

C1RoomPick:
    db $26, $42
Jump_000_2b44:
    db $44, $46, $48

; Call the Case II cab-stop selector in bank three.
C2ListRoomDispatch:
jr_000_2b47:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickCabStop
    call PopRomBank
    ret
