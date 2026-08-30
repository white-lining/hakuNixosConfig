#! /bin/sh


# if zenity --question --title="System Configuration Access" --text="Awaiting the order to open..." 
# then
#   alacritty --working-directory=/home/kumoren/projects/nix/hakurenNixosConfig/ --command tmux
# fi
choice=$(printf "system Config\ncore Config\nhome Config\nsystem Packages\nhome Packages" | rofi -dmenu -p "System Configurations")

case "$choice" in
	"system Config") alacritty --working-directory=/home/kumoren/projects/nix/hakurenNixosConfig/ --command tmux ;;
	"core Config") alacritty -e bash -c "nvim ~/projects/nix/hakurenNixosConfig/modules/core" ;;
	"home Config") alacritty -e bash -c "nvim ~/projects/nix/hakurenNixosConfig/modules/home" ;;
	"system Packages") alacritty -e bash -c "nvim ~/projects/nix/hakurenNixosConfig/modules/core/modules/systemPackages.nix" ;;
	"home Packages") alacritty -e bash -c "nvim ~/projects/nix/hakurenNixosConfig/modules/home/modules/homeSettings/homePackages.nix" ;;
esac
