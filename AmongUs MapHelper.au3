HotKeySet("{TAB}", "mapclick")

If Not ProcessExists("Among Us.exe") Then
	MsgBox(0,"Game not runing","Game is not runing. Please, run Amung Us, after run is MapHelper",3)
	Exit(0)
EndIf

while 1
	Sleep (200)
	If Not ProcessExists("Among Us.exe") Then
		TrayTip("Game close","You exit into Among Us, don't forget to run MapHelper at next time", 2000)
		Exit(0)
	EndIf
WEnd

Func mapclick()
	$xBef = MouseGetPos()
	MouseMove(1850,200,0)
	Sleep(50)
	MouseClick("")
	MouseMove($xBef[0], $xBef[1], 0)
EndFunc
