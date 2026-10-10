
; Dispatch one Case II opcode through the inline pointer table.
DispatchC2Op:
    rst RST_00

C2OpCalls:
    dw ScriptMsg0 ; opcode $00
    dw ScriptMsg1 ; opcode $01
    dw ScriptMsg2 ; opcode $02
    dw BranchIfSet ; opcode $03
    dw BranchIfClear ; opcode $04
    dw CallScript ; opcode $05
    dw ReturnScript ; opcode $06
    dw JumpScript ; opcode $07
    dw BranchFlagSet ; opcode $08
    dw ScriptSetFlag ; opcode $09
    dw ScriptClrFlag ; opcode $0a
    dw ReadStateBit ; opcode $0b
    dw SetStateBit ; opcode $0c
    dw ClearStateBit ; opcode $0d
    dw ScriptGetState ; opcode $0e
    dw ScriptSetState ; opcode $0f
Jump_000_3a00:
    dw ScriptClrState ; opcode $10
    dw ReadItemArg ; opcode $11
    dw SetItemArg ; opcode $12
    dw ClearItemArg ; opcode $13
    dw ReadItem2Arg ; opcode $14
    dw SetItem2Arg ; opcode $15
    dw ClearItem2Arg ; opcode $16
    dw BranchAttr0 ; opcode $17
    dw SetAttr0 ; opcode $18
    dw ClearAttr0 ; opcode $19
    dw TestAttr1 ; opcode $1a
    dw SetAttr1 ; opcode $1b
    db $6d ; opcode $1c
jr_000_3a19:
    db $1e
    dw BranchAttr2 ; opcode $1d
    db $9d ; opcode $1e
jr_000_3a1d:
    db $1e
    dw ClearAttr2 ; opcode $1f
    db $bb ; opcode $20
Jump_000_3a21:
    db $1e
    dw $20eb ; opcode $21
    dw $2161 ; opcode $22
    dw $216c ; opcode $23
    dw $21be ; opcode $24
    dw BranchRoomIs ; opcode $25
    dw $228b ; opcode $26
    db $b0 ; opcode $27
Call_000_3a2f:
    db $23
    db $00 ; opcode $28
Jump_000_3a31:
    db $26
    dw $260a ; opcode $29
    dw $2616 ; opcode $2a
    dw RefreshObjs ; opcode $2b
    dw ScriptMsg3 ; opcode $2c
    dw $26f3 ; opcode $2d
    dw $2a4c ; opcode $2e
    dw $2a6b ; opcode $2f
    db $80 ; opcode $30
jr_000_3a41:
    db $2a
jr_000_3a42:
    dw $2a87 ; opcode $31
    dw $2b06 ; opcode $32
    dw $2dc8 ; opcode $33
    dw $2dee ; opcode $34
    dw SelectSlot0 ; opcode $35
    dw SelectSlot1 ; opcode $36
    dw $2e37 ; opcode $37
    dw RemoveChange ; opcode $38
    dw $2e69 ; opcode $39
    dw $2ea9 ; opcode $3a
    dw PrepRoomMove ; opcode $3b
    dw $226d ; opcode $3c
    dw $33b9 ; opcode $3d
    db $d5 ; opcode $3e
jr_000_3a5d:
    db $2e
    dw ScriptDropChange ; opcode $3f
    dw $2d9d ; opcode $40
    dw $2dab ; opcode $41
    dw $2dac ; opcode $42
    dw $2db9 ; opcode $43
    dw $267d ; opcode $44
    dw $2a8e ; opcode $45
    dw BranchPackedIs ; opcode $46
    dw $2ace ; opcode $47
jr_000_3a70:
    dw $2a95 ; opcode $48
    dw $2aee ; opcode $49
    dw $2af5 ; opcode $4a
    dw $2b02 ; opcode $4b
    dw $233b ; opcode $4c
    dw $2a05 ; opcode $4d
    dw DropItemChange ; opcode $4e
    dw $1f4d ; opcode $4f
    dw ScriptSetRoom ; opcode $50
    dw $2aa4 ; opcode $51
    dw $2d81 ; opcode $52
jr_000_3a86:
    dw $2d8f ; opcode $53
    dw BranchFlagClr ; opcode $54
    dw BranchRoomNot ; opcode $55
    dw BranchPackedNot ; opcode $56
    dw $2f6e ; opcode $57
    dw $2f7c ; opcode $58
    db $8a ; opcode $59
jr_000_3a93:
    db $2f
    dw $3837 ; opcode $5a
    dw BranchNoAttr2 ; opcode $5b
    dw $2b49 ; opcode $5c
Jump_000_3a9a:
    dw $2b3e ; opcode $5d
    dw $2f98 ; opcode $5e
    dw $1c0b ; opcode $5f
    dw $2034 ; opcode $60
    dw $219e ; opcode $61
    dw $2152 ; opcode $62
    dw $2e5a ; opcode $63
    dw $1c62 ; opcode $64
    dw $2858 ; opcode $65
    dw $2e95 ; opcode $66
    dw $2fbc ; opcode $67
    dw $2fb4 ; opcode $68
    dw $2fd8 ; opcode $69
    dw $2fe6 ; opcode $6a
Call_000_3ab6:
    dw $1aee ; opcode $6b
    dw $2ff4 ; opcode $6c
    dw $3002 ; opcode $6d
    dw BranchNoAttr0 ; opcode $6e
    dw $218e ; opcode $6f
    dw ScriptAddChange ; opcode $70
    dw $2fa6 ; opcode $71
    dw $302c ; opcode $72
    dw $3042 ; opcode $73
    dw PickListRoom ; opcode $74
    dw $3060 ; opcode $75
    dw $306e ; opcode $76
    dw $307c ; opcode $77
    dw $308c ; opcode $78
    dw $309d ; opcode $79
    dw $30be ; opcode $7a
    dw $311b ; opcode $7b
    dw CallBankScript ; opcode $7c
    dw JumpBankScript ; opcode $7d
    dw $1aef ; opcode $7e
    dw $3129 ; opcode $7f
    dw $1ee9 ; opcode $80
