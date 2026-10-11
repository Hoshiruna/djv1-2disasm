
; Use record offset DE to clear the three train state bits and access flag; hide the train at its platform.
ClearTrainAccess:
ClearC2SchedFlags:

Call_003_640d:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, TrainStateA
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, TrainStateB
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, TrainStateC
    add hl, bc
    ld a, [hl]
    push bc
    call ClearStateBit
    pop bc
    ld hl, TrainAccessFlags
    add hl, bc
    ld a, [hl]
    push bc
    call ClearObjFlag
    pop bc
    push bc
    call HideTrainHere
    pop bc
    ret

; Use record offset DE to set the three train state bits and access flag; show the train at its platform.
SetTrainAccess:
SetC2SchedFlags:


Call_003_6442:
    ld c, e
    srl c
    srl c
    ld b, $00
    ld hl, TrainStateA
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, TrainStateB
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, TrainStateC
    add hl, bc
    ld a, [hl]
    push bc
    call SetStateBit
    pop bc
    ld hl, TrainAccessFlags
    add hl, bc
    ld a, [hl]
    push bc
    call SetObjFlag
    pop bc
    push bc
    call ShowTrainHere
    pop bc
    ret
