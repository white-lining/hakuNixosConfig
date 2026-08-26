#! /bin/sh


if zenity --question --title="System Configuration Access" --text="Awaiting the order to open..." 
then
  alacritty --working-directory=/home/kumoren/projects/nix/hakurenNixosConfig/ --command tmux
fi
