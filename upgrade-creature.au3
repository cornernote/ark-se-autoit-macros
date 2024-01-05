; Description
; auto-upgrade creature stats
;
; Instructions
; - open the creature's inventory
; - press CTRL+SHIFT+C to toggle the clicker to run 254 times
; - press CTRL+SHIFT+X to exit

HotKeySet("^X" , "quit")
HotKeySet("^C" , "toggle")

Dim $click = 0

Func quit()
    Exit
EndFunc

Func toggle()
   If $click > 0 Then
      $click = 0
   Else
      $click = 254
   EndIf
EndFunc

While True
   If $click > 0 Then
      $click = $click - 1
	  MouseClick("left")
 	  ;Sleep(20)
   Else
      Sleep(100)
   EndIf
 WEnd