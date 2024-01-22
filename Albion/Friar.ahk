#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Friar Spec information:		
; Master Level:					Perfectionistica 
; CL Abilities:					Best
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to use Group Evade Buff
	Send, {f1}		; Sharpness (Evade Buff)
return


F14::				; Press Mouse Button 2 to Taunt and Cure Poison
	Send, {f2}		; Infalame (Insta Taunt)
	Send, {o}		; Cure Poison
return

			
F15::				; Press Mouse Button 3 to Confuse and Cure NS
	Send, {F3}		; Confounding Cast (Confuse)
	Send, {p}		; Purify Senses (Cure NS)
return

			
F16::				; Press Mouse Button 4 to cast Greater Heal and Group HoT
	Send, {[}		; Greater Refection (Greater Heal)
	Send, {i}		; Divine Encouragement (Group HoT)
return

			
F17::				; Press Mouse Button 5 to Cure Disease
	Send, {j}		; Cure Disease
return


F18::				; Press Mouse Button 6 to Cure Mez
	Send, {k}		; Cure Mez
return


F19::				; Press Mouse Button 7 to Side Stun w/ anytime backup
	Send, {up}		; Ready Staff 
	Send, {f6}		; Double Strike (Side Stun)
	Send, {f5}		; Quick Strike (Anytime)
	Send, {f1}		; Sharpness (Evade Buff)
	Send, {f4}		; Prophet's Dogma (Heal Proc)
	Send, {i}		; Divine Encouragement (Group HoT)
return


F20::				; Press Mouse Button 8 to to Rear Snare w/ anytime backup
	Send, {up}		; Ready Staff
	Send, {f7}		; Friar's Friend (Rear Snare)
	Send, {f5}		; Quick Strike (Anytime)
	Send, {f1}		; Sharpness (Evade Buff)
	Send, {f4}		; Prophet's Dogma (Heal Proc)
	Send, {i}		; Divine Encouragement (Group HoT)
return


F21::				; Press Mouse Button 9 to use Parry style w/ anytime backup
	Send, {up}		; Ready Staff
	Send, {f8}		; Defender's Fury (Parry Style)
	Send, {f5}		; Quick Strike (Anytime)
	Send, {f1}		; Sharpness (Evade Buff)
	Send, {f4}		; Prophet's Dogma (Heal Proc)
	Send, {i}		; Divine Encouragement (Group HoT)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above