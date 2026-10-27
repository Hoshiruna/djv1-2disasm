; Original zero-based UI resource index.
UiMapRefs:
    dw UiMapCopyrightNotice
    dw UiMapTitle
    dw UiMapSaveSelection
    dw UiMapGameHud
    dw UiMapDeveloperLogo
    dw UiMapBlackjackTable
    dw UiMapBlankTextPanel
    ; Pointer to UiMap7; split bytes retain the interior label.
    db LOW(UiMapPublisherLogo)
Call_009_400f:
    db HIGH(UiMapPublisherLogo)
