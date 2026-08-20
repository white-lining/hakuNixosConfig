{ pkgs, ... }:
{
  opts =
  {

    # Line Numbers
    number = true;
    relativenumber = true;
    sidescrolloff = 10;
    scrolloff = 10;

    # More colors
    termguicolors = true;

    # Default completion
    completeopt =
    [
      "menuone"
      "noselect"
    ];

    # Search
    ignorecase = true;
    smartcase = true;
    hlsearch = true;
    incsearch = true;

    # Tabs
    # expandtab = true;
    # tabstop = 2;
    # shiftwidth = 2;
    # softtabstop = 2;
    smarttab = true;

    # File handling
    writebackup = false;
    swapfile = false;
    undofile = true;

    # Other
    signcolumn = "yes";
    modifiable = true;
    hidden = true;
    encoding = "UTF-8";
    errorbells = false;
  };
}
