; Here we define our controls
u := "Up"
d := "Down"
l := "Left"
r := "Right"
b := "Left"
f := "Right"
hp := "o"
lp := "k"
hk := "p"
lk := "l"
bl := "Space"

; tele
~a & Numpad7::
SetKeyDelay, 50, 50
b := r
f := l
Send, {%f% down}{%f% up}{%f% down}{%f% up}{%lk% down}{%lk% up}
return

~d & Numpad7::
SetKeyDelay, 50, 50
b := l
f := r
Send, {%f% down}{%f% up}{%f% down}{%f% up}{%lk% down}{%lk% up}
return

; homing
~a & o::
SetKeyDelay, 50, 50
b := r
f := l
Send, {%f% down}{%f% up}{%d% down}{%d% up}{%b% down}{%b% up}{%hp% down}{%hp% up}
return

~d & o::
SetKeyDelay, 50, 50
b := l
f := r
Send, {%f% down}{%f% up}{%d% down}{%d% up}{%b% down}{%b% up}{%hp% down}{%hp% up}
return

; missile
~a & k::
SetKeyDelay, 50, 50
b := r
f := l
Send, {%f% down}{%f% up}{%f% down}{%f% up}{%lp% down}{%lp% up}
return

~d & k::
SetKeyDelay, 50, 50
b := l
f := r
Send, {%f% down}{%f% up}{%f% down}{%f% up}{%lp% down}{%lp% up}
return

w::Up
s::Down
a::Left
d::Right