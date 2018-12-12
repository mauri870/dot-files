#!/bin/sh

xresources=$HOME/.Xresources

if [ -f "$xresources" ]; then
    xrdb -merge "$xresources"
fi

exec dbus-launch i3 --shmlog-size 0
