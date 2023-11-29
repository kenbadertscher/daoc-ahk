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


F13::				; Press Mouse Button 1 to use Boiling Cauldron
	Send, {i}		; Boiling Cauldron
	Send, {o}		; Cursed Annihilation (Baseline Bolt)
	Send, {p}		; Lesser Bolt of Havoc (Spec Bolt)
	Send, {k}		; Sap Vigor (Con Debuff)
return


F14::				; Press Mouse Button 2 to use Doom Chain
	Send, {f4}		; Dread (Insta DoT - 1)
	Send, {f1}		; Doom (DoT - 4)
		Sleep, 14
	Send, {f2}		; Agony (DoT & Disease - 3)
	Send, {f3}		; Anguish (DoT - 2)
	Send, {f4}		; Dread (Insta DoT - 1)
	Send, {k}		; Sap Vigor (Con Debuff)
	Send, {f9}		; Condemn (Warlock Cloak DoT)
return


F15::				; Press Mouse Button 3 to Nearsight
	Send, {f7}		; Unmake Perception
	Send, {k}		; Sap Vigor (Con Debuff)
return


F16::				; Press Mouse Button 4 to Target Heal or DD
	Send, {[}		; Major Spell of Mending (Heal)
	Send, {k}		; Sap Vigor (Con Debuff)
	Send, {f6}		; Major Crushing Curse (Matter DD)
return


F17::				; Press Mouse Button 5 to Root and Cure Disease
	Send, {f5}		; Annihilate Movement (Root)
	Send, {l}		; Spell of Curing (Cure Disease)
return


F18::				; Press Mouse Button 6 PBAoE
	Send, {j}		; Spell Burst (PBAoE)
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