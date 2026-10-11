
; Display the two-choice prompt, process the selected choice, and retain the original text-hold handling.
RunC2Choice:
    ld a, $48
    call ShowMsg3
    ld a, $01
    ld [wC2MenuMode], a
    ld [wC2MenuMax], a
    xor a
    ld [wC2MenuPick], a
    call DrawC2Menu
    call ChooseC2Menu
    ld a, [wC2MenuPick]
    cp $00
    jr nz, jr_003_555c

; Show message $46 through the existing message-three handler.
ShowC2Choice46:

Call_003_5557:
    ld a, $46
    jp ShowMsg3


jr_003_555c:
    call ScriptHoldText
    ld a, $91
    call ShowMsg0
    call ShowC2Choice46
    jp ResumeTextUI
