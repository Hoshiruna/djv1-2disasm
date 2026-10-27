
; In Case II, select the horizontal or sloping sprite path from the original four-room lists.
PlayDesertMotion:
PlayC2RoomAnim:
    ld a, [wCaseId]
    cp $00
    ret z

    ld a, [wRoomId]
    ld e, a
    ld hl, FlatDesertRooms

; Scan for a room using the flat travel animation.
DesertFindFlatRoom:
jr_003_6d72:
    ld a, [hl+]
    cp $ff
    jr z, DesertStartSlopeSearch

    cp e
    jr nz, DesertFindFlatRoom

    call MoveDesertFlat
    ret


; Start checking rooms with the sloping travel animation.
DesertStartSlopeSearch:
jr_003_6d7e:
    ld hl, SlopeDesertRooms

; Scan for a room using the sloping travel animation.
DesertFindSlopeRoom:
jr_003_6d81:
    ld a, [hl+]
    cp $ff
    ret z

    cp e
    jr nz, DesertFindSlopeRoom

    call MoveDesertSlope
    ret

; Reset frame state; at Y eight, draw 112 positions from X $60 down to $f1, stopping after the update reaches $f0.
MoveDesertFlat:
MoveC2Anim6C:


Call_003_6d8c:
    ld a, $60
    ld [wDesertObjX], a
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a

; Draw the next frame of flat travel.
DesertFlatNextFrame:
jr_003_6d98:
    ld a, [wDesertObjX]
    ldh [hSpriteX], a
    ld a, $08
    ldh [hSpriteY], a
    ld a, AnimDesertFlat
    call StepBankAnim
    call DrawRoomObjs
    call SubmitOam
    ld a, [wDesertObjX]
    dec a
    ld [wDesertObjX], a
    cp $f0
    jr nz, DesertFlatNextFrame

    ret

; Reset frame state; draw 80 positions from X $40 down to $f1, lowering Y after every fourth updated X.
MoveDesertSlope:
MoveC2Anim6B:


Call_003_6db8:
    ld a, $40
    ld [wDesertObjX], a
    ld a, $60
    ld [wDesertObjY], a
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a

; Draw the next frame of sloping travel.
DesertSlopeNextFrame:
jr_003_6dc9:
    ld a, [wDesertObjX]
    ldh [hSpriteX], a
    ld a, [wDesertObjY]
    ldh [hSpriteY], a
    ld a, AnimDesertSlope
    call StepBankAnim
    call DrawRoomObjs
    call SubmitOam
    ld a, [wDesertObjX]
    dec a
    ld [wDesertObjX], a
    and $03
    jr nz, DesertSlopeCheckEnd

    ld a, [wDesertObjY]
    dec a
    ld [wDesertObjY], a

; Check whether sloping travel reached its end position.
DesertSlopeCheckEnd:
jr_003_6df0:
    ld a, [wDesertObjX]
    cp $f0
    jr nz, DesertSlopeNextFrame

    ret

FlatDesertRooms:
C2Anim6CRooms:
    db RoomDesertBelowTracksB, $6d, $81, $8d, $ff

SlopeDesertRooms:
C2Anim6BRooms:
    db $84, RoomDesertAboveTracksB, $93, $9f, $ff
