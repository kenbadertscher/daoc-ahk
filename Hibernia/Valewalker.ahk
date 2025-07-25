﻿#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Valewalker Spec information:		48 Arboreal Path, 43 Scythe, 13 Parry
; Master Level:					          Battlemaster
; CL Abilities:					          Hardened Soul, Renewed Spirit, Champion's Accuracy, Lesser Renewal, Onslaught, Tenacity
; Realm Abilities:				        


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to Rear Stun w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {f7}		; Snow Blade (Rear Stun followup)
	Send, {f6}		; Damaging Grasp (Rear Stun)
	Send, {f7}		; Snow Blade (Rear Stun followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F14::				; Press Mouse Button 2 to Lifetap (Energy)
	Send, {m}		; Equip 1h Weapon
	Send, {l}	; Immolation (Big Lifetap)
	Send, {n}		; Cycle of Death (Lifetap)
	Send, {f2}		; Nature's Blight (Insta DD)
return


F15::				; Press Mouse Button 3 for Heat Nuke
	Send, {m}		; Equip 1h Weapon
	Send, {;}		; Scorching Flashfire (Heat Nuke)
	Send, {f2}		; Nature's Blight (Insta DD)
return


F16::				; Press Mouse Button 4 to Side Stun w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {f4}		; Blizzard Blade (Side Stun followup)
	Send, {f5}		; Stunning Blade (Side Stun)
	Send, {f4}		; Blizzard Blade (Side Stun followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F17::				; Press Mouse Button 5 to Rear Snare w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {[}		  ; Winter's Scythe (Rear Snare followup)
	Send, {p}		  ; Foxfire (Rear Snare)
	Send, {[}		  ; Winter's Scythe (Rear Snare followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F18::				; Press Mouse Button 6 to use Evade style w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {f8}		; Flaming Scythe (Evade followup)
	Send, {f9}		; Arboreal Fire (Evade Style)
	Send, {f8}		; Flaming Scythe (Evade followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F19::				; Press Mouse Button 7 for Essence Flames
	Send, {.}		  ; Essence Sear
	Send, {,}		  ; Essence Flames
	Send, {.}		  ; Essence Sear
return


F20::				; Press Mouse Button 8 for Buff Shear
	Send, {o}		; Essence Shatter
	Send, {i}		; Essence Dampen
	Send, {o}		; Essence Shatter
return


F21::				; Press Mouse Button 9 for Parry style w/ anytime backup
	Send, {F10}		; Equip Scythe
	Send, {k}		  ; Thorny Shield (Parry followup)
	Send, {j}		  ; Sawgrass (Parry Style)
	Send, {k}		  ; Thorny Shield (Parry followup)
	Send, {f3}		; Taunting Scythe (Anytime)
	Send, {f2}		; Nature's Blight (Insta DD)
	Send, {F1}		; Barkshell (Group Ablative)
return


F22::				; Press Mouse Button 10 to MoC
  Send, {up}   ; Mastery of Concentration
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist 1
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return


Seconds(x,y) {
  Random, value, %x%, %y%
  Return value
}

^!F9:: 		; sprint in place
Loop
  {
    SendInput, {f down}	
    Sleep, % Seconds(10,20)
    SendInput, {f up}	; 
    Sleep, % Seconds(10000,20000)
 }
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above