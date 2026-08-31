{ pkgs, inputs, pkgs-stable, config, ... }:
let
  centralControlHaku = pkgs.writeShellScriptBin "WhiteGarden" ''
	  #! /bin/sh
		chosen_action=$(printf  "system Configuration\nsystem Control\nlauncher" | rofi -dmenu -p "Great Garden Of White Lotus")
		case "$chosen_action" in
		  "system Configuration") /home/kumoren/projects/nix/hakurenNixosConfig/resources/scripts/configEditing.sh ;;
			"system Control") /home/kumoren/projects/nix/hakurenNixosConfig/resources/scripts/systemOptions.sh ;;
			"launcher") rofi -show drun ;;
		esac
	'';
	# volumeControlZen = pkgs.writeShellScriptBin "volume Control Zen" ''
	# 	#! /bin/sh
	# 	user_volume=$(zenity --scale --value=50 --text="Set volume now..." --title="Default Sink Volume Control  by Hakuren")
	#
	# 	if [ $user_volume -ge 0 ]
	# 	then
	# 		volume_converted=$(awk "BEGIN {print $user_volume / 100}")
	# 		wpctl set-volume @DEFAULT_SINK@ $volume_converted
	# 	else
	# 		zenity --info --text="No Decision Processed"
	# 	fi
	# '';
	#
	# hakuSystemTrack = pkgs.writeShellScriptBin "haku System Tracking" ''
	# 	#! /bin/sh
	# 	system_info=$(top -b -n 1 | head --lines=5)
	# 	zenity --info --title="Welcome To The System Watcher, Hakuren" --text=$system_info --ok-label="Dismiss..." --width=680
	#  '';
	#
	# hakuQuickConfig = pkgs.writeShellScriptBin "haku Configuration Management" ''
	# 	#! /bin/sh
	# 	if zenity --question --title="System Configuration Access" --text="Awaiting the order to open..."
	# 	then
	# 		alacritty --working-directory=/home/kumoren/projects/nix/hakurenNixosConfig/ --command tmux
	# 	fi
	# '';
	#
	# hakuWallpaperChange = pkgs.writeShellScriptBin "haku Wallpaper Switcher" ''
	# 	picture=$(find /home/kumoren/images -name '*.*' | rofi -dmenu)
	# 	awww img --transition-type wipe --transition-angle 150 --transition-pos 0.2,0.8 --transition-step 255 --transition-fps 60 $picture
	# 	'';
	in
{
  home.packages =
  [
    # Utility
    pkgs.bat
    pkgs.tmux
    pkgs-stable.onlyoffice-desktopeditors
    pkgs.zed-editor
    pkgs.cliphist
    pkgs.grim
    pkgs.slurp
    pkgs.btop
    pkgs.alsa-utils
    pkgs.alacritty
    pkgs.vivaldi
		pkgs.ripgrep
		pkgs.zsh-powerlevel10k
    # inputs.zen-browser.${config.system}.default

    # Miscelanious
    pkgs.waybar
    pkgs.wlogout
    pkgs.hyprlock
    pkgs.hypridle
    pkgs.hyprpicker
		pkgs.noctalia-shell
    pkgs.fzf
    pkgs.fastfetch
    pkgs.mako
    pkgs.libnotify
    pkgs.pipes
    pkgs.cbonsai
    pkgs.zenity
    pkgs.lutris
    # pkgs.gcc
    pkgs.clang
    pkgs.python3
    pkgs.wttrbar
		pkgs.imv
		pkgs.ripgrep

    # music
    pkgs.mpc
    pkgs.ncmpcpp
    pkgs.yt-dlp

    # Other
    pkgs.manga-cli
    pkgs.zathura
    pkgs.pup
    pkgs.curl

		# Custom scripts
		# volumeControlZen
		# hakuSystemTrack
		# hakuQuickConfig
		# hakuWallpaperChange
		centralControlHaku
  ];
}
