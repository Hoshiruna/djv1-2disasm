
; Force the first operation slot, encode its packed value, write it at the current group scratch offset, and call case-one put completion.
WriteC1Group:


Jump_000_2881:
    ld d, a
    ld a, $00
    ldh [hItemSlot], a
    ld a, $00
    ldh [hItemSlot+1], a
    ld a, d
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PackListItem
    call PopRomBank
    ld a, [wListCode]
    ld b, a
    ldh a, [hChangePos]
    ld l, a
    ldh a, [hChangePos+1]
    ld h, a
    ld a, b
    ld bc, wGroupData
    add hl, bc
    ld [hl], a
    push af
    ld a, $02
    call PushRomBank
    pop af
    call FinishC1Put
    call PopRomBank
    ret
