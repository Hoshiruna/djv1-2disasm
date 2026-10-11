
; Apply odd passenger-room fade steps one through four, waiting thirty ticks after each palette request.
FadeTrainOddIn:
FadeC2OddIn:


Call_003_6724:
    ld de, $0002

jr_003_6727:
    ld hl, TrainOddBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainOddObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, $0a
    cp e
    jr nz, jr_003_6727

    ret

; Apply odd passenger-room fade steps three through zero, waiting thirty ticks after each palette request.
FadeTrainOddOut:
FadeC2OddOut:


Call_003_6757:
    ld de, $0006

jr_003_675a:
    ld hl, TrainOddBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainOddObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, jr_003_675a

    ret

; Apply even passenger-room fade steps one through four, waiting thirty ticks after each palette request.
FadeTrainEvenIn:
FadeC2EvenIn:


Call_003_6789:
    ld de, $0002

jr_003_678c:
    ld hl, TrainEvenBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainEvenObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    inc e
    inc e
    ld a, $0a
    cp e
    jr nz, jr_003_678c

    ret

; Apply even passenger-room fade steps three through zero, waiting thirty ticks after each palette request.
FadeTrainEvenOut:
FadeC2EvenOut:


Call_003_67bc:
    ld de, $0006

jr_003_67bf:
    ld hl, TrainEvenBgRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    call CopyTrainBg
    ld hl, TrainEvenObjRefs
    add hl, de
    ld a, [hl+]
    ld [wTrainPalPtr], a
    ld a, [hl]
    ld [wTrainPalPtr+1], a
    push de
    call CopyTrainObj
    call RequestPals
    ld a, $1e
    call WaitTicks
    pop de
    dec e
    dec e
    bit 7, e
    jr z, jr_003_67bf

    ret

; Copy the first seven background palettes from wTrainPalPtr; keep the eighth working palette.
CopyTrainBg:
CopyC2FadeBg:


Call_003_67ee:
    ld bc, $0000

jr_003_67f1:
    ld a, [wTrainPalPtr]
    ld l, a
    ld a, [wTrainPalPtr+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld hl, wBgPal
    add hl, bc
    ld [hl], a
    inc c
    ld a, $38
    cp c
    jr nz, jr_003_67f1

    ret

; Copy only the first object palette from wTrainPalPtr; leave later working palettes unchanged.
CopyTrainObj:
CopyC2FadeObj:


Call_003_6807:
    ld bc, $0000

jr_003_680a:
    ld a, [wTrainPalPtr]
    ld l, a
    ld a, [wTrainPalPtr+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld hl, wObjPal
    add hl, bc
    ld [hl], a
    inc c
    ld a, $08
    cp c
    jr nz, jr_003_680a

    ret
