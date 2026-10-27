; Type 1 has 13 item rows, each containing four script pointers.

C1Type1Refs:
    dw C1Act1_00
    dw C1Act1_01
    dw C1Act1_02
    dw C1Act1_03
    dw C1Act1_04
    dw C1Act1_05
    dw C1Act1_06
    dw C1Act1_07
    dw C1Act1_08
    dw C1Act1_09
    dw C1Act1_0A
    dw C1Act1_0B
    dw C1Act1_0C

C1Act1_00:
    dw LookC1Siegel ; Selected action SelActionLook (class $01)
    dw OpenC1Pocket ; Selected action SelActionOpen (class $01)
    dw CloseC1Pocket ; Selected action SelActionClose (class $01)
    dw C1ContainerPuzzled ; Selected action SelActionUse (class $01)

C1Act1_01:
    dw LookC1Desk1 ; Selected action SelActionLook (class $01)
    dw OpenC1Desk1 ; Selected action SelActionOpen (class $01)
    dw CloseC1Desk1 ; Selected action SelActionClose (class $01)
    dw C1ContainerRefuse ; Selected action SelActionUse (class $01)

C1Act1_02:
    dw LookC1WallSafe ; Selected action SelActionLook (class $01)
    dw TryC1WallSafe ; Selected action SelActionOpen (class $01)
    dw CloseC1WallSafe ; Selected action SelActionClose (class $01)
    dw C1ContainerNoHere ; Selected action SelActionUse (class $01)

C1Act1_03:
    dw LookC1Desk2 ; Selected action SelActionLook (class $01)
    dw OpenC1Desk2 ; Selected action SelActionOpen (class $01)
    dw CloseC1Desk2 ; Selected action SelActionClose (class $01)
    dw C1ContainerRefuse ; Selected action SelActionUse (class $01)

C1Act1_04:
    dw LookC1Dash ; Selected action SelActionLook (class $01)
    dw OpenC1Dash ; Selected action SelActionOpen (class $01)
    dw CloseC1Dash ; Selected action SelActionClose (class $01)
    dw C1ContainerPuzzled ; Selected action SelActionUse (class $01)

C1Act1_05:
    dw LookC1Desk3 ; Selected action SelActionLook (class $01)
    dw OpenC1Desk3 ; Selected action SelActionOpen (class $01)
    dw CloseC1Desk3 ; Selected action SelActionClose (class $01)
    dw C1ContainerRefuse ; Selected action SelActionUse (class $01)

C1Act1_06:
    dw LookC1LockedCab ; Selected action SelActionLook (class $01)
    dw TryC1LockedCab ; Selected action SelActionOpen (class $01)
    dw CloseC1Cabinet ; Selected action SelActionClose (class $01)
    dw C1ContainerNoHere ; Selected action SelActionUse (class $01)

C1Act1_07:
    dw LookC1Desk4 ; Selected action SelActionLook (class $01)
    dw OpenC1Desk4 ; Selected action SelActionOpen (class $01)
    dw CloseC1Desk4 ; Selected action SelActionClose (class $01)
    dw C1ContainerPuzzled ; Selected action SelActionUse (class $01)

C1Act1_08:
    dw LookC1Cabinet ; Selected action SelActionLook (class $01)
    dw OpenC1Cabinet ; Selected action SelActionOpen (class $01)
    dw CloseC1Cabinet ; Selected action SelActionClose (class $01)
    dw C1ContainerRefuse ; Selected action SelActionUse (class $01)

C1Act1_09:
    dw LookC1Mailbox ; Selected action SelActionLook (class $01)
    dw OpenC1Mailbox ; Selected action SelActionOpen (class $01)
    dw CloseC1Mailbox ; Selected action SelActionClose (class $01)
    dw C1ContainerPuzzled ; Selected action SelActionUse (class $01)

C1Act1_0A:
    dw LookC1Tables ; Selected action SelActionLook (class $01)
    dw OpenC1Table1 ; Selected action SelActionOpen (class $01)
jr_006_4a78:
    dw CloseC1Table1 ; Selected action SelActionClose (class $01)
    dw C1ContainerRefuse ; Selected action SelActionUse (class $01)

C1Act1_0B:
    dw LookC1Tables ; Selected action SelActionLook (class $01)
    dw OpenC1Table2 ; Selected action SelActionOpen (class $01)
    dw CloseC1Table2 ; Selected action SelActionClose (class $01)
    dw C1ContainerPuzzled ; Selected action SelActionUse (class $01)

C1Act1_0C:
    dw LookC1Lid ; Selected action SelActionLook (class $01)
    dw OpenC1Lid ; Selected action SelActionOpen (class $01)
    dw CloseC1Lid ; Selected action SelActionClose (class $01)
    dw C1ContainerNoHere ; Selected action SelActionUse (class $01)
