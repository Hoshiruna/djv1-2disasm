
; Clear OAM, pause LCD and timer, load save graphics/map/objects, then restore LCD and timer.
LoadSaveUi:


Call_002_7952:
    call BlankOam
    call RequestTimer
    call DisableLcd
    call LoadSaveGfx
    ld a, $02
    call ReadUiMap
    ld a, $02
    call StageUiObj
    call StopTimer
    call RestoreLcd
    ret

; Read the pointer selected by the UI language byte from the table at HL while preserving BC.
PickSaveSpec:


Call_002_796f:
    push bc
    ld a, [wTextSet]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    ld l, c
    pop bc
    ret
