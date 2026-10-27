
; Match a packed cab menu code to one of the five destination rooms.
PickCabStop:
PickC2Room:


    ld bc, $0000
    ld a, [hl]
    ld hl, CabPickKeys
    ld d, CabStops

; Compare the selected menu code with the next cab key.
FindCabKey:

jr_003_4cbe:
    cp [hl]
    jr z, CheckCabStop

    inc hl
    inc c
    dec d
    jr nz, FindCabKey

    ld a, [wListPick]
    sub $0d
    ld [wListMarkRow], a
    call ClearListMarkCall
    call WaitFrame
    ret

; Read the matching destination and compare it with the current room.
CheckCabStop:


jr_003_4cd5:
    ld hl, CabPickRooms
    add hl, bc
    ld a, [hl]
    ld hl, wRoomId
    cp [hl]
    jr z, CabAlreadyHere

    push af
    ld a, [wRoomId]
    cp CabAtChicago
    jr nz, SetCabRoom

    ld a, C2NewsBoth
    call ReadObjFlag
    jr z, SetCabRoom

    ld a, C2NewsLeft
    call SetObjFlag

; Restore the selected destination, set the room, and finish the ride.
SetCabRoom:

jr_003_4cf4:
    pop af
    ld [wRoomId], a
    call FinishCabRide
    ret

; Let Gabby point out that the selected destination is the current stop, then restore the text lists.
CabAlreadyHere:


jr_003_4cfc:
    ld a, $46
    call ShowMsg1 ; Message Text14Message46: GABBY LAUGHS AND / SAYS, "WELL TAKE ALOOK AROUND, ACE! / DAT'S WHERE WE ARENOW!"[END]
    call RestoreTextLists
    ret

; Play Gabby's departure and arrival messages around the original cab effect, then restore the lists.
FinishCabRide:
FinishC2Pick:


Call_003_4d05:
    call ResetObjScroll
    call MapPulse10Call
    ld a, $48
    call ShowMsg1 ; Message Text14Message48: "LEAVE IT TO ME, / ACE!" WITH THAT / GABBY DRIVES OFF.[END]
    call PlayCabRide
    ld a, $49
    call ShowMsg1 ; Message Text14Message49: A PEEL OF RUBBER, / SOME WICKED TURNS / AND A SCREECH OF / THE TIRES LATER...[END]
    ld a, $4a
    call ShowMsg1 ; Message Text14Message4A: GABBY STOPS THE / CAB WITH A JERK. / HE SMILES AS HE / SAYS, "HERE WE / ARE, ACE!"[END]
    call MapPulse10Call
    call RestoreTextLists
    ret

CabPickKeys:
C2PickKeys:
    db CabChicago
    db CabAdison
    db CabPeoria
    db CabCottage
    db CabMorgue

CabPickRooms:
C2PickRooms:
    db CabAtChicago
    db CabAtAdison
    db CabAtPeoria
    db CabAtCottage
    db CabAtMorgue

; Play the cab animation eight times; cue audio when the remaining counter reaches two.
PlayCabRide:
PlayC2PickFx:

Call_003_4d2e:
    ld c, CabRideLoops

; Reset the sprite position and play one cab animation.
CabRideLoop:

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
    jr nz, NextCabLoop

    ld a, $33
    call PlayAudio

; Count down the remaining cab animations.
NextCabLoop:

jr_003_4d49:
    dec c
    jr nz, CabRideLoop

    ret
