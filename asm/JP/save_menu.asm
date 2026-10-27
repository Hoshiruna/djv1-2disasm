; --- save_select.asm ---

; Load the three save slots and enter their selection loop.
RunSaveSelect:


    call LoadSaveSlots

; Reset the hidden audio-test sequence before reading slot input.
ResetSaveCode:

jr_002_74bf:
    xor a
    ld [wSaveCodeStage], a

; Draw the slot cursor, read buttons, and dispatch slot actions or the hidden sequence.
ReadSaveSelect:

Jump_002_74c3:
jr_002_74c3:
    call DrawSaveSlotCursor
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit PADB_A, a
    jp nz, RunSaveSlotMenu

    bit PADB_START, a
    jp nz, RunSaveSlotMenu

    bit PADB_SELECT, a
    jp nz, CycleSaveSlot

    bit PADB_DOWN, a
    jp nz, NextSaveSlot

    bit PADB_UP, a
    jr nz, PrevSaveSlot

    ld a, [wSaveCodeStage]
    rst RST_00

SaveCodeCalls:
    dw SaveAudioCodeBRight
    dw SaveAudioCodeBLeft
    dw SaveAudioCodeBDown
    dw SaveAudioCodeBUp

; Advance the hidden sequence when held buttons include mask $12.
; First held-code stage: B+Right, with no reject mask.
SaveAudioCodeBRight:
SaveCode0:
    ld a, [wJoyHeld]
    and SaveAudioCodeBRightMask
    cp SaveAudioCodeBRightMask
    jr nz, ReadSaveSelect

    ld a, [wSaveCodeStage]
    inc a
    ld [wSaveCodeStage], a
    jr ReadSaveSelect

; Reject held mask $cd and advance on mask $22.
; Held-code stage: B+Left after its original reject-mask check.
SaveAudioCodeBLeft:
SaveCode1:

    ld a, [wJoyHeld]
    and SaveAudioCodeRejectBeforeLeft
    jr nz, ResetSaveCode

    ld a, [wJoyHeld]
    and SaveAudioCodeBLeftMask
    cp SaveAudioCodeBLeftMask
    jr nz, ReadSaveSelect

    ld a, [wSaveCodeStage]
    inc a
    ld [wSaveCodeStage], a
    jr ReadSaveSelect

; Reject held mask $5d and advance on mask $82.
; Held-code stage: B+Down after its original reject-mask check.
SaveAudioCodeBDown:
SaveCode2:

    ld a, [wJoyHeld]
    and SaveAudioCodeRejectBeforeDown
    jr nz, ResetSaveCode

    ld a, [wJoyHeld]
    and SaveAudioCodeBDownMask
    cp SaveAudioCodeBDownMask
    jr nz, ReadSaveSelect

    ld a, [wSaveCodeStage]
    inc a
    ld [wSaveCodeStage], a
    jr ReadSaveSelect

; Reject held mask $3d and enter the audio test on mask $42.
; Held-code stage: B+Up after its original reject-mask check.
SaveAudioCodeBUp:
SaveCode3:

    ld a, [wJoyHeld]
    and SaveAudioCodeRejectBeforeUp
    jr nz, ResetSaveCode

    ld a, [wJoyHeld]
    and SaveAudioCodeBUpMask
    cp SaveAudioCodeBUpMask
    jp z, AudioTestCall

    jp ReadSaveSelect

; Move toward slot zero without wrapping.
PrevSaveSlot:


jr_002_754b:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    cp $00
    jp z, ReadSaveSelect

    dec a
    ldh [hSaveSlot], a
    jp ReadSaveSelect

; Advance the slot and wrap slot three to zero.
CycleSaveSlot:


Jump_002_755d:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    inc a
    ldh [hSaveSlot], a
    cp $03
    jp nz, ReadSaveSelect

    xor a
    ldh [hSaveSlot], a
    jp ReadSaveSelect

; Move toward slot two without wrapping.
NextSaveSlot:


Jump_002_7572:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    cp $02
    jp z, ReadSaveSelect

    inc a
    ldh [hSaveSlot], a
    jp ReadSaveSelect

