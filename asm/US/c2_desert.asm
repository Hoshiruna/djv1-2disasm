
; Find the current room in the desert grid, apply the selected direction, enter the destination, then test the cash event.
MoveDesert:
MoveC2Grid:
    ld c, DesertCells
    ld e, $00
    ld a, [wRoomId]
    ld hl, DesertRooms

; Scan the desert-room grid for the current room.
DesertFindCurrentRoom:
jr_003_531d:
    cp [hl]
    jr z, DesertApplyStep

    inc hl
    inc e
    dec c
    jr nz, DesertFindCurrentRoom

    ret


; Apply the selected direction to the desert-room index.
DesertApplyStep:
jr_003_5326:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    sub GridRight
    ld c, a
    ld b, $00
    ld hl, DesertSteps
    add hl, bc
    ld a, [hl]
    add e
    ld c, a
    ld hl, DesertRooms
    add hl, bc
    ld a, [hl]
    push af
    call StoreRoomState
    pop af
    call EnterRoom

; With item flag $00 set, no chips, and cash below five dollars, random low bits six or seven add ten to the cash low byte.
TryDesertCash:
    xor a
    call ReadItemFlag
    jr z, DesertCashReturn

    ld a, [wChips]
    cp $00
    jr nz, DesertCashReturn

    ld a, [wC2Cash]
    sub $05
    ld a, [wC2Cash+1]
    sbc $00
    jr nc, DesertCashReturn

    call NextRandom
    ldh a, [hRandByte]
    and $07
    cp $06
    jr c, DesertCashReturn

    ld a, [wC2Cash]
    add $0a
    ld [wC2Cash], a
    ld a, $3f
    call ShowMsg3 ; Message Text18Message3F: YOU FIND A $10 / BILL PLAYFULLY / BEING BLOWN ABOUT / BY THE WIND.[END]
    xor a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode

; Return after checking the desert cash event.
DesertCashReturn:
jr_003_538b:
    ret

DesertSteps:
C2GridSteps:
    db $01 ; Right.
    db $ff ; Left.
    db $08 ; Down.
    db $f8 ; Up.

; Eight grid rows; special destination rooms keep their original IDs.
DesertRooms:
C2GridRooms:
    db $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $6f, RoomDesertAboveTracksA, RoomDesertAboveTracksB, $72, $73, $74, $75
    db RoomDesertLeftOutskirts, RoomOutskirts, RoomTracksA, RoomTracksB, RoomHotelFront, RoomStation, RoomDesertRightStation, $78
    db $79, RoomDesertBelowOutskirts, RoomDesertBelowTracksA, RoomDesertBelowTracksB, RoomDesertBelowHotel, RoomDesertBelowStation, $7f, $80
    db $81, $82, $83, $84, $85, $86, $87, $88
    db $89, $8a, $8b, $8c, $8d, $8e, $8f, $90
    db $91, $92, $93, $94, $95, $96, $97, $98
    db $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0
