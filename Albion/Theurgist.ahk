#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Theurgist Spec information:		
; Master Level:					Convoker
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Earth Elemental
	Send, {f1}		; Call Potent Earth Elemental 
return


F14::				; Press Mouse Button 2 for Air Elemental
	Send, {f2}		; Call Mighty Air Sprite
return


F15::				; Press Mouse Button 3 for Ice Spirit
	Send, {f3}		; Summon Ice Spirit
return


F16::				; Press Mouse Button 4 for Air DD
	Send, {f4}		; Blasting Maelstorm (Air DD)
return


F17::				; Press Mouse Button 5 to Quick Cast
	Send, {f5}		; Quick Cast
return


F18::				; Press Mouse Button 6 for Concentration
	Send, {f6}		; Concentration (Reset Quick Cast)
return


F19::				; Press Mouse Button 7 for AoE Mez
	Send, {f7}		; Confusing Wind (AoE Mez)
return


F20::				; Press Mouse Button 8 for Root
	Send, {f8}		; Anchor of Ice (Root)
return


F21::				; Mouse Button 9 for ASR
	Send, {f9}		; Major Friction (ASR)
return


F22::				; Press Mouse Button 10 to MoC
	Send, {f10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above