
; Select the menu cursor Y and fixed X, preserving BC and HL for the shared drawing tail.
DrawSaveMenu:


Call_002_7830:
    push bc
    push hl
    ld a, [wSaveMenuRow]
    ld c, a
    ld b, $00
    ld hl, SaveMenuYs
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $1c
    ldh [hSpriteX], a
    jr jr_002_7857

; Select the slot cursor Y from the HRAM slot byte and fixed X, preserving BC and HL for the shared tail.
DrawSaveSlotCursor:

Call_002_7845:
    push bc
    push hl
    ldh a, [hSaveSlot]
    ld c, a
    ld b, $00
    ld hl, SaveSlotYs
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $14
    ldh [hSpriteX], a

; Draw UI object zero and restore the BC/HL values pushed by the cursor entry.
DrawSaveCursor:

Jump_002_7857:
jr_002_7857:
    xor a
    call DrawUiObj
    pop hl
    pop bc
    ret
