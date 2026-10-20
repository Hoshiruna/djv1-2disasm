
; Resolve the Case I action; use its fallback when the code is $ff, otherwise enter bank 6.
RunC1Action:


Call_000_1b87:
    push af
    ld a, $02
    call PushRomBank
    pop af
    call PickC1Action
    call PopRomBank
    ld a, [wActionCode]
    cp $ff
    jr nz, C1ActionStartScript

    push af
    ld a, $02
    call PushRomBank
    pop af
    call FallbackC1
    call PopRomBank
    ret


; Enter the Case I script bank after a nonfallback action code.
C1ActionStartScript:
jr_000_1ba9:
    ld a, $06
    call PushRomBank
    jp StartC1Script

; Run the original completion helper, then restore the bank through a tail jump.
EndBankAction:


Jump_000_1bb1:
    call ClearTextUI
    jp PopRomBank

; Internal early-exit continuation: pop the nested bank, discard the opcode-loop
; CPU return address into BC, clear the text UI, then pop the outer action bank.
EndNestedAction:


Jump_000_1bb7:
    call PopRomBank
    pop bc
    call ClearTextUI
    jp PopRomBank

; Resume the existing script pointer without looking up another action entry.
; Case I selects bank six; Case II selects the bank from the primary wItemType.
RunAltAction:


Call_000_1bc1:
    ld a, [wCaseId]
    cp $00
    jr nz, C2AltSelectScriptBank

    ld a, $06
    call PushRomBank
    jp LoopC1Script


; Select the Case II operation-type bank for the alternate script path.
C2AltSelectScriptBank:
jr_000_1bd0:
    ld a, [wItemType]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, C2ScriptTypes+2
    add hl, bc
    ld a, [hl-]
    call PushRomBank
    jp RunBankScript
