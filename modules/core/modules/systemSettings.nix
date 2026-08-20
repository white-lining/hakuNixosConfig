{ pkgs, config, ... }:
{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };

    optimise.automatic = true;
  };

  # environment.variables = { };

  nixpkgs.config.allowUnfree = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  i18n.defaultLocale = "es_AR.UTF-8";

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  security = {
    rtkit.enable = true;
    pam.services.hyprlock = {};
    polkit.enable = true;
  };

  networking = {
    hostName = "nixlotus";
    networkmanager.enable = true;
  };

  time.timeZone = "America/Argentina/Cordoba";

  users = {
    defaultUserShell = pkgs.zsh;
    users.kumoren = {
      isNormalUser = true;
      extraGroups = [ "wheel" "input" "power" "audio" "video" "networkmanager" ];
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
}
