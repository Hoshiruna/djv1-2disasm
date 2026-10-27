
; Load the auxiliary low/high tiles used by the audio test and credits.
LoadAuxGfx:


Call_000_0a00:
Jump_000_0a00:
    ld a, UiGfxIdAuxLow

Call_000_0a02:
Jump_000_0a02:
    call ReadUiGfx
    ld a, UiGfxIdAuxHigh

Call_000_0a07:
    call ReadUiGfx
    ret
