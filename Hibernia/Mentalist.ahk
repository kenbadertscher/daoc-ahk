#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Mentalist Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for AoE Amnesia
	Send, {f1}		; Erase Memory (AoE Amnesia)
return


F14::				; Press Mouse Button 2 to Stun
	Send, {f2}		; Prismatic Strobe (Stun)
return


F15::				; Press Mouse Button 3 to Nearsight
	Send, {f3}		; Cloud of Blindness (Nearsight)
return


F16::				; Press Mouse Button 4 to Energy Nuke or Heal
	Send, {f4}		; Greater Mana Annihilation (Energy Nuke)
	Send, {[}		; Somatic Resuscitation (Heal)
return


F17::				; Press Mouse Button 5 to Mez or HoT
	Send, {f5}		; Disable Mind (Mez)
	Send, {j}		; Sanative Trance (HoT)
return


F18::				; Press Mouse Button 6 to Confuse or Demez
	Send, {f6}		; Paranoia (Confuse)
	Send, {k}		; Mental Purification (Demez)
return


F19::				; Press Mouse Button 7 for AoE DoT
	Send, {f7}		; Storm of Insanity (AoE DoT)
return


F20::				; Press Mouse Button 8 for DoT
	Send, {f8}		; Complete Mind Annihilation (DoT)
return


F21::				; Press Mouse Button 9 
return


F22::				; Press Mouse Button 10 for MoC
	Send, {f9}		; Mastery of Concentration
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist 1
	Send, {=}		; Assist 2
return


F24::			; Press Mouse Button 12 to Purge
	Send, {f10}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above