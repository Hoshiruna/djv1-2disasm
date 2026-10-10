
; Queue the regional list background, draw the current record header and draw list items.
DrawListUI:

Call_001_4b7c:
    ld hl, ListBlankMap
    call QueueTileSpec
    call SubmitMapQueue
    ld hl, ListBarFill
    call QueueFillSpec
    call SubmitMapQueue
    call DrawListHead
    call DrawListItems
    ret

ListBlankMap:
    db $a0, $9a, $13, $08, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $71, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $71, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $71, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $71, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $71, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $71, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $71, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $71, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f

ListBarFill:
    db $43, $9a, $08, $02, $7f
