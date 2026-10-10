
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
    dw $20eb ; opcode $1a
    dw $216c ; opcode $1b
    dw JumpScript ; opcode $1c
    dw $228b ; opcode $1d
    dw $2a80 ; opcode $1e
    dw $2a87 ; opcode $1f
    dw GetItem2First ; opcode $20
    dw SetItem2First ; opcode $21
    dw ClrItem2First ; opcode $22
    dw TestAttr1 ; opcode $23
    dw SetAttr1 ; opcode $24
    dw ClearAttr1 ; opcode $25
    dw $23b0 ; opcode $26
    dw RefreshObjs ; opcode $27
    dw $26f3 ; opcode $28
    dw $2b06 ; opcode $29
    dw $1aee ; opcode $2a
    dw $33f6 ; opcode $2b
    dw $342c ; opcode $2c
    dw $347a ; opcode $2d
    dw ScriptGetState ; opcode $2e
    dw ScriptSetState ; opcode $2f
    dw ScriptClrState ; opcode $30
    dw $27e0 ; opcode $31
    dw $2858 ; opcode $32
    dw $210d ; opcode $33
    dw $21be ; opcode $34
    dw ScriptSetRoom ; opcode $35
    dw $210d ; opcode $36
    dw $216c ; opcode $37
    dw $2a87 ; opcode $38
    dw $28b6 ; opcode $39
    db $00 ; opcode $3a
jr_006_40c0:
    db $2c
    dw $2c34 ; opcode $3b
    dw $28f9 ; opcode $3c
    dw $2c58 ; opcode $3d
    db $8c ; opcode $3e
jr_006_40c8:
    db $2c
    dw $2a4c ; opcode $3f
    dw $28c9 ; opcode $40
    dw PickListRoom ; opcode $41
    dw $267d ; opcode $42
    dw SetRoomArg3 ; opcode $43
    dw $2a5e ; opcode $44
    dw $2a6b ; opcode $45
    dw $2e69 ; opcode $46
    dw RemoveChange ; opcode $47
    dw $2e46 ; opcode $48
    dw $2dc8 ; opcode $49
    dw $2b58 ; opcode $4a
    dw $2b6e ; opcode $4b
    dw $2b7e ; opcode $4c
    dw $2b92 ; opcode $4d
    dw $2cc0 ; opcode $4e
    dw $2ce2 ; opcode $4f
    dw $2cf5 ; opcode $50
    dw $2d31 ; opcode $51
    dw ReadItemArg ; opcode $52
    dw SetItem2ArgA ; opcode $53
    db $8b ; opcode $54
jr_006_40f4:
    db $35
    dw $2dee ; opcode $55
    dw $2bef ; opcode $56
    dw $2c24 ; opcode $57
    dw $2d48 ; opcode $58
    dw $2d6a ; opcode $59
    dw $2ea9 ; opcode $5a
    dw $28a8 ; opcode $5b
    dw ScriptFirstItem ; opcode $5c
    dw TestProp4 ; opcode $5d
    dw $2f49 ; opcode $5e
    dw $2ed5 ; opcode $5f
    dw $224d ; opcode $60
    dw $2ba4 ; opcode $61
    dw $2edc ; opcode $62
    dw $2eef ; opcode $63
    dw $325f ; opcode $64
    dw CallScript ; opcode $65
    dw ReturnScript ; opcode $66
    dw $2f57 ; opcode $67
    dw $1aef ; opcode $68
    db $77 ; opcode $69
jr_006_411e:
    db $20
    dw $2a3b ; opcode $6a
    dw ScriptAltItem ; opcode $6b
    dw ClearItemObj ; opcode $6c
