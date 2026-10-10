
; Store end group * regional row stride + end row in the shared scratch index.
GetListEndPos:


Call_000_340f:
    ld a, [wListMax]
    add a
    add a
    add a
    ld c, a
    ld a, [wListEndRow]
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    ret
