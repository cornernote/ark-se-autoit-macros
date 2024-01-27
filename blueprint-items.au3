; Description
; blueprint items using the Blueprint Station
;
; Instructions
;
; - open the Blueprint Station
; - sort by weight asc so the created blueprints are at the bottom
; - press CTRL+SHIFT+B to toggle the blueprint clicker
;
; - open the Crafting Station
; - sort by weight desc so the created blueprints are at the topaaa
; - press CTRL+SHIFT+C to toggle the "a" crafter
;
; - press CTRL+SHIFT+X to exit

HotKeySet("^X" , "quit")
HotKeySet("^B" , "toggleBlueprint")
HotKeySet("^C" , "toggleCraft")

Dim $blueprint = False
Dim $craft = False

Func quit()
    Exit
EndFunc

Func toggleBlueprint()
   If $blueprint Then
      $blueprint = False
   Else
      $blueprint = True
   EndIf
EndFunc

Func toggleCraft()
   If $craft Then
      $craft = False
   Else
      $craft = True
   EndIf
EndFunc

While True
   If $blueprint Then
	  ;MouseClick("left", 1290, 280, 1, 10)
	  MouseClick("left", 1400, 280, 1, 10)
	  Sleep(2)
	  MouseClick("left", 1000, 615, 1, 0)
 	  Sleep(2)
   ElseIf $craft Then
	  Send("e")
      Sleep(100)
   Else
      Sleep(100)
   EndIf
 WEnd