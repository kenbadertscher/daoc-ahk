#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Sorceror Spec information:		
; Master Level:					Convoker
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for AoE Amnesia
	Send, {f1}		; Inflict Oblivion (AoE Amnesia)
return


F14::				; Press Mouse Button 2 for Amnesia
	Send, {f2}		; Inflict Minor Forgetfulness (Amnesia)
return


F15::				; Press Mouse Button 3 for Double Dex Debuff
	Send, {f3}		; Major Imbalance (Dex/Qui Debuff)
	Send, {p}		; Sorcerous Web (Dex Debuff)
return


F16::				; Press Mouse Button 4 for AoE Mez
	Send, {Down}	; Groundset 1875
	Send, {f4}		; Shroud of Selinity (AoE Mez)
return


F17::				; Press Mouse Button 5 for Mez
	Send, {Right}	; Groundset 1500
	Send, {f5}		; Superior Fascination (Mez)
return


F18::				; Press Mouse Button 6 for Demez
	Send, {f6}		; Clear Mind (Demez)
	Send, {k}		; Banish Hope (AoE Str Con Debuff)
	Send, {f9}		; Dilapidate Body (Str Debuff)
return


F19::				; Press Mouse Button 7 for AoE Root
	Send, {Left}	; Groundset 1655
	Send, {f7}		; Body Lock (AoE Root)
return


F20::				; Press Mouse Button 8 for Root
	Send, {f8}		; Superior Leg Twisting (Root)
return


F21::				; Press Mouse Button 9 for Ichor
	Send, {n}		; Ichor
return


F22::				; Press Mouse Button 10 for MoC
	Send, {f10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Purge
return



#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above