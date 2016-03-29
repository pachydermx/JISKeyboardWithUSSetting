#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;row 1
`::^j
+2::"
+6::&
+7::'
+8::(
+9::SendInput, )
+0::return
+-::SendInput, =
=::^
+=::`

;row 2
[::@
+{::`
]::[
+]::{

;row 3
+;::+
':::
+"::*
\::]
+\::}

;language switcher
RAlt::
	send, {LAlt down}
	send, {LShift down}
	send, {LShift up}
	send, {LAlt up}
Return

;to enable script below, set "change language bar hot keys" in control panel-> clock,language,and region-> language-> advanced settings to this
; english: left alt + shift + 2
; japanese: left alt + shift + 3
; chinese: left alt + shift + 1
;switch to english
SC07B::
	send, {LAlt down}
	send, {LShift down}
	send, {2 down}
	send, {2 up}
	send, {LShift up}
	send, {LAlt up}
Return
;switch to japanese
SC079::
	send, {LAlt down}
	send, {LShift down}
	send, {3 down}
	send, {3 up}
	send, {LShift up}
	send, {LAlt up}
Return
;switch to chinese
SC070::
	send, {LAlt down}
	send, {LShift down}
	send, {1 down}
	send, {1 up}
	send, {LShift up}
	send, {LAlt up}
Return

;Japanese Key
SC073::_
+SC073::\
SC07D::\

;Multimedia keys
ScrollLock::
	SendInput, {Volume_Down 5}
return
Pause::
	SendInput, {Volume_Up 5}
return

;Razer Mouse
XButton2::^w

XButton1::
	send, {LCtrl down}
	send, {Tab down}
	send, {Tab up}
	send, {LCtrl up}
return