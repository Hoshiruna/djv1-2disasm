
; Save all registers, run the frame service, restore ROM bank, then RETI.
TimerIrq:


Jump_000_073a:
    push af
    push bc

Jump_000_073c:
    push de
    push hl
    call TickAudio
    ldh a, [hRomBank]

Jump_000_0743:
    ld [$2000], a

Call_000_0746:
    pop hl
    pop de
    pop bc

Jump_000_0749:
    pop af
    reti

; Set palette request bit 0 in hVideoFlags; preserve HL.
RequestPals:


Call_000_074b:
    push hl
    ld hl, hVideoFlags
    set 0, [hl]
    pop hl
    ret

; Start hFrameTick at one, wait and poll input until it exceeds A, then reset it to one.
WaitTicks:


Call_000_0753:
Jump_000_0753:
    push af
    ld hl, hFrameTick
    ld a, $01
    ld [hl], a
    pop af

jr_000_075b:
    call WaitFrame

Jump_000_075e:
    push af
    call PollJoy
    pop af
    cp [hl]
    jr nc, jr_000_075b

Jump_000_0766:
    ld [hl], $01
    ret
