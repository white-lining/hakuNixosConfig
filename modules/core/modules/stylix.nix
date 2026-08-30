{ pkgs, ... }:
{

  stylix.enable = true;

  stylix.base16Scheme = {

		author = "HakuTsuki";
		scheme = "Cold World";

    base00 = "2e3440"; 
    base01 = "3b4252"; 
    base02 = "434c5e"; 
    base03 = "4c566a"; 
    base04 = "e3f4ff"; 
    base05 = "ddf1ff"; 
    base06 = "d4edfd"; 
    base07 = "3887ee";
    base08 = "5799f0"; 
    base09 = "eec6f5";
    base0A = "7ea5d9"; 
    base0B = "a7f0f1";
    base0C = "b1dbf9"; 
    base0D = "cee4fd";
    base0E = "b6e2f2";
    base0F = "84bcfd";
  };

  stylix.fonts = {
    monospace = {
      package = pkgs.nerd-fonts.caskaydia-mono;
      name = "Caskaydia Mono Nerd Font";
    };
  };

  stylix.fonts.sizes = {
    applications = 12;
    terminal = 13;
    desktop = 12;
    popups = 13;
  };

  stylix.polarity = "dark";

}
