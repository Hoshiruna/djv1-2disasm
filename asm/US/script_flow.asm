
; Set the complete operation-slot offset to $0000.
SelectSlot0:


Call_000_1b60:
    xor a
    ldh [hItemSlot], a
    ldh [hItemSlot+1], a
    ret

; Set the complete operation-slot offset to $0010.
SelectSlot1:


Call_000_1b66:
    ld a, OpSlotAlternate
    ldh [hItemSlot], a

Call_000_1b6a:
    xor a
    ldh [hItemSlot+1], a
    ret

; Save the pointer after the two target bytes: push low, then high on the shared HRAM stack.
; Set wCallBank to zero so ReturnScript restores only the pointer.
CallScript:


    call ReadArgs2
    ld a, [wScriptPtr]
    call PushHramByte
    ld a, [wScriptPtr+1]
    call PushHramByte
    xor a
    ld [wCallBank], a
    jp BranchScript

; Save the pointer after all three operands: push low, high, then the old ROM bank.
; wCallBank holds the target bank and is not itself saved on the HRAM stack.
CallBankScript:


    call ReadArgs3
    ld a, [wScriptPtr]
    call PushHramByte
    ld a, [wScriptPtr+1]
    call PushHramByte
    ld a, [wArg2]
    ld [wCallBank], a
    call PushRomBank
    jp BranchScript

; A nonzero wCallBank pops the saved ROM bank before the return pointer.
; This path neither clears wCallBank nor restores an earlier value of it.
ReturnScript:


    ld a, [wCallBank]
    cp $00
    jr z, ReturnScriptRestorePtr

    call PopRomBank

; Restore the saved script pointer after an optional bank pop.
ReturnScriptRestorePtr:
jr_000_1ba9:
    call PopHramByte
    ld [wScriptPtr+1], a
    call PopHramByte
    ld [wScriptPtr], a
    ret

; Read a two-byte target and replace the script pointer.
JumpScript:


    call ReadArgs2
    jp BranchScript

; Replace the ROM bank and script pointer without pushing either.
; Keep the outer action bank save and the existing wCallBank value.
JumpBankScript:


    call ReadArgs3
    ld a, [wArg2]
    ldh [hRomBank], a
    ld [rROMB0], a
    jp BranchScript
