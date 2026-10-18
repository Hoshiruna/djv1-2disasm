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
    dw LookC1Siegel
    dw OpenC1Pocket
    dw CloseC1Pocket
    dw C1ContainerPuzzled

C1Act1_01:
    dw LookC1Desk1
    dw OpenC1Desk1
    dw CloseC1Desk1
    dw C1ContainerRefuse

C1Act1_02:
    dw LookC1WallSafe
    dw TryC1WallSafe
    dw CloseC1WallSafe
    dw C1ContainerNoHere

C1Act1_03:
    dw LookC1Desk2
    dw OpenC1Desk2
    dw CloseC1Desk2
    dw C1ContainerRefuse

C1Act1_04:
    dw LookC1Dash
    dw OpenC1Dash
    dw CloseC1Dash
    dw C1ContainerPuzzled

C1Act1_05:
    dw LookC1Desk3
    dw OpenC1Desk3
    dw CloseC1Desk3
    dw C1ContainerRefuse

C1Act1_06:
    dw LookC1LockedCab
    dw TryC1LockedCab
    dw CloseC1Cabinet
    dw C1ContainerNoHere

C1Act1_07:
    dw LookC1Desk4
    dw OpenC1Desk4
    dw CloseC1Desk4
    dw C1ContainerPuzzled

C1Act1_08:
    dw LookC1Cabinet
    dw OpenC1Cabinet
    dw CloseC1Cabinet
    dw C1ContainerRefuse

C1Act1_09:
    dw LookC1Mailbox
    dw OpenC1Mailbox
    dw CloseC1Mailbox
    dw C1ContainerPuzzled

C1Act1_0A:
    dw LookC1Tables
    dw OpenC1Table1
jr_006_4a78:
    dw CloseC1Table1
    dw C1ContainerRefuse

C1Act1_0B:
    dw LookC1Tables
    dw OpenC1Table2
    dw CloseC1Table2
    dw C1ContainerPuzzled

C1Act1_0C:
    dw LookC1Lid
    dw OpenC1Lid
    dw CloseC1Lid
    dw C1ContainerNoHere
