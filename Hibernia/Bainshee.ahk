#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC

; TODO: Clean up this file and change the ability names - this is based on my wizard file.

; Bainshee Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for AoE Bolt
	Send, {Down}	; Groundset 1875
	Send, {f1}		; Flame Spear (AoE Bolt)
return

F14::				; Press Mouse Button 2 for VP
	Send, {Right}	; Groundset 2300
	Send, {f2}		; Taunt
return

F15::				; Press Mouse Button 3 for Nearsight
	Send, {Left}	; Groundset 1950
	Send, {f3}		; Dusted Vision (AoE Focus Near Sight)
return

F16::				; Press Mouse Button 4 for Heat Nuke
	Send, {Up}		; Groundset 1500
	Send, {f4}		; Major Conflagration (Spec Nuke)
return

F17::				; Press Mouse Button 5 for AoE Nuke
	Send, {Up}		; Groundset 1500
	Send, {f5}		; Ebullient Blast
return

F18::				; Press Mouse Button 6 for Pet Fear
	Send, {f6}		; Entropic Sickness
return

F19::				; Press Mouse Button 7 for Assist Nuke
	Send, {Up}		; Groundset 1500
	Send, {f4}		; Paralyzing Veil
return

F20::				; Press Mouse Button 8 for Root
	Send, {Up}		; Groundset 1500
	Send, {f8}		; Soul Clutch (Root)
return

F21::				; Press Mouse Button 9 for AoE Snare Nuke
	Send, {f9}		; Kinetic Dispersal
return

F22::				; Press Mouse Button 10 for Quick cast
	Send, {f10}	
return

F23::				; Press Mouse Button 11 for Assist
	Send, {-}
return

F24::				; Press Mouse Button 12 for Purge
	Send, {=}
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above