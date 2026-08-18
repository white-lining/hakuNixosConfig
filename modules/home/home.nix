{ pkgs, pkgs-stable, config, ... }:
{
  home = {
    username = "hakuren";
    homeDirectory = "/home/hakuren";
    stateVersion = "25.11";
    pointerCursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
      gtk.enable = true;
    };
  };

  services.swww.enable = true;

  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
  };

  xdg.portal = {
    enable = true;

    extraPortals = with pkgs; [
      xdg-desktop-portal
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
      xdg-desktop-portal-wlr
    ];

    config = {
      common.default = [ "gtk" "gnome" "wlr" ];
    };
  };

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "thunar.desktop" ];
    };
  };

  imports = [
    ./modules/homeSettings/homePackages.nix
    ./modules/mango/mango.nix
    ./modules/rofi/rofi.nix
    ./modules/helix/helix.nix
    ./modules/hyprlock/hyprlock.nix
    ./modules/kitty/kitty.nix
    ./modules/wlogout/wlogout.nix
    ./modules/waybar/waybar.nix
    ./modules/zsh/zsh.nix
    ./modules/zsh/starship.nix
    ./modules/zsh/tmux.nix
    ./modules/yazi/yazi.nix
    ./modules/zsh/git.nix
    ./modules/music/music.nix
  ];

  stylix.targets = {
    hyprlock.enable = false;
    waybar.enable = false;
  };
}
