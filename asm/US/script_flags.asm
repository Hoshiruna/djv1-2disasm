; Read the selected bitmap bit; return A=0/1 and update result bit 0.
ReadBit:


Call_000_1bca:
Jump_000_1bca:
    call ClearResult
    push hl
    push de
    push bc
    push af
    ldh a, [hBitNum]
    ld l, a
    ldh a, [hBitNum+1]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [hBitByte]
    ld l, a
    ldh a, [hBitByte+1]
    ld h, a
    pop af
    push hl
    call IndexBit
    ld bc, BitMasks
    add hl, bc

Call_000_1be9:
    ld a, [hl]
    and d
    jr z, jr_000_1bf0

    call SetResult

Jump_000_1bf0:
jr_000_1bf0:
    pop hl
    push af
    ld a, l
    ldh [hBitByte], a
    ld a, h
    ldh [hBitByte+1], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [hBitNum], a

Jump_000_1bfe:
    ld a, h
    ldh [hBitNum+1], a
    pop af
    pop bc

Jump_000_1c03:
    pop de
    pop hl
    ld a, [wStateResult]
    and $01
    ret


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomFlag
    call PopRomBank
    jr jr_000_1c26

; Read an object flag ID, test it, then read a branch target and branch when set.
BranchFlagSet:

    call ReadArg
    call ReadObjFlag
    jp BranchIfSet

; Read an object flag ID, test it, then read a branch target and branch when clear.
BranchFlagClr:


    call ReadArg

jr_000_1c26:
    call ReadObjFlag
    jp BranchIfClear
; Select byte ID/8 and bit ID&7; D returns the bitmap byte.
IndexBit:


Call_000_1c2c:
    push bc
    ld a, [wBitId]
    push af
    srl a

Call_000_1c33:
    srl a
    srl a
    ld c, a
    ld b, $00
    ld a, c
    ldh [hBitByte], a
    ld a, b
    ldh [hBitByte+1], a
    ld a, [wBitPtr]
    ld l, a
    ld a, [wBitPtr+1]
    ld h, a
    add hl, bc
    ld d, [hl]
    pop af
    and $07
    ld l, a
    ld h, $00
    ld a, l
    ldh [hBitNum], a
    ld a, h
    ldh [hBitNum+1], a
    ld a, d
    pop bc

Call_000_1c58:
    ret

; Read an object flag ID from the script, then enter ReadObjFlag.
ScriptGetFlag:


    call ReadArg
; A = object ID; read its flag in the third object bitmap at wObjFlags.
ReadObjFlag:

Call_000_1c5c:
    call SelectObjFlag
    jp ReadBit


    push af
    ld a, $03
    call PushRomBank

Jump_000_1c68:
    pop af
    call C2RoomFlag
    call PopRomBank
    jr jr_000_1c8a
; Read an object ID; run the Case I presence hook before setting its object flag.
ScriptSetFlag:

    call ReadArg
    push af
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1c89

    push af
    ld a, $02
    call PushRomBank
    pop af
    call KeepC1Obj

Jump_000_1c86:
    call PopRomBank

jr_000_1c89:
    pop af
; A = object ID; set its third-bitmap flag.
SetObjFlag:

Call_000_1c8a:
Jump_000_1c8a:
jr_000_1c8a:
    call SelectObjFlag
    ld bc, BitMasks
; BC = one-bit mask table; set the selected bitmap bit.
SetBit:

Jump_000_1c90:
    push hl
    push de
    push bc
    push af
    ldh a, [hBitNum]
    ld l, a
    ldh a, [hBitNum+1]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [hBitByte]
    ld l, a
    ldh a, [hBitByte+1]
    ld h, a
    pop af
    push hl
    call IndexBit
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld a, [wBitPtr]
    ld c, a
    ld a, [wBitPtr+1]
    ld b, a
    ldh a, [hBitByte]
    ld l, a
    ldh a, [hBitByte+1]
    ld h, a
    add hl, bc
    ld a, d
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hBitByte], a
    ld a, h
    ldh [hBitByte+1], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [hBitNum], a
    ld a, h
    ldh [hBitNum+1], a
    pop af
    pop bc
    pop de
    pop hl
    ret

; Read an object flag ID from the script, then enter ClearObjFlag.
ScriptClrFlag:


    call ReadArg
; A = object ID; clear its third-bitmap flag.
ClearObjFlag:

Call_000_1cd6:
Jump_000_1cd6:
    call SelectObjFlag
    ld bc, ClearMasks
; BC = inverted mask table; clear the selected bitmap bit.
ClearBit:

Jump_000_1cdc:
jr_000_1cdc:
    push hl
    push de
    push bc
    push af
    ldh a, [hBitNum]
    ld l, a

Jump_000_1ce3:
    ldh a, [hBitNum+1]
    ld h, a
    pop af
    push hl
    push af
    ldh a, [hBitByte]
    ld l, a
    ldh a, [hBitByte+1]
    ld h, a
    pop af

Call_000_1cf0:
    push hl
    call IndexBit
    add hl, bc
    ld a, [hl]
    and d
    ld d, a

Jump_000_1cf8:
    ld a, [wBitPtr]
    ld c, a

Jump_000_1cfc:
    ld a, [wBitPtr+1]
    ld b, a
    ldh a, [hBitByte]

Jump_000_1d02:
    ld l, a
    ldh a, [hBitByte+1]
    ld h, a
    add hl, bc
    ld a, d
    ld [hl], a
    pop hl
    push af
    ld a, l
    ldh [hBitByte], a
    ld a, h
    ldh [hBitByte+1], a
    pop af
    pop hl
    push af
    ld a, l
    ldh [hBitNum], a
    ld a, h

Jump_000_1d18:
    ldh [hBitNum+1], a
    pop af
    pop bc
    pop de
    pop hl
    ret
; Select the object ID and the third bitmap at wObjFlags.
SelectObjFlag:


Call_000_1d1f:
    ld [wBitId], a
    ld bc, wObjFlags
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret

; Read a state-bit ID from the script, then enter ReadStateBit.
ScriptGetState:


    call ReadArg

; A = bit index in the wStateBits state bitmap; return its value in A and result bit 0.
ReadStateBit:
Call_000_1d31:
    call SelectStateBit
    call ReadBit
    ret

; Read a state-bit ID from the script, then enter SetStateBit.
ScriptSetState:


    call ReadArg
; A = state bit ID; set its bit in the wStateBits bitmap.
SetStateBit:

Call_000_1d3b:
    call SelectStateBit
    ld bc, BitMasks
    jp SetBit

; Read a state-bit ID from the script, then enter ClearStateBit.
ScriptClrState:


    call ReadArg
; A = state bit ID; clear its bit in the wStateBits bitmap.
ClearStateBit:

Call_000_1d47:
    call SelectStateBit
    ld bc, ClearMasks
    jr jr_000_1cdc
; Select the state bit ID and bitmap at wStateBits.
SelectStateBit:

Call_000_1d4f:
    ld [wArg0], a
    ld bc, wStateBits
    ld a, c
    ld [wBitPtr], a
    ld a, b
    ld [wBitPtr+1], a
    ret
