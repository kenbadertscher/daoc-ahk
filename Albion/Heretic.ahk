#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Heretic Spec information:		
; Master Level:					Banelord
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Rear Stun
	Send, {Up}		; Equip Flail (1h slot)
	Send, {f1}		; Paralyze (6 sec Rear Stun)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {f10}		; Demoralization (Banelord)
return


F14::				; Press Mouse Button 2 for Side Stun
	Send, {Up}		; Equip Flail (1h slot)
	Send, {f2}		; Mangle (8 sec Side Stun)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {f10}		; Demoralization (Banelord)
return


F15::				; Press Mouse Button 3 for UI DD Ramp & Cure Poison
	Send, {Down}	; Equip Mace (2h slot)
	Send, {f3}		; Torrential Blaze (170% UI DD Ramp)
	Send, {p}		; Cure Poison
return


F16::				; Press Mouse Button 4 for DD Snare Ramp & Major Heal
	Send, {Down}	; Equip Mace (2h slot)
	Send, {[}		; Greater Reconstruction (Greater Heal)
	Send, {f4}		; Blazing Flood (400% DD Snare Ramp)
return


F17::			; Press Mouse Button 5 for AoE Ramp & Cure Disease
	Send, {Down}		; Equip Mace (2h slot)
	Send, {f5}		; Lava Avalanche (AoE 400% DD / Snare Ramp)
	Send, {j}		; Cure Disease
return


F18::			; Press Mouse Button 6 for Combat Debuff
	Send, {Down}		; Equip Mace (2h slot)
	Send, {f6}		; Destructive Cocoon (Combat Debuff Ramp)
return


F19::			; Press Mouse Button 7 for AoE Stun 
	Send, {Up}		; Equip Flail (1h slot)
	Send, {f7}		; Diamondback (Anytime Taunt)
return


F20::			; Press Mouse Button 8 for Engage
	Send, {f8}		; Engage
return


F21::			; Press Mouse Button 9 for Str / Con Shear
	Send, {f9}		; Endowment Seize (Str / Con Shear)
return


F22::			; Press Mouse Button 10 for MoC
	Send, {F10}		; Mastery of Concentration
return


F23::			; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::			; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return



^F13::			; Press Ctrl + Mouse Button 1 for Minions of Zo & Rez
	Send, ^{f1}		; Minions of Zo (Bracer of Zo'Arkat)
	Sleep, 10
	Send, ^{i}		; Welcome from Valhalla
return


^F14::			; Press Ctrl + Mouse Button 2 for Shield Charge & PR
	Send, ^{f2}		; Demonic Wrath (Basalt Buckler of Oblivion)
	Sleep, 10
	Send, ^{o}		; Perfect Recovery (PR)
return


^F15::			; Ctrl + Mouse Button 3 is Unset

return


^F16::			; Press Ctrl + Mouse Button 4 for Insta AoE Mez
	Send, ^{f4}		; Pacifying Glare (Insta AoE Mez)
return


^F17::			; Press Ctrl + Mouse Buton 5 for Insta Mez
	Send, ^{f5}		; Pacifying Glance (Insta Mez)
return


^F18::			; Ctrl + Mouse Button 6 is Unset

return


^F19::			; Press Ctrl + Mouse Button 7 for Insta AoE Stun
	Send, ^{f7}		; Paralyzing Glare (Insta AoE Stun)
return


^F20::			; Press Ctrl + Mouse Button 8 for Insta Stun
	Send, ^{f8}		; Paralyzing Glance (Insta Stun)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above