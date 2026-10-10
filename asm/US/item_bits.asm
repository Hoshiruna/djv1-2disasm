
; Read a script item ID, then test its first item-bitmap bit.
ReadItemArg:


    call ReadArg
    jr jr_000_1d66

; Test the first item-bitmap bit using the absolute first-slot item value.
GetItemFirst:

    ld a, [wItemId]
; A = item ID; read its bit in the item bitmap at wItemFlags.
ReadItemFlag:

Call_000_1d66:
jr_000_1d66:
    call SelectItemFlag
    call ReadBit
    ret

; Read a script item ID, then set its first item-bitmap bit.
SetItemArg:


Call_000_1d6d:
    call ReadArg
    jr jr_000_1d75

; Set the first item-bitmap bit using the absolute first-slot item value.
SetItemFirst:

    ld a, [wItemId]
; A = item ID; set its bit in the item bitmap.
SetItemFlag:

Call_000_1d75:
jr_000_1d75:
    call SelectItemFlag
    ld bc, BitMasks
    jp SetBit

; Consume a script byte, then clear the first item-bitmap bit using the absolute first-slot value.
ClearItemArg:


    call ReadArg

; Clear the first item-bitmap bit using the absolute first-slot item value.
ClrItemFirst:
    ld a, [wItemId]
; A = item ID; clear its bit in the item bitmap.
ClearItemFlag:

Call_000_1d84:
    call SelectItemFlag
    ld bc, ClearMasks
    jp ClearBit
; Select the item ID and bitmap at wItemFlags.
SelectItemFlag:

Call_000_1d8d:
    ld [wArg0], a
    ld bc, wItemFlags
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
