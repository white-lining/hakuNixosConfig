{ pkgs, ... }:
{
  plugins.mini-files =
  {
    enable = true;

    settings =
    {
      mappings =
      {
        close = "q";
        go_in = "l";
        go_in_plus = "L";
        go_out = "h";
        go_out_plus = "H";
        reset = "<BS>";
        mark_set = "m";
        mark_goto = "'";
        show_help = "g?";
        reveal_cwd = "@";
        synchronize = "=";
        trim_left = "<";
        trim_right = ">";
      };
    };
  };
}
