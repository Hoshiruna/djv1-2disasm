; Type 5 has 78 item rows, each containing 4 script pointers.

C1Type5Refs:
    dw C1Act5_00
    dw C1Act5_01
    dw C1Act5_02
    dw C1Act5_03
    dw C1Act5_04
    dw C1Act5_05
    dw C1Act5_06
    dw C1Act5_07
    dw C1Act5_08
    dw C1Act5_09
    dw C1Act5_0A
    dw C1Act5_0B
    dw C1Act5_0C
    dw C1Act5_0D
    dw C1Act5_0E
    dw C1Act5_0F
    dw C1Act5_10
    dw C1Act5_11
    dw C1Act5_12
    dw C1Act5_13
    dw C1Act5_14
    dw C1Act5_15
    dw C1Act5_16
    dw C1Act5_17
    dw C1Act5_18
    dw C1Act5_19
    dw C1Act5_1A
    dw C1Act5_1B
    dw C1Act5_1C
    dw C1Act5_1D
    dw C1Act5_1E
    dw C1Act5_1F
    dw C1Act5_20
    dw C1Act5_21
    dw C1Act5_22
    dw C1Act5_23
    dw C1Act5_24
    dw C1Act5_25
jr_006_7037:
    dw C1Act5_26
    dw C1Act5_27
    dw C1Act5_28
    dw C1Act5_29
    dw C1Act5_2A
    dw C1Act5_2B
    dw C1Act5_2C
    dw C1Act5_2D
    dw C1Act5_2E
    dw C1Act5_2F
    dw C1Act5_30
    dw C1Act5_31
    dw C1Act5_32
    ; Pointer to C1Act5_33; split bytes retain the interior label.
    db $1f
jr_006_7052:
    db $72
    dw C1Act5_34
    dw C1Act5_35
    dw C1Act5_36
    dw C1Act5_37
    dw C1Act5_38
    dw C1Act5_39
    dw C1Act5_3A
    dw C1Act5_3B
    dw C1Act5_3C
    dw C1Act5_3D
    dw C1Act5_3E
    dw C1Act5_3F
    dw C1Act5_40
    dw C1Act5_41
    dw C1Act5_42
    dw C1Act5_43
    dw C1Act5_44
    dw C1Act5_45
    dw C1Act5_46
    dw C1Act5_47
    dw C1Act5_48
    dw C1Act5_49
    dw C1Act5_4A
    dw C1Act5_4B
    dw C1Act5_4C
    dw C1Act5_4D

C1Act5_00:
    dw LookC1Door00
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1Door00

C1Act5_01:
    dw LookC1Door01
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1Door01

C1Act5_02:
    dw LookC1Door02
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1Door02

C1Act5_03:
    dw LookC1Door03
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1Door03

C1Act5_04:
    dw LookC1Door04
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1Door04

C1Act5_05:
    dw LookC1CellarDoor
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1CellarDoor

C1Act5_06:
    dw LookC1FrontDoor
    dw OpenC1Door06
    dw CloseC1Door
    dw MoveC1FrontDoor

C1Act5_07:
    dw LookC1Stairs
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1Stairs

C1Act5_08:
    dw LookC1RackPassage
    dw OpenC1RackPassage
    dw CloseC1RackPassage
    dw MoveC1RackPassage

C1Act5_09:
    dw LookC1CasinoDoor
    dw OpenC1OneWayDoor
    dw CloseC1OneWayDoor
    dw MoveC1CasinoDoor

C1Act5_0A:
    dw LookC1SewerLadder
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerLadder

C1Act5_0B:
    dw C1PassageEmptyScript
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1CasinoPassage

C1Act5_0C:
    dw LookC1LiftDoor
    dw OpenC1SmallLiftDoor
    dw CloseC1LiftDoor
    dw MoveC1LiftDoor0C

