#! /bin/sh

system_track=$(top -b -n 1 | head --lines=5)
zenity --info --text="$system_track" --width=680  --title="Welcome To The System Monitor, Hakuren-Sama" --ok-label="Dismiss..."

