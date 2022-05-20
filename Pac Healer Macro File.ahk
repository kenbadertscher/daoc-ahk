#NoEnv            			; For performance and compatibility with future AutoHotkey releases.
#Warn                 			; Enable warnings to assist with detecting common errors.
SendMode Event            		; To make this work with DAoC. ("Input" does not seem to work well.)
SetWorkingDir %A_ScriptDir%	    	; Ensures a consistent starting directory.
SetTitleMatchMode, 2        		; Match parts of the window title.
#IfWinActive Dark Age of Camelot	; Only let this affect DAoC
#SingleInstance Force			; Skips the dialog box for relaunching the script after an edit

; This script is build for a Midgard Healer, Specializations 40 Pacification, 36 Mending


F13::			; Press Mouse Button 1 for AoE Amnesia
	Send, {f1}	; Wake Oblivious (AoE Amnesia)
return


F14::			; Press Mouse Button 2 for Root
	Send, {f2}	; Reject Advancement (Root)
return


F15::			; Press Mouse Button 3 for Confusion & Cure Nearsight
	Send, {f3}	; Confounding Cast (Confusion)
	Sleep, 10
	Send, {p}	; Cure Sight (Cure Nearsight)
return


F16::			; Press Mouse Button 4 for AoE Mez and Greater Heal
	Send, {f4}	; Harmonize Area (AoE Mez)
	Sleep, 10
	Send, {o}	; Healing Surge (Pac Insta Heal)
	Send, {[}	; Greater Restoration (Greater Heal)
return


F17::			; Press Mouse Button 5 for Mez and Cure Disease
	Send, {f5}	; Greater Entrancement (Mez)
	Sleep, 10
	Send, {j}	; Cure Disease
return


F18::			; Press Mouse Button 6 for Cure Mez
	Send, {k}	; Cleanse Mind (Cure Mez)
return


F19::			; Press Mouse Button 7 for AoE Stun
	Send, {f7}	; Interrupt Charge (AoE Stun)
return


F20::			; Press Mouse Button 8 for Stun
	Send, {f8}	; Halt Invasion (Stun)
return


F21::			; Press Mouse Button 9 for Atk Speed Debuff
	Send, {f9}	; Block Spirit (Atk Spd Debuff)
return


F22::			; Press Mouse Button 10 for Supress Wounds
	Send, {F10}	; Supress Wounds (Champion Level Ablative)
return


F23::			; Press Mouse Button 11 for Assist
	Send, {-}	; Assist
return


F24::			; Press Mouse Button 12 for Purge
	Send, {=}	; Purge
return


^F13::			; Hold Control and press Mouse Button 1 to use Minions of Zo & Rez
	Send, ^{f1}	; Minions of Zo (Bracer of Zo'Arkat)
	Sleep, 10
	Send, ^{i}	; Remigration from Valhalla
return


^F14::			; Hold Control and press Mouse Button 2 to use Shield Snare & PR
	Send, ^{f2}	; Demonic Wrath (Basalt Buckler of Oblivion)
	Sleep, 10
	Send, ^{o}	; Perfect Recovery (PR)
return


^F15::			; Hold Control and press Mouse Button 3 to use Divine Intervention
	Send, ^{f3}	; (Unset)
	Sleep, 10
	Send, ^{p}	; Divine Intervention
return


^F16::			; Hold Control and press Mouse Button 4 to use Insta AoE Mez
	Send, ^{f4}	; Pacifying Glare (Insta AoE Mez)
return


^F17::			; Hold Control and press Mouse Button 5 to use Insta Mez
	Send, ^{f5}	; Pacifying Glance (Insta Mez)
return


^F18::			; Hold Control and press Mouse Button 6 to use Single Target Insta Heal
	Send, ^{f6}	; (Unset)
	Sleep, 10
	Send, ^{k}	; Dispensation from Eir (Target Insta Heal)
return


^F19::			; Hold Control and press Mouse Button 7 to use Insta AoE Stun
	Send, ^{f7}	; Paralyzing Glare (Insta AoE Stun)
	Sleep, 10
	Send, ^{l}	; (Unset)
return


^F20::			; Hold Control and press Mouse Button 8 to use Insta Stun
	Send, ^{f8}	; Paralyzing Glance (Insta Stun)
	Sleep, 10
	Send, ^{;}	; (Unset)
return


^F21::			; Hold Control and press Mouse Button 9 to use Group Insta Heal
	Send, ^{f9}	; (Unset)
	Sleep, 10
	Send, ^{n}	; Eir's Magnificent Touch (Group Insta Heal)
return


^F22::			; Hold Control and press Mouse Button 10 to equip 2h Weapon & use CL Style
	Send, ^{f10}	; Equip 2-handed Weapon
	Sleep, 10
	Send, ^{m}	; Resilience (Champion Level Anytime)
return


#Include Group Target.ahk
