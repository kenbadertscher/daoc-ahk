#NoEnv										; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force						; Skips the dialog box for relaunching the script after an edit
#Warn                 						; Enable warnings to assist with detecting common errors.
#IfWinActive Dark Age of Camelot			; Only let this affect DAoC

SetTitleMatchMode, 2        				; Match parts of the window title.
SendMode Event            					; To make this work with DAoC. ("Input" does not seem to work well.)
SetKeyDelay, 18								; 18 milliseconds between keypresses

#include %A_ScriptDir%\..\GroupTarget.ahk	; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk		; Include SetQbinds.ahk from the directory above

^!r::Reload			; Reload the script using Ctrl+Alt+R

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Heretic Spec information:		
; Master Level:					Banelord
; CL Abilities:					
; Realm Abilities:				
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


F13::				; Press Mouse Button 1 for Rear Stun
	Send, {Up}		; Equip Flail (1h slot)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {f1}		; Paralyze (6 sec Rear Stun)
	Send, {m}		; Demoralization (Banelord)
return


F14::				; Press Mouse Button 2 for Side Stun
	Send, {Up}		; Equip Flail (1h slot)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {f2}		; Mangle (8 sec Side Stun)
	Send, {m}		; Demoralization (Banelord)
return


F15::				; Press Mouse Button 3 for DD Snare Ramp & Cure Poison
	Send, {Down}	; Equip Mace (2h slot)
	Send, {p}		; Cure Poison
	Send, {[}		; Blazing Flux (Level 10 DD Snare Ramp)
return


F16::				; Press Mouse Button 4 for Side Snare
	Send, {Up}		; Equip Flail (1h slot)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {f4}		; Cobra (Side Style Followup - 130 Heat DD and Heal for 30% dmg dealt)
	Send, {f5}		; Taipan (Side Style - 40% Snare for 23 Sec)
	Send, {f4}		; Cobra (Side Style Followup - 130 Heat DD and Heal for 30% dmg dealt)
	Send, {f3}		; Constrictor (Anytime)
return


F17::				; Press Mouse Button 5 for Rear Snare
	Send, {Up}		; Equip Flail (1h slot)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {f6}		; Boomslang (Rear Snare - 40% Snare for 19 sec)
	Send, {f3}		; Constrictor (Anytime)
	Send, {f6}		; Boomslang (Rear Snare - 40% Snare for 19 sec)
return


F18::				; Press Mouse Button 6 for Block Reactional
	Send, {Up}		; Equip Flail (1h slot)
	Send, {i}		; PBAoE Con Debuff
	Send, {o}		; PBAoE Str Debuff
	Send, {F7}		; Anaconda (Block Follow Up - 6 sec stun)
	Send, {F8}		; Tigersnake (Block Reactional - 22% ASR for 20 seconds)
	Send, {F7}		; Anaconda (Block Follow Up - 6 sec stun)
	Send, {f3}		; Constrictor (Anytime)
return


F19::				; Press Mouse Button 7 for AoE Snare Ramp & Heal
	Send, {Down}	; Equip Mace (2h slot)
	Send, {k}		; Major Renewal (Major Heal)
	Send, {j}		; Lava Spate (AoE DD Snare Ramp)
return


F20::			; Press Mouse Button 8 for Engage
	Send, {f9}		; Engage
return


F21::			; Press Mouse Button 9 for Str / Con Shear
	Send, {f10}		; Endowment Seize (Str / Con Shear)
return


F22::			; Press Mouse Button 10 for MoC
	Send, {F10}		; Mastery of Concentration
return


F23::			; Press Mouse Button 11 to Assist
	Send, {-}		; Assist
return


F24::			; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return



^F13::			; Press Ctrl + Mouse Button 1 for Minions of Zo & Rez
	Send, ^{f1}		; Minions of Zo (Bracer of Zo'Arkat)
	Sleep, 10
	Send, ^{i}		; Welcome from Valhalla
return


^F14::			; Press Ctrl + Mouse Button 2 for Shield Charge & PR
	Send, ^{f2}		; Demonic Wrath (Basalt Buckler of Oblivion)
	Sleep, 10
	Send, ^{o}		; Perfect Recovery (PR)
return


^F15::			; Ctrl + Mouse Button 3 is Unset

return


^F16::			; Press Ctrl + Mouse Button 4 for Insta AoE Mez
	Send, ^{f4}		; Pacifying Glare (Insta AoE Mez)
return


^F17::			; Press Ctrl + Mouse Buton 5 for Insta Mez
	Send, ^{f5}		; Pacifying Glance (Insta Mez)
return


^F18::			; Ctrl + Mouse Button 6 is Unset

return


^F19::			; Press Ctrl + Mouse Button 7 for Insta AoE Stun
	Send, ^{f7}		; Paralyzing Glare (Insta AoE Stun)
return


^F20::			; Press Ctrl + Mouse Button 8 for Insta Stun
	Send, ^{f8}		; Paralyzing Glance (Insta Stun)
return


Seconds(x,y) {
  Random, value, %x%, %y%
  Return value
}

^!F9:: 		; Press Ctrl + Alt + F9 to sprint in place
Loop
  {
    SendInput, {f down}	
    Sleep, % Seconds(10,20)
    SendInput, {f up}	; 
    Sleep, % Seconds(10000,20000)
 }
return

