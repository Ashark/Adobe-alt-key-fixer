#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

I_Icon = img\adobe-alt.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%

; Runs should be at the beginning of the script.

; Remove window menu popup when alt released
~LAlt Up:: return
