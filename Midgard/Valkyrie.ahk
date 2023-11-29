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


F13::				; Press Mouse Button 1 to Pin (Energy)
	Send, {Down}		; Equip 1h Weapon
	Send, {f1}		; Pin (Shield Snare)
return


F14::				; Press Mouse Button 2 to Mangle
	Send, {Down}		; Equip 1h Weapon
	Send, {f2}		; Mangle (Side Stun)
return


F15::				; Press Mouse Button 3 for Buff Shear
	Send, {o}		; Essence Shatter
	Send, {i}		; Essence Dampen
	Send, {o}		; Essence Shatter
return


F16::				; Press Mouse Button 4 to Side Snare w/ anytime backup
	Send, {Up}		; Equip 2h Weapon
	Send, {F9}		; Guiding Strike (Warlord Crit Chance Increase)
	Send, {F8}		; Odin's Temperence (Group Ablative)
	Send, {f1}		; Perforate (Side Snare)
	Send, {f2}		; Whirling Spear (Anytime)
	Send, {f1}		; Perforate (Side Snare)
return


F17::				; Press Mouse Button 5 to Rear Stun w/ anytime backup
	Send, {Up}		; Equip 2h Weapon
	Send, {F9}		; Guiding Strike (Warlord Crit Chance Increase)
	Send, {F8}		; Odin's Temperence (Group Ablative)
	Send, {f3}		; Razor Edge (Rear Stun)
	Send, {f2}		; Whirling Spear (Anytime)
	Send, {f3}		; Razor Edge (Rear Stun)
return


F18::				; Press Mouse Button 6 to use Parry Style style w/ anytime backup
	Send, {Up}		; Equip 2h Weapon
	Send, {F9}		; Guiding Strike (Warlord Crit Chance Increase)
	Send, {F8}		; Odin's Temperence (Group Ablative)
	Send, {F4}		; Extend Reach (Parry Follow Up)
	Send, {F5}		; Return Thrust (Parry Style)
	Send, {F4}		; Extend Reach (Parry Follow Up)
	Send, {F6}		; Roundhouse (Anytime Follow Up, AoE Crush DD)
	Send, {F7}		; Windmill (Anytime)
return


F19::				; Unset - reserved for essence flames
	Send, {.}		; Essence Sear
	Send, {,}		; Essence Flames
	Send, {.}		; Essence Sear
return


F20::				; Press Mouse Button 8 to Rear Snare w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {[}		; Winter's Scythe (Rear Snare followup)
	Send, {p}		; Sawgrass (Rear Snare)
	Send, {[}		; Winter's Scythe (Rear Snare followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F21::				; Press Mouse Button 9 for Parry style w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {k}		; Thorny Shield (Parry followup)
	Send, {j}		; Sawgrass (Parry Style)
	Send, {k}		; Thorny Shield (Parry followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F22::				; Press Mouse Button 10 for Charge
	Send, {m}		; Charge
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist 1
return


F24::				; Press Mouse Button 12 to Purge
	Send, {F10}		; Purge
return



#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above