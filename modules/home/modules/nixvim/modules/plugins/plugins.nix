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
    #./indent-blankline/indent.nix

    # For focus and smoother experience
    ./focus/focus.nix

    # file explorer from mini
    ./mini/files.nix

    # Manage pairs from mini
    ./mini/surround.nix

		# Highlight the column of the cursor
		./mini/cursor-word.nix

    # Jumping arround
    ./hop/hop.nix

		# bookmark files and certain positions in a file.
		./trailblazer/trailblazer.nix

    # Collection of plugins that require small to no configuration and have no connection between them
    ./small/small.nix
		./small/barbar.nix
		./small/grug.nix
		./small/flash.nix
		./small/timerly.nix
		./small/startify.nix
		./small/modicator.nix

		# Snacks
		./snacks/snacks.nix

    # Cursor line
    ./cursorline/cursorline.nix
  ];
}
