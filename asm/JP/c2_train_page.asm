
; Skip unused records, display at most three rows, and retain the original restart and confirmation flow.
ShowTrainPage:
ShowC2SchedPage:


Call_003_62d1:
jr_003_62d1:
    ld hl, wTrainRecs
    add hl, de
    ld a, [hl+]
    cp TrainNone
    jr z, jr_003_6304

    ld [wTrainNo], a
    ld a, [hl+]
    ld [wTrainCity], a
    ld a, [hl+]
    ld [wTrainState], a
    ld a, [wTrainRows]
    ld l, a
    ld h, $00
    ld bc, TrainRowYs
    add hl, bc
    ld a, [hl]
    ld [wTextY], a
    ld a, TrainRowText
    ld [wListMark], a
    push de
    call ShowListText
    pop de
    ld a, [wTrainRows]
    inc a
    ld [wTrainRows], a

jr_003_6304:
    inc de
    inc de
    inc de
    inc de
    ld a, [wTrainPageEnd]
    cp e
    jr z, jr_003_633d

    ld a, [wTrainRows]
    cp TrainPageRows
    jr c, jr_003_62d1

    ld hl, wTrainRecs
    add hl, de
    ld a, [hl]
    cp TrainNone
    jr z, jr_003_633d

    ld a, [wTrainPageOff]
    cp $00
    jr nz, jr_003_633d

    push de
    call WaitTextConfirm
    call InitTextBuffer
    call ShowTrainHead
    pop de
    xor a
    ld [wTrainRows], a
    ld a, [wTrainRepeat]
    ld [wTrainPageOff], a
    ld e, a
    jr jr_003_62d1

jr_003_633d:
    call WaitTextConfirm
    ret
