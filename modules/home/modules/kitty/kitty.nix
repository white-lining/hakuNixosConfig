{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      shell_integration = "enabled";
      confirm_os_window_close = 0;

      fonts = "Mononoki Nerd Font";
    };
  };
}
