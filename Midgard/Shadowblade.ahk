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


F13::				; Press Mouse Button 1 for Perf
	Send, {m}		; 2-Handed Weapon
	Send, {f1}		; Perforate Artery
return


F14::				; Press Mouse Button 2 for CD Chain
	Send, {n}		; 1-Handed Weapon
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
	Send, {f6}		; Polar Rift
return


F17::				; Press Mouse Button 5 for Side Snare
	Send, {Left}	; Snare Poison
	Send, {f7}		; Rush
	Send, {f6}		; Polar Rift
return


F18::				; Press Mouse Button 6 for Evade Stun
	Send, {;}		; Achilles' Heel
	Send, {l}		; Hamstring
	Send, {;}		; Achilles' Heel
	Send, {o}		; Aurora
	Send, {i}		; Northern Lights
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
	Send, {F9}		; Hamstring
	Send, {F10}		; Achilles' Heel
	Send, {o}		; Aurora
	Send, {i}		; Northern Lights
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