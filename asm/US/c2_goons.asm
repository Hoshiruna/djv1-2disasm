
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

    cp RoomCleanersHallway
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
    call ShowMsg2 ; Message Text17Message41: UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / THE TWO GOONS ARE / COMING BACK.[END]
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $c2
    call ShowMsg2 ; Message Text17Message42: ONE OF THE GOONS / GRABS YOU AND / SAYS, "DA BOSS / SAYS HE DON'T KNOWYA!"[PAGE] / "Y...
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2 ; Message Text17Message43: BEFORE YOU CAN / UTTER THOSE LAST / WORDS, THE GOONS / FILL YOU FULL OF / LEAD![END]
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $c4
    call ShowMsg2 ; Message Text17Message44: IT'S AT TIMES LIKETHESE THAT YOU / WISH YOU WERE A / MAGICIAN![END]
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
    call ShowMsg2 ; Message Text17Message41: UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / THE TWO GOONS ARE / COMING BACK.[END]
    ld a, $c5
    call ShowMsg2 ; Message Text17Message45: THE GOONS FIND YOUWANDERING / AIMLESSLY![END]
    call ResumeTextUI
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $cb
    call ShowMsg2 ; Message Text17Message4B: ONE OF THE GOONS / SMACKS YOU HARD ASHE SAYS, "ARE YA / TRYING TO ESCAPE?[PAGE] / I G...
    ld a, $cc
    call ShowMsg2 ; Message Text17Message4C: "DA BOSS DON'T / KNOW YA AND HE / DON'T LIKE IT THATYA GOT DAT LETTER / TO MALONE, EI...
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2 ; Message Text17Message43: BEFORE YOU CAN / UTTER THOSE LAST / WORDS, THE GOONS / FILL YOU FULL OF / LEAD![END]
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $b0
    call ShowMsg2 ; Message Text17Message30: YOU SHOULD'VE MADESURE YOU LOST / THOSE GOONS BEFOREYOU BEGAN ROAMING / AROUND.[END]
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
    call ShowMsg2 ; Message Text17Message41: UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / THE TWO GOONS ARE / COMING BACK.[END]
    ld a, $b6
    call ShowMsg2 ; Message Text17Message36: YOU HEAR A VOICE / SAY, "HEY SPIKE, / HE'S GONE!"[END]
    ld a, $b7
    call ShowMsg2 ; Message Text17Message37: A GRUFF VOICE / REPLIES, "THERE'S / NO SIGN DAT HE / LEFT, SO HE MUST / BE HIDIN' HER...
    call ResumeTextUI
    call BeginGoonsFx
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $f2
    call ShowMsg2 ; Message Text17Message72: SUDDENLY YOU ARE / PULLED ROUGHLY OUTOF THE HAMPER.[PAGE] / "AH, THERE YA / ARE!"[END]
    ld a, $cc
    call ShowMsg2 ; Message Text17Message4C: "DA BOSS DON'T / KNOW YA AND HE / DON'T LIKE IT THATYA GOT DAT LETTER / TO MALONE, EI...
    ld a, $10
    call PlayAudio
    ld a, $c3
    call ShowMsg2 ; Message Text17Message43: BEFORE YOU CAN / UTTER THOSE LAST / WORDS, THE GOONS / FILL YOU FULL OF / LEAD![END]
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
    call ShowMsg2 ; Message Text17Message41: UH-OH! YOU HEAR / FOOTSTEPS![PAGE] / THE TWO GOONS ARE / COMING BACK.[END]
    ld a, $09
    call PlayAudio
    ld a, $b6
    call ShowMsg2 ; Message Text17Message36: YOU HEAR A VOICE / SAY, "HEY SPIKE, / HE'S GONE!"[END]
    ld a, $a1
    call ShowMsg2 ; Message Text17Message21: YOU HEAR A WORRIEDVOICE SAY, "UH-OH / MOOSE! HE AIN'T / HERE!"[PAGE] / A SECOND VOICE...
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
