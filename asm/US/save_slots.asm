
; Clear three slot case bytes, scan saved games, load the UI, draw its slots and cursor, then fade in.
LoadSaveSlots:


Call_002_776c:
    xor a
    ld hl, wSaveCases
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    call ScanGames
    call RequestTimer
    call DisableLcd
    call LoadSaveGfx
    ld a, $02
    call ReadUiMap
    call StopTimer
    call RestoreLcd
    call DrawSaveSlots
    xor a
    ldh [hSaveSlot], a

; Draw the initial save-slot cursor and fade in.
SaveSlotsShowCursor:
jr_002_7790:
    call DrawSaveSlotCursor
    call SubmitOam
    jp FadeIn

; Save the slot bitmap, clear the panel, draw three slots, and submit the map queue.
DrawSaveSlots:


Call_002_7799:
    ld a, [wSaveSlotsMask]
    ld [wSaveBits], a
    call ClearSavePanel
    ld de, $0000
    call DrawSaveSlot
    call DrawSaveSlot
    call DrawSaveSlot
    jp SubmitMapQueue

; Draw the slot number and its status, then advance E by two for the next destination word.
DrawSaveSlot:


Call_002_77b1:
    call DrawSaveSlotNum
    call DrawSaveSlotState
    inc e
    inc e
    ret

; Read the slot destination and its number rectangle, then queue the rectangle.
DrawSaveSlotNum:


Call_002_77ba:
    call PickSaveDest
    push bc
    ld hl, SaveNumDests
    call ReadSaveDest
    pop hl
    jp QueueTileRect

; Shift the slot bitmap; show the empty label or the saved case label using the original slot case byte.
DrawSaveSlotState:


Call_002_77c8:
    ld a, [wSaveBits]
    sra a
    ld [wSaveBits], a
    jr c, DrawOccupiedSaveSlot

    ld hl, SaveNumDests
    call ReadSaveDest
    ld hl, SaveTextOffsets
    call ShiftSaveDest
    ld hl, SaveEmptyPtrs
    call PickSaveSpec
    jp QueueTileRect


; Choose the saved case label for an occupied slot.
DrawOccupiedSaveSlot:
jr_002_77e7:
    ld hl, SaveCaseDests
    call ReadSaveDest
    ld a, e
    srl a
    ld l, a
    ld h, $00
    push bc
    ld bc, wSaveCases
    add hl, bc
    pop bc
    ld a, [hl]
    cp $00
    jr nz, DrawNonzeroCaseSaveSlot

    ld hl, SaveSlotRect9
    jp QueueTileRect


; Queue the label selected for a nonzero saved case byte.
DrawNonzeroCaseSaveSlot:
jr_002_7804:
    ld hl, SaveSlotRect10
    jp QueueTileRect
