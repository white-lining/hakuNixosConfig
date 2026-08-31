{ pkgs, ... }:
{

  stylix.enable = true;

  stylix.base16Scheme = {

		author = "HakuTsuki";
		scheme = "Cold Sky";

    base00 = "2e3440"; 
    base01 = "3b4252"; 
    base02 = "434c5e"; 
    base03 = "4c566a"; 
    base04 = "e3f4ff"; 
    base05 = "ddf1ff"; 
    base06 = "d4edfd"; 
    base07 = "34506f";
    base08 = "97d1fd"; 
    base09 = "b2ebf3";
    base0A = "6e9dd0"; 
    base0B = "cee4fd";
    base0C = "b2dbfa"; 
    base0D = "d8fdfa";
    base0E = "82a7cf";
    base0F = "91bada";
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
