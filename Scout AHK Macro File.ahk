#NoEnv            			; For performance and compatibility with future AutoHotkey releases.
#Warn                 			; Enable warnings to assist with detecting common errors.
SendMode Event            		; To make this work with Dark Age of Camelot. ("Input" does not seem to work well.)
SetWorkingDir %A_ScriptDir%	    	; Ensures a consistent starting directory.
SetTitleMatchMode, 2        		; Match parts of the window title.
#IfWinActive Dark Age of Camelot	; Only let this script affect DAoC
#SingleInstance Force			; Skips the dialog box for relaunching the script after an edit

; This script is built for an Albion Scout, Realm Rank 4, Specializations 50 Archery, 42 Shield, 37 Stealth, 18 Thrust


^!r::Reload		; Reload the script using Ctrl+Alt+R


F13::			; Press Mouse Button 1 for Bola Shot (Root)
	Send, {Up}	; Equip ranged weapon
	Send, {F5}	; Bola Shot (Root)
return


F14::			; Press Mouse Button 2 for Patella Shot (Snare)
	Send, {Up}	; Equip ranged weapon
	Send, {F6}	; Patella Shot (Snare)
return

F15::			; Press Mouse Button 3 for Long Shot		
	Send, {Up}	; Equip ranged weapon
	Send, {F4}	; Long Shot
return


F16::			; Press Mouse Button 4 for Critical Shot 
	Send, {Up}	; Equip ranged weapon
	Send, {F1}	; Critical Shot
	Sleep, 10
	Send, {F3}	; Standard Shot
return


F17::			; Press Mouse Button 5 for Power Shot
	Send, {K}	; Demonic Wrath (Basalt Buckler of Oblivion /use1)
	Send, {Up}	; Equip ranged weapon
	Send, {F2}	; Power Shot
	Sleep, 10
	Send, {F3}	; Standard Shot
return


F18::			; Press Mouse Button 6 for Point Blank Shot
	Send, {Up}	; Equip ranged weapon
	Send, {F7}	; Point Blank Shot
return


F19::			; Press Mouse Button 7 for Mangle / Slam 
	Send, {Down}	; Equip 1-Handed weapon
	Send, {F8}	; Mangle (8-second Side Stun)
	Sleep, 10
	Send, {F9}	; Slam (5-second Anytime Stun)
return


F20::			; Press Mouse Button 8 for Block Style & Anytime
	Send, {Down}	; Equip 1-Handed weapon
	Send, {F10}	; Bash (7-second Block Stun)
	Sleep, 10
	Send, {o}	; Bloody Dance (Follow-up style to Puncture Anytime)
	Sleep, 10
	Send, {i}	; Puncture (Anytime Bleed style)
return


F21::			; Press Mouse Button 9 for Evade Style & Anytime
	Send, {Down}	; Equip 1-Handed weapon
	Send, {[}	; Wolftooth (Follow-up to Ratfang evade style)
	Sleep, 10
	Send, {p}	; Ratfang (Evade style, 16% Attack Speed Reduction)
	Sleep, 10
	Send, {o}	; Bloody Dance (Follow-up style to Puncture Anytime)
	Sleep, 10
	Send, {i}	; Puncture (Anytime Bleed style)
return


F22::			; Press Mouse Button 10 to Dismount and Stealth
	Send, {u}	; Mount
	Sleep, 5
	Send, {.}	; Stealth
return


F23::			; Press Mouse Button 11 for Assist
	Send, {-}	; Assist
return



F24::			; Press Mouse Button 12 for Engage
	Send, {Down}	; Equip 1-Handed weapon
	Send, {j}	; Engage (Substitute Attacks for increased Block chance)
return


#Include Group Target.ahk
