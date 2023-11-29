#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Cabalist Spec information:	
; Master Level:					Convoker
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to put Pet on Passive and set to Follow
	Send, {f1}		; Pet Passive 
	Send, {f2}		; Pet Follow
return


F14::				; Press Mouse Button 2 to command Pet to Attack
	Send, {Down}	; GT 2000
	Send, {f3}		; Pet Attack
	Send, {f5}		; Summoning Mastery (ML9 Pet Buff)
return


F15::				; Press Mouse Button 3 for Dex Debuff and NS
	Send, {Left}	; GT 2300
	Send, {[}		; Encrust Eyes (Grey Nearsight)
	Send, {j}		; Sorcerous Web (Dex Debuff)
return


F16::				; Press Mouse Button 4 to cast Lifetap
	Send, {Up}		; GT 1500
	Send, {i}		; Essence Devourer (Baseline Body Lifetap)
	Send, {n}		; Powers of the Arcane (Spell Pierce Buff - CL5 or Doppel Mace)
return


F17::				; Press Mouse Button 5 to debuff Body
	Send, {Up}		; GT 1500
	Send, {o}		; Banish Immunities (50% Body Debuff)
return


F18::				; Press Mouse Button 6 for Nearsight / Disease
	Send, {Up}		; GT 1500
	Send, {p}		; Damaged Vigor (Target Disease)
return


F19::				; Press Mouse Button 7 to Root
	Send, {Up}		; GT 1500
	Send, {k}		; Superior Leg Twisting (Root)
return


F20::				; Press Mouse Button 8  to assist and debuff Body
	Send, {-}		; Assist
	Send, {o}		; Banish Immunities (50% Body Debuff)
return


F21::				; Press Mouse Button 9 to AoE Disease
	Send, {m}		; Cursed Soul (AoE Disease)
return


F22::				; Press Mouse Button 10 to MoC
	Send, {f10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above