#!/bin/bash
pkill mpvpaper
awww-daemon &
sleep 0.5
awww restore
MONITOR=$(hyprctl monitors -j | jq -r '.[0].name')
CURRENT=$(awww query | grep "$MONITOR" | grep -oP "image: \K[^ ]+")
