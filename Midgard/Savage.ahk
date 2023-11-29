#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Savage Spec information:		
; Master Level:					Battlemaster
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R



F13::				; Press Mouse Button 1 to Rear Stun
	Send, {f2}		; Clan's Might (Follow Up)
	Send, {f1}		; Clan's Call (Rear Stun)
	Send, {f2}		; Clan's Might (Follow Up)
	Send, {f5}		; Wild Call (Anytime)
return


F14::				; Press Mouse Button 2 for TAUNT
	Send, {,}		; Infuriating Gesture
return


F15::				; Press Mouse Button 3 for Damage Buffs
	Send, {k}		; Savage Blows
	Send, {l}		; Zeal of Kelgor
return


F16::				; Press Mouse Button 4 for Side Stun
	Send, {f4}		; Kelgor's Wrath (Side Follow Up, Stun)
	Send, {f3}		; Kelgor's Fist (Side Snare)
	Send, {f4}		; Kelgor's Wrath (Side Follow Up, Stun)
	Send, {f5}		; Wild Call (Anytime)
return


F17::				; Press Mouse Button 5 for Essence Flames 
	Send, {f7}		; Essence Sear
	Send, {f6}		; Essence Flames
return


F18::				; Press Mouse Button 6 for Buff Shear
	Send, {f9}		; Essence Shatter
	Send, {f8}		; Essence Dampen
return


F19::				; Press Mouse Button 7 for assist bot
	Send, {-}		; Assist
	Send, {f4}		; Kelgor's Wrath (Side Follow Up, Stun)
	Send, {f3}		; Kelgor's Fist (Side Snare)
	Send, {f4}		; Kelgor's Wrath (Side Follow Up, Stun)
	Send, {f5}		; Wild Call (Anytime)
return


F20::				; Press Mouse Button 8 for Parry Chain
	Send, {p}		; Tribal Wrath
	Send, {o}		; Tribal Assault
	Send, {i}		; Tribal Rage
	Send, {o}		; Tribal Assault
	Send, {p}		; Tribal Wrath
	Send, {f5}		; Wild Call (Anytime)
return


F21::				; Press Mouse Button 9 for Evade Chain
	Send, {j}		; Totemic Wrath (Evade Follow Up)
	Send, {[}		; Totemic Fear (Evade Style)
	Send, {j}		; Totemic Wrath (Evade Follow Up)
	Send, {f5}		; Wild Call (Anytime)
return


F22::				; Press Mouse Button 10 for Charge
	Send, {.}		; Charge
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Presss Mouse Button 12 for Evade and Parry Buffs
	end, {n}		; Fangs of Kelgor
	Send, {m}		; Evasion of Kelgor
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above