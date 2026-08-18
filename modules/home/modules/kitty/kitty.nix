{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      shell_integration = "enabled";
    };
  };
}
