
; Set the object list pointer to wObjList, append the selected object, terminate at list offset three, and fall through to RenderObjList.
BuildEffectObj:
    ld a, $00
    ld [wObjListPtr], a

jr_002_7439:
    ld a, $c6
    ld [wObjListPtr+1], a
    call AppendRoomObj
    ld a, $ff
    ld [wObjList+3], a
