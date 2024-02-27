; Description
; transfer items
;
; Instructions
;
; - press CTRL+SHIFT+T to toggle the "t" transfer
;
; - press CTRL+SHIFT+X to exit

HotKeySet("^X" , "quit")
HotKeySet("^T" , "toggleTransfer")

Dim $transfer = False

Func quit()
    Exit
EndFunc

Func toggleTransfer()
   If $transfer Then
      $transfer = False
   Else
      $transfer = True
   EndIf
EndFunc

While True
   If $transfer Then
	  Send("t")
   EndIf
   Sleep(100)
WEnd
