#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag

#ifWinActive ahk_exe dota2.exe

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
