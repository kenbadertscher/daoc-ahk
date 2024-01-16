#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Armsman Spec information:		  
; Master Level:					Battlemaster
; CL Abilities:					The best arms ever
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to Slam
	Send, {,}		; 1h Weapon
	Send, {f1}		; Slam
return


F14::				; Press Mouse Button 2 to Shield Swipe
	Send, {,}		; 1h Weapon
	Send, {f2}		; Shield Swipe
return


F15::				; Press Mouse Button 3 to Numb
	Send, {,}		; 1h Weapon
	Send, {f3}		; Numb
return


F16::				; Press Mouse Button 4 to 2h and Side Snare
	Send, {.}		; 2h Weapon
	Send, {k}		; Midsummer's ABS debuff
	Send, {f4}		; Defender's Aegis (Side Snare Followup)
	Send, {f5}		; Poleaxe (Side Snare)
	Send, {f4}		; Defender's Aegis (Side Snare Followup)
	Send, {f6}		; Phalanx (Rear Snare)
return


F17::				; Press Mouse Button 5 to Essence Flames
	Send, {j}		; Faultfinder	
	Send, {o}		; Essence Sear
	Send, {i}		; Essence Flames
return


F18::				; Press Mouse Button 6 for Buff Shear
	Send, {,}		; 1h Weapon
	Send, {[}		; Essence Shatter
	Send, {p}		; Essence Dampen
	Send, {[}		; Essence Shatter
return


F19::				; Press Mouse Button 7 to Assist and Snare
	Send, {-}		; Assist
	Send, {e}		; Stick
	Send, {.}		; 2h Weapon
	Send, {f4}		; Defender's Aegis (Side Snare Followup)
	Send, {f5}		; Poleaxe (Side Snare)
	Send, {f4}		; Defender's Aegis (Side Snare Followup)
	Send, {f6}		; Phalanx (Rear Snare)
return


F20::				; Unset
return


F21::				; Unset
return


F22::				; Press Mouse Button 10 to Bolster
	Send, {n}		; Bolstering Roar
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Bodyguard
	Send, {=}		; Bodyguard
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above