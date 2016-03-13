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
+9::)
+0::return
+-::=
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

;Multimedia keys
ScrollLock::Volume_Down
Pause::Volume_Up

;Razer Mouse
XButton1::^w

XButton2::
	send, {LCtrl down}
	send, {Tab down}
	send, {Tab up}
	send, {LCtrl up}
return