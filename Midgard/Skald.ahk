#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC

; TODO: clean up the names for the abilities on this file

; Spec information:		
; Master Level:					
; CL Abilities:					
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


F16::				; Press Mouse Button 4 for Side Snare
	Send, {f1}		; Demolish (Side Snare Followup - 5 sec stun)
	Send, {f2}		; Frost Hammer (Side Snare - 40% for 19 sec)
	Send, {f1}		; Demolish (Side Snare Followup - 5 sec stun)
	Send, {f3}		; Comminute (Anytime)
return


F17::				; Press Mouse Button 5 for Rear Snare
	Send, {f4}		; Conquer (Rear Snare - 40% for 19 sec)
	Send, {f3}		; Comminute (Anytime)
	Send, {f4}		; Conquer (Rear Snare - 40% for 19 sec)sd
return


F18::				; Press Mouse Button 6 for Parry Chain
	Send, {f5}		; Thor's Answer (Parry Followup - 7 sec stun)
	Send, {f6}		; Revenge (Parry Style 21% ASR)
	Send, {f5}		; Thor's Answer (Parry Followup - 7 sec stun)
	Send, {f3}		; Comminute (Anytime)
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