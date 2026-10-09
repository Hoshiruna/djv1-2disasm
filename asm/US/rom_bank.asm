
; A = bank; save the previous ROM bank on the bank stack.
PushRomBank:
Call_000_0781:
    push af

Jump_000_0782:
    ldh a, [$ff8e]
    call Call_000_0799
    pop af
    ldh [$ff8e], a
    ld [$2000], a
    ret

; Restore the most recently saved ROM bank; preserve A.
PopRomBank:
Call_000_078e:
Jump_000_078e:
    push af
    call Call_000_07a5
    ldh [$ff8e], a
    ld [$2000], a
    pop af
    ret


Call_000_0799:
    push bc
    push af
    ldh a, [$ff8f]
    ld c, a
    dec a
    ldh [$ff8f], a
    pop af
    ldh [c], a
    pop bc

Jump_000_07a4:
    ret


Call_000_07a5:
    push bc
    ldh a, [$ff8f]
    inc a
    ldh [$ff8f], a
    ld c, a
    ldh a, [c]
    pop bc
    ret
