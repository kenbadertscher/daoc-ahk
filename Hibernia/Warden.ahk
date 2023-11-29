#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Warden Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 for Celerity
	Send, {F1}		; Pure Celerity
return


F14::
return


F15::				; Press Mouse Button 3 for Confuse and Cure Nearsight
	Send, {F3}		; Confounding Cast (Confuse)
		Sleep 10
	Send, {p}		; Purify Senses (Cure NS)
return


F16::				; Press Mouse Button 4 for Greater Heal
	Send, {[}		; Greater Renascence (Greater Heal)
	Send, {o}		; Nature's Invigoration (Group HoT)
return


F17::				; Press Mouse Button 5 for Cure Disease
	Send, {j}		; Cure Disease
return


F18::
return


F19::				; Press Mouse Button 7 for Side Snare
	Send, {f6}		; Auroric Blade (Follow up)
	Send, {f5}		; Glowing Blade (Side Snare)
		Sleep, 20
	Send, {f6}		; Auroric Blade (Follow up)
	Send, {f4}		; Fire Blade (Anytime)
return


F20::				; Press Mouse Button 8 for Rear Stun
	Send, {f7}		; Paralyze (Rear Stun)
	Send, {f4} 		; Fire Blade (Anytime)
return


F21::				; Press Mouse Button 9 for Parry Chain
	Send, {f9}		; Auroric Blade (Follow up)
	Send, {f8}		; Glowing Blade (Side Snare)
		Sleep, 20
	Send, {f9}		; Auroric Blade (Follow up)
	Send, {f4}		; Fire Blade (Anytime)
return


F22::				; Press Mouse Button 10 for Self Heal Proc
	Send, {f10}		; Nature's Steward (Self Heal Proc)
return


F23::				; Press Mouse Button 11 for Assist
	Send, {=}
return

F24::
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above