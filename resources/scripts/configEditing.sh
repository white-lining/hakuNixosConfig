#! /bin/sh

choice=$(printf "system Config\ncore Config\nhome Config\nsystem Packages\nhome Packages" | rofi -dmenu -p "System Configurations")

case "$choice" in
	"system Config") alacritty --working-directory=/home/hakuTsuki/hakurenNixosConfig/ --command tmux ;;
	"core Config") alacritty -e bash -c "nvim ~/hakurenNixosConfig/modules/core" ;;
	"home Config") alacritty -e bash -c "nvim ~/hakurenNixosConfig/modules/home" ;;
	"system Packages") alacritty -e bash -c "nvim ~/hakurenNixosConfig/modules/core/modules/systemPackages.nix" ;;
	"home Packages") alacritty -e bash -c "nvim ~/hakurenNixosConfig/modules/home/modules/homeSettings/homePackages.nix" ;;
esac
