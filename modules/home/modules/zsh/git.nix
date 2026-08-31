{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "hakuTsuki";
        email = "mnievas640@gmail.com";
      };
    };
  };
}
