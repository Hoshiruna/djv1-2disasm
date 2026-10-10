
; Read a room argument and use the existing branch-if-set path on a match.
BranchRoomIs:


    call ScriptRoomIs
    jp BranchIfSet

; Read a room argument and use the existing branch-if-clear path on a mismatch.
BranchRoomNot:


    call ScriptRoomIs

Jump_000_21d3:
    jp BranchIfClear

; Read one argument and set the result when it matches the current room.
ScriptRoomIs:


Call_000_21d6:
    call ClearResult
    call ReadArg
    ld a, [wArg0]
    ld b, a
    ld a, [wRoomId]
    cp b
    ret nz

    call SetResult
    ret

; Read one argument and write the current room.
ScriptSetRoom:


    call ReadArg
    ld [wRoomId], a
    ret
