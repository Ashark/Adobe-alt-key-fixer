#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

I_Icon = img\adobe-alt.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%

; Runs should be at the beginning of the script.
Run, %A_AHKPath% "%A_ScriptDir%\ctrl_wheel-up.ahk"
Run, %A_AHKPath% "%A_ScriptDir%\ctrl_wheel-down.ahk"

; Remove window menu popup when alt released
~LAlt Up:: return

; For some reason, script do not works if I place
; both ctrl+wheelup and ctrl+wheeldown keystrokes
; in one file. So, I made two separated files,
; which are called from this one.
; If you can help me solve this, please send your
; pull request to this repository.


; Somebody may want to do symmetric remap to be able to scroll
; tracks up and down (as usually available with ctrl+wheel).
; So when alt+wheel detected, we need to send ctrl+wheel.
; Here are simple instructions to do that:
;;  !WheelUp::^WheelUp
;;  !WheelDown::^WheelDown
; But it do not works though (bacause Adobe handles alt key?)
; See todo in readme. You can help.

