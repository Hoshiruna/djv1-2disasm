; Type 2 has 5 item rows, each containing four script pointers.

C1Type2Refs:
    dw C1Act2_00
    dw C1Act2_01
    dw C1Act2_02
    dw C1Act2_03
    dw C1Act2_04

C1Act2_00:
    dw LookC1Trash1
    dw OpenC1Trash1
    dw CloseC1Trash1
    dw C1TrashPuzzled

C1Act2_01:
    dw LookC1Trash2
    dw OpenC1Trash2
    dw CloseC1Trash2
    dw C1TrashRefuse

C1Act2_02:
    dw LookC1Trash34
    dw OpenC1Trash3
    dw CloseC1Trash3
    dw C1TrashPuzzled

C1Act2_03:
    dw LookC1Trash34
    dw OpenC1Trash4
    dw CloseC1Trash4
    dw C1TrashRefuse

C1Act2_04:
    dw LookC1SewerDrop
    dw C1TrashPuzzled
    dw C1TrashPuzzled
    dw C1TrashPuzzled
