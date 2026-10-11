
; Load UI graphics eight and nine for the audio-test and ending displays.
LoadAuxGfx:


Call_000_0a00:
Jump_000_0a00:
    ld a, $08

Call_000_0a02:
Jump_000_0a02:
    call ReadUiGfx
    ld a, $09

Call_000_0a07:
    call ReadUiGfx
    ret
