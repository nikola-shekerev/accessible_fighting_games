; https://www.autohotkey.com/docs/KeyList.htm

; Here we define our controls

;up
u := "w"
; down
d := "s"
; left
l := "a"
; right
r := "d"
; back
b := "a"
; front
f := "d"
; front punch
fp := "o"
; back punch
bp := "p"
; front kick
fk := "k"
; back kick
bk := "l"
; block
bl := "Space"
; modifier
mod := "Shift"

SetKeyDelay, 30, 30

; heavy kicks
~a & NumpadMult::
Send, {a up}
b := r
f := l
Send, {%f% down}{%bk% down}{%bk% up}{%f% up}{%bk% down}{%bk% up}
return

~d & NumpadMult::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
Send, {%f% down}{%bk% down}{%bk% up}{%f% up}{%bk% down}{%bk% up}
return

; teleport
~a & NumpadDiv::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
if GetKeyState("Shift")
  Send, {%d% down}{%d% up}{%f% down}{%f% up}{%bl% down}{%bk% down}{%bk% up}{%bl% up}
else
  Send, {%d% down}{%d% up}{%f% down}{%f% up}{%bk% down}{%bk% up}
return

~d & NumpadDiv::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
if GetKeyState("Shift")
  Send, {%d% down}{%d% up}{%f% down}{%f% up}{%bl% down}{%bk% down}{%bk% up}{%bl% up}
else
  Send, {%d% down}{%d% up}{%f% down}{%f% up}{%bk% down}{%bk% up}
return

; low kick
~a & Numpad1::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
SetKeyDelay, 30, 30
Send, {%u% down}{%fk% down}{%fk% up}{%u% up}{%fk% down}{%fk% up}{%bk% down}{%bk% up}
return

~d & Numpad1::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
SetKeyDelay, 30, 30
Send, {%u% down}{%fk% down}{%fk% up}{%u% up}{%fk% down}{%fk% up}{%bk% down}{%bk% up}
return

; popup
~a & Numpad7::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
SetKeyDelay, 30, 30
Send, {%fp% down}{%fp% up}{%bp% down}{%bp% up}{%b% down}{%fp% down}{%fp% up}{%b% up}
return

~d & Numpad7::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
SetKeyDelay, 30, 30
Send, {%fp% down}{%fp% up}{%bp% down}{%bp% up}{%b% down}{%fp% down}{%fp% up}{%b% up}
return

; flame
~a & x::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
SetKeyDelay, 30, 30
if GetKeyState("Shift")
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%bl% down}{%bp% down}{%bp% up}{%bl% up}
else
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%bp% down}{%bp% up}
return

~d & x::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
SetKeyDelay, 30, 30
if GetKeyState("Shift")
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%bl% down}{%bp% down}{%bp% up}{%bl% up}
else
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%bp% down}{%bp% up}
return

; missile
~a & PgUp::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
SetKeyDelay, 30, 30
if GetKeyState("Shift")
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%bl% down}{%fp% down}{%fp% up}{%bl% up}
else
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%fp% down}{%fp% up}
return

~d & PgUp::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
SetKeyDelay, 30, 30
if GetKeyState("Shift")
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%bl% down}{%fp% down}{%fp% up}{%bl% up}
else
  Send, {%b% down}{%b% up}{%f% down}{%f% up}{%fp% down}{%fp% up}
return

;up mid missile
~a & End::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
SetKeyDelay, 30, 30
if GetKeyState("Shift")
  Send, {%d% down}{%d% up}{%b% down}{%b% up}{%bl% down}{%fk% down}{%fk% up}{%bl% up}
else
  Send, {%d% down}{%d% up}{%b% down}{%b% up}{%fk% down}{%fk% up}
return

~d & End::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
SetKeyDelay, 30, 30
if GetKeyState("Shift")
  Send, {%d% down}{%d% up}{%b% down}{%b% up}{%bl% down}{%fk% down}{%fk% up}{%bl% up}
else
  Send, {%d% down}{%d% up}{%b% down}{%b% up}{%fk% down}{%fk% up}
return

;up behind missile
PgDn::
SetKeyDelay, 30, 30
Send, {%d% down}{%d% up}{%l% down}{%l% up}{%r% down}{%r% up}{%fk% down}{%fk% up}
return

;up front missile
Del::
SetKeyDelay, 30, 30
Send, {%d% down}{%d% up}{%r% down}{%r% up}{%l% down}{%l% up}{%fk% down}{%fk% up}
return
