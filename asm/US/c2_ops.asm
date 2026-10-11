
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
    ; Pointer to ClearAttr1; split bytes retain the original interior label.
    db $6d ; opcode $1c
jr_000_3a19:
    db $1e
    dw BranchAttr2 ; opcode $1d
    ; Pointer to SetAttr2; split bytes retain the original interior label.
    db $9d ; opcode $1e
jr_000_3a1d:
    db $1e
    dw ClearAttr2 ; opcode $1f
    ; Pointer to CheckRoomExit; split bytes retain the original interior label.
    db $bb ; opcode $20
Jump_000_3a21:
    db $1e
    dw SetSelStateView ; opcode $21
    dw ScriptSetStateDraw ; opcode $22
    dw ClearSelStateView ; opcode $23
    dw ScriptClrStateView ; opcode $24
    dw BranchRoomIs ; opcode $25
    dw AddSelList ; opcode $26
    ; Pointer to KeepSelChange; split bytes retain the original interior label.
    db $b0 ; opcode $27
Call_000_3a2f:
    db $23
    db $00 ; opcode $28
Jump_000_3a31:
    db $26
    dw ScriptShowObj ; opcode $29
    dw ScriptHideObj ; opcode $2a
    dw RefreshObjs ; opcode $2b
    dw ScriptMsg3 ; opcode $2c
    dw PickAltTarget ; opcode $2d
    dw ScriptHoldText ; opcode $2e
    dw ResumeTextUI ; opcode $2f
    ; Pointer to ScriptName0; split bytes retain the original interior label.
    db $80 ; opcode $30
jr_000_3a41:
    db $2a
jr_000_3a42:
    dw ScriptName1 ; opcode $31
    dw MatchItemScript ; opcode $32
    dw DropSelList ; opcode $33
    dw DropListArg ; opcode $34
    dw SelectSlot0 ; opcode $35
    dw SelectSlot1 ; opcode $36
    dw ExitActionFx ; opcode $37
    dw RemoveChange ; opcode $38
    dw ScriptEffect ; opcode $39
    dw FinishEffect ; opcode $3a
    dw PrepRoomMove ; opcode $3b
    dw DrawC2Panel ; opcode $3c
    dw ScriptDropHead ; opcode $3d
    ; Pointer to ScriptPlayAudio; split bytes retain the original interior label.
    db $d5 ; opcode $3e
jr_000_3a5d:
    db $2e
    dw ScriptDropChange ; opcode $3f
    dw C2CounterCall ; opcode $40
    dw ScriptNoop ; opcode $41
    dw ClearC2Counter ; opcode $42
    dw TestRandomLow2 ; opcode $43
    dw AddQuickArg ; opcode $44
    dw FirstName0 ; opcode $45
    dw BranchPackedIs ; opcode $46
    dw ScriptWaitObjs ; opcode $47
jr_000_3a70:
    dw SlotName0 ; opcode $48
    dw ScriptValue0 ; opcode $49
    dw ScriptValues01 ; opcode $4a
    dw ScriptBuildObjs ; opcode $4b
    dw AddArgList ; opcode $4c
    dw TestSelNameArg ; opcode $4d
    dw DropItemChange ; opcode $4e
    dw MoveRoomFlush ; opcode $4f
    dw ScriptSetRoom ; opcode $50
    dw SlotName1 ; opcode $51
    dw UseBulletCall ; opcode $52
jr_000_3a86:
    dw TakeBulletCall ; opcode $53
    dw BranchFlagClr ; opcode $54
    dw BranchRoomNot ; opcode $55
    dw BranchPackedNot ; opcode $56
    dw BlackjackCall ; opcode $57
    dw Trains2To5Call ; opcode $58
    ; Pointer to Trains6To9Call; split bytes retain the interior label.
    ; Pointer to Trains6To9Call; split bytes retain the interior label.
    db $8a ; opcode $59
jr_000_3a93:
    db $2f
    dw RoomCueCall ; opcode $5a
    dw BranchNoAttr2 ; opcode $5b
    dw TestC2Quarters ; opcode $5c
Jump_000_3a9a:
    dw DecC2Quarter ; opcode $5d
    dw TrainFareCall ; opcode $5e
    dw BranchNoTrainPass ; opcode $5f
    dw LeaveTrain ; opcode $60
    dw ClearTrainLinks ; opcode $61
    dw ShowCarFare ; opcode $62
    dw TrainRoomEffect ; opcode $63
    dw SetTrainPass ; opcode $64
    dw ScriptPutItem ; opcode $65
    dw ScriptC2Effect ; opcode $66
    dw SpendCashOne ; opcode $67
    dw SpendCashCost ; opcode $68
    dw BuyChipsCall ; opcode $69
    dw SellChipsCall ; opcode $6a
Call_000_3ab6:
    dw ScriptRet ; opcode $6b
    dw DesertMoveCall ; opcode $6c
    dw C2ShopCall ; opcode $6d
    dw BranchNoAttr0 ; opcode $6e
    dw HideCarFare ; opcode $6f
    dw ScriptAddChange ; opcode $70
    dw CheckCashCall ; opcode $71
    dw UseC2Cell ; opcode $72
    dw ReloadC2Map ; opcode $73
    dw PickListRoom ; opcode $74
    dw MapPulse23Call ; opcode $75
    dw MapStepsCall ; opcode $76
    dw RepeatCue10 ; opcode $77
    dw RefreshItemList ; opcode $78
    dw BranchNoFunds ; opcode $79
    dw BlinkObjTwice ; opcode $7a
    dw C2ChoiceCall ; opcode $7b
    dw CallBankScript ; opcode $7c
    dw JumpBankScript ; opcode $7d
    dw ScriptWait60 ; opcode $7e
    dw ResetItemSlots ; opcode $7f
    dw SaveStateRet ; opcode $80
