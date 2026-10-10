; Preserve HL/BC/DE while checking and appending the selected object.
AddRoomObj:


    push hl
    push bc
    push de
    call CheckRoomObj
    pop de
    pop bc
    pop hl
    ret
; Append only when both presence and visibility bits are set.
CheckRoomObj:


Call_002_7271:
    ld a, [wDrawObj]
    call ReadObjPresent
    ld a, [wStateResult]
    and $01
    ret z

    ld a, [wDrawObj]
    call ReadObjVisible
    ld a, [wStateResult]
    and $01
    ret z
; Append the selected object position and ID; advance the list write pointer.
AppendRoomObj:

Call_002_7289:
    ld a, [wDrawObj]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [wCaseId]
    cp $00
    jr nz, jr_002_729c

    ld bc, $72c4
    jr jr_002_729f

jr_002_729c:
    ld bc, Case2ObjectPositions

jr_002_729f:
    add hl, bc
    ld a, l
    ld [$c863], a
    ld a, h
    ld [$c864], a
    ld a, [wObjListPtr]
    ld c, a
    ld a, [wObjListPtr+1]
    ld b, a
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [wDrawObj]
    ld [bc], a
    inc bc
    ld a, c
    ld [wObjListPtr], a
    ld a, b
    ld [wObjListPtr+1], a
    ret
