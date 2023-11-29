#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Blademaster Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to use Shortbow
	Send, {up}		; Shortbow 
return


F14::				; Press Mouse Button 2 to Increase Damage
	Send, {i}		; Flurry
	Send, {o}		; Triple Wield
	Send, {p}		; Banespike
return


F15::				; Unset
return


F16::				; Press Mouse Button 4 to 2h and Side Snare
	Send, {j}		; Weariness (Melee Vuln. Debuff - Medal of Honor)
	Send, {k}		; Dark Sundering (Abs Debuff - Midsummer's Wrap)
	Send, {f1}		; Tempest (Side Style Followup)
	Send, {f2}		; Ice Storm (Side Stun)
	Send, {f3}		; Supernova (Rear Style Followup)
	Send, {f4}		; Hurricane (Rear Snare)
	Send, {f1}		; Tempest (Side Stun Followup)
	Send, {f3}		; Supernova (Rear Style Followup)
return


F17::				; Mouse Button 5 is Unset
return


F18::				; Press Mouse Button 6 for 10s Parry Stun
	Send, {f5}		; Devastating Blow (Parry Style Followup)
	Send, {f6}		; Stunning Blow (Parry Style)
	Send, {f5}		; Devastating Blow (Parry Style Followup)
	Send, {;}		; Gale (Front Style Followup)
	Send, {l}		; Snow Shower (Front Style)
return


F19::				; Press Mouse Button 7 to be an Assist Bot
	Send, {-}		; Assist
	Send, {e}		; Stick
	Send, {f1}		; Tempest (Side Style Followup)
	Send, {f2}		; Ice Storm (Side Stun)
	Send, {f3}		; Supernova (Rear Style Followup)
	Send, {f4}		; Hurricane (Rear Snare)
	Send, {f1}		; Tempest (Side Stun Followup)
	Send, {f3}		; Supernova (Rear Style Followup)
return


F20::				; Mouse Button 8 for Parry Chain
	Send, {f9}		; Twin Star (Parry Chain)
	Send, {f10}		; Tornado (Parry AF Debuff)
	Send, {f9}		; Twin Star (Parry Chain)
	Send, {;}		; Gale (Front Style Followup)
	Send, {l}		; Snow Shower (Front Style)
return


F21::				; Mouse Button 9 for Evade Chain
	Send, {f7}		; Blizzard (Evade Follow Up)
	Send, {f8}		; Blinding Rain (Evade Style)
	Send, {f7}		; Blizzard (Evade Follow Up)
	Send, {;}		; Gale (Front Style Followup)
	Send, {l}		; Snow Shower (Front Style)
return


F22::				; Press Mouse Button 10 to Charge
	Send, {n}		; Charge
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Mouse Button 12 for Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above