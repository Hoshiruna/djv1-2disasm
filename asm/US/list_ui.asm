
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
