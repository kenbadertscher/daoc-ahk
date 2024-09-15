#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Mauler Spec information:		42 Aura Manipulation, 41 Power Strikes, 30 Magnetism, 29 Fist Wrap
; Master Level:					Battlemaster
; CL Abilities:			
;	Elementalist:	Lesser Lava Bolt	
; 	Rogue: 			Suppress Wounds, Graceful Fall
; 	Acolyte: 		Lesser Renewal
; Realm Abilities @ RR12:
;   Actives:   		Purge 3, IP 3
;   Passives:  		Reflex Attack 5, MoPain 7, Det 6, AoM 5, Aug Str 2, MoFocus 2, LW 1
;
; Briton
; Stat Spread:  
; Str: 60 Base + 15 Starting + 45 from level + 113 Equipment + 155 Buff + Aug Str 3 for +12 = 400 Str
; Con: 60 Base + 2 Starting + 23 from level + 95 Equipment + 155 Buff = 335 Con
; Qui: 60 Base + 8 Starting + 15 from level + 75 Equipment + 93 Buff = 250 Qui


SetKeyDelay, 11		; 11 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				; Press Mouse Button 1 to Power Leak
return


F14::				; Press Mouse Button 2 to Matter Debuff
	Send, {;}		; Matter Debuff
return


F15::				; Press Mouse Button 3 to 
	Send, {Down}	; Aura of the Wildbull
	
return


F16::				; Press Mouse Button 4 to Side Stun
	Send, {F3}		; Level 15 Haymaker, Side Stun 5 Secs
	Send, {F2}		; Level 25 Eagle Strike, Anytime Follow Up 25% Snare 15 seconds
	Send, {F1}		; Level 8 Owl Strike, Anytime Taunt
	Send, {F3}		; Level 15 Haymaker, Side Stun 5 Secs
	Send, {F2}		; Level 25 Eagle Strike, Anytime Follow Up 25% Snare 15 seconds
	Send, {F10}		; Wintertime Dark Gift Charge, +50 to all stats and 10% immunity to melee dmg
	Send, {i}		; Test of Courage (Power Tap)
	Send, {o}		; Destructive Blow (DD)
return


F17::				; Press Mouse Buttzon 5 to Rear Snare
	Send, {F5}		; Level 29 Gut Shot, Rear Style Follow Up 75 hp power tap
	Send, {F4}		; Level 18 Wind Taker, Rear Style 40% Snare 15 seconds
	Send, {F2}		; Level 25 Eagle Strike, Anytime Follow Up 25% Snare 15 seconds
	Send, {F1}		; Level 8 Owl Strike, Anytime Taunt
	Send, {F5}		; Level 29 Gut Shot, Rear Style Follow Up 75 hp power tap
	Send, {F2}		; Level 25 Eagle Strike, Anytime Follow Up 25% Snare 15 seconds
	Send, {F10}		; Wintertime Dark Gift Charge, +50 to all stats and 10% immunity to melee dmg
	Send, {i}		; Test of Courage (Power Tap)
	Send, {o}		; Destructive Blow (DD)
return


F18::				; Press Mouse Button 6 to Evade Buff
	Send, {F7}		; Level 21 Rib Cracker, Front Style Follow Up 25 Matter Damage
	Send, {F6}		; Level 10 Heart Stopper, Front Style 25 hp power tap
	Send, {F2}		; Level 25 Eagle Strike, Anytime Follow Up 25% Snare 15 seconds
	Send, {F1}		; Level 8 Owl Strike, Anytime Taunt
	Send, {F7}		; Level 21 Rib Cracker, Front Style Follow Up 25 Matter Damage
	Send, {F6}		; Level 10 Heart Stopper, Front Style 25 hp power tap
	Send, {Up}		; Aura of the Farseer
	Send, {i}		; Test of Courage (Power Tap)
	Send, {o}		; Destructive Blow (DD)
	Send, {p}		; Gift of Renewal (Heal Proc Buff)
	Send, {[}		; Gift of TegaShrig (24% Evade Buff)
	Send, {j}		; Gift of Form (Parry Buff)
return


F19::				; Press Mouse Button 7 to Essence Flames
	Send, {F9}		; Essence Sear, Essence Flames Follow Up (Essence Debuff)
	Send, {F8}		; Essence Flames (Essence Dmg Proc Buff)
	Send, {k}		; Burdening Grasp of Februstos (Endo Drain)
return


F20::				; Press Mouse Button 8 to Buff Shear
	Send, {m}		; Essence Shatter, Essence Dampen Follow Up (Buff Shear)
	Send, {n}		; Essence Dampen (PBAOE D/Q Debuff Style)
	Send, {k}		; Burdening Grasp of Februstos (Endo Drain)
return


F21::				; Press Mouse Button 9 to Heal
	Send, {Down}	; Aura of the Wildbull
	Send, {l}		; Gift of Nethuni (Group HoT 50 every 3 seconds for 15 seconds)
	Send, {p}		; Gift of Renewal (Defensive Proc to regain 85 hp)
return


F22::				; Press Mouse Button 10 to cast Conversion Buff on myself
	Send, {y}		; Target self
		Sleep, 150
	Send, {left}	; Tegashrig's Mediation (conversion buff)
		Sleep, 150
	Send, {tab}		; Target nearest enemy
	Send, {`}		; Target last attacker
return


F23::				; Presss Mouse Button 11 to Assist
	Send, {-}		; Assist 1
return


F24::				; Press Mouse Button 12 to Purge
	Send, {=}		; Purge
return



^F13::				; Hold Control and Press Mouse Button 1 to AoE Str Con Debuff
	Send, ^{f1}		; Dismiss Resolution (CL AoE Str/Con Debuff)
return


^F14::				; Hold Control and Press Mouse Button 2 to Taunt
	Send, ^{f2}		; Irreverent Gesture (Taunt Shout)
return


^F15::				; Hold Control and Press Mouse Button 3 to Str Debuff
	Send, ^{f3}		; Enervate Strength (CL Str Debuff)
return


^F16::				; Hold Control and Press Mouse Button 4 to Power Leak
	Send, ^{f4}		; Power Leak
return


^F17::				; Hold Control and Press Mouse Button 5 to Throw Weapon
	Send, ^{f5}		; Throw Weapon
return


^F18::				; Hold Control and Press Mouse Button 6 to Buff Shear
	Send, ^{f10}	; Essence Shatter
	Send, ^{f9}		; Essence Dampen
return
	

^F19::				; Hold Control and Press Mouse Button 7 to Cast Disease
	Send, ^{f7}		; Chaotic Affliction (CL Disease)
return


^F20::				; Hold Control and Press Mouse Button 8 to Cast DoT
	Send, ^{f8}		; Acidic Fog (CL DoT)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above