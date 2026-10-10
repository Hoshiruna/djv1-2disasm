
; Stage the map, queue a 14x14 transfer to $9800, and wait for completion.
CopySceneMap:
Call_000_0e6e:
    call ReadSceneMap
    ld a, $0e
    ld [wSceneRect], a
    ld [wSceneRect+1], a
    call QueueSceneMap
    call SubmitMapQueue

Jump_000_0e7f:
    call WaitVideo
    ret

; Queue the staged scene rectangle at tile-map address $9800.
QueueSceneMap:


Call_000_0e83:
    ld bc, $9800
    ld hl, wSceneRect
    call QueueMapRect
    ret
