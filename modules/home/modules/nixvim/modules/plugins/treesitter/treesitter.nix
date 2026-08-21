{ pkgs, ... }:
{
  plugins.treesitter =
  {
    enable = true;
    nixGrammars = true;
    folding.enable = false;

    settings =
    {
      highlight.enable = true;
      indent.enable = true;
    };

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars;
    [
      bash
      json
      java
      python
      c
      cpp
      markdown
      nix
      rust
      make
    ];
  };
}
