#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Cleric Spec information:		40 Enhance, 32 Rejuv, 16 Smite
; Master Level:					Perfecter
; CL Abilities:					Resilience (Anytime Style), Focused Will (Mez Dampner), Focused Resolve (Root Dampner)
; Realm Abilities:				
; Dex Breakpoints:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for PBAoE Mez
	Send, {f1}		; Heavenly Mirage (PBAoE Mez)
return


F14::				; Press Mouse Button 2 for Cure Poison and Rez
	Send, {i}		; Reincarnate (Rez)
	Send, {o}		; Cure Poison
return


F15::				; Press Mouse Button 3 for D/Q Shear and Cure NS
	Send, {f3}		; Deftness Usurp (D/Q Shear)
	Send, {p}		; Purify Senses (ML Cure Nearsight)
return


F16::				; Press Mouse Button 4 for Mez and Greater Heal
	Send, {f4}		; Graceful Slumber (Mez)
	Send, {[}		; Greater Reparation (Greater Heal)
	Send, {l}		; Holy Light (mini Insta Heal)
return


F17::				; Press Mouse Button 5 for Stun and Cure Disease
	Send, {f5}		; Stunning Aura (Stun)
	Send, {j}		; Cure Disease
return


F18::				; Press Mouse Button 6 for DD & Cure Root
	Send, {f6}		; Supreme Judgement (DD)
	Send, {k}		; Blessing of Movement (Cure Root)
return


F19::				; Press Mouse Button 7 for PBAoE Snare
	Send, {f7}		; Blessed Deliverance (PBAoE Snare)
	Send, {m}		; Suppress Wounds (CL Ablative)
return


F20::				; Press Mouse Button 8 for Cloak Minions
	Send, {f8}		; Minions of Golestandt
return


F21::				; Press Mouse Button 9 for S/C Shear
	Send, {f9}		; Potency Whack (Str Con Debuff)
return


F22::				; Press Mouse Button 10 for MoC
	Send, {f10}		; Mastery of Concentration
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Purge
return



^F13::              ; Press Ctrl + Mouse Button 1 for PR
    Send, ^{i}		; Perfect Recovery
return


^F14::              ; Press Ctrl + Mouse Button 2 for Acuity Shear
    Send, ^{f2}		; Piety Sequester
return


^F15::              ; Press Ctrl + Mouse Button 3 for Dex Shear
    Send, ^{f3}		; Dexterity Fragment (Dex Shear)
return


^F16::              ; Press Ctrl + Mouse Button 4 for Insta Target Heal
    Send, ^{[}      ; Boon of the Heavens (Target Insta Heal)
return


^F17::              ; Press Ctrl + Mouse Button 5 for Insta Group Heal
    Send, ^{j}		; Beautified Remedy (Group Insta Heal)
return


^F19::              ; Press Ctrl + Mouse Button 7 for Cloak Dragons
    Send, ^{f7}		; Minions of Golestandt (Loyalty Cloak use1)
return


^F20::              ; Press Ctrl + Mouse Button 8 for Str Shear
    Send, ^{f8}		; Brawn Appropriate (Con Shear)
return


^F21::              ; Press Ctrl + Mouse Button 9 for Con Shear
    Send, ^{f9}		; Embodiment Annex (Con Shear)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above