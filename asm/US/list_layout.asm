; --- list_ui.asm ---

; Queue the regional list background, draw the current record header and draw list items.
DrawListUI:

Call_001_4b87:
    ld hl, ListEdgeFill
    call QueueFillSpec
    call SubmitMapQueue
    ld hl, ListBlankFill
    call QueueFillSpec
    call SubmitMapQueue
    ld hl, ListBarFill
    call QueueFillSpec
    call SubmitMapQueue
    call DrawListHead
    call DrawListItems
    ret

ListBlankFill:
    db $a1, $9a, $0f, $07, $7f

ListEdgeFill:
    db $a0, $9a, $01, $07, $71

ListBarFill:
    db $63, $9a, $0c, $01, $7f

; --- list_page_select.asm ---

; Select page command $0b in B and enter the shared temporary-selection path.
GoNextList:

    ld b, InputSelNextPage
    jr TempListPage

; Select page command $0c in B and enter the shared temporary-selection path.
GoPrevList:

Jump_001_4bbc:
    ld b, InputSelPrevPage

; Apply page selection B, then restore the incoming selection A.
TempListPage:

jr_001_4bbe:
    push af
    ld a, b
    ld [wListSel], a
    call ApplyListPage
    pop af
    ld [wListSel], a
    ret

; Run page navigation, clear its cursor, restore a selected-action cursor when present, then select the saved page command.
ApplyListPage:


Call_001_4bcb:
    call StepListPage
    ld a, [wListSel]
    call ClearListCursor
    ld a, [wSelAction]
    cp $ff
    jr z, ListPageStoreCommand

    ld a, [wListNavPrev]
    ld [wListSel], a

; Move the restored selection cursor while preserving the operation-slot offset.
ListPageRestoreCursor:
jr_001_4be1:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    call MoveListCursor
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    jr ListPageStoreCommand

    ld a, [wSelAction]
    cp $ff
    jr z, ListPageRestoreCursor

; Store the saved navigation command after updating the page cursor.
ListPageStoreCommand:
jr_001_4bff:
    ld a, [wListNavNext]
    ld [wListSel], a
    ret

; --- list_page.asm ---

; Dispatch selection $0b/$0c to page navigation; restore the saved marker on its saved mode.
StepListPage:


Call_001_4c06:
    ld a, [wListSel]
    cp InputSelNextPage
    jr z, StepListNext

    cp InputSelPrevPage
    jr z, StepListPrevious

    ret


; Advance the page and check whether the saved selection mark belongs to this mode.
StepListNext:
jr_001_4c12:
    call NextListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, StepListRestoreMark

    ret


; Draw the saved row mark in its matching list mode.
StepListRestoreMark:
jr_001_4c22:
    ld a, [wSelRow]
    ld [wListMarkRow], a
    call DrawListMark
    ret


; Move to the previous page and check the saved selection mode.
StepListPrevious:
jr_001_4c2c:
    call PrevListPage
    ld a, [wChangeMode]
    ld c, a
    ld a, [wSelMode]
    ld b, a
    ld a, c
    cp b
    jr z, StepListRestoreMark

    ret

; Save the selected slot around the cursor update, then advance the record or mode and redraw.
NextListPage:


Call_001_4c3c:
    ld a, [wListPrev]
    ld [wListNavPrev], a
    ld a, $0b
    ld [wListSel], a
    ld [wListNavNext], a

; Move the page cursor while preserving the operation-slot offset.
NextListMoveCursor:
jr_001_4c4a:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    call MoveListCursor
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    jr NextListCheckMaximum

    ld a, [wSelAction]
    cp $ff
    jr z, NextListMoveCursor

; Compare the current mode with the active list maximum.
NextListCheckMaximum:
jr_001_4c68:
    ld a, [wChangeMode]
    ld c, a
    ld a, [wListMax]
    ld b, a
    ld a, c
    cp b
    jr c, NextListCheckMode

    ret


; Apply the regional upper mode limit before advancing a mode or record.
NextListCheckMode:
jr_001_4c75:
    ld a, [wChangeMode]
    cp $0c
    jr nc, NextListReturn

    cp $02
    jr nc, NextListAdvanceMode

    cp $01
    jr z, NextListCheckRecords

    ld a, $ff
    ld [wPendingCur], a

; Check whether pending records exist for the next-page path.
NextListCheckRecords:
jr_001_4c89:
    ld a, [wPendingLast]
    cp $ff
    jr nz, NextListAdvanceRecord

    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

; Increment the list mode before redrawing.
NextListAdvanceMode:
jr_001_4c99:
    ld d, a
    ld a, [wChangeMode]
    inc a
    ld [wChangeMode], a
    ld a, d

; Draw the list UI and retain the original second item draw.
NextListRedraw:
jr_001_4ca2:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems

; Return after the next-page limit or redraw path.
NextListReturn:
jr_001_4ca8:
    ret