C1Act5_0D:
    dw MoveC1OfficePassage
    dw MoveC1OfficePassage
    dw MoveC1OfficePassage
    dw MoveC1OfficePassage

C1Act5_0E:
    dw LookC1LiftDoor
    dw OpenC1SmallLiftDoor
    dw CloseC1LiftDoor
    dw MoveC1OfficePassage

C1Act5_0F:
    dw LookC1LiftDoor
    dw OpenC1SmallLiftDoor
    dw CloseC1LiftDoor
    dw MoveC1LiftDoor0F

C1Act5_10:
    dw LookC1Window10
    dw OpenC1PassageWindow
    dw CloseC1PassageWindow
    dw MoveC1Window10

C1Act5_11:
    dw C1FireEscapeEmptyView
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
jr_006_7115:
    dw MoveC1FireEscape11

C1Act5_12:
    dw LookC1Window12
    dw OpenC1PassageWindow
    dw CloseC1PassageWindow
    dw MoveC1Window12

C1Act5_13:
    dw LookC1FireEscape13
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1FireEscape13

C1Act5_14:
    dw LookC1Door14
    dw OpenC1Door14
    dw CloseC1Door
    dw MoveC1Door14

C1Act5_15:
    dw LookC1Door15
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1Door15

C1Act5_16:
    dw LookC1AlleyPassage16
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1AlleyPassage16

C1Act5_17:
    dw C1NewsstandEmptyView
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1NewsstandPassage

C1Act5_18:
    dw LookC1Manhole18
    dw OpenC1Manhole
    dw CloseC1Manhole
    dw MoveC1Manhole18

C1Act5_19:
    dw C1SewerEntryEnd
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1PolicePassage

C1Act5_1A:
    dw C1PoliceEntryEnd
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1CarRearPassage

C1Act5_1B:
    dw LookC1CarDoor1B
    dw OpenC1Door1B
    dw CloseC1Door
    dw MoveC1CarDoor1B

C1Act5_1C:
    dw C1CarInteriorEntryEnd
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1GunShopStreet

C1Act5_1D:
    dw C1GunShopStreetEnd
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1PeoriaPassage1D

C1Act5_1E:
    dw LookC1GunShopDoor
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1GunShopDoor

C1Act5_1F:
    dw C1GunShopEntryEnd
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1PeoriaPassage1F

C1Act5_20:
    dw LookC1PoliceDoor
    dw EnterC1PoliceStation
    dw CloseC1Door
    dw EnterC1PoliceStation

C1Act5_21:
    dw C1PoliceDoorViewEnd
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1ConstructionPit

C1Act5_22:
    dw LookC1Manhole22
    dw OpenC1Manhole
    dw CloseC1Manhole
    dw MoveC1Manhole22

C1Act5_23:
    dw LookC1BlueCab26
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1BlueCab26

C1Act5_24:
    dw LookC1BlueCab42
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1BlueCab42

C1Act5_25:
    dw LookC1BlueCab44
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1BlueCab44

C1Act5_26:
    dw LookC1BlueCab46
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1BlueCab46

C1Act5_27:
    dw LookC1BlueCab48
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1BlueCab48

C1Act5_28:
    dw LookC1YellowCab27
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1YellowCab27

C1Act5_29:
    dw LookC1YellowCab43
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1YellowCab43

C1Act5_2A:
    dw LookC1YellowCab45
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1YellowCab45

C1Act5_2B:
    dw LookC1YellowCab47
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1YellowCab47

C1Act5_2C:
    dw LookC1YellowCab49
    dw C1DoorAlreadyOpen
    dw CloseC1LiftDoor
    dw MoveC1YellowCab49

C1Act5_2D:
    dw LookC1StanfordDoor
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1StanfordDoor

C1Act5_2E:
    dw LookC1PrivateLift
    dw LookC1PrivateLift
    dw LookC1PrivateLift
    dw LookC1PrivateLift

