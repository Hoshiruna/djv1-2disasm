
; A = item bit ID; read its bit from the wItemState bitmap into result bit 0.
ReadItemState:

Call_000_1da4:
jr_000_1da4:
    call SelectItemState
    call ReadBit
    ret

; Read a script item ID, then jump to the second item-bitmap setter.
SetItem2ArgA:

    call ReadArg
    jr jr_000_1db8

; Set the second item-bitmap bit using the absolute first-slot item value.
SetItem2First:

    ld a, [wItemId]
    jr jr_000_1db8

; Read a script item ID, then enter the second item-bitmap setter.
SetItem2Arg:

    call ReadArg

; A = item bit ID; set its bit in the wItemState bitmap.
SetItemState:

Call_000_1db8:
jr_000_1db8:
    call SelectItemState
    ld bc, BitMasks
    jp SetBit

; Clear the second item-bitmap bit using the absolute first-slot item value.
ClrItem2First:

    ld a, [wItemId]
    jr jr_000_1dc9

; Read a script item ID, then clear its second item-bitmap bit.
ClearItem2Arg:

    call ReadArg

; A = item bit ID; clear its bit in the wItemState bitmap.
ClearItemState:

Call_000_1dc9:
jr_000_1dc9:
    call SelectItemState
    ld bc, ClearMasks
    jp ClearBit

; Select the item bit ID and bitmap at wItemState.
SelectItemState:

Call_000_1dd2:
    ld [wBitId], a
    ld bc, wItemState
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
