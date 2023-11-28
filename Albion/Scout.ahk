#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Scout Spec information:  	50 Archery, 42 Shield, 37 Stealth, 18 Thrust
; Master Level:  			Sojourner
; CL Abilities:  	
; Realm Abilities: 	


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Bola Shot (Root)
	Send, {Up}		; Equip Bow
	Send, {F5}		; Bola Shot
return


F14::				; Press Mouse Button 2 for Patella Shot (Snare)
	Send, {Up}		; Equip Bow
	Send, {F6}		; Patella Shot
return


F15::				; Press Mouse Button 3 for Long Shot		
	Send, {Up}		; Equip Bow
	Send, {F4}		; Long Shot
return


F16::				; Press Mouse Button 4 for Crit Shot 
	Send, {Up}		; Equip Bow
	Send, {F1}		; Critical Shot
	Send, {F3}		; Standard Shot
return


F17::				; Press Mouse Button 5 for Power Shot
	Send, {Up}		; Equip Bow
	Send, {F2}		; Power Shot
	Send, {F3}		; Standard Shot
return


F18::				; Press Mouse Button 6 for Point Blank Shot
	Send, {Up}		; Equip Bow
	Send, {F7}		; Point Blank Shot
return


F19::				; Press Mouse Button 7 for Mangle / Slam 
	Send, {Down}
	Send, {F8}
		Sleep, 10
	Send, {F9}
return


F20::				; Press Mouse Button 8 for Block Style & Anytime
	Send, {Down}
	Send, {F10}
		Sleep, 10
	Send, {o}
		Sleep, 10
	Send, {i}
return


F21::				; Press Mouse Button 9 for Evade Style & Anytime
	Send, {Down}
	Send, {[}
		Sleep, 10
	Send, {p}
		Sleep, 10
	Send, {o}
		Sleep, 10
	Send, {i}
return


F22::				; Press Mouse Button 10 for Dismount and Stealth
	Send, {u}		; Mount
		Sleep, 5
	Send, {.}		; Stealth
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above