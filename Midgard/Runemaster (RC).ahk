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


F13::				; Press Mouse Button 1 for Double Bolt
	Send, {f1}		; Sigil of Undoing (Spec Bolt)
	Send, {f2}		; Sovereign Runebolt (Baseline Bolt)
return


F14::				; Mouse Button 2 is Unset
	Send, {i}		; Runie Cloak
	Send, {f7}		; Aura of Magic Power (Arcane-Infused Armband /use2)
return


F15::				; Press Mouse Button 3 for Nearsight
	Send, {f3}		; Suppress View (Nearsight)
	Send, {k}		; Heat Chains (Dex Debuff)
return


F16::				; Press Mouse Button 4 for Energy Nuke
	Send, {f4}		; Rune of Thunder (Spec Energy Nuke)
	
return


F17::				; Press Mouse Button 5 for Cold Debuff
	Send, {f5}		; Void Dissipation (50% Debuff)
return


F18::				; Press Mouse Button 6 for Snare Nuke
	Send, {f6}		; Lesser Snaring Rune (Single DD / Snare)
return


F19::				; Press Mouse Button 7 for ABS Debuff
	Send, {f10}		; Rune of Weakening
return


F20::				; Press Mouse Button 8 for Root
	Send, {f8}		; Annihilate Movement (Root)
return


F21::				; Press Mouse Button 9 for AoE Snare Nuke
	Send, {f9}		; Field of Entrapping  (AoE DD / Snare)
return


F22::				; Mouse Button 10 is Unset
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above