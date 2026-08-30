{ pkgs, nixvim, ... }:
{
  programs.nixvim =
  {
    enable = true;
    defaultEditor = true;
    viAlias = true;

    globals.mapleader = " ";

		nixpkgs.config.allowUnfree = true;

    imports =
    [
      ./modules/options.nix
      ./modules/keybinds.nix
      ./modules/plugins/plugins.nix
    ];
  };
}
