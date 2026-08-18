{ pkgs, config, ... }:
{
  services.hypridle = {
    enable = true;

    settings = {

      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "loginctl lock-session";
        ignore_dbus_inhibit = false;
      };

      listener = [
        {
          timeout = 180;
          on-timeout = "hyprlock";
        }
        {
          timeout = 900;
          on-timeout = "systemctl susped";
        }
      ];
    };
  };
}
