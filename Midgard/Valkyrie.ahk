#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Spec:				47 Odin's Will, 42 Mending, 41 Spear, 10 Parry, 8 Shield
; ML Path:			Warlord	
;   Timer 1			Bolstering Battlecry (PBAoE 10% Omni Heal)
;   Timer 2 		Cowering Bellow (Pet Scare)
;   Timer 3 		~Guided Strike~ (10% Crit Chance), Resilient Will (5% enemy miss chance), Cleansing Aura (PBAoE DoT Dampner)
;   Timer 4 		~Energizing Aura~ (PBAoE 50% Fatigue Cost Discount), Defending Martyr (PBAoE Heal, costs 90% life)
;   Timer 5 		~Warguard~ (PBAoE Melee Damage Absorb), Leadership (15% level boost for damage variance)
; CL Abilities:		
;   Rogue			Spine Crack, Faded Quickness, Graceful Fall, Recoil
;   Seer			Force of the Abyss
; Realm Abilities @	RR9L8: 
;   Actives: 		Charge 5, Purge 3, IP 3, ST 1, 
;   Passives:		AoM 5, MoParry 5, Det 3, MoPain 2, WP 2, WH2, MoFocus 2, LW1


SetKeyDelay, 11		; 11 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to DD Dump
	Send, {j}		; Odin's Major Retribution (Cone Pulse DD)
	Send, {k}		; Valhalla's Disdain (Insta Cone DD)
	Send, {l}		; Odin's Greater Ram (Insta DD)
	Send, {j}		; Odin's Major Retribution (Cone Pulse DD) (turn off)
return


F14::				; Press Mouse Button 2 to Numb & Engage
	Send, {Down}	; Equip 1h Weapon
	Send, {;}		; Numb
	Send, {n}		; Engage
return


F15::				; Press Mouse Button 3 to Warlord Dump
	Send, {F7}		; Odin's Temperence (Group Ablative)
	Send, {F8}		; Guiding Strike (Warlord Crit Chance Increase, Timer 3)
	Send, {F9}		; Energizing Aura (Warlord Endo Redux, Timer 4)
	Send, {F10}		; Warguard (Warlord Melee Damage Dampner, Timer 5)
return


F16::				; Press Mouse Button 4 to Side Snare w/ anytime backup
	Send, {Up}		; Equip 2h Weapon
	Send, {f3}		; Perforate (Side Snare)
	Send, {f2}		; Roundhouse (200 Crush DD, Windmill Follow-up)
	Send, {f1}		; Windmill (Anytime)
	Send, {f3}		; Perforate (Side Snare)
return


F17::				; Press Mouse Button 5 to Rear Stun w/ anytime backup
	Send, {Up}		; Equip 2h Weapon
	Send, {f4}		; Razor Edge (Rear Stun)
	Send, {f2}		; Roundhouse (200 Crush DD, Windmill Follow-up)
	Send, {f1}		; Windmill (Anytime)
	Send, {f4}		; Razor Edge (Rear Stun)
return


F18::				; Press Mouse Button 6 to use Parry Style style w/ anytime backup
	Send, {Up}		; Equip 2h Weapon
	Send, {F5}		; Extend Reach (Parry Follow Up)
	Send, {F6}		; Return Thrust (Parry Style)
	Send, {F5}		; Extend Reach (Parry Follow Up)
	Send, {f2}		; Roundhouse (200 Crush DD, Windmill Follow-up)
	Send, {f1}		; Windmill (Anytime)
	Send, {F5}		; Extend Reach (Parry Follow Up)
	Send, {o}		; Faded Quickness (Champ Evade Buff)
return


F19::				; Press Mouse Button 7 to Spine Crack
	Send, {Down}	; Equip 1h Weapon
	Send, {i}		; Spine Crack
return


F20::				; Press Mouse Button 8 to 

return


F21::				; Press Mouse Button 9 to

return


F22::				; Press Mouse Button 10 for Charge
	Send, {m}		; Charge
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist 1
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return



#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above