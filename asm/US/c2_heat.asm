
; In desert rooms $62/$63 or $66..$a0, advance exposure: warnings at 8/16, mirage at 32, death at 40.
StepC2Heat:
StepC2RangeTimer:


Call_003_5e3d:
    ld a, [wRoomId]
    cp RoomTracksA
    jr z, C2HeatAdvance

    cp RoomTracksB
    jr z, C2HeatAdvance

    cp DesertRoomMin
    ret c

    cp DesertRoomEnd
    ret nc

; Advance desert exposure in the tracked rooms.
C2HeatAdvance:
jr_003_5e4e:
    ld a, [wC2HeatTick]
    inc a
    ld [wC2HeatTick], a
    cp HeatSun
    jr z, WarnDesertSun

    cp HeatDry
    jr z, WarnDesertDry

    cp HeatMirage
    jr z, ShowMirage

    cp HeatLimit
    jr z, DieInDesert

    ret

; Warn that the desert sun beats down mercilessly.
WarnDesertSun:


jr_003_5e66:
    ld a, $d8
    jp ShowMsg0 ; Message Text13Message58: THE SUN BEATS DOWNMERCILESSLY ON / YOU.[END]

; Warn about the lack of shade and water.
WarnDesertDry:


jr_003_5e6b:
    ld a, $d9
    jp ShowMsg0 ; Message Text13Message59: NO SHADE, NO / WATER...[PAGE] / YOU SWEAT / PROFUSELY, HOPING / FOR AN END TO THISDES...

; Show the lemonade-stand mirage, restore the scene effect, and resume the room cue.
ShowMirage:


jr_003_5e70:
    call ResetObjScroll
    xor a
    call PlayAudio
    ld a, $db
    call ShowMsg0 ; Message Text13Message5B: "WATER," YOU / CROAK.[PAGE] / IT'S ONLY A MATTEROF TIME BEFORE YOUBECOME BUZZARD / BA...
    ld a, FxMirage
    call BeginC2Fx
    call LoadC2Pal
    call C2PalNoop
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $dc
    call ShowMsg0 ; Message Text13Message5C: COULD IT BE? WHY / YES, IT IS! / ...A LEMONADE / STAND![PAGE] / YOU STAGGER OVER / TO...
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    ld a, $de
    call ShowMsg0 ; Message Text13Message5E: JUST A MIRAGE! / YOU SHOULD HAVE / KNOWN![PAGE] / YOU MUST BE NEAR / THE END OF YOUR ...
    jp RoomCueCall

; Show collapse in the sand, mark the saved heat event, and run the exit effect.
DieInDesert:


jr_003_5ea7:
    ld a, $09
    call PlayAudio
    ld a, $df
    call ShowMsg0 ; Message Text13Message5F: YOU FALL FACE DOWNIN THE SAND. YOU / CAN'T MANAGE / ANOTHER STEP...[PAGE] / YOU LIE F...
    ld a, [wC2EventBits]
    or EvtHeat
    ld [wC2EventBits], a
    jp PlayExitEffect
