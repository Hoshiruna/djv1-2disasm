
; Draw the current list; mode 1 may first copy seven group bytes into regional work storage.
DrawListItems:

Call_001_4dea:
    ld a, [wChangeMode]
    cp $00
    jr z, ListDrawBaseStart

    cp $01
    jr nz, ListDrawChangedRows

    ld a, [wPendingCur]
    add a
    ld c, a
    ld b, $00
    ld hl, wPendingOps
    add hl, bc
    ld a, [hl+]
    cp $02
    jr nz, ListDrawChangedRows

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
    jr z, ListDrawGroupCopyStart

    inc hl

; Select the regional work-list base for a seven-byte group copy.
ListDrawGroupCopyStart:
jr_001_4e1b:
    ld bc, wWorkList+1
    ld e, $00

; Copy the seven group bytes into work-list storage.
ListDrawGroupCopyLoop:
jr_001_4e20:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, e
    inc a
    ld e, a
    cp $07
    jr c, ListDrawGroupCopyLoop

; Begin drawing list rows outside mode zero.
ListDrawChangedRows:
jr_001_4e2a:
    xor a
    ld [wListRow], a

; Read, name, and draw each changed-list row.
ListDrawChangedRowLoop:
jr_001_4e2e:
    call ReadListRow
    call PickListName
    ld a, [wStateResult]
    and $02
    jr nz, ListDrawRowsDone

    call DrawListRow
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    cp $08
    jr c, ListDrawChangedRowLoop

; Return when the changed list ends or reaches its regional row limit.
ListDrawRowsDone:
jr_001_4e49:
    ret


; Start drawing the base list at row zero.
ListDrawBaseStart:
jr_001_4e4a:
    xor a
    ld [wListRow], a

; Read and draw a base-list entry unless the terminator is reached.
ListDrawBaseLoop:
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
    jr z, ListDrawRowsDone

    ld [wListName], a
    ld a, [wCaseId]
    cp $00
    jr z, ListDrawBaseNameReady

    ld a, [wListName]
    sub $20
    ld [wListName], a

; Draw the selected base-list name after regional adjustment.
ListDrawBaseNameReady:
jr_001_4e72:
    call DrawListRow
    ld d, a
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    ld a, d
    ld a, [wListRow]
    cp $08
    jr c, ListDrawBaseLoop

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
    jr z, ListRowCase1Mark

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
    jr nc, ListRowShowMarkedText

    ldh a, [hChangePos]
    ld l, a
    ld h, $00
    ld bc, C2ListMarks
    add hl, bc
    ld a, [hl]
    jr ListRowShowMarkedText

; Choose the Case I row marker from the item name and change mode.
ListRowCase1Mark:
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
    jr nz, ListRowCheckBulletName

    ld a, [wChangeMode]
    cp $01
    jr nz, ListRowNameZeroBaseMark

    ld a, $02
    jr ListRowShowMarkedText

; Use marker one for list name zero outside change mode one.
ListRowNameZeroBaseMark:
jr_001_4edf:
    ld a, $01
    jr ListRowShowMarkedText

; Check the packed list name for the first bullet item.
ListRowCheckBulletName:
jr_001_4ee3:
    ld d, a
    ldh a, [hChangePos]
    cp $08
    ld a, d
    jr nz, ListRowCheckSecondBullet

    ld a, [wChangeMode]
    cp $01
    jr z, ListRowBulletModeOne

    ld a, $03
    jr ListRowShowMarkedText

; Inspect the current pending argument for the first bullet item in mode one.
ListRowBulletModeOne:
jr_001_4ef6:
    ld a, [wPendingCur]
    add a
    ld c, a
    ld b, $00
    ld hl, wPendingArgs
    add hl, bc
    ld a, [hl]
    cp $02
    jr nz, ListRowBulletOtherArg

    ld a, $04
    jr ListRowShowMarkedText

; Distinguish pending argument seven from other values.
ListRowBulletOtherArg:
jr_001_4f0a:
    cp $07
    jr nz, ListRowBulletDefaultMark

    ld a, $08
    jr ListRowShowMarkedText

; Use marker nine for other first-bullet arguments.
ListRowBulletDefaultMark:
jr_001_4f12:
    ld a, $09
    jr ListRowShowMarkedText

; Check the second bullet item name and change mode.
ListRowCheckSecondBullet:
jr_001_4f16:
    ld d, a
    ldh a, [hChangePos]
    cp $2d
    ld a, d
    jr nz, ListRowShowMarkedText

    ld a, [wChangeMode]
    cp $01
    jr nz, ListRowSecondBulletBaseMark

    ld a, $0a
    jr ListRowShowMarkedText

; Use marker five for the second bullet outside mode one.
ListRowSecondBulletBaseMark:
jr_001_4f29:
    ld a, $05

; Show the list name with its selected marker and restore scratch state.
ListRowShowMarkedText:
jr_001_4f2b:
    ld [wListMark], a
    call ShowListText
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
