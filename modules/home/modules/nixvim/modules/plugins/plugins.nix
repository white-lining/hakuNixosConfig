{ pkgs, ... }:
{
  imports =
  [
    # Status line
    ./lualine/lualine.nix

    # Better find
    ./telescope/telescope.nix

    # Treesitter
    ./treesitter/treesitter.nix

    # indent guide
    ./indent-blankline/indent.nix

    # For focus and smoother experience
    ./focus/focus.nix
  ];
}
