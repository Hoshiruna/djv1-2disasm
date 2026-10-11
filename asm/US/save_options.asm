
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
    ld hl, SaveUiPtrs0
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveUiPtrs1
    call PickSaveSpec
    call QueueTileSpec
    ld hl, SaveUiPtrs2
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
    ld hl, SaveUiPtrs3
    call PickSaveSpec
    call QueueTileSpec
    call SubmitMapQueue
    jp ChooseSaveAnswer
