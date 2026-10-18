
; Apply odd passenger-room fade steps one through four, waiting thirty ticks after each palette request.
FadeTrainOddIn:
FadeC2OddIn:


Call_003_6724:
    ld de, $0002

; Apply the next odd-room fade-in palette pair.
TrainOddFadeInStep:
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
    jr nz, TrainOddFadeInStep

    ret

; Apply odd passenger-room fade steps three through zero, waiting thirty ticks after each palette request.
FadeTrainOddOut:
FadeC2OddOut:


Call_003_6757:
    ld de, $0006

; Apply the next odd-room fade-out palette pair.
TrainOddFadeOutStep:
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
    jr z, TrainOddFadeOutStep

    ret

; Apply even passenger-room fade steps one through four, waiting thirty ticks after each palette request.
FadeTrainEvenIn:
FadeC2EvenIn:


Call_003_6789:
    ld de, $0002

; Apply the next even-room fade-in palette pair.
TrainEvenFadeInStep:
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
    jr nz, TrainEvenFadeInStep

    ret

; Apply even passenger-room fade steps three through zero, waiting thirty ticks after each palette request.
FadeTrainEvenOut:
FadeC2EvenOut:


Call_003_67bc:
    ld de, $0006

; Apply the next even-room fade-out palette pair.
TrainEvenFadeOutStep:
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
    jr z, TrainEvenFadeOutStep

    ret

; Copy the first seven background palettes from wTrainPalPtr; keep the eighth working palette.
CopyTrainBg:
CopyC2FadeBg:


Call_003_67ee:
    ld bc, $0000

; Copy the next train background-palette byte.
TrainCopyBgPalByte:
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
    jr nz, TrainCopyBgPalByte

    ret

; Copy only the first object palette from wTrainPalPtr; leave later working palettes unchanged.
CopyTrainObj:
CopyC2FadeObj:


Call_003_6807:
    ld bc, $0000

; Copy the next train object-palette byte.
TrainCopyObjPalByte:
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
    jr nz, TrainCopyObjPalByte

    ret