; Advance the pending record index and prepare its list.
NextListAdvanceRecord:
jr_001_4ca9:
    ld d, a
    ld a, [wPendingCur]
    inc a
    ld [wPendingCur], a
    ld a, d
    ld a, [wPendingLast]
    ld c, a
    ld a, [wPendingCur]
    ld b, a
    ld a, c
    cp b
    jr c, NextListAdvanceMode

    call ReadChange
    call PrepChangeList
    ld a, $5b
    ld [wWorkSrc], a
    ld a, $c8
    ld [wWorkSrc+1], a
    call ClearWorkList
    call CopyWorkList
    ld a, [wChangeMode]
    cp $00
    jr z, NextListAdvanceMode

    jr NextListRedraw

; Save the selected slot around the cursor update, then move back through modes or records and redraw.
PrevListPage:

Call_001_4cdd:
    ld a, [wListPrev]
    ld [wListNavPrev], a
    ld a, $0c
    ld [wListSel], a
    ld [wListNavNext], a
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    call MoveListCursor
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ld a, [wChangeMode]
    cp $00
    ret z

    cp $03
    jr nc, PrevListDecreaseMode

    cp $01
    jr z, PrevListCheckRecords

    ld a, [wPendingLast]
    inc a
    ld [wPendingCur], a

; Check whether pending records exist for the previous-page path.
PrevListCheckRecords:
jr_001_4d15:
    ld a, [wPendingLast]
    cp $ff
    jr nz, PrevListDecreaseRecord

    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

; Decrement the list mode before redrawing.
PrevListDecreaseMode:
jr_001_4d25:
    ld d, a
    ld a, [wChangeMode]
    dec a
    ld [wChangeMode], a
    ld a, d

; Draw the list UI and retain the original second item draw.
PrevListRedraw:
jr_001_4d2e:
    ; DrawListUI already draws items; the original second draw is retained.
    call DrawListUI
    call DrawListItems
    ret


; Decrease the pending record index and check mode boundaries.
PrevListDecreaseRecord:
jr_001_4d35:
    ld d, a
    ld a, [wPendingCur]
    dec a
    ld [wPendingCur], a
    ld a, d
    ld a, [wChangeMode]
    cp $02
    jr z, PrevListReadRecord

    ld a, [wPendingCur]
    cp $ff
    jr z, PrevListDecreaseMode

; Read the selected pending record and prepare its work list.
PrevListReadRecord:
jr_001_4d4c:
    call ReadChange
    call PrepChangeList
    ld bc, wListScratch
    ld a, c
    ld [wWorkSrc], a
    ld a, b
    ld [wWorkSrc+1], a
    call ClearWorkList
    call CopyWorkList
    ld a, [wChangeMode]
    cp $02
    jr z, PrevListDecreaseMode

    jr PrevListRedraw

; --- list_draw.asm ---

; Draw the current list; mode 1 may first copy seven group bytes into regional work storage.
DrawListItems:

Call_001_4d6c:
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
jr_001_4d9d:
    ld bc, wWorkList
    ld e, $00

; Copy seven bytes; Case II includes group byte 7, which StoreWorkGroup leaves untouched.
ListDrawGroupCopyLoop:
jr_001_4da2:
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, e
    inc a
    ld e, a
    cp ListGroupCopyBytes
    jr c, ListDrawGroupCopyLoop

; Begin drawing list rows outside mode zero.
ListDrawChangedRows:
jr_001_4dac:
    xor a
    ld [wListRow], a

; Read, name, and draw each changed-list row.
ListDrawChangedRowLoop:
jr_001_4db0:
    call ReadListRow
    call PickListName
    ld a, [wStateResult]
    and $02
    jr nz, ListDrawRowsDone

    call DrawListRow
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    cp UsListPageRows
    jr c, ListDrawChangedRowLoop

; Return when the changed list ends or reaches its regional row limit.
ListDrawRowsDone:
jr_001_4dcb:
    ret


; Start drawing the base list at row zero.
ListDrawBaseStart:
jr_001_4dcc:
    xor a
    ld [wListRow], a

; Read and draw a base-list entry unless the terminator is reached.
ListDrawBaseLoop:
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
    jr z, ListDrawRowsDone

    ld [wListName], a
    ld a, [wCaseId]
    cp $00
    jr z, ListDrawBaseNameReady

    ld a, [wListName]
    sub C2ListBaseNameOffset
    ld [wListName], a

; Draw the selected base-list name after regional adjustment.
ListDrawBaseNameReady:
jr_001_4df4:
    call DrawListRow
    ld d, a
    ld a, [wListRow]
    inc a
    ld [wListRow], a
    ld a, d
    ld a, [wListRow]
    cp UsListPageRows
    jr c, ListDrawBaseLoop

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
    ld bc, UsListRowYCoordinates
    add hl, bc
    ld a, [hl+]
    ld [wTextY], a
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
    cp C2ListNumericNameCount
    ld a, d
    jr nc, ListRowShowMarkedText

    ldh a, [hChangePos]
    ld l, a
    ld h, $00
    ld bc, C2ListRowMarkIds
    add hl, bc
    ld a, [hl]
    jr ListRowShowMarkedText

