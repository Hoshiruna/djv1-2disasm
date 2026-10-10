
; A = item bit ID; read its bit from the wItemState bitmap into result bit 0.
ReadItemState:

Call_000_1ef4:
jr_000_1ef4:
    call SelectItemState

Call_000_1ef7:
    call ReadBit
    ret

; Read a script item ID, then jump to the second item-bitmap setter.
SetItem2ArgA:

    call ReadArg
    jr jr_000_1f08

; Set the second item-bitmap bit using the absolute first-slot item value.
SetItem2First:

Call_000_1f00:
    ld a, [wItemId]

Call_000_1f03:
Jump_000_1f03:
    jr jr_000_1f08

; Read a script item ID, then enter the second item-bitmap setter.
SetItem2Arg:

Jump_000_1f05:
    call ReadArg

; A = item bit ID; set its bit in the wItemState bitmap.
SetItemState:

Call_000_1f08:
jr_000_1f08:
    call SelectItemState
    ld bc, BitMasks
    jp SetBit

; Clear the second item-bitmap bit using the absolute first-slot item value.
ClrItem2First:

    ld a, [wItemId]
    jr jr_000_1f19

; Read a script item ID, then clear its second item-bitmap bit.
ClearItem2Arg:

    call ReadArg

; A = item bit ID; clear its bit in the wItemState bitmap.
ClearItemState:

Call_000_1f19:
jr_000_1f19:
    call SelectItemState
    ld bc, ClearMasks

Call_000_1f1f:
    jp ClearBit

; Select the item bit ID and bitmap at wItemState.
SelectItemState:

Call_000_1f22:
    ld [wBitId], a
    ld bc, wItemState
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a

Call_000_1f30:
    ret
