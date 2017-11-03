#!/bin/sh

xresources=$HOME/.Xresources

if [ -f "$xresources" ]; then
    xrdb -merge "$xresources"
fi

exec i3 --shmlog-size 0
