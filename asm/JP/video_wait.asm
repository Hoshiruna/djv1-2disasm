
; Wait until all hVideoFlags bits are clear; preserve BC.
WaitVideo:


Call_000_01a9:
Jump_000_01a9:
    push bc

; Wait one frame while a video work flag remains set.
WaitVideoPoll:
jr_000_01aa:
    ldh a, [hVideoFlags]
    cp $00
    jr z, WaitVideoDone

    call WaitFrame
    jr WaitVideoPoll

; Restore BC after the video work flags clear.
WaitVideoDone:
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

; Wait for the interrupt handler to clear frame flag bit four.
WaitFramePollFlag:
jr_000_01bf:
    bit 4, [hl]

Jump_000_01c1:
    jr nz, WaitFramePollFlag

Jump_000_01c3:
    pop hl
    ret

; Wait until hVideoFlags is zero, then disable interrupts.
WaitVideoDI:


; Wait until video work flags clear before disabling interrupts.
WaitVideoDIPoll:
jr_000_01c5:
    ldh a, [hVideoFlags]
    cp $00
    jr z, WaitVideoDisableInterrupts

    call WaitFrame

Jump_000_01ce:
    jr WaitVideoDIPoll

Jump_000_01d0:
; Disable interrupts after video work finishes.
WaitVideoDisableInterrupts:
jr_000_01d0:
    di
    ret


    ei
    ret
