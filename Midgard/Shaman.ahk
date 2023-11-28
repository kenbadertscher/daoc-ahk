#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Shaman Spec information:  41 Aug, 26 Mend, 23 Cave
; Master Level:  	Perfecter
; CL Abilities:  	Resilience (Anytime Style), Focused Will (Mez Dampner), Focused Resolve (Root Dampner)
; Realm Abilities: 	RR5L5 buys Aug Dex to 386 (Usually Dex 5), Purge 3, VR 2, Ichor 1, MoC 1 - Then start putting points into AoM, Wild Healing, MoHealing, MoFocus
; Dex Breakpoints:	374 for 3.0 AoE Disease, 386 for 2.3 Major Heal, 392 for 2.4 Group Heal, 398 for 2.5 AoE Root


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for AoE DoT and Carapace
	Send, {f1}		; Spore Explosion (AoE DoT)
	Send, {Down}	; Regenerative Trance (Insta HoT)
	Send, {i}		; Caustic Carapace
return


F14::				; Press Mouse Button 2 for DoT and Spirit Shell
	Send, {f2}		; Fungal Blight (DoT)
	Send, {Down}	; Regenerative Trance (Insta HoT)
	Send, {o}		; Spirit Shell
return


F15::				; Press Mouse Button 3 for D/Q Shear and Cure NS
	Send, {f3}		; Agility Trunc (D/Q Shear)
	Send, {p}		; Clarifying Cleanse (Cure Nearsight)
return


F16::				; Press Mouse Button 4 for AoE Root and Greater Heal
	Send, {f4}		; Weed Field (AoE Root)
	Send, {Down}	; Regenerative Trance (Insta HoT)
	Send, {[}		; Greater Reparation (Greater Heal)
return


F17::				; Press Mouse Button 5 for Root and Cure Disease
	Send, {f5}		; Rotting Clench (Root)
	Send, {j}		; Cure Disease
return


F18::				; Press Mouse Button 6 for Bolt & DD
	Send, {Up}		; Fungal Thorn (Bolt)
	Send, {f6}		; Ancestor's Ruin (DD)
	Send, {k}		; Escape Hold (Deroot)
return


F19::				; Press Mouse Button 7 for AoE Disease and HoT
	Send, {f7}		; Plague Spores (AoE Disease)
	Send, {Down}	; Regenerative Trance (Insta HoT)
	Send, {l}		; Frigg's Elixir (HoT)
return


F20::				; Press Mouse Button 8 for Disease and Acuity Buff
	Send, {f8}		; Induce Disease
	Send, {;}		; Tribal Clarity (Acuity Buff)
return


F21::				; Press Mouse Button 9 for S/C Shear and Earthen Power
	Send, {f9}		; Potency Whack (Str Con Debuff)
	Send, {n}		; Earthen Power
return


F22::				; Press Mouse Button 10 for PBAOE Disease & Supress Wounds
	Send, {f10}		; Mold Blast (Insta PBAoE Disease)
	Send, {m}		; Supress Wounds (CL Ablative)
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
	Sleep, 10
	Send, {f8}		; Induce Disease
return


F24::				; Press Mouse Button 12 Target
	Send, {=}		; Target
return



^F13::				; Press Ctrl + Mouse Button 1 for Power Cost Debuff & Rez
	Send, ^{f1}		; Bane of Arcane (Power Cost Debuff)
	Send, ^{i}		; Remigration from Valhalla
return


^F14::				; Press Ctrl + Mouse Button 2 for Magic Damage Debuff & Cure Rez Sick
	Send, ^{f2}		; Supress Magic (Magic Damage Debuff)
	Send, ^{o}		; Restore the Soul (Cure Rez Sick)
return


^F15::				; Press Ctrl + Mouse Button 3 for Dex Shear
	Send, ^{f3}		; Dexterity Fragment (Dex Shear) 
	Send, ^{p}		; (Unset)
return


^F16::				; Press Ctrl + Mouse Button 4 for Heal Buff & Ichor
	Send, ^{f4}		; Ichor of the Deep
	Send, ^{[}		; Divine Intervention (DI)
return


^F17::				; Press Ctrl + Mouse Button 5 for Insta Root & Cure Root
	Send, ^{f5}		; Rotting Clench (Insta Root)
	Send, ^{j}		; Escape Hold (Cure Root)
return


^F18::				; Press Ctrl + Mouse Button 6 for Group Cure Disease
	Send, ^{f6}		; (Unset)
	Send, ^{k}		; Dispensation from Eir (Single Target Insta)
return


^F19::				; Press Ctrl + Mouse Button 7 for Endo Debuff
	Send, ^{f7}		; Waning Curse (Endo Debuff)
return


^F20::				; Press Ctrl + Mouse Button 8 for Melee Damage Debuff
	Send, ^{f8}		; Crumble Arms (Melee Damage Debuff)
return


^F21::				; Press Ctrl + Mouse Button 9 for Con Shear
	Send, ^{f9}		; Constitution Hash (Con Shear)
return


^F22::				; Press Ctrl + Mouse Button 10 for 2h Weapon & CL Style
	Send, ^{f10}	; 2h Weapon
	Send, ^{m}		; Resilience
return


^F23::				; Press Ctrl + Mouse Button 11 for Strength Shear
	Send, ^{-}		; Strength Shear
return


^F24::				; Press Ctrl + Mouse Button 12 for Acuity Shear
	Send, ^{=}		; Acuity Shear
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above