; --- save_slot_menu.asm ---

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
    jr z, ChooseNewCase

    xor a
    ld [wSaveMenuRow], a
    call DrawSaveOptions

; Draw and poll the three operations for an occupied slot.
SaveOpInputLoop:
jr_002_75a0:
    call DrawSaveMenu
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit PADB_A, a
    jr nz, DispatchSaveOp

    bit PADB_B, a
    jp nz, CancelSaveMenu

    bit PADB_DOWN, a
    jr nz, SaveOpMoveDown

    bit PADB_UP, a
    jr z, SaveOpInputLoop

    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $00
    jr z, SaveOpInputLoop

    dec a
    ld [wSaveMenuRow], a
    jr SaveOpInputLoop

; Move the occupied-slot operation cursor down, up to row two.
SaveOpMoveDown:
jr_002_75cf:
    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $02
    jr z, SaveOpInputLoop

    inc a
    ld [wSaveMenuRow], a
    jr SaveOpInputLoop

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
    ld hl, SaveCaseBookOneChoiceRect
    ld bc, $99a6
    call QueueTileRect
    ld hl, SaveCaseBookTwoChoiceRect
    ld bc, $99e6
    call QueueTileRect
    call SubmitMapQueue
    xor a
    ld [wSaveMenuRow], a

; Draw and poll the two choices for an empty slot.
NewCaseInputLoop:
jr_002_7624:
    call DrawSaveMenu
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit PADB_A, a
    jr nz, StartNewCase

    bit PADB_B, a
    jr nz, CancelNewCase

    bit PADB_DOWN, a
    jr nz, NewCaseMoveDown

    bit PADB_UP, a
    jr z, NewCaseInputLoop

    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $00
    jr z, NewCaseInputLoop

    xor a
    ld [wSaveMenuRow], a
    jr NewCaseInputLoop

; Move the new-case cursor to row two.
NewCaseMoveDown:
jr_002_7652:
    ld a, $19
    call PlayAudio
    ld a, [wSaveMenuRow]
    cp $02
    jr z, NewCaseInputLoop

    ld a, $02
    ld [wSaveMenuRow], a
    jr NewCaseInputLoop

; Return from the new-case selector to the slot list.
CancelNewCase:
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
    jr SetSaveStart

; Load the selected saved game and enter the shared start path with A $ff.
StartSavedGame:

    ld a, $19
    call PlayAudio
    call LoadGame
    ld a, CaseStartLoadedMarker

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
    jr nz, RescanAfterErase

    call EraseGame

; Rescan saves after the erase decision.
RescanAfterErase:
jr_002_76a8:
    call ScanGames
    jr RedrawSaveSlots

; --- save_options.asm ---

; Clear the panel, show the selected slot number and its three regional operation labels, then submit the queue.
DrawSaveOptions:

Call_002_76ad:
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
    ld hl, SaveContinuePointers
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveExitPointers
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveNewGamePointers
    call PickSaveSpec
    call QueueTileSpec
    jp SubmitMapQueue

; Clear answer and row, draw the erase prompt, and enter the shared answer selector.
ConfirmEraseSlot:


Call_002_76df:
    xor a
    ld [wSaveMenuRow], a
    ld [wSaveAnswer], a
    ld hl, SavePromptFill
    call QueueFillSpec
    ld hl, SaveEraseAnswerPointers
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    jp ChooseSaveAnswer

; --- save_answer.asm ---

; Select answer cursor coordinates from row times four plus answer times two; preserve BC and HL for the shared draw tail.
DrawSaveAnswer:


Call_002_76fb:
    push bc
    push hl
    ld a, [wSaveMenuRow]
    add a
    add a
    ld c, a
    ld a, [wSaveAnswer]
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, SaveAnswerCursorPositions
    add hl, bc
    ld a, [hl+]
    ldh [hSpriteX], a
    ld a, [hl]
    ldh [hSpriteY], a
    jp DrawSaveCursor

; X/Y pairs indexed by menu row times four plus answer times two.
SaveAnswerCursorPositions:
SaveAnswerPos:
    db $34, $68, $34, $70, $20, $60, $20, $70, $34, $80, $34, $88

