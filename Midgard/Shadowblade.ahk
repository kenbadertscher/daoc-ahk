#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Spec information:						50 Left Axe, 30 Axe, 29 Crit Strike, 49 Envenom, 40 Stealth
; Master Level:							Battlemaster
; CL Abilities:							
; Realm Abilities:						MoPain 5


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Perf
	Send, {m}		; 2-Handed Weapon
	Send, {f1}		; Perforate Artery
return


F14::				; Press Mouse Button 2 for CD Chain
	Send, {Right}	; Disease Poison
	Send, {f3}		; Rib Separation
	Send, {f2}		; Creeping Death
return


F15::				; Press Mouse Button 3 Stealth and Perf
	Send, {y}		; Dismount
	Send, {.}		; Stealth
	Send, {m}		; 2-Handed Weapon
	Send, {f1}		; Perforate Artery
return


F16::				; Press Mouse Button 4 for Pincer Leaper
	Send, {f5}		; Leaper
	Send, {f4}		; Pincer
	Send, {f5}		; Leaper
	Send, {f6}		; Havoc (Axe Anytime)
return


F17::				; Press Mouse Button 5 for Side Stun
	Send, {n}		; Equip 1-hand Weapon
	Send, {o}		; Aurora Borealis (Side Stun followup, 26% ASR)
	Send, {i}		; Decaying Rage (Left Axe Side Stun, 5 sec stun)
	Send, {o}		; Aurora Borealis (Side Stun followup, 26% ASR)
	Send, {f7}		; Doublefrost (Left Axe Anytime)
return


F18::				; Press Mouse Button 6 for Evade Stun
	Send, {n}		; Equip 1-hand Weapon
	Send, {;}		; Frosty Gaze (Evade followup, 7 sec stun)
	Send, {l}		; Comeback (Evade Style, AF Debuff)
	Send, {;}		; Frosty Gaze (Evade followup, 7 sec stun)
	Send, {f7}		; Doublefrost (Left Axe Anytime)
return


F19::				; Press Mouse Button 7 for Essence Flames
	Send, {[}		; Essence Sear
	Send, {p}		; Essence Flames
	Send, {[}		; Essence Sear
	Send, {v}		; Faultfinder
return


F20::				; Press Mouse Button 8 for Buff Shear
	Send, {k}		; Essence Shatter
	Send, {j}		; Essence Dampen
	Send, {k}		; Essence Shatter
return


F21::				; Press Mouse Button 9 for Evade Abs Debuff
	Send, {F10}		; Achilles' Heel
	Send, {F9}		; Hamstring (Evade Style, ABS Debuff)
	Send, {F10}		; Achilles' Heel
	Send, {f6}		; Havoc (Axe Anytime)
return


F22::				; Press Mouse Button 10 to Dismount and Stealth
	Send, {y}		; Mount
	Send, {.}		; Stealth
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Assist
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above