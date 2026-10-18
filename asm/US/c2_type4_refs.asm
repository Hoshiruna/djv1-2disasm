; Type 4 action rows retain their original pointer counts.

C2Type4Refs:
    dw C2Act4_00
    dw C2Act4_01
    dw C2Act4_02
    dw C2Act4_03
    dw C2Act4_04
    dw C2Act4_05
    dw C2Act4_06
    dw C2Act4_07
    dw C2Act4_08
    dw C2Act4_09
    dw C2Act4_0A
    dw C2Act4_0B
    dw C2Act4_0C
    dw C2Act4_0D
    dw C2Act4_0E
    dw C2Act4_0F
    dw C2Act4_10
    dw C2Act4_11
    dw C2Act4_12
    dw C2Act4_13
    dw C2Act4_14
    dw C2Act4_15
    dw C2Act4_16
    dw C2Act4_17

C2Act4_00:
    dw LookC2Trench
    dw OpenC2Pocket
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Trench
    dw CloseC2Pocket

C2Act4_01:
    dw LookC2Pants
    dw OpenC2Pocket
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pants
    dw CloseC2Pocket

C2Act4_02:
    dw LookC2Wallet1
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_03:
    dw ReadC2News1
    dw OpenC2News1
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_04:
    dw LookC2Suitcase
    dw OpenC2Suitcase
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Suitcase
    dw CloseC2Suitcase

C2Act4_05:
    dw LookC2Laundry2
    dw OpenC2Laundry2
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_06:
    dw LookC2Envelope1
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_07:
    dw LookC2Envelope2
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_08:
    dw LookC2Coat
    dw OpenC2Coat
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Coat
    dw CloseC2Pocket

C2Act4_09:
    dw LookC2Gun
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_0A:
    dw LookC2Lamp
    ; Pointer to $686b; split bytes retain the interior label.
    db $6b
jr_007_67bc:
    db $68
    dw UseC2Pack
    dw TakeC2Lamp

C2Act4_0B:
    dw LookC2Drawer
    dw OpenC2Pack
    dw UsePackOnTarget
    ; Pointer to $6ea4; split bytes retain the interior label.
    db $a4
jr_007_67c8:
    db $6e
    dw TakeC2Drawer
    dw CloseC2Pack

C2Act4_0C:
    dw LookC2Box1
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_0D:
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench

C2Act4_0E:
    dw LookMoldyBox
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeMoldyBox
    dw CloseC2Pack

C2Act4_0F:
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench
    dw LookC2Trench

C2Act4_10:
    dw LookC2Vacuum
    dw OpenC2Vacuum
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_11:
    dw LookC2VacBag
    dw OpenC2VacBag
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw NoC2PackEffect

C2Act4_12:
    dw LookC2Envelope3
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_13:
    dw LookC2Box2
    dw OpenC2Box2
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Box2
    dw CloseC2Box2

C2Act4_14:
    dw LookC2Wallet2
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_15:
    dw LookC2SoapBox
    dw OpenC2SoapBox
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2SoapBox
    dw CloseC2Pack

C2Act4_16:
    dw LookC2Box3
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack

C2Act4_17:
    dw LookC2PaperBag
    dw OpenC2Pack
    dw UsePackOnTarget
    dw UseC2Pack
    dw TakeC2Pack
    dw CloseC2Pack
