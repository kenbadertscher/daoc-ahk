#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Paladin Spec information:		
; Master Level:					Battlemaster
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R



F13::				; Press Mouse Button 1 to Mangle
	Send, {,}		; 1h Weapon
	Send, {f1}		; Mangle (Side Stun)
return


F14::				; Press Mouse Button 2 to Paralyze
	Send, {,}		; 1h Weapon
	Send, {f2}		; Paralyze (Rear Stun)
return


F15::				; Press Mouse Button 3 to Numb
	Send, {,}		; 1h Weapon
	Send, {f3}		; Numb
return

F16::				; Press Mouse Button 4 for Side Snare
	Send, {.}		; 2h Weapon
	Send, {f5}		; Onslaught (Rear Snare)
	Send, {f8}		; Obfuscate (Anytime)
return


F17::				; Press Mouse Button 5 to 2h and Rear Snare
	Send, {.}		; 2h Weapon
	Send, {f4}		; Doubler (Rear Snare)
	Send, {f8}		; Obfuscate (Anytime)
return


F18::				; Press Mouse Button 6 for Buff Shear
	Send, {,}		; 1h Weapon
	Send, {[}		; Essence Shatter
	Send, {p}		; Essence Dampen
	Send, {[}		; Essence Shatter
return


F19::				; Press Mouse Button 7 for Essence Flames
	Send, {,}		; 1h Weapon
	Send, {o}		; Essence Sear
	Send, {i}		; Essence Flames
	Send, {o}		; Essence Sear
return


F20::				; Press Mouse Button 8 to Taunt
	Send, {,}		; 1h Weapon
	Send, {f7}		; Riposte (Block Reactionary Style)
	Send, {f10}		; Infuriate (Insta Taunt)
	Send, {f6}		; Enrage (Anytime Taunt)
return


F21::				; Press Mouse Button 9 to Bodyguard
	Send, {m}		; Bodyguard
return


F22::				; Press Mouse Button 10 to 
	Send, {n}		; 
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above