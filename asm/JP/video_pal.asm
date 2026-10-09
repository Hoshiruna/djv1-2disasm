
; Write active object and BG palette sets to CGB palette registers.
UploadPals:
Call_001_4172:
    call UploadObjPal
    call UploadBgPal
    ret

; Copy wBgPal to the eight CGB background palettes.
UploadBgPal:
Call_001_4179:
    ld hl, wBgPal
    ld d, $40
    ld a, $80
    ldh [rBCPS], a
    ld c, $69
    jr jr_001_4191

; Copy wObjPal to the eight CGB object palettes.
UploadObjPal:
Call_001_4186:
    ld hl, wObjPal
    ld d, $40
    ld a, $80
    ldh [rOCPS], a
    ld c, $6b

jr_001_4191:
    ld a, [hl+]
    ldh [c], a
    dec d
    jr nz, jr_001_4191

    ret