C1Act5_2F:
    dw LookC1PrivateLift
    dw OpenC1SmallLiftDoor
    dw CloseC1LiftDoor
    dw MoveC1PrivateLift2F

C1Act5_30:
    dw LookC1PrivateLift30
    dw OpenC1SmallLiftDoor
    dw CloseC1LiftDoor
    dw MoveC1PrivateLift30

C1Act5_31:
    dw LookC1BungalowDoor
    dw OpenC1Door31
    dw CloseC1Door
    dw MoveC1BungalowDoor

C1Act5_32:
    dw LookC1OfficeDoor32
    dw LookC1OfficeDoor32
    dw LookC1OfficeDoor32
    dw LookC1OfficeDoor32

C1Act5_33:
    dw LookC1OfficeDoor32
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1OfficeDoor32

C1Act5_34:
    dw C1OfficeStairEmptyView
    dw C1OfficeStairEmptyView
    dw C1OfficeStairEmptyView
    dw C1OfficeStairEmptyView

C1Act5_35:
    dw LookC1OfficeStairs
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1OfficeStairs

C1Act5_36:
    dw LookC1DoctorDoor
    dw OpenC1Door36
    dw CloseC1Door
    dw MoveC1DoctorDoor

C1Act5_37:
    dw LookC1OfficeHall37
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1OfficeHall37

C1Act5_38:
    dw LookC1ShadowDoor
    dw OpenC1ShadowDoor
    dw CloseC1Door
    dw MoveC1ShadowDoor

C1Act5_39:
    dw LookC1EstatePassage39
    dw C1LiftDoorWontOpen
    dw CloseC1LiftDoor
    dw MoveC1EstatePassage39

C1Act5_3A:
    dw C1EstateInnerEmptyView
    dw C1EstateInnerEmptyView
    dw C1EstateInnerEmptyView
    dw C1EstateInnerEmptyView

C1Act5_3B:
    dw C1EstateInnerEmptyView
    dw C1EstateInnerEmptyView
    dw C1EstateInnerEmptyView
    dw C1EstateInnerEmptyView

C1Act5_3C:
    dw LookC1KitchenDoor
    dw OpenC1Door3C
    dw CloseC1Door
    dw MoveC1KitchenDoor

C1Act5_3D:
    dw LookC1EstateStairs
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1EstateStairs

C1Act5_3E:
    dw LookC1LiftDoor
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1MasterBedroom

C1Act5_3F:
    dw LookC1LiftDoor
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1GuestBedroom

C1Act5_40:
    dw LookC1LiftDoor
    dw OpenC1Door
    dw CloseC1Door
    dw MoveC1BedroomLink

C1Act5_41:
    dw LookC1SewerLadder41
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerLadder41

C1Act5_42:
    dw LookC1SewerLadder42
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerLadder42

C1Act5_43:
    dw LookC1SewerTunnel43
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerTunnel43

C1Act5_44:
    dw LookC1SewerTunnel44
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerTunnel44

C1Act5_45:
    dw LookC1SewerTunnel45
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerTunnel45

C1Act5_46:
    dw LookC1SewerTunnel46
    dw C1PassageActionRefusal
    dw C1PassageActionRefusal
    dw MoveC1SewerTunnel46

C1Act5_47:
    dw LookC1TrunkDoor
    dw OpenC1TrunkDoor
    dw CloseC1Door
    dw C1PassageActionRefusal

C1Act5_48:
    dw C1Passage48Empty
    dw C1Passage48Empty
    dw C1Passage48Empty
jr_006_72cd:
    dw C1Passage48Empty

C1Act5_49:
    dw LookC1MansionFrontDoor
    dw OpenC1MansionFrontDoor
jr_006_72d3:
    dw CloseC1MansionFrontDoor
    dw MoveC1MansionFrontDoor

C1Act5_4A:
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty

C1Act5_4B:
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty

C1Act5_4C:
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty

C1Act5_4D:
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
    dw C1TrailingPassageEmpty
