#! /bin/sh

choice=$(printf "cold Mountains\nwhite Peak\ncharming Siren\nblue Shades\ncold Wind" | rofi -dmenu -p "Select Background")

case "$choice" in
	"cold Mountains") awww img --transition-type wipe --transition-angle 150 --transition-pos 0.5,0.5 --transition-step 255 --transition-fps 60 /home/kumoren/projects/nix/hakurenNixosConfig/resources/wallpapers/coldMountains.png ;;
	"white Peak") awww img --transition-type wipe --transition-angle 150 --transition-pos 0.5,0.5 --transition-step 255 --transition-fps 60 /home/kumoren/projects/nix/hakurenNixosConfig/resources/wallpapers/whiteShade.png ;;
	"charming Siren") awww img --transition-type wipe --transition-angle 150 --transition-pos 0.5,0.5 --transition-step 255 --transition-fps 60 /home/kumoren/projects/nix/hakurenNixosConfig/resources/wallpapers/siren.png ;;
	"blue Shades") awww img --transition-type wipe --transition-angle 150 --transition-pos 0.5,0.5 --transition-step 255 --transition-fps 60 /home/kumoren/projects/nix/hakurenNixosConfig/resources/wallpapers/blueDragons.jpg ;;
	"cold Wind") awww img --transition-type wipe --transition-angle 150 --transition-pos 0.5,0.5 --transition-step 255 --transition-fps 60 /home/kumoren/projects/nix/hakurenNixosConfig/resources/wallpapers/coldWind.png ;;
esac
