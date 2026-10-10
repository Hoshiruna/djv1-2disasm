
; Dispatch one Case I opcode through the inline pointer table.
DispatchC1Op:
Call_006_404a:
    rst RST_00

C1OpCalls:
    dw ScriptMsg0 ; opcode $00
    dw ScriptMsg1 ; opcode $01
    dw ScriptMsg2 ; opcode $02
    dw BranchIfSet ; opcode $03
    dw BranchIfSet ; opcode $04
    dw BranchIfClear ; opcode $05
    dw CheckRoomExit ; opcode $06
    dw TestAttr0 ; opcode $07
    dw SetAttr0 ; opcode $08
    dw ClearAttr0 ; opcode $09
    dw TestAttr0 ; opcode $0a
    dw SetAttr0 ; opcode $0b
    dw ClearAttr0 ; opcode $0c
    dw TestAttr2 ; opcode $0d
    dw SetAttr2 ; opcode $0e
    dw ClearAttr2 ; opcode $0f
    dw TestAttr2 ; opcode $10
    dw SetAttr2 ; opcode $11
    dw ClearAttr2 ; opcode $12
    dw TestAttr2 ; opcode $13
    dw SetAttr2 ; opcode $14
    dw ClearAttr2 ; opcode $15
    dw ScriptGetFlag ; opcode $16
    dw ScriptSetFlag ; opcode $17
    dw ScriptClrFlag ; opcode $18
    dw ScriptRoomIs ; opcode $19
    dw $223b ; opcode $1a
    dw $22bc ; opcode $1b
    dw JumpScript ; opcode $1c
    dw $23db ; opcode $1d
    dw $2bd0 ; opcode $1e
    dw $2bd7 ; opcode $1f
    dw GetItem2First ; opcode $20
    dw SetItem2First ; opcode $21
    dw ClrItem2First ; opcode $22
    dw TestAttr1 ; opcode $23
    dw SetAttr1 ; opcode $24
    dw ClearAttr1 ; opcode $25
    dw $2500 ; opcode $26
    dw RefreshObjs ; opcode $27
    dw $2843 ; opcode $28
    dw $2c56 ; opcode $29
    dw $1c3e ; opcode $2a
    dw $3542 ; opcode $2b
    db $78 ; opcode $2c
jr_006_40a4:
    db $35
    dw $35c6 ; opcode $2d
    dw ScriptGetState ; opcode $2e
    dw ScriptSetState ; opcode $2f
    dw ScriptClrState ; opcode $30
    dw $2930 ; opcode $31
    dw $29a8 ; opcode $32
    dw $225d ; opcode $33
    dw $230e ; opcode $34
    dw ScriptSetRoom ; opcode $35
    dw $225d ; opcode $36
    dw $22bc ; opcode $37
    dw $2bd7 ; opcode $38
    dw $2a06 ; opcode $39
    dw $2d50 ; opcode $3a
    dw $2d84 ; opcode $3b
jr_006_40c3:
    dw $2a49 ; opcode $3c
    dw $2da8 ; opcode $3d
    dw $2ddc ; opcode $3e
    dw $2b9c ; opcode $3f
    dw $2a19 ; opcode $40
    dw PickListRoom ; opcode $41
    dw $27cd ; opcode $42
    dw SetRoomArg3 ; opcode $43
    dw $2bae ; opcode $44
    dw $2bbb ; opcode $45
    dw $2fb9 ; opcode $46
    dw RemoveChange ; opcode $47
    dw $2f96 ; opcode $48
    dw $2f18 ; opcode $49
    dw $2ca8 ; opcode $4a
    dw $2cbe ; opcode $4b
    dw $2cce ; opcode $4c
    dw $2ce2 ; opcode $4d
    dw $2e10 ; opcode $4e
    dw $2e32 ; opcode $4f
    dw $2e45 ; opcode $50
    dw $2e81 ; opcode $51
    dw ReadItemArg ; opcode $52
    dw SetItem2ArgA ; opcode $53
    db $d7 ; opcode $54
jr_006_40f4:
    db $36
    dw $2f3e ; opcode $55
    dw $2d3f ; opcode $56
    dw $2d74 ; opcode $57
    dw $2e98 ; opcode $58
    dw $2eba ; opcode $59
    dw $2ff9 ; opcode $5a
    dw $29f8 ; opcode $5b
    dw ScriptFirstItem ; opcode $5c
    dw TestProp4 ; opcode $5d
    dw $3099 ; opcode $5e
    dw $3025 ; opcode $5f
    dw $239d ; opcode $60
    db $f4 ; opcode $61
jr_006_410e:
    db $2c
    dw $302c ; opcode $62
    dw $303f ; opcode $63
    dw $33af ; opcode $64
    dw CallScript ; opcode $65
    dw ReturnScript ; opcode $66
    dw $30a7 ; opcode $67
    dw $1c3f ; opcode $68
    dw $21c7 ; opcode $69
    dw $2b8b ; opcode $6a
    dw ScriptAltItem ; opcode $6b
    dw ClearItemObj ; opcode $6c
