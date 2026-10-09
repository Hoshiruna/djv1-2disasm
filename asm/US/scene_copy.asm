
; Stage the map, queue a 14x14 transfer to $9800, and wait for completion.
CopySceneMap:
Call_000_0e6e:
    call ReadSceneMap
    ld a, $0e
    ld [$c900], a
    ld [$c901], a
    call Call_000_0e83
    call SubmitMapQueue

Jump_000_0e7f:
    call Call_000_01a9
    ret


Call_000_0e83:
    ld bc, $9800
    ld hl, $c900
    call QueueMapRect
    ret
