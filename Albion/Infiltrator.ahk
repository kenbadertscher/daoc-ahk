#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Pac Healer Spec information:  49 Envenom, 44 Dual Wield, 40 Stealth, 39 Critical Strike, 32 Slash
; Master Level:                 Battlemaster
; CL Abilities:  	            Damage Ward, Soldier's Anticipation, Surge of Chaos
; Realm Abilities: 	            Purge 3, Vanish 3, Mastery of Pain 9, Long Wind 1, Avoidance of Magic 5, Rest in Mastery of Stealth


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::			    ; Press Mouse Button 1 to Perf
	Send, {f1}	    ; Perforate Artery
	Send, {f}	    ; Sprint 
return


F14::			    ; Press Mouse Button 2 for Creeping Death
	Send, {right}	; Disease Poison
	Send, {f3}	    ; Rib Separation
	Send, {f2}	    ; Creeping Death
	    Sleep, 15
	Send, {f3}	    ; Rib Separation
return


F15::			    ; Press Mouse Button 3 for Dismount and Perf
	Send, {u}	    ; Dismount
	Send, {.}	    ; Stealth
	Send, {f1}	    ; Perforate Artery
return


F16::			    ; Press Mouse Button 4 for Pincer / Leaper
	Send, {f6}	    ; Leaper
	Send, {f5}	    ; Pincer
	    Sleep, 15
	Send, {f6}	    ; Leaper
	Send, {f4}	    ; Amethyst Slash
return


F17::			    ; Press Mouse Button 5 for Side Snare
	Send, {o}	    ; Shadow's Rain (Flank Followup)
	Send, {i}	    ; Flank (Side Snare)
	    Sleep, 15
	Send, {o}	    ; Shadow's Rain (Flank Followup)
	Send, {f4}	    ; Amethyst Slash
return


F18::			    ; Press Mouse Button 6 for Evade Stun
	Send, {[}	    ; Hypnotic Darkness (Evade Style Followup)
	Send, {p}	    ; Reflection (Evade Style)
	    Sleep, 15
	Send, {[}	    ; Hypnotic Darkness (Evade Style Followup)
	Send, {f4}	    ; Amethyst Slash
return


F19::			    ; Press Mouse Button 7 for Essence Flames
	Send, {m}	    ; Overwhelm (RR5 15% bonus to hit)
	Send, {n}	    ; Soldier's Retaliation (CL Parry Buff)
	Send, {f9}	    ; Arrogance (All stat buff, Topaz of the Harbinger /use)
	Send, {f10}	    ; Dark Sundering (ABS buff/debuff, Midsummer's Triumphant Wrap /use)
	Send, {down}	; Touch of Death (Con Debuff Poison)
	Send, {;}	    ; Essence Sear
	Send, {l}	    ; Essence Flames
	    Sleep, 15
	Send, {;}	    ; Essense Sear
return


F20::			    ; Press Mouse Button 8 for Buff Shear
	Send, {k}	    ; Essence Shatter
	Send, {j}	    ; Essence Dampen
	    Sleep, 15
	Send, {k}	    ; Essense Shatter
return


F21::			    ; Press Mouse Button 9 for Evade Chain (Abs Debuff)
	Send, {n}	    ; Soldier's Anticipation (CL Ability, 17% chance to parry)
	Send, {up}  	; Swordbreaker (Wp Skill Debuff Poison)
	Send, {f8}	    ; Achilles' Heel (Evade Style Followup)
	Send, {f7}	    ; Hamstring (Evade Style)
	    Sleep, 15
	Send, {f8}	    ; Acheilles' Heel (Evade Style Followup)
	Send, {f4}	    ; Amethyst Slash
return


F22::			    ; Press Mouse Button 10 to Dismount and Stealth
	Send, {u}	    ; Mount
	    Sleep, 15
	Send, {.}	    ; Stealth
return


F23::			    ; Press Mouse Button 11 to Assist
    Send, {-}		; Assist
return


F24::			    ; Press Mouse Button 12 for Purge
	Send, {b}	    ; Purge
return



^F13::			    ; Press Ctrl + Mouse Button 1 for Backstab 2
	Send, ^{f1}		; Backstab 2
return


^F14::			    ; Press Ctrl + Mouse Button 2 for Thigh Cut
	Send, ^{f2}		; Thigh Cut
	Send, ^{f3}		; Lance of Night (Insta DD)
return


^F15::			    ; Press Ctrl + Mouse Button 3 for Dismount and BS 2
	Send, ^{f3}	    ; Dismount
	Send, ^{f4}	    ; Stealth
	Send, ^{f1}	    ; Backstab 2
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above