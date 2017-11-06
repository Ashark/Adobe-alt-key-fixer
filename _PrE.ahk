#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

I_Icon = img\Adobe Premiere Elements.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%

; Runs should be at the beginning of the script.
Run, %A_AHKPath% "%A_ScriptDir%\wheel-down-to-horizontal-wheel-right.ahk"
Run, %A_AHKPath% "%A_ScriptDir%\wheel-up-to-horizontal-wheel-left.ahk"
Run, %A_AHKPath% "%A_ScriptDir%\ctrl_wheel-up_send_plus.ahk"
Run, %A_AHKPath% "%A_ScriptDir%\ctrl_wheel-down_send_minus.ahk"

; Remove window menu popup when alt released
~LAlt Up:: return

