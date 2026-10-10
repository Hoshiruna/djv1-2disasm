
; Store end group * regional row stride + end row in the shared scratch index.
GetListEndPos:


Call_000_32c1:
    ld a, [wListMax]
    ld c, a
    add a
    add a
    add a
    sub c
    ld c, a
    ld a, [wListEndRow]

Jump_000_32cd:
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    ret
