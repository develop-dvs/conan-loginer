Opt("WinWaitDelay",100)
Opt("WinTitleMatchMode",4)
Opt("WinDetectHiddenText",1)
Opt("MouseCoordMode",0)

#include <WinAPI.au3>
HotKeySet('{ESC}', '_Exit')

Func _Exit()
    Exit
EndFunc

Func switchOn()
	; Тип сервера
	MouseMove(275,60)
	MouseDown("left")
	MouseUp("left")
	Sleep(1000)
EndFunc

Func switchInternet()
	; Интернет
	MouseMove(275,85)
	MouseDown("left")
	MouseUp("left")
	Sleep(2000)
EndFunc

Func switchOffishal()
	; Официальные
	MouseMove(275,105)
	MouseDown("left")
	MouseUp("left")
	Sleep(2000)
EndFunc

Func table()
	; Строка с сервером
	MouseMove(350,242)
	MouseDown("left")
	MouseUp("left")
	Sleep(2000)

	; Кнопка присоединиться
	MouseMove(1166,1004)
	MouseDown("left")
	MouseUp("left")
	Sleep(2000)

	; Ок - со сдвигом
	Send("{ENTER}")
	Sleep(2000)
EndFunc

WinWaitActive("ConanSandbox (64-bit, PCD3D_SM5)","")
While 1
	switchOn()
	switchInternet()
	table()
	switchOn()
	switchOffishal()
	table()
	Sleep(5000)
WEnd

