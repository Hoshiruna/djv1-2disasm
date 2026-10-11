
; Match a packed cab menu code to one of the five destination rooms.
PickCabStop:
PickC2Room:


    ld bc, $0000
    ld a, [hl]
    ld hl, CabPickKeys
    ld d, CabStops

jr_003_4cbe:
    cp [hl]
    jr z, jr_003_4cd5

    inc hl
    inc c
    dec d
    jr nz, jr_003_4cbe

    ld a, [wListPick]
    sub $0d
    ld [wListMarkRow], a
    call ClearListMarkCall
    call WaitFrame
    ret


jr_003_4cd5:
    ld hl, CabPickRooms
    add hl, bc
    ld a, [hl]
    ld hl, wRoomId
    cp [hl]
    jr z, CabAlreadyHere

    push af
    ld a, [wRoomId]
    cp $31
    jr nz, jr_003_4cf4

    ld a, $79
    call ReadObjFlag
    jr z, jr_003_4cf4

    ld a, $a1
    call SetObjFlag

jr_003_4cf4:
    pop af
    ld [wRoomId], a
    call FinishCabRide
    ret

; Let Gabby point out that the selected destination is the current stop, then restore the text lists.
CabAlreadyHere:


jr_003_4cfc:
    ld a, $46
    call ShowMsg1
    call RestoreTextLists
    ret

; Play Gabby's departure and arrival messages around the original cab effect, then restore the lists.
FinishCabRide:
FinishC2Pick:


Call_003_4d05:
    call ResetObjScroll
    call MapPulse10Call
    ld a, $48
    call ShowMsg1
    call PlayCabRide
    ld a, $49
    call ShowMsg1
    ld a, $4a
    call ShowMsg1
    call MapPulse10Call
    call RestoreTextLists
    ret

CabPickKeys:
C2PickKeys:
    db $e0
    db $e1
    db $e2
    db $e3
    db $e4

CabPickRooms:
C2PickRooms:
    db $31
    db $5e
    db $60
    db $5f
    db $61

; Play the cab animation eight times; cue audio when the remaining counter reaches two.
PlayCabRide:
PlayC2PickFx:

Call_003_4d2e:
    ld c, CabRideLoops

jr_003_4d30:
    ld a, $48
    ldh [hSpriteX], a
    ld a, $00
    ldh [hSpriteY], a
    push bc
    ld a, AnimCabRide
    call PlayBankAnim
    pop bc
    ld a, $02
    cp c
    jr nz, jr_003_4d49

    ld a, $33
    call PlayAudio

jr_003_4d49:
    dec c
    jr nz, jr_003_4d30

    ret
