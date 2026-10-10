
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
    ; Pointer to ReadItemArg; split bytes retain the original interior label.
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
    dw SetSelStateView ; opcode $21
    dw ScriptSetStateDraw ; opcode $22
    ; Pointer to ClearSelStateView; split bytes retain the original interior label.
    db $bc ; opcode $23
jr_000_3b56:
    db $22
    dw ScriptClrStateView ; opcode $24
    dw BranchRoomIs ; opcode $25
    dw AddSelList ; opcode $26
    dw KeepSelChange ; opcode $27
    dw ScriptObjVisible ; opcode $28
    dw ScriptShowObj ; opcode $29
    dw ScriptHideObj ; opcode $2a
    ; Pointer to RefreshObjs; split bytes retain the original interior label.
    db $b6 ; opcode $2b
Jump_000_3b66:
    db $27
    dw ScriptMsg3 ; opcode $2c
    dw PickAltTarget ; opcode $2d
    dw ScriptHoldText ; opcode $2e
    dw ResumeTextUI ; opcode $2f
    dw ScriptName0 ; opcode $30
    dw ScriptName1 ; opcode $31
    dw MatchItemScript ; opcode $32
    dw DropSelList ; opcode $33
    dw DropListArg ; opcode $34
    dw SelectSlot0 ; opcode $35
    dw SelectSlot1 ; opcode $36
    dw ExitActionFx ; opcode $37
    ; Pointer to RemoveChange; split bytes retain the original interior label.
    db $86 ; opcode $38
Call_000_3b80:
    db $25
    dw ScriptEffect ; opcode $39
    dw FinishEffect ; opcode $3a
    dw PrepRoomMove ; opcode $3b
    dw DrawC2Panel ; opcode $3c
    dw ScriptDropHead ; opcode $3d
    ; Pointer to ScriptPlayAudio; split bytes retain the original interior label.
    db $25 ; opcode $3e
jr_000_3b8c:
    db $30
    dw ScriptDropChange ; opcode $3f
    dw C2CounterCall ; opcode $40
    dw ScriptNoop ; opcode $41
    dw ClearC2Counter ; opcode $42
    dw TestRandomLow2 ; opcode $43
    dw AddQuickArg ; opcode $44
    ; Pointer to FirstName0; split bytes retain the original interior label.
    db $de ; opcode $45
Call_000_3b9a:
    db $2b
    ; Pointer to BranchPackedIs; split bytes retain the original interior label.
    db $03 ; opcode $46
jr_000_3b9c:
    db $2c
    dw ScriptWaitObjs ; opcode $47
    dw SlotName0 ; opcode $48
Jump_000_3ba1:
    dw $2c3e ; opcode $49
    dw $2c45 ; opcode $4a
    db $52 ; opcode $4b
jr_000_3ba6:
    db $2c
    dw AddArgList ; opcode $4c
    dw TestSelNameArg ; opcode $4d
    dw DropItemChange ; opcode $4e
    dw $209d ; opcode $4f
    dw ScriptSetRoom ; opcode $50
    ; Pointer to SlotName1; split bytes retain the original interior label.
    db $f4 ; opcode $51
Call_000_3bb2:
    db $2b
    dw UseBulletCall ; opcode $52
    dw TakeBulletCall ; opcode $53
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
    dw TestC2Count ; opcode $5c
    dw DecC2Count ; opcode $5d
    dw $30e8 ; opcode $5e
    dw $1d5b ; opcode $5f
    dw MoveC2Room ; opcode $60
    dw ClearC2ExtraView ; opcode $61
    dw SetC2RoomView ; opcode $62
    dw RoomEffect ; opcode $63
    dw $1db2 ; opcode $64
    dw ScriptPutItem ; opcode $65
    dw ScriptC2Effect ; opcode $66
    ; Pointer to SpendWordOne; split bytes retain the original interior label.
    db $0c ; opcode $67
jr_000_3bde:
    db $31
    dw SpendWordCost ; opcode $68
    dw $3128 ; opcode $69
    dw $3136 ; opcode $6a
    dw ScriptRet ; opcode $6b
    dw $3144 ; opcode $6c
    dw $3152 ; opcode $6d
    dw BranchNoAttr0 ; opcode $6e
    dw ClearC2RoomView ; opcode $6f
    dw ScriptAddChange ; opcode $70
    dw CheckWordCall ; opcode $71
    dw UseC2Count2 ; opcode $72
    dw ReloadC2Map ; opcode $73
    dw PickListRoom ; opcode $74
    dw $31b0 ; opcode $75
    dw $31be ; opcode $76
    dw RepeatCue10 ; opcode $77
    ; Pointer to RefreshItemList; split bytes retain the original interior label.
    db $dc ; opcode $78
Jump_000_3c00:
    db $31
    dw BranchWordFive ; opcode $79
    dw BlinkObjTwice ; opcode $7a
    dw $326b ; opcode $7b
    dw CallBankScript ; opcode $7c
    dw JumpBankScript ; opcode $7d
    dw ScriptWait60 ; opcode $7e
    dw ResetItemSlots ; opcode $7f
    dw $2039 ; opcode $80
