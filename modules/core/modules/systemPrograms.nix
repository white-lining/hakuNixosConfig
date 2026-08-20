{ pkgs, config, ... }:
{
  programs = {
    firefox.enable = true;

    dconf = {
      enable = true;
    };

    niri = {
      enable = true;
      # addLoginEntry = true;
    };

    gamemode.enable = true;
    zsh.enable = true;
    steam.enable = true;
  };
}
