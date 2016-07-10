#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;isModifiedKey
orig = 0
isModifiedKey := 0
isTildeDown := 0
isQuoteDown := 0
is6Down := 0
is7Down := 0
is8Down := 0
is9Down := 0

;row 1
`::^j
+2::"

;Shift + 6 = &
$^::
	if (isTildeDown = 1){
		SendRaw, ^
	} else {
		is6Down := 1
		SendRaw, &
		is6Down := 0
	}
return
	
;Shift + 7 = '
$&::
	if (is6Down = 1){
		SendRaw, &
	} else {
		is7Down := 1
		SendRaw, '
		is7Down := 0
	}
return

;Shift + 8 = (
$*::
	if (isQuoteDown = 1){
		SendRaw, *
	} else {
		is8Down := 1
		SendInput, {(}
		is8Down := 0
	}
return

;Shift + 9 = )
$(::
	if (is8Down = 1){
		SendRaw, *
	} else {
		is9Down := 1
		SendInput, {)}
		is9Down := 0
	}
return

;Shift + 0 = nothing
$)::
	if (is9Down = 1){
		SendRaw, )
	} else {
		return
	}
return

$+-::
	if (orig == 0){
		Send, {=}
	} else {
		Send, {_}
	}
return
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
"::*
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
SC073::
	orig = 1
	SendInput {_}
	orig = 0
return

+SC073::\
SC07D::\

;Change IME
LWin & Space::
	SendInput, {LAlt down}
	SendInput, {LShift down}
	SendInput, {LShift up}
	SendInput, {LAlt up}
return

;Multimedia keys
ScrollLock::
	SendInput, {Volume_Down 5}
return
Pause::
	SendInput, {Volume_Up 5}
return

;Razer Mouse
F14::^w

F13::
	send, {LCtrl down}
	send, {Tab down}
	send, {Tab up}
	send, {LCtrl up}
return