{ pkgs, pkgs-stable, config, ... }:
{
  environment.systemPackages =
  [
    # basic
    pkgs.tree
    pkgs.helix
    pkgs.neovim
    pkgs.vim
    pkgs.kitty
    pkgs.rofi
    pkgs.wget
    pkgs.yazi
    pkgs.nh
    pkgs.nix-output-monitor
    pkgs.nvd

    # Utility
    pkgs.power-profiles-daemon
    pkgs.starship
    pkgs.less
    pkgs.git
    pkgs.udiskie
    pkgs.killall
    pkgs.ripgrep
    pkgs.xdg-desktop-portal
    pkgs.xdg-desktop-portal-gnome
    pkgs.xdg-desktop-portal-gtk
    pkgs.xdg-desktop-portal-wlr
    pkgs.eza

    # micelanious
    pkgs.thunar
    pkgs.bibata-cursors
    pkgs.papirus-icon-theme
    pkgs.sddm-chili-theme
    # pkgs.greetd
    # pkgs.tuigreet
    pkgs.less
    pkgs.pavucontrol
    pkgs.inotify-tools
    pkgs.wl-clipboard
  ];
}
