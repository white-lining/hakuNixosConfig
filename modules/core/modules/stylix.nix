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
    base05 = "e3f4ff"; 
    base06 = "e3f4ff"; 
    base07 = "89c0ff";
    base08 = "7eadcf"; 
    base09 = "eec6f5";
    base0A = "6caefa"; 
    base0B = "9dcfd2";
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
