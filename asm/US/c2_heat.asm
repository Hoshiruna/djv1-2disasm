
; In desert rooms $62/$63 or $66..$a0, advance exposure: warnings at 8/16, mirage at 32, death at 40.
StepC2Heat:
StepC2RangeTimer:


Call_003_5e3d:
    ld a, [wRoomId]
    cp RoomTracksA
    jr z, jr_003_5e4e

    cp RoomTracksB
    jr z, jr_003_5e4e

    cp DesertRoomMin
    ret c

    cp DesertRoomEnd
    ret nc

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
    jp ShowMsg0

; Warn about the lack of shade and water.
WarnDesertDry:


jr_003_5e6b:
    ld a, $d9
    jp ShowMsg0

; Show the lemonade-stand mirage, restore the scene effect, and resume the room cue.
ShowMirage:


jr_003_5e70:
    call ResetObjScroll
    xor a
    call PlayAudio
    ld a, $db
    call ShowMsg0
    ld a, FxMirage
    call BeginC2Fx
    call LoadC2Pal
    call C2PalNoop
    ld a, $78
    call WaitTicks
    call ScriptHoldText
    ld a, $dc
    call ShowMsg0
    call ResumeTextUI
    ld a, $3c
    call WaitTicks
    call RestoreC2Effect
    ld a, $de
    call ShowMsg0
    jp RoomCueCall

; Show collapse in the sand, mark the saved heat event, and run the exit effect.
DieInDesert:


jr_003_5ea7:
    ld a, $09
    call PlayAudio
    ld a, $df
    call ShowMsg0
    ld a, [wC2EventBits]
    or EvtHeat
    ld [wC2EventBits], a
    jp PlayExitEffect
