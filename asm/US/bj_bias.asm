
; Select dealing mode from the cash high byte, chip count, and object flag $0e; preserve the original exit marker.
SetBJBias:

    ld a, [wC2Cash+1]
    cp $10
    jr nc, jr_029_6f54

    ld a, [wChips]
    cp $c8
    jr c, jr_029_6f69

jr_029_6f54:
    ld a, $0e
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_029_6f65

    ld a, $ff
    ld [wBJExit], a

jr_029_6f65:
    ld a, $01
    jr jr_029_6f77

jr_029_6f69:
    ld a, $0e
    call ReadObjFlag
    ld a, [wStateResult]
    and $01
    jr z, jr_029_6f77

    ld a, $02

jr_029_6f77:
    ld [wBJBias], a
    ret
