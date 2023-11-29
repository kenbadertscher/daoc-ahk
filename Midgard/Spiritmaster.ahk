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


F13::				; Press Mouse Button 1 to put Pet on Passive and set to Follow
	Send, {f1}		; Pet Passive 
	Send, {f2}		; Pet Follow
return


F14::				; Press Mouse Button 2 to command Pet to Attack
	Send, {f3}		; Pet Attack
	Send, {f5}		; Summoning Mastery (ML9 Pet Buff)
	Send, {i}		; Cast Demon Horror (Insta Con Debuff)
return


F15::				; Press Mouse Button 3 to put Pet on Passive and set to Stay
	Send, {f1}		; Pet Passive
	Send, {f4}		; Pet Stay
return


F16::				; Press Mouse Button 4 to Spirit Debuff
	Send, {j}		; Extinguish Lifeforce (Lifetap)
return


F17::				; Press Mouse Button 5 to Energy Debuff
	Send, {i}		; Enfeeble Strength (Str/Con Debuff)
	Send, {o}		; Extinguish Capacity (Energy Debuff)
return


F18::				; Press Mouse Button 6 to Demez or Double Dex Debuff
	Send, {p}		; Spirit Purge (Demez)
	Send, {k}		; Greater Curse of Blindness (Dex / Qui Debuff)
	Send, {l}		; Shroud of Darkness (Dex Debuff)
return


F19::				; Press Mouse Button 7 to AoE Mez
	Send, {;}		; Umbral Shroud (AoE Mez)
return


F20::				; Press Mouse Button 8 to root
	Send, {n}		; Annihilate Movement (Root)
return


F21::				; Press Mouse Button 9 to Attack Speed Debuff
	Send, {[}		; Annihilate Strength (Str Debuff)
	Send, {m}		; Dissipate Fervor (Attack Speed Debuff)
return


F22::				; Press Mouse Button 10 for MoC
	Send, {f10} 		; MoC
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above