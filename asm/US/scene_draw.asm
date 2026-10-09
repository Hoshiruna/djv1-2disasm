
; Draw through row masks; wSceneBlank selects blank cells.
DrawSceneMap:
Call_000_0d87:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_0d92

    ld a, $27
    jr jr_000_0d94

jr_000_0d92:
    ld a, $1d

jr_000_0d94:
    call Call_000_080e
    call ReadSceneMap
    push bc
    push hl
    ld bc, SceneFxSteps
    ld a, [wSceneFx]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    ld [wDrawSteps], a
    pop hl
    pop bc
    xor a
    ld [wDrawStep], a

jr_000_0db0:
    xor a
    ld [wDrawRow], a

jr_000_0db4:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ReadSceneMask
    call PopRomBank
    ld de, $0000

jr_000_0dc4:
    ; Consume bits 0 through 13 as columns from left to right.
    ld hl, wDrawMask+1
    srl [hl]
    dec hl
    rr [hl]
    jr nc, jr_000_0dd3

Call_000_0dce:
    push de
    call DrawSceneCell
    pop de

jr_000_0dd3:
    inc e
    ld a, e
    cp $0e
    jr nz, jr_000_0dc4

    ld a, [wDrawRow]
    inc a
    ld [wDrawRow], a
    cp $0e
    jr nz, jr_000_0db4

    call SubmitMapQueue
    call Call_000_01b7
    ld a, [wDrawStep]
    inc a
    ld [wDrawStep], a
    ld hl, wDrawSteps
    cp [hl]
    jr nz, jr_000_0db0

    ret

SceneFxSteps:
    db $07, $07, $07, $07, $07, $07, $06

; DE = column; stage and queue one cell from wDrawRow.
DrawSceneCell:
    ld a, $01
    ld [wCellRect], a
DEF Call_000_0e03 EQU $0e03 ; Legacy label inside an operand.
    ld [wCellRect+1], a

Jump_000_0e07:
    call StageSceneCell
    call SceneCellAddr
    ld hl, wCellRect
    call QueueMapRect
    ret


; Stage the map cell, or tile $ff and attribute $07 during the blank pass.
StageSceneCell:
Call_000_0e14:
    ld a, [wSceneBlank]
    cp $00
    jr z, jr_000_0e26

    ld a, $ff
    ld [wCellTile], a
    ld a, $07
    ld [wCellAttr], a
    ret


jr_000_0e26:
    ld a, [wDrawRow]
    add a
    ld l, a
    add a
    add a
    add a
    sub l
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [wMapPtr]
    ld c, a
    ld a, [wMapPtr+1]
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [wCellTile], a
    ld bc, $000e
    add hl, bc
    ld a, [hl]
    ld [wCellAttr], a
    ret


; Return BC = $9800 + row*32 + column.
SceneCellAddr:
Call_000_0e4a:
    ld a, [wDrawRow]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld bc, $9800
    add hl, bc
    ld c, l
    ld b, h
    ret
