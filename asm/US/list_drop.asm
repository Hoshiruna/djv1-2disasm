
; Shift following list bytes left through the regional full-list limit, write $ff, and restore the scratch index.
DropListEntry:


Call_000_32f8:
    ld a, $54
    ld [wDropEnd], a

jr_000_32fd:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call GetListPos
    ldh a, [hChangePos]
    ld c, a
    inc c
    ld b, $00
    ld hl, wListBase
    add hl, bc

jr_000_3313:
    ld a, [wDropEnd]
    cp c
    jr z, jr_000_331f

    ld a, [hl-]
    ld [hl+], a
    inc hl
    inc c
    jr jr_000_3313

jr_000_331f:
    ld a, $ff
    dec hl
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Use the first-two-group limit and enter the same list-entry deletion loop.
DropListHead:


Call_000_332d:
    ld a, $0e
    ld [wDropEnd], a
    jr jr_000_32fd
