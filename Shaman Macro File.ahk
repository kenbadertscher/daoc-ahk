#NoEnv            			; For performance and compatibility with future AutoHotkey releases.
#Warn                 			; Enable warnings to assist with detecting common errors.
SendMode Event            		; To make this work with DAoC. ("Input" does not seem to work well.)
SetWorkingDir %A_ScriptDir%	    	; Ensures a consistent starting directory.
SetTitleMatchMode, 2        		; Match parts of the window title.
#IfWinActive Dark Age of Camelot	; Only let this affect DAoC
#SingleInstance Force			; Skips the dialog box for relaunching the script after an edit

; Reload the script using Ctrl+Alt+R
^!r::Reload

; 	AoE DoT and Carapace
F13::
Send, {f1}				; Spore Explosion (AoE DoT)
Send, {Down}				; Regenerative Trance (Insta HoT)
Send, {i}				; Caustic Carapace
return

; 	DoT and Spirit Shell
F14::
Send, {f2}				; Fungal Blight (DoT)
Send, {Down}				; Regenerative Trance (Insta HoT)
Send, {o}				; Spirit Shell
return

; 	D/Q Shear and Cure NS
F15::
Send, {f3}				; Agility Trunc (D/Q Shear)
Send, {p}				; Clarifying Cleanse (Cure Nearsight)
return

; 	AoE Root and Greater Heal
F16::
Send, {f4}				; Weed Field (AoE Root)
Send, {Down}				; Regenerative Trance (Insta HoT)
Send, {[}				; Greater Reparation (Greater Heal)
return

; 	Root and Cure Disease
F17::
Send, {f5}				; Rotting Clench (Root)
Send, {j}				; Cure Disease
return

;	Bolt & DD
F18::
Send, {Up}				; Fungal Thorn (Bolt)
Send, {f6}				; Ancestor's Ruin (DD)
Send, {k}				; Escape Hold (Deroot)
return

;	AoE Disease and HoT
F19::	
Send, {f7}				; Plague Spores (AoE Disease)
Send, {Down}				; Regenerative Trance (Insta HoT)
Send, {l}				; Frigg's Elixir (HoT)
return

;	Disease and Acuity Buff
F20::
Send, {f8}				; Induce Disease
Send, {;}				; Tribal Clarity (Acuity Buff)
return

;	S/C Shear and Earthen Power
F21::
Send, {f9}				; Potency Whack (Str Con Debuff)
Send, {n}				; Earthen Power
return

;	PBAOE Disease & Supress Wounds
F22::
Send, {f10}				; Mold Blast (Insta PBAoE Disease)
Send, {m}				; Supress Wounds (CL Ablative)
return

;	Assist
F23::
Send, {-}				; Assist
Sleep, 10
Send, {f8}				; Induce Disease
return

;	Target
F24::
Send, {=}				; Target
return

; 	Power Cost Debuff & Rez
^F13::
Send, ^{f1}				; Bane of Arcane (Power Cost Debuff)
Send, ^{i}				; Remigration from Valhalla
return

; 	Magic Damage Debuff & Cure Rez Sick
^F14::
Send, ^{f2}				; Supress Magic (Magic Damage Debuff)
Send, ^{o}				; Restore the Soul (Cure Rez Sick)
return

;	Dex Shear
^F15::
Send, ^{f3}				; Dexterity Fragment (Dex Shear) 
Send, ^{p}				; (Unset)

; 	Heal Buff & Ichor
^F16::
Send, ^{f4}				; Ichor of the Deep
Send, ^{[}				; Divine Intervention (DI)
return

; 	Insta Root & Cure Root
^F17::
Send, ^{f5}				; Rotting Clench (Insta Root)
Send, ^{j}				; Escape Hold (Cure Root)
return

;	Group Cure Disease
^F18::
Send, ^{f6}				; (Unset)
Send, ^{k}				; Dispensation from Eir (Single Target Insta)
return

;	Endo Debuff
^F19::
Send, ^{f7}				; Waning Curse (Endo Debuff)
return

;	Melee Damage Debuff
^F20::
Send, ^{f8}				; Crumble Arms (Melee Damage Debuff)
return

;	Con Shear
^F21::
Send, ^{f9}				; Constitution Hash (Con Shear)
return

;	2h Weapon & CL Style
^F22::
Send, ^{f10}				; 2h Weapon
Send, ^{m}				; Resilience
return


;	Strength Shear
^F23::
Send, ^{-}				; Strength Shear
return

;	Acuity Shear
^F24::
Send, ^{=}				; Acuity Shear
return




!F13::			;Target #5
	Send, !{j}
return

!F14::			;Target #1
	Send !{i}
return

!F15::			; Unset
return

!F16::			;Target #6
	Send !{k}
return

!F17::			;Target #2
	Send !{o}
return

!F18::			; Unset
return

!F19::			;Target #7
	Send !{l}
return

!F20::			;Target #3
	Send !{p}
return

!F21::			; Unset
return

!F22::			;Target #8
	Send !{;}
return

!F23::			;Target #4
	Send !{[}
return

!F24::			; Unset
return
