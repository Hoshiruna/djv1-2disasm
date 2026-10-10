
; Save all registers, run bank-1 video and the frame service, restore ROM bank, clear the frame latch, then RETI.
VBlankIrq:


Jump_000_018b:
    push af

Call_000_018c:
    push bc
    push de
    push hl
    ld a, $01
    ld [$2000], a
    call VBlankVideo
    call TickAudio
    ldh a, [hRomBank]
    ld [$2000], a
    ld hl, wFrameFlags
    res 4, [hl]
    pop hl
    pop de
    pop bc
    pop af
    reti
