#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Remove window menu popup when alt released
~LAlt Up:: return

; Apply when detect window with title begins with Adobe
; Uncomment (delete ;) only for one option
; Option 1: apply remap even if window is not focused
;#IfWinExist Adobe
; Option 2: apply remap only if window is focused
#IfWinActive Adobe

; when ctrl+wheel detected, send alt+wheel
^WheelUp::!WheelUp
^WheelDown::!WheelDown

; when alt+wheel detected, send ctrl+wheel
; it do not works though (bacause Adobe handles alt key?)
!WheelUp::^WheelUp
!WheelDown::^WheelDown

; See todo in readme. You can help.

