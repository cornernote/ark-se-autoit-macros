; Description
; auto-upgrade items using the Upgrade Station
;
; Instructions
; - open the Upgrade Station
; - ensure it only has the needed reagent
; - search so that only one item is displayed
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
	  MouseClick("left", 1290, 280, 1)
	  MouseClick("left", 1000, 615, 1)
   EndIf
   Sleep(20)
WEnd