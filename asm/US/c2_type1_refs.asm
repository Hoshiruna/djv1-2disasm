; Type 1 action rows retain their original pointer counts.

C2Type1Refs:
    dw C2Act1_00
    dw C2Act1_01
    dw C2Act1_02
    dw C2Act1_03
    dw C2Act1_04
    dw C2Act1_05
    dw C2Act1_06
    dw C2Act1_07
    dw C2Act1_08
    dw C2Act1_09
    dw C2Act1_0A
    dw C2Act1_0B
    dw C2Act1_0C

C2Act1_00:
    dw LookC2Dresser ; Selected action SelActionLook (class $01)
    dw OpenC2Container ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_01:
    dw LookNightstand1 ; Selected action SelActionLook (class $01)
    dw OpenC2Container ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_02:
    dw LookC2Mailbox ; Selected action SelActionLook (class $01)
    dw OpenC2Mailbox ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Mailbox ; Selected action SelActionClose (class $01)

C2Act1_03:
    dw LookDiarySlot ; Selected action SelActionLook (class $01)
    dw OpenDiarySlot ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_04:
    dw LookEmptySlot ; Selected action SelActionLook (class $01)
    dw OpenEmptySlot ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_05:
    dw LookSiegelDesk ; Selected action SelActionLook (class $01)
    dw OpenC2Container ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_06:
    dw LookSiegelSafe ; Selected action SelActionLook (class $01)
    dw OpenSiegelSafe ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseSiegelSafe ; Selected action SelActionClose (class $01)

C2Act1_07:
    dw LookJoePhone ; Selected action SelActionLook (class $01)
    dw OpenJoePhone ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_08:
    dw LookNightstand2 ; Selected action SelActionLook (class $01)
    dw OpenC2Container ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_09:
    dw LookC2Wardrobe ; Selected action SelActionLook (class $06)
    dw OpenC2Wardrobe ; Selected action SelActionOpen (class $06)
    dw RejectC2Container ; Selected action SelActionUse (class $06)
    dw WardrobeDropReply ; Selected action SelActionPut (class $06)
    dw WardrobeCantDo ; Selected action SelActionTake (class $06)
    dw CloseC2Wardrobe ; Selected action SelActionClose (class $06)
    dw BreakWardMirror ; Selected action SelActionHit (class $06)
    dw WardrobeNoAnswer ; Selected action SelActionTalk (class $06)
    dw WardrobeQuestion ; Selected action SelActionMove (class $06)

C2Act1_0A:
    dw LookMahogDesk ; Selected action SelActionLook (class $01)
    dw OpenC2Container ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_0B:
    dw LookSolidDesk ; Selected action SelActionLook (class $01)
    dw OpenC2Container ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseC2Container ; Selected action SelActionClose (class $01)

C2Act1_0C:
    dw LookSecretDesk ; Selected action SelActionLook (class $01)
    dw OpenSecretDesk ; Selected action SelActionOpen (class $01)
    dw RejectC2Container ; Selected action SelActionUse (class $01)
    dw CloseSecretDesk ; Selected action SelActionClose (class $01)
