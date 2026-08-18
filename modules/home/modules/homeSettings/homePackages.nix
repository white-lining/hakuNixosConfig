{ pkgs, pkgs-stable, config, ... }:
{
  home.packages =
  [
    # Utility
    pkgs.bat
    pkgs.tmux
    pkgs.onlyoffice-desktopeditors
    pkgs.zed-editor
    pkgs.cliphist
    pkgs.grim
    pkgs.slurp
    pkgs.btop
    pkgs.alsa-utils

    # Miscelanious
    pkgs.waybar
    pkgs.wlogout
    pkgs.hyprlock
    pkgs.hypridle
    pkgs.hyprpicker
    pkgs.fzf
    pkgs.fastfetch
    pkgs.mako
    pkgs.libnotify
    pkgs.pipes
    pkgs.cbonsai
    pkgs.zenity
    pkgs.lutris
    pkgs.gcc
    pkgs.clang
    pkgs.python3

    # music
    pkgs.mpc
    pkgs.ncmpcpp
    pkgs.yt-dlp

    # Other
    pkgs.manga-cli
    pkgs.zathura
    pkgs.pup
    pkgs.curl
  ];
}
