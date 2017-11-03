#!/bin/bash

WALLPAPER="$1"
DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

sed "s|image_source=\"auto\"|image_source=\"$WALLPAPER\"|" $DIR/config.conf.template | \
sed "s|image_backend=\"ascii\"|image_backend=\"w3m\"|" > $DIR/config.conf
