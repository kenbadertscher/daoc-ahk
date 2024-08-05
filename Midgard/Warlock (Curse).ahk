#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Spec information:		    45 Curse, 29 Hexing, 6 WC
; Master Level:				    Banelord
; CL Abilities:				
; Realm Abilities:				primal agony, chamber of decimation, 


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to use Boiling Cauldron
	Send, {i}		; Cursed Annihilation (Baseline Bolt)
	Send, {o}		; Lesser Bolt of Havoc (Spec Bolt)
	Send, {k}		; Sap Vigor (Con Debuff)
return


F14::				; Press Mouse Button 2 to use Boiling Cauldron / VP
  Send, {p}		; Boiling Cauldron
	Send, {[}		; Volcanic Pillar
return


F15::				; Press Mouse Button 3 to Nearsight
	Send, {f7}		; Unmake Perception
	Send, {k}		  ; Sap Vigor (Con Debuff)
return


F16::				; Press Mouse Button 4 to DD
	Send, {k}		  ; Sap Vigor (Con Debuff)
	Send, {f6}		; Major Crushing Curse (Matter DD)
return


F17::				; Press Mouse Button 5 to Root
  Send, {f5}    ; Root
return


F18::				; Press Mouse Button 6 Bomb
  Send, {f1}    ; PBAoE
  Send, {f2}    ; Primal Agony
  Send, {f3}    ; Agony Transmission
  Send, {f4}    ; 
return


F19::				; Press Mouse Button 7 to Assist and AF Debuff
	Send, {-}		; Assist
	Send, {f8}		; Erode Armor (AF Debuff)
	Send, {k}		; Sap Vigor (Con Debuff)
return


F20::				; Press Mouse Button 8 to regen power
	Send, {n}		; Spell of Power (20x Power Regen)
return


F21::				; Press Mouse Button 9 to melee absorb
	Send, {f10}		; Otherworldly Magnanimy (Style Damage Redux)
	Send, {m}		; Supress Wounds (CL Ablative)
return


F22::				; Press Mouse Button 10 for MoC
	Send, {u}		; MoC
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Purge
	Send, {y}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above