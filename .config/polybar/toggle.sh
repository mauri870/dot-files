#!/bin/sh

# Obtain bar's window id
id=$(xdo id -N "Polybar")

# Toggle bar visibility
if xprop -id $id | grep -q "Normal"; then
    xdo hide -N "Polybar"
else
    xdo show -N "Polybar"
fi
