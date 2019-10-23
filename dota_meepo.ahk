#Persistent
#ifWinActive ahk_exe dota2.exe
SetBatchLines, -1
SetKeyDelay, 0

poof() {
	loop, 5 {
	Send, {w down}
	Send, {w up}
	MouseClick, left
	Send, {tab down}
	Send, {tab up}
	}
	Send, {f1 down}
	Send, {f1 up}
}
Return
		
<!w::
	poof()	
return

<!q::
	loop, 5 {
	Send, {q down}
	Send, {q up}
	MouseClick, left
	Send, {tab down}
	Send, {tab up}
	Sleep, 2500
	}
return
	
Numpad7::
	reload
return