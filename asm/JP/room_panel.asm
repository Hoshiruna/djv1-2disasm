
; Queue a 5-by-5 fill of tile $70 at map address $98cf.
FillRoomPanel:


    ld bc, $98cf
    ld hl, RoomPanelFill
    call QueueFillRect
    ret

RoomPanelFill:
    db $05, $05, $70
