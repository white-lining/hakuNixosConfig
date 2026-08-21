{ pkgs, ... }:
{
  plugins.mini-jump =
  {
    enable = true;
    settings =
    {
      delay =
      {
        highlight = 250;
        idle_stop = 10000000;
      };

      mappings =
      {
        backwards = "F";
        backward_till = "T";
        forward = "F";
        forward_till = "T";
        repeat_jump = ";";
      };

      silent = false;
    };
  };
}
