
; Load the three save slots and enter their selection loop.
RunSaveSelect:


    call LoadSaveSlots

; Reset the hidden audio-test sequence before reading slot input.
ResetSaveCode:

jr_002_74bf:
    xor a
    ld [wSaveCodeStage], a

; Draw the slot cursor, read buttons, and dispatch slot actions or the hidden sequence.
ReadSaveSelect:

Jump_002_74c3:
jr_002_74c3:
    call DrawSaveSlotCursor
    call SubmitOam
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jp nz, RunSaveSlotMenu

    bit 3, a
    jp nz, RunSaveSlotMenu

    bit 2, a
    jp nz, CycleSaveSlot

    bit 7, a
    jp nz, NextSaveSlot

    bit 6, a
    jr nz, jr_002_754b

    ld a, [wSaveCodeStage]
    rst RST_00

SaveCodeCalls:
    dw SaveCode0
    dw SaveCode1
    dw SaveCode2
    dw SaveCode3

; Advance the hidden sequence when held buttons include mask $12.
SaveCode0:
    ld a, [wJoyHeld]
    and $12
    cp $12
    jr nz, jr_002_74c3

    ld a, [wSaveCodeStage]
    inc a
    ld [wSaveCodeStage], a
    jr jr_002_74c3

; Reject held mask $cd and advance on mask $22.
SaveCode1:

    ld a, [wJoyHeld]
    and $cd
    jr nz, jr_002_74bf

    ld a, [wJoyHeld]
    and $22
    cp $22
    jr nz, jr_002_74c3

    ld a, [wSaveCodeStage]
    inc a
    ld [wSaveCodeStage], a
    jr jr_002_74c3

; Reject held mask $5d and advance on mask $82.
SaveCode2:

    ld a, [wJoyHeld]
    and $5d
    jr nz, jr_002_74bf

    ld a, [wJoyHeld]
    and $82
    cp $82
    jr nz, jr_002_74c3

    ld a, [wSaveCodeStage]
    inc a
    ld [wSaveCodeStage], a
    jr jr_002_74c3

; Reject held mask $3d and enter the audio test on mask $42.
SaveCode3:

    ld a, [wJoyHeld]
    and $3d
    jr nz, jr_002_74bf

    ld a, [wJoyHeld]
    and $42
    cp $42
    jp z, AudioTestCall

    jp ReadSaveSelect

; Move toward slot zero without wrapping.
PrevSaveSlot:


jr_002_754b:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    cp $00
    jp z, ReadSaveSelect

    dec a
    ldh [hSaveSlot], a
    jp ReadSaveSelect

; Advance the slot and wrap slot three to zero.
CycleSaveSlot:


Jump_002_755d:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    inc a
    ldh [hSaveSlot], a
    cp $03
    jp nz, ReadSaveSelect

    xor a
    ldh [hSaveSlot], a
    jp ReadSaveSelect

; Move toward slot two without wrapping.
NextSaveSlot:


Jump_002_7572:
    ld a, $19
    call PlayAudio
    ldh a, [hSaveSlot]
    cp $02
    jp z, ReadSaveSelect

    inc a
    ldh [hSaveSlot], a
    jp ReadSaveSelect
