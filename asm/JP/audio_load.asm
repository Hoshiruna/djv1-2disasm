
; Read four slot pointers and their shared parameter bytes from DE.
LoadAudio4:

Call_004_40b4:
    ld a, [de]
    ld [wAudioWork+7], a
    ld [wAudioWork+39], a
    ld [wAudioWork+71], a
    ld [wAudioWork+103], a
    inc de
    ld bc, wAudioWork
    call ReadAudioSlot
    call ReadAudioSlot
    call ReadAudioSlot
    call ReadAudioSlot
    ld a, [de]
    inc de
    ld [wAudioWork+30], a
    ld [wAudioWork+62], a
    ld [wAudioWork+94], a
    ld a, [de]
    inc de
    ld [wAudioWork+31], a
    ld [wAudioWork+63], a
    ld [wAudioWork+95], a
    ld a, [de]
    inc de
    ld [wAudioWork+126], a
    ld a, [de]
    ld [wAudioWork+127], a
    ld a, $03
    ld [wAudioWork+26], a
    ld [wAudioWork+58], a
    ld [wAudioWork+90], a
    ld [wAudioWork+122], a
    xor a
    ld [wAudioWork+21], a
    ld [wAudioWork+53], a
    ld [wAudioWork+85], a
    ld [wAudioWork+117], a
    ld a, $00
    ld [wAudioWork+15], a
    ld a, $10
    ld [wAudioWork+47], a
    ld a, $20
    ld [wAudioWork+79], a
    ld a, $30
    ld [wAudioWork+111], a
    ret

; Load four slots, then set wAudioState to the retained ID with bit 7 set.
LoadAudio4Hi:


    call LoadAudio4
    ld a, [wAudioId]
    or $80
    ld [wAudioState], a
    ret

; Read three slot pointers at workspace offset $80, skipping one parameter word.
LoadAudio3:


    ld a, [de]
    ld [wAudioWork+135], a
    ld [wAudioWork+167], a
    ld [wAudioWork+199], a
    inc de
    ld bc, wAudioWork+128
    call ReadAudioSlot
    call ReadAudioSlot
    call ReadAudioSlot
    inc de
    inc de
    ld a, [de]
    inc de
    ld [wAudioWork+158], a
    ld [wAudioWork+190], a
    ld [wAudioWork+222], a
    ld a, [de]
    inc de
    ld [wAudioWork+159], a
    ld [wAudioWork+191], a
    ld [wAudioWork+223], a
    ld a, $03
    ld [wAudioWork+154], a
    ld [wAudioWork+186], a
    ld [wAudioWork+218], a
    xor a
    ld [wAudioWork+149], a
    ld [wAudioWork+181], a
    ld [wAudioWork+213], a
    ld a, $40
    ld [wAudioWork+143], a
    ld a, $50
    ld [wAudioWork+175], a
    ld a, $60
    ld [wAudioWork+207], a
    ret

; Read two selected slot pointers at workspace offset $e0 with the original record gaps.
LoadAudio2:


    ld a, [de]
    ld [wAudioWork+231], a
    ld [wAudioWork+263], a
    inc de
    inc de
    inc de
    ld bc, wAudioWork+224
    call ReadAudioSlot
    inc de
    inc de
    call ReadAudioSlot
    ld a, [de]
    inc de
    ld [wAudioWork+254], a
    ld a, [de]
    inc de
    ld [wAudioWork+255], a
    ld a, [de]
    ld [wAudioWork+286], a
    inc de
    ld a, [de]
    ld [wAudioWork+287], a
    ld a, $03
    ld [wAudioWork+250], a
    ld [wAudioWork+282], a
    xor a
    ld [wAudioWork+245], a
    ld [wAudioWork+277], a
    ld a, $70
    ld [wAudioWork+239], a
    ld a, $80
    ld [wAudioWork+271], a
    ret

; Read a pointer from DE into the slot at BC, set active/default fields, and advance BC by $20.
ReadAudioSlot:


Call_004_41c2:
    push bc
    ld h, b
    ld l, c
    ld a, $80
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld b, a
    ld a, [de]
    ld [hl+], a
    inc de
    or b
    jr nz, jr_004_41db

    pop bc
    ld [bc], a

jr_004_41d4:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ret


jr_004_41db:
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld [hl+], a
    pop bc
    jr jr_004_41d4
