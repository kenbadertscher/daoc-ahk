#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Berserker Spec information:		
; Master Level:					Banelord
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::			; Press Mouse Button 1 to 2h Side Snare
	Send, {Right}		; Equip 2h Weapon
	Send, {p}		; Tyr's Fury (side snare follow up, 30% ASR)
	Send, {o}		; Glacial Movement (side snare)
	Send, {p}		; Tyr's Fury (side snare follow up, 30% ASR)
	Send, {i}		; Havoc (anytime)
return

F14:: 			; Press Mouse Button 2 to 2h Rear Stun
	Send, {Right}		; Equip 2h Weapon
	Send, {j}		; Arctic Rift (rear style follow up, 5 sec stun)
	Send, {[}		; Evernight (rear style)
	Send, {j}		; Arctic Rift (rear style follow up, 5 sec stun)
	Send, {i}		; Havoc (anytime)
return

F15:: 			; Press Mouse Button 3 

return

F16::			; Press Mouse Button 4 to Side Stun
	Send, {Left}		; Equip 1h Weapon
	Send, {f3}		; Aurora Borealis (side stun follow up, 95 cold dd)
	Send, {f2}		; Decaying Rage (side stun, 5 sec)
	Send, {f3}		; Aurora Borealis (side stun follow up, 95 cold dd)
	Send, {f1}		; Doublefrost (anytime)
return

F17::			; Press Mouse Button 5 to Rear Stun
	Send, {Left}		; Equip 1h Weapon
	Send, {f5}		; Icy Brilliance (rear style follow up, 7 sec stun)
	Send, {f4}		; Snowsquall (rear style)
	Send, {f5}		; Icy Brilliance (rear style follow up, 7 sec stun)
	Send, {f1}		; Doublefrost (anytime)
return

F18::			; Press Mouse Button 6 for Parry Stun
	Send, {Left}		; Equip 1h Weapon
	Send, {f7}		; Frosty Gaze (parry style follow up, 7 sec stun)
	Send, {f6}		; Comeback (parry style, AF debuff)
	Send, {f7}		; Frosty Gaze (parry style follow up, 7 sec stun)
	Send, {f1}		; Doublefrost (anytime)
return

F19:: 			; Press Mouse Button 7 for

return

F20::			; Press Mouse Button 8 for 

return

F21::			; Press Mouse Button 9 for Evade Stun
	Send, {Left}		; Equip 1h Weapon
	Send, {f9}		; Midnight Sun (evade style follow up, 6 sec stun)
	Send, {f8}		; Valkyrie's Shield (evade style, 21% ASR)
	Send, {f9}		; Midnight Sun (evade style follow up, 6 sec stun)
	Send, {f1}		; Doublefrost (anytime)
return

F22::			; Press Mouse Button 10 for Charge
	Send, {Down}		; Charge
return

F23::			; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return

F24::			; Press Mouse Button 12 for Purge
	Send, {Up}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above