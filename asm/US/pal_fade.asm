
; Select mode 2 and step the live BG palette toward the staged BG palette.
FadeBg:


    push hl
    push bc
    ld a, $02
    jr jr_001_493f

; Fill both live palette sets white, then run the original mode-0 transition.
FadeFromWhite:

Call_001_4933:
    push hl
    push bc
    call FillWhitePals
    xor a
    jr jr_001_493f

; Select mode 1 and raise both live palette sets toward white.
FadeToWhite:

Call_001_493b:
    push hl
    push bc
    ld a, $01

jr_001_493f:
    ld [wFadeMode], a

jr_001_4942:
    call StepFade
    jr nz, jr_001_494a

    pop bc
    pop hl
    ret


jr_001_494a:
    ld c, $04

jr_001_494c:
    call WaitFrame
    dec c
    jr nz, jr_001_494c

    jr jr_001_4942

; Dispatch the current fade mode through the inline three-pointer table.
StepFade:

Call_001_4954:
    ld a, [wFadeMode]
    rst RST_00

FadeCalls:
    dw StepAllFade, StepWhiteFade, StepBgFade

; Stop when both palette sets are white; otherwise lighten both and request upload.
StepWhiteFade:
    call PalsAreWhite
    jr nz, jr_001_4964

    ret


jr_001_4964:
    push hl
    push bc
    push de
    ld hl, wBgPal
    call LightPal
    ld hl, wObjPal
    call LightPal
    call RequestPals
    pop de
    pop bc
    pop hl
    or $ff
    ret

; Raise each component of 32 colors toward 31 by at most four.
LightPal:


Call_001_497c:
    ld d, $20

jr_001_497e:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call UnpackColor
    ld a, [wPalR]
    call LightColor
    ld [wPalR], a
    ld a, [wPalG]
    call LightColor
    ld [wPalG], a
    ld a, [wPalB]
    call LightColor
    ld [wPalB], a
    call PackColor
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    dec d
    jr nz, jr_001_497e

    ret

; Stop when BG matches the staged set; otherwise step BG components toward their targets.
StepBgFade:


    call BgPalMatches
    jr nz, jr_001_49b1

    ret


jr_001_49b1:
    push hl
    push bc
    push de
    ld hl, wBgPal
    ld de, wBgPalNext
    call StepBgPal
    call RequestPals
    pop de
    pop bc
    pop hl
    or $ff
    ret

; Move 32 current colors toward the target colors in DE using StepColor.
StepBgPal:


Call_001_49c6:
    ld b, $20

jr_001_49c8:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call UnpackColor
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    call UnpackGoal
    ld a, [wGoalR]
    ld c, a
    ld a, [wPalR]
    call StepColor
    ld [wPalR], a
    ld a, [wGoalG]
    ld c, a
    ld a, [wPalG]
    call StepColor
    ld [wPalG], a
    ld a, [wGoalB]
    ld c, a
    ld a, [wPalB]
    call StepColor
    ld [wPalB], a
    call PackColor
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop de
    pop bc
    dec b
    jr nz, jr_001_49c8

    ret

; Stop when both sets match; otherwise apply the original downward component step to both.
StepAllFade:


    call PalsMatch
    jr nz, jr_001_4a14

    ret


jr_001_4a14:
    push hl
    push bc
    push de
    ld hl, wBgPal
    ld de, wBgPalNext
    call DarkPal
    ld hl, wObjPal
    ld de, wObjPalNext
    call DarkPal
    call RequestPals
    pop de
    pop bc
    pop hl
    or $ff
    ret

; Apply DarkColor to all components of 32 colors toward targets in DE.
DarkPal:


Call_001_4a32:
    ld b, $20

jr_001_4a34:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    call UnpackColor
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    call UnpackGoal
    ld a, [wGoalR]
    ld c, a
    ld a, [wPalR]
    call DarkColor
    ld [wPalR], a
    ld a, [wGoalG]
    ld c, a
    ld a, [wPalG]
    call DarkColor
    ld [wPalG], a
    ld a, [wGoalB]
    ld c, a
    ld a, [wPalB]
    call DarkColor
    ld [wPalB], a
    call PackColor
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop de
    pop bc
    dec b
    jr nz, jr_001_4a34

    ret
