
; Draw the current list; mode 1 may first copy seven group bytes into regional work storage.
DrawListItems:

Call_001_4dea:
    ld a, [wChangeMode]
    cp $00
    jr z, jr_001_4e4a

    cp $01
    jr nz, jr_001_4e2a

    ld a, [wPendingCur]
    add a
    ld c, a
    ld b, $00
    ld hl, wPendingOps
    add hl, bc
    ld a, [hl+]
    cp $02
    jr nz, jr_001_4e2a

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
    jr z, jr_001_4e1b

    inc hl

jr_001_4e1b:
    ld bc, wWorkList+1
    ld e, $00

jr_001_4e20:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, jr_001_4e20

jr_001_4e2a:
    xor a
    ld [wListRow], a

jr_001_4e2e:
    call ReadListRow
    call PickListName
    ld a, [wStateResult]
    and $02
    jr nz, jr_001_4e49

    call DrawListRow
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    cp $08
    jr c, jr_001_4e2e

jr_001_4e49:
    ret


jr_001_4e4a:
    xor a
    ld [wListRow], a

jr_001_4e4e:
    call GetListPos
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_001_4e49

    ld [wListName], a
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4e72

    ld a, [wListName]
    sub $20
    ld [wListName], a

jr_001_4e72:
    call DrawListRow
    ld d, a
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    ld a, d
    ld a, [wListRow]
    cp $08
    jr c, jr_001_4e4e

; Mode 0 falls through here when all 8 rows are occupied.
; Draw wListName at the regional row position with its case-specific mark; restore only the scratch low byte.
DrawListRow:

Call_001_4e85:
    ldh a, [hChangePos]
    push af
    ld a, [wListRow]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, ListRowPos
    add hl, bc
    ld a, [hl+]
    ld [wTextY], a
    ld a, [hl]
    ld [wTextX], a
    ld a, [wCaseId]
    cp $00
    jr z, jr_001_4ec1

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
    jr nc, jr_001_4f2b

    ldh a, [hChangePos]
    ld l, a
    ld h, $00
    ld bc, C2ListMarks
    add hl, bc
    ld a, [hl]
    jr jr_001_4f2b

jr_001_4ec1:
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
    jr nz, jr_001_4ee3

    ld a, [wChangeMode]
    cp $01
    jr nz, jr_001_4edf

    ld a, $02
    jr jr_001_4f2b

jr_001_4edf:
    ld a, $01
    jr jr_001_4f2b

jr_001_4ee3:
    ld d, a
    ldh a, [hChangePos]
    cp $08
    ld a, d
    jr nz, jr_001_4f16

    ld a, [wChangeMode]
    cp $01
    jr z, jr_001_4ef6

    ld a, $03
    jr jr_001_4f2b

jr_001_4ef6:
    ld a, [wPendingCur]
    add a
    ld c, a
    ld b, $00
    ld hl, wPendingArgs
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, jr_001_4f0a

    ld a, $04
    jr jr_001_4f2b

jr_001_4f0a:
    cp $07
    jr nz, jr_001_4f12

    ld a, $08
    jr jr_001_4f2b

jr_001_4f12:
    ld a, $09
    jr jr_001_4f2b

jr_001_4f16:
    ld d, a
    ldh a, [hChangePos]
    cp $2d
    ld a, d
    jr nz, jr_001_4f2b

    ld a, [wChangeMode]
    cp $01
    jr nz, jr_001_4f29

    ld a, $0a
    jr jr_001_4f2b

jr_001_4f29:
    ld a, $05

jr_001_4f2b:
    ld [wListMark], a
    call Call_000_107a
    call SubmitMapQueue
    pop af
    ldh [hChangePos], a
    ret

ListRowPos:
    db $16
    db $01
    db $18
    db $01
    db $1a
jr_001_4f3d:
    db $01
    db $1c
    db $01
    db $16
    db $0b
    db $18
    db $0b
    db $1a
    db $0b
    db $1c
    db $0b

C2ListMarks:
    db $02
    db $03
    db $04
    db $05
    db $06
