
; Store mode * row stride + row in the scratch index; US stride is 7, JP stride is 8.
GetListPos:


Call_000_33fa:
Jump_000_33fa:
    ld a, [wChangeMode]
    add a
    add a
    add a
    ld c, a
    ld a, [wListRow]
    add c
    ld c, a
    ld b, $00
    ld a, c
    ldh [hChangePos], a
    ld a, b
    ldh [hChangePos+1], a
    ret
