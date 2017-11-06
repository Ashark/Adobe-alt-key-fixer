#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

I_Icon = img\if_arrow-down.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%

; When wheelup or wheeldown detected, we want to determine
; if window under mouse belongs to Adobe's application. All adobe's windows'
; Controls (including unattached panels from main window) are described as 
; "DroverLord - Window Class*", where "*" is some number.
; If wheel detected, we will modify it only for adobe's apps.
; In Premiere Elements there are several sub-windows classes.
; Preview one is "DroverLord - Window Class*", where "*" is some number.
; But timeline is "UIF_WindowClass*", where "*" is some number.

; For wheeldown
WheelDown::
MouseGetPos, , , id, control, 1 ; seems that 1 (simpler method) is ok


; In Premiere Elements there are several sub-windows classes.
; Preview one is "DroverLord - Window Class*", where "*" is some number.
; But timeline is "UIF_WindowClass*", where "*" is some number.

; IfInString, control, DroverLord - Window Class
IfInString, control, UIF_WindowClass
{
;ToolTip, This was IN Adobe
  send, {WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}{WheelRight}
} 
else 
{
;ToolTip, This was NOT in Adobe
 send, {WheelDown}
}
