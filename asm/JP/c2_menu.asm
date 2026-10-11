
; Poll confirmation, cancellation, and held direction buttons; keep the selection between zero and its stored maximum.
ChooseC2Menu:

Call_003_549d:
jr_003_549d:
    call ClearResult
    call PollJoy
    ld a, [wJoyPress]
    and $01
    jr z, jr_003_54b0

    ld a, $19
    call PlayAudio
    ret


jr_003_54b0:
    ld a, [wJoyPress]
    and $02
    jr z, jr_003_54c0

    ld a, $2f
    call PlayAudio
    call SetResult
    ret


jr_003_54c0:
    ld a, [wJoyHeld]
    sla a
    jr c, jr_003_54cd

    sla a
    jr c, jr_003_54e9

    jr jr_003_549d

jr_003_54cd:
    ld a, [wC2MenuPick]
    ld hl, wC2MenuMax
    cp [hl]
    jr nc, jr_003_549d

    inc a
    ld [wC2MenuPick], a
    ld a, $19
    call PlayAudio

jr_003_54df:
    call DrawC2Menu
    ld a, $08
    call WaitTicks
    jr jr_003_549d

jr_003_54e9:
    ld a, [wC2MenuPick]
    cp $00
    jr z, jr_003_549d

    dec a
    ld [wC2MenuPick], a
    ld a, $19
    call PlayAudio
    jr jr_003_54df

; Select cursor coordinates from the menu mode, draw its sprite and room objects, then submit OAM.
DrawC2Menu:

Call_003_54fb:
    ld a, [wC2MenuMode]
    call SetC2MenuPos
    call DrawC2MenuMark
    call DrawRoomObjs
    call SubmitOam
    ret
