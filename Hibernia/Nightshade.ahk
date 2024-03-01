#NoEnv									          ; For performance and compatibility with future AutoHotkey releases.
#SingleInstance Force				    	; Skips the dialog box for relaunching the script after an edit
#Warn                 				  	; Enable warnings to assist with detecting common errors.
SendMode Event            				; To make this work with DAoC. ("Input" does not seem to work well.)
SetTitleMatchMode, 2        			; Match parts of the window title.
#IfWinActive Dark Age of Camelot	; Only let this affect DAoC


; Spec information:		
; Master Level:					
; CL Abilities:					
; Realm Abilities:				


SetKeyDelay, 21		; 21 milliseconds between keypresses

^!r::Reload			  ; Reload the script using Ctrl+Alt+R


F13::				      ; Press Mouse Button 1 for Perforate Artery
	Send, {f1}	  	; Perforate Artery
return

F14::				      ; Press Mouse Button 2 for Creeping Death / Rib Separation
	Send, {Right}   ; Widow Venom (Disease Poison)
	Send, {f2}		  ; Creeping Death
	Send, {m}	    	; Lance of Night (Insta DD)
return

F15::			      	; Press Mouse Button 3 to Stealth and Perf
	Send {y}	    	; Dismount
	Send, {.}	    	; Stealth
	Send, {f1}		  ; Perforate Artery
return

F16::				      ; Press Mouse Button 4 for Pincer / Leaper
	Send, {f5}	  	; Leaper
	Send, {f4}	  	; Pincer
		Sleep, 20
	Send, {f5}	  	; Leaper
	Send, {f6}	  	; Meteor Shower
	Send, {m}	    	; Lance of Night (Insta DD)
return

F17::				      ; Press Mouse Button 5 for Side Stun
	Send, {f8}	  	; Ice Storm
	Send, {f9}		  ; Tempest
	Send, {f6}	  	; Meteor Shower
	Send, {m}		    ; Lance of Night (Insta DD)
return

F18::				      ; Press Mouse Button 6 for Evade Stun
	Send, {o}	     	; Twin Star 2
	Send, {i}		    ; Tornado
	Sleep, 20
	Send, {o}		    ; Twin Star 2
	Send, {f6}	  	; Meteor Shower
	Send, {m}		    ; Lance of Night (Insta DD)
return

F19::			        ; Mouse Button 7 is Unset
	Send, {f10}		  ; Midnight Strike (Casted DD)
return

F20::				      ; Mouse Button 8 is Unset
return

F21::				      ; Press Mouse Button 9 for Evade Armor Debuff Chain
	Send, {k}	    	; Achilles' Heel
	Send, {j}		    ; Hamstring
		Sleep, 20
	Send, {k}		    ; Achilles' Heel
	Send, {f6}	  	; Meteor Shower
	Send, {m}		    ; Lance of Night (Insta DD)
return

F22::				      ; Press Mouse Button 10 to Dismount and Stealth
	Send, {y}		    ; Mount
	Send, {.}		    ; Stealth
return

F23::				      ; Press Mouse Button 11 to Assist
	Send, {-}		    ; Assist
return

F24::				      ; Press Mouse Button 12 for Purge
	Send, {=}		    ; Purge
return


#include %A_ScriptDir%\..\GroupTarget.ahk		; Include GroupTarget.ahk from the directory above
#include %A_ScriptDir%\..\SetQBinds.ahk			; Include SetQbinds.ahk from the directory above