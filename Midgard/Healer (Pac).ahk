#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Pac Healer Spec information:  44 Pac, 31 Mend, 4 Aug
; Master Level:  	Sojourner
; CL Abilities:  	Resilience (Anytime Style), Focused Will (Mez Dampner), Focused Resolve (Root Dampner)
; Realm Abilities: 	RR6L0 buys Aug Dex to 374 (Usually Dex 5), Purge 3, PR 2, DI 2, MoC 1 - Then start putting points into AoM, Wild Healing, MoHealing, MoFocus
; Dex Breakpoints:	374 for 2.2 Greater Heal, 374 for 3.0 AoE Mez


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for AoE Amnesia
	Send, {Left}	; Groundset 2300
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {f1}		; Wake Oblivious (AoE Amnesia)
return


F14::				; Press Mouse Button 2 for Root
	Send, {Up}		; Groundset 1500
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {f2}		; Reject Advancement (Root)
	Send, {o}		; Cure Poison
return


F15::				; Press Mouse Button 3 for Amnesia & Cure Nearsight
	Send, {Left}	; Groundset 2300
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {f3}		; Wake Senseless (Target Amnesia)
	Send, {p}		; Cure Senses (Cure Nearsight)
return


F16::				; Press Mouse Button 4 for AoE Mez and Greater Heal
	Send, {Up}		; Groundset 1500
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {m}		; Divine Intervention
	Send, {f4}		; Tranquilize Area (AoE Mez)
	Send, {n}		; Restorative Surge (Pac Insta Heal)
	Send, {[}		; Greater Reconstruction (Greater Heal)
return


F17::				; Press Mouse Button 5 for Mez and Cure Disease
	Send, {Up}		; Groundset 1500
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {f5}		; Greater Entrancement (Mez)
	Send, {j}		; Cure Disease
return


F18::				; Press Mouse Button 6 for Cure Mez
	Send, {Up}		; Groundset 1500
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {k}		; Cleanse Mind (Cure Mez)
return


F19::				; Press Mouse Button 7 for AoE Stun
	Send, {Up}		; Groundset 1500
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {f7}		; Nullify Charge (AoE Stun)
return


F20::				; Press Mouse Button 8 for Stun
	Send, {Up}		; Groundset 1500
	Send, {Down}	; Equip 1h Weapon Slot
	Send, {f8}		; Halt Invasion (Stun)
return


F21::				; Press Mouse Button 9 for Atk Speed Debuff
	Send, {f9}		; Block Spirit (Atk Spd Debuff)
return


F22::				; Press Mouse Button 10 for MoC
	Send, {F10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return



^F13::				; Press Ctrl + Mouse Button 1 for Minions of Zo & Rez
	Send, ^{f1}		; Minions of Zo (Bracer of Zo'Arkat)
		Sleep, 10
	Send, ^{i}		; Welcome from Valhalla
return

^F14::				; Press Ctrl + Mouse Button 2 for Shield Charge & PR
	Send, ^{f2}		; Demonic Wrath (Basalt Buckler of Oblivion)
		Sleep, 10
	Send, ^{o}		; Perfect Recovery (PR)
return

^F15::				; Press Ctrl + Mouse Button 3 for CL Snare Nuke
	Send, ^{f3}		; Soul Entrapment (CL Snare Nuke)
return

^F16::				; Press Ctrl + Mouse Button 4 for Insta AoE Mez
	Send, ^{f4}		; Pacifying Glare (Insta AoE Mez)
return

^F17::				; Press Ctrl + Mouse Buton 5 for Insta Mez
	Send, ^{f5}		; Pacifying Glance (Insta Mez)
return

^F18::				; Press Ctrl + Mouse Button 6 for CL DD
	Send, ^{f6}		; Spirit Burst (Spirit CL DD)
return

^F19::				; Press Ctrl + Mouse Button 7 for Insta AoE Stun
	Send, ^{f7}		; Paralyzing Glare (Insta AoE Stun)
return

^F20::				; Press Ctrl + Mouse Button 8 for Insta Stun
	Send, ^{f8}		; Paralyzing Glance (Insta Stun)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above