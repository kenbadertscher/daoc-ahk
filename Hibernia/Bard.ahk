#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Bard Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for AoE Amnesia
	Send, {f1}		; Wake Oblivious (AoE Amnesia)
return


F14::				; Press Mouse Button 2 for Root
	Send, {f2}		; Reject Advancement (Root)
	Send, {o}		; Cure Poison
return


F15::				; Press Mouse Button 3 for Confusion & Cure Nearsight
	Send, {f3}		; Wake Senseless (Target Amnesia)
	Send, {p}		; Cure Senses (Cure Nearsight)
return


F16::				; Press Mouse Button 4 for AoE Mez and Greater Heal
	Send, {f4}		; Tranquilize Area (AoE Mez)
	Send, {[}		; Greater Reconstruction (Greater Heal)
return


F17::				; Press Mouse Button 5 for Mez and Cure Disease
	Send, {f5}		; Greater Entrancement (Mez)
	Send, {j}		; Cure Disease
return


F18::				; Press Mouse Button 6 for Cure Mez
	Send, {k}		; Cleanse Mind (Cure Mez)
return


F19::				; Press Mouse Button 7 for AoE Stun 
	Send, {f7}		; Nullify Charge (AoE Stun)
return

F20::				; Press Mouse Button 8 for Stun
	Send, {f8}		; Halt Invasion (Stun)
return


F21::				; Press Mouse Button 9 for Atk Speed Debuff
	Send, {f9}		; Block Spirit (Atk Spd Debuff)
return


F22::				; Press Mouse Button 10 for MoC
	Send, {F10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above