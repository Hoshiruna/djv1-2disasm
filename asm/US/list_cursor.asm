
; Draw the one-tile selected-row mark at wListMarkRow; $ff returns without drawing.
DrawListMark:


Call_001_5d35:
    ld hl, ListMarkOn

jr_001_5d38:
    ld a, [wListMarkRow]
    cp $ff
    ret z

    push hl
    add a
    ld e, a
    ld d, $00
    ld hl, ListMarkDst
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    call QueueTileRect
    call SubmitMapQueue
    call WaitFrame
    ret

ListMarkDst:
    dw $9aa0
    dw $9ac0
    dw $9ae0
    dw $9b00
    dw $9b20
    dw $9b40
    dw $9b60
    dw $9b80

; Draw the one-tile unselected-row mark through the shared mark routine.
ClearListMark:

Call_001_5d65:
    ld hl, ListMarkOff
    jr jr_001_5d38

; Clear the previous cursor, set the slot offset to zero, save the new selection and draw its cursor.
MoveListCursor:

Call_001_5d6a:
    call ClearListCursor
    ld d, a
    ld a, $00
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    ld a, [wListSel]
    ld [wListPrev], a
    call PickCursorMap
    ld a, [wListPrev]
    call DrawListCursor
    ret

; Draw the previous selection with the off maps using slot offset 2; restore the caller slot offset.
ClearListCursor:


Call_001_5d87:
    push af
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    pop af
    push hl
    ld d, a
    ld a, $02
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    ld a, [wListPrev]
    call PickCursorMap
    ld a, [wListPrev]
    call DrawListCursor
    pop hl
    push af
    ld a, l
    ldh [hItemSlot], a
    ld a, h
    ldh [hItemSlot+1], a
    pop af
    ret

; A = selection, HL = cursor map; queue it at the selection destination and wait for video requests; $ff returns.
DrawListCursor:


Call_001_5db0:
    cp $ff
    ret z

    push hl
    add a
    ld e, a
    ld d, $00
    ld hl, CursorDst
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    pop hl
    call QueueTileRect
    call SubmitMapQueue
    call WaitVideo
    ret

; A = selection; use the slot offset to select the on/off pointer table and return its map in HL; $ff returns.
PickCursorMap:


Call_001_5dca:
    cp $ff
    ret z

    push af
    ld bc, CursorMaps
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld h, [hl]
    ld l, d
    pop af
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret

CursorDst:
    dw $99e1
    dw $99e8
    dw $99e3
    dw $99f1
    dw $99e5
    dw $99ea
    dw $99ef
    dw $99ed
    dw $9971
    dw $984f
    dw $9852
    dw $9a71
    dw $9a60
    dw $9aa0
    dw $9ac0
    dw $9ae0
    dw $9b00
    dw $9b20
    dw $9b40
    dw $9b60
    dw $9b80

CursorMaps:
    dw CursorOnTable
    dw CursorOffTable

CursorOnTable:
    dw CursorOn00
    dw CursorOn01
    dw CursorOn02
    dw CursorOn03
    dw CursorOn04
    dw CursorOn05
    dw CursorOn06
    dw CursorOn07
    dw CursorOn08
    dw CursorOn09
    dw CursorOn0a
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn
    dw ListMarkOn

CursorOffTable:
    dw CursorOff00
    dw CursorOff01
    dw CursorOff02
    dw CursorOff03
    dw CursorOff04
    dw CursorOff05
    dw CursorOff06
    dw CursorOff07
    dw CursorOff08
    dw CursorOff09
    dw CursorOff0a
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff
    dw ListMarkOff

CursorOn00:
    db $02, $02, $1a, $1b, $2a, $2b

CursorOn01:
    db $02, $02, $30, $31, $40, $41

CursorOn02:
    db $02, $02, $1c, $1d, $2c, $2d

CursorOn03:
    db $02, $02, $38, $39, $48, $49

CursorOn04:
    db $02, $02, $1e, $1f, $2e, $2f

CursorOn05:
    db $02, $02, $32, $33, $42, $43

CursorOn06:
    db $02, $02, $36, $37, $46, $47

CursorOn07:
    db $02, $02, $34, $35, $44, $45

CursorOn08:
    db $02, $02, $18, $19, $28, $29

CursorOn09:
    db $02, $02, $14, $15, $24
jr_001_5ea3:
    db $25

CursorOn0a:
    db $02, $02, $16, $17, $26, $27

ListMarkOn:
    db $01, $01, $72

CursorOff00:
    db $02, $02, $50, $51, $60, $61

CursorOff01:
    db $02, $02
jr_001_5eb5:
    db $56, $57
jr_001_5eb7:
    db $66, $67

CursorOff02:
    db $02, $02, $52, $53, $62, $63

CursorOff03:
    db $02, $02, $5e, $5f, $6e, $6f

CursorOff04:
    db $02, $02
jr_001_5ec7:
    db $54, $55, $64, $65

CursorOff05:
    db $02, $02, $58, $59, $68, $69

CursorOff06:
    db $02, $02, $5c, $5d, $6c, $6d

CursorOff07:
    db $02, $02, $5a, $5b, $6a, $6b

CursorOff08:
    db $02, $02, $3e, $3f, $4e, $4f

CursorOff09:
    db $02, $02, $3a, $3b, $4a, $4b

CursorOff0a:
    db $02, $02, $3c, $3d, $4c, $4d

ListMarkOff:
    db $01, $01, $71
