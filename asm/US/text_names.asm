
; Read one script argument into the first text name ID.
ScriptName0:


    call ReadArg
    ld [wTextName0], a
    ret

; Read one script argument into the second text name ID.
ScriptName1:


    call ReadArg
    ld [wTextName1], a
    ret

; Copy the absolute first-slot name ID into the first text name ID.
FirstName0:


    ld a, [wSelName]
    ld [wTextName0], a
    ret

; Copy the indexed slot name ID into the first text name ID.
SlotName0:


    ld bc, wSelName
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wTextName0], a
    ret

; Copy the indexed slot name ID into the second text name ID.
SlotName1:


    ld bc, wSelName
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    ld [wTextName1], a
    ret
