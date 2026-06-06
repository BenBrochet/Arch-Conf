#!/bin/bash
LIVE_DIR="$HOME/Videos/Pictures/wallpapers/live"
CHOICE=$(ls "$LIVE_DIR" | rofi -dmenu -p "Live Wallpaper")
[ -z "$CHOICE" ] && exit
pkill mpvpaper
pkill awww-daemon
mpvpaper -o "no-audio loop" '*' "$LIVE_DIR/$CHOICE"
