; Here we define our controls
u := "Up"
d := "Down"
l := "Left"
r := "Right"
b := "Left"
f := "Right"
hp := "i"
lp := "j"
hk := "o"
lk := "k"
bl := "Space"

; spark
~a & u::
SetKeyDelay, 50, 50
b := r
f := l
Send, {%d% down}{%d% up}{%b% down}{%b% up}{%hp% down}{%hp% up}
return

~d & u::
SetKeyDelay, 50, 50
b := l
f := r
Send, {%d% down}{%d% up}{%b% down}{%b% up}{%hp% down}{%hp% up}
return

; shredder
~a & h::
SetKeyDelay, 50, 50
b := r
f := l
Send, {%b% down}{%b% up}{%b% down}{%b% up}{%b% down}{%b% up}{%lp% down}{%lp% up}
return

~d & h::
SetKeyDelay, 50, 50
b := l
f := r
Send, {%b% down}{%b% up}{%b% down}{%b% up}{%b% down}{%b% up}{%lp% down}{%lp% up}
return

w::Up
s::Down
a::Left
d::Right