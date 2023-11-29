#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Warrior Spec information:		
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
	Send, {,}		; 1h Weaponaw
	Send, {f2}		; Mangle
return


F15::				; Press Mouse Button 3 to Numb
	Send, {,}		; 1h Weapon
	Send, {f3}		; Numb
return


F16::				; Press Mouse Button 4 to Ragnarok
	Send, {.}		; 2h Weapon
	Send, {l}		; Use Midsummer's Wrap
	Send, {f4}		; Ragnarok
	Send, {f10}		; Amethyst Slash
	Send, {f4}		; Ragnarok
return


F17::				; Press Mouse Button 5 to Essence Flames
	Send, {j}		; Faultfinder	
	Send, {o}		; Essence Sear
	Send, {i}		; Essence Flames
	Send, {o}		; Essence Sear
return


F18::				; Press Mouse Button 6 to Buff Shear
	Send, {,}		; 1h Weapon
	Send, {[}		; Essence Shatter
	Send, {p}		; Essence Dampen
	Send, {[}		; Essence Shatter
return


F19::				; Press Mouse Button 7 to Assist Bot w/ 2h Ragnarok
	Send, {-}		; Assist
	Send, {e}		; Stick
	Send, {.}		; 2h Weapon
	Send, {f4}		; Ragnarok
	Send, {f10}		; Amethyst Slash
	Send, {f4}		; Ragnarok
return


F20::				; Press Mouse Button 8 to 1h Block Style
	Send, {,}		; 1h Weapon
	Send, {f6}		; Niord's Fury (Block Follow Up)
	Send, {f5}		; Frost Cut (Block Style)
	Send, {f6}		; Niord's Fury (Block Follow Up)
	Send, {f10}		; Amethyst Slash
return


F21::				; Press Mouse Button 9 to 1h Evade Style
	Send, {,}		; 1h Weapon
	Send, {f8}		; Sif's Revenge (Evade Follow Up)
	Send, {f7}		; Ice Storm (Evade Style)
	Send, {f8}		; Sif's Revenge (Evade Follow Up)
	Send, {f10}		; Polar Rift
return



F22::				; Press Mouse Button 10 to Bolster
	Send, {n}		; Bolstering Roar
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Bodyguard
	Send, {m}		; Bodyguard
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above