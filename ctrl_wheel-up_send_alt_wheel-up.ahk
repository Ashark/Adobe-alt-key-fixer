#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; When ctrl+wheelup or ctrl+wheeldown detected, we want to determine
; if window under mouse belongs to Adobe's application. All adobe's windows'
; Controls (including unattached panels from main window) are described as 
; "DroverLord - Window Class*", where "*" is some number.
; If ctrl+wheel detected, we will modify it only for adobe's apps.

; For ctrl+wheelup
^WheelUp::
MouseGetPos, , , id, control, 1 ; seems that 1 (simpler method) is ok

IfInString, control, DroverLord - Window Class
{
;ToolTip, This was IN Adobe
 send, !{WheelUp}
} 
else 
{
;ToolTip, This was NOT in Adobe
 send, ^{WheelUp}
}
