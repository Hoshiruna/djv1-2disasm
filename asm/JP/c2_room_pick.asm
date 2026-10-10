
; Map the packed byte at HL to one of five room IDs; keep the unmatched-row and same-room paths.
PickC2Room:


    ld bc, $0000
    ld a, [hl]
    ld hl, C2PickKeys
    ld d, $05

jr_003_4cbe:
    cp [hl]
    jr z, jr_003_4cd5

    inc hl
    inc c
    dec d
    jr nz, jr_003_4cbe

    ld a, [wListPick]
    sub $0d
    ld [wListMarkRow], a
    call ClearListMarkCall
    call WaitFrame
    ret


jr_003_4cd5:
    ld hl, C2PickRooms
    add hl, bc
    ld a, [hl]
    ld hl, wRoomId
    cp [hl]
    jr z, jr_003_4cfc

    push af
    ld a, [wRoomId]
    cp $31
    jr nz, jr_003_4cf4

    ld a, $79
    call ReadObjFlag
    jr z, jr_003_4cf4

    ld a, $a1
    call SetObjFlag

jr_003_4cf4:
    pop af
    ld [wRoomId], a
    call FinishC2Pick
    ret


jr_003_4cfc:
    ld a, $46
    call ShowMsg1
    call RestoreTextLists
    ret

; Reset scrolling, call the original bank 29 helper, show the selection messages and play its effect.
FinishC2Pick:


Call_003_4d05:
    call ResetObjScroll
    call Call_000_39ac
    ld a, $48
    call ShowMsg1
    call PlayC2PickFx
    ld a, $49
    call ShowMsg1
    ld a, $4a
    call ShowMsg1
    call Call_000_39ac
    call RestoreTextLists
    ret

C2PickKeys:
    db $e0
    db $e1
    db $e2
    db $e3
    db $e4

C2PickRooms:
    db $31
    db $5e
    db $60
    db $5f
    db $61

; Play animation $6a eight times at $48/$00; submit audio $33 when C reaches 2.
PlayC2PickFx:

Call_003_4d2e:
    ld c, $08

jr_003_4d30:
    ld a, $48
    ldh [$ff92], a
    ld a, $00
    ldh [$ff93], a
    push bc
    ld a, $6a
    call PlayBankAnim
    pop bc
    ld a, $02
    cp c
    jr nz, jr_003_4d49

    ld a, $33
    call PlayAudio

jr_003_4d49:
    dec c
    jr nz, jr_003_4d30

    ret
