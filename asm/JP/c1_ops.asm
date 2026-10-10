
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
    dw SetSelStateView ; opcode $1a
    dw ClearSelStateView ; opcode $1b
    dw JumpScript ; opcode $1c
    dw AddSelList ; opcode $1d
    dw ScriptName0 ; opcode $1e
    dw ScriptName1 ; opcode $1f
    dw GetItem2First ; opcode $20
    dw SetItem2First ; opcode $21
    dw ClrItem2First ; opcode $22
    dw TestAttr1 ; opcode $23
    dw SetAttr1 ; opcode $24
    dw ClearAttr1 ; opcode $25
    dw KeepSelChange ; opcode $26
    dw RefreshObjs ; opcode $27
    dw PickAltTarget ; opcode $28
    dw MatchItemScript ; opcode $29
    dw ScriptRet ; opcode $2a
    dw TestProp1Arg ; opcode $2b
    ; Pointer to ScriptSetProp1; split bytes retain the original interior label.
    db $78 ; opcode $2c
jr_006_40a4:
    db $35
    dw ScriptClrProp1 ; opcode $2d
    dw ScriptGetState ; opcode $2e
    dw ScriptSetState ; opcode $2f
    dw ScriptClrState ; opcode $30
    dw CheckAltRoomObj ; opcode $31
    dw ScriptPutItem ; opcode $32
    dw ScriptSetStateView ; opcode $33
    dw ScriptClrStateView ; opcode $34
    dw ScriptSetRoom ; opcode $35
    dw ScriptSetStateView ; opcode $36
    dw ClearSelStateView ; opcode $37
    dw ScriptName1 ; opcode $38
    dw AddListCountArg ; opcode $39
    dw PickBullet1 ; opcode $3a
    dw PickBullet2 ; opcode $3b
jr_006_40c3:
    dw SpendListCount ; opcode $3c
    dw UseBullet1 ; opcode $3d
    dw UseBullet2 ; opcode $3e
    dw ScriptHoldText ; opcode $3f
    dw UseListCount ; opcode $40
    dw PickListRoom ; opcode $41
    dw AddQuickArg ; opcode $42
    dw SetRoomArg3 ; opcode $43
    dw RestoreTextLists ; opcode $44
    dw ResumeTextUI ; opcode $45
    dw ScriptEffect ; opcode $46
    dw RemoveChange ; opcode $47
    dw ExitActionFlag ; opcode $48
    dw DropSelList ; opcode $49
    dw TestListCount ; opcode $4a
    dw TestHeldArg ; opcode $4b
    dw HoldItem ; opcode $4c
    dw ClearHeldItem ; opcode $4d
    dw IncC1Count0 ; opcode $4e
    dw DecC1Count0 ; opcode $4f
    dw IncC1Count2 ; opcode $50
    dw DecC1Count2 ; opcode $51
    dw ReadItemArg ; opcode $52
    dw SetItem2ArgA ; opcode $53
    db $d7 ; opcode $54
jr_006_40f4:
    db $36
    dw DropListArg ; opcode $55
    dw AddBullet1Arg ; opcode $56
    dw AddBullet2 ; opcode $57
    dw IncC1Count1 ; opcode $58
    dw DecC1Count1 ; opcode $59
    dw FinishEffect ; opcode $5a
    dw $29f8 ; opcode $5b
    dw ScriptFirstItem ; opcode $5c
    dw TestProp4 ; opcode $5d
    dw $3099 ; opcode $5e
    dw ScriptPlayAudio ; opcode $5f
    dw SwapOpSlots ; opcode $60
    ; Pointer to ReturnHeldItem; split bytes retain the original interior label.
    db $f4 ; opcode $61
jr_006_410e:
    db $2c
    dw AddCountFindArg ; opcode $62
    dw ClearC1Count ; opcode $63
    dw CheckListFull ; opcode $64
    dw CallScript ; opcode $65
    dw ReturnScript ; opcode $66
    dw SpendListTwo ; opcode $67
    dw ScriptWait60 ; opcode $68
    dw ScriptRoomDraw ; opcode $69
    dw PlayPickEffect ; opcode $6a
    dw ScriptAltItem ; opcode $6b
    dw ClearItemObj ; opcode $6c
