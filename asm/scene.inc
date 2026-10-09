; Scene state shared by the US and JP engines.
DEF wCaseId       EQU $c599 ; 0 = Case I, 1 = Case II.
DEF wSceneId      EQU $c522 ; Visual scene ID; may differ from the room ID.
DEF wRoomId       EQU $c521
DEF wScenePalId   EQU $c641
DEF wSceneVariant EQU $c866 ; Offset within the current room's scene list.
DEF wSceneBlank   EQU $c87d ; Nonzero makes the masked renderer draw blank cells.

; Scratch values used while selecting and staging a scene map.
; These bytes are also reused outside the scene loader.
DEF wMapIndex     EQU $c875
DEF wMapPtr       EQU $c855 ; ROM pointer, then the staged map pointer at $c902.

DEF hBgGfx        EQU $ffa4 ; Requested background graphics ID.
DEF hObjGfx       EQU $ffa5 ; Requested object graphics ID.
DEF hBgLoaded     EQU $ffa6 ; Cached IDs; $ff forces a reload.
DEF hObjLoaded    EQU $ffa7
DEF hVideoFlags   EQU $ff8c ; Bit 0: palettes, bit 3: graphics, bit 6: map queue.

DEF hGfxSrcLo     EQU $ff97
DEF hGfxSrcHi     EQU $ff98
DEF hGfxVramBank  EQU $ff99
DEF hGfxDstLo     EQU $ff9a
DEF hGfxDstHi     EQU $ff9b

; WRAM bank 1: scene palettes are staged before becoming active.
DEF wBgPalNext    EQU $dbc0
DEF wObjPalNext   EQU $dc00
DEF wBgPal        EQU $db40
DEF wObjPal       EQU $db80

; Scene selection and Case II map patches; scratch bytes are reused by other paths.
DEF wRoomDataPtr     EQU $c85e
DEF wStateResult     EQU $c523
DEF wPatchId         EQU $c868
DEF wPatchList       EQU $c869 ; Nine entries; $fe ends the list.
DEF wPatchBase       EQU $c873
DEF wPatchBits       EQU $c874
DEF wPatchDst        EQU $c5c3
DEF wPatchWidth      EQU $c5c5
DEF wPatchHeight     EQU $c5c6
DEF wSceneMap        EQU $c902

; Masked scene drawing and map transfer queue; these scratch bytes have other uses.
DEF wSceneFx         EQU $c640
DEF wDrawSteps       EQU $c5c3
DEF wDrawRow         EQU $c877
DEF wDrawStep        EQU $c878
DEF wDrawMask        EQU $c883
DEF wDrawMaskPtr     EQU $c857
DEF wCellRect        EQU $c19e
DEF wCellTile        EQU $c1a0
DEF wCellAttr        EQU $c1a1
DEF wMapQueue        EQU $c0a0
DEF hMapQueueLen     EQU $ff90
DEF hMapWidth        EQU $ff92
DEF hMapHeight       EQU $ff93
DEF hMapRunLeft      EQU $ff95
