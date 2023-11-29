#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Mercenary Spec information:		
; Master Level:					Banelord
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::			; Press Mouse Button 1 for Side DPS
	Send, {f3}		; Misty Gloom (side snare follow up)
	Send, {f2}		; Flank (side snare)
	Send, {f3}		; Misty Gloom (side snare follow up)
	Send, {f1}		; Dark Tendrils (anytime)
return


F14:: 			; Press Mouse Button 2 for Side Snare
	Send, {f5}		; Devastate (side snare follow up, 30% ASR)(crush style)
	Send, {f4}		; Side Crush (side snare)
	Send, {f5}		; Devastate (side snare follow up, 30% ASR)(crush style)
	Send, {f1}		; Dark Tendrils (anytime)
return


F15:: 			; Press Mouse Button 3 is unset

return


F16::			; Press Mouse Button 4 to Side Stun
	Send, {f6}		; Shadow's Rain (5 sec side stun)
	Send, {f1}		; Dark Tendrils (anytime)
return


F17::			; Press Mouse Button 5 to Rear Stun
	Send, {f8}		; Dual Shadows (rear style follow up, 7 sec stun)
	Send, {f7}		; Penumbra (rear style, 40% snare)
	Send, {f8}		; Dual Shadows (rear style follow up, 7 sec stun)
	Send, {f1}		; Dark Tendrils (anytime)
return


F18::			; Press Mouse Button 6 for Parry Stun
	Send, {f10}		; Hypnotic Darkness (parry style follow up, 8 sec stun)
	Send, {f9}		; Reflection (parry style, AF debuff)
	Send, {f10}		; Hypnotic Darkness (parry style follow up, 8 sec stun)
	Send, {f1}		; Dark Tendrils (anytime)
return


F19:: 			; Press Mouse Button 7 is unset

return


F20::			; Press Mouse Button 8 is unset

return


F21::			; Press Mouse Button 9 for Evade Stun
	Send, {o}		; Twin Return (evade style follow up, 4 sec stun)
	Send, {i}		; Evade (evade style, 8 dmg dot)
	Send, {o}		; Twin Return (evade style follow up, 4 sec stun)
	Send, {f1}		; Dark Tendrils (anytime)
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