; Select answer zero/one with direction input, confirm the current answer, or cancel as answer one.
ChooseSaveAnswer:

Call_002_7724:
Jump_002_7724:
    xor a
    ld [wSaveAnswer], a

; Draw the answer cursor and poll for confirmation or movement.
SaveAnswerInputLoop:
jr_002_7728:
    call DrawSaveAnswer
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit PADB_A, a
    jr nz, SaveAnswerConfirm

    bit PADB_B, a
    jr nz, SaveAnswerCancel

    bit PADB_DOWN, a
    jr nz, SaveAnswerMoveDown

    bit PADB_UP, a
    jr z, SaveAnswerInputLoop

    ld a, $19
    call PlayAudio
    xor a
    ld [wSaveAnswer], a
    jr SaveAnswerInputLoop

; Set answer one after a downward press.
SaveAnswerMoveDown:
jr_002_774f:
    ld a, $19
    call PlayAudio
    ld a, $01
    ld [wSaveAnswer], a
    jr SaveAnswerInputLoop

; Return answer one after a cancel press.
SaveAnswerCancel:
jr_002_775b:
    ld a, $2f
    call PlayAudio
    ld a, $01
    ld [wSaveAnswer], a
    ret


; Return the current answer after a confirm press.
SaveAnswerConfirm:
jr_002_7766:
    ld a, $19
    call PlayAudio
    ret

; --- save_slots.asm ---

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
    ld a, UiMapIdSaveSelection
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
    ld hl, SaveSlotNumberDestinations
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

    ld hl, SaveSlotNumberDestinations
    call ReadSaveDest
    ld hl, SaveEmptyStatusOffsets
    call ShiftSaveDest
    ld hl, SaveEmptyStatusPointers
    call PickSaveSpec
    jp QueueTileRect


; Choose the saved case label for an occupied slot.
DrawOccupiedSaveSlot:
jr_002_77e7:
    ld hl, SaveSlotCaseDestinations
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

    ld hl, SaveCaseBookOneStatusRect
    jp QueueTileRect


; Queue the label selected for a nonzero saved case byte.
DrawNonzeroCaseSaveSlot:
jr_002_7804:
    ld hl, SaveCaseBookTwoStatusRect
    jp QueueTileRect

; --- save_dest.asm ---

; Five retained byte offsets; the three declared empty-label tables use 6,36,6.
SaveEmptyStatusOffsets:
SaveTextOffsets:
    db $06, $24, $06, $25, $24

; Read the language-selected slot-number rectangle pointer at word index DE into BC.
PickSaveDest:

Call_002_780f:
    ld hl, SaveSlotNumberPointers
    call PickSaveSpec

; Read the destination word at HL plus DE into BC.
ReadSaveDest:

Call_002_7815:
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ret

; Queue the original fill specification for the save panel.
ClearSavePanel:


Call_002_781a:
    ld hl, SavePanelFill
    jp QueueFillSpec

; Add the language-selected byte offset to BC while preserving DE.
ShiftSaveDest:


Call_002_7820:
    push de
    ld d, $00
    ld a, [wTextSet]
    ld e, a
    add hl, de
    ld l, [hl]
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    pop de
    ret

; --- save_cursor.asm ---

; Select the menu cursor Y and fixed X, preserving BC and HL for the shared drawing tail.
DrawSaveMenu:


Call_002_7830:
    push bc
    push hl
    ld a, [wSaveMenuRow]
    ld c, a
    ld b, $00
    ld hl, SaveMenuCursorYTable
    add hl, bc
    ld a, [hl]
    ldh [hSpriteY], a
    ld a, $1c
    ldh [hSpriteX], a
    jr DrawSaveCursor

; Select the slot cursor Y from the HRAM slot byte and fixed X, preserving BC and HL for the shared tail.
DrawSaveSlotCursor:

Call_002_7845:
    push bc
    push hl
    ldh a, [hSaveSlot]
    ld c, a
    ld b, $00
    ld hl, SaveSlotCursorYTable
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
