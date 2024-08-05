#NoEnv									; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force					; Skips the dialog box for relaunching the script after an edit
#Warn                 					; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot		; Only let this affect DAoC


; Mauler Spec information:		50 Aura, 38 Mag, 35 Staff
; Master Level:					Battlemaster
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 18	; 18 milliseconds between keypresses

^!r::Reload			; Reload the script using Ctrl+Alt+R


F13::				    ; Press Mouse Button 1 to Powertap
	Send, {f5}		; Groundset 1750
	Send, {,}		  ; Aura of the Farseer
	Send, {f1}		; Gift of Perizor (Powertap)
return


F14::				    ; Press Mouse Button 2 to Root
	Send, {f5}		; Groundset 1750
	Send, {.}		  ; Aura of the Wildbull
	Send, {f1}		; Gift of Perizor (Root)
return


F15::				    ; Press Mouse Button 3 to Energy DD and cast Magic Damage Buff
	Send, {f6}		; Groundset 1500
	Send, {,}		  ; Aura of the Farseer
	Send, {f2}		; Gift of Hibernia (Energy DD)
	Send, {f3}		; Gift of Arasthai (10% Magic Damage Buff)
return

; //change to mouse button 4
F16::				    ; Press Mouse Button 4 to Side Stun w/ anytime backup
	Send, {o}		  ; Wildbull's Staff (Side Stun followup)
	Send, {i}		  ; Percussion (Side Stun)
	Send, {o}		  ; Wildbull's Staff (Side Stun followup)
	Send, {j}		  ; Focused Breach (3rd in Anytime Chain)
	Send, {[}		  ; Splintered Strike (2nd in Anytime Chain)
	Send, {p}		  ; Wild Swing (Anytime)
	Send, {up}	  ; Daring Blow (Insta DD)
	Send, {down}  ; Test of Mind (Insta Powertap)
return

; //change to mouse button 5
F17::				    ; Press Mouse Button 5 to Rear Stun w/ anytime backup
	Send, {k}	  	; Burning Cloud (Rear Stun)
	Send, {l}	  	; Jolting Staff (Anytime Followup)
	Send, {p}	  	; Wild Swing (Anytime)
	Send, {up}		; Daring Blow (Insta DD)
	Send, {down}	; Test of Mind (Insta Powertap)
return

; //change to mouse button 6
F18::				    ; Press Mouse Button 6 to use Evade style w/ anytime backup
	Send, {n}		  ; Turbid Staff (Anytime Followup)
	Send, {;}		  ; Ember Clip (Evade Style)
	Send, {p}		  ; Wild Swing (Anytime)
	Send, {up}		; Daring Blow (Insta DD)
	Send, {down}	; Test of Mind (Insta Powertap)
return

; // change to mouse button 7
F19::				    ; Press Mouse Button 7 to become a nukebot
	Send, {f6}		; Groundset 1500
	Send, {,}		  ; Aura of the Farseer
	Send, {f2}		; Gift of Hibernia (Energy DD)
return

; // change to mouse button 8
F20::				    ; Press Mouse Buttzon 8 to become an assist bot
	Send, {f6}    ; Groundset 1500
	Send, {-}		  ; Assist
	Send, {,}		  ; Aura of the Farseer
	Send, {f2}	  ; Gift of Hibernia (Energy DD)
return

; change to 9
F21::			      ; Press Mouse Button 9 to Amplify Melee Damage
	Send, {u}		  ; Faultfinder
	Send, {.}		  ; Aura of the Wildbull
	Send, {f4}	  ; Gift of Tegashrig (Evade Buff)
	Send, {f9}	  ; Essence Sear
	Send, {f8}	  ; Essence Flames
return

F22::				    ; Press Mouse Button 10 to cast Conversion Buff on myself
	Send, {y}		  ; Target self
		Sleep, 150
	Send, {left}	; Tegashrig's Negotiation (conversion buff)
		Sleep, 150
	Send, {tab}		; Target nearest enemy
	Send, {`}		  ; Target last attacker
return


F23::				    ; Presss Mouse Button 11 to Assist
	Send, {-}		  ; Assist 1
return


F24::				    ; Press Mouse Button 12 to Purge
	Send, {=}	  	; Purge
return



^F13::				  ; Hold Control and Press Mouse Button 1 to AoE Str Con Debuff
	Send, ^{f1}		; Dismiss Resolution (CL AoE Str/Con Debuff)
return


^F14::				  ; Hold Control and Press Mouse Button 2 to Taunt
	Send, ^{f2}		; Irreverent Gesture (Taunt Shout)
return


^F15::				  ; Hold Control and Press Mouse Button 3 to Str Debuff
	Send, ^{f3}		; Enervate Strength (CL Str Debuff)
return


^F16::			  	; Hold Control and Press Mouse Button 4 to Power Leak
	Send, ^{f4}		; Power Leak
return


^F17::				  ; Hold Control and Press Mouse Button 5 to Throw Weapon
	Send, ^{f5}		; Throw Weapon
return


^F18::				  ; Hold Control and Press Mouse Button 6 to Buff Shear
	Send, ^{f10}	; Essence Shatter
	Send, ^{f9}		; Essence Dampen
return
	

^F19::			  	; Hold Control and Press Mouse Button 7 to Cast Disease
	Send, ^{f7}		; Chaotic Affliction (CL Disease)
return


^F20::			  	; Hold Control and Press Mouse Button 8 to Cast DoT
	Send, ^{f8}		; Acidic Fog (CL DoT)
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above