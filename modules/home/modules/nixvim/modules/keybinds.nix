{ pkgs, ... }:
{
  keymaps =
  [

    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>Ex<CR>";
    }

    {
      mode = "n";
      key = "<leader>e";
      action = "ve";
    }

    {
      mode = "n";
      key = "<leader>y";
      action = "vb";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>w<CR>";
    }

    {
      mode = "n";
      key = "<leader>v";
      action = "V";
    }

    {
      mode = "n";
      key = "<leader>u";
      action = "A";
    }

    {
      mode = "n";
      key = "<leader>a";
      action = "<cmd>nohlsearch<CR>";
    }

    {
      mode = "n";
      key = "<leader>c";
      action = "ciw";
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "<C-d>zz";
    }

    {
      mode = "n";
      key = "<leader>w";
      action = "<C-u>zz";
    }

    # Buffer navigation
    { mode = "n"; key = "<leader>bn"; action = "<cmd>bnext<CR>" }
    { mode = "n"; key = "<leader>bh"; action = "<cmd>bprevious<CR>" }

    # window navigation
    { mode = "n"; key = "<leader>hh"; action = "<C-w>h"; }
    { mode = "n"; key = "<leader>jj"; action = "<C-w>j"; }
    { mode = "n"; key = "<leader>kk"; action = "<C-w>k"; }
    { mode = "n"; key = "<leader>ll"; action = "<C-w>l"; }

    # Indenting in visual mode using <> without having to enter the mode again after each key press
    { mode = "v"; key = "<"; action = "<gc"; }
    { mode = "v"; key = ">"; action = ">gc"; }

  ];
}
