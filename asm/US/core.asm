
; Write zero to BC bytes at HL, advancing HL until the 16-bit counter reaches zero.
ZeroBytes:


Call_000_0461:
jr_000_0461:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, ZeroBytes

    ret

; Fill both background maps with tile $7f and attributes $00; leave VRAM bank 0 selected.
ClearBgMaps:


Call_000_0469:
    ld hl, $9fff
    ld bc, $0800
    ld d, $7f
    call FillReverse
    ld hl, $9fff
    ld bc, $0800
    ld d, $00
    ld a, $01

Jump_000_047e:
    ldh [rVBK], a
    call FillReverse
    xor a
    ldh [rVBK], a
    ret

; Write D to BC bytes descending from HL until the 16-bit counter reaches zero.
FillReverse:


Call_000_0487:
jr_000_0487:
    ld a, d
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, FillReverse

    ret

; Copy BC bytes from HL to DE, advancing both pointers until the counter reaches zero.
CopyBytes:


jr_000_048f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c

Call_000_0495:
    jr nz, CopyBytes

    ret

; Pop the RST return address as the inline word-table base; preserve DE.
; Double A with carry into D, then jump to the indexed handler.
; Its RET uses the CPU return address below the consumed table pointer.
; Handler entry keeps A = (2 * input index) & $ff; BC and DE are preserved.
DispatchTable:


Jump_000_0498:
    add a
    pop hl
    push de
    ld e, a
    ld d, $00
    rl d

Call_000_04a0:
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl
    pop de
    jp hl

; Call WaitFrame three times using a saved eight-bit counter.
Wait3Frames:


    ld a, $03

; Wait for the next of three frames.
Wait3FramesNext:
jr_000_04aa:
    push af
    call WaitFrame
    pop af
    dec a
    jr nz, Wait3FramesNext

    ret
