#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Animist Spec information:		50 Arb, 20 Creep, 4 Verd
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
	Send, {f6}		; Fungal Potency (Pet Spell Buff)
	Send, {f7}		; Spirit of Nourishing (Pet AoE HoT)
	Send, {i}		; Bleed Might (Insta Con Debuff)
return


F15::				; Press Mouse Button 3 to put Pet on Passive and set to Stay
	Send, {f1}		; Pet Passive
	Send, {f4}		; Pet Stay
return


F16::				; Press Mouse Button 4 for Lifetap
	Send, {i}		; Bleed Might (Insta Con Debuff)
	Send, {o}		; Cycle of Death (Lifetap)
return


F17::				; Press Mouse Button 5 to Body DD
	Send, {i}		; Bleed Might (Con Debuff)
	Send, {p}		; Wisp Conflagration (Body DD / 10% Debuff)
return


F18::				; Press Mouse Button 6 to assist and AF Debuff
	Send, {i}		; Bleed Might (Con Debuff)
	Send, {[}		; Decay Armor (AF Debuff)
return


F19::				; Press Mouse Button 7 to AoE Root
	Send, {j}		; Binding Spirit (AoE Root)
return


F20::				; Press Mouse Button 8 to Root
	Send, {k}		; Rampant Vines (Root)
return


F21::				; Press Mouse Button 9 for Shroom of Life 
	Send, {n}		; Shroom of Life
return


F22::				; Press Mouse Button 10 for MoC
	Send, {f10}		; Mastery of Concentration
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above