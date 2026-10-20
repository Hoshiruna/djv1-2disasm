
; Initialize X and Y to one and enter the original tile-clearing loop; US advances one row, JP advances two.
ClearTextCells:


    ld a, $01
    ld [wClearCellX], a
    ld [wClearCellY], a

; Queue tile $7f at $9800 plus Y times 32 plus X, then advance until column $13 or row $11.
ClearTextCell:

jr_003_7051:
    ld a, [wClearCellY]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, _SCRN0
    add hl, de
    ld a, [wClearCellX]
    ld e, a
    ld d, $00
    add hl, de
    ld c, l
    ld b, h
    ld hl, ClearCellTile
    call QueueTileRect
    call SubmitMapQueue
    ld a, [wClearCellX]
    inc a
    cp $13
    jr nz, NextClearCell

    ld a, [wClearCellY]
    inc a
    cp $11
    ret z

    ld [wClearCellY], a
    xor a

; Store the next X coordinate and continue clearing cells.
NextClearCell:

jr_003_7085:
    ld [wClearCellX], a
    jr ClearTextCell

ClearCellTile:
    db $01, $01, $7f
