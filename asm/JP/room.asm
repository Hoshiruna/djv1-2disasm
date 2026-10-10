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
    jr nz, jr_000_203d

    ld a, [wCaseId]

Call_000_2023:
    cp $00
    jr nz, jr_000_2030

    ld a, $63
    call ShowMsg2
    pop bc
    jp EndBankAction


jr_000_2030:
    ld a, $d1
    call ShowMsg0
    pop bc
    jp EndBankAction


    call SaveState
    ret

; Restore Case I objects and update room-dependent object flags before moving.
PrepRoomMove:

Jump_000_203d:
jr_000_203d:
    ld a, [wCaseId]

Call_000_2040:
    cp $00
    jr nz, jr_000_209a

    push af
    ld a, $02
    call PushRomBank

Call_000_204a:
    pop af

Call_000_204b:
    call RestoreC1Objs
    call PopRomBank

Call_000_2051:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $23
    jr nz, jr_000_2067

    ld a, $bb
    call ClearObjFlag
    jr jr_000_2070

jr_000_2067:
    cp $28
    jr nz, jr_000_2070

    ld a, $bb

Jump_000_206d:
    call SetObjFlag

jr_000_2070:
    ld a, $a9
    call ReadObjFlag

Jump_000_2075:
    ld a, [wStateResult]
    and $01

Jump_000_207a:
    jr z, jr_000_2095

    ld a, [wRoomId]
    cp $26
    jr z, jr_000_2089

Jump_000_2083:
    cp $27
    jr z, jr_000_2090

Jump_000_2087:
    jr jr_000_2095

jr_000_2089:
    ld a, $81
    call SetObjFlag
    jr jr_000_2095

jr_000_2090:
    ld a, $a0
    call SetObjFlag

jr_000_2095:
    ld a, $a9
    call ClearObjFlag

jr_000_209a:
    call SaveState
    push af

Jump_000_209e:
    ld a, $02
    call PushRomBank
    pop af
    call FlushChanges
    call PopRomBank
    ld a, [$c524]
    cp $01
    jr nz, jr_000_20b9

    ld a, $02
    ld [$c524], a

Call_000_20b6:
    call RefreshLists
; Save the previous room, read the case-specific destination arguments, then enter it.
MoveRoom:

jr_000_20b9:
    ld a, [wRoomId]
    ld [wPrevRoom], a
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_20cb

    call ReadArg
    jr jr_000_20ce

jr_000_20cb:
    call ReadArgs2

jr_000_20ce:
    ld a, [wRoomId]
    ld d, a
    ld a, [wArg0]
    cp d
    jr nz, jr_000_20db

    ld a, [wArg1] ; Case I only reads arg 0 here; arg 1 can retain its previous value.

; A = new room ID; use previous-room effects, then draw its scene and objects.
EnterRoom:

Call_000_20db:
Jump_000_20db:
jr_000_20db:
    ld [wRoomId], a
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_211e

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

Call_000_20ff:
Jump_000_20ff:
    call PopRomBank
    push af

Call_000_2103:
    ld a, $01
    call PushRomBank

Jump_000_2108:
    pop af

Jump_000_2109:
    call FillRoomPanel
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call DrawC1Marks
    call PopRomBank
    jr jr_000_2152

jr_000_211e:
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

Jump_000_2146:
    ld a, $03

Jump_000_2148:
    call PushRomBank
    pop af
    call DrawC2Marks
    call PopRomBank

jr_000_2152:
    call ShowScene
    call BuildObjList
    push af
    ld a, $03
    call PushRomBank

Call_000_215e:
    pop af
    call $6d65
    call PopRomBank
    ld a, [wRoomId]
    cp $62
    jr c, jr_000_2172

    ld a, [$c5e4]
    inc a
    jr jr_000_2173

jr_000_2172:
    xor a

jr_000_2173:
    ld [$c5e4], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call $5827
    call PopRomBank

Call_000_2183:
    ret
