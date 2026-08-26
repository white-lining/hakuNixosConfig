{ pkgs, ... }:
{

  stylix.enable = true;

  stylix.base16Scheme = {
    base00 = "#2e3440"; 
    base01 = "#3b4252"; 
    base02 = "#434c5e"; 
    base03 = "#4c566a"; 
    base04 = "#e3f4ff"; 
    base05 = "#e3f4ff"; 
    base06 = "#e3f4ff"; 
    base07 = "#c1fefe";
    base08 = "#9bfff8"; 
    base09 = "#eec6f5";
    base0A = "#bdfced"; 
    base0B = "#79d3be";
    base0C = "#b1dbf9"; 
    base0D = "#c4def1";
    base0E = "#7eadcf";
    base0F = "#93fff8";
  };

  stylix.fonts = {
    monospace = {
      package = pkgs.lilex;
      name = "Lilex Nerd Font";
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
