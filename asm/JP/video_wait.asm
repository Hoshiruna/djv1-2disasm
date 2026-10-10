
; Wait until all hVideoFlags bits are clear; preserve BC.
WaitVideo:


Call_000_01a9:
Jump_000_01a9:
    push bc

jr_000_01aa:
    ldh a, [hVideoFlags]
    cp $00
    jr z, jr_000_01b5

    call WaitFrame
    jr jr_000_01aa

jr_000_01b5:
    pop bc
    ret

; Set WRAM frame flag bit 4, HALT, then wait for its interrupt-side clear; preserve HL.
WaitFrame:


Call_000_01b7:
Jump_000_01b7:
    push hl
    ld hl, wFrameFlags
    set 4, [hl]
    halt
    nop

jr_000_01bf:
    bit 4, [hl]

Jump_000_01c1:
    jr nz, jr_000_01bf

Jump_000_01c3:
    pop hl
    ret

; Wait until hVideoFlags is zero, then disable interrupts.
WaitVideoDI:


jr_000_01c5:
    ldh a, [hVideoFlags]
    cp $00
    jr z, jr_000_01d0

    call WaitFrame

Jump_000_01ce:
    jr jr_000_01c5

Jump_000_01d0:
jr_000_01d0:
    di
    ret


    ei
    ret
