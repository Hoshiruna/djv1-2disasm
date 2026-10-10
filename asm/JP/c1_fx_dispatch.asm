
; Dispatch the current scene effect index through the original twenty-seven-entry table.
DispatchC1Fx:

Call_002_6f73:
    ld a, [wFxId]
    rst RST_00

C1FxCalls:
    dw C1FxInit
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
    dw C1FxCue20
    dw C1FxCue1A
    dw C1FxCue1F
    dw C1FxFlags
    dw C1FxObjAlt
    dw C1FxObjAlt
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxNone
    dw C1FxFinal
    dw C1FxObj
    dw C1FxObj
    dw C1FxObj
