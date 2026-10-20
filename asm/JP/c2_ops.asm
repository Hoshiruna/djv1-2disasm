
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
    dw ReadStateBit ; opcode $0b; no operand; dispatch A selects state $16
    dw SetStateBit ; opcode $0c; no operand; dispatch A selects state $18
    dw ClearStateBit ; opcode $0d; no operand; dispatch A selects state $1a
    dw ScriptGetState ; opcode $0e
    dw ScriptSetState ; opcode $0f
    dw ScriptClrState ; opcode $10
    ; Pointer to ReadItemArg; split bytes retain the original interior label.
    db LOW(ReadItemArg) ; opcode $11
Jump_000_3b32:
    db HIGH(ReadItemArg)
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
    dw CheckRoomExit ; opcode $20; 2 destination bytes on success
    dw SetSelStateView ; opcode $21
    dw ScriptSetStateDraw ; opcode $22
    ; Pointer to ClearSelStateView; split bytes retain the original interior label.
    db LOW(ClearSelStateView) ; opcode $23
jr_000_3b56:
    db HIGH(ClearSelStateView)
    dw ScriptClrStateView ; opcode $24
    dw BranchRoomIs ; opcode $25
    dw AddSelList ; opcode $26
    dw KeepSelChange ; opcode $27
    dw ScriptObjVisible ; opcode $28
    dw ScriptShowObj ; opcode $29
    dw ScriptHideObj ; opcode $2a
    ; Pointer to RefreshObjs; split bytes retain the original interior label.
    db LOW(RefreshObjs) ; opcode $2b
Jump_000_3b66:
    db HIGH(RefreshObjs)
    dw ScriptMsg3 ; opcode $2c
    dw PickAltTarget ; opcode $2d
    dw ScriptHoldText ; opcode $2e; no operand
    dw ResumeTextUI ; opcode $2f
    dw ScriptName0 ; opcode $30
    dw ScriptName1 ; opcode $31
    dw MatchItemScript ; opcode $32
    dw DropSelList ; opcode $33
    dw DropListArg ; opcode $34
    dw SelectSlot0 ; opcode $35
    dw SelectSlot1 ; opcode $36
    dw ExitActionFx ; opcode $37; no operand; ends the action
    ; Pointer to RemoveChange; split bytes retain the original interior label.
    db LOW(RemoveChange) ; opcode $38
Call_000_3b80:
    db HIGH(RemoveChange)
    dw ScriptEffect ; opcode $39
    dw FinishEffect ; opcode $3a; no operand
    dw PrepRoomMove ; opcode $3b; 2 destination bytes; no exit-state check
    dw DrawC2Panel ; opcode $3c
    dw ScriptDropHead ; opcode $3d
    ; Pointer to ScriptPlayAudio; split bytes retain the original interior label.
    db LOW(ScriptPlayAudio) ; opcode $3e
jr_000_3b8c:
    db HIGH(ScriptPlayAudio)
    dw ScriptDropChange ; opcode $3f
    dw C2CounterCall ; opcode $40
    dw ScriptNoop ; opcode $41
    dw ClearC2Counter ; opcode $42
    dw TestRandomLow2 ; opcode $43
    dw AddQuickArg ; opcode $44
    ; Pointer to FirstName0; split bytes retain the original interior label.
    db LOW(FirstName0) ; opcode $45
Call_000_3b9a:
    db HIGH(FirstName0)
    ; Pointer to BranchPackedIs; split bytes retain the original interior label.
    db LOW(BranchPackedIs) ; opcode $46
jr_000_3b9c:
    db HIGH(BranchPackedIs)
    dw ScriptWaitObjs ; opcode $47
    dw SlotName0 ; opcode $48
Jump_000_3ba1:
    dw ScriptValue0 ; opcode $49
    dw ScriptValues01 ; opcode $4a
    ; Pointer to ScriptBuildObjs; split bytes retain the interior label.
    db LOW(ScriptBuildObjs) ; opcode $4b
jr_000_3ba6:
    db HIGH(ScriptBuildObjs)
    dw AddArgList ; opcode $4c
    dw TestSelNameArg ; opcode $4d
    dw DropItemChange ; opcode $4e
    dw MoveRoomFlush ; opcode $4f; 2 destination bytes; skip state save
    dw ScriptSetRoom ; opcode $50
    ; Pointer to SlotName1; split bytes retain the original interior label.
    db LOW(SlotName1) ; opcode $51
Call_000_3bb2:
    db HIGH(SlotName1)
    dw UseBulletCall ; opcode $52
    dw TakeBulletCall ; opcode $53
    dw BranchFlagClr ; opcode $54
    dw BranchRoomNot ; opcode $55
    dw BranchPackedNot ; opcode $56
    dw BlackjackCall ; opcode $57
    dw Trains2To5Call ; opcode $58
    dw Trains6To9Call ; opcode $59
    ; Pointer to RoomCueCall; split bytes retain the original interior label.
    db LOW(RoomCueCall) ; opcode $5a
Jump_000_3bc4:
    db HIGH(RoomCueCall)
    dw BranchNoAttr2 ; opcode $5b
    dw TestC2Quarters ; opcode $5c
    dw DecC2Quarter ; opcode $5d
    dw TrainFareCall ; opcode $5e
    dw BranchNoTrainPass ; opcode $5f
    dw LeaveTrain ; opcode $60
    dw ClearTrainLinks ; opcode $61
    dw ShowCarFare ; opcode $62
    dw TrainRoomEffect ; opcode $63
    dw SetTrainPass ; opcode $64
    dw ScriptPutItem ; opcode $65; 1 placement-mode byte
    dw ScriptC2Effect ; opcode $66
    ; Pointer to SpendCashOne; split bytes retain the original interior label.
    db LOW(SpendCashOne) ; opcode $67
jr_000_3bde:
    db HIGH(SpendCashOne)
    dw SpendCashCost ; opcode $68
    dw BuyChipsCall ; opcode $69
    dw SellChipsCall ; opcode $6a
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
    ; Pointer to RefreshItemList; split bytes retain the original interior label.
    db LOW(RefreshItemList) ; opcode $78
Jump_000_3c00:
    db HIGH(RefreshItemList)
    dw BranchNoFunds ; opcode $79
    dw BlinkObjTwice ; opcode $7a
    dw C2ChoiceCall ; opcode $7b
    dw CallBankScript ; opcode $7c
    dw JumpBankScript ; opcode $7d
    dw ScriptWait60 ; opcode $7e
    dw ResetItemSlots ; opcode $7f
    dw SaveStateRet ; opcode $80
