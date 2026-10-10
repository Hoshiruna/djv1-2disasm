
; Run the region-specific boot-screen resource sequence and its shared display helper.
ShowBoot:


    call DisableLcd
    call Call_000_09df
    ld a, $04
    call DrawBoot
    call DisableLcd
    xor a

; Load map A and object palette 2, fade in, wait $78 ticks, then fade out.
DrawBoot:

Call_001_41c0:
    call ReadUiMap
    ld a, $02
    call StageUiObj
    call RestoreLcd
    call BlankOam
    call FadeFromWhite
    ld a, $78
    call WaitTicks
    call FadeToWhite
    ret

; Load the title resources, wait for A/Start, fade out, and run the original trailing helper.
ShowTitle:


    call LoadTextSet
    call DisableLcd
    call Call_000_09d4
    ld a, $01
    call ReadUiMap
    ld a, $02
    call StageUiObj
    call RestoreLcd
    call BlankOam
    call FadeFromWhite
    call WaitStart
    call FadeToWhite
    call StoreTextSet
    ret

; Run the original title helper and poll new A/Start presses; play audio $19 on exit.
WaitStart:


Call_001_4200:
jr_001_4200:
    call NextRandom
    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr nz, jr_001_4213

    bit 3, a
    jr nz, jr_001_4213

    jr jr_001_4200

jr_001_4213:
    ld a, $19
    call PlayAudio
    ret
