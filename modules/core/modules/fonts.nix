{ pkgs, config, ... }:
{
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs;
    [
      nerd-font.fira-code
      nerd-fonts.hasklug
    ];
  };
}
