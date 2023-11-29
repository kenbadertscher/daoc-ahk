#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Bonedancer Spec information:		
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
return


F15::				; Press Mouse Button 3 to put Pet on Passive and set to Stay
	Send, {f1}		; Pet Passive
	Send, {f4}		; Pet Stay
return


F16::				; Press Mouse Button 4 to Spirit Nuke
	Send, {i}		; Death of Souls (Spirit Nuke)
return


F17::				; Press Mouse Button 5 to Taunt
	Send, {o}		; Ghostly Wail (Taunt)
return

F18::				; Press Mouse Button 6 for DD Totem
	Send, {p}		; Murk Totem (DD Totem)
return


F19::				; Press Mouse Button 7 for AoE DoT
	Send, {[}		; Support Bonecaster (Body Debuff)
	Send, {j}		; Ruin Bones (AoE DoT)
return


F20::				; Press Mouse Button 8 for DoT
	Send, {k}		; Bones to Ash (DoT)
return


F21::				; Press Mouse Button 9 for Snare Totem
	Send, {l}		; Slowing Totem (Snare Totem)
return


F22::				; Press Mouse Button 10 for MoC
	Send, {f9}		; Mastery of Concentration
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist 1
	Send, {=}		; Assist 2
return


F24::				; Press Mouse Button 12 to Purge
	Send, {f10}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above