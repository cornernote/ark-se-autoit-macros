HotKeySet("^X" , "close")
HotKeySet("^C" , "startpause")

Dim $click = False

Func close()
    Exit
EndFunc

Func startpause()
   If $click = False Then
      $click = True
   Else
      $click = False
   EndIf
EndFunc

While 1
   If $click = True Then
	  MouseClick("left")
	  Sleep(1000)
   Else
	  Sleep(100)
   EndIf
WEnd