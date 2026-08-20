{ pkgs, ... }:
{

  plugins =
  {

    twilight =
    {
      enable = true;
      settings =
      {
        context = 5;
        dimming = { alpha=0.5; inactive=false; };
        expand = [ "method" "table" "if-statement" ];
        treesitter = true;
      };
    };

    zen-mode.enable = true;

  };

}
