
; Read the next case/scene pair, load its background and graphics, then increment the scene index.
LoadCreditScene:


Call_003_6fd6:
    ld a, [wCreditIndex]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, CreditScenes
    add hl, bc
    ld a, [hl+]
    ld [wCaseId], a
    ld a, [hl]
    ld [wSceneId], a
    call LoadCreditBg
    ld a, [wCreditIndex]
    inc a
    ld [wCreditIndex], a
    ret

; Fade out, load the next ending scene, then fade in.
NextCreditScene:


Call_003_6ff4:
    call FadeOut
    call LoadCreditScene
    call FadeIn
    ret
