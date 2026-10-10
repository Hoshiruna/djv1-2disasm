

; Request the queued map writes and wait for the next video update.
SubmitMapQueue:
Call_000_03d3:
Jump_000_03d3:
    push hl
    ld hl, hVideoFlags
    set 6, [hl]
    pop hl
    call WaitFrame
    ret

; Set the map queue request bit without waiting for a frame.
RequestMapQueue:


    ldh a, [hVideoFlags]
    or $40
    ldh [hVideoFlags], a
    ret

; Clear video request bits 6, 5, 4, 2, 1 and zero the queue length; preserve HL.
ResetMapQueue:


    push hl

Jump_000_03e6:
    ld hl, hVideoFlags
    res 6, [hl]

Call_000_03eb:
    res 5, [hl]
    res 4, [hl]
    res 2, [hl]
    res 1, [hl]
    pop hl
    xor a
    ldh [hMapQueueLen], a
    ret

; Select hVideoFlags and set its OAM request bit; leave HL at the flags.
RequestOam:


Call_000_03f8:
    ld hl, hVideoFlags

; Set bit 7 at the supplied HL and return.
SetOamBit:

Call_000_03fb:
Jump_000_03fb:
    set 7, [hl]
    ret

; Request OAM, wait for a frame, then fall through to ClearOam.
SubmitOam:


Call_000_03fe:
    call RequestOam
    call WaitFrame
; Clear the 160-byte shadow OAM and reset its entry count.
ClearOam:

Call_000_0404:
    push hl
    push bc
    ld hl, wShadowOam

Call_000_0409:
    ld bc, $00a0
    call ZeroBytes

Jump_000_040f:
    ld a, $00

Call_000_0411:
    ldh [hOamCount], a
    pop bc
    pop hl
    ret

; Clear shadow OAM, request its transfer, and wait for a frame.
BlankOam:


Call_000_0416:
    call ClearOam
    call RequestOam
    call WaitFrame
    ret
