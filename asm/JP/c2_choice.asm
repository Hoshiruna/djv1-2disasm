
; Ask whether Ace knows blackjack rules and branch on the selected answer.
Ask21Rules:

RunC2Choice:
    ld a, $48
    call ShowMsg3 ; Message Text18Message48: [OBJECT_WRAM:37C5]は いった。[PAGE] / 「ブラックジャックの ルールは /  しっていますか?」 /          は い /       ...
    ld a, $01
    ld [wC2MenuMode], a
    ld [wC2MenuMax], a
    xor a
    ld [wC2MenuPick], a
    call DrawC2Menu
    call ChooseC2Menu
    ld a, [wC2MenuPick]
    cp $00
    jr nz, Explain21Rules

; Explain that blackjack requires chips obtained at the cashier.
ShowChipHint:

ShowC2Choice46:

Call_003_5557:
    ld a, $46
    jp ShowMsg3 ; Message Text18Message46: 「わたしと しょうぶしたいときは /  チップを つかってください![PAGE] /  チップは りょうがえしょで /  おかねと こうかんします。」[END]

; Show blackjack rules and the chip hint, then resume the text UI.
Explain21Rules:


jr_003_555c:
    call ScriptHoldText
    ld a, $91
    call ShowMsg0 ; Message Text13Message11: 「それでは せつめいします。[PAGE] /  まず カードを 2まいずつ /  くばります。[PAGE] /  つぎに あなたの カードを /  1まい めくります。[...
    call ShowChipHint
    jp ResumeTextUI
