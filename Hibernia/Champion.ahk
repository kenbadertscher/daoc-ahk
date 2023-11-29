#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Champion Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to Mangle
	Send, {Right}	; Equip 1h Weapon
	Send, {i}		; Mangle (Side Stun)
return


F14:: 				; Press Mouse Button 2 to Paralyze
	Send, {Right}	; Equip 1h Weapon
	Send, {o}		; Paralyze (Rear Stun)
return


F15:: 				; Press Mouse Button 3 to Slam
	Send, {Right}	; Equip 1h Weapon
	Send, {p}		; Slam (Anytime Stun)
return


F16::				; Press Mouse Button 4 to Side Snare
	Send, {f10}		; Greater Atony (Str/Con Debuff and Bladeturn Cancel)
	Send, {Left}	; Equip 2h Weapon
	Send, {f2}		; Domination (side snare)
	Send, {f1}		; Demolish (anytime)
return


F17::				; Press Mouse Button 5 to Rear Snare
	Send, {f10}		; Greater Atony (Str/Con Debuff and Bladeturn Cancel)
	Send, {Left}	; Equip 2h Weapon
	Send, {f3}		; Gigantic Blow (rear snare)
	Send, {f1}		; Demolish (anytime)
return


F18::				; Press Mouse Button 6 for Parry Stun
	Send, {f10}		; Greater Atony (Str/Con Debuff and Bladeturn Cancel)	
	Send, {Left}	; Equip 2h Weapon
	Send, {f7}		; Hibernian Vigor (parry style follow up, 4 sec stun)
	Send, {f6}		; Celtic Rage (parry style)
	Send, {f7}		; Hibernian Vigor (parry style follow up, 4 sec stun)
	Send, {f5}		; Shatter (front style follow up, 20 dmg bleed for 20 sec)
	Send, {f4}		; Frontal Assault (front style, AF debuff)
	Send, {f5}		; Shatter (front style follow up, 20 dmg bleed for 20 sec)
return


F19:: 				; Press Mouse Button 7 for Pin
	Send, {Right}	; Equip 1h Weapon
	Send, {[}		; Pin (Snare)
return

F20::				; Mouse Button 8 is unset
return

F21::				; Press Mouse Button 9 for Parry ASR
	Send, {f10}		; Greater Atony (Str/Con Debuff and Bladeturn Cancel)	
	Send, {Left}	; Equip 2h Weapon
	Send, {f7}		; Hibernian Vigor (parry style follow up, 4 sec stun)
	Send, {f6}		; Comeback (parry style, AF debuff)
	Send, {f7}		; Hibernian Vigor (parry style follow up, 4 sec stun)
	Send, {f9}		; Obliteration (front style follow up, 20% asr for 20 sec)
	Send, {f8}		; Frontal Assault (front style, AF debuff)
	Send, {f9}		; Obliteration (front style follow up, 20% asr for 20 sec)
return


F22::				; Press Mouse Button 10 for Charge
	Send, {Down}	; Charge
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {Up}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above