; Choose the Case I row marker from the item name and change mode.
ListRowCase1Mark:
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
    jr nz, ListRowCheckBulletName

    ld a, [wChangeMode]
    cp $01
    jr nz, ListRowNameZeroBaseMark

    ld a, $02
    jr ListRowShowMarkedText

; Use marker one for list name zero outside change mode one.
ListRowNameZeroBaseMark:
jr_001_4e61:
    ld a, $01
    jr ListRowShowMarkedText

; Check the packed list name for the first bullet item.
ListRowCheckBulletName:
jr_001_4e65:
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
jr_001_4e78:
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
jr_001_4e8c:
    cp $07
    jr nz, ListRowBulletDefaultMark

    ld a, $08
    jr ListRowShowMarkedText

; Use marker nine for other first-bullet arguments.
ListRowBulletDefaultMark:
jr_001_4e94:
    ld a, $09
    jr ListRowShowMarkedText

; Check the second bullet item name and change mode.
ListRowCheckSecondBullet:
jr_001_4e98:
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
jr_001_4eab:
    ld a, $05

; Show the list name with its selected marker and restore scratch state.
ListRowShowMarkedText:
jr_001_4ead:
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    pop af
    ldh [hChangePos], a
    ret

; US list-row Y bytes; the reader sets X to one.
UsListRowYCoordinates:
ListRowY:
    db $15
    db $16
    db $17
    db $18
    db $19
    db $1a
    db $1b

; Case II name IDs zero through four select label marks two through six.
C2ListRowMarkIds:
C2ListMarks:
    db C2ListMarkCash
    db C2ListMarkQuarters
    db C2ListMarkBullets
    db C2ListMarkCells
    db C2ListMarkChips

; --- list_head.asm ---

; Copy the indexed record to the selected slot and draw its heading at (3, $13); save only the scratch low byte.
DrawListHead:

    ldh a, [hChangePos]
    push af
    ld a, [wPendingCur]
    add a
    ldh [hChangePos], a
    ld bc, wPendingOps
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a

jr_001_4ed8:
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListType
    add hl, bc
    ld [hl], a
    ld bc, wPendingArgs
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    ld a, b
    ld bc, wListValue
    add hl, bc
    ld [hl], a
    ld a, $03
    ld [wTextX], a
    ld a, $13
    ld [wTextY], a
    call PickListHead
    xor a
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    pop af
    ldh [hChangePos], a
    ret

; Select a heading name by list mode, clamping modes >= 2 to the third handler.
PickListHead:


Call_001_4f1a:
    ld a, [wChangeMode]
    cp $02
    jr c, PickListHeadDispatch

    ld a, $02

; Dispatch the clamped heading mode through the three-entry table.
PickListHeadDispatch:
jr_001_4f23:
    rst RST_00

ListHeadTable:
    dw HeadMode0, HeadRecord, HeadMode2

; Set the mode-0 heading name: Case I $be, Case II $c8.
HeadMode0:
    ld a, [wCaseId]
    cp $00
    jr nz, HeadMode0Case2

    ld a, $be
    jr HeadMode0Store

; Choose the Case II mode-zero heading name.
HeadMode0Case2:
jr_001_4f35:
    ld a, $c8

; Store the selected mode-zero heading name.
HeadMode0Store:
jr_001_4f37:
    ld [wListName], a
    ret

; Set the heading from the case/type base plus selected value; restore only the scratch low byte.
HeadRecord:


    ldh a, [hChangePos]
    push af
    ld d, a
    ld bc, wListType
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ldh [hChangePos], a
    xor a
    ldh [hChangePos+1], a
    ld a, d
    ld a, [wCaseId]
    cp $00
    jr nz, HeadRecordCase2Base

    ld bc, C1NameBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    jr HeadRecordAddValue

; Read the Case II name base for the selected list type.
HeadRecordCase2Base:
jr_001_4f64:
    ld bc, C2NameBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]

; Add the selected record value to its case and type name base.
HeadRecordAddValue:
jr_001_4f6f:
    push af
    ld bc, wListValue
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld b, a
    pop af
    add b
    ld [wListName], a
    pop af
    ldh [hChangePos], a
    ret

; Set the heading for modes >= 2: Case I $bd, Case II $c9.
HeadMode2:


    ld a, [wCaseId]
    cp $00
    jr nz, HeadMode2Case2

    ld a, $bd
    jr HeadMode2Store

; Choose the Case II mode-two heading name.
HeadMode2Case2:
jr_001_4f90:
    ld a, $c9

; Store the selected mode-two heading name.
HeadMode2Store:
jr_001_4f92:
    ld [wListName], a
    ret
