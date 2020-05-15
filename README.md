# Accessible Fighting Games

# Introduction

The purpose of this project is to allow any player to execute any complex command in any fighting game with a single button press.

Fighting games are amazing and interesting, but are also hard.

This project is for casual players who want to enjoy a game without absurd motor execution requirements

This project is for people with motor disabilities

# Is this cheating?

My method automates keyboard events on Operating System level. It does not interact with any game process, so you will not be detected as cheater and banned.

My method is not meant to be used online competitively against real people. But if you do, you will quickly discover that this method is a fun way to enjoy a game, but it is not performant competitively

# How it works

This project uses a tool called [autohotkey](https://www.autohotkey.com/) , please install it and quickly check its introduction to have some idea how it works.

This project contains sample scripts for autohotkey. In this readme I will examine a number of code snippets in order to teach you to create your own scripts for your character in your fighting game. This project is a very detailed tutorial / guide, but you need to do some very basic coding for your specific character from your 

This readme is detailed, but it will not explain concepts that are general for programming like variables, value assignment, commands, events, etc

## Controls

```
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
```

With the code above we create variables for our controls. This will allow us later to write commands that look like "f f hp" (forward - forward - high punch) instead of "some key - some key - some other key". This will make our scripts easier to read and debug.

Here is [a list of available keys](https://www.autohotkey.com/docs/KeyList.htm)

## Comments

```
; This is a comment
```

Autohotkey uses column for comments. Commenting your code will help you to read it later.

## Basic Hotkey

```
k::
; some autohotkey code
return
```

This is a basic hotkey. It will execude some autohotkey code when you press the "k" key. Later we will have all special moves in our fighting game as such hotkeys

## Send key strokes

Lets assume we want to automate a move that is "back - down - forward - high punch" using the variables from the beginning of the readme. This is how it will look

```
k::
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return
```

The `Send` command sends events for pressing and releaseing keys. You can use variables by surrounding them with the % symbol

## Left and Right

Autohotkey does not interact with the game process, so it does not know if your character faces left or right. On the other hand your moves depend on that - forward can be left or right.

```
l := "Left"
r := "Right"
b := "Left"
f := "Right"
```
We have created variables for forward and backward but also for left and right. They are the same only in the beginning.

For simplicity, I assume that we use WASD keys for movement.

## Basic Hotkey from 2 keys

```
d & k::
; code for my special move when my character looks right
return

a & k::
; code for my special move when my character looks left
return
```

In the code above we have 2 variations of the same hotkey. If we press "d" and "k" keys in the same time, we will do the right variation of the "k" special move. If we press "a" and "k" keys in the same time, we will do the left variation of the "k" special move.

## Blind Mode

By default autohotkey blocks the native function of a hotkey. This means that in the example above the keys "d" and "a" (left and right) will stop working for actual moving. To not block their in-game function we enable "Blind Mode"

```
~d & k::
; code for my special move when my character looks right
return

~a & k::
; code for my special move when my character looks left
return
```

## Set proper direction

```
~d & k::
b := l
f := r
; code for my special move when my character looks right
return

~a & k::
b := r
f := l
; code for my special move when my character looks left
return
```

In the code above, we set our proper direction

## Send key strokes

Remember how we automated "back - down - forward - high punch" a while ago? Here it is now:

```
~d & k::
b := l
f := r
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return

~a & k::
b := r
f := l
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return
```

## SetKeyDelay

When we tell autohotkey to press a key, we want it to hold it for a bit of time. When we tell autohotkey to press a sequence of keys, we want it to wait some time between presses. In the same time, we want thise times to be minimal so our hotkeys fire quickly. 

`SetKeyDelay, 30, 30` sets these times to 30 miliseconds

```
~d & k::
SetKeyDelay, 30, 30
b := l
f := r
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return

~a & k::
SetKeyDelay, 30, 30
b := r
f := l
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return
```

Some games may require longer times. If your special move do not always trigger properly, increase the number

## Blind Mode Bugs

Some but not all games have a problem with Blind mode. Sometimes the native event for releasing the a or d key will mess with the events from the Send command. If your special move do not always trigger properly, add the following release command:

```
~d & k::
SetKeyDelay, 30, 30
Send, {d up}
b := l
f := r
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return

~a & k::
SetKeyDelay, 30, 30
Send, {a up}
b := r
f := l
Send, {%b% down}{%b% up}{%d% down}{%d% up}{%f% down}{%f% up}{%hp% down}{%hp% up}
return
```
