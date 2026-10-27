
; With flashlight flag $4d set, dim the light at timer step 29; from 59 run the existing room-dependent expiry branch.
StepC2Lamp:
StepC2PalTimer:

Call_003_591b:
    ld a, C2LampFlag
    call ReadObjFlag
    ret z

    ld a, [wC2LampTick]
    inc a
    cp LampDimStep
    jr z, DimC2Lamp

    cp LampEndStep
    jr nc, ExpireC2Lamp

    ld [wC2LampTick], a
    ret

; At the original dimming step, update the timer and use the room palette lookup.
DimC2Lamp:


jr_003_5931:
    ld [wC2LampTick], a
    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, ShowLampWeak

    call ResetObjScroll
    ld a, [wC2TimedPal]
    ld [wScenePalId], a
    call C2PalNoop
    call LoadC2Pal
    call PickC2Scene
    call ReloadScene

; Show the weak-light text and set the original weak-cell flag.
ShowLampWeak:

jr_003_5953:
    ld a, $86
    call ShowMsg1 ; Message Text15Message06: THE FLASHLIGHT'S / LIGHT DIMS.[END]
    ld a, C2LampWeak
    jp SetObjFlag

; Retain the original room-dependent lamp expiry and death branch.
ExpireC2Lamp:


jr_003_595d:
    call FindC2TimedPal
    ld a, [wStateResult]
    and $01
    jr nz, LampExpiryText

    ld a, [wRoomId]
    cp RoomJoeOffice
    jr z, LampExpiryText

    cp RoomJoeRearHallway
    jr z, LampExpiryText

    call ResetObjScroll
    ld a, C2LampFlag
    call ClearObjFlag
    ld a, $49
    ld [wScenePalId], a
    call C2PalNoop
    call LoadC2Pal
    call PickC2Scene
    call ReloadScene
    call ScriptHoldText
    ld a, $88
    call ShowMsg1 ; Message Text15Message08: SUDDENLY, THE / FLASHLIGHT GOES / OUT.[END]
    ld a, $09
    call PlayAudio
    ld a, $e9
    call ShowMsg1 ; Message Text15Message69: YOU GROPE ABOUT / BLINDLY THROUGH / THE DARKNESS.[PAGE] / YOU WERE NEVER / MUCH GOOD ...
    ld a, $17
    call PlayAudio
    call ScriptNoop
    ld a, $3b
    call ShowMsg3 ; Message Text18Message3B: WHUMP![PAGE] / YOU FALL HARD AND / HIT YOUR HEAD / AGAINST THE FLOOR.[PAGE] / THE MEA...
    call ResumeTextUI
    call ClearLampFlags
    ld a, [wC2EventBits]
    or EvtLamp
    ld [wC2EventBits], a
    jp PlayExitEffect

; Show the original lamp expiry text and fall through to flag cleanup.
LampExpiryText:


jr_003_59bb:
    ld a, $88
    call ShowMsg1 ; Message Text15Message08: SUDDENLY, THE / FLASHLIGHT GOES / OUT.[END]

; Clear the original flags 76, lamp-on and cell-installed in order.
ClearLampFlags:

; Clear object flags $76, $4d and $4e in order.
ClearC2PalFlags:

Call_003_59c0:
    ld a, C2LampReady
    call ClearObjFlag
    ld a, C2LampFlag
    call ClearObjFlag
    ld a, C2LampHasCell
    jp ClearObjFlag
