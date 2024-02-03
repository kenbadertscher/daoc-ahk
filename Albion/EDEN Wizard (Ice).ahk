#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC

; TODO:  This file is based on my Eldritch file.  Clean up and rename the abilities.

; Wizard Spec information:		48 Ice, 24 Earth, 6 Fire
; CL Abilities:					
; Realm Abilities:				MoC 5


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Triple Bolt
	Send, {f1}		; Flaming Rocks Major (Baseline Bolt)
	Send, {f2}		; Lava Force Enhanced (Earth Spec Bolt)
	Send, {f3}		; Minor Fire Streak (Fire Spec Bolt)
return


F14::				; Press Mouse Button 2 for VP
	Send, {f4}		; Volcanic Pillar
return


F15::				; Press Mouse Button 3 for Nearsight
	Send, {f5}		; Dusted Vision (Green Near Sight)
return


F16::				; Press Mouse Button 4 for Heat Nuke
	Send, {f6}		; Searing Blast (20% debuff Spec Nuke)
return


F17::				; Press Mouse Button 5 for PBAoE Nuke
	Send, {f7}		; Steaming Wind Major (PBAoE)
return


F18::				; Press Mouse Button 6 for AoE DD
	Send, {f8}		; Boiling Cloud (15% debuff AoE DD)
return


F19::				; Press Mouse Button 7 for AoE Root
	Send, {f9}		; Chains of Permafrost (AoE Root)
return


F20::				; Press Mouse Button 8 for Root
	Send, {f10}		; Anchor of Ice (Root)
return


F21::				; Press Mouse Button 9 for AoE Snare Nuke
	Send, {i}		; Numbing Tendrils
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