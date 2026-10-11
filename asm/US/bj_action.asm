
; Move the cursor between hit and stand with the original regional coordinates; confirm with cue $19.
ChooseBJAction:


Call_029_6ceb:
jr_029_6ceb:
    ld a, [wBJChoice]
    add $34
    ld [wCursorX], a
    ld a, $7d
    ld [wCursorY], a
    call DrawBankCursor
    call SubmitOam

jr_029_6cfe:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    and $31
    jr z, jr_029_6cfe

    bit 0, a
    jr nz, jr_029_6d2a

    and $20
    jr z, jr_029_6d1e

    ld a, $19
    call PlayAudio
    xor a
    ld [wBJChoice], a
    jr jr_029_6ceb

jr_029_6d1e:
    ld a, $19
    call PlayAudio
    ld a, $2c
    ld [wBJChoice], a
    jr jr_029_6ceb

jr_029_6d2a:
    ld a, $19
    call PlayAudio
    ret
