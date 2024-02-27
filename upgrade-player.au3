; Description
; auto-upgrade player stats
;
; Instructions
; - open the player's inventory
; - press CTRL+SHIFT+C to toggle the clicker to run 254 times
; - press CTRL+SHIFT+X to exit

HotKeySet("^X" , "quit")
HotKeySet("^C" , "start")

Dim $weight = 0
Dim $crafting = 0
Dim $health = 0
Dim $melee = 0
Dim $movement = 0
Dim $oxygen = 0
Dim $fortitude = 0

Func quit()
    Exit
EndFunc

Func start()
   ; total = 559
   ;$weight = 36
   ;$crafting = 5
   ;$fortitude = 10
   ;$health = 254
   ;$melee = 0
   ;$movement = 254
   ;$oxygen = 0

   ; total = 559
   $weight = 10
   $crafting = 10
   $fortitude = 10
   $health = 254
   $melee = 21
   $movement = 254
   $oxygen = 0
EndFunc

While True
   If $weight > 0 Then
      $weight = $weight - 1
	  MouseClick("left", 1150, 730)
   ElseIf $crafting > 0 Then
      $crafting = $crafting - 1
	  MouseClick("left", 1150, 860)
   ElseIf $fortitude > 0 Then
      $fortitude = $fortitude - 1
	  MouseClick("left", 1150, 900)
   ElseIf $health > 0 Then
      $health = $health - 1
	  MouseClick("left", 1150, 515)
   ElseIf $melee > 0 Then
      $melee = $melee - 1
	  MouseClick("left", 1150, 775)
   ElseIf $movement > 0 Then
      $movement = $movement - 1
	  MouseClick("left", 1150, 815)
   ElseIf $oxygen > 0 Then
      $oxygen = $oxygen - 1
	  MouseClick("left", 1150, 600)
   EndIf
   Sleep(1000)
WEnd
