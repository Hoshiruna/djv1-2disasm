
; Upload 64 live OBJ bytes, then 64 live BG bytes; staged buffers are not read.
UploadPals:
Call_001_4172:
    call UploadObjPal
    call UploadBgPal
    ret

; Copy wBgPal to the eight CGB background palettes.
UploadBgPal:
Call_001_4179:
    ld hl, wBgPal
    ld d, PaletteSetByteCount
    ld a, $80
    ldh [rBCPS], a
    ld c, $69
    jr UploadPalNextByte

; Copy wObjPal to the eight CGB object palettes.
UploadObjPal:
Call_001_4186:
    ld hl, wObjPal
    ld d, PaletteSetByteCount
    ld a, $80
    ldh [rOCPS], a
    ld c, $6b

; Write the next of sixty-four palette bytes through the selected CGB data port.
UploadPalNextByte:
jr_001_4191:
    ld a, [hl+]
    ldh [c], a
    dec d
    jr nz, UploadPalNextByte

    ret
