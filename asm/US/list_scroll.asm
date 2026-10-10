
; Set list cursor position and input selection, then call bank-one ScrollSelection.
ScrollListCursor:


Call_000_339c:
    ld a, $04
    ld [wCursorX], a
    ld a, $9c
    ld [wCursorY], a
    ld a, $0c
    ld [wInputSel], a
    push af
    ld a, $01
    call PushRomBank
    pop af
    call ScrollSelection
    call PopRomBank
    ret
