; Preserve HL, BC, and DE while drawing the current room-object list.
DrawRoomObjs:


Call_000_19c5:
    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret

; Preserve HL, BC, and DE while drawing the cursor, then the room-object list.
DrawCursorObjs:


Call_000_19d9:
    push hl
    push bc
    push de
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor

Jump_000_19e6:
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RenderObjList
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret

; Skip sprite ID $ff; otherwise call bank-two DrawUiSprite with the original A, preserving HL, BC, and DE.
DrawUiObj:


Call_000_19fa:
    cp $ff
    ret z

    push hl
    push bc

Call_000_19ff:
Jump_000_19ff:
    push de

Jump_000_1a00:
    push af

Jump_000_1a01:
    ld a, $02
    call PushRomBank
    pop af
    call DrawUiSprite
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
; A = sprite ID; skip $ff and call the case-specific sprite writer in bank 2.
DrawSprite:


Call_000_1a11:
Jump_000_1a11:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call DrawCaseSprite
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
; A = object ID; draw its first animation frame through bank 2.
DrawObjSprite:


Call_000_1a28:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call DrawObjFrame
    call PopRomBank
    pop de
    pop bc
    pop hl
    ret
