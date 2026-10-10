
; Select from list mode zero; map the Case I row to arg 3 or delegate Case II to bank 3.
PickListRoom:


    call ClearResult
    xor a
    ld [wListRow], a
    ld a, [wChangeMode]
    cp $00
    jr z, jr_000_2acb

    ld [wSavedListMode], a
    xor a
    ld [wChangeMode], a
    call RefreshLists

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
    jr nz, jr_000_2b05

jr_000_2afe:
    call RestoreTextLists
    call SetResult
    ret


jr_000_2b05:
    sub $0d
    ld c, a
    ld b, $00
    ld hl, wListBase
    add hl, bc
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2b47

    ld a, [hl]
    cp $ff
    jr z, jr_000_2afe

    ld c, $00
    cp $a3
    jr z, jr_000_2b30

    inc c
    cp $a0
    jr z, jr_000_2b30

    inc c
    cp $a1
    jr z, jr_000_2b30

Call_000_2b2a:
    inc c
    cp $a2
    jr z, jr_000_2b30

    inc c

jr_000_2b30:
    ld hl, C1RoomPick
    add hl, bc
    ld c, [hl]
    ld a, [wRoomId]
    and $01
    jr z, jr_000_2b3d

    inc c

jr_000_2b3d:
    ld a, c
    ld [wArg3], a
    ret

C1RoomPick:
    db $26, $42
Jump_000_2b44:
    db $44, $46, $48

jr_000_2b47:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Room
    call PopRomBank
    ret
