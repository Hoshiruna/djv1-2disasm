
; Check the selected slot bitmap and show saved-slot operations or the new-case selector.
RunSaveSlotMenu:


Jump_002_7584:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    ld c, a
    ld b, $00
    ld hl, SaveSlotMasks
    add hl, bc
    ld d, [hl]
    ld a, [wSaveSlotsMask]
    and d
    jr z, jr_002_75f3

    xor a
    ld [wSaveMenuRow], a
    call DrawSaveOptions

jr_002_75a0:
    call DrawSaveMenu
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr nz, jr_002_75e4

    bit 1, a
    jp nz, CancelSaveMenu

    bit 7, a
    jr nz, jr_002_75cf

    bit 6, a
    jr z, jr_002_75a0

    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $00
    jr z, jr_002_75a0

    dec a
    ld [wSaveMenuRow], a
    jr jr_002_75a0

jr_002_75cf:
    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $02
    jr z, jr_002_75a0

    inc a
    ld [wSaveMenuRow], a
    jr jr_002_75a0

SaveSlotMasks:
    db $01, $02, $04

; Confirm the selected saved-slot operation and dispatch its original three-entry table.
DispatchSaveOp:

jr_002_75e4:
    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    rst RST_00

SaveOpCalls:
    dw StartSavedGame
    dw RedrawSaveSlots
    dw EraseSaveSlot

; Show both case choices for an empty slot and preserve the original cursor values zero/two and cancellation.
ChooseNewCase:

jr_002_75f3:
    call ClearSavePanel
    ldh a, [hSaveSlot]
    add a
    ld e, a
    ld d, $00
    call PickSaveDest
    ld l, c
    ld h, b
    ld bc, $9965
    call QueueTileRect
    xor a
    ld [wCaseId], a
    ld hl, SaveSlotRect11
    ld bc, $99a6
    call QueueTileRect
    ld hl, SaveSlotRect12
    ld bc, $99e6
    call QueueTileRect
    call SubmitMapQueue
    xor a
    ld [wSaveMenuRow], a

jr_002_7624:
    call DrawSaveMenu
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr nz, jr_002_7670

    bit 1, a
    jr nz, jr_002_7665

    bit 7, a
    jr nz, jr_002_7652

    bit 6, a
    jr z, jr_002_7624

    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $00
    jr z, jr_002_7624

    xor a
    ld [wSaveMenuRow], a
    jr jr_002_7624

jr_002_7652:
    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $02
    jr z, jr_002_7624

    ld a, $02
    ld [wSaveMenuRow], a
    jr jr_002_7624

jr_002_7665:
    ld a, $2f
    call PlayAudio
    call DrawSaveSlots
    jp ReadSaveSelect

; Convert the selected menu row to case zero/one and enter the shared start path with A zero.
StartNewCase:


jr_002_7670:
    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    srl a
    ld [wCaseId], a
    xor a
    jr jr_002_768a

; Load the selected saved game and enter the shared start path with A $ff.
StartSavedGame:

    ld a, $19
    call PlayAudio
    call LoadGame
    ld a, $ff

; Store the new/load start marker from A and fade out.
SetSaveStart:

jr_002_768a:
    ld [wSaveStart], a
    jp FadeOut

; Play the cancel cue and return to the slot display.
CancelSaveMenu:


Jump_002_7690:
    ld a, $2f
    call PlayAudio

; Redraw the three slots and return to their input loop.
RedrawSaveSlots:

jr_002_7695:
    call DrawSaveSlots
    jp ReadSaveSelect

; Confirm erase, erase only on answer zero, rescan saved games, and return to the slot display.
EraseSaveSlot:


    call ConfirmEraseSlot
    ld a, [wSaveAnswer]
    cp $00
    jr nz, jr_002_76a8

    call EraseGame

jr_002_76a8:
    call ScanGames
    jr jr_002_7695
