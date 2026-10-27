; Type 2 has 5 item rows, each containing four script pointers.

C1Type2Refs:
    dw C1Act2_00
    dw C1Act2_01
    dw C1Act2_02
    dw C1Act2_03
    dw C1Act2_04

C1Act2_00:
    dw LookC1Trash1 ; Selected action SelActionLook (class $02)
    dw OpenC1Trash1 ; Selected action SelActionOpen (class $02)
    dw CloseC1Trash1 ; Selected action SelActionClose (class $02)
    dw C1TrashPuzzled ; Selected action SelActionUse (class $02)

C1Act2_01:
    dw LookC1Trash2 ; Selected action SelActionLook (class $02)
    dw OpenC1Trash2 ; Selected action SelActionOpen (class $02)
    dw CloseC1Trash2 ; Selected action SelActionClose (class $02)
    dw C1TrashRefuse ; Selected action SelActionUse (class $02)

C1Act2_02:
    dw LookC1Trash34 ; Selected action SelActionLook (class $02)
    dw OpenC1Trash3 ; Selected action SelActionOpen (class $02)
    dw CloseC1Trash3 ; Selected action SelActionClose (class $02)
    dw C1TrashPuzzled ; Selected action SelActionUse (class $02)

C1Act2_03:
    dw LookC1Trash34 ; Selected action SelActionLook (class $02)
    dw OpenC1Trash4 ; Selected action SelActionOpen (class $02)
    dw CloseC1Trash4 ; Selected action SelActionClose (class $02)
    dw C1TrashRefuse ; Selected action SelActionUse (class $02)

C1Act2_04:
    dw LookC1SewerDrop ; Selected action SelActionLook (class $02)
    dw C1TrashPuzzled ; Selected action SelActionOpen (class $02)
    dw C1TrashPuzzled ; Selected action SelActionClose (class $02)
    dw C1TrashPuzzled ; Selected action SelActionUse (class $02)
