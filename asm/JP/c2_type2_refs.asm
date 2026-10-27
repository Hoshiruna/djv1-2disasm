; Type 2 action rows retain their original pointer counts.

C2Type2Refs:
    dw C2Act2_00
    dw C2Act2_01
    dw C2Act2_02
    dw C2Act2_03

C2Act2_00:
    dw LookC2Washer ; Selected action SelActionLook (class $02)
    dw OpenC2Washer ; Selected action SelActionOpen (class $02)
    dw UseC2Washer ; Selected action SelActionUse (class $02)
    dw CloseC2Washer ; Selected action SelActionClose (class $02)

C2Act2_01:
    dw LookWickerBin ; Selected action SelActionLook (class $02)
    dw OpenC2Group ; Selected action SelActionOpen (class $02)
    dw RejectC2Group ; Selected action SelActionUse (class $02)
    dw CloseC2Group ; Selected action SelActionClose (class $02)

C2Act2_02:
    dw LookFoodTrash ; Selected action SelActionLook (class $02)
    dw OpenC2Group ; Selected action SelActionOpen (class $02)
    dw RejectC2Group ; Selected action SelActionUse (class $02)
    dw CloseC2Group ; Selected action SelActionClose (class $02)

C2Act2_03:
    dw LookMaloneDesk ; Selected action SelActionLook (class $02)
    dw OpenC2Group ; Selected action SelActionOpen (class $02)
    dw RejectC2Group ; Selected action SelActionUse (class $02)
    dw CloseC2Group ; Selected action SelActionClose (class $02)
