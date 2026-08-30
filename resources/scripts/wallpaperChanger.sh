#! /bin/sh

picture=$(find /home/kumoren/projects/nix/hakurenNixosConfig/resources/wallpapers -name '*.*' | rofi -dmenu)
awww img --transition-type wipe --transition-angle 150 --transition-pos 0.5,0.5 --transition-step 255 --transition-fps 60 $picture
