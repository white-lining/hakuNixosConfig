{ pkgs, ... }:
{
  programs.alacritty = 
  {
    enable = true;

    settings =
    {
      cursor =
      {
        style =
        {
          shape = "Underscore";
          blinking = "Always";
        };
        blink_interval = 600;
        blink_timeout = 0;
      };
    };
  };
}
