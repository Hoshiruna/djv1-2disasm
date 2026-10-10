
; Apply regional alternate-target checks and input loops; retain the caller-stack and ROM-bank exit paths.
PickAltTarget:


    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2767

    ld a, $80
    call ReadObjFlag

Jump_000_26ff:
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2726

    ld a, [wItemType]
    cp $03
    jr nz, jr_000_2718

    ld a, [wItemId]
    cp $08
    jr z, jr_000_2726

    cp $2d
    jr z, jr_000_2726

jr_000_2718:
    call TestAttr0
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2726

    pop bc
    jp EndBankAction


jr_000_2726:
    ld a, $80
    call ClearObjFlag

jr_000_272b:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af

Call_000_273f:
    call HandleAltInput
    call PopRomBank
    ld a, $7f
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_275d

    ld a, [wStateResult]
    and $04
    jr nz, jr_000_272b

    pop bc
    call PopRomBank
    ret


jr_000_275d:
    ld a, $7f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret


jr_000_2767:
    ld a, $88
    call ReadObjFlag
    jr nz, jr_000_2791

    call TestAttr0
    ld a, [wStateResult]
    and $01
    jr nz, jr_000_2791

    ld a, [wSelAction]
    cp $02
    jr z, jr_000_2788

    ld a, $e5
    call ShowMsg0
    pop bc
    jp EndBankAction


jr_000_2788:
    ld a, $9e
    call ShowMsg1
    pop bc
    jp EndBankAction


jr_000_2791:
    ld a, $88
    call ClearObjFlag
    ld a, [wSelAction]
    cp $02
    jr z, jr_000_27a4

    ld a, $a7
    call ShowMsg1
    jr jr_000_27a9

jr_000_27a4:
    ld a, $15
    call ShowMsg1

jr_000_27a9:
    push af
    ld a, $01
    call PushRomBank
    pop af
    call PollCursor
    call PopRomBank
    push af
    ld a, $01
    call PushRomBank
    pop af
    call HandleAltInput
    call PopRomBank
    ld a, $8f
    call ReadObjFlag
    jr nz, jr_000_27d6

    ld a, [wStateResult]
    and $04
    jr nz, jr_000_27a9

    pop bc
    call PopRomBank
    ret


jr_000_27d6:
    ld a, $8f
    call ClearObjFlag
    pop bc
    call PopRomBank
    ret
