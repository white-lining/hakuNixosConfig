{ pkgs, ... }:
{
  plugins.telescope =
  {
    enable = true;

    keymaps =
    {

      "<leader>f" = { action = "find_files"; };
      "<leader>d" = { action = "live_grep"; };
      "<leader>x" = { action = "buffers"; };

    };
  };
}
