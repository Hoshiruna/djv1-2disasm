
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
    ld [rROMB0], a
    pop hl
    pop de
    pop bc

Jump_000_0749:
    pop af
    reti

; Request a live BG/OBJ palette upload by setting hVideoFlags bit 0; preserve HL.
; This entry copies no colors and does not wait for VBlank.
RequestPals:


Call_000_074b:
    push hl

Jump_000_074c:
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

; Wait and poll input until the frame tick passes the requested count.
WaitTicksNextFrame:
jr_000_075b:
    call WaitFrame

Call_000_075e:
    push af
    call PollJoy
    pop af
    cp [hl]
    jr nc, WaitTicksNextFrame

Call_000_0766:
    ld [hl], $01
    ret
