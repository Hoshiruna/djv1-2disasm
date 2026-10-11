
; Before the goons are fooled, in rooms $46/$47/$48, advance the goons timer; from step nine use the existing capture/escape branches.
StepC2Goons:
StepC2ThreeRooms:


Call_003_5d07:
    ld a, C2GoonsFooled
    call ReadObjFlag
    ret nz

    ld a, [wRoomId]
    cp RoomHamper
    jr z, TickC2Goons

    cp RoomLaundry
    jr z, TickC2Goons

    cp $48
    ret nz

; Advance the goons timer and choose capture or escape once it reaches nine.
TickC2Goons:

jr_003_5d1b:
    ld a, [wC2GoonsTick]
    inc a
    ld [wC2GoonsTick], a
    cp GoonsWait
    ret c

    ld a, C2HandsFree
    call ReadObjFlag
    jr nz, CheckGoonsEscape

; With hands still tied, show the original goons capture and death sequence.
DieC2Bound:

    call ResetObjScroll
    call PlayCue16Twice
    ld a, $c1
    call ShowMsg2
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $c2
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $c4
    call ShowMsg2
    call MarkGoonsEvent
    jp PlayExitEffect

; With hands free, room $46 uses the door diversion; the other tracked rooms retain the capture sequence.
CheckGoonsEscape:


jr_003_5d69:
    ld a, [wRoomId]
    cp RoomHamper
    jr z, CheckGoonsDoor

; With hands free outside room $46, show the original capture while searching for escape.
DieC2Flee:

    call ResetObjScroll
    call PlayCue16Twice
    call ScriptHoldText
    ld a, $c1
    call ShowMsg2
    ld a, $c5
    call ShowMsg2
    call ResumeTextUI
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $cb
    call ShowMsg2
    ld a, $cc
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $b0
    call ShowMsg2
    call ResumeTextUI
    call MarkGoonsEvent
    jp PlayExitEffect

; Choose the goons search or walk-away branch from the original front-door state bit.
CheckGoonsDoor:


jr_003_5dc0:
    ld a, C2FrontDoor
    call ReadStateBit
    jr nz, FoolC2Goons

; With hands free in room $46 and the front door closed, let the goons search and find Ace.
DieC2Search:

    call ResetObjScroll
    call PlayCue16Twice
    call ScriptHoldText
    ld a, $c1
    call ShowMsg2
    ld a, $b6
    call ShowMsg2
    ld a, $b7
    call ShowMsg2
    call ResumeTextUI
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $f2
    call ShowMsg2
    ld a, $cc
    call ShowMsg2
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    jp PlayExitEffect

; Show the open-front-door diversion, mark the goons fooled, and resume the room cue.
FoolC2Goons:


jr_003_5e0c:
    call ResetObjScroll
    call PlayCue16Twice
    call ScriptHoldText
    ld a, $c1
    call ShowMsg2
    ld a, $09
    call PlayAudio
    ld a, $b6
    call ShowMsg2
    ld a, $a1
    call ShowMsg2
    call ResumeTextUI
    ld a, C2GoonsFooled
    call SetObjFlag
    jp RoomCueCall

; Set the saved goons-event bit after the original capture branches.
MarkGoonsEvent:
SetC2Event1:


Call_003_5e34:
    ld a, [wC2EventBits]
    or EvtGoons
    ld [wC2EventBits], a
    ret
