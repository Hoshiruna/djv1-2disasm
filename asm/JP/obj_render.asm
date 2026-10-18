; Draw X/Y/object triples until X is $ff; subtract the sprite Y offset.
RenderObjList:
    push hl

; Start rendering the room-object list.
ObjRenderStartList:
jr_002_7447:
    push de
    push bc
    ld hl, wObjList

; Read the next X/Y/object triple, subtract the sprite scroll Y, and draw its object sprite; X $ff ends the list.
DrawNextRoomObj:

jr_002_744c:
    ld a, [hl+]
    cp $ff
    jr z, EndRoomObjDraw

    ldh [hSpriteX], a
    ld a, [hl+]
    push bc
    ld b, a
    ld a, [wSpriteScrollY]
    ld c, a
    ld a, b

; Subtract the sprite scroll offset from the object Y coordinate.
ObjRenderApplyScroll:
jr_002_745b:
    sub c
    pop bc
    ldh [hSpriteY], a
    ld a, [hl+]
    call DrawObjSprite
    jr DrawNextRoomObj

; Restore BC, DE, and HL saved by the object-list renderer.
EndRoomObjDraw:

jr_002_7465:
    pop bc
    pop de
    pop hl
    ret
