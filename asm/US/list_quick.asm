
; Read one script argument, run quick-list insertion, and preserve the shared scratch index.
AddQuickArg:


    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    call ReadArg
    call AddQuickValue
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret

; Store argument zero in the first $ff of five quick-list entries and refresh mode zero through the original UI path.
AddQuickValue:


Call_000_2696:
    ld d, a
    ld a, $00
    ldh [hChangePos], a
    ld a, $00
    ldh [hChangePos+1], a
    ld a, d

jr_000_26a0:
    ld bc, wListBase
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_26b9

    ldh a, [hChangePos]
    inc a
    ldh [hChangePos], a
    cp $05
    jr c, jr_000_26a0

    ret


jr_000_26b9:
    ld a, [wArg0]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wListBase
    add hl, bc
    ld [hl], a
    ld a, [wChangeMode]
    cp $00
    jr z, jr_000_26eb

    push af
    call ResumeTextUI
    xor a
    ld [wOpByte], a
    call RefreshListMode
    call ScrollListCursor
    ld a, $3c
    call WaitTicks
    pop af
    ld [wChangeMode], a
    call RefreshLists
    ret


jr_000_26eb:
    xor a
    ld [wOpByte], a
    call RefreshListMode
    ret
