
; Dispatch one Case II opcode through the inline pointer table.
DispatchC2Op:
    rst RST_00

C2OpCalls:
    dw ScriptMsg0 ; opcode $00
    dw ScriptMsg1 ; opcode $01
Jump_000_3b13:
    dw ScriptMsg2 ; opcode $02
    dw BranchIfSet ; opcode $03
    dw BranchIfClear ; opcode $04
    dw CallScript ; opcode $05
    dw ReturnScript ; opcode $06
    dw JumpScript ; opcode $07
    dw BranchFlagSet ; opcode $08
Jump_000_3b21:
    dw ScriptSetFlag ; opcode $09
    dw ScriptClrFlag ; opcode $0a
    dw ReadStateBit ; opcode $0b
    dw SetStateBit ; opcode $0c
    dw ClearStateBit ; opcode $0d
    dw ScriptGetState ; opcode $0e
    dw ScriptSetState ; opcode $0f
    dw ScriptClrState ; opcode $10
    db $ae ; opcode $11
Jump_000_3b32:
    db $1e
    dw SetItemArg ; opcode $12
    dw ClearItemArg ; opcode $13
    dw ReadItem2Arg ; opcode $14
    dw SetItem2Arg ; opcode $15
    dw ClearItem2Arg ; opcode $16
    dw BranchAttr0 ; opcode $17
    dw SetAttr0 ; opcode $18
    dw ClearAttr0 ; opcode $19
    dw TestAttr1 ; opcode $1a
jr_000_3b45:
    dw SetAttr1 ; opcode $1b
    dw ClearAttr1 ; opcode $1c
    dw BranchAttr2 ; opcode $1d
    dw SetAttr2 ; opcode $1e
    dw ClearAttr2 ; opcode $1f
    dw CheckRoomExit ; opcode $20
    dw $223b ; opcode $21
    dw $22b1 ; opcode $22
    db $bc ; opcode $23
jr_000_3b56:
    db $22
    dw $230e ; opcode $24
    dw BranchRoomIs ; opcode $25
    dw $23db ; opcode $26
    dw $2500 ; opcode $27
    dw $2750 ; opcode $28
    dw $275a ; opcode $29
    dw $2766 ; opcode $2a
    db $b6 ; opcode $2b
Jump_000_3b66:
    db $27
    dw ScriptMsg3 ; opcode $2c
    dw $2843 ; opcode $2d
    dw $2b9c ; opcode $2e
    dw $2bbb ; opcode $2f
    dw $2bd0 ; opcode $30
    dw $2bd7 ; opcode $31
    dw $2c56 ; opcode $32
    dw $2f18 ; opcode $33
    dw $2f3e ; opcode $34
    dw SelectSlot0 ; opcode $35
    dw SelectSlot1 ; opcode $36
    dw $2f87 ; opcode $37
    db $86 ; opcode $38
Call_000_3b80:
    db $25
    dw $2fb9 ; opcode $39
    dw $2ff9 ; opcode $3a
    dw PrepRoomMove ; opcode $3b
    dw $23bd ; opcode $3c
    dw $3505 ; opcode $3d
    db $25 ; opcode $3e
jr_000_3b8c:
    db $30
    dw ScriptDropChange ; opcode $3f
    dw $2eed ; opcode $40
    dw $2efb ; opcode $41
    dw $2efc ; opcode $42
    dw $2f09 ; opcode $43
    dw $27cd ; opcode $44
    db $de ; opcode $45
Call_000_3b9a:
    db $2b
    db $03 ; opcode $46
jr_000_3b9c:
    db $2c
    dw $2c1e ; opcode $47
    dw $2be5 ; opcode $48
Jump_000_3ba1:
    dw $2c3e ; opcode $49
    dw $2c45 ; opcode $4a
    db $52 ; opcode $4b
jr_000_3ba6:
    db $2c
    dw $248b ; opcode $4c
    dw $2b55 ; opcode $4d
    dw DropItemChange ; opcode $4e
    dw $209d ; opcode $4f
    dw ScriptSetRoom ; opcode $50
    db $f4 ; opcode $51
Call_000_3bb2:
    db $2b
    dw $2ed1 ; opcode $52
    dw $2edf ; opcode $53
    dw BranchFlagClr ; opcode $54
    dw BranchRoomNot ; opcode $55
    dw BranchPackedNot ; opcode $56
    dw $30be ; opcode $57
    dw $30cc ; opcode $58
    dw $30da ; opcode $59
    db $66 ; opcode $5a
Jump_000_3bc4:
    db $39
    dw BranchNoAttr2 ; opcode $5b
    dw $2c99 ; opcode $5c
    dw $2c8e ; opcode $5d
    dw $30e8 ; opcode $5e
    dw $1d5b ; opcode $5f
    dw $2184 ; opcode $60
    dw $22ee ; opcode $61
    dw $22a2 ; opcode $62
    dw $2faa ; opcode $63
    dw $1db2 ; opcode $64
    dw $29a8 ; opcode $65
    dw $2fe5 ; opcode $66
    db $0c ; opcode $67
jr_000_3bde:
    db $31
    dw $3104 ; opcode $68
    dw $3128 ; opcode $69
    dw $3136 ; opcode $6a
    dw $1c3e ; opcode $6b
    dw $3144 ; opcode $6c
    dw $3152 ; opcode $6d
    dw BranchNoAttr0 ; opcode $6e
    dw $22de ; opcode $6f
    dw ScriptAddChange ; opcode $70
    dw $30f6 ; opcode $71
    dw $317c ; opcode $72
    dw $3192 ; opcode $73
    dw PickListRoom ; opcode $74
    dw $31b0 ; opcode $75
    dw $31be ; opcode $76
    dw $31cc ; opcode $77
    db $dc ; opcode $78
Jump_000_3c00:
    db $31
    dw $31ed ; opcode $79
    dw $320e ; opcode $7a
    dw $326b ; opcode $7b
    dw CallBankScript ; opcode $7c
    dw JumpBankScript ; opcode $7d
    dw $1c3f ; opcode $7e
    dw $3279 ; opcode $7f
    dw $2039 ; opcode $80
