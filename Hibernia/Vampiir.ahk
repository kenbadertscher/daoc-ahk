#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to Leg Shot
	Send, {f7}		; Remove Defenses (armor wither)
	Send, {f8}		; Leg Shot
return


F14:: 				; Press Mouse Button 2 to Torso Shot
	Send, {f7}		; Remove Defenses (armor wither)
	Send, {f9}		; Torso Shot
return


F15:: 				; Press Mouse Button 3 to Head Shot
	Send, {f7}		; Remove Defenses (armor wither)
	Send, {f10}		; Head Shot
return


F16::				; Press Mouse Button 4 to Side Snare
	Send, {f4}		; Cobra's Bite (Side Snare follow up, 26 dmg dot)
	Send, {f3}		; Copperhead (Side Snare, 40% for 15 sec)
	Send, {f4}		; Cobra's Bite (Side Snare follow up, 26 dmg dot)
		Sleep, 30
	Send, {f2}		; Vampire Feint (anytime follow up, 25% crit chance)	Send, {f1}		; Asp's Bite (anytime)
return


F17::				; Press Mouse Button 5 to Rear Stun
	Send, {f5}		; Vampire's Bite (Rear Stun)
	Send, {f2}		; Vampire Feint
		Sleep, 30
	Send, {f5}		; Vampire's Bite (Rear Stun)
	Send, {f2}		; Vampire Feint
	Send, {f1}		; Asp's Bite
return


F18::				; Press Mouse Button 6 for Parry Stun
return


F19:: 				; Press Mouse Button 7 for
return


F20::				; Press Mouse Button 8 for 
return


F21::				; Press Mouse Button 9 for Evade Stun
return


F22::				; Press Mouse Button 10 for Charge
	Send, {m}		; Charge
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above