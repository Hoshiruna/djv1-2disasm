; Preserve HL, BC, and DE while drawing the current room-object list.
DrawRoomObjs:


Call_000_1875:
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


Call_000_1889:
    push hl
    push bc
    push de

Call_000_188c:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawCursor
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


Call_000_18aa:
    cp $ff
    ret z

    push hl
    push bc
    push de
    push af
    ld a, $02
    call PushRomBank
    pop af
    call DrawUiSprite
    call PopRomBank
    pop de
    pop bc

Jump_000_18bf:
    pop hl
    ret
; A = sprite ID; skip $ff and call the case-specific sprite writer in bank 2.
DrawSprite:


Call_000_18c1:
Jump_000_18c1:
    cp $ff

Jump_000_18c3:
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


Call_000_18d8:
    cp $ff
    ret z

    push hl

Call_000_18dc:
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
