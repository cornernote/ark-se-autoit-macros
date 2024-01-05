; Description
; blueprint items using the Blueprint Station
;
; Instructions
; - open the Blueprint Station
; - sort by weight so the created blueprints are at the bottom
; - press CTRL+SHIFT+C to toggle the clicker
; - press CTRL+SHIFT+X to exit

HotKeySet("^X" , "quit")
HotKeySet("^C" , "toggle")

Dim $click = False

Func quit()
    Exit
EndFunc

Func toggle()
   If $click Then
      $click = False
   Else
      $click = True
   EndIf
EndFunc

While True
   If $click Then
	  MouseClick("left", 1290, 280, 1, 10)
	  Sleep(2)
	  MouseClick("left", 1000, 615, 1, 0)
 	  Sleep(2)
   Else
      Sleep(100)
   EndIf
 WEnd