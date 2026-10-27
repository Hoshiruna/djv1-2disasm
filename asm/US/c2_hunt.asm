
; After the goons are fooled, in rooms $46..$4a, advance the hunt timer; from step 49 the goons recapture and kill Ace.
StepC2Hunt:
StepC2Flag84Timer:


Call_003_5cb3:
    ld a, C2GoonsFooled
    call ReadObjFlag
    ret z

    ld a, [wRoomId]
    cp RoomHamper
    ret c

    cp RoomSecretOffice + 1
    ret nc

    ld a, [wC2HuntTick]
    inc a
    ld [wC2HuntTick], a
    cp HuntWait
    ret c

; After the hunt threshold, show the goons recapturing Ace and set the saved hunt event.
CaughtC2Hunt:

    call ResetObjScroll
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    ld a, $9f
    call ShowMsg2 ; Message Text17Message1F: UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / ONE OF THE THUGS / GRABS HOLD OF YOURCOLLAR AND ...
    call ResumeTextUI
    ld a, $05
    call WaitTicks
    ld a, $10
    call PlayAudio
    ld a, $3c
    call WaitTicks
    ld a, [wC2EventBits]
    or EvtHunt
    ld [wC2EventBits], a
    jp PlayExitEffect
