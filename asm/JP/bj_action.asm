
; Move the cursor between hit and stand with the original regional coordinates; confirm with cue $19.
ChooseBJAction:


Call_029_6d23:
jr_029_6d23:
    ld a, [wBJChoice]
    add $70
    ld [wCursorX], a
    ld a, $7d
    ld [wCursorY], a
    call DrawBankCursor
    call SubmitOam

jr_029_6d36:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    and $31
    jr z, jr_029_6d36

    bit 0, a
    jr nz, jr_029_6d62

    and $20
    jr z, jr_029_6d56

    ld a, $19
    call PlayAudio
    xor a
    ld [wBJChoice], a
    jr jr_029_6d23

jr_029_6d56:
    ld a, $19
    call PlayAudio
    ld a, $1c
    ld [wBJChoice], a
    jr jr_029_6d23

jr_029_6d62:
    ld a, $19
    call PlayAudio
    ret
