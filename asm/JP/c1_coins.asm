
; Read one argument before adding Case I coins.
AddC1CoinsArg:
AddListCountArg:


    call ReadArg

; Add wArg0 to Case I coins with byte wrap, then clear wListName.
AddC1Coins:
AddListCount:

Call_000_2a09:
    ld a, [wC1Coins]
    ld e, a
    ld a, [wArg0]
    add e
    ld [wC1Coins], a
    xor a
    ld [wListName], a
    ret

; Consume a coin when available, refresh its list group while preserving the packed selection, and set the result.
UseC1Coin:
UseListCount:


    call ClearResult
    ld a, [wC1Coins]
    cp $00
    jr z, jr_000_2a43

    dec a
    ld [wC1Coins], a
    xor a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]

Jump_000_2a31:
    ld [wOpByte], a
    ld a, [wListPacked]
    push af
    call RefreshListMode
    pop af
    ld [wListPacked], a
    call SetResult
    ret


jr_000_2a43:
    ld a, $72
    call ShowMsg2
    ret

; Read a cost, subtract it when available, and retain the room-specific success and insufficient-count flags.
SpendC1Coins:
SpendListCount:


    call ReadArg
    ld a, [wC1Coins]
    ld hl, wArg0
    sub [hl]
    jr c, jr_000_2a92

    ld [wC1Coins], a
    ld a, [wRoomId]
    cp $27
    jr z, jr_000_2a6d

    ld a, $81
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2a7e

    jr jr_000_2a79

jr_000_2a6d:
    ld a, $a0
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2a7e

jr_000_2a79:
    ld a, $82
    call SetObjFlag

jr_000_2a7e:
    xor a
    ld [wFindListValue], a
    call FindListValue
    ld a, [wFoundGroup]
    ld [wOpByte], a
    call RefreshListMode
    call SetResult
    ret


jr_000_2a92:
    ld a, [wRoomId]
    cp $26
    jr z, jr_000_2aa1

    cp $27
    jr z, jr_000_2aaa

    call ClearResult
    ret


jr_000_2aa1:
    ld a, $81
    call SetObjFlag
    call ClearResult
    ret


jr_000_2aaa:
    ld a, $a0
    call SetObjFlag
    call ClearResult
    ret
