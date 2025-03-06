#NoEnv            			; For performance and compatibility with future AutoHotkey releases.
#Warn                 			; Enable warnings to assist with detecting common errors.
; SendMode Event            		; To make this work with DAoC. ("Input" does not seem to work well.)
SetWorkingDir %A_ScriptDir%	    	; Ensures a consistent starting directory.
; SetTitleMatchMode, 2        		; Match parts of the window title.
; #IfWinActive Dark Age of Camelot	; Only let this affect DAoC
#SingleInstance Force			; Skips the dialog box for relaunching the script after an edit

; Reload the script using Ctrl+Alt+R
^!r::Reload

Seconds(x,y) {
  Random, value, %x%, %y%
  Return value
}

; Pickup:   
;   SendInput, {H down}	; Craft the item on slot 22
;   Sleep, % Seconds(40, 80)
;   SendInput, {H up}	; Craft the item on slot 22
;   Sleep, % Seconds(40, 80)
;   SendInput, {G down}	; Craft the item on slot 22
;   Sleep, % Seconds(40, 80)
;   SendInput, {G up}	; Craft the item on slot 22
;   Sleep, % Seconds(40, 80)
; return


e:: 		; Pickup stardust
Loop
  {
    SendInput, {E down}	; Craft the item on slot 22
    Sleep, % Seconds(10,20)
    SendInput, {E up}	; Craft the item on slot 22
    Sleep, % Seconds(12000,20000)
 }
return

F11:: 		; sprint in place
Loop
  {
    SendInput, {f down}	
    Sleep, % Seconds(10,20)
    SendInput, {f up}	; 
    Sleep, % Seconds(10000,20000)
 }
return

F10:: 		; Turbo mode Pickup stardust 
Loop
  {
   SendInput, {H down}	; Craft the item on slot 22
   Sleep, % Seconds(40, 80)
   SendInput, {H up}	; Craft the item on slot 22
   Sleep, % Seconds(40, 80)
   SendInput, {G down}	; Craft the item on slot 22
   Sleep, % Seconds(40, 80)
   SendInput, {G up}	; Craft the item on slot 22
   Sleep, % Seconds(40, 80)
 }
return