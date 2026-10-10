
; Fill all thirty-two bytes of the case-two schedule with $fe.
ClearC2Schedule:


Call_003_6341:
    ld hl, wC2Schedule
    ld a, $fe
    ld c, $20

jr_003_6348:
    ld [hl+], a
    dec c
    jr nz, jr_003_6348

    ret

; Select list text seven and show it using the existing text path.
ShowC2SchedHead:


Call_003_634d:
    ld a, $07
    ld [$c8e6], a
    call ShowListText
    ret
