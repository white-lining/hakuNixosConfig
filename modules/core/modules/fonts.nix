{ pkgs, config, ... }:
{
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs;
    [
      nerd-fonts.lilex
      nerd-fonts.mononoki
			nerd-fonts.inconsolata-lgc
    ];
  };
}
