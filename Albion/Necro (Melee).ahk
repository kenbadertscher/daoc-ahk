#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Necro Spec information:		
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
	Send, {f3}		; Pet Attack
	Send, {f5}		; Summoning Mastery (ML9 Pet Buff)
	Send, {i}		; Cast Demon Horror (Insta Con Debuff)
return


F15::				; Press Mouse Button 3 to put Pet on Passive and set to Stay
	Send, {f1}		; Pet Passive
	Send, {f4}		; Pet Stay
return


F16::				; Press Mouse Button 4 to Side Style
	Send, {i}		; Sense Magic (Group Magic Conversion)
	Send, {f3}		; Icebringer (side style - disease)
	Send, {f2}		; Chilling Touch (anytime followup)
	Send, {f1}		; Villianous Strike (anytime)
		Sleep 5
	Send, {f3}		; Icebringer (side style - disease)
	Send, {f2}		; Chilling Touch (anytime followup)
return


F17::				; Press Mouse Button 5 to PBAoE
	Send, {i}		; Cast Demon Horror (Insta Con Debuff)
	Send, {p}		; Power Absorb (Insta Powertap)
	Send, {n}		; Channeled Rage (PvP only PBAoE)
return


F18::				; Press Mouse Button 6 for AF Debuff
	Send, {l}		; Glimpse of Death (AF Debuff)
return


F19::				; Press Mouse Button 7 to AoE DoT
	Send, {i}		; Cast Demon Horror (Insta Con Debuff)
	Send, {o}		; Unholy Ground (Insta AoE Disease field)
	Send, {p}		; Power Absorb (Insta Powertap)
	Send, {k}		; Infinite Death (AoE DoT)
return


F20::				; Press Mouse Button 8 to Root
	Send, {i}		; Cast Demon Horror (Insta Con Debuff)
	Send, {p}		; Power Absorb (Insta Powertap)
	Send, {;}		; Superior Body Lock (Single Target Root)
return


F21::				; Press Mouse Button 9 to assist and AF debuff
	Send, {-}		; Assist 1
	Send, {l}		; Glimpse of Death (AF Debuff)
return


F22::				; Press Mouse Button 10 to MOC
	Send, {f10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist 1
return


F24::				; Press Mouse Button 12 to Purge
	Send, {f8}		; Purge
return


^F19::				; Hold Ctrl and Press Mouse Button 7 to DoT
	Send, ^{k}		; Locust Swarm (DoT)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above