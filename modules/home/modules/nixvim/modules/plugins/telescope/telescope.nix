{ pkgs, ... }:
{
  plugins.telescope =
  {
    enable = true;

    keymaps =
    {

      "<leader>f" = { action = "find_files"; };
      "<leader>df" = { action = "live_grep"; };
      "<leader>dd" = { action = "buffers"; };

    };
  };
}
