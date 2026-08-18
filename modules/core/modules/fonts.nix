{ pkgs, config, ... }:
{
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs;
    [
      fira-code
      hasklug
    ];
  };
}
