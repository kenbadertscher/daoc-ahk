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


F13::			; Press Mouse Button 1 for Bola Shot (Root)
	Send, {Up}	; Equip Bow
	Send, {F5}	; Bola Shot
return


F14::			; Press Mouse Button 2 for Patella Shot (Snare)
	Send, {Up}	; Equip Bow
	Send, {F6}	; Patella Shot
return


F15::			; Press Mouse Button 3 for Long Shot		
	Send, {Up}	; Equip Bow
	Send, {F4}	; Long Shot
return


F16::			; Press Mouse Button 4 for Crit Shot 
	Send, {Up}	; Equip Bow
	Send, {F1}	; Critical Shot
	Send, {F3}	; Standard Shot
return


F17::			; Press Mouse Button 5 for Power Shot
	Send, {Up}	; Equip Bow
	Send, {F2}	; Power Shot
	Send, {F3}	; Standard Shot
return


F18::			; Press Mouse Button 6 for Point Blank Shot
	Send, {Up}	; Equip Bow
	Send, {F7}	; Point Blank Shot
return


F19::			; Press Mouse Button 7 for Side Style
	Send, {Down}	; Equip Spear
	Send, {Right}	; Midsummer Ring
	Send, {[}	; Perforate (Side Snare)
	Send, {j}	; Lunging Thrust (Atk Spd Slow, Anytime Follow-up)
	Send, {[}	; Perforate (Side Snare)
	Send, {k}	; Lancer (Anytime)
return


F20::			; Press Mouse Button 8 for Rear Style
	Send, {Down}	; Equip Spear
	Send, {Right}	; Midsummer Ring
	Send, {i}	; Razor Edge (Rear Stun)
	Send, {o}	; Wounding Thrust (Snare, Anytime Follow-up)
	Send, {i}	; Razor Edge (Rear Stun)
	Send, {p}	; Engage (Anytime Taunt)
return


F21::			; Press Mouse Button 9 for Evade Style
	Send, {Down}	; Equip Spear
	Send, {Right}	; Midsummer Ring
	Send, {.}	; Parry Buff
	Send, {l}	; Raze (Evade Follow-up)
	Send, {;}	; Stab (Atk Spd Slow, Evade Style)
	Send, {l}	; Raze (Evade Follow-up)
	Send, {;}	; Stab (Atk Spd Slow, Evade Style)
	Send, {n}	; Whirling Spear (Anytime)
return


F22::			; Press Mouse Button 10 for Dismount and Stealth
	Send, {Left}	; Mount
		Sleep, 5
	Send, {,}	; Stealth
return


F23::			; Press Mouse Button 11 Assist
	Send, {-}
return


F24::			; Press Mouse Button 12 to Summon Doggie
	Send, {m}	; Summon Doggie
	Send, {F8}	; 
	Send, {F9}
	Send, {F10}
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above