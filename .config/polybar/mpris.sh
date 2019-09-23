#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata title)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#C5C8C6}$icon  $metadata"       # Blue when playing
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#C5C8C6}$icon  $metadata"       # Green out info when paused
else
    echo "%{F#C5C8C6}$icon "                 # Red icon when stopped
fi
