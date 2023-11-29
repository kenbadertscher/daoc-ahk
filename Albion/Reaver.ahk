#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Reaver Spec information:		
; Master Level:					Banelord
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18		; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to Side Stun
	Send, {f1}		; Mangle (Side Stun)
return


F14::				; Press Mouse Button 2 to Rear Stun
	Send, {f2}		; Paralyze (Rear Stun)
return


F15::				; Press Mouse Button 3 to Numb
	Send, {f3}		; Numb (Anytime Stun)
return


F16::				; Press Mouse Button 4 for Side Style
	Send, {i}		; Banespike
	Send, {[}		; Faded Quickness
	Send, {f4}		; Cobra (Side Follow-up, 130 DD)
	Send, {f5}		; Taipan (Side Style, Snare)
		Sleep, 24
	Send, {f4}		; Cobra (Side Follow-up, 130 DD)
	Send, {f6}		; Constrictor (Anytime, 45 DD)
return


F17::				; Press Mouse Button 5 for Rear Style
	Send, {i}		; Banespike
	Send, {[}		; Faded Quickness
	Send, {f7}		; Leviathan (Rear Style, 113 DD)
		Sleep, 24
	Send, {f6}		; Constrictor (Anytime, 45 DD)
	Send, {f7}		; Leviathan (Rear Style, 113 DD)
return


F18::				; Press Mouse Button 6 for Parry Stun Chain
	Send, {i}		; Banespike
	Send, {[}		; Faded Quickness
	Send, {f8}		; Anaconda (Parry Follow-up, 8 Sec Stun)
	Send, {f9}		; Tigersnake (Pary Style, ASR)
		Sleep, 24
	Send, {f8}		; Anaconda (Parry Follow-up, 8 Sec Stun)
	Send, {f10}		; Python (Anytime, Str Debuff)
return


F19::				; Mouse Button 7 to Engage
	Send, {p}		; Engage
return


F20::				; Mouse Button 8 for DD dump
	Send, {2}		; Soul Drain
	Send, {3}		; Life Siphon
	Send, {4}		; Soul Venom
	Send, {;}		; Shattering Aura (PBAE DD Chant)
	Send, {n}		; Circle of Despair (Insta PBAE)
return


F21::				; Mouse Button 9 for Reaver Bomb
	Send, {tab}		; Target Nearest Enemy
	Send, {r}		; Face
	Send, {Up}		; Groundset 0
	Send, {k}		; Agony Transmission
	Send, {l}		; Soul Quench (RR5)
	Send, {j}		; Primal Agony
	Send, {m}		; Thornweed Field
	Send, {2}		; Soul Drain
	Send, {3}		; Life Siphon
	Send, {4}		; Soul Venom
	Send, {;}		; Shattering Aura (PBAE DD Chant)
	Send, {n}		; Circle of Despair (Insta PBAE)
return


F22::				; Mouse Button 10 for Charge
	Send, {o}		; Charge
return


F23::				; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above