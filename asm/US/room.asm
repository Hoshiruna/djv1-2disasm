; Check the selected item state bit before running the room transition.
CheckRoomExit:

    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ReadStateBit
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_1eed

    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1ee0

    ld a, $63
    call ShowMsg2
    pop bc
    jp EndBankAction


jr_000_1ee0:
    ld a, $d1
    call ShowMsg0
    pop bc
    jp EndBankAction


    call SaveState
    ret

; Restore Case I objects and update room-dependent object flags before moving.
PrepRoomMove:

jr_000_1eed:
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1f4a

    push af
    ld a, $02

Call_000_1ef7:
    call PushRomBank
    pop af
    call RestoreC1Objs
    call PopRomBank
    ld bc, wItemId

Jump_000_1f04:
    ldh a, [hItemSlot]
    ld l, a

Jump_000_1f07:
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, jr_000_1f17

    ld a, $bb

Jump_000_1f12:
    call ClearObjFlag
    jr jr_000_1f20

jr_000_1f17:
    cp $28
    jr nz, jr_000_1f20

    ld a, $bb

Call_000_1f1d:
    call SetObjFlag

Jump_000_1f20:
jr_000_1f20:
    ld a, $a9
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_000_1f45

    ld a, [wRoomId]
    cp $26
    jr z, jr_000_1f39

    cp $27
    jr z, jr_000_1f40

    jr jr_000_1f45

jr_000_1f39:
    ld a, $81
    call SetObjFlag
    jr jr_000_1f45

Call_000_1f40:
jr_000_1f40:
    ld a, $a0
    call SetObjFlag

jr_000_1f45:
    ld a, $a9
    call ClearObjFlag

jr_000_1f4a:
    call SaveState
    push af
    ld a, $02
    call PushRomBank

Call_000_1f53:
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [$c524]
    cp $01
    jr nz, jr_000_1f69

    ld a, $02
    ld [$c524], a
    call RefreshLists

; Save the previous room, read the case-specific destination arguments, then enter it.
MoveRoom:

jr_000_1f69:
    ld a, [wRoomId]
    ld [wPrevRoom], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1f7b

    call ReadArg
    jr jr_000_1f7e

jr_000_1f7b:
    call ReadArgs2

Call_000_1f7e:
jr_000_1f7e:
    ld a, [wRoomId]
    ld d, a
    ld a, [wArg0]
    cp d
    jr nz, jr_000_1f8b

    ld a, [wArg1] ; Case I only reads arg 0 here; arg 1 can retain its previous value.

; A = new room ID; use previous-room effects, then draw its scene and objects.
EnterRoom:

Call_000_1f8b:
Jump_000_1f8b:
jr_000_1f8b:
    ld [wRoomId], a
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_1fce

    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Fx
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Scene
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    jr jr_000_2002

jr_000_1fce:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Fx
    call PopRomBank
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $03

Jump_000_1ff8:
    call PushRomBank

Call_000_1ffb:
    pop af

Jump_000_1ffc:
    call DrawC2Marks

Jump_000_1fff:
    call PopRomBank

Jump_000_2002:
jr_000_2002:
    call ShowScene
    call BuildObjList
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $6d60
    call PopRomBank
    ld a, [wRoomId]
    cp $62
    jr c, jr_000_2022

    ld a, [$c5e4]
    inc a
    jr jr_000_2023

jr_000_2022:
    xor a

Call_000_2023:
jr_000_2023:
    ld [$c5e4], a
    push af

Call_000_2027:
    ld a, $03
    call PushRomBank
    pop af
    call $5827
    call PopRomBank

Jump_000_2033:
    ret
