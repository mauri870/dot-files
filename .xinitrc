#!/bin/sh

xresources=$HOME/.Xresources

if [ -f "$xresources" ]; then
    xrdb -merge "$xresources"
fi

# increse the key press rate
xset r rate 300 50

# enable numlock
numlockx &

exec dbus-launch i3 --shmlog-size 0
