#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Minstrel Spec information:		50 Instruments, 39 Slash, 21 Stealth
; Master Level:						Sojourner
; CL Abilities:						
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Celerity
	Send, {.}		; Equip Harp
	Send, {i}		; Song of Everlasting Fervor (Celerity)
return


F14::				; Press Mouse Button 2 for Magic Resists
	Send, {.}		; Equip Harp
	Send, {o}		; Song of Spell Invulnerability (Magic Resists)
return


F15::				; Press Mouse Button 3 for Range Buff
	Send, {.}		; Equip Harp
	Send, {p}		; Song of Sorcerous Reach (Range Buff)
return


F16::				; Press Mouse Button 4 for Snare Style
	Send, {,}		; Equip Weapon
	Send, {f1}		; Back Slash (Rear Snare)
	Send, {f2}		; Side Slicer (Side Style)
return


F17::				; Press Mouse Button 5 for Block Reactional
	Send, {,}		; Equip Weapon
	Send, {f4}		; Befuddler (Stun, Block Follow up)
	Send, {f3}		; Riposte (ASR, Block Style)
	Send, {f4}		; Befuddler (Stun, Block Follow up)
	Send, {f5}		; Amethyst Slash (Anytime)
return


F18::				; Press Mouse Button 6 for Demez & Nuke
	Send, {f6}		; Lesser Rock Blast (CL Nuke)
	Send, {k}		; Focusing Chant (Demez)
return


F19::				; Press Mouse Button 7 for Disease & Target Heal
	Send, {f7}		; Diseased Spirit (CL Disease)
	Send, {l}		; Lesser Renewal (CL Heal)
return


F20::				; Press Mouse Button 8 for DoT
	Send, {f8}		; Degrade Spirit (CL DoT)
return


F21::				; Press Mouse Button 9 for DD Snare
	Send, {f9}		; Rock Blast (CL DD Snare)
return


F22::				; Press Mouse Button 10 for Song Mez
	Send, {.}		; Equip Harp
	Send, {f10}		; Commanding Cadence (Song Mez)
return


F23::				; Press Mouse Button 11 for Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 for Purge
	Send, {=}		; Purge
return



^F13::				; Press Ctrl + Mouse Button 1 for Pet Passive
	Send, ^{f1}		; Pet Passive
	Send, ^{f2}		; Pet Follow
return


^F14::				; Press Ctrl + Mouse Button 2 for Pet Attack
	Send, ^{f3}		; Pet Attack
return


^F15::				; Press Ctrl + Mouse Button 3 for Pet Go Target
	Send, ^{f1}		; Pet Passive
	Send, ^{f4}		; Go Target
return


^F16::				; Press Ctrl + Mouse Button 4 for Ichor
	Send, ^{f4}		; Ichor of the Deep
return


^F17::				; Press Ctrl + Mouse Button 5 for RR5 Mez
	Send, ^{f5}		; Calming Notes (RR5 Mez)
return


^F18::				; Press Ctrl + Mouse Button 6 for Seigebreaker
	Send, ^{f6}		; Seigebreaker
return


^F19::				; Press Ctrl + Mouse Button 7 for Buckler Snare
	Send, ^{f7}			; Demonic Wrath (Buckler Snare)
return


^F22::				; Press Ctrl + Mouse Button 10 for AoE Mez
	Send, ^{f10}	; Enrapturing Lullaby (AoE Mez)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above