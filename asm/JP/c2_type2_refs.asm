; Type 2 action rows retain their original pointer counts.

C2Type2Refs:
    dw C2Act2_00
    dw C2Act2_01
    dw C2Act2_02
    dw C2Act2_03

C2Act2_00:
    dw LookC2Washer
    dw OpenC2Washer
    dw UseC2Washer
    dw CloseC2Washer

C2Act2_01:
    dw LookWickerBin
    dw OpenC2Group
    dw RejectC2Group
    dw CloseC2Group

C2Act2_02:
    dw LookFoodTrash
    dw OpenC2Group
    dw RejectC2Group
    dw CloseC2Group

C2Act2_03:
    dw LookMaloneDesk
    dw OpenC2Group
    dw RejectC2Group
    dw CloseC2Group
