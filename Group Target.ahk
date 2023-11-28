﻿
; This script is used to target 8 group members when the group target window is arranged as a rectangle of 2 rows and 4 columns.
; Mouse buttons 3, 6, 9, and 12 correspond with F15, F18, F21, and F24, and are unset.

!F13::			; Hold Alt and Press Mouse Button 1 to target Group Member # 5
	Send, !{j}	; Target Group Member #5
return

!F14::			; Hold Alt and Press Mouse Button 2 to target Group Member # 1
	Send !{i}	; Target Group Member #1
return


!F16::			; Hold Alt and Press Mouse Button 4 to target Group Member # 6
	Send !{k}	; Target Group Member #6
return

!F17::			; Hold Alt and Press Mouse Button 5 to target Group Member # 2
	Send !{o}	; Target Group Member #2
return



!F19::			; Hold Alt and Press Mouse Button 7 to target Group Member # 7
	Send !{l}	; Target Group Member #7
return

!F20::			; Hold Alt and Press Mouse Button 8 to target Group Member # 3
	Send !{p}	; Target Group Member #3
return



!F22::			; Hold Alt and Press Mouse Button 10 to target Group Member # 8
	Send !{;}	; Target Group Member #8
return

!F23::			; Hold Alt and Press Mouse Button 11 to target Group Member # 4
	Send !{[}	; Target Group Member #4
return