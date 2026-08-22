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

    # file explorer from mini
    ./mini/files.nix

    # Manage pairs from mini
    ./mini/surround.nix

    #jumping arround
    ./hop/hop.nix

    # Collection of plugins that require small to no configuration and have no connection between them
    ./small/small.nix

    # Dashboard
    ./dashboard/dashboard.nix

    # Cursor line
    ./cursorline/cursorline.nix
  ];
}
