#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Ranger Spec information:		
; Master Level:					
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


F16::				; Press Mouse Button 4 for Side Stun
	Send, {Left}	; Tracker's Alacrity (Evade Buff)
	Send, {Right}	; Soldier's Anticipation (Parry Buff)
	Send, {m}		; Dark Sundering (Absorb Debuff)
	Send, {Down} 	; Equip Melee Weapons
	Send, {F8}		; Ice Storm (Side Stun)
	Send, {i}		; Meteor Shower (Anytime)
return


F17::				; Press Mouse Button 5 for Rear Snare
	Send, {Left}	; Tracker's Alacrity (Evade Buff)
	Send, {Right}	; Soldier's Anticipation (Parry Buff)
	Send, {n}		; Withered Vitality (Str/Con Debuff)
	Send, {Down} 	; Equip Melee Weapons
	Send, {f9}		; Hurricane (Rear Snare)
	Send, {i}		; Meteor Shower (Anytime)
return


F18::				; Press Mouse Button 6 for Evade Style & Anytime
	Send, {Left}	; Tracker's Alacrity (Evade Buff)
	Send, {Right}	; Soldier's Anticipation (Parry Buff)
	Send, {;}		; Magnanimous Aura (Style Dmg Absorb)
	Send, {Down} 	; Equip Melee Weapons
	Send, {o}		; Twin Star I (Evade Follow-Up, Stun)
	Send, {f10}		; Tornado (Evade Style, AF Debuff)
	Send, {o}		; Twin Star I (Evade Follow-Up, Stun)
	Send, {i}		; Meteor Shower (Anytime)
return


F19::				; Press Mouse Button 7 for Power Shot
	Send, {Up}		; Equip Bow
	Send, {F2}		; Power Shot
	Send, {F3}		; Standard Shot
return


F20::				; Press Mouse Button 8 for Energy Shot 
	Send, {Up}		; Equip Bow
	Send, {F1}		; Energy Shot
return


F21::				; Press Mouse Button 9 for Point Blank Shot
	Send, {Up}		; Equip Bow
	Send, {F7}		; Point Blank Shot
return


F22::				; Press Mouse Button 10 for Dismount and Stealth
	Send, {,}		; Mount
		Sleep, 5
	Send, {.}		; Stealth
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above