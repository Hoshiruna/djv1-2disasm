
; Display the original ending scene and text sequence with its fades, waits and audio cues.
PlayEndCredits:

Call_003_6e02:
    call FadeOut
    xor a
    ld [wCreditIndex], a
    call PlayAudio
    call DisableLcd
    call Call_000_09f5
    call RestoreLcd
    call LoadCreditScene
    call FadeIn
    xor a
    ld [wCaseId], a
    ld a, $0e
    call PlayAudio
    ld a, $ff
    ld [$c5df], a
    xor a
    ld [$c890], a
    ld [wTextStartX], a
    ld [$c894], a
    call CreditWait40
    ld a, $08
    call DrawCreditText
    call CreditWait20
    ld a, $13
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $1d
    call DrawCreditText
    ld a, $1b
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $02
    call DrawCreditText
    call CreditWait20
    ld a, $03
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $00
    call DrawCreditText
    call CreditWait20
    ld a, $01
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $04
    call DrawCreditText
    call CreditWait20
    ld a, $05
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $06
    call DrawCreditText
    call CreditWait20
    ld a, $07
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $06
    call DrawCreditText
    call CreditWait20
    ld a, $09
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $06
    call DrawCreditText
    call CreditWait20
    ld a, $0a
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0d
    call DrawCreditText
    call CreditWait20
    ld a, $0e
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0f
    call DrawCreditText
    call CreditWait20
    ld a, $10
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0b
    call DrawCreditText
    call CreditWait20
    ld a, $12
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0b
    call DrawCreditText
    call CreditWait20
    ld a, $0c
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0b
    call DrawCreditText
    call CreditWait20
    ld a, $11
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0b
    call DrawCreditText
    call CreditWait20
    ld a, $14
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $0b
    call DrawCreditText
    call CreditWait20
    ld a, $15
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $16
    call DrawCreditText
    ld a, $1c
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $17
    call DrawCreditText
    call CreditWait20
    ld a, $18
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $17
    call DrawCreditText
    call CreditWait20
    ld a, $19
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $17
    call DrawCreditText
    call CreditWait20
    ld a, $1a
    call DrawCreditText
    call CreditWait180
    call NextCreditScene
    call CreditWait40
    ld a, $1e
    call DrawCreditText
    call CreditWait180
    ret
