
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

Call_000_1f40:
    ld l, a
    ld h, $00
    ld bc, wProp4
    add hl, bc
    ld a, [hl]
    jr TestAttrBit0Value

; Clear result bit 0, then test bit 0 of the selected operation attribute.
TestAttr0:

Call_000_1f4a:
    call ClearResult
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]

; Set the result when A bit zero is set; otherwise retain the current result.
TestAttrBit0Value:
jr_000_1f58:
    bit 0, a
    ret z

    jp SetResult

; Set bit 0 of the selected operation attribute.
SetAttr0:


Call_000_1f5e:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or OpAttrBit0Mask
    ld [hl], a
    ret

; Clear first-slot attribute bit 0, except when a nonzero slot low byte and alternate type/value 3/1 select the current slot.
ClearAttr0:


Call_000_1f6d:
    ldh a, [hItemSlot]
    cp OpSlotPrimary
    jr z, ClearAttr0Primary

    ld a, [wItemType+OpSlotAlternate]
    cp $03
    jr nz, ClearAttr0Primary

    ld a, [wItemId+OpSlotAlternate]
    cp $01
    jr z, ClearAttr0Selected

; Clear bit zero of the primary attribute outside the alternate-item exception.
ClearAttr0Primary:
jr_000_1f81:
    ld a, [wOpAttr]
    and OpAttrBit0ClearMask
    ld [wOpAttr], a
    ret


; Clear bit zero in the selected slot for alternate type three and ID one.
ClearAttr0Selected:
jr_000_1f8a:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and OpAttrBit0ClearMask
    ld [hl], a
    ret

; Clear result bit 0, then test bit 1 of the selected operation attribute.
TestAttr1:


    call ClearResult
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and OpAttrBit1Mask
    ret z

    call SetResult
    ret

; Set bit 1 of the selected operation attribute.
SetAttr1:


Call_000_1fae:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    or OpAttrBit1Mask
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
    and OpAttrBit1ClearMask
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


Call_000_1fd8:
    call ClearResult
    ld bc, wOpAttr
    ldh a, [hItemSlot]

Jump_000_1fe0:
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and OpAttrBit2Mask
    ret z

    call SetResult
    ret

; Set bit 2 of the selected operation attribute.
SetAttr2:


Call_000_1fed:
    ld bc, wOpAttr
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]

Jump_000_1ff8:
    or OpAttrBit2Mask
    ld [hl], a

Call_000_1ffb:
    ret

; Clear bit 2 of the selected operation attribute.
ClearAttr2:


Call_000_1ffc:
Jump_000_1ffc:
    ld bc, wOpAttr

Jump_000_1fff:
    ldh a, [hItemSlot]
    ld l, a

Jump_000_2002:
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    and OpAttrBit2ClearMask
    ld [hl], a
    ret
