{ pkgs, ... }:
{
  keymaps =
  [

    # File exploring
    { mode = "n"; key = "<leader>ee"; action = "<cmd>Ex<CR>"; }
    { mode = "n"; key = "<leader>er"; action = "<cmd>lua MiniFiles.open()<CR>"; }



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
      key = "<leader>i";
      action = "A";
    }

    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>nohlsearch<CR>";
    }

    {
      mode = "n";
      key = "<leader>c";
      action = "ciw";
    }

    # Center cursor when jumping
    { mode = "n"; key = "n"; action = "nzzzv"; } # Next search result centered
    { mode = "n"; key = "N"; action = "Nzzzv"; } # Previous search result centered
    { mode = "n"; key = "<C-j>"; action = "<C-d>zz"; }
    { mode = "n"; key = "<C-k>"; action = "<C-u>zz"; }

    # Buffer navigation
    { mode = "n"; key = "<leader>bn"; action = "<cmd>bnext<CR>"; }
    { mode = "n"; key = "<leader>bh"; action = "<cmd>bprevious<CR>"; }

    # window navigation
    { mode = "n"; key = "<leader>hh"; action = "<C-w>h"; }
    { mode = "n"; key = "<leader>jj"; action = "<C-w>j"; }
    { mode = "n"; key = "<leader>kk"; action = "<C-w>k"; }
    { mode = "n"; key = "<leader>ll"; action = "<C-w>l"; }

    # Indenting in visual mode using <> without having to enter the mode again after each key press
    { mode = "v"; key = "<"; action = "<gc"; }
    { mode = "v"; key = ">"; action = ">gc"; }

    # Usage of zen mode and twilight plugins
    { mode = "n"; key = "<leader>zz"; action = "<cmd>ZenMode<CR>"; }
    { mode = "n"; key = "<leader>zx"; action = "<cmd>Twilight<CR>"; }

    # custom select
    { mode = "n"; key = "<leader>ss"; action = "evb"; }
    { mode = "n"; key = "<leader>sd"; action = "ve"; }
    { mode = "n"; key = "<leader>sa"; action = "vb"; }

    # Hop plugin
    { mode = "n"; key = "<leader>u"; action = "<cmd>HopWord<CR>"; }

    # Goto type movements
    { mode = "n"; key = "<leader>gg"; action = "0"; }
    { mode = "n"; key = "<leader>gh"; action = "$"; }
    { mode = "n"; key = "<leader>gy"; action = "gg"; }
    { mode = "n"; key = "<leader>gb"; action = "G"; }

  ];
}
