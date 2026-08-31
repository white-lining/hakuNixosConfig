#! /bin/sh

chosen_action=$(printf "system Configuration\nsystem Control\nlauncher" | rofi -dmenu -p "Central Control Interface")

case "$chosen_action" in
	"system Configuration") /home/hakuTsuki/hakurenNixosConfig/resources/scripts/configEditing.sh ;;
	"system Control") /home/hakuTsuki/hakurenNixosConfig/resources/scripts/systemOptions.sh ;;
	"launcher") rofi -show drun ;;
esac
