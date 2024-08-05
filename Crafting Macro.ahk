#NoEnv            			; For performance and compatibility with future AutoHotkey releases.
#Warn                 			; Enable warnings to assist with detecting common errors.
SendMode Event            		; To make this work with DAoC. ("Input" does not seem to work well.)
SetWorkingDir %A_ScriptDir%	    	; Ensures a consistent starting directory.
SetTitleMatchMode, 2        		; Match parts of the window title.
;#IfWinActive Dark Age of Camelot	; Only let this affect DAoC
#SingleInstance Force			; Skips the dialog box for relaunching the script after an edit

; Reload the script using Ctrl+Alt+R
^!r::Reload

F12:: 		; For afk jumping 
Loop
{
Send, {F}	; Craft the item on slot 22
Sleep, 10500	; Sleep for 10.5 seconds
}
return


F11::		; To purchase alchemy mats boxes
Loop,
{
Click 
Sleep, 3500
Send, 1
Sleep, 1000
}
return


F10:: 		; For unboxing Alch components
Loop, 
{
MouseClick, left, 1748, 335		; Pick Up Box in slot #4
Sleep, 200
MouseClick, left, 1748, 320		; Place box in slot #3
Sleep, 200
MouseClick, left, 1775, 350		; Reduce count by 1F 
Sleep, 200
MouseClick, left, 1825, 385		; Accept
Sleep, 200
MouseClick, right, 1748, 335		; Select Box in slot #4
Sleep, 200
Send, {1}				; Use item selected
Sleep, 500
MouseClick, left, 1748, 320		; Pick Up box in slot #3
Sleep, 200
MouseClick, left, 1748, 335		; Place Box in slot #4
Sleep, 200
MouseClick, left, 1775, 365		; Reduce count by 1
Sleep, 200
MouseClick, left, 1825, 400		; Accept
Sleep, 200
MouseClick, right, 1748, 320		; Select box in slot #3
Sleep, 200
Send, {1}				; Use item selected
Sleep, 500
}
return


F9::		; For jumping
Loop,
{
Send, {space}
Sleep, 10000
}
return