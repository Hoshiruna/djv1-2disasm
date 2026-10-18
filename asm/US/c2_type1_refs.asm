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
    dw LookC2Dresser
    dw OpenC2Container
    dw RejectC2Container
    dw CloseC2Container

C2Act1_01:
    dw LookNightstand1
    dw OpenC2Container
    dw RejectC2Container
    dw CloseC2Container

C2Act1_02:
    dw LookC2Mailbox
    dw OpenC2Mailbox
    dw RejectC2Container
    dw CloseC2Mailbox

C2Act1_03:
    dw LookDiarySlot
    dw OpenDiarySlot
    dw RejectC2Container
    dw CloseC2Container

C2Act1_04:
    dw LookEmptySlot
    dw OpenEmptySlot
    dw RejectC2Container
    dw CloseC2Container

C2Act1_05:
    dw LookSiegelDesk
    dw OpenC2Container
    dw RejectC2Container
    dw CloseC2Container

C2Act1_06:
    dw LookSiegelSafe
    dw OpenSiegelSafe
    dw RejectC2Container
    dw CloseSiegelSafe

C2Act1_07:
    dw LookJoePhone
    dw OpenJoePhone
    dw RejectC2Container
    dw CloseC2Container

C2Act1_08:
    dw LookNightstand2
    dw OpenC2Container
    dw RejectC2Container
    dw CloseC2Container

C2Act1_09:
    dw LookC2Wardrobe
    dw OpenC2Wardrobe
    dw RejectC2Container
    dw WardrobeDropReply
    dw WardrobeCantDo
    dw CloseC2Wardrobe
    dw BreakWardMirror
    dw WardrobeNoAnswer
    dw WardrobeQuestion

C2Act1_0A:
    dw LookMahogDesk
    dw OpenC2Container
    dw RejectC2Container
    dw CloseC2Container

C2Act1_0B:
    dw LookSolidDesk
    dw OpenC2Container
    dw RejectC2Container
    dw CloseC2Container

C2Act1_0C:
    dw LookSecretDesk
    dw OpenSecretDesk
    dw RejectC2Container
    dw CloseSecretDesk
