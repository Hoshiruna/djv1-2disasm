
; Poll quantity controls, confirm with a clear result or cancel with a set result, preserving the original lower-bound checks.
ChooseChipCount:


Call_003_4df2:
    call WaitFrame

jr_003_4df5:
    call ClearResult
    call PollJoy
    ld a, [wJoyPress]
    and $01
    jr z, jr_003_4e08

    ld a, $19
    call PlayAudio
    ret


jr_003_4e08:
    ld a, [wJoyPress]
    and $02
    jr z, jr_003_4e18

    ld a, $2f
    call PlayAudio
    call SetResult
    ret


jr_003_4e18:
    ld a, [wJoyHeld]
    and $90
    jr nz, jr_003_4e28

    ld a, [wJoyHeld]
    and $60
    jr nz, jr_003_4e47

    jr jr_003_4df5

jr_003_4e28:
    ld a, [wChipCount]
    ld hl, wChipLimit
    cp [hl]
    jr z, jr_003_4df5

    inc a
    ld [wChipCount], a

; Display quantity list text ten, submit it, wait eight ticks, and resume quantity input.
ShowChipCount:

jr_003_4e35:
    ld a, $0a
    ld [wListMark], a
    call ShowListText
    call SubmitMapQueue
    ld a, $08
    call WaitTicks
    jr jr_003_4df5

jr_003_4e47:
    ld a, [wChipCount]
    cp $01
    jr c, jr_003_4df5

    dec a
    ld [wChipCount], a
    jr jr_003_4e35
