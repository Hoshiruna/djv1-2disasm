
; Test the selected attribute bit 0, then read a target and branch when set.
BranchAttr0:


    call TestAttr0
    jp BranchIfSet

; Test the selected attribute bit 0, then read a target and branch when clear.
BranchNoAttr0:


    call TestAttr0
    jp BranchIfClear

; Read an indexed property 4 byte and test bit 0; zero leaves the existing result bit unchanged.
TestProp4:


    call ReadArg
    ld l, a
    ld h, $00
    ld bc, wProp4
    add hl, bc
    ld a, [hl]
    jr jr_000_1e08

; Clear result bit 0, then test bit 0 of the selected operation attribute.
TestAttr0:

Call_000_1dfa:
    call ClearResult
    ld bc, wOpAttr

Call_000_1e00:
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]

jr_000_1e08:
    bit 0, a
    ret z

    jp SetResult

; Set bit 0 of the selected operation attribute.
SetAttr0:


Call_000_1e0e:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $01
    ld [hl], a
    ret

; Clear first-slot attribute bit 0, except when a nonzero slot low byte and alternate type/value 3/1 select the current slot.
ClearAttr0:


Call_000_1e1d:
    ldh a, [hItemSlot]
    cp $00
    jr z, jr_000_1e31

    ld a, [wItemType+16]
    cp $03
    jr nz, jr_000_1e31

    ld a, [wItemId+16]
    cp $01
    jr z, jr_000_1e3a

jr_000_1e31:
    ld a, [wOpAttr]
    and $fe
    ld [wOpAttr], a
    ret


jr_000_1e3a:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fe
    ld [hl], a
    ret

; Clear result bit 0, then test bit 1 of the selected operation attribute.
TestAttr1:


Call_000_1e49:
    call ClearResult
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $02
    ret z

    call SetResult
    ret

; Set bit 1 of the selected operation attribute.
SetAttr1:


Call_000_1e5e:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a

Call_000_1e67:
    add hl, bc
    ld a, [hl]
    or $02
    ld [hl], a
    ret

; Clear bit 1 of the selected operation attribute.
ClearAttr1:


    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fd
    ld [hl], a
    ret

; Test the selected attribute bit 2, then read a target and branch when set.
BranchAttr2:


    call TestAttr2
    jp BranchIfSet

; Test the selected attribute bit 2, then read a target and branch when clear.
BranchNoAttr2:


    call TestAttr2
    jp BranchIfClear

; Clear result bit 0, then test bit 2 of the selected operation attribute.
TestAttr2:


Call_000_1e88:
    call ClearResult
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $04
    ret z

    call SetResult
    ret

; Set bit 2 of the selected operation attribute.
SetAttr2:


Call_000_1e9d:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or $04
    ld [hl], a
    ret

; Clear bit 2 of the selected operation attribute.
ClearAttr2:


Call_000_1eac:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and $fb
    ld [hl], a
    ret
