#!/bin/sh

xresources=$HOME/.Xresources

if [ -f "$xresources" ]; then
    xrdb -merge "$xresources"
fi

numlockx &

exec dbus-launch i3 --shmlog-size 0
