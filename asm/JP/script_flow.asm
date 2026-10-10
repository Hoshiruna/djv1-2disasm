
; Set the complete operation-slot offset to $0000.
SelectSlot0:


Call_000_1cb0:
    xor a
    ldh [hItemSlot], a
    ldh [hItemSlot+1], a
    ret

; Set the complete operation-slot offset to $0010.
SelectSlot1:


Call_000_1cb6:
    ld a, $10
    ldh [hItemSlot], a
    xor a
    ldh [hItemSlot+1], a
    ret

; Read a target, save the next script pointer on the HRAM stack, clear the call-bank byte, then branch.
CallScript:


    call ReadArgs2
    ld a, [wScriptPtr]
    call PushHramByte
    ld a, [wScriptPtr+1]
    call PushHramByte
    xor a
    ld [wCallBank], a
    jp BranchScript

; Read target and bank, save the next pointer, store the call bank, push the ROM bank, then branch.
CallBankScript:


    call ReadArgs3
    ld a, [wScriptPtr]
    call PushHramByte
    ld a, [wScriptPtr+1]
    call PushHramByte

Jump_000_1ce3:
    ld a, [wArg2]
    ld [wCallBank], a
    call PushRomBank
    jp BranchScript

; Pop the ROM bank when the call-bank byte is nonzero, then restore the saved script pointer.
ReturnScript:


    ld a, [wCallBank]
    cp $00
    jr z, jr_000_1cf9

    call PopRomBank

jr_000_1cf9:
    call PopHramByte

Jump_000_1cfc:
    ld [wScriptPtr+1], a
    call PopHramByte

Jump_000_1d02:
    ld [wScriptPtr], a
    ret

; Read a two-byte target and replace the script pointer.
JumpScript:


    call ReadArgs2
    jp BranchScript

; Read target and bank, replace the active ROM bank directly, then replace the script pointer.
JumpBankScript:


    call ReadArgs3
    ld a, [wArg2]
    ldh [hRomBank], a
    ld [$2000], a
    jp BranchScript
