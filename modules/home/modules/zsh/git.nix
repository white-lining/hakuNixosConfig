{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "hakuren";
        email = "mnievas640@gmail.com";
      };
    };
  };
}
