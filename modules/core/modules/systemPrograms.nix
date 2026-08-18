{ pkgs, config, ... }:
{
  programs = {
    firefox.enable = true;

    dconf = {
      enable = true;
    };

    mango = {
      enable = true;
      addLoginEntry = true;
    };

    gamemode.enable = true;
    zsh.enable = true;
    steam.enable = true;
  };
}
