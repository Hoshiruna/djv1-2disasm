
; Call the bank 5 list reader while preserving the scratch index and ROM bank.
PrepChangeList:


Call_000_3424:
    push af
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    pop af
    push hl
    push af
    ld a, $05
    call PushRomBank
    pop af
    call ReadChangeList
    call PopRomBank
    pop hl
    push af
    ld a, l
    ldh [hChangePos], a
    ld a, h
    ldh [hChangePos+1], a
    pop af
    ret
