
; Draw the current list; mode 1 may first copy seven group bytes into regional work storage.
DrawListItems:

Call_001_4d6c:
    ld a, [wChangeMode]
    cp $00
    jr z, jr_001_4dcc

    cp $01
    jr nz, jr_001_4dac

    ld a, [wPendingCur]
    add a
    ld c, a
    ld b, $00
    ld hl, wPendingOps
    add hl, bc
    ld a, [hl+]
    cp $02
    jr nz, jr_001_4dac

    ld a, [hl]
    sla a
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, wGroupData
    add hl, bc
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4d9d

    inc hl

jr_001_4d9d:
    ld bc, wWorkList
    ld e, $00

jr_001_4da2:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, jr_001_4da2

jr_001_4dac:
    xor a
    ld [wListRow], a

jr_001_4db0:
    call ReadListRow
    call PickListName
    ld a, [wStateResult]
    and $02
    jr nz, jr_001_4dcb

    call DrawListRow
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    cp $07
    jr c, jr_001_4db0

jr_001_4dcb:
    ret


jr_001_4dcc:
    xor a
    ld [wListRow], a

jr_001_4dd0:
    call GetListPos
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_4dcb

    ld [wListName], a
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4df4

    ld a, [wListName]
    sub $20
    ld [wListName], a

jr_001_4df4:
    call DrawListRow
    ld d, a
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    ld a, d
    ld a, [wListRow]
    cp $07
    jr c, jr_001_4dd0

; Mode 0 falls through here when all 7 rows are occupied.
; Draw wListName at the regional row position with its case-specific mark; restore only the scratch low byte.
DrawListRow:

Call_001_4e07:
    ldh a, [hChangePos]
    push af
    ld a, $01
    ld [wTextX], a
    ld a, [wListRow]
    ld l, a
    ld h, $00
    ld bc, ListRowY
    add hl, bc
    ld a, [hl+]
    ld [wTextY], a
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4e43

    xor a
    ld d, a
    ld a, [wListName]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld d, a
    ldh a, [hChangePos]
    cp $05
    ld a, d
    jr nc, jr_001_4ead

    ldh a, [hChangePos]
    ld l, a
    ld h, $00
    ld bc, C2ListMarks
    add hl, bc
    ld a, [hl]
    jr jr_001_4ead

jr_001_4e43:
    xor a
    ld d, a
    ld a, [wListName]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld d, a
    ldh a, [hChangePos]
    cp $00
    ld a, d
    jr nz, jr_001_4e65

    ld a, [wChangeMode]
    cp $01
    jr nz, jr_001_4e61

    ld a, $02
    jr jr_001_4ead

jr_001_4e61:
    ld a, $01
    jr jr_001_4ead

jr_001_4e65:
    ld d, a
    ldh a, [hChangePos]
    cp $08
    ld a, d
    jr nz, jr_001_4e98

    ld a, [wChangeMode]
    cp $01
    jr z, jr_001_4e78

    ld a, $03
    jr jr_001_4ead

jr_001_4e78:
    ld a, [wPendingCur]
    add a
    ld c, a
    ld b, $00
    ld hl, wPendingArgs
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, jr_001_4e8c

    ld a, $04
    jr jr_001_4ead

jr_001_4e8c:
    cp $07
    jr nz, jr_001_4e94

    ld a, $08
    jr jr_001_4ead

jr_001_4e94:
    ld a, $09
    jr jr_001_4ead

jr_001_4e98:
    ld d, a
    ldh a, [hChangePos]
    cp $2d
    ld a, d
    jr nz, jr_001_4ead

    ld a, [wChangeMode]
    cp $01
    jr nz, jr_001_4eab

    ld a, $0a
    jr jr_001_4ead

jr_001_4eab:
    ld a, $05

jr_001_4ead:
    ld [wListMark], a
    call Call_000_10d0
    call SubmitMapQueue
    pop af
    ldh [hChangePos], a
    ret

ListRowY:
    db $15
    db $16
    db $17
    db $18
    db $19
    db $1a
    db $1b

C2ListMarks:
    db $02
    db $03
    db $04
    db $05
    db $06
