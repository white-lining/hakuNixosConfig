#! /bin/sh

# Options for checking general system information and control its status
choice=$(printf "volume Control\nwallpaper Switch\npower Menu\ncalendar" | rofi -dmenu -p "System Options")
case "$choice" in
	"volume Control") /home/kumoren/projects/nix/hakurenNixosConfig/resources/scripts/setVolume.sh ;;
	"wallpaper Switch") /home/kumoren/projects/nix/hakurenNixosConfig/resources/scripts/changeBackground.sh ;;
	"power Menu") wlogout -b 1 -c 20 -r 20 -L 1700 -T 325 -B 325 ;;
	"calendar") zenity --calendar --title="Tree Of Time" --text="Reflect On The Fragility Of Life" --width=350 --height=300 --ok-label="Exit" --cancel-label= ;;
esac
