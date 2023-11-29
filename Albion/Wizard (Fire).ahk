#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC

; TODO:  This file is based on my Eldritch file.  Clean up and rename the abilities.

; Wizard Spec information:		50 Earth, 20 Fire, 4  Ice
; Master Level:					Convoker
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Double Bolt
	Send, {f1}		; Flame Spear (Spec Bolt)
	Send, {f2}		; Bolt of Uncreation (Spec Bolt)
	Send, {f3}		; Void Abyss (Baseline Bolt)
return


F14::				; Press Mouse Button 2 for VP
	Send, {f4}		; Volcanic Pillar
return


F15::				; Press Mouse Button 3 for Nearsight
	Send, {f5}		; Dusted Vision (Green Near Sight)
return


F16::				; Press Mouse Button 4 for Heat Nuke
	Send, {f6}		; Major Conflagration (Spec Nuke)
return


F17::				; Press Mouse Button 5 for AoE Nuke
	Send, {f7}		; Ebullient Blast
return


F18::				; Press Mouse Button 6 for Pet Fear
	Send, {f6}		; Entropic Sickness
return


F19::				; Press Mouse Button 7 for 
	Send, {f7}		; Paralyzing Veil
return


F20::				; Press Mouse Button 8 for Root
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